@interface SFUnifiedBarItemView
- (BOOL)_relinquishedGlassView;
- (BOOL)_shouldHidePlatterView;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CACornerRadii)cornerRadii;
- (CGRect)squishedGlassFrame;
- (SFUnifiedBarItem)item;
- (SFUnifiedBarItemView)initWithFrame:(CGRect)a3;
- (UIDragPreviewParameters)previewParameters;
- (id)_makeSeparator;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_applyFilters;
- (void)_applyGlass;
- (void)_applyPlatterColor:(id)a3;
- (void)_applyThemeToPlatterView:(id)a3;
- (void)_buttonShapesEnabledDidChange;
- (void)_disableVibrancyIfNeededForTheme:(id)a3;
- (void)_layOutContentView;
- (void)_layOutCutoutBorder;
- (void)_layOutGlass;
- (void)_layOutSeparators;
- (void)_layOutShadowView;
- (void)_setHasFilterView:(BOOL)a3;
- (void)_setHasHighlightView:(BOOL)a3;
- (void)_setShowsCutoutBorderEffects:(BOOL)a3;
- (void)_setShowsCutoutBorderEraser:(BOOL)a3;
- (void)_setShowsGlass:(BOOL)a3;
- (void)_setShowsPlatter:(BOOL)a3;
- (void)_setUsesShadowView:(BOOL)a3;
- (void)_updateBackgroundAlpha;
- (void)_updateContentAlpha;
- (void)_updateHighlightColor;
- (void)_updateOverrideUserInterfaceStyle;
- (void)_updatePlatterEffect;
- (void)_updateSeparatorVisibility;
- (void)_updateShowsCutoutBorder;
- (void)layoutSubviews;
- (void)reclaimGlassView;
- (void)setBarBackgroundAlpha:(double)a3;
- (void)setBarMetrics:(id)a3;
- (void)setBarTheme:(id)a3;
- (void)setContentAlpha:(double)a3;
- (void)setContentBlurRadius:(double)a3;
- (void)setCornerRadii:(CACornerRadii *)a3;
- (void)setCutoutBorderCopyGroupName:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setItemsNeedEraserBasedCutoutBorder:(BOOL)a3;
- (void)setPlatterStyle:(int64_t)a3;
- (void)setSeparatorOutset:(double)a3;
- (void)setSeparatorVerticalInset:(double)a3;
- (void)setShouldEnableCopyCutoutBorder:(BOOL)a3;
- (void)setShowsSeparators:(BOOL)a3;
- (void)setSquishTransformFactor:(double)a3;
- (void)setThemeColorVisibility:(double)a3;
- (void)setVisibleSeparatorEdges:(unint64_t)a3;
- (void)updateConstraints;
- (void)updateCornerRadius;
@end

@implementation SFUnifiedBarItemView

- (SFUnifiedBarItemView)initWithFrame:(CGRect)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = SFUnifiedBarItemView;
  v3 = [(SFUnifiedBarItemView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_squishTransformFactor = 1.0;
    v3->_barBackgroundAlpha = 1.0;
    v3->_contentAlpha = 1.0;
    v5 = [SFUnifiedBarItemContentView alloc];
    [(SFUnifiedBarItemView *)v4 bounds];
    v6 = [(SFUnifiedBarItemContentView *)v5 initWithFrame:?];
    contentView = v4->_contentView;
    v4->_contentView = v6;

    v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    v19[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v10 = [(UIView *)v4->_contentView layer];
    [v10 setFilters:v9];

    v11 = *MEMORY[0x1E69796E8];
    v12 = [(UIView *)v4->_contentView layer];
    [v12 setCornerCurve:v11];

    [(SFUnifiedBarItemView *)v4 addSubview:v4->_contentView];
    v13 = +[SFUnifiedBarTheme defaultTheme];
    [(SFUnifiedBarItemView *)v4 setBarTheme:v13];

    v14 = [(SFUnifiedBarItemView *)v4 layer];
    [v14 setCornerCurve:v11];

    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v4 selector:sel__buttonShapesEnabledDidChange name:*MEMORY[0x1E69DD8A8] object:0];

    v16 = v4;
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFUnifiedBarItemView;
  [(SFUnifiedBarItemView *)&v3 layoutSubviews];
  [(SFUnifiedBarItemView *)self updateCornerRadius];
  [(SFUnifiedBarItemView *)self _layOutCutoutBorder];
  [(SFUnifiedBarItemView *)self _layOutShadowView];
  [(SFUnifiedBarItemView *)self _layOutGlass];
  [(SFUnifiedBarItemView *)self _layOutSeparators];
  [(SFUnifiedBarItemView *)self _layOutContentView];
}

- (void)updateConstraints
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SFUnifiedBarItemView;
  [(SFUnifiedBarItemView *)&v14 updateConstraints];
  separatorOutset = 0.0;
  if (self->_platterStyle == 6 && !UIAccessibilityButtonShapesEnabled())
  {
    separatorOutset = self->_separatorOutset;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_platterViewConstraints;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    v8 = -separatorOutset;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v9++) setConstant:{v8, v10}];
      }

      while (v6 != v9);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v4 = self;
  v9.receiver = self;
  v9.super_class = SFUnifiedBarItemView;
  v5 = [(SFUnifiedBarItemView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if ((!v5 || !v4->_occluded) && v5 != v4->_contentView)
  {
    v4 = v5;
  }

  v7 = v4;

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SFUnifiedBarItemView;
    v5 = [(SFUnifiedBarItemView *)&v7 gestureRecognizerShouldBegin:v4];
  }

  return v5;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(SFUnifiedBarItemView *)self isHighlighted]!= a3)
  {
    v7.receiver = self;
    v7.super_class = SFUnifiedBarItemView;
    [(SFUnifiedBarItemView *)&v7 setHighlighted:v3];
    v5 = 0.2;
    if (!v3)
    {
      v5 = 0.5;
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__SFUnifiedBarItemView_setHighlighted___block_invoke;
    v6[3] = &unk_1E721B360;
    v6[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:50659332 delay:v6 options:0 animations:v5 completion:0.0];
  }
}

uint64_t __39__SFUnifiedBarItemView_setHighlighted___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateContentAlpha];
  v2 = *(a1 + 32);

  return [v2 _updatePlatterEffect];
}

