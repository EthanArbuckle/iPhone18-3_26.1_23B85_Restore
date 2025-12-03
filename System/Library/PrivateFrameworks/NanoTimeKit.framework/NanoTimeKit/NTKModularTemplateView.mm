@interface NTKModularTemplateView
- (BOOL)_useInvertedHighlightForColorScheme:(id)scheme;
- (void)_enumerateColoringViewsSubviewsWithBlock:(id)block invertedHighlight:(BOOL)highlight;
- (void)_propagateColorSchemeToSubviews:(id)subviews;
- (void)_setColorScheme:(id)scheme propagateToSubviews:(BOOL)subviews;
- (void)applyFaceColorPalette:(id)palette units:(unint64_t)units;
- (void)applyTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette units:(unint64_t)units brightenedUnits:(unint64_t)brightenedUnits;
- (void)setComplicationTemplate:(id)template reason:(int64_t)reason;
- (void)setTimeTravelDate:(id)date animated:(BOOL)animated;
@end

@implementation NTKModularTemplateView

- (void)setComplicationTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  if (self->_complicationTemplate != templateCopy)
  {
    v24 = templateCopy;
    objc_storeStrong(&self->_complicationTemplate, template);
    highlightMode = [(NTKModularTemplateView *)self highlightMode];
    [(NTKModularTemplateView *)self _update];
    highlightMode2 = [(NTKModularTemplateView *)self highlightMode];
    tintColor = [(CLKComplicationTemplate *)self->_complicationTemplate tintColor];
    [(NTKModuleView *)self setOverrideColor:tintColor];

    colorScheme = [(NTKModuleView *)self colorScheme];
    containsOverrideFaceColor = [colorScheme containsOverrideFaceColor];

    if (containsOverrideFaceColor)
    {
      v12 = self->_highlightMode - 1 < 2;
      v13 = [[NTKFaceColorPalette alloc] initWithDomainName:0 inBundle:0];
      v14 = [NTKPigmentEditOption pigmentNamed:@"special.multicolor"];
      [(NTKFaceColorPalette *)v13 setPigmentEditOption:v14];

      device = [(NTKModuleView *)self device];
      overrideColor = [(NTKModuleView *)self overrideColor];
      colorScheme2 = [(NTKModuleView *)self colorScheme];
      v18 = +[NTKFaceColorScheme colorSchemeForDevice:withFaceColorPalette:foregroundColor:units:alternateHighlight:](NTKFaceColorScheme, "colorSchemeForDevice:withFaceColorPalette:foregroundColor:units:alternateHighlight:", device, v13, overrideColor, [colorScheme2 units], v12);
      [(NTKModularTemplateView *)self setContainsOverrideFaceColor:v18];
    }

    else
    {
      templateCopy = v24;
      if (highlightMode == highlightMode2)
      {
        goto LABEL_7;
      }

      v19 = self->_highlightMode == 1;
      device2 = [(NTKModuleView *)self device];
      colorScheme3 = [(NTKModuleView *)self colorScheme];
      faceColorPalette = [colorScheme3 faceColorPalette];
      colorScheme4 = [(NTKModuleView *)self colorScheme];
      v13 = +[NTKFaceColorScheme colorSchemeForDevice:withFaceColorPalette:foregroundColor:units:alternateHighlight:](NTKFaceColorScheme, "colorSchemeForDevice:withFaceColorPalette:foregroundColor:units:alternateHighlight:", device2, faceColorPalette, 0, [colorScheme4 units], v19);

      [(NTKModularTemplateView *)self setContainsOverrideFaceColor:v13];
    }

    templateCopy = v24;
  }

LABEL_7:
}

- (void)applyFaceColorPalette:(id)palette units:(unint64_t)units
{
  highlightMode = self->_highlightMode;
  v7 = highlightMode == 1;
  paletteCopy = palette;
  if ([paletteCopy isMulticolor])
  {
    v7 = highlightMode == 1 || self->_highlightMode == 2;
    overrideColor = [(NTKModuleView *)self overrideColor];
    v10 = 0.0;
  }

  else
  {
    overrideColor = 0;
    v10 = 1.0;
  }

  [(NTKModuleView *)self transitionToMonochromeWithFraction:v10];
  device = [(NTKModuleView *)self device];
  v12 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:paletteCopy foregroundColor:overrideColor units:units alternateHighlight:v7];

  [(NTKModularTemplateView *)self setContainsOverrideFaceColor:v12];
}

