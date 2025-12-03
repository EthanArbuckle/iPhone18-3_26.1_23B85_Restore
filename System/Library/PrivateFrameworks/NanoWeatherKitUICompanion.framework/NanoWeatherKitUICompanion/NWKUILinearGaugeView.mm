@interface NWKUILinearGaugeView
- ($1AB5FA073B851C12C2339EC22442E995)layoutConstants;
- (CGPoint)_centerOfValueIndicator:(id)indicator;
- (CGRect)valueIndicatorCutoutFrame;
- (CGSize)intrinsicContentSize;
- (NWKUILinearGaugeView)initWithLayoutConstants:(id)constants;
- (id)_cgColorsFromColorIndices:(id)indices;
- (id)_createGradientLayer;
- (void)_applyCGColors:(id)colors toGradientLayer:(id)layer;
- (void)_gradientLocationInformationForGaugeWithHeight:(double)height colorIndices:(id)indices handler:(id)handler;
- (void)_setNeedsUpdateGauge;
- (void)applyBackgroundGaugeFilters:(id)filters fraction:(double)fraction;
- (void)applyForegroundGaugeFilters:(id)filters;
- (void)applyIndicatorFillColor:(id)color;
- (void)interpolateIndicatorWithColor:(id)color fraction:(double)fraction;
- (void)layoutSubviews;
- (void)setBackgroundColorIndices:(id)indices;
- (void)setColorIndices:(id)indices;
- (void)setHighValue:(double)value;
- (void)setValue:(double)value;
@end

@implementation NWKUILinearGaugeView

- (NWKUILinearGaugeView)initWithLayoutConstants:(id)constants
{
  var2 = constants.var2;
  var1 = constants.var1;
  var0 = constants.var0;
  v24.receiver = self;
  v24.super_class = NWKUILinearGaugeView;
  v6 = [(NWKUILinearGaugeView *)&v24 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_layoutConstants.width = var0;
    v6->_layoutConstants.indicatorDiameter = var1;
    v6->_layoutConstants.indicatorStrokeWidth = var2;
    v8 = objc_alloc_init(MEMORY[0x277CD9ED0]);
    [(NWKUILinearGaugeView *)v7 setGaugeWrapperLayer:v8];

    CATransform3DMakeScale(&v23, 1.0, -1.0, 1.0);
    gaugeWrapperLayer = [(NWKUILinearGaugeView *)v7 gaugeWrapperLayer];
    v22 = v23;
    [gaugeWrapperLayer setTransform:&v22];

    _createGradientLayer = [(NWKUILinearGaugeView *)v7 _createGradientLayer];
    LODWORD(v11) = 1050253722;
    [_createGradientLayer setOpacity:v11];
    [(NWKUILinearGaugeView *)v7 setBackgroundGaugeLayer:_createGradientLayer];

    gaugeWrapperLayer2 = [(NWKUILinearGaugeView *)v7 gaugeWrapperLayer];
    backgroundGaugeLayer = [(NWKUILinearGaugeView *)v7 backgroundGaugeLayer];
    [gaugeWrapperLayer2 addSublayer:backgroundGaugeLayer];

    _createGradientLayer2 = [(NWKUILinearGaugeView *)v7 _createGradientLayer];
    [(NWKUILinearGaugeView *)v7 setGaugeLayer:_createGradientLayer2];

    gaugeWrapperLayer3 = [(NWKUILinearGaugeView *)v7 gaugeWrapperLayer];
    gaugeLayer = [(NWKUILinearGaugeView *)v7 gaugeLayer];
    [gaugeWrapperLayer3 addSublayer:gaugeLayer];

    layer = [(NWKUILinearGaugeView *)v7 layer];
    gaugeWrapperLayer4 = [(NWKUILinearGaugeView *)v7 gaugeWrapperLayer];
    [layer addSublayer:gaugeWrapperLayer4];

    v19 = [[NWKUILinearGaugeValueIndicatorView alloc] initWithDiameter:var1];
    valueIndicator = v7->_valueIndicator;
    v7->_valueIndicator = &v19->super;

    [(UIView *)v7->_valueIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v7->_valueIndicator setHidden:1];
    [(NWKUILinearGaugeView *)v7 addSubview:v7->_valueIndicator];
    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = var1;
    v25.size.height = var1;
    v26 = CGRectInset(v25, -var2, -var2);
    v7->_valueIndicatorCutoutFrame = CGRectOffset(v26, var2, var2);
  }

  return v7;
}