- (void)_setShowsPlatter:(BOOL)a3
{
  v42[4] = *MEMORY[0x1E69E9840];
  if ((((self->_platterView == 0) ^ a3) & 1) == 0)
  {
    v3 = a3;
    v5 = [(SFUnifiedBarItemView *)self layer];
    [v5 setAllowsGroupOpacity:!v3];

    if (v3)
    {
      v6 = objc_alloc_init(SFUnifiedBarItemPlatterView);
      platterView = self->_platterView;
      self->_platterView = v6;

      [(SFUnifiedBarItemPlatterView *)self->_platterView setUserInteractionEnabled:0];
      [(SFUnifiedBarItemPlatterView *)self->_platterView setTranslatesAutoresizingMaskIntoConstraints:0];
      v8 = objc_alloc_init(MEMORY[0x1E69DD298]);
      platterFillView = self->_platterFillView;
      self->_platterFillView = v8;

      [(UIVisualEffectView *)self->_platterFillView setClipsToBounds:1];
      [(UIVisualEffectView *)self->_platterFillView setUserInteractionEnabled:0];
      [(UIVisualEffectView *)self->_platterFillView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(SFUnifiedBarItemView *)self insertSubview:self->_platterView belowSubview:self->_contentView];
      [(SFUnifiedBarItemView *)self insertSubview:self->_platterFillView belowSubview:self->_contentView];
      v39 = [(SFUnifiedBarItemPlatterView *)self->_platterView leadingAnchor];
      v37 = [(SFUnifiedBarItemView *)self leadingAnchor];
      v35 = [v39 constraintEqualToAnchor:v37];
      v42[0] = v35;
      v33 = [(SFUnifiedBarItemPlatterView *)self->_platterView topAnchor];
      v31 = [(SFUnifiedBarItemView *)self topAnchor];
      v10 = [v33 constraintEqualToAnchor:v31];
      v42[1] = v10;
      v11 = [(SFUnifiedBarItemView *)self trailingAnchor];
      v12 = [(SFUnifiedBarItemPlatterView *)self->_platterView trailingAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
      v42[2] = v13;
      v14 = [(SFUnifiedBarItemView *)self bottomAnchor];
      v15 = [(SFUnifiedBarItemPlatterView *)self->_platterView bottomAnchor];
      v16 = [v14 constraintEqualToAnchor:v15];
      v42[3] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
      platterViewConstraints = self->_platterViewConstraints;
      self->_platterViewConstraints = v17;

      [MEMORY[0x1E696ACD8] activateConstraints:self->_platterViewConstraints];
      v32 = MEMORY[0x1E696ACD8];
      v40 = [(UIVisualEffectView *)self->_platterFillView leadingAnchor];
      v38 = [(SFUnifiedBarItemView *)self leadingAnchor];
      v36 = [v40 constraintEqualToAnchor:v38];
      v41[0] = v36;
      v34 = [(UIVisualEffectView *)self->_platterFillView topAnchor];
      v19 = [(SFUnifiedBarItemView *)self topAnchor];
      v20 = [v34 constraintEqualToAnchor:v19];
      v41[1] = v20;
      v21 = [(SFUnifiedBarItemView *)self trailingAnchor];
      v22 = [(UIVisualEffectView *)self->_platterFillView trailingAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];
      v41[2] = v23;
      v24 = [(SFUnifiedBarItemView *)self bottomAnchor];
      v25 = [(UIVisualEffectView *)self->_platterFillView bottomAnchor];
      v26 = [v24 constraintEqualToAnchor:v25];
      v41[3] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
      [v32 activateConstraints:v27];
    }

    else
    {
      [(SFUnifiedBarItemPlatterView *)self->_platterView removeFromSuperview];
      v28 = self->_platterView;
      self->_platterView = 0;

      [(UIVisualEffectView *)self->_platterFillView removeFromSuperview];
      v29 = self->_platterFillView;
      self->_platterFillView = 0;

      v30 = self->_platterViewConstraints;
      self->_platterViewConstraints = 0;
    }
  }
}

- (void)_setShowsCutoutBorderEffects:(BOOL)a3
{
  cutoutBorderCopyView = self->_cutoutBorderCopyView;
  if (a3)
  {
    if (!cutoutBorderCopyView)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DD838]);
      v6 = self->_cutoutBorderCopyView;
      self->_cutoutBorderCopyView = v5;

      cutoutBorderCopyGroupName = self->_cutoutBorderCopyGroupName;
      v8 = [(_UIVisualEffectBackdropView *)self->_cutoutBorderCopyView captureGroup];
      [v8 setGroupName:cutoutBorderCopyGroupName];

      v9 = *MEMORY[0x1E69796E8];
      v10 = [(_UIVisualEffectBackdropView *)self->_cutoutBorderCopyView layer];
      [v10 setCornerCurve:v9];

      [(_UIVisualEffectBackdropView *)self->_cutoutBorderCopyView setUserInteractionEnabled:0];
      v11 = objc_alloc_init(SFUnifiedBarItemPlatterView);
      cutoutBorderPlatterView = self->_cutoutBorderPlatterView;
      self->_cutoutBorderPlatterView = v11;

      [(SFUnifiedBarItemPlatterView *)self->_cutoutBorderPlatterView setUserInteractionEnabled:0];
      [(SFUnifiedBarItemView *)self insertSubview:self->_cutoutBorderCopyView atIndex:0];
      [(SFUnifiedBarItemView *)self insertSubview:self->_cutoutBorderPlatterView atIndex:1];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __53__SFUnifiedBarItemView__setShowsCutoutBorderEffects___block_invoke;
      v15[3] = &unk_1E721B360;
      v15[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v15];
    }
  }

  else if (cutoutBorderCopyView)
  {
    [(_UIVisualEffectBackdropView *)cutoutBorderCopyView removeFromSuperview];
    v13 = self->_cutoutBorderCopyView;
    self->_cutoutBorderCopyView = 0;

    [(SFUnifiedBarItemPlatterView *)self->_cutoutBorderPlatterView removeFromSuperview];
    v14 = self->_cutoutBorderPlatterView;
    self->_cutoutBorderPlatterView = 0;
  }
}

- (void)_setShowsCutoutBorderEraser:(BOOL)a3
{
  v4 = !a3;
  v5 = [(SFUnifiedBarItemView *)self layer];
  [v5 setAllowsGroupBlending:v4];

  cutoutBorderEraserView = self->_cutoutBorderEraserView;
  if (v4)
  {
    if (cutoutBorderEraserView)
    {
      [(UIView *)cutoutBorderEraserView removeFromSuperview];
      v15 = self->_cutoutBorderEraserView;
      self->_cutoutBorderEraserView = 0;
    }
  }

  else if (!cutoutBorderEraserView)
  {
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v8 = self->_cutoutBorderEraserView;
    self->_cutoutBorderEraserView = v7;

    v9 = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)self->_cutoutBorderEraserView setBackgroundColor:v9];

    v10 = *MEMORY[0x1E69798E8];
    v11 = [(UIView *)self->_cutoutBorderEraserView layer];
    [v11 setCompositingFilter:v10];

    v12 = *MEMORY[0x1E69796E8];
    v13 = [(UIView *)self->_cutoutBorderEraserView layer];
    [v13 setCornerCurve:v12];

    [(UIView *)self->_cutoutBorderEraserView setUserInteractionEnabled:0];
    v14 = self->_cutoutBorderEraserView;

    [(SFUnifiedBarItemView *)self insertSubview:v14 atIndex:0];
  }
}

