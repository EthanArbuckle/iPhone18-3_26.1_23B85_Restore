@interface HUColorWheelView
- ($F24F406B2B787EFB06265DBA3D28CBD5)colorWheelCoordinateForPoint:(CGPoint)a3 boundedToWheel:(BOOL)a4;
- (CGPoint)pointForColorWheelCoordinate:(id)a3;
- (HUColorWheelView)initWithColorWheelSpace:(id)a3;
- (double)_outerRadius;
- (id)wheelBezierPath;
- (void)drawRect:(CGRect)a3;
- (void)setColorWheelSpace:(id)a3;
- (void)setWheelHoleRadius:(double)a3;
@end

@implementation HUColorWheelView

- (HUColorWheelView)initWithColorWheelSpace:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HUColorWheelView;
  v5 = [(HUColorWheelView *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(HUColorWheelView *)v5 setColorWheelSpace:v4];
    [(HUColorWheelView *)v6 setOpaque:0];
    v7 = [(HUColorWheelView *)v6 widthAnchor];
    v8 = [(HUColorWheelView *)v6 heightAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [v9 setActive:1];
  }

  return v6;
}

- (void)setColorWheelSpace:(id)a3
{
  v6 = a3;
  v8 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"HUColorWheelView.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"colorWheelSpace != nil"}];

    v6 = 0;
  }

  if (([(HUColorWheelSpace *)self->_colorWheelSpace isEqual:v6]& 1) == 0)
  {
    objc_storeStrong(&self->_colorWheelSpace, a3);
    [(HUColorWheelView *)self setNeedsDisplay];
  }
}

- (void)setWheelHoleRadius:(double)a3
{
  if (self->_wheelHoleRadius != a3)
  {
    self->_wheelHoleRadius = a3;
    [(HUColorWheelView *)self setNeedsDisplay];
  }
}

- (double)_outerRadius
{
  [(HUColorWheelView *)self bounds];
  v4 = v3;
  [(HUColorWheelView *)self bounds];
  return fmin(v4, v5) * 0.5;
}

- (id)wheelBezierPath
{
  [(HUColorWheelView *)self bounds];
  UIRectGetCenter();
  v4 = v3;
  v6 = v5;
  v7 = MEMORY[0x277D75208];
  [(HUColorWheelView *)self _outerRadius];
  v9 = [v7 bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:v8 clockwise:{0.0, 6.28318531}];
  v10 = MEMORY[0x277D75208];
  [(HUColorWheelView *)self wheelHoleRadius];
  v12 = [v10 bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:v11 clockwise:{0.0, 6.28318531}];
  [v9 appendPath:v12];

  [v9 setUsesEvenOddFillRule:1];

  return v9;
}

- (CGPoint)pointForColorWheelCoordinate:(id)a3
{
  var0 = a3.var0;
  if (a3.var1 == 1.79769313e308)
  {
    var1 = 0.5;
  }

  else
  {
    var1 = a3.var1;
  }

  [(HUColorWheelView *)self wheelHoleRadius];
  v7 = v6;
  [(HUColorWheelView *)self _outerRadius];
  v9 = v7 + (v8 - v7) * var1;
  [(HUColorWheelView *)self bounds];
  UIRectGetCenter();
  v11 = v10;
  v13 = v12;
  v14 = __sincos_stret(var0 * 6.28318531);
  v15 = v13 - v14.__sinval * v9;
  v16 = v11 + v14.__cosval * v9;
  result.y = v15;
  result.x = v16;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)colorWheelCoordinateForPoint:(CGPoint)a3 boundedToWheel:(BOOL)a4
{
  y = a3.y;
  x = a3.x;
  [(HUColorWheelView *)self bounds];
  [(HUColorWheelView *)self wheelHoleRadius];

  HUColorWheelCoordinateForPoint(x, y);
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (void)drawRect:(CGRect)a3
{
  v4 = [(HUColorWheelView *)self wheelBezierPath:a3.origin.x];
  [v4 addClip];

  v5 = [(HUColorWheelView *)self colorWheelSpace];

  if (!v5)
  {
    NSLog(&cfstr_MissingColorSp.isa, self);
  }

  [(HUColorWheelView *)self bounds];
  UIRectGetCenter();
  [(HUColorWheelView *)self bounds];
  v6 = HUSizeRoundedToScreenScale();
  v8 = v7;
  [objc_opt_class() _colorWheelRenderingScale];
  [(HUColorWheelView *)self wheelHoleRadius];
  v10 = v9;
  v11 = [(HUColorWheelView *)self colorWheelSpace];
  v12 = v6;
  v13 = v8;
  if (*&v6 != *&v8)
  {
    v33.width = v6;
    v33.height = v8;
    v14 = NSStringFromCGSize(v33);
    NSLog(&cfstr_AttemptingToDr.isa, v14);
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v16 = CGBitmapContextCreateWithData(0, v6, v8, 8uLL, 4 * v12, DeviceRGB, 0x4001u, 0, 0);
  Data = CGBitmapContextGetData(v16);
  v27 = *MEMORY[0x277CBF348];
  v18 = v13;
  v19 = v12 * v13;
  v20 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __HUCreateColorWheelImage_block_invoke;
  block[3] = &unk_277DB9C30;
  v28 = v12;
  v29 = v18;
  v30 = v10;
  v25 = v11;
  v26 = v6;
  v31 = 4;
  v32 = Data;
  v21 = v11;
  dispatch_apply(v19, v20, block);

  Image = CGBitmapContextCreateImage(v16);
  v23 = [MEMORY[0x277D755B8] imageWithCGImage:Image scale:0 orientation:1.0];
  CGContextRelease(v16);
  CGColorSpaceRelease(DeviceRGB);
  CGImageRelease(Image);

  [v23 size];
  UIRectCenteredAboutPoint();
  [v23 drawInRect:?];
}

@end