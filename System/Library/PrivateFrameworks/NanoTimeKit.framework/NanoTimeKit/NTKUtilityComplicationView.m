@interface NTKUtilityComplicationView
+ (id)_alarmImageProviderActive:(BOOL)a3;
+ (id)_stopwatchImageProvider;
+ (id)_timerImageProvider;
+ (id)largeComplicationViewForType:(unint64_t)a3 narrow:(BOOL)a4;
+ (id)smallComplicationViewForType:(unint64_t)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)shouldUsePlatterInset;
- (CDComplicationDisplayObserver)displayObserver;
- (CGSize)maxSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NTKUtilityComplicationView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)touchEdgeInsets;
- (double)foregroundAlpha;
- (id)_backgroundPlatterImage;
- (id)_newDigitalTimeLabelSubviewWithOptions:(unint64_t)a3;
- (id)_newHighlightViewVariant:(unint64_t)a3;
- (id)_newImageViewSubview;
- (id)_newImageViewSubviewWithAlpha:(double)a3;
- (id)_newLabelSubviewWithFont:(id)a3 variant:(unint64_t)a4;
- (id)_newStandardLabelSubviewVariant:(unint64_t)a3;
- (id)_smallCapsFont;
- (id)_standardFont;
- (void)_applyColorScheme:(id)a3;
- (void)_updateForTemplateChange;
- (void)_updateForegroundAlpha;
- (void)_updateForegroundColor;
- (void)_updateForegroundImageAlpha;
- (void)_updateImageViewAlpha:(id)a3;
- (void)_updateImageViewColor:(id)a3;
- (void)_updateLabelsForFontChange;
- (void)applyFaceColorPalette:(id)a3 units:(unint64_t)a4;
- (void)applyTransitionFraction:(double)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5 units:(unint64_t)a6 brightenedUnits:(unint64_t)a7;
- (void)layoutLabelVertically:(id)a3;
- (void)layoutSubviews;
- (void)setAlwaysEnforcePlatterInset:(BOOL)a3;
- (void)setComplicationTemplate:(id)a3 reason:(int64_t)a4;
- (void)setEditing:(BOOL)a3;
- (void)setFont:(id)a3;
- (void)setFontSize:(double)a3;
- (void)setFontWeight:(double)a3;
- (void)setForegroundAlpha:(double)a3;
- (void)setForegroundColor:(id)a3;
- (void)setForegroundImageAlpha:(double)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMaxSize:(CGSize)a3;
- (void)setPlacement:(unint64_t)a3;
- (void)setPlatterColor:(id)a3;
- (void)setShadowColor:(id)a3;
- (void)setShouldUseBackgroundPlatter:(BOOL)a3;
- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4;
- (void)setUseRoundedFontDesign:(BOOL)a3;
- (void)setUsesLegibility:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation NTKUtilityComplicationView

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKUtilityComplicationView;
  [(NTKUtilityComplicationView *)&v4 traitCollectionDidChange:a3];
  [(NTKUtilityComplicationView *)self setNeedsLayout];
}

+ (id)smallComplicationViewForType:(unint64_t)a3
{
  if (a3)
  {
    v3 = objc_alloc_init(0);
  }

  else
  {
    v3 = objc_alloc_init(NTKUtilityComplicationView);
    v4 = [(NTKUtilityComplicationView *)v3 device];
    ___LayoutConstants_block_invoke_70(v4, v6);
    [(NTKUtilityComplicationView *)v3 setMinimumWidth:v7];

    [(NTKUtilityComplicationView *)v3 setHidden:1];
  }

  return v3;
}

+ (id)largeComplicationViewForType:(unint64_t)a3 narrow:(BOOL)a4
{
  if (a3)
  {
    if (!a4 || (v4 = objc_alloc_init(0)) == 0)
    {
      v4 = objc_alloc_init(0);
    }
  }

  else
  {
    v4 = objc_alloc_init(NTKUtilityComplicationView);
    v5 = [(NTKUtilityComplicationView *)v4 device];
    ___LayoutConstants_block_invoke_70(v5, v7);
    [(NTKUtilityComplicationView *)v4 setMinimumWidth:v8];

    [(NTKUtilityComplicationView *)v4 setHidden:1];
  }

  return v4;
}