- (void)setBarMetrics:(id)a3
{
  v5 = a3;
  if (self->_barMetrics != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_barMetrics, a3);
    [(SFUnifiedBarItemView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setBarTheme:(id)a3
{
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    [(SFUnifiedBarItemView *)self _disableVibrancyIfNeededForTheme:v5];
    objc_storeStrong(&self->_barTheme, a3);
    [(SFUnifiedBarItemView *)self _updatePlatterEffect];
    [(SFUnifiedBarItemView *)self _applyGlass];
    [(SFUnifiedBarItemView *)self _applyFilters];
    [(SFUnifiedBarItemView *)self applyTheme];
  }
}

- (void)setPlatterStyle:(int64_t)a3
{
  if (self->_platterStyle == a3)
  {
    return;
  }

  v5 = a3 == 0;
  v6 = [(SFUnifiedBarItemView *)self layer];
  [v6 setAllowsGroupOpacity:v5];

  self->_platterStyle = a3;
  v7 = 1;
  if (a3 <= 0xD)
  {
    if (((1 << a3) & 0xB81) != 0)
    {
      v7 = 0;
    }

    else if (a3 == 13)
    {
      [(UIView *)self->_contentView setClipsToBounds:0];
      LOBYTE(v8) = 0;
      goto LABEL_8;
    }
  }

  [(UIView *)self->_contentView setClipsToBounds:v7];
  if (a3 <= 0xD)
  {
    v8 = 0x1C00u >> a3;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

LABEL_8:
  [(SFUnifiedBarItemView *)self _setShowsGlass:v8 & 1];
  [(SFUnifiedBarItemView *)self _setHasFilterView:a3 == 13];
  [(SFUnifiedBarItemView *)self _setShowsPlatter:(a3 - 1) < 6];
  [(SFUnifiedBarItemView *)self _updateShowsCutoutBorder];
  [(SFUnifiedBarItemView *)self _updatePlatterEffect];
  [(SFUnifiedBarItemView *)self _updateHasHighlightView];
  [(SFUnifiedBarItemView *)self _updateUsesShadowView];
  [(SFUnifiedBarItemView *)self setNeedsUpdateConstraints];

  [(SFUnifiedBarItemView *)self setNeedsLayout];
}

- (void)setItemsNeedEraserBasedCutoutBorder:(BOOL)a3
{
  if (self->_itemsNeedEraserBasedCutoutBorder != a3)
  {
    self->_itemsNeedEraserBasedCutoutBorder = a3;
    [(SFUnifiedBarItemView *)self _updateShowsCutoutBorder];
  }
}

- (void)_updateShowsCutoutBorder
{
  platterStyle = self->_platterStyle;
  v4 = platterStyle > 0xC;
  v5 = (1 << platterStyle) & 0x1C51;
  if (v4 || v5 == 0)
  {
    [(SFUnifiedBarItemView *)self _setShowsCutoutBorderEffects:!self->_itemsNeedEraserBasedCutoutBorder];
    itemsNeedEraserBasedCutoutBorder = self->_itemsNeedEraserBasedCutoutBorder;
  }

  else
  {
    [(SFUnifiedBarItemView *)self _setShowsCutoutBorderEffects:0];
    itemsNeedEraserBasedCutoutBorder = 0;
  }

  [(SFUnifiedBarItemView *)self _setShowsCutoutBorderEraser:itemsNeedEraserBasedCutoutBorder];
}

- (void)_layOutCutoutBorder
{
  [(SFUnifiedBarMetrics *)self->_barMetrics cutoutBorderWidth];
  v4 = v3;
  [(SFUnifiedBarItemView *)self bounds];
  v12 = CGRectInset(v11, -v4, -v4);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  [(_UIVisualEffectBackdropView *)self->_cutoutBorderCopyView setFrame:?];
  [(SFUnifiedBarItemPlatterView *)self->_cutoutBorderPlatterView setFrame:x, y, width, height];
  cutoutBorderEraserView = self->_cutoutBorderEraserView;

  [(UIView *)cutoutBorderEraserView setFrame:x, y, width, height];
}

- (void)_disableVibrancyIfNeededForTheme:(id)a3
{
  v4 = a3;
  v5 = [(SFThemeColorBarTheme *)self->_barTheme themeColor];
  if (v5)
  {
  }

  else
  {
    v6 = [v4 themeColor];

    if (v6)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __57__SFUnifiedBarItemView__disableVibrancyIfNeededForTheme___block_invoke;
      v7[3] = &unk_1E721B360;
      v7[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v7];
    }
  }
}

uint64_t __57__SFUnifiedBarItemView__disableVibrancyIfNeededForTheme___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHighlighted:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 888);
  v4 = *(v2 + 880);
  if (*(v2 + 851))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v2 isHighlighted];
  }

  v6 = backgroundColorForPlatterStyle(v3, v4, v5);
  v7 = [*(*(a1 + 32) + 800) contentView];
  [v7 setBackgroundColor:v6];

  v8 = *(*(a1 + 32) + 800);

  return [v8 setEffect:0];
}

- (void)_updatePlatterEffect
{
  [(SFUnifiedBarItemView *)self _updateHighlightColor];
  if (self->_platterStyle)
  {
    v3 = [(SFThemeColorBarTheme *)self->_barTheme themeColor];
    if (v3 || [(SFUnifiedBarTheme *)self->_barTheme isPrivate])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      platterStyle = self->_platterStyle;
      if (platterStyle > 0xD)
      {
        LOBYTE(v4) = 1;
      }

      else
      {
        v4 = 0x26u >> platterStyle;
      }
    }

    v5 = v4 & 1;
    if (self->_hovering)
    {
      v6 = 1;
    }

    else
    {
      v6 = [(SFUnifiedBarItemView *)self isHighlighted];
    }

    if (self->_shouldEnableCopyCutoutBorder)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    [(_UIVisualEffectBackdropView *)self->_cutoutBorderCopyView setRenderMode:v7];
    [(SFUnifiedBarItemPlatterView *)self->_cutoutBorderPlatterView setHidden:[(SFUnifiedBarItemView *)self _shouldEnablePlatterCutoutBorder]^ 1];
    [(SFUnifiedBarItemPlatterView *)self->_platterView setHidden:[(SFUnifiedBarItemView *)self _shouldHidePlatterView]];
    [(SFUnifiedBarItemView *)self _updateOverrideUserInterfaceStyle];
    [(SFUnifiedBarItemView *)self _updateBackgroundAlpha];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__SFUnifiedBarItemView__updatePlatterEffect__block_invoke;
    aBlock[3] = &unk_1E721B388;
    v21 = v4 & 1;
    aBlock[4] = self;
    v22 = v6;
    v8 = _Block_copy(aBlock);
    v9 = v8;
    lastAppliedPlatterStyle = self->_lastAppliedPlatterStyle;
    v11 = self->_platterStyle;
    v12 = lastAppliedPlatterStyle == v11;
    if (lastAppliedPlatterStyle == v11)
    {
      (*(v8 + 2))(v8);
    }

    v13 = MEMORY[0x1E69DD250];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __44__SFUnifiedBarItemView__updatePlatterEffect__block_invoke_2;
    v16[3] = &unk_1E721B3B0;
    v18 = v5;
    v19 = v12;
    v16[4] = self;
    v17 = v9;
    v14 = v9;
    [v13 performWithoutAnimation:v16];
    self->_lastAppliedPlatterStyle = self->_platterStyle;
  }
}

