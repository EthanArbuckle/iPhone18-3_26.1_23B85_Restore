@interface FIUIShapeView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (FIUIShapeView)initWithFrame:(CGRect)frame;
- (void)setFillColor:(id)color;
- (void)setLineWidth:(double)width;
- (void)setPath:(id)path;
- (void)setStrokeColor:(id)color;
- (void)setStrokeEnd:(double)end;
@end

@implementation FIUIShapeView

- (FIUIShapeView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = FIUIShapeView;
  return [(FIUIShapeView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (void)setPath:(id)path
{
  pathCopy = path;
  shapeLayer = [(FIUIShapeView *)self shapeLayer];
  cGPath = [pathCopy CGPath];

  [shapeLayer setPath:cGPath];
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  shapeLayer = [(FIUIShapeView *)self shapeLayer];
  cGColor = [colorCopy CGColor];

  [shapeLayer setFillColor:cGColor];
}

- (void)setStrokeColor:(id)color
{
  colorCopy = color;
  shapeLayer = [(FIUIShapeView *)self shapeLayer];
  cGColor = [colorCopy CGColor];

  [shapeLayer setStrokeColor:cGColor];
}

- (void)setLineWidth:(double)width
{
  shapeLayer = [(FIUIShapeView *)self shapeLayer];
  [shapeLayer setLineWidth:width];
}

- (void)setStrokeEnd:(double)end
{
  shapeLayer = [(FIUIShapeView *)self shapeLayer];
  [shapeLayer setStrokeEnd:end];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"strokeEnd"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"path"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FIUIShapeView;
    v5 = [(FIUIShapeView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end