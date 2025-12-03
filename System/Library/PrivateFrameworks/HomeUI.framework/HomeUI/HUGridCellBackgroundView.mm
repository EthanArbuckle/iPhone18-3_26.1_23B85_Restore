@interface HUGridCellBackgroundView
+ (id)_sharedBlurEffect;
- (BOOL)_shouldUseCCMaterialView;
- (BOOL)_shouldUseVisualEffectStyle;
- (HUBackgroundEffectViewGrouping)backgroundEffectViewGrouper;
- (id)_normalBackgroundColor;
- (void)_createEffectViewIfNecessary;
- (void)_createHighlightCCMateriaViewIfNecessary;
- (void)_createOffCCMaterialViewIfNecessary;
- (void)_createOnCCMaterialViewIfNecessary;
- (void)_updateBackgroundColor;
- (void)_updateCornerRadius;
- (void)_updateDisplay;
- (void)_updateHighlightView;
- (void)dealloc;
- (void)setBackgroundEffectViewGrouper:(id)grouper;
- (void)setBackgroundState:(unint64_t)state;
- (void)setBackgroundTintColor:(id)color;
- (void)setDisplayOptions:(id)options;
- (void)setOverrideBackgroundEffect:(id)effect;
- (void)setPressed:(BOOL)pressed;
- (void)setUseDefaultCellBackgroundColor:(BOOL)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HUGridCellBackgroundView

+ (id)_sharedBlurEffect
{
  if (qword_281120D80 != -1)
  {
    dispatch_once(&qword_281120D80, &__block_literal_global_110);
  }

  v3 = _MergedGlobals_1_1;

  return v3;
}

void __45__HUGridCellBackgroundView__sharedBlurEffect__block_invoke()
{
  v0 = [MEMORY[0x277D75210] effectWithStyle:7];
  v1 = _MergedGlobals_1_1;
  _MergedGlobals_1_1 = v0;
}

