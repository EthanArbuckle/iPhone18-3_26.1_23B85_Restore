@interface NTKModuleView
+ (double)cornerRadiusForComplicationFamily:(int64_t)a3 forDevice:(id)a4;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKModuleView)initWithFrame:(CGRect)a3;
- (id)viewsAndSpacingArrayForSpace:(double)a3 view:(id)a4;
- (id)viewsAndSpacingArrayForSpace:(double)a3 view:(id)a4 space:(double)a5 view:(id)a6;
- (void)_applyMonochromeTransitionFraction:(double)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5;
- (void)_enumerateAllForegroundColoringViewsWithBlock:(id)a3;
- (void)_updateColors;
- (void)applyColorScheme:(id)a3;
- (void)applyFaceColorPalette:(id)a3 units:(unint64_t)a4;
- (void)applyTransitionFraction:(double)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5 units:(unint64_t)a6 brightenedUnits:(unint64_t)a7;
- (void)layoutContainerView:(id)a3;
- (void)layoutSubviews;
- (void)naturalHorizontalLayoutForViewsAndSpacing:(id)a3 columnAlignmentSpacing:(BOOL)a4;
- (void)setColorScheme:(id)a3;
- (void)setForegroundColor:(id)a3;
- (void)setHighlightAlpha:(double)a3;
- (void)setHighlightCornerRadius:(double)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSecondaryForegroundColor:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
@end

@implementation NTKModuleView

+ (double)cornerRadiusForComplicationFamily:(int64_t)a3 forDevice:(id)a4
{
  v6 = a4;
  if (a3 == 12 || a3 == 7 || !a3)
  {
    CLKValueForDeviceMetrics();
  }

  else
  {
    [a1 _defaultCornerRadiusForDevice:v6];
  }

  v8 = v7;

  return v8;
}