- (void)_setColorScheme:(id)scheme propagateToSubviews:(BOOL)subviews
{
  subviewsCopy = subviews;
  schemeCopy = scheme;
  v7.receiver = self;
  v7.super_class = NTKModularTemplateView;
  [(NTKModuleView *)&v7 setColorScheme:schemeCopy];
  if (subviewsCopy)
  {
    [(NTKModularTemplateView *)self _propagateColorSchemeToSubviews:schemeCopy];
  }
}

- (void)applyTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette units:(unint64_t)units brightenedUnits:(unint64_t)brightenedUnits
{
  paletteCopy = palette;
  colorPaletteCopy = colorPalette;
  isMulticolor = [paletteCopy isMulticolor];
  isMulticolor2 = [colorPaletteCopy isMulticolor];
  v16 = isMulticolor2;
  highlightMode = self->_highlightMode;
  if (isMulticolor & 1) != 0 || (isMulticolor2)
  {
    v22 = highlightMode == 1;
    v23 = [NTKPigmentEditOption pigmentNamed:@"special.multicolor"];
    v24 = [paletteCopy copyWithOption:v23];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __112__NTKModularTemplateView_applyTransitionFraction_fromFaceColorPalette_toFaceColorPalette_units_brightenedUnits___block_invoke;
    aBlock[3] = &unk_278785100;
    v44 = isMulticolor;
    v45 = v22;
    aBlock[4] = self;
    v25 = v24;
    v39 = v25;
    unitsCopy = units;
    v40 = paletteCopy;
    v46 = v16;
    v41 = colorPaletteCopy;
    fractionCopy = fraction;
    v26 = _Block_copy(aBlock);
    tintColor = [(CLKComplicationTemplate *)self->_complicationTemplate tintColor];
    v28 = tintColor;
    if (tintColor)
    {
      overrideColor = tintColor;
    }

    else
    {
      overrideColor = [(NTKModuleView *)self overrideColor];
    }

    v30 = overrideColor;

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
    device = [(NTKModuleView *)self device];
    overrideColor2 = [(NTKModuleView *)self overrideColor];
    LOBYTE(v33) = v18;
    v21 = [NTKFaceColorScheme interpolationForDevice:device fromFaceColorPalette:paletteCopy toFaceColorPalette:colorPaletteCopy fraction:units units:brightenedUnits brightenUnits:overrideColor2 overrideColor:fraction alternateHighlight:v33];
    [(NTKModularTemplateView *)self setContainsOverrideFaceColor:v21];
  }

  [(NTKModuleView *)self _applyMonochromeTransitionFraction:paletteCopy fromFaceColorPalette:colorPaletteCopy toFaceColorPalette:fraction];
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

- (void)setTimeTravelDate:(id)date animated:(BOOL)animated
{
  dateCopy = date;
  v7 = dateCopy;
  timeTravelDate = self->_timeTravelDate;
  if (dateCopy)
  {
    if ([dateCopy isEqual:timeTravelDate])
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

  objc_storeStrong(&self->_timeTravelDate, date);
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

- (BOOL)_useInvertedHighlightForColorScheme:(id)scheme
{
  schemeCopy = scheme;
  v5 = schemeCopy;
  highlightMode = self->_highlightMode;
  v7 = highlightMode == 1 || highlightMode == 2 && ([schemeCopy containsOverrideFaceColor] & 1) != 0;

  return v7;
}

- (void)_enumerateColoringViewsSubviewsWithBlock:(id)block invertedHighlight:(BOOL)highlight
{
  blockCopy = block;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__NTKModularTemplateView__enumerateColoringViewsSubviewsWithBlock_invertedHighlight___block_invoke;
  v12[3] = &unk_278785150;
  v7 = blockCopy;
  v13 = v7;
  highlightCopy = highlight;
  [(NTKModuleView *)self _enumerateForegroundColoringViewsWithBlock:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__NTKModularTemplateView__enumerateColoringViewsSubviewsWithBlock_invertedHighlight___block_invoke_2;
  v9[3] = &unk_278785150;
  v10 = v7;
  highlightCopy2 = highlight;
  v8 = v7;
  [(NTKModuleView *)self _enumerateSecondaryForegroundColoringViewsWithBlock:v9];
}

- (void)_propagateColorSchemeToSubviews:(id)subviews
{
  subviewsCopy = subviews;
  v5 = [(NTKModularTemplateView *)self _useInvertedHighlightForColorScheme:subviewsCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__NTKModularTemplateView__propagateColorSchemeToSubviews___block_invoke;
  v7[3] = &unk_278785178;
  v8 = subviewsCopy;
  v6 = subviewsCopy;
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