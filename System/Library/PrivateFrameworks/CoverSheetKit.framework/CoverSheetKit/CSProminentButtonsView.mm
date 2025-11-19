@interface CSProminentButtonsView
+ (UIEdgeInsets)_buttonOutsets;
+ (double)_buttonDiameter;
+ (double)_buttonInsetX;
+ (double)_buttonInsetY;
+ (double)_leadingOutset;
+ (double)minimumFrameHeight;
- (BOOL)_glassAppearanceEnabled;
- (CGRect)_frameWithMinX:(double)a3 outset:(BOOL)a4;
- (CGRect)_leadingFrameWithOutsets:(BOOL)a3;
- (CGRect)_trailingFrameWithOutsets:(BOOL)a3;
- (CGSize)_buttonSizeWithOutsets:(BOOL)a3;
- (CSProminentButtonsView)initWithLeadingButton:(id)a3 trailingButton:(id)a4;
- (double)_buttonMinYWithOutset:(BOOL)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_addContraintsForRemoveButtonsIfNecessary;
- (void)_glassAppearanceEnabled;
- (void)_layoutButtons;
- (void)_setConstraintsForRemoveButton:(id)a3 withReticle:(id)a4;
- (void)_updateAppearance;
- (void)layoutSubviews;
- (void)setGlassLuminanceValue:(double)a3;
- (void)setLeadingButton:(id)a3;
- (void)setLeadingRemoveButton:(id)a3;
- (void)setLeadingReticle:(id)a3;
- (void)setTrailingButton:(id)a3;
- (void)setTrailingRemoveButton:(id)a3;
- (void)setTrailingReticle:(id)a3;
- (void)setUsesSensitiveUIAppearance:(BOOL)a3;
@end

@implementation CSProminentButtonsView

- (CSProminentButtonsView)initWithLeadingButton:(id)a3 trailingButton:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CSProminentButtonsView;
  v8 = [(CSProminentButtonsView *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_glassLuminanceValue = 0.0;
    [(CSProminentButtonsView *)v8 setLeadingButton:v6];
    [(CSProminentButtonsView *)v9 setTrailingButton:v7];
    [(CSProminentButtonsView *)v9 _updateAppearance];
  }

  return v9;
}

+ (double)minimumFrameHeight
{
  [a1 _buttonInsetY];
  v4 = v3;
  [a1 _buttonDiameter];
  v6 = v4 + v5;
  [a1 _buttonOutsets];
  return v6 + v7;
}

- (void)_updateAppearance
{
  v3 = [(CSProminentButtonsView *)self _glassAppearanceEnabled];
  v4 = v3;
  if (v4 != self->_isUsingGlassAppearance)
  {
    v5 = v3;
    self->_isUsingGlassAppearance = v3;
    v6 = [(CSProminentButtonsView *)self leadingButton];
    [v6 setUsesGlassMaterial:v4];

    v7 = [(CSProminentButtonsView *)self trailingButton];
    [v7 setUsesGlassMaterial:v4];

    v8 = [(CSProminentButtonsView *)self leadingButton];
    [(CSProminentButtonsView *)self glassLuminanceValue];
    [v8 setGlassLuminanceValue:?];

    v9 = [(CSProminentButtonsView *)self trailingButton];
    [(CSProminentButtonsView *)self glassLuminanceValue];
    [v9 setGlassLuminanceValue:?];

    if (v5)
    {

      [(UIView *)self cs_setLockPickGlassGroupBackground];
    }

    else
    {

      [(UIView *)self cs_clearLockPickGlassBackground];
    }
  }
}

- (void)setUsesSensitiveUIAppearance:(BOOL)a3
{
  if (self->_usesSensitiveUIAppearance != a3)
  {
    self->_usesSensitiveUIAppearance = a3;
    [(CSProminentButtonsView *)self _updateAppearance];
  }
}

- (void)setGlassLuminanceValue:(double)a3
{
  if (self->_glassLuminanceValue != a3)
  {
    self->_glassLuminanceValue = a3;
    v4 = [(CSProminentButtonsView *)self leadingButton];
    [v4 setGlassLuminanceValue:self->_glassLuminanceValue];

    v5 = [(CSProminentButtonsView *)self trailingButton];
    [v5 setGlassLuminanceValue:self->_glassLuminanceValue];
  }
}

