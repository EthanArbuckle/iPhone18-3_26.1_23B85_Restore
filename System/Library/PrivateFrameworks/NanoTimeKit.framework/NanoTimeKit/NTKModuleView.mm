@interface NTKModuleView
+ (double)cornerRadiusForComplicationFamily:(int64_t)family forDevice:(id)device;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKModuleView)initWithFrame:(CGRect)frame;
- (id)viewsAndSpacingArrayForSpace:(double)space view:(id)view;
- (id)viewsAndSpacingArrayForSpace:(double)space view:(id)view space:(double)a5 view:(id)a6;
- (void)_applyMonochromeTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette;
- (void)_enumerateAllForegroundColoringViewsWithBlock:(id)block;
- (void)_updateColors;
- (void)applyColorScheme:(id)scheme;
- (void)applyFaceColorPalette:(id)palette units:(unint64_t)units;
- (void)applyTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette units:(unint64_t)units brightenedUnits:(unint64_t)brightenedUnits;
- (void)layoutContainerView:(id)view;
- (void)layoutSubviews;
- (void)naturalHorizontalLayoutForViewsAndSpacing:(id)spacing columnAlignmentSpacing:(BOOL)alignmentSpacing;
- (void)setColorScheme:(id)scheme;
- (void)setForegroundColor:(id)color;
- (void)setHighlightAlpha:(double)alpha;
- (void)setHighlightCornerRadius:(double)radius;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSecondaryForegroundColor:(id)color;
- (void)transitionToMonochromeWithFraction:(double)fraction;
@end

@implementation NTKModuleView

+ (double)cornerRadiusForComplicationFamily:(int64_t)family forDevice:(id)device
{
  deviceCopy = device;
  if (family == 12 || family == 7 || !family)
  {
    CLKValueForDeviceMetrics();
  }

  else
  {
    [self _defaultCornerRadiusForDevice:deviceCopy];
  }

  v8 = v7;

  return v8;
}

- (NTKModuleView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = NTKModuleView;
  v3 = [(NTKModuleView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    device = [v4 device];
    [(NTKModuleView *)v3 setDevice:device];

    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    highlightView = v3->_highlightView;
    v3->_highlightView = v6;

    [(UIView *)v3->_highlightView setUserInteractionEnabled:0];
    [(UIView *)v3->_highlightView setHidden:1];
    if ([(CLKDevice *)v3->_device deviceCategory]!= 1)
    {
      layer = [(UIView *)v3->_highlightView layer];
      [layer setCornerCurve:*MEMORY[0x277CDA138]];
    }

    [(NTKModuleView *)v3 addSubview:v3->_highlightView];
    v9 = objc_alloc_init(NTKContainerView);
    contentView = v3->_contentView;
    v3->_contentView = v9;

    [(NTKContainerView *)v3->_contentView setUserInteractionEnabled:0];
    [(NTKContainerView *)v3->_contentView setLayoutDelegate:v3];
    [(NTKModuleView *)v3 addSubview:v3->_contentView];
    [objc_opt_class() _defaultCornerRadiusForDevice:v3->_device];
    [(NTKModuleView *)v3 setHighlightCornerRadius:v11 + 3.0];
  }

  return v3;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = NTKModuleView;
  [(NTKModuleView *)&v14 layoutSubviews];
  bounds = [(NTKModuleView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = MEMORY[0x2318D8E70](bounds);
  v12 = v11 + self->_contentHeightOffset;
  [(NTKContainerView *)self->_contentView setBounds:v5, v7, v9, self->_contentHeight];
  [(NTKContainerView *)self->_contentView setCenter:v10, v12];
  highlightView = self->_highlightView;
  [(NTKModuleView *)self bounds];
  [(UIView *)highlightView setFrame:?];
}

- (void)setHighlightAlpha:(double)alpha
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_highlightAlpha = alpha;
    [(UIView *)self->_highlightView setHidden:alpha <= 0.0];
    v5 = [(UIColor *)self->_highlightBackgroundColor colorWithAlphaComponent:alpha];
    [(UIView *)self->_highlightView setBackgroundColor:v5];
  }
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = [colorCopy isEqual:self->_foregroundColor] ^ 1;
  if (v10[3] & 1) != 0 || (v8[0] = MEMORY[0x277D85DD0], v8[1] = 3221225472, v8[2] = __36__NTKModuleView_setForegroundColor___block_invoke, v8[3] = &unk_278782C60, v8[4] = self, v8[5] = &v9, [(NTKModuleView *)self _enumerateForegroundColoringViewsWithBlock:v8], (v10[3]))
  {
    objc_storeStrong(&self->_foregroundColor, color);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__NTKModuleView_setForegroundColor___block_invoke_2;
    v6[3] = &unk_278782C88;
    v7 = colorCopy;
    [(NTKModuleView *)self _enumerateForegroundColoringViewsWithBlock:v6];
  }

  _Block_object_dispose(&v9, 8);
}

void __36__NTKModuleView_setForegroundColor___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 color];
  if (v3)
  {
    v4 = [v6 color];
    v5 = [v4 isEqual:*(*(a1 + 32) + 488)];

    if ((v5 & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (void)setSecondaryForegroundColor:(id)color
{
  colorCopy = color;
  if (([colorCopy isEqual:self->_secondaryForegroundColor] & 1) == 0)
  {
    objc_storeStrong(&self->_secondaryForegroundColor, color);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__NTKModuleView_setSecondaryForegroundColor___block_invoke;
    v6[3] = &unk_278782C88;
    v7 = colorCopy;
    [(NTKModuleView *)self _enumerateSecondaryForegroundColoringViewsWithBlock:v6];
  }
}

- (void)setHighlightCornerRadius:(double)radius
{
  if (self->_highlightCornerRadius != radius)
  {
    self->_highlightCornerRadius = radius;
    layer = [(UIView *)self->_highlightView layer];
    [layer setCornerRadius:self->_highlightCornerRadius];
  }
}

- (void)_updateColors
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__NTKModuleView__updateColors__block_invoke;
  v4[3] = &unk_278782C88;
  v4[4] = self;
  [(NTKModuleView *)self _enumerateForegroundColoringViewsWithBlock:v4];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __30__NTKModuleView__updateColors__block_invoke_2;
  v3[3] = &unk_278782C88;
  v3[4] = self;
  [(NTKModuleView *)self _enumerateSecondaryForegroundColoringViewsWithBlock:v3];
}

void __30__NTKModuleView__updateColors__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 foregroundColor];
  [v3 setColor:v4];
}

