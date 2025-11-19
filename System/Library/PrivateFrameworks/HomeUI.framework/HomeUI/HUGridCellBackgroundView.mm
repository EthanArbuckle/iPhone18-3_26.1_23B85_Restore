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
- (void)setBackgroundEffectViewGrouper:(id)a3;
- (void)setBackgroundState:(unint64_t)a3;
- (void)setBackgroundTintColor:(id)a3;
- (void)setDisplayOptions:(id)a3;
- (void)setOverrideBackgroundEffect:(id)a3;
- (void)setPressed:(BOOL)a3;
- (void)setUseDefaultCellBackgroundColor:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
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
  v3 = [(HUGridCellBackgroundView *)self effectView];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    [(HUGridCellBackgroundView *)self setEffectView:v4];

    v5 = [(HUGridCellBackgroundView *)self effectView];
    [v5 setAutoresizingMask:18];

    if ([MEMORY[0x277D14CE8] isAMac])
    {
      v6 = [(HUGridCellBackgroundView *)self traitCollection];
      v7 = [v6 userInterfaceStyle];

      if (v7 == 1)
      {
        v10 = [(HUGridCellBackgroundView *)self effectView];
        v8 = [v10 contentView];
        v9 = [MEMORY[0x277D75348] systemMidGrayTintColor];
        [v8 setBackgroundColor:v9];
      }
    }
  }
}

- (void)_createOffCCMaterialViewIfNecessary
{
  v3 = [(HUGridCellBackgroundView *)self ccOffMaterialView];

  if (v3)
  {
    return;
  }

  v4 = [(HUGridCellBackgroundView *)self displayOptions];
  v5 = [v4 displayStyle];

  if (v5 == 3)
  {
    v6 = [MEMORY[0x277CFC960] controlCenterModuleBackgroundMaterial];
LABEL_6:
    v9 = v6;
    [(HUGridCellBackgroundView *)self setCcOffMaterialView:v6];

    goto LABEL_7;
  }

  v7 = [(HUGridCellBackgroundView *)self displayOptions];
  v8 = [v7 displayStyle];

  if (v8 == 2)
  {
    v6 = [MEMORY[0x277CFC960] controlCenterTertiaryCapturingMaterial];
    goto LABEL_6;
  }

LABEL_7:
  [(HUGridCellBackgroundView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
  [v18 setFrame:{v11, v13, v15, v17}];

  v19 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
  [v19 setAutoresizingMask:18];
}

- (void)_createOnCCMaterialViewIfNecessary
{
  v3 = [(HUGridCellBackgroundView *)self ccOnMaterialView];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(HUGridCellBackgroundView *)self setCcOnMaterialView:v4];

    v5 = [MEMORY[0x277D75348] whiteColor];
    v6 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
    [v6 setBackgroundColor:v5];

    [(HUGridCellBackgroundView *)self bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
    [v15 setFrame:{v8, v10, v12, v14}];

    v16 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
    [v16 setAutoresizingMask:18];
  }
}

- (void)_createHighlightCCMateriaViewIfNecessary
{
  v3 = [(HUGridCellBackgroundView *)self ccHighlightMaterialView];

  if (!v3)
  {
    v4 = [MEMORY[0x277CFC960] controlCenterLightFill];
    [(HUGridCellBackgroundView *)self setCcHighlightMaterialView:v4];

    v5 = [(HUGridCellBackgroundView *)self ccHighlightMaterialView];
    [v5 setAlpha:0.0];

    [(HUGridCellBackgroundView *)self bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(HUGridCellBackgroundView *)self ccHighlightMaterialView];
    [v14 setFrame:{v7, v9, v11, v13}];

    v15 = [(HUGridCellBackgroundView *)self ccHighlightMaterialView];
    [v15 setAutoresizingMask:18];
  }
}

- (void)dealloc
{
  v3 = [(HUGridCellBackgroundView *)self backgroundEffectViewGrouper];
  if (v3)
  {
    v4 = v3;
    v5 = [(HUGridCellBackgroundView *)self effectView];

    if (v5)
    {
      v6 = [(HUGridCellBackgroundView *)self backgroundEffectViewGrouper];
      v7 = [(HUGridCellBackgroundView *)self effectView];
      [v6 backgroundEffectRemoveCaptureDependent:v7 forBackgroundEffectIdentifier:@"HUSharedVisualEffectIdentifierTileOff"];
    }
  }

  v8.receiver = self;
  v8.super_class = HUGridCellBackgroundView;
  [(HUGridCellBackgroundView *)&v8 dealloc];
}

- (void)setDisplayOptions:(id)a3
{
  objc_storeStrong(&self->_displayOptions, a3);

  [(HUGridCellBackgroundView *)self _updateDisplay];
}

- (void)setBackgroundTintColor:(id)a3
{
  objc_storeStrong(&self->_backgroundTintColor, a3);

  [(HUGridCellBackgroundView *)self _updateBackgroundColor];
}

- (void)setOverrideBackgroundEffect:(id)a3
{
  v5 = a3;
  v6 = self->_overrideBackgroundEffect;
  v7 = v5;
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
    objc_storeStrong(&self->_overrideBackgroundEffect, a3);
    [(HUGridCellBackgroundView *)self _updateDisplay];
  }

LABEL_8:
}

