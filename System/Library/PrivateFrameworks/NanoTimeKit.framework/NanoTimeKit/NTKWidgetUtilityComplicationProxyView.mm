@interface NTKWidgetUtilityComplicationProxyView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (NTKUtilityFlatComplicationViewDelegate)delegate;
- (NTKWidgetUtilityComplicationProxyView)initWithFamily:(int64_t)family;
- (double)textWidthInRadians;
- (id)_chsWidgetTintParameters;
- (void)_applyFaceColorScheme:(id)scheme monochromeFraction:(double)fraction;
- (void)applyFaceColorPalette:(id)palette units:(unint64_t)units;
- (void)applyTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette units:(unint64_t)units brightenedUnits:(unint64_t)brightenedUnits;
- (void)curvedLabelAngularWidthChanged;
- (void)setAccentColor:(id)color;
- (void)setDelegate:(id)delegate;
- (void)setForegroundColor:(id)color;
- (void)setPlacement:(unint64_t)placement;
- (void)setShadowColor:(id)color;
- (void)setUseRoundedFontDesign:(BOOL)design;
- (void)setUsesLegibility:(BOOL)legibility;
@end

@implementation NTKWidgetUtilityComplicationProxyView

- (NTKWidgetUtilityComplicationProxyView)initWithFamily:(int64_t)family
{
  v7.receiver = self;
  v7.super_class = NTKWidgetUtilityComplicationProxyView;
  v3 = [(NTKWidgetRichComplicationInlineView *)&v7 initWithFamily:family];
  if (v3)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(NTKWidgetRichComplicationInlineView *)v3 setTextColor:whiteColor];

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(NTKWidgetUtilityComplicationProxyView *)v3 setForegroundColor:whiteColor2];

    [(NTKWidgetRichComplicationView *)v3 transitionToMonochromeWithFraction:1.0];
  }

  return v3;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  if ([(CDRichComplicationView *)self textLayoutStyle]== 1)
  {
    [(NTKWidgetRichComplicationInlineView *)self bezelTextAngularWidth];
    v8 = v7;
    interior = [(NTKWidgetRichComplicationInlineView *)self interior];
    [(NTKWidgetRichComplicationInlineView *)self curveCenterAngle];
    v11 = v10;
    [(NTKWidgetRichComplicationInlineView *)self curveRadius];
    v13 = v12;
    [(NTKWidgetRichComplicationInlineView *)self curveCenter];
    v15 = v14;
    v17 = v16;
    v18 = -1.57079633;
    if (interior)
    {
      v18 = 1.57079633;
    }

    v19 = v11 + v18;
    v20 = v19 - v8 * 0.5;
    v21 = v8 * 0.5 + v19;
    if (interior)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    if (interior)
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    device = [(CDRichComplicationView *)self device];
    v25 = NTKUtilityComplicationCurvedPlatterInsets(device);
    v30 = NTKUtilityComplicationCurvedPointInside(interior, x, y, v13, v15, v17, v22, v23, v29, v25, v26, v27, v28);

    return v30;
  }

  else
  {
    [(NTKWidgetUtilityComplicationProxyView *)self bounds];
    top = self->_touchEdgeInsets.top;
    left = self->_touchEdgeInsets.left;
    v35 = v34 + left;
    v37 = v36 + top;
    v39 = v38 - (left + self->_touchEdgeInsets.right);
    v41 = v40 - (top + self->_touchEdgeInsets.bottom);
    v42 = x;
    v43 = y;

    return CGRectContainsPoint(*&v35, *&v42);
  }
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  v6.receiver = self;
  v6.super_class = NTKWidgetUtilityComplicationProxyView;
  [(CDRichComplicationView *)&v6 setForegroundColor:colorCopy];
  if (self->_foregroundColor != colorCopy)
  {
    objc_storeStrong(&self->_foregroundColor, color);
    [(NTKWidgetRichComplicationInlineView *)self setTextColor:colorCopy];
    [(NTKWidgetUtilityComplicationProxyView *)self setNeedsLayout];
  }
}

- (void)setAccentColor:(id)color
{
  colorCopy = color;
  if (self->_accentColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_accentColor, color);
    colorCopy = v6;
  }
}

- (void)setUsesLegibility:(BOOL)legibility
{
  if (self->_usesLegibility != legibility)
  {
    self->_usesLegibility = legibility;
  }
}

- (void)setShadowColor:(id)color
{
  colorCopy = color;
  if (self->_shadowColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_shadowColor, color);
    colorCopy = v6;
  }
}

