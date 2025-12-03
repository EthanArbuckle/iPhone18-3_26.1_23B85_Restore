@interface CSMicControlSymbolView
- (CSMicControlSymbolView)init;
- (id)_micImageForState:(unint64_t)state;
- (void)layoutSubviews;
- (void)updateForState:(unint64_t)state;
@end

@implementation CSMicControlSymbolView

- (CSMicControlSymbolView)init
{
  v54.receiver = self;
  v54.super_class = CSMicControlSymbolView;
  v2 = [(CSMicControlSymbolView *)&v54 init];
  if (v2)
  {
    v3 = MEMORY[0x277D755D8];
    v4 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769B0] weight:*MEMORY[0x277D74410]];
    v5 = [v3 configurationWithFont:v4 scale:2];

    v6 = [MEMORY[0x277D755B0] systemImageNamed:@"mic.fill"];
    v52 = v5;
    v7 = [v6 imageByApplyingSymbolConfiguration:v5];
    v8 = [v7 imageWithRenderingMode:2];
    onImage = v2->_onImage;
    v2->_onImage = v8;

    v10 = [MEMORY[0x277D755B0] systemImageNamed:@"mic.slash.fill"];
    v11 = [v10 imageByApplyingSymbolConfiguration:v5];
    v12 = [v11 imageWithRenderingMode:2];
    offImage = v2->_offImage;
    v2->_offImage = v12;

    v14 = objc_alloc(MEMORY[0x277D755E8]);
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    v19 = [v14 initWithFrame:{*MEMORY[0x277CBF3A0], v16, v17, v18}];
    imageView = v2->_imageView;
    v2->_imageView = v19;

    [(UIImageView *)v2->_imageView setContentMode:4];
    [(CSMicControlSymbolView *)v2 addSubview:v2->_imageView];
    [(UIImageView *)v2->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(CSMicControlSymbolView *)v2 leadingAnchor];
    leadingAnchor2 = [(UIImageView *)v2->_imageView leadingAnchor];
    v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v53[0] = v49;
    trailingAnchor = [(CSMicControlSymbolView *)v2 trailingAnchor];
    trailingAnchor2 = [(UIImageView *)v2->_imageView trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v53[1] = v21;
    topAnchor = [(CSMicControlSymbolView *)v2 topAnchor];
    topAnchor2 = [(UIImageView *)v2->_imageView topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v53[2] = v24;
    bottomAnchor = [(CSMicControlSymbolView *)v2 bottomAnchor];
    bottomAnchor2 = [(UIImageView *)v2->_imageView bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v53[3] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:4];
    [v46 activateConstraints:v28];

    layer = [(UIImageView *)v2->_imageView layer];
    [layer setShadowRadius:1.4];

    whiteColor = [MEMORY[0x277D75340] whiteColor];
    cGColor = [whiteColor CGColor];
    layer2 = [(UIImageView *)v2->_imageView layer];
    [layer2 setShadowColor:cGColor];

    v33 = *MEMORY[0x277CBF3A8];
    v34 = *(MEMORY[0x277CBF3A8] + 8);
    layer3 = [(UIImageView *)v2->_imageView layer];
    [layer3 setShadowOffset:{v33, v34}];

    v36 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v15, v16, v17, v18}];
    glowView = v2->_glowView;
    v2->_glowView = v36;

    v38 = [MEMORY[0x277D75340] colorWithWhite:1.0 alpha:0.2];
    cGColor2 = [v38 CGColor];
    layer4 = [(UIView *)v2->_glowView layer];
    [layer4 setShadowColor:cGColor2];

    layer5 = [(UIView *)v2->_glowView layer];
    [layer5 setShadowOffset:{v33, v34}];

    layer6 = [(UIView *)v2->_glowView layer];
    LODWORD(v43) = 1.0;
    [layer6 setShadowOpacity:v43];

    layer7 = [(UIView *)v2->_glowView layer];
    [layer7 setShadowRadius:20.0];

    [(CSMicControlSymbolView *)v2 addSubview:v2->_glowView];
    [(CSMicControlSymbolView *)v2 updateForState:0];
  }

  return v2;
}