- (CGSize)intrinsicContentSize
{
  [(NWKUILinearGaugeView *)self layoutConstants];
  v3 = *MEMORY[0x277D77260];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v62.receiver = self;
  v62.super_class = NWKUILinearGaugeView;
  [(NWKUILinearGaugeView *)&v62 layoutSubviews];
  [(NWKUILinearGaugeView *)self bounds];
  Height = CGRectGetHeight(v63);
  [(NWKUILinearGaugeView *)self lastLayoutSubviewsHeight];
  if (Height != v4)
  {
    [(NWKUILinearGaugeView *)self setLastLayoutSubviewsHeight:Height];
    [(NWKUILinearGaugeView *)self layoutConstants];
    v6 = v5;
    [(NWKUILinearGaugeView *)self bounds];
    v7 = (CGRectGetWidth(v64) - v6) * 0.5;
    [(NWKUILinearGaugeView *)self highValue];
    v9 = Height * v8;
    [(NWKUILinearGaugeView *)self valueIndicatorCutoutFrame];
    v10 = CGRectGetHeight(v65);
    if (v9 < v10)
    {
      v9 = v10;
    }

    v11 = *MEMORY[0x277CBF348];
    v12 = *(MEMORY[0x277CBF348] + 8);
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    gaugeWrapperLayer = [(NWKUILinearGaugeView *)self gaugeWrapperLayer];
    [gaugeWrapperLayer setFrame:{v7, 0.0, v6, Height}];

    backgroundGaugeLayer = [(NWKUILinearGaugeView *)self backgroundGaugeLayer];
    [backgroundGaugeLayer setBounds:{v11, v12, v6, Height}];

    gaugeLayer = [(NWKUILinearGaugeView *)self gaugeLayer];
    [gaugeLayer setBounds:{v11, v12, v6, v9}];

    [MEMORY[0x277CD9FF0] commit];
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy_;
    v60 = __Block_byref_object_dispose_;
    v61 = 0;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __38__NWKUILinearGaugeView_layoutSubviews__block_invoke;
    v55[3] = &unk_2799633C0;
    v55[4] = &v56;
    v16 = MEMORY[0x25F86D760](v55);
    backgroundColorIndices = [(NWKUILinearGaugeView *)self backgroundColorIndices];
    [(NWKUILinearGaugeView *)self _gradientLocationInformationForGaugeWithHeight:backgroundColorIndices colorIndices:v16 handler:Height];

    if (![v57[5] count])
    {
      v18 = v57[5];
      v57[5] = &unk_286D05D18;
    }

    v19 = v57[5];

    _Block_object_dispose(&v56, 8);
    backgroundGaugeLayer2 = [(NWKUILinearGaugeView *)self backgroundGaugeLayer];
    [backgroundGaugeLayer2 setLocations:v19];

    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy_;
    v60 = __Block_byref_object_dispose_;
    v61 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy_;
    v53 = __Block_byref_object_dispose_;
    v54 = 0;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __38__NWKUILinearGaugeView_layoutSubviews__block_invoke_10;
    v48[3] = &unk_2799633E8;
    v48[4] = &v56;
    v48[5] = &v49;
    v21 = MEMORY[0x25F86D760](v48);
    colorIndices = [(NWKUILinearGaugeView *)self colorIndices];
    [(NWKUILinearGaugeView *)self _gradientLocationInformationForGaugeWithHeight:colorIndices colorIndices:v21 handler:v9];

    if (![v57[5] count])
    {
      v23 = v57[5];
      v57[5] = &unk_286D05D30;
    }

    v24 = v57[5];
    gaugeLayer2 = [(NWKUILinearGaugeView *)self gaugeLayer];
    [gaugeLayer2 setLocations:v24];

    [(NWKUILinearGaugeView *)self value];
    if (v26 == 2.22507386e-308)
    {
      gaugeWrapperLayer2 = [(NWKUILinearGaugeView *)self gaugeWrapperLayer];
      [gaugeWrapperLayer2 setMask:0];

      valueIndicator = [(NWKUILinearGaugeView *)self valueIndicator];
      [valueIndicator setHidden:1];
    }

    else
    {
      v29 = v50[5];
      if (!v29)
      {
        lastObject = [v57[5] lastObject];
        v31 = v50[5];
        v50[5] = lastObject;

        v29 = v50[5];
      }

      [(NWKUILinearGaugeView *)self _centerOfValueIndicator:v29];
      v46 = v33;
      v47 = v32;
      [(NWKUILinearGaugeView *)self valueIndicatorCutoutFrame];
      x = v66.origin.x;
      y = v66.origin.y;
      width = v66.size.width;
      v37 = v66.size.height;
      MidX = CGRectGetMidX(v66);
      v67.origin.x = x;
      v67.origin.y = y;
      v67.size.width = width;
      v67.size.height = v37;
      MidY = CGRectGetMidY(v67);
      v68.origin.x = x;
      v68.origin.y = y;
      v68.size.width = width;
      v68.size.height = v37;
      v40 = CGRectGetWidth(v68);
      v69.origin.x = x;
      v69.origin.y = y;
      v69.size.width = width;
      v69.size.height = v37;
      v41 = CGRectGetHeight(v69);
      valueIndicator = objc_alloc_init(MEMORY[0x277CD9F90]);
      [(NWKUILinearGaugeView *)self bounds];
      [valueIndicator setFrame:?];
      [valueIndicator setFillRule:*MEMORY[0x277CDA248]];
      Mutable = CGPathCreateMutable();
      [(NWKUILinearGaugeView *)self bounds];
      CGPathAddRect(Mutable, 0, v70);
      v71.origin.x = v47 - MidX;
      v71.origin.y = v46 - MidY;
      v71.size.width = v40;
      v71.size.height = v41;
      CGPathAddEllipseInRect(Mutable, 0, v71);
      [valueIndicator setPath:Mutable];
      gaugeWrapperLayer3 = [(NWKUILinearGaugeView *)self gaugeWrapperLayer];
      [gaugeWrapperLayer3 setMask:valueIndicator];

      valueIndicator2 = [(NWKUILinearGaugeView *)self valueIndicator];
      [valueIndicator2 setCenter:{v47, Height - v46}];

      valueIndicator3 = [(NWKUILinearGaugeView *)self valueIndicator];
      [valueIndicator3 setHidden:0];
    }

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v56, 8);
  }
}

