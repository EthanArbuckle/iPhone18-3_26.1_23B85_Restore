@interface NUNIAstronomyLocationDot
- (NUNIAstronomyLocationDot)init;
- (NUNIAstronomyLocationDot)initWithConfiguration:(id)a3;
- (NUNIAstronomyLocationDot)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (void)_generateInnerDotImage;
- (void)layoutSubviews;
- (void)setInnerDotColor:(id)a3;
- (void)setInnerDotDiameter:(double)a3;
- (void)setOuterDotColor:(id)a3;
- (void)setPulseDuration:(double)a3;
- (void)startAnimationWithCompletionBlock:(id)a3;
- (void)stopAnimation;
@end

@implementation NUNIAstronomyLocationDot

- (NUNIAstronomyLocationDot)init
{
  v3 = objc_alloc_init(NUNIAstronomyLocationDotConfiguration);
  v4 = [(NUNIAstronomyLocationDot *)self initWithConfiguration:v3];

  return v4;
}

- (NUNIAstronomyLocationDot)initWithConfiguration:(id)a3
{
  v4 = a3;
  [v4 defaultSize];
  v7 = [(NUNIAstronomyLocationDot *)self initWithFrame:v4 configuration:0.0, 0.0, v5, v6];

  return v7;
}

- (NUNIAstronomyLocationDot)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v25.receiver = self;
  v25.super_class = NUNIAstronomyLocationDot;
  v11 = [(NUNIAstronomyLocationDot *)&v25 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_configuration, a4);
    v13 = +[NUNIAstronomyLocationDot _defaultColor];
    [(NUNIAstronomyLocationDotConfiguration *)v12->_configuration defaultOuterDotDiameter];
    v12->_outerDotDiameter = v14;
    [(NUNIAstronomyLocationDotConfiguration *)v12->_configuration defaultInnerDotDiameter];
    v12->_innerDotDiameter = v15;
    +[NUNIAstronomyLocationDot defaultPulseDuration];
    v12->_pulseDuration = v16;
    +[NUNIAstronomyLocationDot defaultPulseAlphaDelay];
    v12->_pulseAlphaDelay = v17;
    v18 = objc_alloc_init(MEMORY[0x277D755E8]);
    innerDotImageView = v12->_innerDotImageView;
    v12->_innerDotImageView = v18;

    v20 = objc_alloc(MEMORY[0x277D75D18]);
    v21 = [v20 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    outerDot = v12->_outerDot;
    v12->_outerDot = v21;

    v23 = [(UIView *)v12->_outerDot layer];
    [v23 setAnchorPoint:{0.5, 0.5}];

    [(NUNIAstronomyLocationDot *)v12 setOuterDotColor:v13];
    [(NUNIAstronomyLocationDot *)v12 setInnerDotColor:v13];
    [(NUNIAstronomyLocationDot *)v12 addSubview:v12->_outerDot];
    [(NUNIAstronomyLocationDot *)v12 addSubview:v12->_innerDotImageView];
  }

  return v12;
}

- (void)_generateInnerDotImage
{
  [(NUNIAstronomyLocationDot *)self screenScale];
  v4 = v3;
  innerDotDiameter = self->_innerDotDiameter;
  v6 = ceil(innerDotDiameter + 1.73205078 + innerDotDiameter * 1.05 * 2.0);
  v22.width = v6;
  v22.height = v6;
  UIGraphicsBeginImageContextWithOptions(v22, 0, v4);
  CurrentContext = UIGraphicsGetCurrentContext();
  v8 = [MEMORY[0x277D75348] blackColor];
  v9 = [v8 CGColor];
  v23.width = 0.50000006;
  v23.height = 0.866025388;
  CGContextSetShadowWithColor(CurrentContext, v23, innerDotDiameter * 1.05, v9);

  [(NUNIAstronomyLocationDotConfiguration *)self->_configuration screenScale];
  v19 = v10;
  UIRectCenteredIntegralRectScale();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  CGContextSetFillColorWithColor(CurrentContext, [(UIColor *)self->_innerDotColor CGColor]);
  v24.origin.x = v12;
  v24.origin.y = v14;
  v24.size.width = v16;
  v24.size.height = v18;
  CGContextAddEllipseInRect(CurrentContext, v24);
  CGContextFillPath(CurrentContext);
  v20 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [(UIImageView *)self->_innerDotImageView setImage:v20];
  [(UIImageView *)self->_innerDotImageView setBounds:0.0, 0.0, v6, v6];
}

