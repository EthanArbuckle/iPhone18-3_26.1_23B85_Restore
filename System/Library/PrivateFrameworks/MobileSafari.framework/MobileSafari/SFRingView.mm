@interface SFRingView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (SFRingView)initWithFrame:(CGRect)frame;
- (void)setRadius:(double)radius;
- (void)tintColorDidChange;
@end

@implementation SFRingView

- (SFRingView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SFRingView;
  v3 = [(SFRingView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    shapeLayer = [(SFRingView *)v3 shapeLayer];
    [shapeLayer setFillColor:0];
    [shapeLayer setLineCap:*MEMORY[0x1E6979E78]];
    v6 = v4;
  }

  return v4;
}

- (void)setRadius:(double)radius
{
  if (self->_radius != radius)
  {
    self->_radius = radius;
    v8 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:radius startAngle:radius endAngle:radius clockwise:{-1.57079633, 4.71238898}];
    v5 = v8;
    cGPath = [v8 CGPath];
    shapeLayer = [(SFRingView *)self shapeLayer];
    [shapeLayer setPath:cGPath];
  }
}

- (void)tintColorDidChange
{
  tintColor = [(SFRingView *)self tintColor];
  traitCollection = [(SFRingView *)self traitCollection];
  v4 = [tintColor resolvedColorWithTraitCollection:traitCollection];
  cGColor = [v4 CGColor];
  shapeLayer = [(SFRingView *)self shapeLayer];
  [shapeLayer setStrokeColor:cGColor];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"strokeEnd"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"strokeColor"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SFRingView;
    v5 = [(SFRingView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end