void __38__NWKUILinearGaugeView_layoutSubviews__block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)applyForegroundGaugeFilters:(id)filters
{
  filtersCopy = filters;
  gaugeLayer = [(NWKUILinearGaugeView *)self gaugeLayer];
  [gaugeLayer setFilters:filtersCopy];
}

- (void)applyBackgroundGaugeFilters:(id)filters fraction:(double)fraction
{
  filtersCopy = filters;
  backgroundGaugeLayer = [(NWKUILinearGaugeView *)self backgroundGaugeLayer];
  [backgroundGaugeLayer setFilters:filtersCopy];

  *&fraction = fraction * -0.1 + 0.3;
  backgroundGaugeLayer2 = [(NWKUILinearGaugeView *)self backgroundGaugeLayer];
  LODWORD(v8) = LODWORD(fraction);
  [backgroundGaugeLayer2 setOpacity:v8];
}

- (void)applyIndicatorFillColor:(id)color
{
  colorCopy = color;
  [(NWKUILinearGaugeView *)self setIndicatorFillColor:colorCopy];
  valueIndicator = [(NWKUILinearGaugeView *)self valueIndicator];
  [valueIndicator setBackgroundColor:colorCopy];
}

- (void)interpolateIndicatorWithColor:(id)color fraction:(double)fraction
{
  colorCopy = color;
  indicatorFillColor = [(NWKUILinearGaugeView *)self indicatorFillColor];
  v7 = NWMInterpolateBetweenColors(indicatorFillColor, colorCopy, fraction);

  valueIndicator = [(NWKUILinearGaugeView *)self valueIndicator];
  [valueIndicator setBackgroundColor:v7];
}

