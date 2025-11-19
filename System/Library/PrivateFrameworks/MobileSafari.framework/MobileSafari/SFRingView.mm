@interface SFRingView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (SFRingView)initWithFrame:(CGRect)a3;
- (void)setRadius:(double)a3;
- (void)tintColorDidChange;
@end

@implementation SFRingView

- (SFRingView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SFRingView;
  v3 = [(SFRingView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(SFRingView *)v3 shapeLayer];
    [v5 setFillColor:0];
    [v5 setLineCap:*MEMORY[0x1E6979E78]];
    v6 = v4;
  }

  return v4;
}

- (void)setRadius:(double)a3
{
  if (self->_radius != a3)
  {
    self->_radius = a3;
    v8 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:a3 startAngle:a3 endAngle:a3 clockwise:{-1.57079633, 4.71238898}];
    v5 = v8;
    v6 = [v8 CGPath];
    v7 = [(SFRingView *)self shapeLayer];
    [v7 setPath:v6];
  }
}

- (void)tintColorDidChange
{
  v7 = [(SFRingView *)self tintColor];
  v3 = [(SFRingView *)self traitCollection];
  v4 = [v7 resolvedColorWithTraitCollection:v3];
  v5 = [v4 CGColor];
  v6 = [(SFRingView *)self shapeLayer];
  [v6 setStrokeColor:v5];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"strokeEnd"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"strokeColor"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SFRingView;
    v5 = [(SFRingView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end