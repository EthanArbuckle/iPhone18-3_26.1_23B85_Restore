@interface ICDocCamShutterButton
- (ICDocCamShutterButton)initWithCoder:(id)coder;
- (ICDocCamShutterButton)initWithFrame:(CGRect)frame;
- (id)innerCircle;
- (id)outerRingImage;
- (void)commonInit;
- (void)setPseudoDisabled:(BOOL)disabled;
@end

@implementation ICDocCamShutterButton

- (ICDocCamShutterButton)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICDocCamShutterButton;
  v3 = [(ICDocCamShutterButton *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ICDocCamShutterButton *)v3 commonInit];
  }

  return v4;
}

- (ICDocCamShutterButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICDocCamShutterButton;
  v3 = [(ICDocCamShutterButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICDocCamShutterButton *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(ICDocCamShutterButton *)self setTintColor:whiteColor];

  v4 = objc_alloc(MEMORY[0x277D755E8]);
  outerRingImage = [(ICDocCamShutterButton *)self outerRingImage];
  v8 = [v4 initWithImage:outerRingImage];

  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  [v8 setTintColor:whiteColor2];

  [(ICDocCamShutterButton *)self insertSubview:v8 atIndex:0];
  innerCircle = [(ICDocCamShutterButton *)self innerCircle];
  [(ICDocCamShutterButton *)self setBackgroundImage:innerCircle forState:0];
}

- (id)outerRingImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"ios_doccam_shutter_ring" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

- (id)innerCircle
{
  v2 = MEMORY[0x277D755B8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"ios_doccam_shutter_center" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

- (void)setPseudoDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  self->_pseudoDisabled = disabled;
  layer = [(ICDocCamShutterButton *)self layer];
  v6 = layer;
  LODWORD(v5) = 1.0;
  if (disabledCopy)
  {
    *&v5 = 0.5;
  }

  [layer setOpacity:v5];
}

@end