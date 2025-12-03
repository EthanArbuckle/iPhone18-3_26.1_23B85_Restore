@interface CKNavigationButtonView
- (CKNavigationButtonView)initWithImage:(id)image disabledImage:(id)disabledImage text:(id)text wantsLongPress:(BOOL)press;
- (CKNavigationButtonView)initWithImage:(id)image text:(id)text wantsLongPress:(BOOL)press;
- (id)_imageForCurrentState;
- (void)_setupIconImageView;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setJoinButtonStyle:(int64_t)style;
- (void)setWantsVibrancy:(BOOL)vibrancy;
@end

@implementation CKNavigationButtonView

- (CKNavigationButtonView)initWithImage:(id)image text:(id)text wantsLongPress:(BOOL)press
{
  pressCopy = press;
  imageCopy = image;
  textCopy = text;
  v37.receiver = self;
  v37.super_class = CKNavigationButtonView;
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v14 = [(CKNavigationButtonView *)&v37 initWithFrame:*MEMORY[0x1E695F058], v11, v12, v13];
  v15 = v14;
  if (v14)
  {
    [(CKNavigationButtonView *)v14 setUserInteractionEnabled:1];
    [(CKNavigationButtonView *)v15 setClipsToBounds:0];
    [(CKNavigationButtonView *)v15 setWantsLongPress:pressCopy];
    [(CKNavigationButtonView *)v15 setEnabled:1];
    v16 = [MEMORY[0x1E69DC730] effectWithStyle:1100];
    v17 = [MEMORY[0x1E69DD248] _effectForBlurEffect:v16 vibrancyStyle:110];
    [(CKNavigationButtonView *)v15 setVibrancyEffect:v17];
    v15->_wantsVibrancy = 1;
    v18 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v17];
    [v18 setUserInteractionEnabled:0];
    [(CKNavigationButtonView *)v15 setVibrancyView:v18];
    [(CKNavigationButtonView *)v15 addSubview:v18];
    if (textCopy)
    {
      v19 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v10, v11, v12, v13}];
      [(CKNavigationButtonView *)v15 setTextLabel:v19];

      v20 = +[CKUIBehavior sharedBehaviors];
      theme = [v20 theme];
      navBarGrayColor = [theme navBarGrayColor];
      textLabel = [(CKNavigationButtonView *)v15 textLabel];
      [textLabel setTextColor:navBarGrayColor];

      v24 = [CKUIBehavior fontWithStyle:*MEMORY[0x1E69DDD10] adjustedForMaxSizeCategory:*MEMORY[0x1E69DDC58]];
      textLabel2 = [(CKNavigationButtonView *)v15 textLabel];
      [textLabel2 setFont:v24];

      [(CKNavigationButtonView *)v15 setText:textCopy];
      textLabel3 = [(CKNavigationButtonView *)v15 textLabel];
      [textLabel3 setText:textCopy];

      textLabel4 = [(CKNavigationButtonView *)v15 textLabel];
      [textLabel4 setTextAlignment:1];

      contentView = [v18 contentView];
      textLabel5 = [(CKNavigationButtonView *)v15 textLabel];
      [contentView addSubview:textLabel5];
    }

    if (imageCopy)
    {
      v30 = MEMORY[0x1E69DCAD8];
      v31 = +[CKUIBehavior sharedBehaviors];
      [v31 navbarButtonImagePointSize];
      v32 = [v30 configurationWithPointSize:?];

      v33 = [imageCopy imageWithSymbolConfiguration:v32];
      v34 = [v33 imageWithRenderingMode:2];
      [(CKNavigationButtonView *)v15 setImage:v34];

      image = [(CKNavigationButtonView *)v15 image];
      [(CKNavigationButtonView *)v15 setDefaultImage:image];

      [(CKNavigationButtonView *)v15 _setupIconImageView];
    }
  }

  return v15;
}