void __44__SFUnifiedBarItemView__updatePlatterEffect__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 888);
  if (*(a1 + 40) != 1)
  {
    v11 = backgroundColorForPlatterStyle(*(v2 + 888), *(v2 + 880), *(a1 + 41));
    v12 = v2;
    goto LABEL_22;
  }

  v4 = *(a1 + 41);
  v5 = _SFIsDarkTintStyle([*(v2 + 880) tintStyle]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 896);
  v8 = [*(v6 + 880) overrideBackdropEffect];
  v9 = v8;
  v10 = 0.0;
  if (v3 <= 0xD)
  {
    if (((1 << v3) & 0x3FD8) != 0)
    {
      goto LABEL_21;
    }

    if (v3 == 2)
    {
      if (v5)
      {
        if (v8)
        {
          v13 = 0.6;
          v14 = 0.45;
        }

        else
        {
          v13 = 0.4;
          v14 = 0.7;
        }

        goto LABEL_18;
      }

      if (!v8)
      {
        v13 = 0.45;
        v14 = 0.5;
        goto LABEL_18;
      }

LABEL_17:
      v14 = 0.35;
      v13 = 0.5;
LABEL_18:
      v10 = _SFInterpolate(v13, v14, v7);
      goto LABEL_19;
    }

    if (v3 == 5)
    {
      if (v5)
      {
        v10 = 0.4;
      }

      else
      {
        v10 = 0.2;
      }

LABEL_19:
      if (v4)
      {
        v10 = v10 + 0.2;
      }

      goto LABEL_21;
    }
  }

  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

LABEL_21:

  v15 = *(a1 + 32);
  v11 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:v10];
  v12 = v15;
LABEL_22:
  v16 = v11;
  [v12 _applyPlatterColor:?];
}

void __44__SFUnifiedBarItemView__updatePlatterEffect__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _applyThemeToPlatterView:*(*(a1 + 32) + 760)];
  [*(a1 + 32) _applyThemeToPlatterView:*(*(a1 + 32) + 792)];
  if ([*(*(a1 + 32) + 880) tintStyle] != 5)
  {
    if (*(a1 + 48))
    {
      v3 = MEMORY[0x1E69DD248];
      v2 = [*(*(a1 + 32) + 880) backdropEffect];
      v4 = *(*(a1 + 32) + 888);
      if (v4 > 0xD)
      {
        v5 = 5;
      }

      else
      {
        v5 = qword_18BC3D9E0[v4];
      }

      v6 = [v3 effectForBlurEffect:v2 style:v5];
      [*(*(a1 + 32) + 800) setEffect:v6];

      goto LABEL_10;
    }

LABEL_7:
    [*(*(a1 + 32) + 800) setEffect:0];
    goto LABEL_11;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    goto LABEL_7;
  }

  v2 = [MEMORY[0x1E69DD248] _sf_effectWithStyle:0 forBarTintStyle:5];
  [*(*(a1 + 32) + 800) setEffect:v2];
LABEL_10:

LABEL_11:
  if ((*(a1 + 49) & 1) == 0)
  {
    v7 = *(*(a1 + 40) + 16);

    v7();
  }
}

- (void)_applyThemeToPlatterView:(id)a3
{
  v4 = a3;
  barTheme = self->_barTheme;
  v10 = v4;
  v6 = [v4 effectView];
  [(SFThemeColorBarTheme *)barTheme applyBackdropEffectsToView:v6];

  v7 = [(SFThemeColorBarTheme *)self->_barTheme themeColor];

  if (v7)
  {
    v8 = [v10 effectView];
    v9 = [v8 contentView];
    [v9 setBackgroundColor:0];
  }
}

- (void)_applyPlatterColor:(id)a3
{
  v4 = a3;
  v5 = [(UIVisualEffectView *)self->_platterFillView contentView];
  v6 = v5;
  if (self->_platterStyle == 3)
  {
    v7 = [(SFUnifiedBarItemView *)self traitCollection];
    v8 = [v4 resolvedColorWithTraitCollection:v7];

    v16 = 0.0;
    [v8 getRed:0 green:0 blue:0 alpha:&v16];
    barBackgroundAlpha = 0.0;
    if (![(SFUnifiedBarTheme *)self->_barTheme isPrivate])
    {
      barBackgroundAlpha = self->_barBackgroundAlpha;
    }

    if (self->_hovering || [(SFUnifiedBarItemView *)self isHighlighted])
    {
      [v6 setBackgroundColor:v4];
    }

    else
    {
      v11 = [v8 colorWithAlphaComponent:(1.0 - barBackgroundAlpha) * v16];
      [v6 setBackgroundColor:v11];
    }

    v12 = [v8 colorWithAlphaComponent:barBackgroundAlpha * v16];
    v13 = [v12 CGColor];
    v14 = [v6 layer];
    [v14 setBorderColor:v13];

    v15 = [v6 layer];
    [v15 setBorderWidth:1.0];
  }

  else
  {
    [v5 setBackgroundColor:v4];
    v10 = [v6 layer];
    [v10 setBorderColor:0];

    v8 = [v6 layer];
    [v8 setBorderWidth:0.0];
  }
}

- (void)_updateOverrideUserInterfaceStyle
{
  if ([(SFUnifiedBarTheme *)self->_barTheme isPrivate])
  {
    platterStyle = self->_platterStyle;
    if ((platterStyle - 1) < 6 || platterStyle == 12)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  [(SFUnifiedBarItemView *)self setOverrideUserInterfaceStyle:v5];
  v6 = [(SFUnifiedBarItemView *)self glassView];
  [v6 setOverrideUserInterfaceStyle:v5];
}

- (void)setCutoutBorderCopyGroupName:(id)a3
{
  v7 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [v7 copy];
    cutoutBorderCopyGroupName = self->_cutoutBorderCopyGroupName;
    self->_cutoutBorderCopyGroupName = v4;

    v6 = [(_UIVisualEffectBackdropView *)self->_cutoutBorderCopyView captureGroup];
    [v6 setGroupName:v7];

    [(SFUnifiedBarItemSeparatorView *)self->_leadingSeparator setBackdropGroupName:v7];
    [(SFUnifiedBarItemSeparatorView *)self->_trailingSeparator setBackdropGroupName:v7];
  }
}