- (BOOL)_glassAppearanceEnabled
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 BOOLForKey:@"SBDisallowGlassButtons"];

  v5 = CSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(CSProminentButtonsView *)v4 _glassAppearanceEnabled];
  }

  if (_UISolariumEnabled())
  {
    v6 = (self->_usesSensitiveUIAppearance | v4) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = CSProminentButtonsView;
  v5 = [(CSProminentButtonsView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSProminentButtonsView;
  [(CSProminentButtonsView *)&v3 layoutSubviews];
  [(CSProminentButtonsView *)self _layoutButtons];
}

- (void)setLeadingButton:(id)a3
{
  v5 = a3;
  leadingButton = self->_leadingButton;
  v8 = v5;
  if (leadingButton != v5)
  {
    [(CSProminentButtonControl *)leadingButton removeFromSuperview];
    [(CSProminentButtonControl *)self->_leadingButton setUsesGlassMaterial:0];
    objc_storeStrong(&self->_leadingButton, a3);
    if (self->_leadingButton)
    {
      if ([(CSProminentButtonsView *)self _glassAppearanceEnabled])
      {
        [(CSProminentButtonControl *)self->_leadingButton setUsesGlassMaterial:1];
        v7 = self->_leadingButton;
        [(CSProminentButtonsView *)self glassLuminanceValue];
        [(CSProminentButtonControl *)v7 setGlassLuminanceValue:?];
      }

      [(CSProminentButtonsView *)self addSubview:self->_leadingButton];
    }
  }
}

- (void)setTrailingButton:(id)a3
{
  v5 = a3;
  trailingButton = self->_trailingButton;
  v8 = v5;
  if (trailingButton != v5)
  {
    [(CSProminentButtonControl *)trailingButton removeFromSuperview];
    [(CSProminentButtonControl *)self->_trailingButton setUsesGlassMaterial:0];
    objc_storeStrong(&self->_trailingButton, a3);
    if (self->_trailingButton)
    {
      if ([(CSProminentButtonsView *)self _glassAppearanceEnabled])
      {
        [(CSProminentButtonControl *)self->_trailingButton setUsesGlassMaterial:1];
        v7 = self->_trailingButton;
        [(CSProminentButtonsView *)self glassLuminanceValue];
        [(CSProminentButtonControl *)v7 setGlassLuminanceValue:?];
      }

      [(CSProminentButtonsView *)self addSubview:self->_trailingButton];
    }
  }
}

- (void)setLeadingReticle:(id)a3
{
  v5 = a3;
  if (self->_trailingReticle != v5)
  {
    [(CSProminentButtonReticlePresenter *)self->_leadingReticle removeFromSuperview];
    objc_storeStrong(&self->_leadingReticle, a3);
    if (self->_leadingReticle)
    {
      [(CSProminentButtonsView *)self addSubview:?];
      [(CSProminentButtonsView *)self sendSubviewToBack:self->_leadingReticle];
      [(CSProminentButtonsView *)self setNeedsLayout];
      [(CSProminentButtonsView *)self _addContraintsForRemoveButtonsIfNecessary];
    }
  }
}

- (void)setTrailingReticle:(id)a3
{
  v5 = a3;
  trailingReticle = self->_trailingReticle;
  v7 = v5;
  if (trailingReticle != v5)
  {
    [(CSProminentButtonReticlePresenter *)trailingReticle removeFromSuperview];
    objc_storeStrong(&self->_trailingReticle, a3);
    if (self->_trailingReticle)
    {
      [(CSProminentButtonsView *)self addSubview:?];
      [(CSProminentButtonsView *)self sendSubviewToBack:self->_trailingReticle];
      [(CSProminentButtonsView *)self setNeedsLayout];
      [(CSProminentButtonsView *)self _addContraintsForRemoveButtonsIfNecessary];
    }
  }
}

- (void)setLeadingRemoveButton:(id)a3
{
  v5 = a3;
  leadingRemoveButton = self->_leadingRemoveButton;
  v7 = v5;
  if (leadingRemoveButton != v5)
  {
    [(UIButton *)leadingRemoveButton removeFromSuperview];
    objc_storeStrong(&self->_leadingRemoveButton, a3);
    [(UIButton *)self->_leadingRemoveButton setTranslatesAutoresizingMaskIntoConstraints:0];
    if (self->_leadingRemoveButton)
    {
      [(CSProminentButtonsView *)self addSubview:?];
      [(CSProminentButtonsView *)self _addContraintsForRemoveButtonsIfNecessary];
    }
  }
}

- (void)setTrailingRemoveButton:(id)a3
{
  v5 = a3;
  trailingRemoveButton = self->_trailingRemoveButton;
  v7 = v5;
  if (trailingRemoveButton != v5)
  {
    [(UIButton *)trailingRemoveButton removeFromSuperview];
    objc_storeStrong(&self->_trailingRemoveButton, a3);
    [(UIButton *)self->_trailingRemoveButton setTranslatesAutoresizingMaskIntoConstraints:0];
    if (self->_trailingRemoveButton)
    {
      [(CSProminentButtonsView *)self addSubview:?];
      [(CSProminentButtonsView *)self _addContraintsForRemoveButtonsIfNecessary];
    }
  }
}

- (void)_layoutButtons
{
  [objc_opt_class() _buttonOutsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CSProminentButtonControl *)self->_leadingButton setEdgeInsets:?];
  [(CSProminentButtonControl *)self->_trailingButton setEdgeInsets:v4, v6, v8, v10];
  [(CSProminentButtonsView *)self _leadingFrameWithOutsets:1];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(CSProminentButtonsView *)self _trailingFrameWithOutsets:1];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  leadingButton = self->_leadingButton;
  v28 = MEMORY[0x1E69DDA98];
  v29 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  if (v29 == 1)
  {
    v30 = v26;
  }

  else
  {
    v30 = v18;
  }

  if (v29 == 1)
  {
    v31 = v24;
  }

  else
  {
    v31 = v16;
  }

  if (v29 == 1)
  {
    v32 = v22;
  }

  else
  {
    v32 = v14;
  }

  if (v29 == 1)
  {
    v33 = v20;
  }

  else
  {
    v33 = v12;
  }

  [(CSProminentButtonControl *)leadingButton setFrame:v33, v32, v31, v30];
  trailingButton = self->_trailingButton;
  v35 = [*v28 userInterfaceLayoutDirection];
  if (v35 == 1)
  {
    v36 = v18;
  }

  else
  {
    v36 = v26;
  }

  if (v35 == 1)
  {
    v37 = v16;
  }

  else
  {
    v37 = v24;
  }

  if (v35 == 1)
  {
    v38 = v14;
  }

  else
  {
    v38 = v22;
  }

  v54 = v12;
  if (v35 == 1)
  {
    v39 = v12;
  }

  else
  {
    v39 = v20;
  }

  [(CSProminentButtonControl *)trailingButton setFrame:v39, v38, v37, v36];
  [objc_opt_class() _reticleOutset];
  v41 = v40;
  leadingReticle = self->_leadingReticle;
  if (leadingReticle)
  {
    v43 = [*v28 userInterfaceLayoutDirection];
    if (v43 == 1)
    {
      v44 = v26;
    }

    else
    {
      v44 = v18;
    }

    if (v43 == 1)
    {
      v45 = v24;
    }

    else
    {
      v45 = v16;
    }

    if (v43 == 1)
    {
      v46 = v22;
    }

    else
    {
      v46 = v14;
    }

    v47 = v54;
    if (v43 == 1)
    {
      v47 = v20;
    }

    v56 = CGRectInset(*(&v44 - 3), v41, v41);
    [(CSProminentButtonReticlePresenter *)leadingReticle setFrame:v56.origin.x, v56.origin.y, v56.size.width, v56.size.height];
  }

  trailingReticle = self->_trailingReticle;
  if (trailingReticle)
  {
    v49 = [*v28 userInterfaceLayoutDirection];
    if (v49 == 1)
    {
      v50 = v18;
    }

    else
    {
      v50 = v26;
    }

    if (v49 == 1)
    {
      v51 = v16;
    }

    else
    {
      v51 = v24;
    }

    if (v49 == 1)
    {
      v52 = v14;
    }

    else
    {
      v52 = v22;
    }

    v53 = v54;
    if (v49 != 1)
    {
      v53 = v20;
    }

    v57 = CGRectInset(*(&v50 - 3), v41, v41);

    [(CSProminentButtonReticlePresenter *)trailingReticle setFrame:v57.origin.x, v57.origin.y, v57.size.width, v57.size.height];
  }
}