- (CKNavigationButtonView)initWithImage:(id)image disabledImage:(id)disabledImage text:(id)text wantsLongPress:(BOOL)press
{
  pressCopy = press;
  textCopy = text;
  imageCopy = image;
  v12 = [disabledImage imageWithRenderingMode:2];
  disabledImage = self->_disabledImage;
  self->_disabledImage = v12;

  v14 = [(CKNavigationButtonView *)self initWithImage:imageCopy text:textCopy wantsLongPress:pressCopy];
  return v14;
}

- (void)_setupIconImageView
{
  iconImageView = [(CKNavigationButtonView *)self iconImageView];

  if (!iconImageView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 navbarButtonImagePointSize];
    v7 = v6;
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 navbarButtonImagePointSize];
    v10 = [v4 initWithFrame:{0.0, 0.0, v7, v9}];
    [(CKNavigationButtonView *)self setIconImageView:v10];

    iconImageView2 = [(CKNavigationButtonView *)self iconImageView];
    [iconImageView2 setContentMode:1];

    iconImageView3 = [(CKNavigationButtonView *)self iconImageView];
    v13 = +[CKUIBehavior sharedBehaviors];
    theme = [v13 theme];
    navBarGrayColor = [theme navBarGrayColor];
    [iconImageView3 setTintColor:navBarGrayColor];

    vibrancyView = [(CKNavigationButtonView *)self vibrancyView];
    contentView = [vibrancyView contentView];
    iconImageView4 = [(CKNavigationButtonView *)self iconImageView];
    [contentView addSubview:iconImageView4];
  }

  _imageForCurrentState = [(CKNavigationButtonView *)self _imageForCurrentState];
  iconImageView5 = [(CKNavigationButtonView *)self iconImageView];
  [iconImageView5 setImage:_imageForCurrentState];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __45__CKNavigationButtonView__setupIconImageView__block_invoke;
  v21[3] = &unk_1E72EBA18;
  v21[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v21];
}

- (id)_imageForCurrentState
{
  image = [(CKNavigationButtonView *)self image];
  if ([(CKNavigationButtonView *)self state]== 2)
  {
    disabledImage = [(CKNavigationButtonView *)self disabledImage];

    if (disabledImage)
    {
      disabledImage2 = [(CKNavigationButtonView *)self disabledImage];

      image = disabledImage2;
    }
  }

  return image;
}

- (void)setJoinButtonStyle:(int64_t)style
{
  if (setJoinButtonStyle__onceToken != -1)
  {
    [CKNavigationButtonView setJoinButtonStyle:];
  }

  if (self->_joinButtonStyle != style)
  {
    self->_joinButtonStyle = style;
    iconImageView = [(CKNavigationButtonView *)self iconImageView];
    [iconImageView removeFromSuperview];

    [(CKNavigationButtonView *)self setIconImageView:0];
    joinButtonStyle = self->_joinButtonStyle;
    if (joinButtonStyle > 3)
    {
      if (joinButtonStyle > 5)
      {
        if (joinButtonStyle == 6)
        {
          v7 = +[CKUIBehavior sharedBehaviors];
          enabledExpanseImagePill = [v7 enabledExpanseImagePill];
          v9 = MEMORY[0x1E69DC888];
          v10 = @"CKSystemBlueColor";
          goto LABEL_18;
        }

        if (joinButtonStyle != 7)
        {
          goto LABEL_16;
        }

        v11 = setJoinButtonStyle__expanseImage;
        v12 = MEMORY[0x1E69DC888];
        v13 = @"CKSystemBlueColor";
LABEL_12:
        v14 = [v12 ckColorNamed:v13];
        v15 = _circularGlyphImage(v11, v14);
        [(CKNavigationButtonView *)self setImage:v15];

LABEL_19:
        [(CKNavigationButtonView *)self _setupIconImageView];

        [(CKNavigationButtonView *)self setNeedsLayout];
        return;
      }

      v11 = setJoinButtonStyle__audioImage;
    }

    else
    {
      if (joinButtonStyle <= 1)
      {
        if (joinButtonStyle == 1)
        {
          v7 = +[CKUIBehavior sharedBehaviors];
          enabledExpanseImagePill = [v7 enabledFacetimeVideoImagePill];
          v9 = MEMORY[0x1E69DC888];
          v10 = @"CKSystemGreenColor";
LABEL_18:
          v16 = [v9 ckColorNamed:v10];
          v17 = _joinPillImage(enabledExpanseImagePill, v16);
          [(CKNavigationButtonView *)self setImage:v17];

          goto LABEL_19;
        }

LABEL_16:
        [(CKNavigationButtonView *)self setImage:self->_defaultImage];
        goto LABEL_19;
      }

      v11 = setJoinButtonStyle__videoImage;
    }

    v12 = MEMORY[0x1E69DC888];
    v13 = @"CKSystemGreenColor";
    goto LABEL_12;
  }
}