- (void)setBarBackgroundAlpha:(double)a3
{
  if (self->_barBackgroundAlpha != a3)
  {
    self->_barBackgroundAlpha = a3;
    [(SFUnifiedBarItemView *)self _updatePlatterEffect];
  }
}

- (void)setShouldEnableCopyCutoutBorder:(BOOL)a3
{
  if (self->_shouldEnableCopyCutoutBorder != a3)
  {
    self->_shouldEnableCopyCutoutBorder = a3;
    [(SFUnifiedBarItemView *)self _updatePlatterEffect];
  }
}

- (void)setThemeColorVisibility:(double)a3
{
  if (self->_themeColorVisibility != a3)
  {
    self->_themeColorVisibility = a3;
    [(SFUnifiedBarItemView *)self _updateBackgroundAlpha];
  }
}

- (void)_updateBackgroundAlpha
{
  v3 = [(SFThemeColorBarTheme *)self->_barTheme themeColor];
  v4 = SFBarBackgroundAlphaForSquishTransformFactor(self->_squishTransformFactor);
  if (v3)
  {
    v5 = _SFInterpolate(1.0 - 0.85, 0.0, self->_themeColorVisibility);
  }

  else
  {
    v5 = 1.0;
  }

  [(UIVisualEffectView *)self->_platterFillView setAlpha:v4];
  [(UIImageView *)self->_shadowView setAlpha:v4];
  v6 = [(SFUnifiedBarTheme *)self->_barTheme overridePlatterColor];
  v7 = v6;
  if (!v6 || (v8 = v6, (self->_platterStyle - 1) >= 5))
  {
    v8 = v3;
  }

  v9 = v8;
  v10 = [v9 colorWithAlphaComponent:v4];
  [(SFUnifiedBarItemPlatterView *)self->_platterView setBackgroundColor:v10];

  v11 = [(SFUnifiedBarItemPlatterView *)self->_platterView effectView];
  [v11 setAlpha:v4 * v5];

  v12 = ceil(v4);
  v13 = [v3 colorWithAlphaComponent:v12];

  [(SFUnifiedBarItemPlatterView *)self->_cutoutBorderPlatterView setBackgroundColor:v13];
  v14 = [(SFUnifiedBarItemPlatterView *)self->_cutoutBorderPlatterView effectView];
  [v14 setAlpha:v12 * v5];

  if (self->_squishTransformFactor >= 1.0)
  {
    [(SFUnifiedBarItemView *)self _updateSeparatorVisibility];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46__SFUnifiedBarItemView__updateBackgroundAlpha__block_invoke;
    v15[3] = &unk_1E721B360;
    v15[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v15];
  }
}

- (BOOL)_shouldHidePlatterView
{
  if (!self->_cutoutBorderPlatterView || ![(SFUnifiedBarItemView *)self _shouldEnablePlatterCutoutBorder])
  {
    return 0;
  }

  v3 = [(SFUnifiedBarTheme *)self->_barTheme overridePlatterColor];
  v4 = v3 == 0;

  return v4;
}

- (void)setSquishTransformFactor:(double)a3
{
  if (self->_squishTransformFactor != a3)
  {
    self->_squishTransformFactor = a3;
    [(SFUnifiedBarItemView *)self _updateContentAlpha];

    [(SFUnifiedBarItemView *)self _updateBackgroundAlpha];
  }
}

