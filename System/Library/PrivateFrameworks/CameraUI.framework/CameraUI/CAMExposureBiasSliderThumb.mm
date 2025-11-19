@interface CAMExposureBiasSliderThumb
- (CAMExposureBiasSliderThumb)initWithFrame:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_interpolatedValueWithMin:(double)a3 mid:(double)a4 max:(double)a5;
- (void)drawRect:(CGRect)a3;
- (void)setNormalizedExposureValue:(float)a3;
@end

@implementation CAMExposureBiasSliderThumb

- (CAMExposureBiasSliderThumb)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CAMExposureBiasSliderThumb;
  v3 = [(CAMExposureBiasSliderThumb *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMExposureBiasSliderThumb *)v3 setOpaque:0];
  }

  return v4;
}

- (void)setNormalizedExposureValue:(float)a3
{
  if (self->_normalizedExposureValue != a3)
  {
    self->_normalizedExposureValue = a3;
    [(CAMExposureBiasSliderThumb *)self setNeedsDisplay];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CAMExposureBiasSliderThumb *)self _sunRadius:a3.width];
  [(CAMExposureBiasSliderThumb *)self _sunRaySpacing];
  [(CAMExposureBiasSliderThumb *)self _sunRayLength];
  UICeilToViewScale();
  v5 = v4 + v4;
  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  [(CAMExposureBiasSliderThumb *)self bounds:a3.origin.x];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MidY = CGRectGetMidY(v25);
  CurrentContext = UIGraphicsGetCurrentContext();
  v22 = [(CAMExposureBiasSliderThumb *)self tintColor];
  [v22 set];
  [(CAMExposureBiasSliderThumb *)self _sunRadius];
  v12 = v11;
  CGContextBeginPath(CurrentContext);
  CGContextMoveToPoint(CurrentContext, MidX + v12, MidY);
  v13 = 0.0;
  CGContextAddArc(CurrentContext, MidX, MidY, v12, 0.0, 6.28318531, 0);
  CGContextClosePath(CurrentContext);
  CGContextFillPath(CurrentContext);
  CGContextBeginPath(CurrentContext);
  [(CAMExposureBiasSliderThumb *)self _sunRadius];
  v15 = v14;
  [(CAMExposureBiasSliderThumb *)self _sunRaySpacing];
  v17 = v15 + v16;
  [(CAMExposureBiasSliderThumb *)self _sunRayLength];
  v19 = v17 + v18;
  v20 = 8;
  do
  {
    v21 = __sincos_stret(v13 * 0.785398163);
    CGContextMoveToPoint(CurrentContext, MidX + v17 * v21.__cosval, MidY + v17 * v21.__sinval);
    CGContextAddLineToPoint(CurrentContext, MidX + v19 * v21.__cosval, MidY + v19 * v21.__sinval);
    v13 = v13 + 1.0;
    --v20;
  }

  while (v20);
  CGContextClosePath(CurrentContext);
  CGContextStrokePath(CurrentContext);
}

- (double)_interpolatedValueWithMin:(double)a3 mid:(double)a4 max:(double)a5
{
  normalizedExposureValue = self->_normalizedExposureValue;
  v6 = normalizedExposureValue;
  if (normalizedExposureValue >= 0.5)
  {
    return a4 + (v6 + -0.5 + v6 + -0.5) * (a5 - a4);
  }

  else
  {
    return a3 + (v6 + v6) * (a4 - a3);
  }
}

@end