void __45__CKNavigationButtonView_setJoinButtonStyle___block_invoke()
{
  v0 = +[CKUIBehavior sharedBehaviors];
  v1 = [v0 enabledFacetimeVideoImage];
  v2 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKSystemGreenColor"];
  v3 = [v1 _flatImageWithColor:v2];
  v4 = setJoinButtonStyle__videoImage;
  setJoinButtonStyle__videoImage = v3;

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 enabledFacetimeAudioImage];
  v7 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKSystemGreenColor"];
  v8 = [v6 _flatImageWithColor:v7];
  v9 = setJoinButtonStyle__audioImage;
  setJoinButtonStyle__audioImage = v8;

  v14 = +[CKUIBehavior sharedBehaviors];
  v10 = [v14 enabledExpanseImage];
  v11 = [MEMORY[0x1E69DC888] ckColorNamed:@"CKSystemBlueColor"];
  v12 = [v10 _flatImageWithColor:v11];
  v13 = setJoinButtonStyle__expanseImage;
  setJoinButtonStyle__expanseImage = v12;
}

- (void)setWantsVibrancy:(BOOL)vibrancy
{
  if (self->_wantsVibrancy != vibrancy)
  {
    v10 = v3;
    v11 = v4;
    self->_wantsVibrancy = vibrancy;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__CKNavigationButtonView_setWantsVibrancy___block_invoke;
    v8[3] = &unk_1E72F7B08;
    vibrancyCopy = vibrancy;
    v8[4] = self;
    v6 = __43__CKNavigationButtonView_setWantsVibrancy___block_invoke(v8);
    vibrancyView = [(CKNavigationButtonView *)self vibrancyView];
    [vibrancyView setEffect:v6];
  }
}

