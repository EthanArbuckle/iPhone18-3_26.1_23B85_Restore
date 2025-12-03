@interface CAMExposureBiasSliderThumb
- (CAMExposureBiasSliderThumb)initWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_interpolatedValueWithMin:(double)min mid:(double)mid max:(double)max;
- (void)drawRect:(CGRect)rect;
- (void)setNormalizedExposureValue:(float)value;
@end

@implementation CAMExposureBiasSliderThumb

- (CAMExposureBiasSliderThumb)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CAMExposureBiasSliderThumb;
  v3 = [(CAMExposureBiasSliderThumb *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMExposureBiasSliderThumb *)v3 setOpaque:0];
  }

  return v4;
}

- (void)setNormalizedExposureValue:(float)value
{
  if (self->_normalizedExposureValue != value)
  {
    self->_normalizedExposureValue = value;
    [(CAMExposureBiasSliderThumb *)self setNeedsDisplay];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CAMExposureBiasSliderThumb *)self _sunRadius:fits.width];
  [(CAMExposureBiasSliderThumb *)self _sunRaySpacing];
  [(CAMExposureBiasSliderThumb *)self _sunRayLength];
  UICeilToViewScale();
  v5 = v4 + v4;
  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  [(CAMExposureBiasSliderThumb *)self bounds:rect.origin.x];
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
  tintColor = [(CAMExposureBiasSliderThumb *)self tintColor];
  [tintColor set];
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

- (double)_interpolatedValueWithMin:(double)min mid:(double)mid max:(double)max
{
  normalizedExposureValue = self->_normalizedExposureValue;
  v6 = normalizedExposureValue;
  if (normalizedExposureValue >= 0.5)
  {
    return mid + (v6 + -0.5 + v6 + -0.5) * (max - mid);
  }

  else
  {
    return min + (v6 + v6) * (mid - min);
  }
}

@end