- (NTKModuleView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = NTKModuleView;
  v3 = [(NTKModuleView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    v5 = [v4 device];
    [(NTKModuleView *)v3 setDevice:v5];

    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    highlightView = v3->_highlightView;
    v3->_highlightView = v6;

    [(UIView *)v3->_highlightView setUserInteractionEnabled:0];
    [(UIView *)v3->_highlightView setHidden:1];
    if ([(CLKDevice *)v3->_device deviceCategory]!= 1)
    {
      v8 = [(UIView *)v3->_highlightView layer];
      [v8 setCornerCurve:*MEMORY[0x277CDA138]];
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
  v3 = [(NTKModuleView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = MEMORY[0x2318D8E70](v3);
  v12 = v11 + self->_contentHeightOffset;
  [(NTKContainerView *)self->_contentView setBounds:v5, v7, v9, self->_contentHeight];
  [(NTKContainerView *)self->_contentView setCenter:v10, v12];
  highlightView = self->_highlightView;
  [(NTKModuleView *)self bounds];
  [(UIView *)highlightView setFrame:?];
}

- (void)setHighlightAlpha:(double)a3
{
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    self->_highlightAlpha = a3;
    [(UIView *)self->_highlightView setHidden:a3 <= 0.0];
    v5 = [(UIColor *)self->_highlightBackgroundColor colorWithAlphaComponent:a3];
    [(UIView *)self->_highlightView setBackgroundColor:v5];
  }
}

- (void)setForegroundColor:(id)a3
{
  v5 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = [v5 isEqual:self->_foregroundColor] ^ 1;
  if (v10[3] & 1) != 0 || (v8[0] = MEMORY[0x277D85DD0], v8[1] = 3221225472, v8[2] = __36__NTKModuleView_setForegroundColor___block_invoke, v8[3] = &unk_278782C60, v8[4] = self, v8[5] = &v9, [(NTKModuleView *)self _enumerateForegroundColoringViewsWithBlock:v8], (v10[3]))
  {
    objc_storeStrong(&self->_foregroundColor, a3);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__NTKModuleView_setForegroundColor___block_invoke_2;
    v6[3] = &unk_278782C88;
    v7 = v5;
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

- (void)setSecondaryForegroundColor:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_secondaryForegroundColor] & 1) == 0)
  {
    objc_storeStrong(&self->_secondaryForegroundColor, a3);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__NTKModuleView_setSecondaryForegroundColor___block_invoke;
    v6[3] = &unk_278782C88;
    v7 = v5;
    [(NTKModuleView *)self _enumerateSecondaryForegroundColoringViewsWithBlock:v6];
  }
}

- (void)setHighlightCornerRadius:(double)a3
{
  if (self->_highlightCornerRadius != a3)
  {
    self->_highlightCornerRadius = a3;
    v4 = [(UIView *)self->_highlightView layer];
    [v4 setCornerRadius:self->_highlightCornerRadius];
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

- (void)applyFaceColorPalette:(id)a3 units:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 isMulticolor];
  v8 = [(NTKModuleView *)self device];
  if (v7)
  {
    v9 = [(NTKModuleView *)self overrideColor];
    v10 = [NTKFaceColorScheme colorSchemeForDevice:v8 withFaceColorPalette:v6 foregroundColor:v9 units:a4 alternateHighlight:0];

    v6 = v9;
  }

  else
  {
    v10 = [NTKFaceColorScheme colorSchemeForDevice:v8 withFaceColorPalette:v6 units:a4];
  }

  [(NTKModuleView *)self setColorScheme:v10];
}

- (void)applyTransitionFraction:(double)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5 units:(unint64_t)a6 brightenedUnits:(unint64_t)a7
{
  v12 = a5;
  v17 = a4;
  v13 = [(NTKModuleView *)self device];
  v14 = [(NTKModuleView *)self overrideColor];
  LOBYTE(v16) = 0;
  v15 = [NTKFaceColorScheme interpolationForDevice:v13 fromFaceColorPalette:v17 toFaceColorPalette:v12 fraction:a6 units:a7 brightenUnits:v14 overrideColor:a3 alternateHighlight:v16];
  [(NTKModuleView *)self setColorScheme:v15];

  [(NTKModuleView *)self _applyMonochromeTransitionFraction:v17 fromFaceColorPalette:v12 toFaceColorPalette:a3];
}

- (void)_applyMonochromeTransitionFraction:(double)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (([v8 isMulticolor] & 1) != 0 || objc_msgSend(v9, "isMulticolor"))
  {
    if ([v9 isMulticolor] && !objc_msgSend(v8, "isMulticolor"))
    {
      a3 = 1.0 - a3;
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
  *&v11[4] = a3;
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

- (void)setColorScheme:(id)a3
{
  v5 = a3;
  if (self->_colorScheme != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_colorScheme, a3);
    [(NTKModuleView *)self applyColorScheme:self->_colorScheme];
    v5 = v6;
  }
}

- (void)applyColorScheme:(id)a3
{
  v4 = a3;
  v5 = [v4 foregroundColor];
  [(NTKModuleView *)self setForegroundColor:v5];

  v6 = [v4 secondaryForegroundColor];
  [(NTKModuleView *)self setSecondaryForegroundColor:v6];

  v7 = [v4 backgroundColor];
  [(NTKModuleView *)self setHighlightBackgroundColor:v7];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__NTKModuleView_applyColorScheme___block_invoke;
  v9[3] = &unk_278782C88;
  v10 = v4;
  v8 = v4;
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

- (id)viewsAndSpacingArrayForSpace:(double)a3 view:(id)a4
{
  v10[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a4;
  v7 = [v5 numberWithDouble:a3];
  v10[0] = v7;
  v10[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  return v8;
}

- (id)viewsAndSpacingArrayForSpace:(double)a3 view:(id)a4 space:(double)a5 view:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = MEMORY[0x277CBEB18];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v13 = [v11 arrayWithObject:v12];

  if (v9 && ([v9 isHidden] & 1) == 0)
  {
    [v13 addObject:v9];
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    [v13 addObject:v14];
  }

  [v13 addObject:v10];

  return v13;
}

- (void)naturalHorizontalLayoutForViewsAndSpacing:(id)a3 columnAlignmentSpacing:(BOOL)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
  v8 = v6;
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
            if (!a4)
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

- (void)_enumerateAllForegroundColoringViewsWithBlock:(id)a3
{
  v4 = a3;
  [(NTKModuleView *)self _enumerateForegroundColoringViewsWithBlock:v4];
  [(NTKModuleView *)self _enumerateSecondaryForegroundColoringViewsWithBlock:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(NTKModuleView *)self isHighlighted];
  v11.receiver = self;
  v11.super_class = NTKModuleView;
  [(NTKModuleView *)&v11 setHighlighted:v3];
  if (v5 != v3)
  {
    if (v3)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 0.2;
    }

    if (v3)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    if (v3)
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
    v9 = v3;
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

- (void)layoutContainerView:(id)a3
{
  kdebug_trace();
  [(NTKModuleView *)self _layoutContentView];

  kdebug_trace();
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__NTKModuleView_transitionToMonochromeWithFraction___block_invoke;
  v3[3] = &__block_descriptor_40_e35_v16__0__UIView_CLKUIColoringView__8l;
  *&v3[4] = a3;
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