- (void)setBackgroundEffectViewGrouper:(id)a3
{
  v4 = a3;
  v5 = objc_loadWeakRetained(&self->_backgroundEffectViewGrouper);
  v6 = v4;
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

  v8 = [(HUGridCellBackgroundView *)self backgroundEffectViewGrouper];
  if (v8)
  {
    v9 = v8;
    v10 = [(HUGridCellBackgroundView *)self effectView];

    if (v10)
    {
      v11 = [(HUGridCellBackgroundView *)self backgroundEffectViewGrouper];
      v12 = [(HUGridCellBackgroundView *)self effectView];
      [v11 backgroundEffectRemoveCaptureDependent:v12 forBackgroundEffectIdentifier:@"HUSharedVisualEffectIdentifierTileOff"];
    }
  }

  v13 = [(HUGridCellBackgroundView *)self effectView];
  v14 = [v13 _captureSource];
  v15 = [(HUGridCellBackgroundView *)self effectView];
  [v14 _removeCaptureDependent:v15];

  objc_storeWeak(&self->_backgroundEffectViewGrouper, obj);
  [(HUGridCellBackgroundView *)self _updateDisplay];
LABEL_11:
}

- (void)setBackgroundState:(unint64_t)a3
{
  if (self->_backgroundState != a3)
  {
    self->_backgroundState = a3;
    [(HUGridCellBackgroundView *)self _updateDisplay];
  }
}

- (void)setPressed:(BOOL)a3
{
  if (self->_pressed != a3)
  {
    self->_pressed = a3;
    [(HUGridCellBackgroundView *)self _updateBackgroundColor];

    [(HUGridCellBackgroundView *)self _updateHighlightView];
  }
}

