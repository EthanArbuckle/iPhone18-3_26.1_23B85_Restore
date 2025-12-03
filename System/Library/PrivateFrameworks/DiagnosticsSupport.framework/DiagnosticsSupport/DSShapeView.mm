@interface DSShapeView
+ (id)circleWithFrame:(CGRect)frame radius:(double)radius color:(id)color;
+ (id)rectangleWithFrame:(CGRect)frame borderColor:(id)color fillColor:(id)fillColor;
+ (id)rectangleWithFrame:(CGRect)frame borderColor:(id)color fillColor:(id)fillColor borderWidth:(int)width;
@end

@implementation DSShapeView

+ (id)circleWithFrame:(CGRect)frame radius:(double)radius color:(id)color
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  height = [[DSShapeView alloc] initWithFrame:x, y, width, height];
  [(DSShapeView *)height setBackgroundColor:colorCopy];
  layer = [(DSShapeView *)height layer];
  [layer setCornerRadius:radius];

  cGColor = [colorCopy CGColor];
  layer2 = [(DSShapeView *)height layer];
  [layer2 setBorderColor:cGColor];

  layer3 = [(DSShapeView *)height layer];
  [layer3 setBorderWidth:4.0];

  [(DSShapeView *)height setClipsToBounds:1];
  [(DSShapeView *)height setAlpha:1.0];

  return height;
}

+ (id)rectangleWithFrame:(CGRect)frame borderColor:(id)color fillColor:(id)fillColor
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  fillColorCopy = fillColor;
  colorCopy = color;
  height = [[DSShapeView alloc] initWithFrame:x, y, width, height];
  [(DSShapeView *)height setBackgroundColor:fillColorCopy];

  cGColor = [colorCopy CGColor];
  layer = [(DSShapeView *)height layer];
  [layer setBorderColor:cGColor];

  layer2 = [(DSShapeView *)height layer];
  [layer2 setBorderWidth:4.0];

  [(DSShapeView *)height setClipsToBounds:1];
  [(DSShapeView *)height setAlpha:1.0];

  return height;
}

+ (id)rectangleWithFrame:(CGRect)frame borderColor:(id)color fillColor:(id)fillColor borderWidth:(int)width
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  fillColorCopy = fillColor;
  colorCopy = color;
  height = [[DSShapeView alloc] initWithFrame:x, y, width, height];
  [(DSShapeView *)height setBackgroundColor:fillColorCopy];

  cGColor = [colorCopy CGColor];
  layer = [(DSShapeView *)height layer];
  [layer setBorderColor:cGColor];

  widthCopy = width;
  layer2 = [(DSShapeView *)height layer];
  [layer2 setBorderWidth:widthCopy];

  [(DSShapeView *)height setClipsToBounds:1];
  [(DSShapeView *)height setAlpha:1.0];

  return height;
}

@end