void __30__NTKModuleView__updateColors__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 secondaryForegroundColor];
  [v3 setColor:v4];
}

- (void)applyFaceColorPalette:(id)palette units:(unint64_t)units
{
  paletteCopy = palette;
  isMulticolor = [paletteCopy isMulticolor];
  device = [(NTKModuleView *)self device];
  if (isMulticolor)
  {
    overrideColor = [(NTKModuleView *)self overrideColor];
    v10 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:paletteCopy foregroundColor:overrideColor units:units alternateHighlight:0];

    paletteCopy = overrideColor;
  }

  else
  {
    v10 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:paletteCopy units:units];
  }

  [(NTKModuleView *)self setColorScheme:v10];
}

- (void)applyTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette units:(unint64_t)units brightenedUnits:(unint64_t)brightenedUnits
{
  colorPaletteCopy = colorPalette;
  paletteCopy = palette;
  device = [(NTKModuleView *)self device];
  overrideColor = [(NTKModuleView *)self overrideColor];
  LOBYTE(v16) = 0;
  v15 = [NTKFaceColorScheme interpolationForDevice:device fromFaceColorPalette:paletteCopy toFaceColorPalette:colorPaletteCopy fraction:units units:brightenedUnits brightenUnits:overrideColor overrideColor:fraction alternateHighlight:v16];
  [(NTKModuleView *)self setColorScheme:v15];

  [(NTKModuleView *)self _applyMonochromeTransitionFraction:paletteCopy fromFaceColorPalette:colorPaletteCopy toFaceColorPalette:fraction];
}

- (void)_applyMonochromeTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette
{
  paletteCopy = palette;
  colorPaletteCopy = colorPalette;
  if (([paletteCopy isMulticolor] & 1) != 0 || objc_msgSend(colorPaletteCopy, "isMulticolor"))
  {
    if ([colorPaletteCopy isMulticolor] && !objc_msgSend(paletteCopy, "isMulticolor"))
    {
      fraction = 1.0 - fraction;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__NTKModuleView__applyMonochromeTransitionFraction_fromFaceColorPalette_toFaceColorPalette___block_invoke;
  v11[3] = &__block_descriptor_41_e35_v16__0__UIView_CLKUIColoringView__8l;
  v12 = v10;
  *&v11[4] = fraction;
  [(NTKModuleView *)self _enumerateAllForegroundColoringViewsWithBlock:v11];
}

void __92__NTKModuleView__applyMonochromeTransitionFraction_fromFaceColorPalette_toFaceColorPalette___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    if (*(a1 + 40) == 1)
    {
      [v3 transitionToMonochromeWithFraction:*(a1 + 32)];
    }

    else
    {
      [v3 updateMonochromeColor];
    }
  }
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v6 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    [(NTKModuleView *)self applyColorScheme:self->_colorScheme];
    schemeCopy = v6;
  }
}

