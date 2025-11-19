@interface CKNavigationButtonView
- (CKNavigationButtonView)initWithImage:(id)a3 disabledImage:(id)a4 text:(id)a5 wantsLongPress:(BOOL)a6;
- (CKNavigationButtonView)initWithImage:(id)a3 text:(id)a4 wantsLongPress:(BOOL)a5;
- (id)_imageForCurrentState;
- (void)_setupIconImageView;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setJoinButtonStyle:(int64_t)a3;
- (void)setWantsVibrancy:(BOOL)a3;
@end

@implementation CKNavigationButtonView

- (CKNavigationButtonView)initWithImage:(id)a3 text:(id)a4 wantsLongPress:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
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
    [(CKNavigationButtonView *)v15 setWantsLongPress:v5];
    [(CKNavigationButtonView *)v15 setEnabled:1];
    v16 = [MEMORY[0x1E69DC730] effectWithStyle:1100];
    v17 = [MEMORY[0x1E69DD248] _effectForBlurEffect:v16 vibrancyStyle:110];
    [(CKNavigationButtonView *)v15 setVibrancyEffect:v17];
    v15->_wantsVibrancy = 1;
    v18 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v17];
    [v18 setUserInteractionEnabled:0];
    [(CKNavigationButtonView *)v15 setVibrancyView:v18];
    [(CKNavigationButtonView *)v15 addSubview:v18];
    if (v9)
    {
      v19 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v10, v11, v12, v13}];
      [(CKNavigationButtonView *)v15 setTextLabel:v19];

      v20 = +[CKUIBehavior sharedBehaviors];
      v21 = [v20 theme];
      v22 = [v21 navBarGrayColor];
      v23 = [(CKNavigationButtonView *)v15 textLabel];
      [v23 setTextColor:v22];

      v24 = [CKUIBehavior fontWithStyle:*MEMORY[0x1E69DDD10] adjustedForMaxSizeCategory:*MEMORY[0x1E69DDC58]];
      v25 = [(CKNavigationButtonView *)v15 textLabel];
      [v25 setFont:v24];

      [(CKNavigationButtonView *)v15 setText:v9];
      v26 = [(CKNavigationButtonView *)v15 textLabel];
      [v26 setText:v9];

      v27 = [(CKNavigationButtonView *)v15 textLabel];
      [v27 setTextAlignment:1];

      v28 = [v18 contentView];
      v29 = [(CKNavigationButtonView *)v15 textLabel];
      [v28 addSubview:v29];
    }

    if (v8)
    {
      v30 = MEMORY[0x1E69DCAD8];
      v31 = +[CKUIBehavior sharedBehaviors];
      [v31 navbarButtonImagePointSize];
      v32 = [v30 configurationWithPointSize:?];

      v33 = [v8 imageWithSymbolConfiguration:v32];
      v34 = [v33 imageWithRenderingMode:2];
      [(CKNavigationButtonView *)v15 setImage:v34];

      v35 = [(CKNavigationButtonView *)v15 image];
      [(CKNavigationButtonView *)v15 setDefaultImage:v35];

      [(CKNavigationButtonView *)v15 _setupIconImageView];
    }
  }

  return v15;
}

- (CKNavigationButtonView)initWithImage:(id)a3 disabledImage:(id)a4 text:(id)a5 wantsLongPress:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [a4 imageWithRenderingMode:2];
  disabledImage = self->_disabledImage;
  self->_disabledImage = v12;

  v14 = [(CKNavigationButtonView *)self initWithImage:v11 text:v10 wantsLongPress:v6];
  return v14;
}

- (void)_setupIconImageView
{
  v3 = [(CKNavigationButtonView *)self iconImageView];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = +[CKUIBehavior sharedBehaviors];
    [v5 navbarButtonImagePointSize];
    v7 = v6;
    v8 = +[CKUIBehavior sharedBehaviors];
    [v8 navbarButtonImagePointSize];
    v10 = [v4 initWithFrame:{0.0, 0.0, v7, v9}];
    [(CKNavigationButtonView *)self setIconImageView:v10];

    v11 = [(CKNavigationButtonView *)self iconImageView];
    [v11 setContentMode:1];

    v12 = [(CKNavigationButtonView *)self iconImageView];
    v13 = +[CKUIBehavior sharedBehaviors];
    v14 = [v13 theme];
    v15 = [v14 navBarGrayColor];
    [v12 setTintColor:v15];

    v16 = [(CKNavigationButtonView *)self vibrancyView];
    v17 = [v16 contentView];
    v18 = [(CKNavigationButtonView *)self iconImageView];
    [v17 addSubview:v18];
  }

  v19 = [(CKNavigationButtonView *)self _imageForCurrentState];
  v20 = [(CKNavigationButtonView *)self iconImageView];
  [v20 setImage:v19];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __45__CKNavigationButtonView__setupIconImageView__block_invoke;
  v21[3] = &unk_1E72EBA18;
  v21[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v21];
}

