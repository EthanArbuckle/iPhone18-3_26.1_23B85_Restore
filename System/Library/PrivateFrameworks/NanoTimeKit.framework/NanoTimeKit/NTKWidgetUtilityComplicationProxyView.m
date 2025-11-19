@interface NTKWidgetUtilityComplicationProxyView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (NTKUtilityFlatComplicationViewDelegate)delegate;
- (NTKWidgetUtilityComplicationProxyView)initWithFamily:(int64_t)a3;
- (double)textWidthInRadians;
- (id)_chsWidgetTintParameters;
- (void)_applyFaceColorScheme:(id)a3 monochromeFraction:(double)a4;
- (void)applyFaceColorPalette:(id)a3 units:(unint64_t)a4;
- (void)applyTransitionFraction:(double)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5 units:(unint64_t)a6 brightenedUnits:(unint64_t)a7;
- (void)curvedLabelAngularWidthChanged;
- (void)setAccentColor:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setForegroundColor:(id)a3;
- (void)setPlacement:(unint64_t)a3;
- (void)setShadowColor:(id)a3;
- (void)setUseRoundedFontDesign:(BOOL)a3;
- (void)setUsesLegibility:(BOOL)a3;
@end

@implementation NTKWidgetUtilityComplicationProxyView

- (NTKWidgetUtilityComplicationProxyView)initWithFamily:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = NTKWidgetUtilityComplicationProxyView;
  v3 = [(NTKWidgetRichComplicationInlineView *)&v7 initWithFamily:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] whiteColor];
    [(NTKWidgetRichComplicationInlineView *)v3 setTextColor:v4];

    v5 = [MEMORY[0x277D75348] whiteColor];
    [(NTKWidgetUtilityComplicationProxyView *)v3 setForegroundColor:v5];

    [(NTKWidgetRichComplicationView *)v3 transitionToMonochromeWithFraction:1.0];
  }

  return v3;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  if ([(CDRichComplicationView *)self textLayoutStyle]== 1)
  {
    [(NTKWidgetRichComplicationInlineView *)self bezelTextAngularWidth];
    v8 = v7;
    v9 = [(NTKWidgetRichComplicationInlineView *)self interior];
    [(NTKWidgetRichComplicationInlineView *)self curveCenterAngle];
    v11 = v10;
    [(NTKWidgetRichComplicationInlineView *)self curveRadius];
    v13 = v12;
    [(NTKWidgetRichComplicationInlineView *)self curveCenter];
    v15 = v14;
    v17 = v16;
    v18 = -1.57079633;
    if (v9)
    {
      v18 = 1.57079633;
    }

    v19 = v11 + v18;
    v20 = v19 - v8 * 0.5;
    v21 = v8 * 0.5 + v19;
    if (v9)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    if (v9)
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    v24 = [(CDRichComplicationView *)self device];
    v25 = NTKUtilityComplicationCurvedPlatterInsets(v24);
    v30 = NTKUtilityComplicationCurvedPointInside(v9, x, y, v13, v15, v17, v22, v23, v29, v25, v26, v27, v28);

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

- (void)setForegroundColor:(id)a3
{
  v5 = a3;
  v6.receiver = self;
  v6.super_class = NTKWidgetUtilityComplicationProxyView;
  [(CDRichComplicationView *)&v6 setForegroundColor:v5];
  if (self->_foregroundColor != v5)
  {
    objc_storeStrong(&self->_foregroundColor, a3);
    [(NTKWidgetRichComplicationInlineView *)self setTextColor:v5];
    [(NTKWidgetUtilityComplicationProxyView *)self setNeedsLayout];
  }
}

- (void)setAccentColor:(id)a3
{
  v5 = a3;
  if (self->_accentColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_accentColor, a3);
    v5 = v6;
  }
}

- (void)setUsesLegibility:(BOOL)a3
{
  if (self->_usesLegibility != a3)
  {
    self->_usesLegibility = a3;
  }
}

- (void)setShadowColor:(id)a3
{
  v5 = a3;
  if (self->_shadowColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_shadowColor, a3);
    v5 = v6;
  }
}

- (void)setPlacement:(unint64_t)a3
{
  v3 = a3;
  self->_placement = a3;
  if ((a3 & 2) != 0)
  {
    [(NTKWidgetRichComplicationInlineView *)self setTextAlignment:3];
    v5 = 1;
  }

  else if ((a3 & 8) != 0)
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
  v9 = [(CDRichComplicationView *)self device];
  self->_touchEdgeInsets.top = NTKUtilityTouchEdgeInsetsForPlacementAndDevice(v3, v9);
  self->_touchEdgeInsets.left = v6;
  self->_touchEdgeInsets.bottom = v7;
  self->_touchEdgeInsets.right = v8;
}

- (void)setUseRoundedFontDesign:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(NTKWidgetRichComplicationInlineView *)self setFontDesign:v3];
}

- (void)applyFaceColorPalette:(id)a3 units:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CDRichComplicationView *)self device];
  v9 = [NTKFaceColorScheme colorSchemeForDevice:v7 withFaceColorPalette:v6 units:a4];

  LODWORD(a4) = [v6 isMulticolor];
  v8 = 1.0;
  if (a4)
  {
    v8 = 0.0;
  }

  [(NTKWidgetUtilityComplicationProxyView *)self _applyFaceColorScheme:v9 monochromeFraction:v8];
}

- (void)applyTransitionFraction:(double)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5 units:(unint64_t)a6 brightenedUnits:(unint64_t)a7
{
  v12 = a5;
  v13 = a4;
  v14 = [(CDRichComplicationView *)self device];
  LOBYTE(v15) = 0;
  v16 = [NTKFaceColorScheme interpolationForDevice:v14 fromFaceColorPalette:v13 toFaceColorPalette:v12 fraction:a6 units:a7 brightenUnits:0 overrideColor:a3 alternateHighlight:v15];

  [v13 isMulticolor];
  [v12 isMulticolor];

  CLKInterpolateBetweenFloatsClipped();
  [(NTKWidgetUtilityComplicationProxyView *)self _applyFaceColorScheme:v16 monochromeFraction:?];
}

- (void)_applyFaceColorScheme:(id)a3 monochromeFraction:(double)a4
{
  v6 = [a3 foregroundColor];
  [(NTKWidgetUtilityComplicationProxyView *)self setForegroundColor:v6];

  [(NTKWidgetRichComplicationView *)self transitionToMonochromeWithFraction:a4];
}

- (id)_chsWidgetTintParameters
{
  v3 = [(NTKWidgetRichComplicationInlineView *)self textColor];
  v4 = [v3 BSColor];

  v5 = objc_alloc(MEMORY[0x277CFA440]);
  [(NTKWidgetRichComplicationView *)self monochromeFraction];
  v6 = [v5 initWithPrimaryTintColor:v4 secondaryTintColor:v4 filterStyle:0 fallbackFilterStyle:0 fraction:?];

  return v6;
}

- (void)curvedLabelAngularWidthChanged
{
  v4.receiver = self;
  v4.super_class = NTKWidgetUtilityComplicationProxyView;
  [(NTKWidgetRichComplicationInlineView *)&v4 curvedLabelAngularWidthChanged];
  v3 = [(NTKWidgetUtilityComplicationProxyView *)self delegate];
  [(NTKWidgetRichComplicationInlineView *)self bezelTextAngularWidth];
  [v3 utilityComplicationView:self didChangeTextWidth:?];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
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
    v5 = [(CDRichComplicationView *)self device];
    v4 = v4 + NTKUtilityComplicationBezelAngularPadding(v5);
  }

  return v4;
}

- (NTKUtilityFlatComplicationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end