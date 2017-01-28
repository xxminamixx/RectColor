int red = 255;
int green = 50;
int blue = 125;

void setup() {
  size(200, 200);
  background(255, 255, 255); 
  noStroke();
}

void colorChange() {
  red = red -1;
  green = green -2;
  blue = blue - green;
}

void colorReset() {
  if (red == 0)red = 255;
  if (green == 0)green = 255;
  if (blue == 0)blue = 255;
}

void draw() {
  fill(red, 255, 255);
  for (int i = 0; i < 18; i++) {

    for (int j = 0; j < 18; j++) {
      rect(i*10 + i*5, j*10 + j*5, 10, 10);
    }
  }

  colorChange();
  colorReset();
}