- (id)_imageForCurrentState
{
  v3 = [(CKNavigationButtonView *)self image];
  if ([(CKNavigationButtonView *)self state]== 2)
  {
    v4 = [(CKNavigationButtonView *)self disabledImage];

    if (v4)
    {
      v5 = [(CKNavigationButtonView *)self disabledImage];

      v3 = v5;
    }
  }

  return v3;
}

- (void)setJoinButtonStyle:(int64_t)a3
{
  if (setJoinButtonStyle__onceToken != -1)
  {
    [CKNavigationButtonView setJoinButtonStyle:];
  }

  if (self->_joinButtonStyle != a3)
  {
    self->_joinButtonStyle = a3;
    v5 = [(CKNavigationButtonView *)self iconImageView];
    [v5 removeFromSuperview];

    [(CKNavigationButtonView *)self setIconImageView:0];
    joinButtonStyle = self->_joinButtonStyle;
    if (joinButtonStyle > 3)
    {
      if (joinButtonStyle > 5)
      {
        if (joinButtonStyle == 6)
        {
          v7 = +[CKUIBehavior sharedBehaviors];
          v8 = [v7 enabledExpanseImagePill];
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
          v8 = [v7 enabledFacetimeVideoImagePill];
          v9 = MEMORY[0x1E69DC888];
          v10 = @"CKSystemGreenColor";
LABEL_18:
          v16 = [v9 ckColorNamed:v10];
          v17 = _joinPillImage(v8, v16);
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

- (void)setWantsVibrancy:(BOOL)a3
{
  if (self->_wantsVibrancy != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_wantsVibrancy = a3;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__CKNavigationButtonView_setWantsVibrancy___block_invoke;
    v8[3] = &unk_1E72F7B08;
    v9 = a3;
    v8[4] = self;
    v6 = __43__CKNavigationButtonView_setWantsVibrancy___block_invoke(v8);
    v7 = [(CKNavigationButtonView *)self vibrancyView];
    [v7 setEffect:v6];
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
  v11 = [(CKNavigationButtonView *)self vibrancyView];
  [v11 setFrame:{v10, v4, v8, v6}];

  v12 = [(CKNavigationButtonView *)self vibrancyView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;

  v17 = [(CKNavigationButtonView *)self iconImageView];

  if (v17)
  {
    v18 = [(CKNavigationButtonView *)self image];
    [v18 size];
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

    v28 = [(CKNavigationButtonView *)self iconImageView];
    [v28 setFrame:{v25, v27, v20, v22}];
  }

  v29 = [(CKNavigationButtonView *)self textLabel];

  if (v29)
  {
    v30 = +[CKUIBehavior sharedBehaviors];
    v31 = [v30 isAccessibilityPreferredContentSizeCategory];

    v32 = [(CKNavigationButtonView *)self textLabel];
    [v32 sizeToFit];

    v33 = [(CKNavigationButtonView *)self textLabel];
    [v33 frame];
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
    if (v31)
    {
      v41 = 30.0;
    }

    else
    {
      v41 = 26.0;
    }

    v42 = [(CKNavigationButtonView *)self textLabel];
    [v42 setFrame:{v40, v41, v35, v37}];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CKNavigationButtonView;
  [(CKNavigationButtonView *)&v17 setEnabled:?];
  v6 = [(CKNavigationButtonView *)self _imageForCurrentState];
  v7 = [(CKNavigationButtonView *)self iconImageView];
  [v7 setImage:v6];

  if (v4)
  {
    v8 = +[CKUIBehavior sharedBehaviors];
    v3 = [v8 theme];
    v9 = [v3 navBarGrayColor];
  }

  else
  {
    v8 = [(CKNavigationButtonView *)self disabledVibrancyEffect];

    if (!v8)
    {
      v8 = [MEMORY[0x1E69DC730] effectWithStyle:1100];
      v3 = [MEMORY[0x1E69DD248] _effectForBlurEffect:v8 vibrancyStyle:111];
      [(CKNavigationButtonView *)self setDisabledVibrancyEffect:v3];
    }

    v9 = [MEMORY[0x1E69DC888] systemMidGrayColor];
  }

  v10 = [(CKNavigationButtonView *)self textLabel];
  [v10 setTextColor:v9];

  if (v4)
  {

    [(CKNavigationButtonView *)self vibrancyEffect];
  }

  else
  {
    [(CKNavigationButtonView *)self disabledVibrancyEffect];
  }
  v11 = ;
  v12 = [(CKNavigationButtonView *)self vibrancyView];
  [v12 setEffect:v11];

  if (v4)
  {

    if ([(CKNavigationButtonView *)self wantsVibrancy])
    {
      v13 = [(CKNavigationButtonView *)self vibrancyEffect];
LABEL_14:
      v14 = v13;
      v15 = !v4;
      goto LABEL_16;
    }
  }

  else
  {

    if ([(CKNavigationButtonView *)self wantsVibrancy])
    {
      v13 = [(CKNavigationButtonView *)self disabledVibrancyEffect];
      goto LABEL_14;
    }
  }

  v4 = 0;
  v15 = 0;
  v14 = 0;
LABEL_16:
  v16 = [(CKNavigationButtonView *)self vibrancyView];
  [v16 setEffect:v14];

  if (v15)
  {
  }

  if (v4)
  {
  }
}

@end