- (NTKUtilityComplicationView)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = NTKUtilityComplicationView;
  v3 = [(NTKUtilityComplicationView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    v5 = [v4 device];
    [(NTKUtilityComplicationView *)v3 setDevice:v5];

    v6 = [(NTKUtilityComplicationView *)v3 device];
    v3->_foregroundAlpha = 0.7;

    v7 = [(NTKUtilityComplicationView *)v3 device];
    v3->_foregroundImageAlpha = 0.7;

    v8 = [(NTKUtilityComplicationView *)v3 device];
    ___LayoutConstants_block_invoke_70(v8, v22);
    v3->_minimumWidth = v23;

    v3->_maxSize = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v9 = [(NTKUtilityComplicationView *)v3 _standardFont];
    font = v3->_font;
    v3->_font = v9;

    v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:*off_27877BE58];
    shadowColor = v3->_shadowColor;
    v3->_shadowColor = v11;

    v13 = [MEMORY[0x277D75348] whiteColor];
    foregroundColor = v3->_foregroundColor;
    v3->_foregroundColor = v13;

    v15 = NTKUtilityComplicationPlatterColor();
    platterColor = v3->_platterColor;
    v3->_platterColor = v15;

    v3->_fontWeight = *MEMORY[0x277D74418];
    v17 = [(NTKUtilityComplicationView *)v3 device];
    ___LayoutConstants_block_invoke_70(v17, v21);
    v3->_fontSize = v21[0];

    v18 = [(NTKUtilityComplicationView *)v3 _newHighlightView];
    highlightView = v3->_highlightView;
    v3->_highlightView = v18;

    v3->_useAlternativePunctuation = 1;
    [(NTKUtilityComplicationView *)v3 _computeForegroundColor];
    [(NTKUtilityComplicationView *)v3 _computePlatterColor];
    [(NTKUtilityComplicationView *)v3 _computeForegroundAlpha];
    [(NTKUtilityComplicationView *)v3 _computeForegroundImageAlpha];
  }

  return v3;
}

- (void)_updateForegroundColor
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__NTKUtilityComplicationView__updateForegroundColor__block_invoke;
  v7[3] = &unk_278782C88;
  v7[4] = self;
  [(NTKUtilityComplicationView *)self _enumerateColoringViewsWithBlock:v7];
  computedForegroundColor = self->_computedForegroundColor;
  v4 = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(v4, v6);
  v5 = [(UIColor *)computedForegroundColor colorWithAlphaComponent:v6[17]];

  if ([(NTKUtilityComplicationView *)self textLayoutStyle]== 1 || [(NTKUtilityComplicationView *)self textLayoutStyle]== 2)
  {
    [(UIView *)self->_highlightView setTintColor:v5];
  }

  else
  {
    [(UIView *)self->_highlightView setBackgroundColor:v5];
  }
}

- (double)foregroundAlpha
{
  if (!self->_highlighted)
  {
    return self->_foregroundAlpha;
  }

  [(NTKUtilityComplicationView *)self device];

  return 1.0;
}

- (void)setForegroundAlpha:(double)a3
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_foregroundAlpha = a3;
    [(NTKUtilityComplicationView *)self _computeForegroundAlpha];

    [(NTKUtilityComplicationView *)self _updateForegroundAlpha];
  }
}

- (void)_updateForegroundAlpha
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__NTKUtilityComplicationView__updateForegroundAlpha__block_invoke;
  v3[3] = &unk_278782C88;
  v3[4] = self;
  [(NTKUtilityComplicationView *)self _enumerateColoringViewsWithBlock:v3];
  [(NTKUtilityComplicationView *)self _applyForegroundAlpha];
}

void __52__NTKUtilityComplicationView__updateForegroundAlpha__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 conformsToProtocol:&unk_28A87A610] & 1) == 0)
  {
    [v3 setAlpha:*(*(a1 + 32) + 456)];
  }
}

- (void)setPlatterColor:(id)a3
{
  v5 = a3;
  if ((NTKEqualObjects(v5, self->_platterColor) & 1) == 0)
  {
    objc_storeStrong(&self->_platterColor, a3);
    [(NTKUtilityComplicationView *)self _computePlatterColor];
    [(NTKUtilityComplicationView *)self _updatePlatterColor];
  }
}

- (void)setForegroundImageAlpha:(double)a3
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_foregroundImageAlpha = a3;

    [(NTKUtilityComplicationView *)self _computeForegroundImageAlpha];
  }
}

- (void)_updateForegroundImageAlpha
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__NTKUtilityComplicationView__updateForegroundImageAlpha__block_invoke;
  v2[3] = &unk_2787871B0;
  v2[4] = self;
  [(NTKUtilityComplicationView *)self _enumerateColoringStackedImagesViewsWithBlock:v2];
}

