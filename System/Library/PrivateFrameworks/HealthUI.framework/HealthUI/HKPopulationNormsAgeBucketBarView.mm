@interface HKPopulationNormsAgeBucketBarView
- (HKPopulationNormsAgeBucketBarView)initWithReferenceMinY:(double)y referenceMaxY:(double)maxY highlightColor:(id)color;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)updateWithAscendingThresholds:(id)thresholds currentHighlightIndex:(unint64_t)index;
@end

@implementation HKPopulationNormsAgeBucketBarView

- (HKPopulationNormsAgeBucketBarView)initWithReferenceMinY:(double)y referenceMaxY:(double)maxY highlightColor:(id)color
{
  v40[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v38.receiver = self;
  v38.super_class = HKPopulationNormsAgeBucketBarView;
  v10 = [(HKPopulationNormsAgeBucketBarView *)&v38 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v11 = v10;
  if (v10)
  {
    v10->_referenceMinY = y;
    v10->_referenceMaxY = maxY;
    v12 = objc_alloc_init(MEMORY[0x1E6979398]);
    underlyingBarLayer = v11->_underlyingBarLayer;
    v11->_underlyingBarLayer = v12;

    [(CALayer *)v11->_underlyingBarLayer setCornerRadius:5.0];
    [(CALayer *)v11->_underlyingBarLayer setMasksToBounds:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    -[CALayer setBackgroundColor:](v11->_underlyingBarLayer, "setBackgroundColor:", [clearColor CGColor]);

    layer = [(HKPopulationNormsAgeBucketBarView *)v11 layer];
    [layer addSublayer:v11->_underlyingBarLayer];

    v16 = objc_alloc_init(MEMORY[0x1E6979398]);
    segmentsLayer = v11->_segmentsLayer;
    v11->_segmentsLayer = v16;

    [(CALayer *)v11->_underlyingBarLayer addSublayer:v11->_segmentsLayer];
    objc_storeStrong(&v11->_highlightColor, color);
    v18 = objc_alloc_init(MEMORY[0x1E6979398]);
    highlightedLayer = v11->_highlightedLayer;
    v11->_highlightedLayer = v18;

    [(CALayer *)v11->_highlightedLayer setCornerRadius:2.0];
    [(CALayer *)v11->_highlightedLayer setMasksToBounds:1];
    [(CALayer *)v11->_highlightedLayer setBackgroundColor:[(UIColor *)v11->_highlightColor CGColor]];
    [(CALayer *)v11->_underlyingBarLayer addSublayer:v11->_highlightedLayer];
    v20 = MEMORY[0x1E69DB878];
    v21 = *MEMORY[0x1E69DDD10];
    v22 = *MEMORY[0x1E69DB8D8];
    v23 = *MEMORY[0x1E69DDC60];
    traitCollection = [(HKPopulationNormsAgeBucketBarView *)v11 traitCollection];
    v25 = [v20 _preferredFontForTextStyle:v21 design:v22 variant:1024 maximumContentSizeCategory:v23 compatibleWithTraitCollection:traitCollection];

    v39 = *MEMORY[0x1E69DB648];
    v40[0] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    highlightedTextLayerAttributes = v11->_highlightedTextLayerAttributes;
    v11->_highlightedTextLayerAttributes = v26;

    v28 = objc_alloc_init(MEMORY[0x1E6979508]);
    highlightedTopLabelLayer = v11->_highlightedTopLabelLayer;
    v11->_highlightedTopLabelLayer = v28;

    [(CATextLayer *)v11->_highlightedTopLabelLayer setFont:v25];
    [(CATextLayer *)v11->_highlightedTopLabelLayer setFontSize:12.0];
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen scale];
    [(CATextLayer *)v11->_highlightedTopLabelLayer setContentsScale:?];

    v31 = *MEMORY[0x1E6979560];
    [(CATextLayer *)v11->_highlightedTopLabelLayer setAlignmentMode:*MEMORY[0x1E6979560]];
    layer2 = [(HKPopulationNormsAgeBucketBarView *)v11 layer];
    [layer2 addSublayer:v11->_highlightedTopLabelLayer];

    v33 = objc_alloc_init(MEMORY[0x1E6979508]);
    highlightedBottomLabelLayer = v11->_highlightedBottomLabelLayer;
    v11->_highlightedBottomLabelLayer = v33;

    [(CATextLayer *)v11->_highlightedBottomLabelLayer setFont:v25];
    [(CATextLayer *)v11->_highlightedBottomLabelLayer setFontSize:12.0];
    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 scale];
    [(CATextLayer *)v11->_highlightedBottomLabelLayer setContentsScale:?];

    [(CATextLayer *)v11->_highlightedBottomLabelLayer setAlignmentMode:v31];
    layer3 = [(HKPopulationNormsAgeBucketBarView *)v11 layer];
    [layer3 addSublayer:v11->_highlightedBottomLabelLayer];
  }

  return v11;
}

- (void)updateWithAscendingThresholds:(id)thresholds currentHighlightIndex:(unint64_t)index
{
  v38 = *MEMORY[0x1E69E9840];
  thresholdsCopy = thresholds;
  if ([thresholdsCopy count] <= 2)
  {
    [HKPopulationNormsAgeBucketBarView updateWithAscendingThresholds:a2 currentHighlightIndex:self];
  }

  if ([(NSArray *)self->_ascendingThresholds count]- 1 <= index)
  {
    [HKPopulationNormsAgeBucketBarView updateWithAscendingThresholds:a2 currentHighlightIndex:self];
  }

  objc_storeStrong(&self->_ascendingThresholds, thresholds);
  self->_highlightedSegmentIndex = index;
  v9 = [(NSArray *)self->_ascendingThresholds count];
  sublayers = [(CALayer *)self->_segmentsLayer sublayers];
  v11 = [sublayers count];
  v12 = v9 + ~v11;

  if (v12 < 1)
  {
    if (v12 < 0)
    {
      v14 = v11 - v9 + 1;
      do
      {
        sublayers2 = [(CALayer *)self->_segmentsLayer sublayers];
        lastObject = [sublayers2 lastObject];
        [lastObject removeFromSuperlayer];

        --v14;
      }

      while (v14);
    }
  }

  else
  {
    do
    {
      v13 = objc_alloc_init(MEMORY[0x1E6979398]);
      [v13 setCornerRadius:2.0];
      [(CALayer *)self->_segmentsLayer addSublayer:v13];

      --v12;
    }

    while (v12);
  }

  self->_visibleBarMinY = 1.79769313e308;
  self->_visibleBarMaxY = 2.22507386e-308;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = thresholdsCopy;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      v21 = 0;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v33 + 1) + 8 * v21) floatValue];
        v23 = v22;
        if (self->_visibleBarMinY > v23)
        {
          self->_visibleBarMinY = v23;
        }

        if (self->_visibleBarMaxY <= v23)
        {
          self->_visibleBarMaxY = v23;
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v19);
  }

  v24 = [(NSArray *)self->_ascendingThresholds objectAtIndexedSubscript:index];
  [v24 floatValue];
  self->_highlightedSectionMinY = v25;

  v26 = [(NSArray *)self->_ascendingThresholds objectAtIndexedSubscript:index + 1];
  [v26 floatValue];
  self->_highlightedSectionMaxY = v27;

  v28 = [MEMORY[0x1E696AD98] numberWithDouble:self->_highlightedSectionMinY];
  v29 = HKLocalizedStringForNumberWithDecimalPrecision(v28, 1, 0);
  [(CATextLayer *)self->_highlightedBottomLabelLayer setString:v29];

  v30 = [MEMORY[0x1E696AD98] numberWithDouble:self->_highlightedSectionMaxY];
  v31 = HKLocalizedStringForNumberWithDecimalPrecision(v30, 1, 0);
  [(CATextLayer *)self->_highlightedTopLabelLayer setString:v31];

  layer = [(HKPopulationNormsAgeBucketBarView *)self layer];
  [layer layoutSublayers];
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  layer = [(HKPopulationNormsAgeBucketBarView *)self layer];
  v5 = [layerCopy isEqual:layer];

  if (v5)
  {
    hk_populationChartSeriesColor = [MEMORY[0x1E69DC888] hk_populationChartSeriesColor];
    cGColor = [hk_populationChartSeriesColor CGColor];

    cGColor2 = [(UIColor *)self->_highlightColor CGColor];
    hk_populationChartTextColor = [MEMORY[0x1E69DC888] hk_populationChartTextColor];
    -[CATextLayer setForegroundColor:](self->_highlightedTopLabelLayer, "setForegroundColor:", [hk_populationChartTextColor CGColor]);

    hk_populationChartTextColor2 = [MEMORY[0x1E69DC888] hk_populationChartTextColor];
    -[CATextLayer setForegroundColor:](self->_highlightedBottomLabelLayer, "setForegroundColor:", [hk_populationChartTextColor2 CGColor]);

    referenceMaxY = self->_referenceMaxY;
    v12 = referenceMaxY - self->_referenceMinY;
    visibleBarMaxY = self->_visibleBarMaxY;
    v14 = visibleBarMaxY - self->_visibleBarMinY;
    v15 = v14 / v12;
    v16 = (referenceMaxY - visibleBarMaxY) / v12;
    layer2 = [(HKPopulationNormsAgeBucketBarView *)self layer];
    [layer2 frame];
    v18 = CGRectGetWidth(v71) + -20.0;

    if (v18 > 30.0)
    {
      v18 = 30.0;
    }

    window = [(HKPopulationNormsAgeBucketBarView *)self window];

    if (window)
    {
      window2 = [(HKPopulationNormsAgeBucketBarView *)self window];
      traitCollection = [window2 traitCollection];
      horizontalSizeClass = [traitCollection horizontalSizeClass];

      if (horizontalSizeClass == 2)
      {
        layer3 = [(HKPopulationNormsAgeBucketBarView *)self layer];
        [layer3 frame];
        v18 = CGRectGetWidth(v72) + -20.0;

        if (v18 > 60.0)
        {
          v18 = 60.0;
        }
      }
    }

    layer4 = [(HKPopulationNormsAgeBucketBarView *)self layer];
    [layer4 frame];
    Width = CGRectGetWidth(v73);
    v26 = HKUIFloorToScreenScale((Width - v18) * 0.5);

    layer5 = [(HKPopulationNormsAgeBucketBarView *)self layer];
    [layer5 frame];
    v28 = v16 * CGRectGetHeight(v74);
    layer6 = [(HKPopulationNormsAgeBucketBarView *)self layer];
    [layer6 frame];
    [(CALayer *)self->_underlyingBarLayer setFrame:v26, v28, v18, v15 * CGRectGetHeight(v75)];

    [(CALayer *)self->_underlyingBarLayer frame];
    MinY = CGRectGetMinY(v76);
    v31 = self->_visibleBarMaxY;
    v32 = (v31 - self->_highlightedSectionMinY) / v14;
    v33 = (v31 - self->_highlightedSectionMaxY) / v14;
    _bottomSegmentIsHighlighted = [(HKPopulationNormsAgeBucketBarView *)self _bottomSegmentIsHighlighted];
    if ([(HKPopulationNormsAgeBucketBarView *)self _topSegmentIsHighlighted])
    {
      v35 = 0.0;
    }

    else
    {
      v35 = 1.0;
    }

    [(CALayer *)self->_underlyingBarLayer frame];
    Height = CGRectGetHeight(v77);
    v37 = -0.0;
    if (!_bottomSegmentIsHighlighted)
    {
      v37 = -1.0;
    }

    v38 = v37 + Height * v32;
    [(CALayer *)self->_underlyingBarLayer frame];
    v39 = v35 + CGRectGetHeight(v78) * v33;
    [(CALayer *)self->_highlightedLayer setBackgroundColor:cGColor2];
    [(CALayer *)self->_underlyingBarLayer frame];
    [(CALayer *)self->_highlightedLayer setFrame:0.0, v38, CGRectGetWidth(v79), v39 - v38];
    string = [(CATextLayer *)self->_highlightedTopLabelLayer string];
    [string sizeWithAttributes:self->_highlightedTextLayerAttributes];
    v41 = v40;
    v42 = MinY + v39 - v40 + -4.0;
    layer7 = [(HKPopulationNormsAgeBucketBarView *)self layer];
    [layer7 frame];
    [(CATextLayer *)self->_highlightedTopLabelLayer setFrame:0.0, v42, CGRectGetWidth(v80), v41];

    [(CATextLayer *)self->_highlightedTopLabelLayer setHidden:[(HKPopulationNormsAgeBucketBarView *)self _topSegmentIsHighlighted]];
    string2 = [(CATextLayer *)self->_highlightedBottomLabelLayer string];
    [string2 sizeWithAttributes:self->_highlightedTextLayerAttributes];
    v45 = v44;
    layer8 = [(HKPopulationNormsAgeBucketBarView *)self layer];
    [layer8 frame];
    [(CATextLayer *)self->_highlightedBottomLabelLayer setFrame:0.0, MinY + v38 + 4.0, CGRectGetWidth(v81), v45];

    [(CATextLayer *)self->_highlightedBottomLabelLayer setHidden:[(HKPopulationNormsAgeBucketBarView *)self _bottomSegmentIsHighlighted]];
    [(CALayer *)self->_underlyingBarLayer bounds];
    [(CALayer *)self->_segmentsLayer setFrame:?];
    sublayers = [(CALayer *)self->_segmentsLayer sublayers];
    v48 = [sublayers count];

    if (v48)
    {
      v49 = 0;
      do
      {
        sublayers2 = [(CALayer *)self->_segmentsLayer sublayers];
        v51 = [sublayers2 objectAtIndexedSubscript:v49];

        [v51 setBackgroundColor:cGColor];
        v52 = [(NSArray *)self->_ascendingThresholds objectAtIndexedSubscript:v49];
        v53 = v49 + 1;
        [(NSArray *)self->_ascendingThresholds objectAtIndexedSubscript:v49 + 1];
        v55 = v54 = cGColor;
        if (v49 == v48 - 1)
        {
          v56 = 0.0;
        }

        else
        {
          v56 = 1.0;
        }

        v57 = self->_visibleBarMaxY;
        [v52 floatValue];
        v59 = (v57 - v58) / v14;
        v60 = self->_visibleBarMaxY;
        [v55 floatValue];
        v62 = (v60 - v61) / v14;
        [(CALayer *)self->_segmentsLayer frame];
        v63 = CGRectGetHeight(v82);
        if (v49)
        {
          v64 = -1.0;
        }

        else
        {
          v64 = -0.0;
        }

        v65 = v64 + v63 * v59;
        [(CALayer *)self->_segmentsLayer frame];
        v66 = v56 + CGRectGetHeight(v83) * v62;
        [(CALayer *)self->_segmentsLayer frame];
        [v51 setFrame:{0.0, v65, CGRectGetWidth(v84), v66 - v65}];

        cGColor = v54;
        ++v49;
      }

      while (v53 != v48);
    }
  }
}

- (void)updateWithAscendingThresholds:(uint64_t)a1 currentHighlightIndex:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKPopulationNormsAgeBucketBarView.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"ascendingThresholds.count > 2"}];
}

- (void)updateWithAscendingThresholds:(uint64_t)a1 currentHighlightIndex:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKPopulationNormsAgeBucketBarView.m" lineNumber:104 description:{@"Invalid parameter not satisfying: %@", @"segmentIndex >= 0 && segmentIndex < _ascendingThresholds.count-1"}];
}

@end