- (void)setBackgroundColorIndices:(id)indices
{
  indicesCopy = indices;
  if (![(NSArray *)self->_backgroundColorIndices isEqualToArray:?])
  {
    objc_storeStrong(&self->_backgroundColorIndices, indices);
    v5 = [(NWKUILinearGaugeView *)self _cgColorsFromColorIndices:indicesCopy];
    backgroundGaugeLayer = [(NWKUILinearGaugeView *)self backgroundGaugeLayer];
    [(NWKUILinearGaugeView *)self _applyCGColors:v5 toGradientLayer:backgroundGaugeLayer];
  }
}

- (void)setColorIndices:(id)indices
{
  indicesCopy = indices;
  if (![(NSArray *)self->_colorIndices isEqualToArray:?])
  {
    objc_storeStrong(&self->_colorIndices, indices);
    v5 = [(NWKUILinearGaugeView *)self _cgColorsFromColorIndices:indicesCopy];
    gaugeLayer = [(NWKUILinearGaugeView *)self gaugeLayer];
    [(NWKUILinearGaugeView *)self _applyCGColors:v5 toGradientLayer:gaugeLayer];
  }
}

- (void)setHighValue:(double)value
{
  if (self->_highValue != value)
  {
    self->_highValue = value;
    [(NWKUILinearGaugeView *)self _setNeedsUpdateGauge];
  }
}

- (void)setValue:(double)value
{
  if (self->_value != value)
  {
    self->_value = value;
    [(NWKUILinearGaugeView *)self _setNeedsUpdateGauge];
  }
}

- (void)_applyCGColors:(id)colors toGradientLayer:(id)layer
{
  colorsCopy = colors;
  layerCopy = layer;
  if ([colorsCopy count])
  {
    [layerCopy setHidden:0];
    [layerCopy setColors:colorsCopy];
  }

  else
  {
    [layerCopy setHidden:1];
  }

  [(NWKUILinearGaugeView *)self _setNeedsUpdateGauge];
}

