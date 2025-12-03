@interface SFURLFieldOverlayView
- (SFURLFieldOverlayView)initWithFrame:(CGRect)frame configuration:(id)configuration;
- (double)_buttonCornerRadius;
- (id)_configurationForButtonItem:(id)item inOverlayConfiguration:(id)configuration;
- (void)_animateWithDelay:(double)delay isPresenting:(BOOL)presenting group:(id)group animations:(id)animations;
- (void)_layOutClippingView;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setIsShowing:(BOOL)showing completion:(id)completion;
- (void)_updateText;
- (void)dismissAndRemove;
- (void)layoutSubviews;
- (void)present;
- (void)setConfiguration:(id)configuration;
@end

@implementation SFURLFieldOverlayView

- (SFURLFieldOverlayView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v53[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v52.receiver = self;
  v52.super_class = SFURLFieldOverlayView;
  height = [(SFURLFieldOverlayView *)&v52 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = *MEMORY[0x1E69DDD80];
    v12 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SFURLFieldOverlayView *)height bounds];
    v13 = [v12 initWithFrame:?];
    backgroundView = height->_backgroundView;
    height->_backgroundView = v13;

    [(UIView *)height->_backgroundView setUserInteractionEnabled:0];
    buttons = height->_buttons;
    height->_buttons = MEMORY[0x1E695E0F0];

    v16 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SFURLFieldOverlayView *)height bounds];
    v17 = [v16 initWithFrame:?];
    clippingView = height->_clippingView;
    height->_clippingView = v17;

    v19 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SFURLFieldOverlayView *)height bounds];
    v20 = [v19 initWithFrame:?];
    eraserView = height->_eraserView;
    height->_eraserView = v20;

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)height->_eraserView setBackgroundColor:blackColor];

    v23 = *MEMORY[0x1E69798E8];
    layer = [(UIView *)height->_eraserView layer];
    [layer setCompositingFilter:v23];

    v25 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconView = height->_iconView;
    height->_iconView = v25;

    [(UIImageView *)height->_iconView setContentMode:4];
    [(UIImageView *)height->_iconView setMaximumContentSizeCategory:*MEMORY[0x1E69DDC70]];
    v27 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v11];
    [(UIImageView *)height->_iconView setPreferredSymbolConfiguration:v27];

    v28 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = height->_textLabel;
    height->_textLabel = v28;

    [(UILabel *)height->_textLabel setAdjustsFontForContentSizeCategory:1];
    v30 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v11 weight:*MEMORY[0x1E69DB970]];
    [(UILabel *)height->_textLabel setFont:v30];

    font = [(UILabel *)height->_textLabel font];
    [font pointSize];
    [(UILabel *)height->_textLabel setMinimumScaleFactor:11.0 / v32];

    LODWORD(v33) = 1132068864;
    [(UILabel *)height->_textLabel setContentCompressionResistancePriority:0 forAxis:v33];
    LODWORD(v34) = 1132003328;
    [(UILabel *)height->_textLabel setContentHuggingPriority:0 forAxis:v34];
    v35 = objc_alloc(MEMORY[0x1E69DCF90]);
    [(SFURLFieldOverlayView *)height bounds];
    v36 = [v35 initWithFrame:?];
    stackView = height->_stackView;
    height->_stackView = v36;

    [(UIStackView *)height->_stackView setSpacing:5.0];
    [(SFURLFieldOverlayView *)height addSubview:height->_clippingView];
    [(UIView *)height->_clippingView addSubview:height->_backgroundView];
    [(UIView *)height->_clippingView addSubview:height->_stackView];
    [(UIStackView *)height->_stackView addArrangedSubview:height->_iconView];
    [(UIStackView *)height->_stackView addArrangedSubview:height->_textLabel];
    [(UIStackView *)height->_stackView setCustomSpacing:height->_textLabel afterView:8.0];
    v38 = MEMORY[0x1E69DD250];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __53__SFURLFieldOverlayView_initWithFrame_configuration___block_invoke;
    v50[3] = &unk_1E721B360;
    v39 = height;
    v51 = v39;
    [v38 performWithoutAnimation:v50];
    [(SFURLFieldOverlayView *)v39 setConfiguration:configurationCopy];
    v40 = MEMORY[0x1E696ACD8];
    widthAnchor = [(UIImageView *)height->_iconView widthAnchor];
    v42 = [widthAnchor constraintGreaterThanOrEqualToConstant:26.0];
    v53[0] = v42;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    [v40 activateConstraints:v43];

    v44 = MEMORY[0x1E69DD250];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __53__SFURLFieldOverlayView_initWithFrame_configuration___block_invoke_2;
    v48[3] = &unk_1E721B360;
    v45 = v39;
    v49 = v45;
    [v44 performWithoutAnimation:v48];
    v46 = v45;
  }

  return height;
}