- (void)_createEffectViewIfNecessary
{
  effectView = [(HUGridCellBackgroundView *)self effectView];

  if (!effectView)
  {
    v4 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    [(HUGridCellBackgroundView *)self setEffectView:v4];

    effectView2 = [(HUGridCellBackgroundView *)self effectView];
    [effectView2 setAutoresizingMask:18];

    if ([MEMORY[0x277D14CE8] isAMac])
    {
      traitCollection = [(HUGridCellBackgroundView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (userInterfaceStyle == 1)
      {
        effectView3 = [(HUGridCellBackgroundView *)self effectView];
        contentView = [effectView3 contentView];
        systemMidGrayTintColor = [MEMORY[0x277D75348] systemMidGrayTintColor];
        [contentView setBackgroundColor:systemMidGrayTintColor];
      }
    }
  }
}

- (void)_createOffCCMaterialViewIfNecessary
{
  ccOffMaterialView = [(HUGridCellBackgroundView *)self ccOffMaterialView];

  if (ccOffMaterialView)
  {
    return;
  }

  displayOptions = [(HUGridCellBackgroundView *)self displayOptions];
  displayStyle = [displayOptions displayStyle];

  if (displayStyle == 3)
  {
    controlCenterModuleBackgroundMaterial = [MEMORY[0x277CFC960] controlCenterModuleBackgroundMaterial];
LABEL_6:
    v9 = controlCenterModuleBackgroundMaterial;
    [(HUGridCellBackgroundView *)self setCcOffMaterialView:controlCenterModuleBackgroundMaterial];

    goto LABEL_7;
  }

  displayOptions2 = [(HUGridCellBackgroundView *)self displayOptions];
  displayStyle2 = [displayOptions2 displayStyle];

  if (displayStyle2 == 2)
  {
    controlCenterModuleBackgroundMaterial = [MEMORY[0x277CFC960] controlCenterTertiaryCapturingMaterial];
    goto LABEL_6;
  }

LABEL_7:
  [(HUGridCellBackgroundView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  ccOffMaterialView2 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
  [ccOffMaterialView2 setFrame:{v11, v13, v15, v17}];

  ccOffMaterialView3 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
  [ccOffMaterialView3 setAutoresizingMask:18];
}

- (void)_createOnCCMaterialViewIfNecessary
{
  ccOnMaterialView = [(HUGridCellBackgroundView *)self ccOnMaterialView];

  if (!ccOnMaterialView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUGridCellBackgroundView *)self setCcOnMaterialView:v4];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    ccOnMaterialView2 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
    [ccOnMaterialView2 setBackgroundColor:whiteColor];

    [(HUGridCellBackgroundView *)self bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    ccOnMaterialView3 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
    [ccOnMaterialView3 setFrame:{v8, v10, v12, v14}];

    ccOnMaterialView4 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
    [ccOnMaterialView4 setAutoresizingMask:18];
  }
}

- (void)_createHighlightCCMateriaViewIfNecessary
{
  ccHighlightMaterialView = [(HUGridCellBackgroundView *)self ccHighlightMaterialView];

  if (!ccHighlightMaterialView)
  {
    controlCenterLightFill = [MEMORY[0x277CFC960] controlCenterLightFill];
    [(HUGridCellBackgroundView *)self setCcHighlightMaterialView:controlCenterLightFill];

    ccHighlightMaterialView2 = [(HUGridCellBackgroundView *)self ccHighlightMaterialView];
    [ccHighlightMaterialView2 setAlpha:0.0];

    [(HUGridCellBackgroundView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    ccHighlightMaterialView3 = [(HUGridCellBackgroundView *)self ccHighlightMaterialView];
    [ccHighlightMaterialView3 setFrame:{v7, v9, v11, v13}];

    ccHighlightMaterialView4 = [(HUGridCellBackgroundView *)self ccHighlightMaterialView];
    [ccHighlightMaterialView4 setAutoresizingMask:18];
  }
}

- (void)dealloc
{
  backgroundEffectViewGrouper = [(HUGridCellBackgroundView *)self backgroundEffectViewGrouper];
  if (backgroundEffectViewGrouper)
  {
    v4 = backgroundEffectViewGrouper;
    effectView = [(HUGridCellBackgroundView *)self effectView];

    if (effectView)
    {
      backgroundEffectViewGrouper2 = [(HUGridCellBackgroundView *)self backgroundEffectViewGrouper];
      effectView2 = [(HUGridCellBackgroundView *)self effectView];
      [backgroundEffectViewGrouper2 backgroundEffectRemoveCaptureDependent:effectView2 forBackgroundEffectIdentifier:@"HUSharedVisualEffectIdentifierTileOff"];
    }
  }

  v8.receiver = self;
  v8.super_class = HUGridCellBackgroundView;
  [(HUGridCellBackgroundView *)&v8 dealloc];
}

- (void)setDisplayOptions:(id)options
{
  objc_storeStrong(&self->_displayOptions, options);

  [(HUGridCellBackgroundView *)self _updateDisplay];
}

- (void)setBackgroundTintColor:(id)color
{
  objc_storeStrong(&self->_backgroundTintColor, color);

  [(HUGridCellBackgroundView *)self _updateBackgroundColor];
}

- (void)setOverrideBackgroundEffect:(id)effect
{
  effectCopy = effect;
  v6 = self->_overrideBackgroundEffect;
  v7 = effectCopy;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_8;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v8 = [(UIBlurEffect *)v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_overrideBackgroundEffect, effect);
    [(HUGridCellBackgroundView *)self _updateDisplay];
  }

LABEL_8:
}

- (void)setBackgroundEffectViewGrouper:(id)grouper
{
  grouperCopy = grouper;
  v5 = objc_loadWeakRetained(&self->_backgroundEffectViewGrouper);
  v6 = grouperCopy;
  obj = v6;
  if (v5 == v6)
  {

    goto LABEL_11;
  }

  if (v5)
  {
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  backgroundEffectViewGrouper = [(HUGridCellBackgroundView *)self backgroundEffectViewGrouper];
  if (backgroundEffectViewGrouper)
  {
    v9 = backgroundEffectViewGrouper;
    effectView = [(HUGridCellBackgroundView *)self effectView];

    if (effectView)
    {
      backgroundEffectViewGrouper2 = [(HUGridCellBackgroundView *)self backgroundEffectViewGrouper];
      effectView2 = [(HUGridCellBackgroundView *)self effectView];
      [backgroundEffectViewGrouper2 backgroundEffectRemoveCaptureDependent:effectView2 forBackgroundEffectIdentifier:@"HUSharedVisualEffectIdentifierTileOff"];
    }
  }

  effectView3 = [(HUGridCellBackgroundView *)self effectView];
  _captureSource = [effectView3 _captureSource];
  effectView4 = [(HUGridCellBackgroundView *)self effectView];
  [_captureSource _removeCaptureDependent:effectView4];

  objc_storeWeak(&self->_backgroundEffectViewGrouper, obj);
  [(HUGridCellBackgroundView *)self _updateDisplay];
LABEL_11:
}

- (void)setBackgroundState:(unint64_t)state
{
  if (self->_backgroundState != state)
  {
    self->_backgroundState = state;
    [(HUGridCellBackgroundView *)self _updateDisplay];
  }
}

- (void)setPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    self->_pressed = pressed;
    [(HUGridCellBackgroundView *)self _updateBackgroundColor];

    [(HUGridCellBackgroundView *)self _updateHighlightView];
  }
}

- (void)setUseDefaultCellBackgroundColor:(BOOL)color
{
  if (self->_useDefaultCellBackgroundColor != color)
  {
    self->_useDefaultCellBackgroundColor = color;
    [(HUGridCellBackgroundView *)self _updateBackgroundColor];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = HUGridCellBackgroundView;
  [(HUGridCellBackgroundView *)&v4 traitCollectionDidChange:change];
  [(HUGridCellBackgroundView *)self _updateDisplay];
}

- (void)_updateDisplay
{
  displayOptions = [(HUGridCellBackgroundView *)self displayOptions];

  if (!displayOptions)
  {
    return;
  }

  [(HUGridCellBackgroundView *)self _updateBackgroundColor];
  if ([(HUGridCellBackgroundView *)self _shouldUseCCMaterialView])
  {
    if ([(HUGridCellBackgroundView *)self backgroundState])
    {
      if ([(HUGridCellBackgroundView *)self backgroundState]!= 1)
      {
LABEL_17:
        ccHighlightMaterialView = [(HUGridCellBackgroundView *)self ccHighlightMaterialView];
        superview = [ccHighlightMaterialView superview];

        if (!superview)
        {
          [(HUGridCellBackgroundView *)self _createHighlightCCMateriaViewIfNecessary];
          ccHighlightMaterialView2 = [(HUGridCellBackgroundView *)self ccHighlightMaterialView];
          [(HUGridCellBackgroundView *)self addSubview:ccHighlightMaterialView2];
        }

        [(HUGridCellBackgroundView *)self _updateHighlightView];
        goto LABEL_20;
      }

      ccOffMaterialView = [(HUGridCellBackgroundView *)self ccOffMaterialView];
      superview2 = [ccOffMaterialView superview];

      if (superview2)
      {
        ccOffMaterialView2 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
        [ccOffMaterialView2 removeFromSuperview];
      }

      ccOnMaterialView = [(HUGridCellBackgroundView *)self ccOnMaterialView];
      superview3 = [ccOnMaterialView superview];

      if (!superview3)
      {
        [(HUGridCellBackgroundView *)self _createOnCCMaterialViewIfNecessary];
        ccOnMaterialView2 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
        [(HUGridCellBackgroundView *)self addSubview:ccOnMaterialView2];
      }

      [(HUGridCellBackgroundView *)self bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      ccOnMaterialView3 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
    }

    else
    {
      ccOnMaterialView4 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
      superview4 = [ccOnMaterialView4 superview];

      if (superview4)
      {
        ccOnMaterialView5 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
        [ccOnMaterialView5 removeFromSuperview];
      }

      ccOffMaterialView3 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
      superview5 = [ccOffMaterialView3 superview];

      if (!superview5)
      {
        [(HUGridCellBackgroundView *)self _createOffCCMaterialViewIfNecessary];
        ccOffMaterialView4 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
        [(HUGridCellBackgroundView *)self addSubview:ccOffMaterialView4];
      }

      [(HUGridCellBackgroundView *)self bounds];
      v11 = v25;
      v13 = v26;
      v15 = v27;
      v17 = v28;
      ccOnMaterialView3 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
    }

    v29 = ccOnMaterialView3;
    [ccOnMaterialView3 setFrame:{v11, v13, v15, v17}];

    goto LABEL_17;
  }

LABEL_20:
  if ([(HUGridCellBackgroundView *)self _shouldUseVisualEffectStyle])
  {
    [(HUGridCellBackgroundView *)self _createEffectViewIfNecessary];
    overrideBackgroundEffect = [(HUGridCellBackgroundView *)self overrideBackgroundEffect];

    backgroundEffectViewGrouper = [(HUGridCellBackgroundView *)self backgroundEffectViewGrouper];
    v35 = backgroundEffectViewGrouper;
    if (overrideBackgroundEffect)
    {
      effectView = [(HUGridCellBackgroundView *)self effectView];
      [v35 backgroundEffectRemoveCaptureDependent:effectView forBackgroundEffectIdentifier:@"HUSharedVisualEffectIdentifierTileOff"];

      effectView2 = [(HUGridCellBackgroundView *)self effectView];
      _captureSource = [effectView2 _captureSource];
      effectView3 = [(HUGridCellBackgroundView *)self effectView];
      [_captureSource _removeCaptureDependent:effectView3];

      overrideBackgroundEffect2 = [(HUGridCellBackgroundView *)self overrideBackgroundEffect];
    }

    else
    {

      if (v35)
      {
        backgroundEffectViewGrouper2 = [(HUGridCellBackgroundView *)self backgroundEffectViewGrouper];
        effectView4 = [(HUGridCellBackgroundView *)self effectView];
        [backgroundEffectViewGrouper2 backgroundEffectAddCaptureDependent:effectView4 forBackgroundEffectIdentifier:@"HUSharedVisualEffectIdentifierTileOff"];
        goto LABEL_27;
      }

      overrideBackgroundEffect2 = [objc_opt_class() _sharedBlurEffect];
    }

    backgroundEffectViewGrouper2 = overrideBackgroundEffect2;
    effectView4 = [(HUGridCellBackgroundView *)self effectView];
    [effectView4 setEffect:backgroundEffectViewGrouper2];
LABEL_27:

    effectView5 = [(HUGridCellBackgroundView *)self effectView];
    [(HUGridCellBackgroundView *)self addSubview:effectView5];

    [(HUGridCellBackgroundView *)self bounds];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    effectView6 = [(HUGridCellBackgroundView *)self effectView];
    [effectView6 setFrame:{v46, v48, v50, v52}];
    goto LABEL_28;
  }

  effectView6 = [(HUGridCellBackgroundView *)self effectView];
  [effectView6 removeFromSuperview];
LABEL_28:

  [(HUGridCellBackgroundView *)self _updateCornerRadius];
}

- (void)_updateCornerRadius
{
  effectView = [(HUGridCellBackgroundView *)self effectView];
  superview = [effectView superview];

  if (superview)
  {
    [(HUGridCellBackgroundView *)self cornerRadius];
    v6 = v5;
    effectView2 = [(HUGridCellBackgroundView *)self effectView];
    [effectView2 _setContinuousCornerRadius:v6];

LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  ccOffMaterialView = [(HUGridCellBackgroundView *)self ccOffMaterialView];
  superview2 = [ccOffMaterialView superview];
  if (superview2)
  {

LABEL_6:
    [(HUGridCellBackgroundView *)self cornerRadius];
    v13 = v12;
    ccOffMaterialView2 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
    [ccOffMaterialView2 _setContinuousCornerRadius:v13];

    [(HUGridCellBackgroundView *)self cornerRadius];
    v16 = v15;
    ccOnMaterialView = [(HUGridCellBackgroundView *)self ccOnMaterialView];
    [ccOnMaterialView _setContinuousCornerRadius:v16];

    [(HUGridCellBackgroundView *)self cornerRadius];
    v19 = v18;
    ccHighlightMaterialView = [(HUGridCellBackgroundView *)self ccHighlightMaterialView];
    [ccHighlightMaterialView _setContinuousCornerRadius:v19];

    [(HUGridCellBackgroundView *)self _setContinuousCornerRadius:0.0];
    goto LABEL_7;
  }

  ccOnMaterialView2 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
  superview3 = [ccOnMaterialView2 superview];

  if (superview3)
  {
    goto LABEL_6;
  }

  [(HUGridCellBackgroundView *)self cornerRadius];
  [(HUGridCellBackgroundView *)self _setContinuousCornerRadius:?];
  v21 = 1;
LABEL_8:
  layer = [(HUGridCellBackgroundView *)self layer];
  [layer setMasksToBounds:v21];
}

- (void)_updateBackgroundColor
{
  if ([(HUGridCellBackgroundView *)self _shouldUseCCMaterialView])
  {

    [(HUGridCellBackgroundView *)self setBackgroundColor:0];
    return;
  }

  if ([(HUGridCellBackgroundView *)self useDefaultCellBackgroundColor])
  {
    traitCollection = [(HUGridCellBackgroundView *)self traitCollection];
    if ([traitCollection userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] systemGray5Color];
    }

    else
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }
    _normalBackgroundColor = ;
    goto LABEL_22;
  }

  displayOptions = [(HUGridCellBackgroundView *)self displayOptions];
  displayStyle = [displayOptions displayStyle];

  if (displayStyle == 4)
  {
    if ([(HUGridCellBackgroundView *)self backgroundState]== 1)
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemGray5Color];
    }
    v9 = ;
    traitCollection = v9;
    selfCopy2 = self;
  }

  else
  {
    backgroundTintColor = [(HUGridCellBackgroundView *)self backgroundTintColor];
    v7 = backgroundTintColor;
    if (backgroundTintColor)
    {
      systemWhiteColor = backgroundTintColor;
    }

    else
    {
      systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    }

    traitCollection = systemWhiteColor;

    if ([(HUGridCellBackgroundView *)self backgroundState]!= 1)
    {
      _normalBackgroundColor = [(HUGridCellBackgroundView *)self _normalBackgroundColor];
LABEL_22:
      v11 = _normalBackgroundColor;
      [(HUGridCellBackgroundView *)self setBackgroundColor:_normalBackgroundColor];

      goto LABEL_23;
    }

    selfCopy2 = self;
    v9 = traitCollection;
  }

  [(HUGridCellBackgroundView *)selfCopy2 setBackgroundColor:v9];
LABEL_23:
}

- (void)_updateHighlightView
{
  if ([(HUGridCellBackgroundView *)self _shouldUseCCMaterialView])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __48__HUGridCellBackgroundView__updateHighlightView__block_invoke;
    v3[3] = &unk_277DB8488;
    v3[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.25];
  }
}

void __48__HUGridCellBackgroundView__updateHighlightView__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isPressed] && !objc_msgSend(*(a1 + 32), "backgroundState"))
  {
    v2 = 0.25;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) ccHighlightMaterialView];
  [v3 setAlpha:v2];
}

