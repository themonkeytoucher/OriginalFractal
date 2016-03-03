private int overLens=0;

public void setup()
{
	size(500,500);
}

public void draw()
{
	circle(250,250,overLens);
}

public void keyPressed()
{
	if (key == 'w')
		overLens++;
	else if (key=='s'&&overLens>=0)
		overLens--;
}

public void circle(int x, int y, int len) 
{
	if (len<=20)
		rect (x,y,len/2,len/2);
	else 
	{
		circle(x-len/3,y+len/2,len/2);
		circle(x+len,y-len/2,len/2);
	}
}