- (void)setForegroundColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_foregroundColor] & 1) == 0)
  {
    objc_storeStrong(&self->_foregroundColor, a3);
    [(NTKUtilityComplicationView *)self _computeForegroundColor];
    [(NTKUtilityComplicationView *)self _updateForegroundColor];
  }
}

- (void)setShadowColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_shadowColor] & 1) == 0)
  {
    objc_storeStrong(&self->_shadowColor, a3);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__NTKUtilityComplicationView_setShadowColor___block_invoke;
    v6[3] = &unk_278782C88;
    v7 = v5;
    [(NTKUtilityComplicationView *)self _enumerateColoringViewsWithBlock:v6];
  }
}

void __45__NTKUtilityComplicationView_setShadowColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_28A8911D8])
  {
    [v3 setShadowColor:*(a1 + 32)];
  }
}

- (void)applyFaceColorPalette:(id)a3 units:(unint64_t)a4
{
  v6 = a3;
  v7 = [(NTKUtilityComplicationView *)self device];
  v8 = [NTKFaceColorScheme colorSchemeForDevice:v7 withFaceColorPalette:v6 units:a4];

  [(NTKUtilityComplicationView *)self _applyColorScheme:v8];
  v9 = [v6 isMulticolor];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__NTKUtilityComplicationView_applyFaceColorPalette_units___block_invoke;
  v10[3] = &__block_descriptor_33_e35_v16__0__UIView_CLKUIColoringView__8l;
  v11 = v9;
  [(NTKUtilityComplicationView *)self _enumerateColoringViewsWithBlock:v10];
}

void __58__NTKUtilityComplicationView_applyFaceColorPalette_units___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = 1.0;
    if (*(a1 + 32))
    {
      v3 = 0.0;
    }

    [v4 transitionToMonochromeWithFraction:v3];
  }
}

- (void)applyTransitionFraction:(double)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5 units:(unint64_t)a6 brightenedUnits:(unint64_t)a7
{
  v12 = a5;
  v13 = a4;
  v14 = [(NTKUtilityComplicationView *)self device];
  LOBYTE(v17) = 0;
  v15 = [NTKFaceColorScheme interpolationForDevice:v14 fromFaceColorPalette:v13 toFaceColorPalette:v12 fraction:a6 units:a7 brightenUnits:0 overrideColor:a3 alternateHighlight:v17];
  [(NTKUtilityComplicationView *)self _applyColorScheme:v15];

  [v13 isMulticolor];
  [v12 isMulticolor];

  CLKInterpolateBetweenFloatsClipped();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __116__NTKUtilityComplicationView_applyTransitionFraction_fromFaceColorPalette_toFaceColorPalette_units_brightenedUnits___block_invoke;
  v18[3] = &__block_descriptor_40_e35_v16__0__UIView_CLKUIColoringView__8l;
  v18[4] = v16;
  [(NTKUtilityComplicationView *)self _enumerateColoringViewsWithBlock:v18];
}

void __116__NTKUtilityComplicationView_applyTransitionFraction_fromFaceColorPalette_toFaceColorPalette_units_brightenedUnits___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v3 transitionToMonochromeWithFraction:*(a1 + 32)];
  }
}

- (void)_applyColorScheme:(id)a3
{
  objc_storeStrong(&self->_colorScheme, a3);
  v5 = a3;
  v6 = [v5 foregroundColor];
  [(NTKUtilityComplicationView *)self setForegroundColor:v6];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__NTKUtilityComplicationView__applyColorScheme___block_invoke;
  v7[3] = &unk_2787871B0;
  v7[4] = self;
  [(NTKUtilityComplicationView *)self _enumerateColoringStackedImagesViewsWithBlock:v7];
}

- (void)setUsesLegibility:(BOOL)a3
{
  if (self->_usesLegibility != a3)
  {
    v7 = v3;
    v8 = v4;
    self->_usesLegibility = a3;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__NTKUtilityComplicationView_setUsesLegibility___block_invoke;
    v5[3] = &__block_descriptor_33_e35_v16__0__UIView_CLKUIColoringView__8l;
    v6 = a3;
    [(NTKUtilityComplicationView *)self _enumerateColoringViewsWithBlock:v5];
  }
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if ((NTKEqualObjects(v5, self->_font) & 1) == 0)
  {
    objc_storeStrong(&self->_font, a3);
    v6 = [objc_opt_class() _preferredAdditionalFontSettings];
    if (v6)
    {
      v7 = [(CLKFont *)self->_font CLKFontByApplyingFeatureSettings:v6];
      font = self->_font;
      self->_font = v7;
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__NTKUtilityComplicationView_setFont___block_invoke;
    v9[3] = &unk_278782C88;
    v9[4] = self;
    [(NTKUtilityComplicationView *)self _enumerateColoringViewsWithBlock:v9];
  }
}

void __38__NTKUtilityComplicationView_setFont___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setFont:*(*(a1 + 32) + 424)];
  }
}

