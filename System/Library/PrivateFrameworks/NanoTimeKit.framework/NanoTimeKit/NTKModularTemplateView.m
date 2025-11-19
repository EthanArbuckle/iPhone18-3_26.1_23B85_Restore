@interface NTKModularTemplateView
- (BOOL)_useInvertedHighlightForColorScheme:(id)a3;
- (void)_enumerateColoringViewsSubviewsWithBlock:(id)a3 invertedHighlight:(BOOL)a4;
- (void)_propagateColorSchemeToSubviews:(id)a3;
- (void)_setColorScheme:(id)a3 propagateToSubviews:(BOOL)a4;
- (void)applyFaceColorPalette:(id)a3 units:(unint64_t)a4;
- (void)applyTransitionFraction:(double)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5 units:(unint64_t)a6 brightenedUnits:(unint64_t)a7;
- (void)setComplicationTemplate:(id)a3 reason:(int64_t)a4;
- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4;
@end

@implementation NTKModularTemplateView

- (void)setComplicationTemplate:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  if (self->_complicationTemplate != v6)
  {
    v24 = v6;
    objc_storeStrong(&self->_complicationTemplate, a3);
    v7 = [(NTKModularTemplateView *)self highlightMode];
    [(NTKModularTemplateView *)self _update];
    v8 = [(NTKModularTemplateView *)self highlightMode];
    v9 = [(CLKComplicationTemplate *)self->_complicationTemplate tintColor];
    [(NTKModuleView *)self setOverrideColor:v9];

    v10 = [(NTKModuleView *)self colorScheme];
    v11 = [v10 containsOverrideFaceColor];

    if (v11)
    {
      v12 = self->_highlightMode - 1 < 2;
      v13 = [[NTKFaceColorPalette alloc] initWithDomainName:0 inBundle:0];
      v14 = [NTKPigmentEditOption pigmentNamed:@"special.multicolor"];
      [(NTKFaceColorPalette *)v13 setPigmentEditOption:v14];

      v15 = [(NTKModuleView *)self device];
      v16 = [(NTKModuleView *)self overrideColor];
      v17 = [(NTKModuleView *)self colorScheme];
      v18 = +[NTKFaceColorScheme colorSchemeForDevice:withFaceColorPalette:foregroundColor:units:alternateHighlight:](NTKFaceColorScheme, "colorSchemeForDevice:withFaceColorPalette:foregroundColor:units:alternateHighlight:", v15, v13, v16, [v17 units], v12);
      [(NTKModularTemplateView *)self setContainsOverrideFaceColor:v18];
    }

    else
    {
      v6 = v24;
      if (v7 == v8)
      {
        goto LABEL_7;
      }

      v19 = self->_highlightMode == 1;
      v20 = [(NTKModuleView *)self device];
      v21 = [(NTKModuleView *)self colorScheme];
      v22 = [v21 faceColorPalette];
      v23 = [(NTKModuleView *)self colorScheme];
      v13 = +[NTKFaceColorScheme colorSchemeForDevice:withFaceColorPalette:foregroundColor:units:alternateHighlight:](NTKFaceColorScheme, "colorSchemeForDevice:withFaceColorPalette:foregroundColor:units:alternateHighlight:", v20, v22, 0, [v23 units], v19);

      [(NTKModularTemplateView *)self setContainsOverrideFaceColor:v13];
    }

    v6 = v24;
  }

LABEL_7:
}

- (void)applyFaceColorPalette:(id)a3 units:(unint64_t)a4
{
  highlightMode = self->_highlightMode;
  v7 = highlightMode == 1;
  v8 = a3;
  if ([v8 isMulticolor])
  {
    v7 = highlightMode == 1 || self->_highlightMode == 2;
    v13 = [(NTKModuleView *)self overrideColor];
    v10 = 0.0;
  }

  else
  {
    v13 = 0;
    v10 = 1.0;
  }

  [(NTKModuleView *)self transitionToMonochromeWithFraction:v10];
  v11 = [(NTKModuleView *)self device];
  v12 = [NTKFaceColorScheme colorSchemeForDevice:v11 withFaceColorPalette:v8 foregroundColor:v13 units:a4 alternateHighlight:v7];

  [(NTKModularTemplateView *)self setContainsOverrideFaceColor:v12];
}