- (id)_cgColorsFromColorIndices:(id)indices
{
  v22 = *MEMORY[0x277D85DE8];
  indicesCopy = indices;
  array = [MEMORY[0x277CBEB18] array];
  if ([indicesCopy count] == 1)
  {
    firstObject = [indicesCopy firstObject];
    color = [firstObject color];
    [array addObject:{objc_msgSend(color, "CGColor")}];

    firstObject2 = [indicesCopy firstObject];
    color2 = [firstObject2 color];
    [array addObject:{objc_msgSend(color2, "CGColor")}];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    firstObject2 = indicesCopy;
    v9 = [firstObject2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(firstObject2);
          }

          color3 = [*(*(&v17 + 1) + 8 * i) color];
          [array addObject:{objc_msgSend(color3, "CGColor")}];
        }

        v10 = [firstObject2 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v14 = [array copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (CGPoint)_centerOfValueIndicator:(id)indicator
{
  indicatorCopy = indicator;
  [(NWKUILinearGaugeView *)self bounds];
  Height = CGRectGetHeight(v16);
  if ([(NWKUILinearGaugeView *)self shouldRenderValueAsPercentage])
  {
    [(NWKUILinearGaugeView *)self value];
    if (v6 <= 0.05)
    {
      [(NWKUILinearGaugeView *)self layoutConstants];
      v9 = v10 * 0.5;
      goto LABEL_9;
    }

    [(NWKUILinearGaugeView *)self value];
    if (v7 >= 0.95)
    {
      [(NWKUILinearGaugeView *)self layoutConstants];
      v9 = Height + v11 * -0.5;
      goto LABEL_9;
    }

    [(NWKUILinearGaugeView *)self value];
  }

  else
  {
    [indicatorCopy doubleValue];
  }

  v9 = Height * v8;
LABEL_9:
  [(NWKUILinearGaugeView *)self bounds];
  MidX = CGRectGetMidX(v17);

  v13 = MidX;
  v14 = v9;
  result.y = v14;
  result.x = v13;
  return result;
}

- (id)_createGradientLayer
{
  [(NWKUILinearGaugeView *)self layoutConstants];
  v3 = v2;
  v4 = objc_alloc_init(MEMORY[0x277CD9EB0]);
  [v4 setAnchorPoint:{0.0, 0.0}];
  [v4 setBorderColor:0];
  [v4 setCornerRadius:v3 * 0.5];
  [v4 setCornerCurve:*MEMORY[0x277CDA138]];

  return v4;
}

- (void)_gradientLocationInformationForGaugeWithHeight:(double)height colorIndices:(id)indices handler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  indicesCopy = indices;
  handlerCopy = handler;
  firstObject = [indicesCopy firstObject];
  [firstObject value];
  v12 = v11;

  lastObject = [indicesCopy lastObject];
  [lastObject value];
  v15 = v14;

  [(NWKUILinearGaugeView *)self layoutConstants];
  v17 = v16;
  array = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v19 = indicesCopy;
  v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = v15 - v12;
    v24 = v17 * 0.5 + 0.5;
    v25 = (height + v24 * -2.0) / height;
    v26 = v24 / height;
    v27 = *v38;
    v28 = 1.79769313e308;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        v30 = v28;
        if (*v38 != v27)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(&v37 + 1) + 8 * i) value];
        v28 = v31;
        v32 = (v31 - v30) * 0.5;
        if (v30 == 1.79769313e308)
        {
          v32 = 0.0;
        }

        v33 = v26 + v25 * ((v28 - v32 - v12) / v23);
        v34 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
        [array addObject:v34];

        if (!v22)
        {
          [(NWKUILinearGaugeView *)self value];
          if (v28 >= v35)
          {
            v22 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
          }

          else
          {
            v22 = 0;
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v21);
  }

  else
  {
    v22 = 0;
  }

  handlerCopy[2](handlerCopy, array, v22);
  v36 = *MEMORY[0x277D85DE8];
}

- (void)_setNeedsUpdateGauge
{
  [(NWKUILinearGaugeView *)self setLastLayoutSubviewsHeight:0.0];

  [(NWKUILinearGaugeView *)self setNeedsLayout];
}

- ($1AB5FA073B851C12C2339EC22442E995)layoutConstants
{
  width = self->_layoutConstants.width;
  indicatorDiameter = self->_layoutConstants.indicatorDiameter;
  indicatorStrokeWidth = self->_layoutConstants.indicatorStrokeWidth;
  result.var2 = indicatorStrokeWidth;
  result.var1 = indicatorDiameter;
  result.var0 = width;
  return result;
}

- (CGRect)valueIndicatorCutoutFrame
{
  x = self->_valueIndicatorCutoutFrame.origin.x;
  y = self->_valueIndicatorCutoutFrame.origin.y;
  width = self->_valueIndicatorCutoutFrame.size.width;
  height = self->_valueIndicatorCutoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end