- (void)setPlacement:(unint64_t)a3
{
  v3 = a3;
  self->_placement = a3;
  p_touchEdgeInsets = &self->_touchEdgeInsets;
  v6 = [(NTKUtilityComplicationView *)self device];
  p_touchEdgeInsets->top = NTKUtilityTouchEdgeInsetsForPlacementAndDevice(v3, v6);
  p_touchEdgeInsets->left = v7;
  p_touchEdgeInsets->bottom = v8;
  p_touchEdgeInsets->right = v9;

  [(NTKUtilityComplicationView *)self setNeedsLayout];
}

- (void)setShouldUseBackgroundPlatter:(BOOL)a3
{
  if (self->_shouldUseBackgroundPlatter != a3)
  {
    self->_shouldUseBackgroundPlatter = a3;
    v4 = [(UIView *)self->_highlightView layer];
    shouldUseBackgroundPlatter = self->_shouldUseBackgroundPlatter;
    v6 = [(NTKUtilityComplicationView *)self device];
    v7 = v6;
    if (shouldUseBackgroundPlatter)
    {
      ___LayoutConstants_block_invoke_70(v6, v11);
      v8 = &v12;
    }

    else
    {
      ___LayoutConstants_block_invoke_70(v6, &v9);
      v8 = &v10;
    }

    [v4 setCornerRadius:*v8];

    [(NTKUtilityComplicationView *)self setNeedsLayout];
  }
}

- (void)setAlwaysEnforcePlatterInset:(BOOL)a3
{
  if (self->_alwaysEnforcePlatterInset != a3)
  {
    self->_alwaysEnforcePlatterInset = a3;
    [(NTKUtilityComplicationView *)self setNeedsLayout];
  }
}

- (BOOL)shouldUsePlatterInset
{
  if ([(NTKUtilityComplicationView *)self shouldUseBackgroundPlatter])
  {
    return 1;
  }

  return [(NTKUtilityComplicationView *)self alwaysEnforcePlatterInset];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(NTKUtilityComplicationView *)self _widthThatFits:a3.width];
  v5 = v4;
  v6 = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(v6, v12);
  v7 = v13;

  if ([(NTKUtilityComplicationView *)self shouldUsePlatterInset])
  {
    v8 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v8, v11);
    v5 = v5 + v11[22] * 2.0;
  }

  minimumWidth = self->_minimumWidth;
  if (v5 >= minimumWidth)
  {
    minimumWidth = v5;
  }

  v10 = v7;
  result.height = v10;
  result.width = minimumWidth;
  return result;
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = NTKUtilityComplicationView;
  [(NTKUtilityComplicationView *)&v41 layoutSubviews];
  [(NTKUtilityComplicationView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  backgroundPlatter = self->_backgroundPlatter;
  if (self->_shouldUseBackgroundPlatter)
  {
    if (!backgroundPlatter)
    {
      v12 = [(NTKUtilityComplicationView *)self _backgroundPlatterImage];
      v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v12];
      v14 = self->_backgroundPlatter;
      self->_backgroundPlatter = v13;

      v15 = self->_backgroundPlatter;
      v16 = [(NTKUtilityComplicationView *)self _computedPlatterColor];
      [(UIImageView *)v15 setTintColor:v16];

      backgroundPlatter = self->_backgroundPlatter;
    }

    v17 = [(UIImageView *)backgroundPlatter superview];

    if (!v17)
    {
      [(NTKUtilityComplicationView *)self insertSubview:self->_backgroundPlatter atIndex:0];
    }

    v18 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v18, v39);
    v44.origin.x = v4;
    v44.origin.y = v6;
    v44.size.width = v8;
    v44.size.height = v10;
    v45 = CGRectInset(v44, 0.0, -v40);
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;

    v22 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v22, v42);
    v23 = v43;
    v24 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v24, v37);
    v25 = v23 + v38 * 2.0;

    [(UIImageView *)self->_backgroundPlatter setFrame:x, y, width, v25];
  }

  else
  {
    [(UIImageView *)backgroundPlatter removeFromSuperview];
  }

  v26 = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(v26, v35);
  v27 = -v36;
  v28 = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(v28, v33);
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  v47 = CGRectInset(v46, v27, -v34);
  v29 = v47.origin.x;
  v30 = v47.origin.y;
  v31 = v47.size.width;
  height = v47.size.height;

  [(UIView *)self->_highlightView setFrame:v29, v30, v31, height];
}

