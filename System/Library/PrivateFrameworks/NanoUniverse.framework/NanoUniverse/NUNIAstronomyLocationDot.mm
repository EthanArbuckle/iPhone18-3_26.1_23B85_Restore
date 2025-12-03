@interface NUNIAstronomyLocationDot
- (NUNIAstronomyLocationDot)init;
- (NUNIAstronomyLocationDot)initWithConfiguration:(id)configuration;
- (NUNIAstronomyLocationDot)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (void)_generateInnerDotImage;
- (void)layoutSubviews;
- (void)setInnerDotColor:(id)color;
- (void)setInnerDotDiameter:(double)diameter;
- (void)setOuterDotColor:(id)color;
- (void)setPulseDuration:(double)duration;
- (void)startAnimationWithCompletionBlock:(id)block;
- (void)stopAnimation;
@end

@implementation NUNIAstronomyLocationDot

- (NUNIAstronomyLocationDot)init
{
  v3 = objc_alloc_init(NUNIAstronomyLocationDotConfiguration);
  v4 = [(NUNIAstronomyLocationDot *)self initWithConfiguration:v3];

  return v4;
}

- (NUNIAstronomyLocationDot)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy defaultSize];
  v7 = [(NUNIAstronomyLocationDot *)self initWithFrame:configurationCopy configuration:0.0, 0.0, v5, v6];

  return v7;
}

- (NUNIAstronomyLocationDot)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  configurationCopy = configuration;
  v25.receiver = self;
  v25.super_class = NUNIAstronomyLocationDot;
  height = [(NUNIAstronomyLocationDot *)&v25 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_configuration, configuration);
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

    layer = [(UIView *)v12->_outerDot layer];
    [layer setAnchorPoint:{0.5, 0.5}];

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
  blackColor = [MEMORY[0x277D75348] blackColor];
  cGColor = [blackColor CGColor];
  v23.width = 0.50000006;
  v23.height = 0.866025388;
  CGContextSetShadowWithColor(CurrentContext, v23, innerDotDiameter * 1.05, cGColor);

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

- (void)setOuterDotColor:(id)color
{
  colorCopy = color;
  outerDotColor = self->_outerDotColor;
  v7 = colorCopy;
  if ((CLKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_outerDotColor, color);
    [(UIView *)self->_outerDot setBackgroundColor:v7];
  }
}

- (void)setInnerDotColor:(id)color
{
  colorCopy = color;
  innerDotColor = self->_innerDotColor;
  v7 = colorCopy;
  if ((CLKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_innerDotColor, color);
    [(NUNIAstronomyLocationDot *)self _generateInnerDotImage];
  }
}

- (void)setInnerDotDiameter:(double)diameter
{
  if (self->_innerDotDiameter != diameter)
  {
    self->_innerDotDiameter = diameter;
    [(NUNIAstronomyLocationDot *)self _generateInnerDotImage];

    [(NUNIAstronomyLocationDot *)self setNeedsLayout];
  }
}

- (void)setPulseDuration:(double)duration
{
  self->_pulseDuration = duration;
  if (self->_animating)
  {
    [(NUNIAstronomyLocationDot *)self stopAnimation];

    [(NUNIAstronomyLocationDot *)self startAnimation];
  }
}

- (void)startAnimationWithCompletionBlock:(id)block
{
  v18[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  [(NUNIAstronomyLocationDot *)self stopAnimation];
  self->_animating = 1;
  [(UIImageView *)self->_innerDotImageView setAlpha:1.0];
  [(UIView *)self->_outerDot setAlpha:0.0];
  [(UIView *)self->_outerDot setBounds:0.0, 0.0, self->_outerDotDiameter, self->_outerDotDiameter];
  if (self->_pulseDuration <= 0.0)
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }

  else
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setCompletionBlock:blockCopy];
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

    animation = [MEMORY[0x277CD9E00] animation];
    v18[0] = v5;
    v18[1] = v7;
    v18[2] = v8;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
    [animation setAnimations:v14];

    [animation setDuration:self->_pulseDuration];
    LODWORD(v15) = 2.0;
    [animation setRepeatCount:v15];
    [animation setFrameInterval:0.0666666667];
    [animation setDiscretizesTime:1];
    layer = [(UIView *)self->_outerDot layer];
    [layer addAnimation:animation forKey:@"pulse"];

    [MEMORY[0x277CD9FF0] commit];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)stopAnimation
{
  self->_animating = 0;
  layer = [(UIView *)self->_outerDot layer];
  [layer removeAnimationForKey:@"pulse"];
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
  layer = [(UIView *)self->_outerDot layer];
  [layer setCornerRadius:self->_outerDotDiameter * 0.5];

  innerDotImageView = self->_innerDotImageView;
  [(UIImageView *)innerDotImageView bounds];
  [(NUNIAstronomyLocationDotConfiguration *)self->_configuration screenScale];
  v9 = v7;
  UIRectCenteredIntegralRectScale();
  [(UIImageView *)innerDotImageView setFrame:v9];
}

@end