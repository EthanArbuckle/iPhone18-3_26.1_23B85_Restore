@interface NTKUtilityComplicationView
+ (id)_alarmImageProviderActive:(BOOL)active;
+ (id)_stopwatchImageProvider;
+ (id)_timerImageProvider;
+ (id)largeComplicationViewForType:(unint64_t)type narrow:(BOOL)narrow;
+ (id)smallComplicationViewForType:(unint64_t)type;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)shouldUsePlatterInset;
- (CDComplicationDisplayObserver)displayObserver;
- (CGSize)maxSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NTKUtilityComplicationView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)touchEdgeInsets;
- (double)foregroundAlpha;
- (id)_backgroundPlatterImage;
- (id)_newDigitalTimeLabelSubviewWithOptions:(unint64_t)options;
- (id)_newHighlightViewVariant:(unint64_t)variant;
- (id)_newImageViewSubview;
- (id)_newImageViewSubviewWithAlpha:(double)alpha;
- (id)_newLabelSubviewWithFont:(id)font variant:(unint64_t)variant;
- (id)_newStandardLabelSubviewVariant:(unint64_t)variant;
- (id)_smallCapsFont;
- (id)_standardFont;
- (void)_applyColorScheme:(id)scheme;
- (void)_updateForTemplateChange;
- (void)_updateForegroundAlpha;
- (void)_updateForegroundColor;
- (void)_updateForegroundImageAlpha;
- (void)_updateImageViewAlpha:(id)alpha;
- (void)_updateImageViewColor:(id)color;
- (void)_updateLabelsForFontChange;
- (void)applyFaceColorPalette:(id)palette units:(unint64_t)units;
- (void)applyTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette units:(unint64_t)units brightenedUnits:(unint64_t)brightenedUnits;
- (void)layoutLabelVertically:(id)vertically;
- (void)layoutSubviews;
- (void)setAlwaysEnforcePlatterInset:(BOOL)inset;
- (void)setComplicationTemplate:(id)template reason:(int64_t)reason;
- (void)setEditing:(BOOL)editing;
- (void)setFont:(id)font;
- (void)setFontSize:(double)size;
- (void)setFontWeight:(double)weight;
- (void)setForegroundAlpha:(double)alpha;
- (void)setForegroundColor:(id)color;
- (void)setForegroundImageAlpha:(double)alpha;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMaxSize:(CGSize)size;
- (void)setPlacement:(unint64_t)placement;
- (void)setPlatterColor:(id)color;
- (void)setShadowColor:(id)color;
- (void)setShouldUseBackgroundPlatter:(BOOL)platter;
- (void)setTimeTravelDate:(id)date animated:(BOOL)animated;
- (void)setUseRoundedFontDesign:(BOOL)design;
- (void)setUsesLegibility:(BOOL)legibility;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation NTKUtilityComplicationView

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = NTKUtilityComplicationView;
  [(NTKUtilityComplicationView *)&v4 traitCollectionDidChange:change];
  [(NTKUtilityComplicationView *)self setNeedsLayout];
}

+ (id)smallComplicationViewForType:(unint64_t)type
{
  if (type)
  {
    v3 = objc_alloc_init(0);
  }

  else
  {
    v3 = objc_alloc_init(NTKUtilityComplicationView);
    device = [(NTKUtilityComplicationView *)v3 device];
    ___LayoutConstants_block_invoke_70(device, v6);
    [(NTKUtilityComplicationView *)v3 setMinimumWidth:v7];

    [(NTKUtilityComplicationView *)v3 setHidden:1];
  }

  return v3;
}

+ (id)largeComplicationViewForType:(unint64_t)type narrow:(BOOL)narrow
{
  if (type)
  {
    if (!narrow || (v4 = objc_alloc_init(0)) == 0)
    {
      v4 = objc_alloc_init(0);
    }
  }

  else
  {
    v4 = objc_alloc_init(NTKUtilityComplicationView);
    device = [(NTKUtilityComplicationView *)v4 device];
    ___LayoutConstants_block_invoke_70(device, v7);
    [(NTKUtilityComplicationView *)v4 setMinimumWidth:v8];

    [(NTKUtilityComplicationView *)v4 setHidden:1];
  }

  return v4;
}