- (id)_backgroundPlatterImage
{
  v2 = [(NTKUtilityComplicationView *)self device];
  v3 = ___UtilityPlatterBackgroundTemplateImage_block_invoke(v2, v2);

  return v3;
}

- (void)layoutLabelVertically:(id)a3
{
  v21 = a3;
  [(NTKUtilityComplicationView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v21 sizeToFit];
  [v21 frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  Height = CGRectGetHeight(v23);
  v24.origin.x = v13;
  v24.origin.y = v15;
  v24.size.width = v17;
  v24.size.height = v19;
  [v21 setFrame:{v13, v7 + (Height - CGRectGetHeight(v24)) * 0.5, v17, v19}];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(NTKUtilityComplicationView *)self bounds];
  top = self->_touchEdgeInsets.top;
  left = self->_touchEdgeInsets.left;
  v10 = v9 + left;
  v12 = v11 + top;
  v14 = v13 - (left + self->_touchEdgeInsets.right);
  v16 = v15 - (top + self->_touchEdgeInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

- (void)_updateImageViewAlpha:(id)a3
{
  usesLegibility = self->_usesLegibility;
  v5 = a3;
  [v5 setUsesLegibility:usesLegibility];
  [v5 setAlpha:self->_foregroundImageAlpha];
}

- (void)_updateImageViewColor:(id)a3
{
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKFaceColorScheme *)self->_colorScheme multicolorAlpha];
    [v10 setMulticolorAlpha:?];
  }

  v4 = [(NTKFaceColorScheme *)self->_colorScheme containsOverrideFaceColor];
  v5 = [v10 overrideColor];
  overrideColor = v5;
  if (!v5)
  {
    overrideColor = self->_overrideColor;
  }

  v7 = overrideColor;

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    [v10 setColor:v7];
  }

  else
  {
    v9 = [(NTKUtilityComplicationView *)self _computedForegroundColor];
    [v10 setColor:v9];
  }
}

- (void)setUseRoundedFontDesign:(BOOL)a3
{
  if (self->_useRoundedFontDesign != a3)
  {
    self->_useRoundedFontDesign = a3;
    [(NTKUtilityComplicationView *)self _updateLabelsForFontChange];
  }
}

- (void)setFontWeight:(double)a3
{
  if (self->_fontWeight != a3)
  {
    self->_fontWeight = a3;
    [(NTKUtilityComplicationView *)self _updateLabelsForFontChange];
  }
}

- (void)setFontSize:(double)a3
{
  if (self->_fontSize != a3)
  {
    self->_fontSize = a3;
    [(NTKUtilityComplicationView *)self _updateLabelsForFontChange];
  }
}

- (void)_updateLabelsForFontChange
{
  v3 = [(NTKUtilityComplicationView *)self _standardFont];
  [(NTKUtilityComplicationView *)self setFont:v3];
}

- (void)setMaxSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  p_maxSize = &self->_maxSize;
  if ((CLKSizeEqualsSize() & 1) == 0)
  {
    p_maxSize->width = width;
    p_maxSize->height = height;

    [(NTKUtilityComplicationView *)self _updateContentForMaxSizeChange];
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(NTKUtilityComplicationView *)self _updateContentForEditingChange];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    v16[7] = v6;
    v16[8] = v5;
    v16[11] = v3;
    v16[12] = v4;
    v7 = a3;
    self->_highlighted = a3;
    if ([(NTKUtilityComplicationView *)self shouldScaleAndFadeWhenHighlighting])
    {
      v9 = 0.95;
      v10 = 1.0;
      if (v7)
      {
        v10 = 0.6;
      }

      else
      {
        v9 = 1.0;
      }

      v11 = v16;
      v16[1] = 3221225472;
      v16[0] = MEMORY[0x277D85DD0];
      v16[2] = __45__NTKUtilityComplicationView_setHighlighted___block_invoke;
      v16[3] = &unk_278787220;
      if (v7)
      {
        v12 = 0.1;
      }

      else
      {
        v12 = 0.2;
      }

      v16[4] = self;
      *&v16[5] = v9;
      *&v16[6] = v10;
    }

    else
    {
      v13 = 1.0;
      if (!v7)
      {
        v13 = 0.0;
      }

      v11 = aBlock;
      aBlock[1] = 3221225472;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[2] = __45__NTKUtilityComplicationView_setHighlighted___block_invoke_2;
      aBlock[3] = &unk_2787805D8;
      if (v7)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 0.2;
      }

      aBlock[4] = self;
      *&aBlock[5] = v13;
    }

    v14 = _Block_copy(v11);
    [MEMORY[0x277D75D18] animateWithDuration:v14 animations:v12];
  }
}

