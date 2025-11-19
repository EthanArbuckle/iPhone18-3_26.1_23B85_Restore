@interface DSShapeView
+ (id)circleWithFrame:(CGRect)a3 radius:(double)a4 color:(id)a5;
+ (id)rectangleWithFrame:(CGRect)a3 borderColor:(id)a4 fillColor:(id)a5;
+ (id)rectangleWithFrame:(CGRect)a3 borderColor:(id)a4 fillColor:(id)a5 borderWidth:(int)a6;
@end

@implementation DSShapeView

+ (id)circleWithFrame:(CGRect)a3 radius:(double)a4 color:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a5;
  v11 = [[DSShapeView alloc] initWithFrame:x, y, width, height];
  [(DSShapeView *)v11 setBackgroundColor:v10];
  v12 = [(DSShapeView *)v11 layer];
  [v12 setCornerRadius:a4];

  v13 = [v10 CGColor];
  v14 = [(DSShapeView *)v11 layer];
  [v14 setBorderColor:v13];

  v15 = [(DSShapeView *)v11 layer];
  [v15 setBorderWidth:4.0];

  [(DSShapeView *)v11 setClipsToBounds:1];
  [(DSShapeView *)v11 setAlpha:1.0];

  return v11;
}

+ (id)rectangleWithFrame:(CGRect)a3 borderColor:(id)a4 fillColor:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a5;
  v11 = a4;
  v12 = [[DSShapeView alloc] initWithFrame:x, y, width, height];
  [(DSShapeView *)v12 setBackgroundColor:v10];

  v13 = [v11 CGColor];
  v14 = [(DSShapeView *)v12 layer];
  [v14 setBorderColor:v13];

  v15 = [(DSShapeView *)v12 layer];
  [v15 setBorderWidth:4.0];

  [(DSShapeView *)v12 setClipsToBounds:1];
  [(DSShapeView *)v12 setAlpha:1.0];

  return v12;
}

+ (id)rectangleWithFrame:(CGRect)a3 borderColor:(id)a4 fillColor:(id)a5 borderWidth:(int)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a5;
  v13 = a4;
  v14 = [[DSShapeView alloc] initWithFrame:x, y, width, height];
  [(DSShapeView *)v14 setBackgroundColor:v12];

  v15 = [v13 CGColor];
  v16 = [(DSShapeView *)v14 layer];
  [v16 setBorderColor:v15];

  v17 = a6;
  v18 = [(DSShapeView *)v14 layer];
  [v18 setBorderWidth:v17];

  [(DSShapeView *)v14 setClipsToBounds:1];
  [(DSShapeView *)v14 setAlpha:1.0];

  return v14;
}

@end