- (void)setPlacement:(unint64_t)placement
{
  placementCopy = placement;
  self->_placement = placement;
  if ((placement & 2) != 0)
  {
    [(NTKWidgetRichComplicationInlineView *)self setTextAlignment:3];
    v5 = 1;
  }

  else if ((placement & 8) != 0)
  {
    [(NTKWidgetRichComplicationInlineView *)self setTextAlignment:4];
    v5 = 2;
  }

  else
  {
    [(NTKWidgetRichComplicationInlineView *)self setTextAlignment:0];
    if (CLKLayoutIsRTL())
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  [(NTKWidgetRichComplicationInlineView *)self setImagePlacement:v5];
  device = [(CDRichComplicationView *)self device];
  self->_touchEdgeInsets.top = NTKUtilityTouchEdgeInsetsForPlacementAndDevice(placementCopy, device);
  self->_touchEdgeInsets.left = v6;
  self->_touchEdgeInsets.bottom = v7;
  self->_touchEdgeInsets.right = v8;
}

- (void)setUseRoundedFontDesign:(BOOL)design
{
  if (design)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(NTKWidgetRichComplicationInlineView *)self setFontDesign:v3];
}

- (void)applyFaceColorPalette:(id)palette units:(unint64_t)units
{
  paletteCopy = palette;
  device = [(CDRichComplicationView *)self device];
  v9 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:paletteCopy units:units];

  LODWORD(units) = [paletteCopy isMulticolor];
  v8 = 1.0;
  if (units)
  {
    v8 = 0.0;
  }

  [(NTKWidgetUtilityComplicationProxyView *)self _applyFaceColorScheme:v9 monochromeFraction:v8];
}

- (void)applyTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette units:(unint64_t)units brightenedUnits:(unint64_t)brightenedUnits
{
  colorPaletteCopy = colorPalette;
  paletteCopy = palette;
  device = [(CDRichComplicationView *)self device];
  LOBYTE(v15) = 0;
  v16 = [NTKFaceColorScheme interpolationForDevice:device fromFaceColorPalette:paletteCopy toFaceColorPalette:colorPaletteCopy fraction:units units:brightenedUnits brightenUnits:0 overrideColor:fraction alternateHighlight:v15];

  [paletteCopy isMulticolor];
  [colorPaletteCopy isMulticolor];

  CLKInterpolateBetweenFloatsClipped();
  [(NTKWidgetUtilityComplicationProxyView *)self _applyFaceColorScheme:v16 monochromeFraction:?];
}

- (void)_applyFaceColorScheme:(id)scheme monochromeFraction:(double)fraction
{
  foregroundColor = [scheme foregroundColor];
  [(NTKWidgetUtilityComplicationProxyView *)self setForegroundColor:foregroundColor];

  [(NTKWidgetRichComplicationView *)self transitionToMonochromeWithFraction:fraction];
}

- (id)_chsWidgetTintParameters
{
  textColor = [(NTKWidgetRichComplicationInlineView *)self textColor];
  bSColor = [textColor BSColor];

  v5 = objc_alloc(MEMORY[0x277CFA440]);
  [(NTKWidgetRichComplicationView *)self monochromeFraction];
  v6 = [v5 initWithPrimaryTintColor:bSColor secondaryTintColor:bSColor filterStyle:0 fallbackFilterStyle:0 fraction:?];

  return v6;
}

- (void)curvedLabelAngularWidthChanged
{
  v4.receiver = self;
  v4.super_class = NTKWidgetUtilityComplicationProxyView;
  [(NTKWidgetRichComplicationInlineView *)&v4 curvedLabelAngularWidthChanged];
  delegate = [(NTKWidgetUtilityComplicationProxyView *)self delegate];
  [(NTKWidgetRichComplicationInlineView *)self bezelTextAngularWidth];
  [delegate utilityComplicationView:self didChangeTextWidth:?];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(NTKWidgetRichComplicationInlineView *)self bezelTextAngularWidth];
    [obj utilityComplicationView:self didChangeTextWidth:?];
  }
}

- (double)textWidthInRadians
{
  [(NTKWidgetRichComplicationInlineView *)self bezelTextAngularWidth];
  v4 = v3;
  if (v3 > 0.0)
  {
    device = [(CDRichComplicationView *)self device];
    v4 = v4 + NTKUtilityComplicationBezelAngularPadding(device);
  }

  return v4;
}

- (NTKUtilityFlatComplicationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end