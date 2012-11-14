// This sketch is part of the ReCode Project - http://recodeproject.com
// From Computer Graphics and Art vol3 no4 Back Cover
// by William Kolomyjec
// "Hex Variations"
// 
// Steve Berrick
// 2012
// Creative Commons license CC BY-SA 3.0

int _width = 600;
int _height = 900;
int _size = 20;

void setup() {
  
  size(_width, _height);
  noLoop();
  
  background(255);
  noFill();
  stroke(0);
  strokeWeight(2);

}

void draw() {

  // clear background
  background(255);
  
  // line length (hypotenuse)
  float h = cos(radians(30)) * _size;
  
  for (int i = 0; i <= _width / (_size * 3); i++) {
    for (int j = 0; j <= (_height / (_size * sin(radians(60)))) + 1; j++) {

      // reference points
      float x = i * _size * 3 + (_size / 2);
      float y = j * _size * sin(radians(60));
      if (j % 2 > 0) {
        x += _size * 1.5;
      }

      // random hexagon 'rotation' (0, 120, 240)
      int r = int(random(0, 3)) * 120;

      // draw line
      line(x - cos(radians(r + 30)) * h, y - sin(radians(r + 30)) * h, x + cos(radians(r + 30)) * h, y + sin(radians(r + 30)) * h);

      // draw arcs
      arc(x - cos(radians(r + 120)) * _size, y - sin(radians(r + 120)) * _size, _size, _size, radians(r + 60), radians(r + 180)); 
      arc(x + cos(radians(r + 120)) * _size, y + sin(radians(r + 120)) * _size, _size, _size, radians(r - 120), radians(r)); 

    }  
  }

}

void mousePressed() {
  
  redraw();

}  