- (BOOL)_shouldUseCCMaterialView
{
  displayOptions = [(HUGridCellBackgroundView *)self displayOptions];
  displayStyle = [displayOptions displayStyle];

  return (displayStyle < 5) & (0xCu >> displayStyle);
}

- (BOOL)_shouldUseVisualEffectStyle
{
  displayOptions = [(HUGridCellBackgroundView *)self displayOptions];
  displayStyle = [displayOptions displayStyle];

  return displayStyle <= 1 && ![(HUGridCellBackgroundView *)self backgroundState]&& !UIAccessibilityIsReduceTransparencyEnabled();
}

- (id)_normalBackgroundColor
{
  if ([(HUGridCellBackgroundView *)self _shouldUseCCMaterialView]|| !UIAccessibilityIsReduceTransparencyEnabled())
  {
    goto LABEL_6;
  }

  displayOptions = [(HUGridCellBackgroundView *)self displayOptions];
  contentColorStyle = [displayOptions contentColorStyle];

  if (contentColorStyle == 1)
  {
    traitCollection = [(HUGridCellBackgroundView *)self traitCollection];
    v6 = [traitCollection userInterfaceStyle] == 2;
    v7 = MEMORY[0x277D75348];
    v8 = &unk_20D5CAAB0;
    goto LABEL_11;
  }

  if (contentColorStyle)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  traitCollection = [(HUGridCellBackgroundView *)self traitCollection];
  v6 = [traitCollection userInterfaceStyle] == 2;
  v7 = MEMORY[0x277D75348];
  v8 = &unk_20D5CAAC0;
LABEL_11:
  v9 = [v7 colorWithWhite:v8[v6] alpha:1.0];

LABEL_7:

  return v9;
}

- (HUBackgroundEffectViewGrouping)backgroundEffectViewGrouper
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundEffectViewGrouper);

  return WeakRetained;
}

@end