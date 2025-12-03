@interface CSProminentButtonsView
+ (UIEdgeInsets)_buttonOutsets;
+ (double)_buttonDiameter;
+ (double)_buttonInsetX;
+ (double)_buttonInsetY;
+ (double)_leadingOutset;
+ (double)minimumFrameHeight;
- (BOOL)_glassAppearanceEnabled;
- (CGRect)_frameWithMinX:(double)x outset:(BOOL)outset;
- (CGRect)_leadingFrameWithOutsets:(BOOL)outsets;
- (CGRect)_trailingFrameWithOutsets:(BOOL)outsets;
- (CGSize)_buttonSizeWithOutsets:(BOOL)outsets;
- (CSProminentButtonsView)initWithLeadingButton:(id)button trailingButton:(id)trailingButton;
- (double)_buttonMinYWithOutset:(BOOL)outset;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_addContraintsForRemoveButtonsIfNecessary;
- (void)_glassAppearanceEnabled;
- (void)_layoutButtons;
- (void)_setConstraintsForRemoveButton:(id)button withReticle:(id)reticle;
- (void)_updateAppearance;
- (void)layoutSubviews;
- (void)setGlassLuminanceValue:(double)value;
- (void)setLeadingButton:(id)button;
- (void)setLeadingRemoveButton:(id)button;
- (void)setLeadingReticle:(id)reticle;
- (void)setTrailingButton:(id)button;
- (void)setTrailingRemoveButton:(id)button;
- (void)setTrailingReticle:(id)reticle;
- (void)setUsesSensitiveUIAppearance:(BOOL)appearance;
@end

@implementation CSProminentButtonsView