- (void)updateForState:(unint64_t)state
{
  if (state <= 1)
  {
    if (!state)
    {
      v20 = [MEMORY[0x277D75340] colorWithWhite:0.25 alpha:1.0];
      [(UIImageView *)self->_imageView setTintColor:v20];

      imageView = self->_imageView;
      v22 = *(MEMORY[0x277CBF2C0] + 16);
      *&v28.a = *MEMORY[0x277CBF2C0];
      *&v28.c = v22;
      *&v28.tx = *(MEMORY[0x277CBF2C0] + 32);
      [(UIImageView *)imageView setTransform:&v28];
      layer = [(UIImageView *)self->_imageView layer];
      [layer setShadowOpacity:0.0];

      layer2 = [(UIView *)self->_glowView layer];
      [layer2 setShadowOpacity:0.0];

      [(UIImageView *)self->_imageView removeAllSymbolEffects];
      goto LABEL_11;
    }

    if (state != 1)
    {
      goto LABEL_11;
    }

    v5 = [MEMORY[0x277D75340] colorWithWhite:1.0 alpha:1.0];
    [(UIImageView *)self->_imageView setTintColor:v5];

    v6 = self->_imageView;
    v7 = *(MEMORY[0x277CBF2C0] + 16);
    *&v28.a = *MEMORY[0x277CBF2C0];
    *&v28.c = v7;
    *&v28.tx = *(MEMORY[0x277CBF2C0] + 32);
    [(UIImageView *)v6 setTransform:&v28];
    [(UIImageView *)self->_imageView removeAllSymbolEffects];
    layer3 = [(UIImageView *)self->_imageView layer];
    LODWORD(v9) = 1.0;
    [layer3 setShadowOpacity:v9];

    layer4 = [(UIView *)self->_glowView layer];
    LODWORD(v11) = 1.0;
    [layer4 setShadowOpacity:v11];
    goto LABEL_8;
  }

  if (state == 2)
  {
    return;
  }

  if (state == 3)
  {
    v12 = [MEMORY[0x277D75340] colorWithWhite:0.25 alpha:1.0];
    [(UIImageView *)self->_imageView setTintColor:v12];

    CGAffineTransformMakeScale(&v27, 0.9, 0.9);
    v13 = self->_imageView;
    v28 = v27;
    [(UIImageView *)v13 setTransform:&v28];
    layer5 = [(UIImageView *)self->_imageView layer];
    [layer5 setShadowOpacity:0.0];

    layer6 = [(UIView *)self->_glowView layer];
    [layer6 setShadowOpacity:0.0];

    layer4 = [MEMORY[0x277CE15E8] behaviorPeriodicWithDelay:0.5];
    v16 = [MEMORY[0x277CE15E0] optionsWithRepeatBehavior:layer4];
    v17 = [v16 optionsWithSpeed:1.5];

    v18 = self->_imageView;
    effect = [MEMORY[0x277CE15F8] effect];
    [(UIImageView *)v18 addSymbolEffect:effect options:v17 animated:1];

LABEL_8:
  }

LABEL_11:
  v25 = self->_imageView;
  v26 = [(CSMicControlSymbolView *)self _micImageForState:state];
  [(UIImageView *)v25 setImage:v26];
}

- (id)_micImageForState:(unint64_t)state
{
  v4 = &OBJC_IVAR___CSMicControlSymbolView__onImage;
  if (state == 3 || state == 1)
  {
LABEL_5:
    v5 = *(&self->super.super.super.isa + *v4);

    return v5;
  }

  if (!state)
  {
    v4 = &OBJC_IVAR___CSMicControlSymbolView__offImage;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = CSMicControlSymbolView;
  [(CSMicControlSymbolView *)&v11 layoutSubviews];
  [(CSMicControlSymbolView *)self bounds];
  v13 = CGRectInset(v12, -16.0, -16.0);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  glowView = self->_glowView;
  [(CSMicControlSymbolView *)self bounds];
  [(UIView *)glowView setFrame:?];
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = CGPathCreateWithEllipseInRect(v14, 0);
  if (v8)
  {
    v9 = v8;
    layer = [(UIView *)self->_glowView layer];
    [layer setShadowPath:v9];

    CGPathRelease(v9);
  }
}

@end