uint64_t __45__NTKUtilityComplicationView_setHighlighted___block_invoke(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, *(a1 + 40), *(a1 + 40));
  v2 = *(a1 + 32);
  v4 = v5;
  [v2 setTransform:&v4];
  return [*(a1 + 32) setAlpha:*(a1 + 48)];
}

uint64_t __45__NTKUtilityComplicationView_setHighlighted___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 592) setAlpha:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _applyForegroundAlpha];
}

- (void)setComplicationTemplate:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  if (self->_complicationTemplate != v6)
  {
    v7 = v6;
    objc_storeStrong(&self->_complicationTemplate, a3);
    [(NTKUtilityComplicationView *)self _updateForTemplateChange];
    v6 = v7;
  }
}

- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  timeTravelDate = self->_timeTravelDate;
  if (v6)
  {
    if ([v6 isEqual:timeTravelDate])
    {
      goto LABEL_16;
    }

    v9 = self->_timeTravelDate;
    v11 = [(CLKComplicationTemplate *)self->_complicationTemplate timeTravelUpdateFrequency]== 2 || v9 == 0;
  }

  else
  {
    if (!timeTravelDate || ([0 isEqual:?] & 1) != 0)
    {
      goto LABEL_16;
    }

    v11 = 1;
  }

  objc_storeStrong(&self->_timeTravelDate, a3);
  if (self->_timeTravelDate)
  {
    v11 |= [(CLKComplicationTemplate *)self->_complicationTemplate timeTravelUpdateFrequency]== 2;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__NTKUtilityComplicationView_setTimeTravelDate_animated___block_invoke;
  v12[3] = &unk_278782C88;
  v12[4] = self;
  [(NTKUtilityComplicationView *)self _enumerateColoringViewsWithBlock:v12];
  if (v11)
  {
    [(NTKUtilityComplicationView *)self _updateForTemplateChange];
  }

LABEL_16:
}

void __57__NTKUtilityComplicationView_setTimeTravelDate_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setInTimeTravel:*(*(a1 + 32) + 432) != 0];
  }
}

- (id)_newDigitalTimeLabelSubviewWithOptions:(unint64_t)a3
{
  v4 = [(CLKUITimeLabel *)NTKDigitalTimeLabel labelWithOptions:a3 forDevice:self->_device];
  v5 = [v4 timeFormatter];
  [v5 setSuppressesDesignatorWhitespace:1];

  v6 = [(NTKUtilityComplicationView *)self _computedForegroundColor];
  [v4 setColor:v6];

  [(NTKUtilityComplicationView *)self foregroundAlpha];
  [v4 setAlpha:?];
  v7 = [(NTKUtilityComplicationView *)self _standardFont];
  v8 = [(NTKUtilityComplicationView *)self _smallCapsFont];
  [v4 setTimeFont:v7 designatorFont:v8];

  [v4 setUserInteractionEnabled:0];
  objc_initWeak(&location, self);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __69__NTKUtilityComplicationView__newDigitalTimeLabelSubviewWithOptions___block_invoke;
  v13 = &unk_27877DC58;
  objc_copyWeak(&v14, &location);
  [v4 setDidResizeHandler:&v10];
  [(NTKUtilityComplicationView *)self addSubview:v4, v10, v11, v12, v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  return v4;
}

void __69__NTKUtilityComplicationView__newDigitalTimeLabelSubviewWithOptions___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
  v1 = [WeakRetained displayObserver];
  [v1 complicationDisplayNeedsResize:WeakRetained];
}

