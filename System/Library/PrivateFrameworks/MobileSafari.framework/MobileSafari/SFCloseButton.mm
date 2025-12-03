@interface SFCloseButton
- (SFCloseButton)initWithStyle:(int64_t)style primaryAction:(id)action;
- (UIImageView)imageView;
- (id)_makeXmarkImageView;
- (void)layoutSubviews;
- (void)setOpaqueBackgroundVisibility:(double)visibility;
@end

@implementation SFCloseButton

- (SFCloseButton)initWithStyle:(int64_t)style primaryAction:(id)action
{
  v107[2] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v104.receiver = self;
  v104.super_class = SFCloseButton;
  v7 = [(SFCloseButton *)&v104 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_16;
  }

  if ((style - 1) < 2)
  {
    v102 = actionCopy;
    [(SFCloseButton *)v7 _setContinuousCornerRadius:1.79769313e308];
    if (style == 1)
    {
      v9 = 10;
    }

    else
    {
      v9 = 8;
    }

    v10 = [MEMORY[0x1E69DC730] effectWithStyle:v9];
    v11 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v10];
    blurEffectView = v8->_blurEffectView;
    v8->_blurEffectView = v11;

    [(UIVisualEffectView *)v8->_blurEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)v8->_blurEffectView setUserInteractionEnabled:0];
    [(SFCloseButton *)v8 addSubview:v8->_blurEffectView];
    v100 = v10;
    v99 = [MEMORY[0x1E69DD248] effectForBlurEffect:v10 style:1];
    v13 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v99];
    vibrantEffectView = v8->_vibrantEffectView;
    v8->_vibrantEffectView = v13;

    [(UIVisualEffectView *)v8->_vibrantEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)v8->_vibrantEffectView setUserInteractionEnabled:0];
    [(SFCloseButton *)v8 addSubview:v8->_vibrantEffectView];
    contentView = [(UIVisualEffectView *)v8->_vibrantEffectView contentView];
    _makeXmarkImageView = [(SFCloseButton *)v8 _makeXmarkImageView];
    imageView = v8->_imageView;
    v8->_imageView = _makeXmarkImageView;

    v18 = 0x1E696A000;
    styleCopy = style;
    if (style == 1)
    {
      v19 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
      v20 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] compatibleWithTraitCollection:v19];
      v21 = MEMORY[0x1E69DCAD8];
      [v20 pointSize];
      v22 = [v21 configurationWithPointSize:7 weight:2 scale:?];

      [(UIImageView *)v8->_imageView setPreferredSymbolConfiguration:v22];
      v23 = 22.0;
    }

    else
    {
      v33 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:7 weight:2 scale:15.0];
      [(UIImageView *)v8->_imageView setPreferredSymbolConfiguration:v33];

      _makeXmarkImageView2 = [(SFCloseButton *)v8 _makeXmarkImageView];
      opaqueImageView = v8->_opaqueImageView;
      v8->_opaqueImageView = _makeXmarkImageView2;

      v36 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:7 weight:2 scale:15.0];
      [(UIImageView *)v8->_opaqueImageView setPreferredSymbolConfiguration:v36];

      v37 = objc_alloc_init(MEMORY[0x1E69DD250]);
      opaqueBackgroundView = v8->_opaqueBackgroundView;
      v8->_opaqueBackgroundView = v37;

      [(UIView *)v8->_opaqueBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
      systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
      [(UIView *)v8->_opaqueBackgroundView setBackgroundColor:systemFillColor];

      [(UIView *)v8->_opaqueBackgroundView setUserInteractionEnabled:0];
      [(UIView *)v8->_opaqueBackgroundView setAlpha:0.0];
      [(UIView *)v8->_opaqueBackgroundView addSubview:v8->_opaqueImageView];
      [(SFCloseButton *)v8 addSubview:v8->_opaqueBackgroundView];
      v82 = MEMORY[0x1E696ACD8];
      centerXAnchor = [(UIView *)v8->_opaqueBackgroundView centerXAnchor];
      centerXAnchor2 = [(SFCloseButton *)v8 centerXAnchor];
      v92 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v106[0] = v92;
      centerYAnchor = [(UIView *)v8->_opaqueBackgroundView centerYAnchor];
      centerYAnchor2 = [(SFCloseButton *)v8 centerYAnchor];
      v86 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v106[1] = v86;
      widthAnchor = [(UIView *)v8->_opaqueBackgroundView widthAnchor];
      widthAnchor2 = [(SFCloseButton *)v8 widthAnchor];
      v76 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
      v106[2] = v76;
      heightAnchor = [(UIView *)v8->_opaqueBackgroundView heightAnchor];
      heightAnchor2 = [(SFCloseButton *)v8 heightAnchor];
      v70 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      v106[3] = v70;
      centerXAnchor3 = [(UIImageView *)v8->_opaqueImageView centerXAnchor];
      [(UIView *)v8->_opaqueBackgroundView centerXAnchor];
      v41 = v97 = contentView;
      v42 = [centerXAnchor3 constraintEqualToAnchor:v41];
      v106[4] = v42;
      centerYAnchor3 = [(UIImageView *)v8->_opaqueImageView centerYAnchor];
      centerYAnchor4 = [(UIView *)v8->_opaqueBackgroundView centerYAnchor];
      v45 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v106[5] = v45;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v106 count:6];
      [v82 activateConstraints:v46];

      v22 = centerXAnchor;
      v18 = 0x1E696A000uLL;

      contentView = v97;
      v23 = 30.0;
    }

    [contentView addSubview:v8->_imageView];
    v71 = *(v18 + 3288);
    centerXAnchor4 = [(UIVisualEffectView *)v8->_blurEffectView centerXAnchor];
    centerXAnchor5 = [(SFCloseButton *)v8 centerXAnchor];
    v95 = [centerXAnchor4 constraintEqualToAnchor:centerXAnchor5];
    v105[0] = v95;
    centerYAnchor5 = [(UIVisualEffectView *)v8->_blurEffectView centerYAnchor];
    centerYAnchor6 = [(SFCloseButton *)v8 centerYAnchor];
    v89 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v105[1] = v89;
    widthAnchor3 = [(UIVisualEffectView *)v8->_blurEffectView widthAnchor];
    widthAnchor4 = [(SFCloseButton *)v8 widthAnchor];
    v83 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    v105[2] = v83;
    heightAnchor3 = [(UIVisualEffectView *)v8->_blurEffectView heightAnchor];
    heightAnchor4 = [(SFCloseButton *)v8 heightAnchor];
    v77 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
    v105[3] = v77;
    centerXAnchor6 = [(UIVisualEffectView *)v8->_vibrantEffectView centerXAnchor];
    centerXAnchor7 = [(SFCloseButton *)v8 centerXAnchor];
    v69 = [centerXAnchor6 constraintEqualToAnchor:centerXAnchor7];
    v105[4] = v69;
    centerYAnchor7 = [(UIVisualEffectView *)v8->_vibrantEffectView centerYAnchor];
    centerYAnchor8 = [(SFCloseButton *)v8 centerYAnchor];
    v66 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v105[5] = v66;
    widthAnchor5 = [(UIVisualEffectView *)v8->_vibrantEffectView widthAnchor];
    widthAnchor6 = [(SFCloseButton *)v8 widthAnchor];
    v63 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
    v105[6] = v63;
    heightAnchor5 = [(UIVisualEffectView *)v8->_vibrantEffectView heightAnchor];
    heightAnchor6 = [(SFCloseButton *)v8 heightAnchor];
    v60 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
    v105[7] = v60;
    centerXAnchor8 = [(UIImageView *)v8->_imageView centerXAnchor];
    centerXAnchor9 = [contentView centerXAnchor];
    v57 = [centerXAnchor8 constraintEqualToAnchor:centerXAnchor9];
    v105[8] = v57;
    centerYAnchor9 = [(UIImageView *)v8->_imageView centerYAnchor];
    centerYAnchor10 = [contentView centerYAnchor];
    v49 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
    v105[9] = v49;
    widthAnchor7 = [(SFCloseButton *)v8 widthAnchor];
    v51 = [widthAnchor7 constraintEqualToConstant:v23];
    v105[10] = v51;
    heightAnchor7 = [(SFCloseButton *)v8 heightAnchor];
    v53 = [heightAnchor7 constraintEqualToConstant:v23];
    v105[11] = v53;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:12];
    v54 = v31 = contentView;
    [v71 activateConstraints:v54];

    style = styleCopy;
    actionCopy = v102;
    v25 = v99;
    plainButtonConfiguration = v100;
    goto LABEL_12;
  }

  if (!style)
  {
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
    v26 = MEMORY[0x1E69DCAD8];
    tintColor = [MEMORY[0x1E69DC888] tintColor];
    v107[0] = tintColor;
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    v107[1] = secondarySystemBackgroundColor;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v107 count:2];
    v29 = [v26 configurationWithPaletteColors:v28];
    v30 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:3 weight:2 scale:30.0];
    v31 = [v29 configurationByApplyingConfiguration:v30];

    v32 = [v25 imageWithSymbolConfiguration:v31];
    [plainButtonConfiguration setImage:v32];

    [plainButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    [(SFCloseButton *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFCloseButton *)v8 setConfiguration:plainButtonConfiguration];
LABEL_12:
  }

  v8->_style = style;
  if (actionCopy)
  {
    [(SFCloseButton *)v8 addAction:actionCopy forControlEvents:0x2000];
  }

  v55 = v8;