- (void)setUseDefaultCellBackgroundColor:(BOOL)a3
{
  if (self->_useDefaultCellBackgroundColor != a3)
  {
    self->_useDefaultCellBackgroundColor = a3;
    [(HUGridCellBackgroundView *)self _updateBackgroundColor];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUGridCellBackgroundView;
  [(HUGridCellBackgroundView *)&v4 traitCollectionDidChange:a3];
  [(HUGridCellBackgroundView *)self _updateDisplay];
}

- (void)_updateDisplay
{
  v3 = [(HUGridCellBackgroundView *)self displayOptions];

  if (!v3)
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
        v30 = [(HUGridCellBackgroundView *)self ccHighlightMaterialView];
        v31 = [v30 superview];

        if (!v31)
        {
          [(HUGridCellBackgroundView *)self _createHighlightCCMateriaViewIfNecessary];
          v32 = [(HUGridCellBackgroundView *)self ccHighlightMaterialView];
          [(HUGridCellBackgroundView *)self addSubview:v32];
        }

        [(HUGridCellBackgroundView *)self _updateHighlightView];
        goto LABEL_20;
      }

      v4 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
      v5 = [v4 superview];

      if (v5)
      {
        v6 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
        [v6 removeFromSuperview];
      }

      v7 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
      v8 = [v7 superview];

      if (!v8)
      {
        [(HUGridCellBackgroundView *)self _createOnCCMaterialViewIfNecessary];
        v9 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
        [(HUGridCellBackgroundView *)self addSubview:v9];
      }

      [(HUGridCellBackgroundView *)self bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
    }

    else
    {
      v19 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
      v20 = [v19 superview];

      if (v20)
      {
        v21 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
        [v21 removeFromSuperview];
      }

      v22 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
      v23 = [v22 superview];

      if (!v23)
      {
        [(HUGridCellBackgroundView *)self _createOffCCMaterialViewIfNecessary];
        v24 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
        [(HUGridCellBackgroundView *)self addSubview:v24];
      }

      [(HUGridCellBackgroundView *)self bounds];
      v11 = v25;
      v13 = v26;
      v15 = v27;
      v17 = v28;
      v18 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
    }

    v29 = v18;
    [v18 setFrame:{v11, v13, v15, v17}];

    goto LABEL_17;
  }

LABEL_20:
  if ([(HUGridCellBackgroundView *)self _shouldUseVisualEffectStyle])
  {
    [(HUGridCellBackgroundView *)self _createEffectViewIfNecessary];
    v33 = [(HUGridCellBackgroundView *)self overrideBackgroundEffect];

    v34 = [(HUGridCellBackgroundView *)self backgroundEffectViewGrouper];
    v35 = v34;
    if (v33)
    {
      v36 = [(HUGridCellBackgroundView *)self effectView];
      [v35 backgroundEffectRemoveCaptureDependent:v36 forBackgroundEffectIdentifier:@"HUSharedVisualEffectIdentifierTileOff"];

      v37 = [(HUGridCellBackgroundView *)self effectView];
      v38 = [v37 _captureSource];
      v39 = [(HUGridCellBackgroundView *)self effectView];
      [v38 _removeCaptureDependent:v39];

      v40 = [(HUGridCellBackgroundView *)self overrideBackgroundEffect];
    }

    else
    {

      if (v35)
      {
        v41 = [(HUGridCellBackgroundView *)self backgroundEffectViewGrouper];
        v42 = [(HUGridCellBackgroundView *)self effectView];
        [v41 backgroundEffectAddCaptureDependent:v42 forBackgroundEffectIdentifier:@"HUSharedVisualEffectIdentifierTileOff"];
        goto LABEL_27;
      }

      v40 = [objc_opt_class() _sharedBlurEffect];
    }

    v41 = v40;
    v42 = [(HUGridCellBackgroundView *)self effectView];
    [v42 setEffect:v41];
LABEL_27:

    v44 = [(HUGridCellBackgroundView *)self effectView];
    [(HUGridCellBackgroundView *)self addSubview:v44];

    [(HUGridCellBackgroundView *)self bounds];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v43 = [(HUGridCellBackgroundView *)self effectView];
    [v43 setFrame:{v46, v48, v50, v52}];
    goto LABEL_28;
  }

  v43 = [(HUGridCellBackgroundView *)self effectView];
  [v43 removeFromSuperview];
LABEL_28:

  [(HUGridCellBackgroundView *)self _updateCornerRadius];
}