- (CGRect)_leadingFrameWithOutsets:(BOOL)a3
{
  v3 = a3;
  v5 = 0.0;
  if (a3)
  {
    [objc_opt_class() _leadingOutset];
    v5 = v6;
  }

  [objc_opt_class() _buttonInsetX];
  v8 = v7 - v5;

  [(CSProminentButtonsView *)self _frameWithMinX:v3 outset:v8];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)_trailingFrameWithOutsets:(BOOL)a3
{
  v3 = a3;
  v5 = 0.0;
  if (a3)
  {
    [objc_opt_class() _leadingOutset];
    v5 = v6;
  }

  [(CSProminentButtonsView *)self bounds];
  Width = CGRectGetWidth(v17);
  [objc_opt_class() _buttonInsetX];
  v9 = Width - v8;
  [objc_opt_class() _buttonDiameter];
  v11 = v9 - (v5 + v10);

  [(CSProminentButtonsView *)self _frameWithMinX:v3 outset:v11];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_frameWithMinX:(double)a3 outset:(BOOL)a4
{
  v4 = a4;
  [(CSProminentButtonsView *)self _buttonMinYWithOutset:?];
  v8 = v7;
  [(CSProminentButtonsView *)self _buttonSizeWithOutsets:v4];
  v10 = v9;
  v12 = v11;
  v13 = a3;
  v14 = v8;
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (double)_buttonMinYWithOutset:(BOOL)a3
{
  v4 = 0.0;
  if (a3)
  {
    [objc_opt_class() _buttonOutsets];
    v4 = v5;
  }

  [(CSProminentButtonsView *)self bounds];
  Height = CGRectGetHeight(v11);
  [objc_opt_class() _buttonInsetY];
  v8 = Height - v7;
  [objc_opt_class() _buttonDiameter];
  return v8 - (v4 + v9);
}

- (CGSize)_buttonSizeWithOutsets:(BOOL)a3
{
  v3 = a3;
  [objc_opt_class() _buttonDiameter];
  v5 = v4;
  [objc_opt_class() _buttonOutsets];
  v10 = v8 + v9;
  if (!v3)
  {
    v10 = 0.0;
  }

  v11 = v5 + v10;
  v12 = v6 + v7;
  if (!v3)
  {
    v12 = 0.0;
  }

  v13 = v5 + v12;
  v14 = v11;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)_addContraintsForRemoveButtonsIfNecessary
{
  if (self->_leadingRemoveButton && self->_leadingReticle)
  {
    [CSProminentButtonsView _setConstraintsForRemoveButton:"_setConstraintsForRemoveButton:withReticle:" withReticle:?];
  }

  if (self->_trailingRemoveButton && self->_trailingReticle)
  {

    [CSProminentButtonsView _setConstraintsForRemoveButton:"_setConstraintsForRemoveButton:withReticle:" withReticle:?];
  }
}

- (void)_setConstraintsForRemoveButton:(id)a3 withReticle:(id)a4
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ACD8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 topAnchor];
  v9 = [v6 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-3.0];
  v15[0] = v10;
  v11 = [v7 leadingAnchor];

  v12 = [v6 leadingAnchor];

  v13 = [v11 constraintEqualToAnchor:v12 constant:-3.0];
  v15[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v5 activateConstraints:v14];
}