LABEL_16:

  return v8;
}

- (id)_makeXmarkImageView
{
  v2 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  v4 = [v2 initWithImage:v3];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v4 setTintColor:secondaryLabelColor];

  [v4 _sf_setMatchesIntrinsicContentSize];

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFCloseButton;
  [(SFCloseButton *)&v3 layoutSubviews];
  [(SFCloseButton *)self bounds];
  [(UIVisualEffectView *)self->_blurEffectView _setContinuousCornerRadius:CGRectGetWidth(v4) * 0.5];
  [(SFCloseButton *)self bounds];
  [(UIView *)self->_opaqueBackgroundView _setContinuousCornerRadius:CGRectGetWidth(v5) * 0.5];
}

- (UIImageView)imageView
{
  p_opaqueImageView = &self->_opaqueImageView;
  [(UIImageView *)self->_opaqueImageView alpha];
  if (v4 == 0.0)
  {
    p_opaqueImageView = &self->_imageView;
  }

  v5 = *p_opaqueImageView;

  return v5;
}

- (void)setOpaqueBackgroundVisibility:(double)visibility
{
  if (self->_style == 2 && self->_opaqueBackgroundVisibility != visibility)
  {
    self->_opaqueBackgroundVisibility = visibility;
    [(UIView *)self->_opaqueBackgroundView setAlpha:visibility];
    v5 = 1.0 - visibility;
    [(UIVisualEffectView *)self->_vibrantEffectView setAlpha:v5];
    blurEffectView = self->_blurEffectView;

    [(UIVisualEffectView *)blurEffectView setAlpha:v5];
  }
}

@end