uint64_t __53__SFURLFieldOverlayView_initWithFrame_configuration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (double)_buttonCornerRadius
{
  [(SFURLFieldOverlayView *)self _continuousCornerRadius];

  return _SFContinuousCornerRadiusMatchingRadiusWithInset(v2, 5.0);
}

- (void)_layOutClippingView
{
  [(SFURLFieldOverlayView *)self bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if (!self->_isShowing)
  {
    Height = CGRectGetHeight(*&v3);
    v7 = _SFFlipRectInCoordinateSpace(![(UIView *)self _sf_usesLeftToRightLayout], 0.0, 0.0, 0.0, Height, v7, v8, v9, v10);
    v8 = v12;
    v9 = v13;
    v10 = v14;
  }

  [(UIView *)self->_clippingView setFrame:v7, v8, v9, v10];
  eraserView = self->_eraserView;

  [(UIView *)eraserView setFrame:v7, v8, v9, v10];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFURLFieldOverlayView;
  [(SFURLFieldOverlayView *)&v3 layoutSubviews];
  [(SFURLFieldOverlayView *)self _layOutClippingView];
  [(SFURLFieldOverlayView *)self bounds];
  [(UIView *)self->_backgroundView setFrame:?];
  [(SFURLFieldOverlayView *)self bounds];
  v5 = CGRectInset(v4, 5.0, 5.0);
  [(UIStackView *)self->_stackView setFrame:v5.origin.x, v5.origin.y, v5.size.width, v5.size.height];
  [(SFURLFieldOverlayView *)self bounds];
  if (CGRectGetWidth(v6) != self->_lastLayoutWidth)
  {
    [(SFURLFieldOverlayView *)self _updateText];
  }

  [(SFURLFieldOverlayView *)self bounds];
  self->_lastLayoutWidth = CGRectGetWidth(v7);
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v22 = *MEMORY[0x1E69E9840];
  [(SFURLFieldOverlayView *)self _continuousCornerRadius];
  if (v5 != radius)
  {
    v20.receiver = self;
    v20.super_class = SFURLFieldOverlayView;
    [(SFURLFieldOverlayView *)&v20 _setContinuousCornerRadius:radius];
    [(UIView *)self->_clippingView _setContinuousCornerRadius:radius];
    [(UIView *)self->_backgroundView _setContinuousCornerRadius:radius];
    [(UIView *)self->_eraserView _setContinuousCornerRadius:radius];
    [(SFURLFieldOverlayView *)self _buttonCornerRadius];
    v7 = v6;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_buttons;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          configuration = [v13 configuration];
          background = [configuration background];
          [background setCornerRadius:v7];

          [v13 setConfiguration:configuration];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (id)_configurationForButtonItem:(id)item inOverlayConfiguration:(id)configuration
{
  v31[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  configurationCopy = configuration;
  borderedButtonConfiguration = [MEMORY[0x1E69DC740] borderedButtonConfiguration];
  [(SFURLFieldOverlayView *)self _buttonCornerRadius];
  v10 = v9;
  background = [borderedButtonConfiguration background];
  [background setCornerRadius:v10];

  [borderedButtonConfiguration setCornerStyle:-1];
  [borderedButtonConfiguration setImagePadding:4.0];
  theme = [itemCopy theme];
  if ((theme - 1) >= 2)
  {
    v14 = 0.0;
    if (theme)
    {
      goto LABEL_15;
    }

    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v16 = [tertiaryLabelColor colorWithAlphaComponent:0.1];
    [borderedButtonConfiguration setBaseBackgroundColor:v16];

    primaryTextColor = [configurationCopy primaryTextColor];
    if (primaryTextColor)
    {
      [borderedButtonConfiguration setBaseForegroundColor:primaryTextColor];
    }

    else
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [borderedButtonConfiguration setBaseForegroundColor:labelColor];
    }

    v20 = MEMORY[0x1E69DB970];
  }

  else
  {
    prominentButtonBackgroundColor = [configurationCopy prominentButtonBackgroundColor];
    if (prominentButtonBackgroundColor)
    {
      [borderedButtonConfiguration setBaseBackgroundColor:prominentButtonBackgroundColor];
    }

    else
    {
      labelColor2 = [MEMORY[0x1E69DC888] labelColor];
      [borderedButtonConfiguration setBaseBackgroundColor:labelColor2];
    }

    primaryTextColor = [configurationCopy prominentButtonTextColor];
    if (primaryTextColor)
    {
      [borderedButtonConfiguration setBaseForegroundColor:primaryTextColor];
    }

    else
    {
      backgroundColor = [configurationCopy backgroundColor];
      [borderedButtonConfiguration setBaseForegroundColor:backgroundColor];
    }

    v20 = MEMORY[0x1E69DB980];
  }

  v14 = *v20;
LABEL_15:
  v22 = objc_alloc(MEMORY[0x1E696AAB0]);
  title = [itemCopy title];
  v30 = *MEMORY[0x1E69DB648];
  v24 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] weight:v14];
  v31[0] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v26 = [v22 initWithString:title attributes:v25];
  [borderedButtonConfiguration setAttributedTitle:v26];

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [borderedButtonConfiguration setBaseBackgroundColor:clearColor];

    icon = [itemCopy icon];
    [borderedButtonConfiguration setImage:icon];

    [borderedButtonConfiguration setAttributedTitle:0];
  }

  return borderedButtonConfiguration;
}

