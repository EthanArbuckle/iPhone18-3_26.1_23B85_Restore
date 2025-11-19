@interface SFURLFieldOverlayView
- (SFURLFieldOverlayView)initWithFrame:(CGRect)a3 configuration:(id)a4;
- (double)_buttonCornerRadius;
- (id)_configurationForButtonItem:(id)a3 inOverlayConfiguration:(id)a4;
- (void)_animateWithDelay:(double)a3 isPresenting:(BOOL)a4 group:(id)a5 animations:(id)a6;
- (void)_layOutClippingView;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setIsShowing:(BOOL)a3 completion:(id)a4;
- (void)_updateText;
- (void)dismissAndRemove;
- (void)layoutSubviews;
- (void)present;
- (void)setConfiguration:(id)a3;
@end

@implementation SFURLFieldOverlayView

- (SFURLFieldOverlayView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v53[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v52.receiver = self;
  v52.super_class = SFURLFieldOverlayView;
  v10 = [(SFURLFieldOverlayView *)&v52 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = *MEMORY[0x1E69DDD80];
    v12 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SFURLFieldOverlayView *)v10 bounds];
    v13 = [v12 initWithFrame:?];
    backgroundView = v10->_backgroundView;
    v10->_backgroundView = v13;

    [(UIView *)v10->_backgroundView setUserInteractionEnabled:0];
    buttons = v10->_buttons;
    v10->_buttons = MEMORY[0x1E695E0F0];

    v16 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SFURLFieldOverlayView *)v10 bounds];
    v17 = [v16 initWithFrame:?];
    clippingView = v10->_clippingView;
    v10->_clippingView = v17;

    v19 = objc_alloc(MEMORY[0x1E69DD250]);
    [(SFURLFieldOverlayView *)v10 bounds];
    v20 = [v19 initWithFrame:?];
    eraserView = v10->_eraserView;
    v10->_eraserView = v20;

    v22 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v10->_eraserView setBackgroundColor:v22];

    v23 = *MEMORY[0x1E69798E8];
    v24 = [(UIView *)v10->_eraserView layer];
    [v24 setCompositingFilter:v23];

    v25 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconView = v10->_iconView;
    v10->_iconView = v25;

    [(UIImageView *)v10->_iconView setContentMode:4];
    [(UIImageView *)v10->_iconView setMaximumContentSizeCategory:*MEMORY[0x1E69DDC70]];
    v27 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v11];
    [(UIImageView *)v10->_iconView setPreferredSymbolConfiguration:v27];

    v28 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    textLabel = v10->_textLabel;
    v10->_textLabel = v28;

    [(UILabel *)v10->_textLabel setAdjustsFontForContentSizeCategory:1];
    v30 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:v11 weight:*MEMORY[0x1E69DB970]];
    [(UILabel *)v10->_textLabel setFont:v30];

    v31 = [(UILabel *)v10->_textLabel font];
    [v31 pointSize];
    [(UILabel *)v10->_textLabel setMinimumScaleFactor:11.0 / v32];

    LODWORD(v33) = 1132068864;
    [(UILabel *)v10->_textLabel setContentCompressionResistancePriority:0 forAxis:v33];
    LODWORD(v34) = 1132003328;
    [(UILabel *)v10->_textLabel setContentHuggingPriority:0 forAxis:v34];
    v35 = objc_alloc(MEMORY[0x1E69DCF90]);
    [(SFURLFieldOverlayView *)v10 bounds];
    v36 = [v35 initWithFrame:?];
    stackView = v10->_stackView;
    v10->_stackView = v36;

    [(UIStackView *)v10->_stackView setSpacing:5.0];
    [(SFURLFieldOverlayView *)v10 addSubview:v10->_clippingView];
    [(UIView *)v10->_clippingView addSubview:v10->_backgroundView];
    [(UIView *)v10->_clippingView addSubview:v10->_stackView];
    [(UIStackView *)v10->_stackView addArrangedSubview:v10->_iconView];
    [(UIStackView *)v10->_stackView addArrangedSubview:v10->_textLabel];
    [(UIStackView *)v10->_stackView setCustomSpacing:v10->_textLabel afterView:8.0];
    v38 = MEMORY[0x1E69DD250];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __53__SFURLFieldOverlayView_initWithFrame_configuration___block_invoke;
    v50[3] = &unk_1E721B360;
    v39 = v10;
    v51 = v39;
    [v38 performWithoutAnimation:v50];
    [(SFURLFieldOverlayView *)v39 setConfiguration:v9];
    v40 = MEMORY[0x1E696ACD8];
    v41 = [(UIImageView *)v10->_iconView widthAnchor];
    v42 = [v41 constraintGreaterThanOrEqualToConstant:26.0];
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

  return v10;
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