- (NTKUtilityComplicationView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = NTKUtilityComplicationView;
  v3 = [(NTKUtilityComplicationView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    device = [v4 device];
    [(NTKUtilityComplicationView *)v3 setDevice:device];

    device2 = [(NTKUtilityComplicationView *)v3 device];
    v3->_foregroundAlpha = 0.7;

    device3 = [(NTKUtilityComplicationView *)v3 device];
    v3->_foregroundImageAlpha = 0.7;

    device4 = [(NTKUtilityComplicationView *)v3 device];
    ___LayoutConstants_block_invoke_70(device4, v22);
    v3->_minimumWidth = v23;

    v3->_maxSize = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    _standardFont = [(NTKUtilityComplicationView *)v3 _standardFont];
    font = v3->_font;
    v3->_font = _standardFont;

    v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:*off_27877BE58];
    shadowColor = v3->_shadowColor;
    v3->_shadowColor = v11;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    foregroundColor = v3->_foregroundColor;
    v3->_foregroundColor = whiteColor;

    v15 = NTKUtilityComplicationPlatterColor();
    platterColor = v3->_platterColor;
    v3->_platterColor = v15;

    v3->_fontWeight = *MEMORY[0x277D74418];
    device5 = [(NTKUtilityComplicationView *)v3 device];
    ___LayoutConstants_block_invoke_70(device5, v21);
    v3->_fontSize = v21[0];

    _newHighlightView = [(NTKUtilityComplicationView *)v3 _newHighlightView];
    highlightView = v3->_highlightView;
    v3->_highlightView = _newHighlightView;

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
  device = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(device, v6);
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

- (void)setForegroundAlpha:(double)alpha
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_foregroundAlpha = alpha;
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

- (void)setPlatterColor:(id)color
{
  colorCopy = color;
  if ((NTKEqualObjects(colorCopy, self->_platterColor) & 1) == 0)
  {
    objc_storeStrong(&self->_platterColor, color);
    [(NTKUtilityComplicationView *)self _computePlatterColor];
    [(NTKUtilityComplicationView *)self _updatePlatterColor];
  }
}

- (void)setForegroundImageAlpha:(double)alpha
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_foregroundImageAlpha = alpha;

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

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_foregroundColor] & 1) == 0)
  {
    objc_storeStrong(&self->_foregroundColor, color);
    [(NTKUtilityComplicationView *)self _computeForegroundColor];
    [(NTKUtilityComplicationView *)self _updateForegroundColor];
  }
}

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_shadowColor] & 1) == 0)
  {
    objc_storeStrong(&self->_shadowColor, color);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__NTKUtilityComplicationView_setShadowColor___block_invoke;
    v6[3] = &unk_278782C88;
    v7 = colorCopy;
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

- (void)applyFaceColorPalette:(id)palette units:(unint64_t)units
{
  paletteCopy = palette;
  device = [(NTKUtilityComplicationView *)self device];
  v8 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:paletteCopy units:units];

  [(NTKUtilityComplicationView *)self _applyColorScheme:v8];
  isMulticolor = [paletteCopy isMulticolor];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__NTKUtilityComplicationView_applyFaceColorPalette_units___block_invoke;
  v10[3] = &__block_descriptor_33_e35_v16__0__UIView_CLKUIColoringView__8l;
  v11 = isMulticolor;
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

- (void)applyTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette units:(unint64_t)units brightenedUnits:(unint64_t)brightenedUnits
{
  colorPaletteCopy = colorPalette;
  paletteCopy = palette;
  device = [(NTKUtilityComplicationView *)self device];
  LOBYTE(v17) = 0;
  v15 = [NTKFaceColorScheme interpolationForDevice:device fromFaceColorPalette:paletteCopy toFaceColorPalette:colorPaletteCopy fraction:units units:brightenedUnits brightenUnits:0 overrideColor:fraction alternateHighlight:v17];
  [(NTKUtilityComplicationView *)self _applyColorScheme:v15];

  [paletteCopy isMulticolor];
  [colorPaletteCopy isMulticolor];

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

- (void)_applyColorScheme:(id)scheme
{
  objc_storeStrong(&self->_colorScheme, scheme);
  schemeCopy = scheme;
  foregroundColor = [schemeCopy foregroundColor];
  [(NTKUtilityComplicationView *)self setForegroundColor:foregroundColor];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__NTKUtilityComplicationView__applyColorScheme___block_invoke;
  v7[3] = &unk_2787871B0;
  v7[4] = self;
  [(NTKUtilityComplicationView *)self _enumerateColoringStackedImagesViewsWithBlock:v7];
}

- (void)setUsesLegibility:(BOOL)legibility
{
  if (self->_usesLegibility != legibility)
  {
    v7 = v3;
    v8 = v4;
    self->_usesLegibility = legibility;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__NTKUtilityComplicationView_setUsesLegibility___block_invoke;
    v5[3] = &__block_descriptor_33_e35_v16__0__UIView_CLKUIColoringView__8l;
    legibilityCopy = legibility;
    [(NTKUtilityComplicationView *)self _enumerateColoringViewsWithBlock:v5];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if ((NTKEqualObjects(fontCopy, self->_font) & 1) == 0)
  {
    objc_storeStrong(&self->_font, font);
    _preferredAdditionalFontSettings = [objc_opt_class() _preferredAdditionalFontSettings];
    if (_preferredAdditionalFontSettings)
    {
      v7 = [(CLKFont *)self->_font CLKFontByApplyingFeatureSettings:_preferredAdditionalFontSettings];
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

- (void)setPlacement:(unint64_t)placement
{
  placementCopy = placement;
  self->_placement = placement;
  p_touchEdgeInsets = &self->_touchEdgeInsets;
  device = [(NTKUtilityComplicationView *)self device];
  p_touchEdgeInsets->top = NTKUtilityTouchEdgeInsetsForPlacementAndDevice(placementCopy, device);
  p_touchEdgeInsets->left = v7;
  p_touchEdgeInsets->bottom = v8;
  p_touchEdgeInsets->right = v9;

  [(NTKUtilityComplicationView *)self setNeedsLayout];
}

- (void)setShouldUseBackgroundPlatter:(BOOL)platter
{
  if (self->_shouldUseBackgroundPlatter != platter)
  {
    self->_shouldUseBackgroundPlatter = platter;
    layer = [(UIView *)self->_highlightView layer];
    shouldUseBackgroundPlatter = self->_shouldUseBackgroundPlatter;
    device = [(NTKUtilityComplicationView *)self device];
    v7 = device;
    if (shouldUseBackgroundPlatter)
    {
      ___LayoutConstants_block_invoke_70(device, v11);
      v8 = &v12;
    }

    else
    {
      ___LayoutConstants_block_invoke_70(device, &v9);
      v8 = &v10;
    }

    [layer setCornerRadius:*v8];

    [(NTKUtilityComplicationView *)self setNeedsLayout];
  }
}

- (void)setAlwaysEnforcePlatterInset:(BOOL)inset
{
  if (self->_alwaysEnforcePlatterInset != inset)
  {
    self->_alwaysEnforcePlatterInset = inset;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(NTKUtilityComplicationView *)self _widthThatFits:fits.width];
  v5 = v4;
  device = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(device, v12);
  v7 = v13;

  if ([(NTKUtilityComplicationView *)self shouldUsePlatterInset])
  {
    device2 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(device2, v11);
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
      _backgroundPlatterImage = [(NTKUtilityComplicationView *)self _backgroundPlatterImage];
      v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:_backgroundPlatterImage];
      v14 = self->_backgroundPlatter;
      self->_backgroundPlatter = v13;

      v15 = self->_backgroundPlatter;
      _computedPlatterColor = [(NTKUtilityComplicationView *)self _computedPlatterColor];
      [(UIImageView *)v15 setTintColor:_computedPlatterColor];

      backgroundPlatter = self->_backgroundPlatter;
    }

    superview = [(UIImageView *)backgroundPlatter superview];

    if (!superview)
    {
      [(NTKUtilityComplicationView *)self insertSubview:self->_backgroundPlatter atIndex:0];
    }

    device = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(device, v39);
    v44.origin.x = v4;
    v44.origin.y = v6;
    v44.size.width = v8;
    v44.size.height = v10;
    v45 = CGRectInset(v44, 0.0, -v40);
    x = v45.origin.x;
    y = v45.origin.y;
    width = v45.size.width;

    device2 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(device2, v42);
    v23 = v43;
    device3 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(device3, v37);
    v25 = v23 + v38 * 2.0;

    [(UIImageView *)self->_backgroundPlatter setFrame:x, y, width, v25];
  }

  else
  {
    [(UIImageView *)backgroundPlatter removeFromSuperview];
  }

  device4 = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(device4, v35);
  v27 = -v36;
  device5 = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(device5, v33);
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
  device = [(NTKUtilityComplicationView *)self device];
  v3 = ___UtilityPlatterBackgroundTemplateImage_block_invoke(device, device);

  return v3;
}

- (void)layoutLabelVertically:(id)vertically
{
  verticallyCopy = vertically;
  [(NTKUtilityComplicationView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [verticallyCopy sizeToFit];
  [verticallyCopy frame];
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
  [verticallyCopy setFrame:{v13, v7 + (Height - CGRectGetHeight(v24)) * 0.5, v17, v19}];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
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

- (void)_updateImageViewAlpha:(id)alpha
{
  usesLegibility = self->_usesLegibility;
  alphaCopy = alpha;
  [alphaCopy setUsesLegibility:usesLegibility];
  [alphaCopy setAlpha:self->_foregroundImageAlpha];
}

- (void)_updateImageViewColor:(id)color
{
  colorCopy = color;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(NTKFaceColorScheme *)self->_colorScheme multicolorAlpha];
    [colorCopy setMulticolorAlpha:?];
  }

  containsOverrideFaceColor = [(NTKFaceColorScheme *)self->_colorScheme containsOverrideFaceColor];
  overrideColor = [colorCopy overrideColor];
  overrideColor = overrideColor;
  if (!overrideColor)
  {
    overrideColor = self->_overrideColor;
  }

  v7 = overrideColor;

  if (v7)
  {
    v8 = containsOverrideFaceColor;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    [colorCopy setColor:v7];
  }

  else
  {
    _computedForegroundColor = [(NTKUtilityComplicationView *)self _computedForegroundColor];
    [colorCopy setColor:_computedForegroundColor];
  }
}

- (void)setUseRoundedFontDesign:(BOOL)design
{
  if (self->_useRoundedFontDesign != design)
  {
    self->_useRoundedFontDesign = design;
    [(NTKUtilityComplicationView *)self _updateLabelsForFontChange];
  }
}

- (void)setFontWeight:(double)weight
{
  if (self->_fontWeight != weight)
  {
    self->_fontWeight = weight;
    [(NTKUtilityComplicationView *)self _updateLabelsForFontChange];
  }
}

- (void)setFontSize:(double)size
{
  if (self->_fontSize != size)
  {
    self->_fontSize = size;
    [(NTKUtilityComplicationView *)self _updateLabelsForFontChange];
  }
}

- (void)_updateLabelsForFontChange
{
  _standardFont = [(NTKUtilityComplicationView *)self _standardFont];
  [(NTKUtilityComplicationView *)self setFont:_standardFont];
}

- (void)setMaxSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  p_maxSize = &self->_maxSize;
  if ((CLKSizeEqualsSize() & 1) == 0)
  {
    p_maxSize->width = width;
    p_maxSize->height = height;

    [(NTKUtilityComplicationView *)self _updateContentForMaxSizeChange];
  }
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    [(NTKUtilityComplicationView *)self _updateContentForEditingChange];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    v16[7] = v6;
    v16[8] = v5;
    v16[11] = v3;
    v16[12] = v4;
    highlightedCopy = highlighted;
    self->_highlighted = highlighted;
    if ([(NTKUtilityComplicationView *)self shouldScaleAndFadeWhenHighlighting])
    {
      v9 = 0.95;
      v10 = 1.0;
      if (highlightedCopy)
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
      if (highlightedCopy)
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
      if (!highlightedCopy)
      {
        v13 = 0.0;
      }

      v11 = aBlock;
      aBlock[1] = 3221225472;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[2] = __45__NTKUtilityComplicationView_setHighlighted___block_invoke_2;
      aBlock[3] = &unk_2787805D8;
      if (highlightedCopy)
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

- (void)setComplicationTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  if (self->_complicationTemplate != templateCopy)
  {
    v7 = templateCopy;
    objc_storeStrong(&self->_complicationTemplate, template);
    [(NTKUtilityComplicationView *)self _updateForTemplateChange];
    templateCopy = v7;
  }
}

- (void)setTimeTravelDate:(id)date animated:(BOOL)animated
{
  dateCopy = date;
  v7 = dateCopy;
  timeTravelDate = self->_timeTravelDate;
  if (dateCopy)
  {
    if ([dateCopy isEqual:timeTravelDate])
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

  objc_storeStrong(&self->_timeTravelDate, date);
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

- (id)_newDigitalTimeLabelSubviewWithOptions:(unint64_t)options
{
  v4 = [(CLKUITimeLabel *)NTKDigitalTimeLabel labelWithOptions:options forDevice:self->_device];
  timeFormatter = [v4 timeFormatter];
  [timeFormatter setSuppressesDesignatorWhitespace:1];

  _computedForegroundColor = [(NTKUtilityComplicationView *)self _computedForegroundColor];
  [v4 setColor:_computedForegroundColor];

  [(NTKUtilityComplicationView *)self foregroundAlpha];
  [v4 setAlpha:?];
  _standardFont = [(NTKUtilityComplicationView *)self _standardFont];
  _smallCapsFont = [(NTKUtilityComplicationView *)self _smallCapsFont];
  [v4 setTimeFont:_standardFont designatorFont:_smallCapsFont];

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

- (id)_newLabelSubviewWithFont:(id)font variant:(unint64_t)variant
{
  fontCopy = font;
  if (variant <= 2)
  {
    objc_opt_class();
  }

  v7 = objc_opt_new();
  [v7 setFont:fontCopy];
  [v7 setUsesLegibility:self->_usesLegibility];
  _computedForegroundColor = [(NTKUtilityComplicationView *)self _computedForegroundColor];
  [v7 setColor:_computedForegroundColor];

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

- (id)_newStandardLabelSubviewVariant:(unint64_t)variant
{
  _standardFont = [(NTKUtilityComplicationView *)self _standardFont];
  v6 = [(NTKUtilityComplicationView *)self _newLabelSubviewWithFont:_standardFont variant:variant];

  [v6 setInTimeTravel:self->_timeTravelDate != 0];
  return v6;
}

- (id)_newHighlightViewVariant:(unint64_t)variant
{
  v5 = MEMORY[0x277D75348];
  device = [(NTKUtilityComplicationView *)self device];
  ___LayoutConstants_block_invoke_70(device, v14);
  v7 = [v5 colorWithWhite:1.0 alpha:v15];

  if (variant)
  {
    v8 = objc_opt_new();
    [v8 setTintColor:v7];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v9 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    layer = [v8 layer];
    device2 = [(NTKUtilityComplicationView *)self device];
    ___LayoutConstants_block_invoke_70(device2, v13);
    [layer setCornerRadius:v13[19]];

    [v8 setBackgroundColor:v7];
  }

  [v8 setAlpha:0.0];
  [(NTKUtilityComplicationView *)self addSubview:v8];

  return v8;
}

- (id)_newImageViewSubviewWithAlpha:(double)alpha
{
  v5 = objc_alloc_init(off_27877BEF0);
  _computedForegroundColor = [(NTKUtilityComplicationView *)self _computedForegroundColor];
  [v5 setColor:_computedForegroundColor];

  [v5 setAlpha:alpha];
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
    cLKFontWithAlternativePunctuation = [v5 CLKFontWithAlternativePunctuation];

    v6 = cLKFontWithAlternativePunctuation;
  }

  return v6;
}

- (id)_smallCapsFont
{
  _standardFont = [(NTKUtilityComplicationView *)self _standardFont];
  cLKFontWithLocalizedSmallCaps = [_standardFont CLKFontWithLocalizedSmallCaps];

  return cLKFontWithLocalizedSmallCaps;
}

- (void)_updateForTemplateChange
{
  complicationTemplate = [(NTKUtilityComplicationView *)self complicationTemplate];
  tintColor = [complicationTemplate tintColor];
  [(NTKUtilityComplicationView *)self setOverrideColor:tintColor];
}

+ (id)_timerImageProvider
{
  mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
  device = [mEMORY[0x277CBBB68] device];
  __49__NTKUtilityComplicationView__timerImageProvider__block_invoke(device, device);

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

+ (id)_alarmImageProviderActive:(BOOL)active
{
  mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
  device = [mEMORY[0x277CBBB68] device];
  __56__NTKUtilityComplicationView__alarmImageProviderActive___block_invoke(device, device);

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
  mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
  device = [mEMORY[0x277CBBB68] device];
  __53__NTKUtilityComplicationView__stopwatchImageProvider__block_invoke(device, device);

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