+ (UIEdgeInsets)_buttonOutsets
{
  v2 = 18.0;
  v3 = 18.0;
  v4 = 18.0;
  v5 = 18.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (double)_buttonDiameter
{
  v2 = +[CSDeviceDetermination effectiveCategory];
  if (v2 - 6 > 0x19)
  {
    return 58.0;
  }

  else
  {
    return dbl_1A2DA3900[v2 - 6];
  }
}

+ (double)_buttonInsetX
{
  v2 = +[CSDeviceDetermination effectiveCategory];
  if (v2 > 0x1F)
  {
    return 46.0;
  }

  else
  {
    return dbl_1A2DA39D0[v2];
  }
}

+ (double)_buttonInsetY
{
  v2 = +[CSDeviceDetermination effectiveCategory];
  if (v2 > 0x1F)
  {
    return 50.0;
  }

  else
  {
    return dbl_1A2DA3AD0[v2];
  }
}

+ (double)_leadingOutset
{
  [objc_opt_class() _buttonOutsets];
  v3 = v2;
  v5 = v4;
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (void)_glassAppearanceEnabled
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_1A2D63000, a2, OS_LOG_TYPE_DEBUG, "CSProminentButtonView disallowGlassButtons: %{BOOL}u", v2, 8u);
}

@end