- (void)_setContinuousCornerRadius:(double)a3
{
  v22 = *MEMORY[0x1E69E9840];
  [(SFURLFieldOverlayView *)self _continuousCornerRadius];
  if (v5 != a3)
  {
    v20.receiver = self;
    v20.super_class = SFURLFieldOverlayView;
    [(SFURLFieldOverlayView *)&v20 _setContinuousCornerRadius:a3];
    [(UIView *)self->_clippingView _setContinuousCornerRadius:a3];
    [(UIView *)self->_backgroundView _setContinuousCornerRadius:a3];
    [(UIView *)self->_eraserView _setContinuousCornerRadius:a3];
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
          v14 = [v13 configuration];
          v15 = [v14 background];
          [v15 setCornerRadius:v7];

          [v13 setConfiguration:v14];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

- (id)_configurationForButtonItem:(id)a3 inOverlayConfiguration:(id)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E69DC740] borderedButtonConfiguration];
  [(SFURLFieldOverlayView *)self _buttonCornerRadius];
  v10 = v9;
  v11 = [v8 background];
  [v11 setCornerRadius:v10];

  [v8 setCornerStyle:-1];
  [v8 setImagePadding:4.0];
  v12 = [v6 theme];
  if ((v12 - 1) >= 2)
  {
    v14 = 0.0;
    if (v12)
    {
      goto LABEL_15;
    }

    v15 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    v16 = [v15 colorWithAlphaComponent:0.1];
    [v8 setBaseBackgroundColor:v16];

    v17 = [v7 primaryTextColor];
    if (v17)
    {
      [v8 setBaseForegroundColor:v17];
    }

    else
    {
      v21 = [MEMORY[0x1E69DC888] labelColor];
      [v8 setBaseForegroundColor:v21];
    }

    v20 = MEMORY[0x1E69DB970];
  }

  else
  {
    v13 = [v7 prominentButtonBackgroundColor];
    if (v13)
    {
      [v8 setBaseBackgroundColor:v13];
    }

    else
    {
      v18 = [MEMORY[0x1E69DC888] labelColor];
      [v8 setBaseBackgroundColor:v18];
    }

    v17 = [v7 prominentButtonTextColor];
    if (v17)
    {
      [v8 setBaseForegroundColor:v17];
    }

    else
    {
      v19 = [v7 backgroundColor];
      [v8 setBaseForegroundColor:v19];
    }

    v20 = MEMORY[0x1E69DB980];
  }

  v14 = *v20;
LABEL_15:
  v22 = objc_alloc(MEMORY[0x1E696AAB0]);
  v23 = [v6 title];
  v30 = *MEMORY[0x1E69DB648];
  v24 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] weight:v14];
  v31[0] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v26 = [v22 initWithString:v23 attributes:v25];
  [v8 setAttributedTitle:v26];

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v27 = [MEMORY[0x1E69DC888] clearColor];
    [v8 setBaseBackgroundColor:v27];

    v28 = [v6 icon];
    [v8 setImage:v28];

    [v8 setAttributedTitle:0];
  }

  return v8;
}

- (void)setConfiguration:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_configuration, a3);
  v6 = [v5 backgroundColor];
  [(UIView *)self->_backgroundView setBackgroundColor:v6];

  v7 = [v5 icon];
  [(UIImageView *)self->_iconView setImage:v7];

  v8 = [v5 icon];
  [(UIImageView *)self->_iconView setHidden:v8 == 0];

  v9 = [v5 primaryTextColor];
  if (v9)
  {
    [(UIImageView *)self->_iconView setTintColor:v9];
  }

  else
  {
    v10 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)self->_iconView setTintColor:v10];
  }

  -[SFURLFieldOverlayView setOverrideUserInterfaceStyle:](self, "setOverrideUserInterfaceStyle:", [v5 userInterfaceStyle]);
  v11 = [v5 primaryTextColor];
  if (v11)
  {
    p_textLabel = &self->_textLabel;
    [(UILabel *)self->_textLabel setTextColor:v11];
  }

  else
  {
    v13 = [MEMORY[0x1E69DC888] labelColor];
    p_textLabel = &self->_textLabel;
    [(UILabel *)self->_textLabel setTextColor:v13];
  }

  -[UILabel setNumberOfLines:](*p_textLabel, "setNumberOfLines:", [v5 numberOfLines]);
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
  v18 = [v5 buttonItems];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __42__SFURLFieldOverlayView_setConfiguration___block_invoke;
  v23[3] = &unk_1E721FEC0;
  v23[4] = self;
  v19 = v5;
  v24 = v19;
  v25 = v26;
  v20 = [v18 safari_mapObjectsUsingBlock:v23];
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
  v3 = [(SFURLFieldOverlayConfiguration *)self->_configuration text];
  [(UILabel *)self->_textLabel setText:v3];

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

- (void)_animateWithDelay:(double)a3 isPresenting:(BOOL)a4 group:(id)a5 animations:(id)a6
{
  v7 = a4;
  v10 = a5;
  buttons = self->_buttons;
  v12 = a6;
  v13 = [(NSArray *)buttons count];
  if (!v7)
  {
    a3 = (v13 - 1) * 0.1 + 0.25 - a3;
  }

  dispatch_group_enter(v10);
  v14 = MEMORY[0x1E69DD250];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__SFURLFieldOverlayView__animateWithDelay_isPresenting_group_animations___block_invoke;
  v16[3] = &unk_1E721B510;
  v17 = v10;
  v15 = v10;
  [v14 sf_animate:1 usingDefaultMotionWithDelay:2 options:v12 animations:v16 completion:a3];
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

- (void)_setIsShowing:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  self->_isShowing = v4;
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  v8 = MEMORY[0x1E69DD250];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke;
  v32[3] = &unk_1E721BFA8;
  v32[4] = self;
  v33 = v4;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke_2;
  v30[3] = &unk_1E721B510;
  v9 = v7;
  v10 = v9;
  if (v4)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 0.41;
  }

  v31 = v9;
  if (v4)
  {
    v12 = 0.8;
  }

  else
  {
    v12 = 0.4;
  }

  if (v4)
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
  v29 = v4;
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
  v25 = v4;
  [(SFURLFieldOverlayView *)self _animateWithDelay:v4 isPresenting:v15 group:v24 animations:0.0];
  buttons = self->_buttons;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __50__SFURLFieldOverlayView__setIsShowing_completion___block_invoke_6;
  v21[3] = &unk_1E721FEE8;
  v23 = v4;
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
  v20 = v6;
  v18 = v6;
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