- (UIDragPreviewParameters)previewParameters
{
  v3 = objc_alloc_init(MEMORY[0x1E69DC9A0]);
  v4 = MEMORY[0x1E69DC728];
  [(SFUnifiedBarItemView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(SFUnifiedBarMetrics *)self->_barMetrics itemCornerRadius];
  v14 = [v4 bezierPathWithRoundedRect:v6 cornerRadius:{v8, v10, v12, v13}];
  [v3 setVisiblePath:v14];

  v15 = [(SFThemeColorBarTheme *)self->_barTheme themeColor];
  v16 = [v15 colorWithAlphaComponent:1.0];
  if (v16)
  {
    [v3 setBackgroundColor:v16];
  }

  else
  {
    v17 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    v18 = [(SFUnifiedBarItemView *)self traitCollection];
    v19 = [v17 resolvedColorWithTraitCollection:v18];
    [v3 setBackgroundColor:v19];
  }

  return v3;
}

- (void)updateCornerRadius
{
  maxXMaxY = self->_cornerRadii.maxXMaxY;
  minXMaxY = self->_cornerRadii.minXMaxY;
  v48 = maxXMaxY;
  minXMinY = self->_cornerRadii.minXMinY;
  v6 = self->_cornerRadii.minXMaxY;
  v5 = self->_cornerRadii.maxXMaxY;
  maxXMinY = self->_cornerRadii.maxXMinY;
  v50 = minXMinY;
  v43 = v6;
  v44 = v5;
  v7 = self->_cornerRadii.minXMinY;
  v45 = self->_cornerRadii.maxXMinY;
  v46 = v7;
  v8 = [(SFUnifiedBarItemView *)self layer];
  [v8 setCornerRadii:&v43];

  v9 = [(UIView *)self->_contentView layer];
  v43 = minXMaxY;
  v44 = v48;
  v45 = maxXMinY;
  v46 = v50;
  [v9 setCornerRadii:&v43];

  v10 = [(UIView *)self->_filterView layer];
  v43 = minXMaxY;
  v44 = v48;
  v45 = maxXMinY;
  v46 = v50;
  [v10 setCornerRadii:&v43];

  v11 = [(UIView *)self->_highlightView layer];
  v43 = minXMaxY;
  v44 = v48;
  v45 = maxXMinY;
  v46 = v50;
  [v11 setCornerRadii:&v43];

  if (self->_platterStyle == 6 && !UIAccessibilityButtonShapesEnabled())
  {
    p_minXMaxY = MEMORY[0x1E6979288];
  }

  else
  {
    p_minXMaxY = &minXMaxY;
  }

  v13 = p_minXMaxY[1];
  v39 = *p_minXMaxY;
  v40 = v13;
  v14 = p_minXMaxY[3];
  v41 = p_minXMaxY[2];
  v42 = v14;
  v15 = [(SFUnifiedBarItemPlatterView *)self->_platterView layer];
  v43 = v39;
  v44 = v40;
  v45 = v41;
  v46 = v42;
  [v15 setCornerRadii:&v43];

  v16 = [(UIVisualEffectView *)self->_platterFillView layer];
  v43 = minXMaxY;
  v44 = v48;
  v45 = maxXMinY;
  v46 = v50;
  [v16 setCornerRadii:&v43];

  v45 = 0;
  v46 = 0;
  v43 = 0u;
  v44 = 0;
  if (self->_platterStyle == 7)
  {
    v17 = *(MEMORY[0x1E6979288] + 16);
    v43 = *MEMORY[0x1E6979288];
    v44 = v17;
    v18 = *(MEMORY[0x1E6979288] + 48);
    v45 = *(MEMORY[0x1E6979288] + 32);
    v46 = v18;
  }

  else
  {
    [(SFUnifiedBarMetrics *)self->_barMetrics cutoutBorderWidth];
    v35 = minXMaxY;
    v36 = v48;
    v37 = maxXMinY;
    v38 = v50;
    SFOutsetCACornerRadii(&v35, &v43, v19);
  }

  v31 = v43;
  v32 = v44;
  v33 = v45;
  v34 = v46;
  v20 = [(_UIVisualEffectBackdropView *)self->_cutoutBorderCopyView layer];
  v35 = v31;
  v36 = v32;
  v37 = v33;
  v38 = v34;
  [v20 setCornerRadii:&v35];

  v27 = v43;
  v28 = v44;
  v29 = v45;
  v30 = v46;
  v21 = [(SFUnifiedBarItemPlatterView *)self->_cutoutBorderPlatterView layer];
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  [v21 setCornerRadii:&v35];

  v23 = v43;
  v24 = v44;
  v25 = v45;
  v26 = v46;
  v22 = [(UIView *)self->_cutoutBorderEraserView layer];
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  [v22 setCornerRadii:&v35];
}

- (void)setCornerRadii:(CACornerRadii *)a3
{
  p_cornerRadii = &self->_cornerRadii;
  cornerRadii = self->_cornerRadii;
  v9 = *a3;
  if ((CACornerRadiiEqualToRadii() & 1) == 0)
  {
    minXMaxY = a3->minXMaxY;
    maxXMaxY = a3->maxXMaxY;
    minXMinY = a3->minXMinY;
    p_cornerRadii->maxXMinY = a3->maxXMinY;
    p_cornerRadii->minXMinY = minXMinY;
    p_cornerRadii->minXMaxY = minXMaxY;
    p_cornerRadii->maxXMaxY = maxXMaxY;
    [(SFUnifiedBarItemView *)self updateCornerRadius:*&v9.minXMaxY];
  }
}

- (void)_updateContentAlpha
{
  contentAlpha = self->_contentAlpha;
  v4 = contentAlpha * SFBarContentAlphaForSquishTransformFactor(self->_squishTransformFactor);
  if (!self->_platterStyle && [(SFUnifiedBarItemView *)self isHighlighted])
  {
    v4 = v4 * dbl_18BC3D930[[(SFThemeColorBarTheme *)self->_barTheme userInterfaceStyle]== 2];
  }

  [(UIView *)self->_contentView setAlpha:v4];
  v5 = [(SFUnifiedBarItemView *)self _titleView];
  [v5 setAlpha:v4];
}

- (void)setContentAlpha:(double)a3
{
  if (self->_contentAlpha != a3)
  {
    self->_contentAlpha = a3;
    [(SFUnifiedBarItemView *)self _updateContentAlpha];
  }
}

- (void)setContentBlurRadius:(double)a3
{
  if (self->_contentBlurRadius != a3)
  {
    self->_contentBlurRadius = a3;
    v5 = [(UIView *)self->_contentView layer];
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v5 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }
}

- (void)_layOutContentView
{
  if (![(SFUnifiedBarItemView *)self _relinquishedGlassView])
  {
    glassView = self->_glassView;
    [(SFUnifiedBarItemView *)self bounds];
    if (glassView)
    {
      [(UIView *)glassView convertRect:self fromView:?];
    }

    contentView = self->_contentView;

    [(UIView *)contentView setFrame:?];
  }
}

- (void)_applyFilters
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [(SFUnifiedBarItemView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];
  v5 = [(SFUnifiedBarItemView *)self traitCollection];
  v6 = [v5 accessibilityContrast];
  if (v4 == 2)
  {
    if (v6 == 1)
    {
      if (darkModeHighContrastFilter_onceToken != -1)
      {
        [SFUnifiedBarItemView _applyFilters];
      }

      v7 = &darkModeHighContrastFilter_filter;
    }

    else
    {
      if (darkModeFilter_onceToken != -1)
      {
        [SFUnifiedBarItemView _applyFilters];
      }

      v7 = &darkModeFilter_filter;
    }
  }

  else if (v6 == 1)
  {
    if (lightModeHighContrastFilter_onceToken != -1)
    {
      [SFUnifiedBarItemView _applyFilters];
    }

    v7 = &lightModeHighContrastFilter_filter;
  }

  else
  {
    if (lightModeFilter_onceToken != -1)
    {
      [SFUnifiedBarItemView _applyFilters];
    }

    v7 = &lightModeFilter_filter;
  }

  v12[0] = *v7;
  v8 = MEMORY[0x1E695DEC8];
  v9 = v12[0];
  v10 = [v8 arrayWithObjects:v12 count:1];
  v11 = [(UIView *)self->_filterView layer];

  [v11 setFilters:v10];
}

- (void)_setHasFilterView:(BOOL)a3
{
  filterView = self->_filterView;
  if ((((filterView == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = objc_alloc(MEMORY[0x1E69DD250]);
      [(SFUnifiedBarItemView *)self bounds];
      v6 = [v5 initWithFrame:?];
      v7 = self->_filterView;
      self->_filterView = v6;

      [(UIView *)self->_filterView setAutoresizingMask:18];
      v8 = [MEMORY[0x1E69DC888] blackColor];
      [(UIView *)self->_filterView setBackgroundColor:v8];

      [(SFUnifiedBarItemView *)self insertSubview:self->_filterView belowSubview:self->_contentView];
      [(SFUnifiedBarItemView *)self _applyFilters];
      v13 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
      v9 = [(SFUnifiedBarItemView *)self registerForTraitChanges:v13 withAction:sel__applyFilters];
      filterTraitChangeRegistration = self->_filterTraitChangeRegistration;
      self->_filterTraitChangeRegistration = v9;

      v11 = v13;
    }

    else
    {
      [(UIView *)filterView removeFromSuperview];
      v12 = self->_filterView;
      self->_filterView = 0;

      [(SFUnifiedBarItemView *)self unregisterForTraitChanges:self->_filterTraitChangeRegistration];
      v11 = self->_filterTraitChangeRegistration;
      self->_filterTraitChangeRegistration = 0;
    }
  }
}

- (void)_applyGlass
{
  platterStyle = self->_platterStyle;
  if (platterStyle == 12)
  {
    [(UIView *)self safari_setFlexibleGlassBackgroundEnabled:0];
    glassView = self->_glassView;
    v6 = [(_SFBarTheme *)self->_barTheme glassURLFieldTintColor];
    [(UIView *)glassView safari_setFlexibleGlassBackgroundEnabled:1 withTintColor:v6];

    v7 = [(_SFBarTheme *)self->_barTheme glassURLFieldUserInterfaceStyle];
    contentView = self->_contentView;

    [(UIView *)contentView setOverrideUserInterfaceStyle:v7];
  }

  else if (platterStyle == 11)
  {
    [(UIView *)self safari_setTabGlassBackgroundEnabled:1];
    v4 = self->_glassView;

    [(UIView *)v4 safari_setGlassBackgroundEnabled:0];
  }

  else
  {
    [(UIView *)self safari_setFlexibleGlassBackgroundEnabled:platterStyle == 10];
    v9 = self->_glassView;

    [(UIView *)v9 safari_setFlexibleGlassBackgroundEnabled:0];
  }
}

- (BOOL)_relinquishedGlassView
{
  glassView = self->_glassView;
  if (glassView)
  {
    LOBYTE(glassView) = ![(UIView *)glassView isDescendantOfView:self];
  }

  return glassView;
}

- (void)_layOutGlass
{
  if (![(SFUnifiedBarItemView *)self _relinquishedGlassView])
  {
    [(SFUnifiedBarItemView *)self squishedGlassFrame];
    x = v19.origin.x;
    y = v19.origin.y;
    width = v19.size.width;
    height = v19.size.height;
    if (CGRectIsNull(v19))
    {
      [(SFUnifiedBarItemView *)self bounds];
      [(UIView *)self->_glassView setFrame:?];
      [(SFUnifiedBarItemView *)self cornerRadii];
      v7 = [(UIView *)self->_glassView layer];
      v17[0] = v17[4];
      v17[1] = v17[5];
      v17[2] = v17[6];
      v17[3] = v17[7];
      [v7 setCornerRadii:v17];
    }

    else
    {
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v8 = CGRectGetWidth(v20);
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      v9 = fmin(v8, CGRectGetHeight(v21)) * 0.5;
      [(SFUnifiedBarItemView *)self bounds];
      [(UIView *)self->_glassView setFrame:SFInterpolateRect(x, y, width, height, v10, v11, v12, v13, self->_squishTransformFactor)];
      [(SFUnifiedBarMetrics *)self->_barMetrics itemCornerRadius];
      v15 = _SFInterpolate(v9, v14, self->_squishTransformFactor);
      glassView = self->_glassView;

      [(UIView *)glassView _setContinuousCornerRadius:v15];
    }
  }
}

- (void)_setShowsGlass:(BOOL)a3
{
  if ((((self->_glassView == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v4 = [SFCommandForwardingView alloc];
      [(SFUnifiedBarItemView *)self bounds];
      v5 = [(SFCommandForwardingView *)v4 initWithFrame:?];
      glassView = self->_glassView;
      self->_glassView = v5;

      v7 = *MEMORY[0x1E69796E8];
      v8 = [(UIView *)self->_glassView layer];
      [v8 setCornerCurve:v7];

      [(SFUnifiedBarItemView *)self _applyGlass];
      [(SFUnifiedBarItemView *)self addSubview:self->_glassView];
      [(UIView *)self->_glassView addSubview:self->_contentView];
    }

    else
    {
      [(SFUnifiedBarItemView *)self addSubview:self->_contentView];
      [(UIView *)self safari_setFlexibleGlassBackgroundEnabled:0];
      [(UIView *)self->_glassView removeFromSuperview];
      v9 = self->_glassView;
      self->_glassView = 0;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__SFUnifiedBarItemView__setShowsGlass___block_invoke;
    v10[3] = &unk_1E721B360;
    v10[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
  }
}

uint64_t __39__SFUnifiedBarItemView__setShowsGlass___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layOutGlass];
  v2 = *(a1 + 32);

  return [v2 _layOutContentView];
}

- (CGRect)squishedGlassFrame
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)_setHasHighlightView:(BOOL)a3
{
  highlightView = self->_highlightView;
  if (a3)
  {
    if (!highlightView)
    {
      v5 = objc_alloc(MEMORY[0x1E69DD250]);
      [(SFUnifiedBarItemView *)self bounds];
      v6 = [v5 initWithFrame:?];
      v7 = self->_highlightView;
      self->_highlightView = v6;

      [(UIView *)self->_highlightView setAutoresizingMask:18];
      v8 = self->_highlightView;
      contentView = self->_contentView;

      [(SFUnifiedBarItemView *)self insertSubview:v8 belowSubview:contentView];
    }
  }

  else if (highlightView)
  {
    [(UIView *)highlightView removeFromSuperview];
    v10 = self->_highlightView;
    self->_highlightView = 0;
  }
}

- (void)_updateHighlightColor
{
  if (self->_highlightView)
  {
    if (self->_hovering || ([(SFUnifiedBarItemView *)self isHighlighted]& 1) != 0)
    {
      v4 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      [(UIView *)self->_highlightView setBackgroundColor:v4];
    }

    else
    {
      highlightView = self->_highlightView;

      [(UIView *)highlightView setBackgroundColor:0];
    }
  }
}

- (void)_setUsesShadowView:(BOOL)a3
{
  shadowView = self->_shadowView;
  if ((((shadowView == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
      if (shadowImage_onceToken != -1)
      {
        [SFUnifiedBarItemView _setUsesShadowView:];
      }

      v6 = shadowImage_image;
      v7 = [v5 initWithImage:v6];
      v8 = self->_shadowView;
      self->_shadowView = v7;

      [(SFUnifiedBarItemView *)self insertSubview:self->_shadowView belowSubview:self->_platterView];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __43__SFUnifiedBarItemView__setUsesShadowView___block_invoke;
      v10[3] = &unk_1E721B360;
      v10[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
    }

    else
    {
      [(UIImageView *)shadowView removeFromSuperview];
      v9 = self->_shadowView;
      self->_shadowView = 0;
    }
  }
}

uint64_t __43__SFUnifiedBarItemView__setUsesShadowView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateBackgroundAlpha];
  v2 = *(a1 + 32);

  return [v2 _layOutShadowView];
}

- (void)_layOutShadowView
{
  v3 = [(UIImageView *)self->_shadowView image];
  [v3 scale];
  v5 = v4;

  [(SFUnifiedBarItemView *)self bounds];
  v10 = -56.0;
  if (v5 == 2.0)
  {
    v10 = -36.0;
  }

  v13 = CGRectInset(*&v6, v10, v10);
  shadowView = self->_shadowView;

  [(UIImageView *)shadowView setFrame:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
}

- (void)setShowsSeparators:(BOOL)a3
{
  if (self->_showsSeparators != a3)
  {
    self->_showsSeparators = a3;
    if (a3)
    {
      v4 = [(SFUnifiedBarItemView *)self _makeSeparator];
      leadingSeparator = self->_leadingSeparator;
      self->_leadingSeparator = v4;

      v6 = [(SFUnifiedBarItemView *)self _makeSeparator];
      trailingSeparator = self->_trailingSeparator;
      self->_trailingSeparator = v6;

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __43__SFUnifiedBarItemView_setShowsSeparators___block_invoke;
      v10[3] = &unk_1E721B360;
      v10[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
    }

    else
    {
      [(SFUnifiedBarItemSeparatorView *)self->_leadingSeparator removeFromSuperview];
      v8 = self->_leadingSeparator;
      self->_leadingSeparator = 0;

      [(SFUnifiedBarItemSeparatorView *)self->_trailingSeparator removeFromSuperview];
      v9 = self->_trailingSeparator;
      self->_trailingSeparator = 0;
    }
  }
}

uint64_t __43__SFUnifiedBarItemView_setShowsSeparators___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateBackgroundAlpha];
  [*(a1 + 32) _updateSeparatorVisibility];
  v2 = *(a1 + 32);

  return [v2 _layOutSeparators];
}

- (void)setVisibleSeparatorEdges:(unint64_t)a3
{
  if (self->_visibleSeparatorEdges != a3)
  {
    self->_visibleSeparatorEdges = a3;
    [(SFUnifiedBarItemView *)self _updateSeparatorVisibility];
  }
}

- (void)_updateSeparatorVisibility
{
  if (self->_showsSeparators)
  {
    v9[7] = v5;
    v9[8] = v4;
    v9[11] = v2;
    v9[12] = v3;
    v7 = SFBarBackgroundAlphaForSquishTransformFactor(self->_squishTransformFactor);
    if (UIAccessibilityButtonShapesEnabled())
    {
      visibleSeparatorEdges = 0;
    }

    else
    {
      visibleSeparatorEdges = self->_visibleSeparatorEdges;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __50__SFUnifiedBarItemView__updateSeparatorVisibility__block_invoke;
    v9[3] = &unk_1E721B3D8;
    v9[4] = self;
    v9[5] = visibleSeparatorEdges;
    *&v9[6] = v7;
    [MEMORY[0x1E69DD250] animateWithDuration:50331744 delay:v9 options:0 animations:0.2 completion:0.0];
  }
}

uint64_t __50__SFUnifiedBarItemView__updateSeparatorVisibility__block_invoke(uint64_t a1)
{
  v2 = 0.0;
  v3 = 0.0;
  if ((*(a1 + 40) & 2) != 0)
  {
    v3 = *(a1 + 48);
  }

  [*(*(a1 + 32) + 824) setAlpha:v3];
  if ((*(a1 + 40) & 8) != 0)
  {
    v2 = *(a1 + 48);
  }

  v4 = *(*(a1 + 32) + 832);

  return [v4 setAlpha:v2];
}

- (void)setSeparatorOutset:(double)a3
{
  if (self->_separatorOutset != a3)
  {
    self->_separatorOutset = a3;
    [(SFUnifiedBarItemView *)self setNeedsUpdateConstraints];

    [(SFUnifiedBarItemView *)self setNeedsLayout];
  }
}

- (void)setSeparatorVerticalInset:(double)a3
{
  if (self->_separatorVerticalInset != a3)
  {
    self->_separatorVerticalInset = a3;
    [(SFUnifiedBarItemView *)self setNeedsLayout];
  }
}

- (id)_makeSeparator
{
  v3 = objc_alloc_init(SFUnifiedBarItemSeparatorView);
  v4 = MEMORY[0x1E69DD250];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __38__SFUnifiedBarItemView__makeSeparator__block_invoke;
  v11 = &unk_1E721B400;
  v5 = v3;
  v12 = v5;
  v13 = self;
  [v4 performWithoutAnimation:&v8];
  [(SFUnifiedBarItemView *)self addSubview:v5, v8, v9, v10, v11];
  v6 = v5;

  return v5;
}

uint64_t __38__SFUnifiedBarItemView__makeSeparator__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] sf_tabSeparatorColor];
  v3 = [*(a1 + 32) fillView];
  [v3 setBackgroundColor:v2];

  +[SFUnifiedBarMetrics separatorWidth];
  [*(a1 + 32) _setCornerRadius:v4 * 0.5];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 992);

  return [v5 setBackdropGroupName:v6];
}

- (void)_layOutSeparators
{
  [(SFUnifiedBarItemView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIView *)self _sf_usesLeftToRightLayout];
  +[SFUnifiedBarMetrics separatorWidth];
  v13 = v12;
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v14 = fmax(CGRectGetHeight(v21) + self->_separatorVerticalInset * -2.0, 0.0);
  v15 = _SFCeilingFloatToPixels(self->_separatorOutset);
  [(SFUnifiedBarItemSeparatorView *)self->_leadingSeparator setFrame:_SFFlipRectInCoordinateSpace(!v11, -v13 - v15, self->_separatorVerticalInset, v13, v14, v4, v6, v8, v10)];
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  MaxX = CGRectGetMaxX(v22);
  v17 = _SFFloorFloatToPixels(self->_separatorOutset);
  v18 = _SFFlipRectInCoordinateSpace(!v11, MaxX + v17, self->_separatorVerticalInset, v13, v14, v4, v6, v8, v10);
  trailingSeparator = self->_trailingSeparator;

  [(SFUnifiedBarItemSeparatorView *)trailingSeparator setFrame:v18];
}

- (void)reclaimGlassView
{
  glassView = self->_glassView;
  [(UIView *)glassView bounds];
  [(UIView *)glassView convertRect:self toView:?];
  [(UIView *)self->_glassView setFrame:?];
  v4 = self->_glassView;

  [(SFUnifiedBarItemView *)self addSubview:v4];
}

- (void)_buttonShapesEnabledDidChange
{
  [(SFUnifiedBarItemView *)self _updateShowsCutoutBorder];
  [(SFUnifiedBarItemView *)self _updatePlatterEffect];
  [(SFUnifiedBarItemView *)self _updateSeparatorVisibility];
  [(SFUnifiedBarItemView *)self setNeedsUpdateConstraints];

  [(SFUnifiedBarItemView *)self setNeedsLayout];
}

- (SFUnifiedBarItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (CACornerRadii)cornerRadii
{
  v3 = *&self[15].minXMinY.height;
  retstr->minXMaxY = *&self[15].maxXMinY.height;
  retstr->maxXMaxY = v3;
  v4 = *&self[16].maxXMaxY.height;
  retstr->maxXMinY = *&self[16].minXMaxY.height;
  retstr->minXMinY = v4;
  return self;
}

@end