- (CSProminentButtonsView)initWithLeadingButton:(id)button trailingButton:(id)trailingButton
{
  buttonCopy = button;
  trailingButtonCopy = trailingButton;
  v11.receiver = self;
  v11.super_class = CSProminentButtonsView;
  v8 = [(CSProminentButtonsView *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_glassLuminanceValue = 0.0;
    [(CSProminentButtonsView *)v8 setLeadingButton:buttonCopy];
    [(CSProminentButtonsView *)v9 setTrailingButton:trailingButtonCopy];
    [(CSProminentButtonsView *)v9 _updateAppearance];
  }

  return v9;
}

+ (double)minimumFrameHeight
{
  [self _buttonInsetY];
  v4 = v3;
  [self _buttonDiameter];
  v6 = v4 + v5;
  [self _buttonOutsets];
  return v6 + v7;
}

- (void)_updateAppearance
{
  _glassAppearanceEnabled = [(CSProminentButtonsView *)self _glassAppearanceEnabled];
  v4 = _glassAppearanceEnabled;
  if (v4 != self->_isUsingGlassAppearance)
  {
    v5 = _glassAppearanceEnabled;
    self->_isUsingGlassAppearance = _glassAppearanceEnabled;
    leadingButton = [(CSProminentButtonsView *)self leadingButton];
    [leadingButton setUsesGlassMaterial:v4];

    trailingButton = [(CSProminentButtonsView *)self trailingButton];
    [trailingButton setUsesGlassMaterial:v4];

    leadingButton2 = [(CSProminentButtonsView *)self leadingButton];
    [(CSProminentButtonsView *)self glassLuminanceValue];
    [leadingButton2 setGlassLuminanceValue:?];

    trailingButton2 = [(CSProminentButtonsView *)self trailingButton];
    [(CSProminentButtonsView *)self glassLuminanceValue];
    [trailingButton2 setGlassLuminanceValue:?];

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

- (void)setUsesSensitiveUIAppearance:(BOOL)appearance
{
  if (self->_usesSensitiveUIAppearance != appearance)
  {
    self->_usesSensitiveUIAppearance = appearance;
    [(CSProminentButtonsView *)self _updateAppearance];
  }
}

- (void)setGlassLuminanceValue:(double)value
{
  if (self->_glassLuminanceValue != value)
  {
    self->_glassLuminanceValue = value;
    leadingButton = [(CSProminentButtonsView *)self leadingButton];
    [leadingButton setGlassLuminanceValue:self->_glassLuminanceValue];

    trailingButton = [(CSProminentButtonsView *)self trailingButton];
    [trailingButton setGlassLuminanceValue:self->_glassLuminanceValue];
  }
}

- (BOOL)_glassAppearanceEnabled
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:@"SBDisallowGlassButtons"];

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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = CSProminentButtonsView;
  v5 = [(CSProminentButtonsView *)&v9 hitTest:event withEvent:test.x, test.y];
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

- (void)setLeadingButton:(id)button
{
  buttonCopy = button;
  leadingButton = self->_leadingButton;
  v8 = buttonCopy;
  if (leadingButton != buttonCopy)
  {
    [(CSProminentButtonControl *)leadingButton removeFromSuperview];
    [(CSProminentButtonControl *)self->_leadingButton setUsesGlassMaterial:0];
    objc_storeStrong(&self->_leadingButton, button);
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

- (void)setTrailingButton:(id)button
{
  buttonCopy = button;
  trailingButton = self->_trailingButton;
  v8 = buttonCopy;
  if (trailingButton != buttonCopy)
  {
    [(CSProminentButtonControl *)trailingButton removeFromSuperview];
    [(CSProminentButtonControl *)self->_trailingButton setUsesGlassMaterial:0];
    objc_storeStrong(&self->_trailingButton, button);
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

- (void)setLeadingReticle:(id)reticle
{
  reticleCopy = reticle;
  if (self->_trailingReticle != reticleCopy)
  {
    [(CSProminentButtonReticlePresenter *)self->_leadingReticle removeFromSuperview];
    objc_storeStrong(&self->_leadingReticle, reticle);
    if (self->_leadingReticle)
    {
      [(CSProminentButtonsView *)self addSubview:?];
      [(CSProminentButtonsView *)self sendSubviewToBack:self->_leadingReticle];
      [(CSProminentButtonsView *)self setNeedsLayout];
      [(CSProminentButtonsView *)self _addContraintsForRemoveButtonsIfNecessary];
    }
  }
}

- (void)setTrailingReticle:(id)reticle
{
  reticleCopy = reticle;
  trailingReticle = self->_trailingReticle;
  v7 = reticleCopy;
  if (trailingReticle != reticleCopy)
  {
    [(CSProminentButtonReticlePresenter *)trailingReticle removeFromSuperview];
    objc_storeStrong(&self->_trailingReticle, reticle);
    if (self->_trailingReticle)
    {
      [(CSProminentButtonsView *)self addSubview:?];
      [(CSProminentButtonsView *)self sendSubviewToBack:self->_trailingReticle];
      [(CSProminentButtonsView *)self setNeedsLayout];
      [(CSProminentButtonsView *)self _addContraintsForRemoveButtonsIfNecessary];
    }
  }
}

- (void)setLeadingRemoveButton:(id)button
{
  buttonCopy = button;
  leadingRemoveButton = self->_leadingRemoveButton;
  v7 = buttonCopy;
  if (leadingRemoveButton != buttonCopy)
  {
    [(UIButton *)leadingRemoveButton removeFromSuperview];
    objc_storeStrong(&self->_leadingRemoveButton, button);
    [(UIButton *)self->_leadingRemoveButton setTranslatesAutoresizingMaskIntoConstraints:0];
    if (self->_leadingRemoveButton)
    {
      [(CSProminentButtonsView *)self addSubview:?];
      [(CSProminentButtonsView *)self _addContraintsForRemoveButtonsIfNecessary];
    }
  }
}

- (void)setTrailingRemoveButton:(id)button
{
  buttonCopy = button;
  trailingRemoveButton = self->_trailingRemoveButton;
  v7 = buttonCopy;
  if (trailingRemoveButton != buttonCopy)
  {
    [(UIButton *)trailingRemoveButton removeFromSuperview];
    objc_storeStrong(&self->_trailingRemoveButton, button);
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
  userInterfaceLayoutDirection = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  if (userInterfaceLayoutDirection == 1)
  {
    v30 = v26;
  }

  else
  {
    v30 = v18;
  }

  if (userInterfaceLayoutDirection == 1)
  {
    v31 = v24;
  }

  else
  {
    v31 = v16;
  }

  if (userInterfaceLayoutDirection == 1)
  {
    v32 = v22;
  }

  else
  {
    v32 = v14;
  }

  if (userInterfaceLayoutDirection == 1)
  {
    v33 = v20;
  }

  else
  {
    v33 = v12;
  }

  [(CSProminentButtonControl *)leadingButton setFrame:v33, v32, v31, v30];
  trailingButton = self->_trailingButton;
  userInterfaceLayoutDirection2 = [*v28 userInterfaceLayoutDirection];
  if (userInterfaceLayoutDirection2 == 1)
  {
    v36 = v18;
  }

  else
  {
    v36 = v26;
  }

  if (userInterfaceLayoutDirection2 == 1)
  {
    v37 = v16;
  }

  else
  {
    v37 = v24;
  }

  if (userInterfaceLayoutDirection2 == 1)
  {
    v38 = v14;
  }

  else
  {
    v38 = v22;
  }

  v54 = v12;
  if (userInterfaceLayoutDirection2 == 1)
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
    userInterfaceLayoutDirection3 = [*v28 userInterfaceLayoutDirection];
    if (userInterfaceLayoutDirection3 == 1)
    {
      v44 = v26;
    }

    else
    {
      v44 = v18;
    }

    if (userInterfaceLayoutDirection3 == 1)
    {
      v45 = v24;
    }

    else
    {
      v45 = v16;
    }

    if (userInterfaceLayoutDirection3 == 1)
    {
      v46 = v22;
    }

    else
    {
      v46 = v14;
    }

    v47 = v54;
    if (userInterfaceLayoutDirection3 == 1)
    {
      v47 = v20;
    }

    v56 = CGRectInset(*(&v44 - 3), v41, v41);
    [(CSProminentButtonReticlePresenter *)leadingReticle setFrame:v56.origin.x, v56.origin.y, v56.size.width, v56.size.height];
  }

  trailingReticle = self->_trailingReticle;
  if (trailingReticle)
  {
    userInterfaceLayoutDirection4 = [*v28 userInterfaceLayoutDirection];
    if (userInterfaceLayoutDirection4 == 1)
    {
      v50 = v18;
    }

    else
    {
      v50 = v26;
    }

    if (userInterfaceLayoutDirection4 == 1)
    {
      v51 = v16;
    }

    else
    {
      v51 = v24;
    }

    if (userInterfaceLayoutDirection4 == 1)
    {
      v52 = v14;
    }

    else
    {
      v52 = v22;
    }

    v53 = v54;
    if (userInterfaceLayoutDirection4 != 1)
    {
      v53 = v20;
    }

    v57 = CGRectInset(*(&v50 - 3), v41, v41);

    [(CSProminentButtonReticlePresenter *)trailingReticle setFrame:v57.origin.x, v57.origin.y, v57.size.width, v57.size.height];
  }
}

- (CGRect)_leadingFrameWithOutsets:(BOOL)outsets
{
  outsetsCopy = outsets;
  v5 = 0.0;
  if (outsets)
  {
    [objc_opt_class() _leadingOutset];
    v5 = v6;
  }

  [objc_opt_class() _buttonInsetX];
  v8 = v7 - v5;

  [(CSProminentButtonsView *)self _frameWithMinX:outsetsCopy outset:v8];
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (CGRect)_trailingFrameWithOutsets:(BOOL)outsets
{
  outsetsCopy = outsets;
  v5 = 0.0;
  if (outsets)
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

  [(CSProminentButtonsView *)self _frameWithMinX:outsetsCopy outset:v11];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_frameWithMinX:(double)x outset:(BOOL)outset
{
  outsetCopy = outset;
  [(CSProminentButtonsView *)self _buttonMinYWithOutset:?];
  v8 = v7;
  [(CSProminentButtonsView *)self _buttonSizeWithOutsets:outsetCopy];
  v10 = v9;
  v12 = v11;
  xCopy = x;
  v14 = v8;
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v14;
  result.origin.x = xCopy;
  return result;
}

- (double)_buttonMinYWithOutset:(BOOL)outset
{
  v4 = 0.0;
  if (outset)
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

- (CGSize)_buttonSizeWithOutsets:(BOOL)outsets
{
  outsetsCopy = outsets;
  [objc_opt_class() _buttonDiameter];
  v5 = v4;
  [objc_opt_class() _buttonOutsets];
  v10 = v8 + v9;
  if (!outsetsCopy)
  {
    v10 = 0.0;
  }

  v11 = v5 + v10;
  v12 = v6 + v7;
  if (!outsetsCopy)
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

- (void)_setConstraintsForRemoveButton:(id)button withReticle:(id)reticle
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ACD8];
  reticleCopy = reticle;
  buttonCopy = button;
  topAnchor = [buttonCopy topAnchor];
  topAnchor2 = [reticleCopy topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-3.0];
  v15[0] = v10;
  leadingAnchor = [buttonCopy leadingAnchor];

  leadingAnchor2 = [reticleCopy leadingAnchor];

  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:-3.0];
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
  v2[1] = self & 1;
  _os_log_debug_impl(&dword_1A2D63000, a2, OS_LOG_TYPE_DEBUG, "CSProminentButtonView disallowGlassButtons: %{BOOL}u", v2, 8u);
}

@end