- (void)_setColorScheme:(id)a3 propagateToSubviews:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7.receiver = self;
  v7.super_class = NTKModularTemplateView;
  [(NTKModuleView *)&v7 setColorScheme:v6];
  if (v4)
  {
    [(NTKModularTemplateView *)self _propagateColorSchemeToSubviews:v6];
  }
}

- (void)applyTransitionFraction:(double)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5 units:(unint64_t)a6 brightenedUnits:(unint64_t)a7
{
  v12 = a4;
  v13 = a5;
  v14 = [v12 isMulticolor];
  v15 = [v13 isMulticolor];
  v16 = v15;
  highlightMode = self->_highlightMode;
  if (v14 & 1) != 0 || (v15)
  {
    v22 = highlightMode == 1;
    v23 = [NTKPigmentEditOption pigmentNamed:@"special.multicolor"];
    v24 = [v12 copyWithOption:v23];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __112__NTKModularTemplateView_applyTransitionFraction_fromFaceColorPalette_toFaceColorPalette_units_brightenedUnits___block_invoke;
    aBlock[3] = &unk_278785100;
    v44 = v14;
    v45 = v22;
    aBlock[4] = self;
    v25 = v24;
    v39 = v25;
    v42 = a6;
    v40 = v12;
    v46 = v16;
    v41 = v13;
    v43 = a3;
    v26 = _Block_copy(aBlock);
    v27 = [(CLKComplicationTemplate *)self->_complicationTemplate tintColor];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = [(NTKModuleView *)self overrideColor];
    }

    v30 = v29;

    v31 = v26[2](v26, v30);
    [(NTKModularTemplateView *)self _setColorScheme:v31 propagateToSubviews:0];
    if ([v31 containsOverrideFaceColor])
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __112__NTKModularTemplateView_applyTransitionFraction_fromFaceColorPalette_toFaceColorPalette_units_brightenedUnits___block_invoke_2;
      v36[3] = &unk_278785128;
      v32 = v26;
      v37 = v32;
      [(NTKModuleView *)self _enumerateForegroundColoringViewsWithBlock:v36];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __112__NTKModularTemplateView_applyTransitionFraction_fromFaceColorPalette_toFaceColorPalette_units_brightenedUnits___block_invoke_3;
      v34[3] = &unk_278785128;
      v35 = v32;
      [(NTKModuleView *)self _enumerateSecondaryForegroundColoringViewsWithBlock:v34];
    }
  }

  else
  {
    v18 = highlightMode == 1;
    v19 = [(NTKModuleView *)self device];
    v20 = [(NTKModuleView *)self overrideColor];
    LOBYTE(v33) = v18;
    v21 = [NTKFaceColorScheme interpolationForDevice:v19 fromFaceColorPalette:v12 toFaceColorPalette:v13 fraction:a6 units:a7 brightenUnits:v20 overrideColor:a3 alternateHighlight:v33];
    [(NTKModularTemplateView *)self setContainsOverrideFaceColor:v21];
  }

  [(NTKModuleView *)self _applyMonochromeTransitionFraction:v12 fromFaceColorPalette:v13 toFaceColorPalette:a3];
}

id __112__NTKModularTemplateView_applyTransitionFraction_fromFaceColorPalette_toFaceColorPalette_units_brightenedUnits___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 80) == 1)
  {
    v4 = *(a1 + 32);
    v5 = (*(a1 + 81) & 1) != 0 || v4[75] == 2;
    v6 = [v4 device];
    v7 = *(a1 + 40);
    v8 = *(a1 + 64);
    v10 = v6;
    v11 = v3;
    v9 = v5;
  }

  else
  {
    v6 = [*(a1 + 32) device];
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    v9 = *(a1 + 81);
    v10 = v6;
    v11 = 0;
  }

  v12 = [NTKFaceColorScheme colorSchemeForDevice:v10 withFaceColorPalette:v7 foregroundColor:v11 units:v8 alternateHighlight:v9];

  if (*(a1 + 82) == 1)
  {
    v13 = *(a1 + 32);
    v14 = (*(a1 + 81) & 1) != 0 || v13[75] == 2;
    v15 = [v13 device];
    v16 = *(a1 + 40);
    v17 = *(a1 + 64);
    v19 = v15;
    v20 = v3;
    v18 = v14;
  }

  else
  {
    v15 = [*(a1 + 32) device];
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = *(a1 + 81);
    v19 = v15;
    v20 = 0;
  }

  v21 = [NTKFaceColorScheme colorSchemeForDevice:v19 withFaceColorPalette:v16 foregroundColor:v20 units:v17 alternateHighlight:v18];

  v22 = [NTKFaceColorScheme interpolationFrom:v12 to:v21 fraction:*(a1 + 72)];

  return v22;
}