- (void)setConfiguration:(id)configuration
{
  v33 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  objc_storeStrong(&self->_configuration, configuration);
  backgroundColor = [configurationCopy backgroundColor];
  [(UIView *)self->_backgroundView setBackgroundColor:backgroundColor];

  icon = [configurationCopy icon];
  [(UIImageView *)self->_iconView setImage:icon];

  icon2 = [configurationCopy icon];
  [(UIImageView *)self->_iconView setHidden:icon2 == 0];

  primaryTextColor = [configurationCopy primaryTextColor];
  if (primaryTextColor)
  {
    [(UIImageView *)self->_iconView setTintColor:primaryTextColor];
  }

  else
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)self->_iconView setTintColor:labelColor];
  }

  -[SFURLFieldOverlayView setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [configurationCopy userInterfaceStyle]);
  primaryTextColor2 = [configurationCopy primaryTextColor];
  if (primaryTextColor2)
  {
    p_textLabel = &self->_textLabel;
    [(UILabel *)self->_textLabel setTextColor:primaryTextColor2];
  }

  else
  {
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    p_textLabel = &self->_textLabel;
    [(UILabel *)self->_textLabel setTextColor:labelColor2];
  }

  -[UILabel setNumberOfLines:](*p_textLabel, "setNumberOfLines:", [configurationCopy numberOfLines]);
  [(SFURLFieldOverlayView *)self _updateText];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = self->_buttons;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v28 + 1) + 8 * i) removeFromSuperview];
      }

      v15 = [(NSArray *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__11;
  v26[4] = __Block_byref_object_dispose__11;
  v27 = 0;
  buttonItems = [configurationCopy buttonItems];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __42__SFURLFieldOverlayView_setConfiguration___block_invoke;
  v23[3] = &unk_1E721FEC0;
  v23[4] = self;
  v19 = configurationCopy;
  v24 = v19;
  v25 = v26;
  v20 = [buttonItems safari_mapObjectsUsingBlock:v23];
  buttons = self->_buttons;
  self->_buttons = v20;

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __42__SFURLFieldOverlayView_setConfiguration___block_invoke_2;
  v22[3] = &unk_1E721B360;
  v22[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v22];

  _Block_object_dispose(v26, 8);
}

id __42__SFURLFieldOverlayView_setConfiguration___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v3 _configurationForButtonItem:v5 inOverlayConfiguration:v4];
  v7 = MEMORY[0x1E69DC738];
  v8 = [v5 action];
  v9 = [v7 buttonWithConfiguration:v6 primaryAction:v8];

  [v9 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC70]];
  [v9 setEnabled:{objc_msgSend(v5, "theme") != 2}];
  v10 = [v5 accessibilityIdentifier];

  [v9 setAccessibilityIdentifier:v10];
  if (*(*(a1[6] + 8) + 40) || ![a1[5] placeFirstButtonInLeadingEdge])
  {
    [*(a1[4] + 464) addArrangedSubview:v9];
  }

  else
  {
    [*(a1[4] + 464) insertArrangedSubview:v9 atIndex:0];
  }

  v11 = [*(*(a1[6] + 8) + 40) widthAnchor];
  v12 = [v9 widthAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  [v13 setActive:1];

  objc_storeStrong((*(a1[6] + 8) + 40), v9);

  return v9;
}

- (void)_updateText
{
  text = [(SFURLFieldOverlayConfiguration *)self->_configuration text];
  [(UILabel *)self->_textLabel setText:text];

  [(UILabel *)self->_textLabel setAdjustsFontSizeToFitWidth:[(SFURLFieldOverlayConfiguration *)self->_configuration shouldTextShrinkToFit]];
  if ([(SFURLFieldOverlayConfiguration *)self->_configuration placeFirstButtonInLeadingEdge])
  {
    v4 = 1;
  }

  else
  {
    v4 = 4;
  }

  textLabel = self->_textLabel;

  [(UILabel *)textLabel setTextAlignment:v4];
}