- (void)setOuterDotColor:(id)a3
{
  v5 = a3;
  outerDotColor = self->_outerDotColor;
  v7 = v5;
  if ((CLKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_outerDotColor, a3);
    [(UIView *)self->_outerDot setBackgroundColor:v7];
  }
}

- (void)setInnerDotColor:(id)a3
{
  v5 = a3;
  innerDotColor = self->_innerDotColor;
  v7 = v5;
  if ((CLKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_innerDotColor, a3);
    [(NUNIAstronomyLocationDot *)self _generateInnerDotImage];
  }
}

- (void)setInnerDotDiameter:(double)a3
{
  if (self->_innerDotDiameter != a3)
  {
    self->_innerDotDiameter = a3;
    [(NUNIAstronomyLocationDot *)self _generateInnerDotImage];

    [(NUNIAstronomyLocationDot *)self setNeedsLayout];
  }
}

- (void)setPulseDuration:(double)a3
{
  self->_pulseDuration = a3;
  if (self->_animating)
  {
    [(NUNIAstronomyLocationDot *)self stopAnimation];

    [(NUNIAstronomyLocationDot *)self startAnimation];
  }
}

- (void)startAnimationWithCompletionBlock:(id)a3
{
  v18[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NUNIAstronomyLocationDot *)self stopAnimation];
  self->_animating = 1;
  [(UIImageView *)self->_innerDotImageView setAlpha:1.0];
  [(UIView *)self->_outerDot setAlpha:0.0];
  [(UIView *)self->_outerDot setBounds:0.0, 0.0, self->_outerDotDiameter, self->_outerDotDiameter];
  if (self->_pulseDuration <= 0.0)
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setCompletionBlock:v4];
    v5 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"transform.scale"];
    [v5 setDuration:self->_pulseDuration];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_innerDotDiameter / self->_outerDotDiameter];
    [v5 setFromValue:v6];

    [v5 setToValue:&unk_286CFF570];
    v7 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v7 setDuration:self->_pulseDuration - self->_pulseAlphaDelay];
    [v7 setFromValue:&unk_286CFF570];
    [v7 setToValue:&unk_286CFF570];
    v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"opacity"];
    [v8 setDuration:self->_pulseDuration - self->_pulseAlphaDelay];
    [v8 setFromValue:&unk_286CFF570];
    [v8 setToValue:&unk_286CFF580];
    [v8 setBeginTime:self->_pulseAlphaDelay];
    LODWORD(v9) = 1050253722;
    LODWORD(v10) = 1060320051;
    LODWORD(v11) = 1.0;
    v12 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v9 :0.0 :v10 :v11];
    [v8 setTimingFunction:v12];

    v13 = [MEMORY[0x277CD9E00] animation];
    v18[0] = v5;
    v18[1] = v7;
    v18[2] = v8;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    [v13 setAnimations:v14];

    [v13 setDuration:self->_pulseDuration];
    LODWORD(v15) = 2.0;
    [v13 setRepeatCount:v15];
    [v13 setFrameInterval:0.0666666667];
    [v13 setDiscretizesTime:1];
    v16 = [(UIView *)self->_outerDot layer];
    [v16 addAnimation:v13 forKey:@"pulse"];

    [MEMORY[0x277CD9FF0] commit];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)stopAnimation
{
  self->_animating = 0;
  v2 = [(UIView *)self->_outerDot layer];
  [v2 removeAnimationForKey:@"pulse"];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = NUNIAstronomyLocationDot;
  [(NUNIAstronomyLocationDot *)&v10 layoutSubviews];
  outerDotDiameter = self->_outerDotDiameter;
  [(NUNIAstronomyLocationDot *)self bounds];
  [(NUNIAstronomyLocationDotConfiguration *)self->_configuration screenScale];
  v8 = v4;
  UIRectCenteredIntegralRectScale();
  [(UIView *)self->_outerDot setFrame:v8];
  v5 = [(UIView *)self->_outerDot layer];
  [v5 setCornerRadius:self->_outerDotDiameter * 0.5];

  innerDotImageView = self->_innerDotImageView;
  [(UIImageView *)innerDotImageView bounds];
  [(NUNIAstronomyLocationDotConfiguration *)self->_configuration screenScale];
  v9 = v7;
  UIRectCenteredIntegralRectScale();
  [(UIImageView *)innerDotImageView setFrame:v9];
}

@end