- (void)applyColorScheme:(id)scheme
{
  schemeCopy = scheme;
  foregroundColor = [schemeCopy foregroundColor];
  [(NTKModuleView *)self setForegroundColor:foregroundColor];

  secondaryForegroundColor = [schemeCopy secondaryForegroundColor];
  [(NTKModuleView *)self setSecondaryForegroundColor:secondaryForegroundColor];

  backgroundColor = [schemeCopy backgroundColor];
  [(NTKModuleView *)self setHighlightBackgroundColor:backgroundColor];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__NTKModuleView_applyColorScheme___block_invoke;
  v9[3] = &unk_278782C88;
  v10 = schemeCopy;
  v8 = schemeCopy;
  [(NTKModuleView *)self _enumerateForegroundColoringViewsWithBlock:v9];
  [(NTKModuleView *)self _updateColors];
}

void __34__NTKModuleView_applyColorScheme___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) multicolorAlpha];
    [v3 setMulticolorAlpha:?];
  }
}

- (id)viewsAndSpacingArrayForSpace:(double)space view:(id)view
{
  v10[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  viewCopy = view;
  v7 = [v5 numberWithDouble:space];
  v10[0] = v7;
  v10[1] = viewCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  return v8;
}

- (id)viewsAndSpacingArrayForSpace:(double)space view:(id)view space:(double)a5 view:(id)a6
{
  viewCopy = view;
  v10 = a6;
  v11 = MEMORY[0x277CBEB18];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:space];
  v13 = [v11 arrayWithObject:v12];

  if (viewCopy && ([viewCopy isHidden] & 1) == 0)
  {
    [v13 addObject:viewCopy];
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    [v13 addObject:v14];
  }

  [v13 addObject:v10];

  return v13;
}

- (void)naturalHorizontalLayoutForViewsAndSpacing:(id)spacing columnAlignmentSpacing:(BOOL)alignmentSpacing
{
  v26 = *MEMORY[0x277D85DE8];
  spacingCopy = spacing;
  Width = 0.0;
  if (CLKLayoutIsRTL())
  {
    [(NTKModuleView *)self bounds];
    Width = CGRectGetWidth(v27);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = spacingCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = Width;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v14 floatValue];
          v16 = v15;
          IsRTL = CLKLayoutIsRTL();
          v18 = -v16;
          if (!IsRTL)
          {
            v18 = v16;
          }

          v12 = v12 + v18;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v14 frame];
            v19 = CGRectGetWidth(v28);
            v20 = CLKLayoutIsRTL() ? v12 - v19 : v12;
            [v14 frame];
            [v14 setFrame:v20];
            v12 = Width;
            if (!alignmentSpacing)
            {
              if (CLKLayoutIsRTL())
              {
                v12 = v20;
              }

              else
              {
                v12 = v19 + v20;
              }
            }
          }
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }
}

- (void)_enumerateAllForegroundColoringViewsWithBlock:(id)block
{
  blockCopy = block;
  [(NTKModuleView *)self _enumerateForegroundColoringViewsWithBlock:blockCopy];
  [(NTKModuleView *)self _enumerateSecondaryForegroundColoringViewsWithBlock:blockCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(NTKModuleView *)self isHighlighted];
  v11.receiver = self;
  v11.super_class = NTKModuleView;
  [(NTKModuleView *)&v11 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    if (highlightedCopy)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 0.2;
    }

    if (highlightedCopy)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    if (highlightedCopy)
    {
      [(UIView *)self->_highlightView setHidden:0];
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __32__NTKModuleView_setHighlighted___block_invoke;
    v10[3] = &unk_2787805D8;
    v10[4] = self;
    *&v10[5] = v7;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__NTKModuleView_setHighlighted___block_invoke_2;
    v8[3] = &unk_278782CD0;
    v9 = highlightedCopy;
    v8[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v10 animations:v8 completion:v6];
  }
}

void __32__NTKModuleView_setHighlighted___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 464);
  v3 = [*(v1 + 504) colorWithAlphaComponent:*(a1 + 40)];
  [v2 setBackgroundColor:v3];
}

uint64_t __32__NTKModuleView_setHighlighted___block_invoke_2(uint64_t result, int a2)
{
  if (a2)
  {
    if ((*(result + 40) & 1) == 0)
    {
      return [*(*(result + 32) + 464) setHidden:1];
    }
  }

  return result;
}

- (void)layoutContainerView:(id)view
{
  kdebug_trace();
  [(NTKModuleView *)self _layoutContentView];

  kdebug_trace();
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__NTKModuleView_transitionToMonochromeWithFraction___block_invoke;
  v3[3] = &__block_descriptor_40_e35_v16__0__UIView_CLKUIColoringView__8l;
  *&v3[4] = fraction;
  [(NTKModuleView *)self _enumerateAllForegroundColoringViewsWithBlock:v3];
}

void __52__NTKModuleView_transitionToMonochromeWithFraction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transitionToMonochromeWithFraction:*(a1 + 32)];
  }
}

void __38__NTKModuleView_updateMonochromeColor__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 updateMonochromeColor];
  }
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->filterProvider);

  return WeakRetained;
}

@end