- (void)_animateWithDelay:(double)delay isPresenting:(BOOL)presenting group:(id)group animations:(id)animations
{
  presentingCopy = presenting;
  groupCopy = group;
  buttons = self->_buttons;
  animationsCopy = animations;
  v13 = [(NSArray *)buttons count];
  if (!presentingCopy)
  {
    delay = (v13 - 1) * 0.1 + 0.25 - delay;
  }

  dispatch_group_enter(groupCopy);
  v14 = MEMORY[0x1E69DD250];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__SFURLFieldOverlayView__animateWithDelay_isPresenting_group_animations___block_invoke;
  v16[3] = &unk_1E721B510;
  v17 = groupCopy;
  v15 = groupCopy;
  [v14 sf_animate:1 usingDefaultMotionWithDelay:2 options:animationsCopy animations:v16 completion:delay];
}

- (void)dismissAndRemove
{
  if (self->_isShowing)
  {
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __41__SFURLFieldOverlayView_dismissAndRemove__block_invoke;
    v3[3] = &unk_1E721BF08;
    objc_copyWeak(&v4, &location);
    [(SFURLFieldOverlayView *)self _setIsShowing:0 completion:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __41__SFURLFieldOverlayView_dismissAndRemove__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[61] removeFromSuperview];
    [v2 removeFromSuperview];
    WeakRetained = v2;
  }
}

- (void)present
{
  if (!self->_isShowing)
  {
    [(SFURLFieldOverlayView *)self _setIsShowing:1 completion:0];
  }
}

- (void)_setIsShowing:(BOOL)showing completion:(id)completion
{
  showingCopy = showing;
  completionCopy = completion;
  self->_isShowing = showingCopy;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = MEMORY[0x1E69DD250];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke;
  v32[3] = &unk_1E721BFA8;
  v32[4] = self;
  v33 = showingCopy;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke_2;
  v30[3] = &unk_1E721B510;
  v9 = v7;
  v10 = v9;
  if (showingCopy)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 0.41;
  }

  v31 = v9;
  if (showingCopy)
  {
    v12 = 0.8;
  }

  else
  {
    v12 = 0.4;
  }

  if (showingCopy)
  {
    v13 = 0.08;
  }

  else
  {
    v13 = 0.0;
  }

  [v8 animateWithDuration:2 delay:v32 options:v30 animations:0.15 completion:v11];
  dispatch_group_enter(v10);
  v14 = MEMORY[0x1E69DD250];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke_3;
  v28[3] = &unk_1E721BFA8;
  v28[4] = self;
  v29 = showingCopy;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke_4;
  v26[3] = &unk_1E721B510;
  v15 = v10;
  v27 = v15;
  [v14 animateWithDuration:0 delay:v28 options:v26 animations:v12 completion:v13];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke_5;
  v24[3] = &unk_1E721BFA8;
  v24[4] = self;
  v25 = showingCopy;
  [(SFURLFieldOverlayView *)self _animateWithDelay:showingCopy isPresenting:v15 group:v24 animations:0.0];
  buttons = self->_buttons;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke_6;
  v21[3] = &unk_1E721FEE8;
  v23 = showingCopy;
  v21[4] = self;
  v22 = v15;
  v17 = v15;
  [(NSArray *)buttons enumerateObjectsUsingBlock:v21];
  ++self->_animationCount;
  [(UIView *)self->_clippingView setClipsToBounds:1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke_8;
  block[3] = &unk_1E721BA48;
  block[4] = self;
  v20 = completionCopy;
  v18 = completionCopy;
  dispatch_group_notify(v17, MEMORY[0x1E69E96A0], block);
}

uint64_t __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _layOutClippingView];
  LOBYTE(v2) = *(a1 + 40);
  v3 = v2;
  [*(*(a1 + 32) + 440) setAlpha:v2];
  v4 = *(*(a1 + 32) + 472);

  return [v4 setAlpha:v3];
}

void __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke_6(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = a3 * 0.1 + 0.25;
  v7 = *(a1 + 48);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke_7;
  v11[3] = &unk_1E721BFA8;
  v12 = v5;
  v13 = v7;
  v10 = v5;
  [v9 _animateWithDelay:v7 isPresenting:v8 group:v11 animations:v6];
}

uint64_t __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke_7(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  [*(a1 + 32) setAlpha:*&a2];
  v3 = 0.7;
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  CGAffineTransformMakeScale(&v7, v3, v3);
  v4 = *(a1 + 32);
  v6 = v7;
  return [v4 setTransform:&v6];
}

uint64_t __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke_8(uint64_t a1)
{
  [*(*(a1 + 32) + 432) setClipsToBounds:--*(*(a1 + 32) + 408) > 0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

@end