id __43__CKNavigationButtonView_setWantsVibrancy___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    if ([*(a1 + 32) isEnabled])
    {
      v2 = 0;
    }

    else
    {
      v2 = [*(a1 + 32) disabledVibrancyEffect];
    }

    if ([*(a1 + 32) isEnabled])
    {
      v4 = [*(a1 + 32) vibrancyEffect];
    }

    else
    {
      v4 = v2;
    }

    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = CKNavigationButtonView;
  [(CKNavigationButtonView *)&v43 layoutSubviews];
  [(CKNavigationButtonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7 + 40.0;
  v10 = v9 + -20.0;
  vibrancyView = [(CKNavigationButtonView *)self vibrancyView];
  [vibrancyView setFrame:{v10, v4, v8, v6}];

  vibrancyView2 = [(CKNavigationButtonView *)self vibrancyView];
  [vibrancyView2 bounds];
  v14 = v13;
  v16 = v15;

  iconImageView = [(CKNavigationButtonView *)self iconImageView];

  if (iconImageView)
  {
    image = [(CKNavigationButtonView *)self image];
    [image size];
    v20 = v19;
    v22 = v21;

    if (CKMainScreenScale_once_96 != -1)
    {
      [CKNavigationButtonView layoutSubviews];
    }

    v23 = *&CKMainScreenScale_sMainScreenScale_96;
    if (*&CKMainScreenScale_sMainScreenScale_96 == 0.0)
    {
      v23 = 1.0;
    }

    joinButtonStyle = self->_joinButtonStyle;
    v25 = floor((v14 + (v16 - v20) * 0.5) * v23) / v23;
    if (joinButtonStyle == 6 || joinButtonStyle == 1)
    {
      v27 = 1.5;
    }

    else
    {
      v27 = 0.0;
    }

    iconImageView2 = [(CKNavigationButtonView *)self iconImageView];
    [iconImageView2 setFrame:{v25, v27, v20, v22}];
  }

  textLabel = [(CKNavigationButtonView *)self textLabel];

  if (textLabel)
  {
    v30 = +[CKUIBehavior sharedBehaviors];
    isAccessibilityPreferredContentSizeCategory = [v30 isAccessibilityPreferredContentSizeCategory];

    textLabel2 = [(CKNavigationButtonView *)self textLabel];
    [textLabel2 sizeToFit];

    textLabel3 = [(CKNavigationButtonView *)self textLabel];
    [textLabel3 frame];
    v35 = v34;
    v37 = v36;

    [(CKNavigationButtonView *)self bounds];
    if (v38 < v35)
    {
      v35 = v38;
    }

    if (CKMainScreenScale_once_96 != -1)
    {
      [CKNavigationButtonView layoutSubviews];
    }

    v39 = *&CKMainScreenScale_sMainScreenScale_96;
    if (*&CKMainScreenScale_sMainScreenScale_96 == 0.0)
    {
      v39 = 1.0;
    }

    v40 = floor((v14 + (v16 - v35) * 0.5) * v39) / v39;
    if (isAccessibilityPreferredContentSizeCategory)
    {
      v41 = 30.0;
    }

    else
    {
      v41 = 26.0;
    }

    textLabel4 = [(CKNavigationButtonView *)self textLabel];
    [textLabel4 setFrame:{v40, v41, v35, v37}];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v17.receiver = self;
  v17.super_class = CKNavigationButtonView;
  [(CKNavigationButtonView *)&v17 setEnabled:?];
  _imageForCurrentState = [(CKNavigationButtonView *)self _imageForCurrentState];
  iconImageView = [(CKNavigationButtonView *)self iconImageView];
  [iconImageView setImage:_imageForCurrentState];

  if (enabledCopy)
  {
    disabledVibrancyEffect = +[CKUIBehavior sharedBehaviors];
    theme = [disabledVibrancyEffect theme];
    navBarGrayColor = [theme navBarGrayColor];
  }

  else
  {
    disabledVibrancyEffect = [(CKNavigationButtonView *)self disabledVibrancyEffect];

    if (!disabledVibrancyEffect)
    {
      disabledVibrancyEffect = [MEMORY[0x1E69DC730] effectWithStyle:1100];
      theme = [MEMORY[0x1E69DD248] _effectForBlurEffect:disabledVibrancyEffect vibrancyStyle:111];
      [(CKNavigationButtonView *)self setDisabledVibrancyEffect:theme];
    }

    navBarGrayColor = [MEMORY[0x1E69DC888] systemMidGrayColor];
  }

  textLabel = [(CKNavigationButtonView *)self textLabel];
  [textLabel setTextColor:navBarGrayColor];

  if (enabledCopy)
  {

    [(CKNavigationButtonView *)self vibrancyEffect];
  }

  else
  {
    [(CKNavigationButtonView *)self disabledVibrancyEffect];
  }
  v11 = ;
  vibrancyView = [(CKNavigationButtonView *)self vibrancyView];
  [vibrancyView setEffect:v11];

  if (enabledCopy)
  {

    if ([(CKNavigationButtonView *)self wantsVibrancy])
    {
      vibrancyEffect = [(CKNavigationButtonView *)self vibrancyEffect];
LABEL_14:
      v14 = vibrancyEffect;
      v15 = !enabledCopy;
      goto LABEL_16;
    }
  }

  else
  {

    if ([(CKNavigationButtonView *)self wantsVibrancy])
    {
      vibrancyEffect = [(CKNavigationButtonView *)self disabledVibrancyEffect];
      goto LABEL_14;
    }
  }

  enabledCopy = 0;
  v15 = 0;
  v14 = 0;
LABEL_16:
  vibrancyView2 = [(CKNavigationButtonView *)self vibrancyView];
  [vibrancyView2 setEffect:v14];

  if (v15)
  {
  }

  if (enabledCopy)
  {
  }
}

@end