- (id)_newLabelSubviewWithFont:(id)a3 variant:(unint64_t)a4
{
  v6 = a3;
  if (a4 <= 2)
  {
    objc_opt_class();
  }

  v7 = objc_opt_new();
  [v7 setFont:v6];
  [v7 setUsesLegibility:self->_usesLegibility];
  v8 = [(NTKUtilityComplicationView *)self _computedForegroundColor];
  [v7 setColor:v8];

  [v7 setShadowColor:self->_shadowColor];
  [(NTKUtilityComplicationView *)self foregroundAlpha];
  [v7 setAlpha:?];
  [v7 setUppercase:1];
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__NTKUtilityComplicationView__newLabelSubviewWithFont_variant___block_invoke;
  v12[3] = &unk_27877DC30;
  objc_copyWeak(&v13, &location);
  [v7 setNowProvider:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__NTKUtilityComplicationView__newLabelSubviewWithFont_variant___block_invoke_2;
  v10[3] = &unk_27877DC58;
  objc_copyWeak(&v11, &location);
  [v7 setNeedsResizeHandler:v10];
  [(NTKUtilityComplicationView *)self addSubview:v7];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v7;
}

id __63__NTKUtilityComplicationView__newLabelSubviewWithFont_variant___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained timeTravelDate];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBBAD8] complicationDate];
  }

  v5 = v4;

  return v5;
}

void __63__NTKUtilityComplicationView__newLabelSubviewWithFont_variant___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
  v1 = [WeakRetained displayObserver];
  [v1 complicationDisplayNeedsResize:WeakRetained];
}

- (id)_newStandardLabelSubviewVariant:(unint64_t)a3
{
  v5 = [(NTKUtilityComplicationView *)self _standardFont];
  v6 = [(NTKUtilityComplicationView *)self _newLabelSubviewWithFont:v5 variant:a3];

  [v6 setInTimeTravel:self->_timeTravelDate != 0];
  return v6;
}

- (id)_newHighlightViewVariant:(unint64_t)a3
{
  v5 = MEMORY[0x277D75348];
  v6 = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(v6, v14);
  v7 = [v5 colorWithWhite:1.0 alpha:v15];

  if (a3)
  {
    v8 = objc_opt_new();
    [v8 setTintColor:v7];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v10 = [v8 layer];
    v11 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(v11, v13);
    [v10 setCornerRadius:v13[19]];

    [v8 setBackgroundColor:v7];
  }

  [v8 setAlpha:0.0];
  [(NTKUtilityComplicationView *)self addSubview:v8];

  return v8;
}

- (id)_newImageViewSubviewWithAlpha:(double)a3
{
  v5 = objc_alloc_init(off_27877BEF0);
  v6 = [(NTKUtilityComplicationView *)self _computedForegroundColor];
  [v5 setColor:v6];

  [v5 setAlpha:a3];
  [(NTKUtilityComplicationView *)self addSubview:v5];
  return v5;
}

- (id)_newImageViewSubview
{
  [(NTKUtilityComplicationView *)self foregroundAlpha];

  return [(NTKUtilityComplicationView *)self _newImageViewSubviewWithAlpha:?];
}

- (id)_standardFont
{
  fontSize = self->_fontSize;
  fontWeight = self->_fontWeight;
  if (self->_useRoundedFontDesign)
  {
    [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:fontSize design:fontWeight];
  }

  else
  {
    [MEMORY[0x277CBBB08] systemFontOfSize:fontSize weight:fontWeight];
  }
  v5 = ;
  v6 = v5;
  if (self->_useAlternativePunctuation)
  {
    v7 = [v5 CLKFontWithAlternativePunctuation];

    v6 = v7;
  }

  return v6;
}

- (id)_smallCapsFont
{
  v2 = [(NTKUtilityComplicationView *)self _standardFont];
  v3 = [v2 CLKFontWithLocalizedSmallCaps];

  return v3;
}

- (void)_updateForTemplateChange
{
  v4 = [(NTKUtilityComplicationView *)self complicationTemplate];
  v3 = [v4 tintColor];
  [(NTKUtilityComplicationView *)self setOverrideColor:v3];
}

+ (id)_timerImageProvider
{
  v2 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v3 = [v2 device];
  __49__NTKUtilityComplicationView__timerImageProvider__block_invoke(v3, v3);

  v4 = _timerImageProvider_imageProvider;

  return v4;
}

uint64_t __49__NTKUtilityComplicationView__timerImageProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NavdRecentLocationsEntitlment_block_invoke_2_lock_0);
  if (NavdRecentLocationsEntitlment_block_invoke_2___cachedDevice_0)
  {
    v3 = NavdRecentLocationsEntitlment_block_invoke_2___cachedDevice_0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != NavdRecentLocationsEntitlment_block_invoke_2___previousCLKDeviceVersion_0))
  {
    NavdRecentLocationsEntitlment_block_invoke_2___cachedDevice_0 = v2;
    NavdRecentLocationsEntitlment_block_invoke_2___previousCLKDeviceVersion_0 = [v2 version];
    __49__NTKUtilityComplicationView__timerImageProvider__block_invoke_3();
  }

  v5 = NavdRecentLocationsEntitlment_block_invoke_2_value_0;
  os_unfair_lock_unlock(&NavdRecentLocationsEntitlment_block_invoke_2_lock_0);

  return v5;
}