void __112__NTKModularTemplateView_applyTransitionFraction_fromFaceColorPalette_toFaceColorPalette_units_brightenedUnits___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 overrideColor];
  if (v3)
  {
    v4 = (*(*(a1 + 32) + 16))();
    v5 = [v4 foregroundColor];
    [v6 setColor:v5];
  }
}

void __112__NTKModularTemplateView_applyTransitionFraction_fromFaceColorPalette_toFaceColorPalette_units_brightenedUnits___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 overrideColor];
  if (v3)
  {
    v4 = (*(*(a1 + 32) + 16))();
    v5 = [v4 secondaryForegroundColor];
    [v6 setColor:v5];
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
      goto LABEL_14;
    }

    v9 = self->_timeTravelDate;
    v11 = [(CLKComplicationTemplate *)self->_complicationTemplate timeTravelUpdateFrequency]== 2 || v9 == 0;
  }

  else
  {
    if (!timeTravelDate || ([0 isEqual:?] & 1) != 0)
    {
      goto LABEL_14;
    }

    v11 = 1;
  }

  objc_storeStrong(&self->_timeTravelDate, a3);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__NTKModularTemplateView_setTimeTravelDate_animated___block_invoke;
  v13[3] = &unk_278782C88;
  v13[4] = self;
  [(NTKModuleView *)self _enumerateForegroundColoringViewsWithBlock:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__NTKModularTemplateView_setTimeTravelDate_animated___block_invoke_2;
  v12[3] = &unk_278782C88;
  v12[4] = self;
  [(NTKModuleView *)self _enumerateSecondaryForegroundColoringViewsWithBlock:v12];
  if (v11)
  {
    [(NTKModularTemplateView *)self _update];
  }

LABEL_14:
}

void __53__NTKModularTemplateView_setTimeTravelDate_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setInTimeTravel:*(*(a1 + 32) + 584) != 0];
  }
}

void __53__NTKModularTemplateView_setTimeTravelDate_animated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setInTimeTravel:*(*(a1 + 32) + 584) != 0];
  }
}

- (BOOL)_useInvertedHighlightForColorScheme:(id)a3
{
  v4 = a3;
  v5 = v4;
  highlightMode = self->_highlightMode;
  v7 = highlightMode == 1 || highlightMode == 2 && ([v4 containsOverrideFaceColor] & 1) != 0;

  return v7;
}

- (void)_enumerateColoringViewsSubviewsWithBlock:(id)a3 invertedHighlight:(BOOL)a4
{
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__NTKModularTemplateView__enumerateColoringViewsSubviewsWithBlock_invertedHighlight___block_invoke;
  v12[3] = &unk_278785150;
  v7 = v6;
  v13 = v7;
  v14 = a4;
  [(NTKModuleView *)self _enumerateForegroundColoringViewsWithBlock:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__NTKModularTemplateView__enumerateColoringViewsSubviewsWithBlock_invertedHighlight___block_invoke_2;
  v9[3] = &unk_278785150;
  v10 = v7;
  v11 = a4;
  v8 = v7;
  [(NTKModuleView *)self _enumerateSecondaryForegroundColoringViewsWithBlock:v9];
}

- (void)_propagateColorSchemeToSubviews:(id)a3
{
  v4 = a3;
  v5 = [(NTKModularTemplateView *)self _useInvertedHighlightForColorScheme:v4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__NTKModularTemplateView__propagateColorSchemeToSubviews___block_invoke;
  v7[3] = &unk_278785178;
  v8 = v4;
  v6 = v4;
  [(NTKModularTemplateView *)self _enumerateColoringViewsSubviewsWithBlock:v7 invertedHighlight:v5];
}

void __58__NTKModularTemplateView__propagateColorSchemeToSubviews___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (a3)
  {
    v10 = v5;
    v6 = [*(a1 + 32) containsOverrideFaceColor];
    v7 = [v10 overrideColor];
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      [v10 setColor:v7];
    }

    v5 = v10;
  }
}

@end