- (void)_updateCornerRadius
{
  v3 = [(HUGridCellBackgroundView *)self effectView];
  v4 = [v3 superview];

  if (v4)
  {
    [(HUGridCellBackgroundView *)self cornerRadius];
    v6 = v5;
    v7 = [(HUGridCellBackgroundView *)self effectView];
    [v7 _setContinuousCornerRadius:v6];

LABEL_7:
    v21 = 0;
    goto LABEL_8;
  }

  v8 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
  v9 = [v8 superview];
  if (v9)
  {

LABEL_6:
    [(HUGridCellBackgroundView *)self cornerRadius];
    v13 = v12;
    v14 = [(HUGridCellBackgroundView *)self ccOffMaterialView];
    [v14 _setContinuousCornerRadius:v13];

    [(HUGridCellBackgroundView *)self cornerRadius];
    v16 = v15;
    v17 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
    [v17 _setContinuousCornerRadius:v16];

    [(HUGridCellBackgroundView *)self cornerRadius];
    v19 = v18;
    v20 = [(HUGridCellBackgroundView *)self ccHighlightMaterialView];
    [v20 _setContinuousCornerRadius:v19];

    [(HUGridCellBackgroundView *)self _setContinuousCornerRadius:0.0];
    goto LABEL_7;
  }

  v10 = [(HUGridCellBackgroundView *)self ccOnMaterialView];
  v11 = [v10 superview];

  if (v11)
  {
    goto LABEL_6;
  }

  [(HUGridCellBackgroundView *)self cornerRadius];
  [(HUGridCellBackgroundView *)self _setContinuousCornerRadius:?];
  v21 = 1;
LABEL_8:
  v22 = [(HUGridCellBackgroundView *)self layer];
  [v22 setMasksToBounds:v21];
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
    v12 = [(HUGridCellBackgroundView *)self traitCollection];
    if ([v12 userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] systemGray5Color];
    }

    else
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }
    v3 = ;
    goto LABEL_22;
  }

  v4 = [(HUGridCellBackgroundView *)self displayOptions];
  v5 = [v4 displayStyle];

  if (v5 == 4)
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
    v12 = v9;
    v10 = self;
  }

  else
  {
    v6 = [(HUGridCellBackgroundView *)self backgroundTintColor];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x277D75348] systemWhiteColor];
    }

    v12 = v8;

    if ([(HUGridCellBackgroundView *)self backgroundState]!= 1)
    {
      v3 = [(HUGridCellBackgroundView *)self _normalBackgroundColor];
LABEL_22:
      v11 = v3;
      [(HUGridCellBackgroundView *)self setBackgroundColor:v3];

      goto LABEL_23;
    }

    v10 = self;
    v9 = v12;
  }

  [(HUGridCellBackgroundView *)v10 setBackgroundColor:v9];
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
  v2 = [(HUGridCellBackgroundView *)self displayOptions];
  v3 = [v2 displayStyle];

  return (v3 < 5) & (0xCu >> v3);
}

- (BOOL)_shouldUseVisualEffectStyle
{
  v3 = [(HUGridCellBackgroundView *)self displayOptions];
  v4 = [v3 displayStyle];

  return v4 <= 1 && ![(HUGridCellBackgroundView *)self backgroundState]&& !UIAccessibilityIsReduceTransparencyEnabled();
}

- (id)_normalBackgroundColor
{
  if ([(HUGridCellBackgroundView *)self _shouldUseCCMaterialView]|| !UIAccessibilityIsReduceTransparencyEnabled())
  {
    goto LABEL_6;
  }

  v3 = [(HUGridCellBackgroundView *)self displayOptions];
  v4 = [v3 contentColorStyle];

  if (v4 == 1)
  {
    v5 = [(HUGridCellBackgroundView *)self traitCollection];
    v6 = [v5 userInterfaceStyle] == 2;
    v7 = MEMORY[0x277D75348];
    v8 = &unk_20D5CAAB0;
    goto LABEL_11;
  }

  if (v4)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v5 = [(HUGridCellBackgroundView *)self traitCollection];
  v6 = [v5 userInterfaceStyle] == 2;
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