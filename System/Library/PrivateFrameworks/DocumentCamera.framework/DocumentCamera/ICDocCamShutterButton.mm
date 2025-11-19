@interface ICDocCamShutterButton
- (ICDocCamShutterButton)initWithCoder:(id)a3;
- (ICDocCamShutterButton)initWithFrame:(CGRect)a3;
- (id)innerCircle;
- (id)outerRingImage;
- (void)commonInit;
- (void)setPseudoDisabled:(BOOL)a3;
@end

@implementation ICDocCamShutterButton

- (ICDocCamShutterButton)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICDocCamShutterButton;
  v3 = [(ICDocCamShutterButton *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ICDocCamShutterButton *)v3 commonInit];
  }

  return v4;
}

- (ICDocCamShutterButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICDocCamShutterButton;
  v3 = [(ICDocCamShutterButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICDocCamShutterButton *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = [MEMORY[0x277D75348] whiteColor];
  [(ICDocCamShutterButton *)self setTintColor:v3];

  v4 = objc_alloc(MEMORY[0x277D755E8]);
  v5 = [(ICDocCamShutterButton *)self outerRingImage];
  v8 = [v4 initWithImage:v5];

  v6 = [MEMORY[0x277D75348] whiteColor];
  [v8 setTintColor:v6];

  [(ICDocCamShutterButton *)self insertSubview:v8 atIndex:0];
  v7 = [(ICDocCamShutterButton *)self innerCircle];
  [(ICDocCamShutterButton *)self setBackgroundImage:v7 forState:0];
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

- (void)setPseudoDisabled:(BOOL)a3
{
  v3 = a3;
  self->_pseudoDisabled = a3;
  v4 = [(ICDocCamShutterButton *)self layer];
  v6 = v4;
  LODWORD(v5) = 1.0;
  if (v3)
  {
    *&v5 = 0.5;
  }

  [v4 setOpacity:v5];
}

@end