+ (id)_alarmImageProviderActive:(BOOL)a3
{
  v3 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v4 = [v3 device];
  __56__NTKUtilityComplicationView__alarmImageProviderActive___block_invoke(v4, v4);

  v5 = _alarmImageProviderActive___imageProvider;

  return v5;
}

uint64_t __56__NTKUtilityComplicationView__alarmImageProviderActive___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NavdRecentLocationsEntitlment_block_invoke_3_lock_0);
  if (NavdRecentLocationsEntitlment_block_invoke_3___cachedDevice_0)
  {
    v3 = NavdRecentLocationsEntitlment_block_invoke_3___cachedDevice_0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NavdRecentLocationsEntitlment_block_invoke_3___previousCLKDeviceVersion_0))
  {
    v5 = NavdRecentLocationsEntitlment_block_invoke_3_value_0;
  }

  else
  {
    NavdRecentLocationsEntitlment_block_invoke_3___cachedDevice_0 = v2;
    NavdRecentLocationsEntitlment_block_invoke_3___previousCLKDeviceVersion_0 = [v2 version];
    __56__NTKUtilityComplicationView__alarmImageProviderActive___block_invoke_3();
    v5 = 1;
    NavdRecentLocationsEntitlment_block_invoke_3_value_0 = 1;
  }

  os_unfair_lock_unlock(&NavdRecentLocationsEntitlment_block_invoke_3_lock_0);

  return v5;
}

void __56__NTKUtilityComplicationView__alarmImageProviderActive___block_invoke_3()
{
  v0 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"alarm"];
  v1 = _alarmImageProviderActive___imageProvider;
  _alarmImageProviderActive___imageProvider = v0;

  v2 = _alarmImageProviderActive___imageProvider;
  v3 = [MEMORY[0x277D75348] systemOrangeColor];
  [v2 setTintColor:v3];
}

+ (id)_stopwatchImageProvider
{
  v2 = [MEMORY[0x277CBBB68] sharedRenderingContext];
  v3 = [v2 device];
  __53__NTKUtilityComplicationView__stopwatchImageProvider__block_invoke(v3, v3);

  v4 = _stopwatchImageProvider_imageProvider;

  return v4;
}

uint64_t __53__NTKUtilityComplicationView__stopwatchImageProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NavdRecentLocationsEntitlment_block_invoke_4_lock_0);
  if (NavdRecentLocationsEntitlment_block_invoke_4___cachedDevice_0)
  {
    v3 = NavdRecentLocationsEntitlment_block_invoke_4___cachedDevice_0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NavdRecentLocationsEntitlment_block_invoke_4___previousCLKDeviceVersion_0))
  {
    v5 = NavdRecentLocationsEntitlment_block_invoke_4_value_0;
  }

  else
  {
    NavdRecentLocationsEntitlment_block_invoke_4___cachedDevice_0 = v2;
    NavdRecentLocationsEntitlment_block_invoke_4___previousCLKDeviceVersion_0 = [v2 version];
    __53__NTKUtilityComplicationView__stopwatchImageProvider__block_invoke_3();
    v5 = 1;
    NavdRecentLocationsEntitlment_block_invoke_4_value_0 = 1;
  }

  os_unfair_lock_unlock(&NavdRecentLocationsEntitlment_block_invoke_4_lock_0);

  return v5;
}

void __53__NTKUtilityComplicationView__stopwatchImageProvider__block_invoke_3()
{
  v0 = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"stopwatch"];
  v1 = _stopwatchImageProvider_imageProvider;
  _stopwatchImageProvider_imageProvider = v0;

  v2 = _stopwatchImageProvider_imageProvider;
  v3 = [MEMORY[0x277D75348] systemOrangeColor];
  [v2 setTintColor:v3];
}

- (CDComplicationDisplayObserver)displayObserver
{
  WeakRetained = objc_loadWeakRetained(&self->displayObserver);

  return WeakRetained;
}

- (UIEdgeInsets)touchEdgeInsets
{
  top = self->_touchEdgeInsets.top;
  left = self->_touchEdgeInsets.left;
  bottom = self->_touchEdgeInsets.bottom;
  right = self->_touchEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end