@interface FIUIShapeView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (FIUIShapeView)initWithFrame:(CGRect)a3;
- (void)setFillColor:(id)a3;
- (void)setLineWidth:(double)a3;
- (void)setPath:(id)a3;
- (void)setStrokeColor:(id)a3;
- (void)setStrokeEnd:(double)a3;
@end

@implementation FIUIShapeView

- (FIUIShapeView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = FIUIShapeView;
  return [(FIUIShapeView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)setPath:(id)a3
{
  v4 = a3;
  v6 = [(FIUIShapeView *)self shapeLayer];
  v5 = [v4 CGPath];

  [v6 setPath:v5];
}

- (void)setFillColor:(id)a3
{
  v4 = a3;
  v6 = [(FIUIShapeView *)self shapeLayer];
  v5 = [v4 CGColor];

  [v6 setFillColor:v5];
}

- (void)setStrokeColor:(id)a3
{
  v4 = a3;
  v6 = [(FIUIShapeView *)self shapeLayer];
  v5 = [v4 CGColor];

  [v6 setStrokeColor:v5];
}

- (void)setLineWidth:(double)a3
{
  v4 = [(FIUIShapeView *)self shapeLayer];
  [v4 setLineWidth:a3];
}

- (void)setStrokeEnd:(double)a3
{
  v4 = [(FIUIShapeView *)self shapeLayer];
  [v4 setStrokeEnd:a3];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"strokeEnd"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"path"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = FIUIShapeView;
    v5 = [(FIUIShapeView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end