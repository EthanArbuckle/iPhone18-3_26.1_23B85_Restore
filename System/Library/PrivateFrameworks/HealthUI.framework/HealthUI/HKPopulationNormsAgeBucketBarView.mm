@interface HKPopulationNormsAgeBucketBarView
- (HKPopulationNormsAgeBucketBarView)initWithReferenceMinY:(double)a3 referenceMaxY:(double)a4 highlightColor:(id)a5;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)updateWithAscendingThresholds:(id)a3 currentHighlightIndex:(unint64_t)a4;
@end

@implementation HKPopulationNormsAgeBucketBarView

- (HKPopulationNormsAgeBucketBarView)initWithReferenceMinY:(double)a3 referenceMaxY:(double)a4 highlightColor:(id)a5
{
  v40[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v38.receiver = self;
  v38.super_class = HKPopulationNormsAgeBucketBarView;
  v10 = [(HKPopulationNormsAgeBucketBarView *)&v38 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v11 = v10;
  if (v10)
  {
    v10->_referenceMinY = a3;
    v10->_referenceMaxY = a4;
    v12 = objc_alloc_init(MEMORY[0x1E6979398]);
    underlyingBarLayer = v11->_underlyingBarLayer;
    v11->_underlyingBarLayer = v12;

    [(CALayer *)v11->_underlyingBarLayer setCornerRadius:5.0];
    [(CALayer *)v11->_underlyingBarLayer setMasksToBounds:1];
    v14 = [MEMORY[0x1E69DC888] clearColor];
    -[CALayer setBackgroundColor:](v11->_underlyingBarLayer, "setBackgroundColor:", [v14 CGColor]);

    v15 = [(HKPopulationNormsAgeBucketBarView *)v11 layer];
    [v15 addSublayer:v11->_underlyingBarLayer];

    v16 = objc_alloc_init(MEMORY[0x1E6979398]);
    segmentsLayer = v11->_segmentsLayer;
    v11->_segmentsLayer = v16;

    [(CALayer *)v11->_underlyingBarLayer addSublayer:v11->_segmentsLayer];
    objc_storeStrong(&v11->_highlightColor, a5);
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
    v24 = [(HKPopulationNormsAgeBucketBarView *)v11 traitCollection];
    v25 = [v20 _preferredFontForTextStyle:v21 design:v22 variant:1024 maximumContentSizeCategory:v23 compatibleWithTraitCollection:v24];

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
    v30 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v30 scale];
    [(CATextLayer *)v11->_highlightedTopLabelLayer setContentsScale:?];

    v31 = *MEMORY[0x1E6979560];
    [(CATextLayer *)v11->_highlightedTopLabelLayer setAlignmentMode:*MEMORY[0x1E6979560]];
    v32 = [(HKPopulationNormsAgeBucketBarView *)v11 layer];
    [v32 addSublayer:v11->_highlightedTopLabelLayer];

    v33 = objc_alloc_init(MEMORY[0x1E6979508]);
    highlightedBottomLabelLayer = v11->_highlightedBottomLabelLayer;
    v11->_highlightedBottomLabelLayer = v33;

    [(CATextLayer *)v11->_highlightedBottomLabelLayer setFont:v25];
    [(CATextLayer *)v11->_highlightedBottomLabelLayer setFontSize:12.0];
    v35 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v35 scale];
    [(CATextLayer *)v11->_highlightedBottomLabelLayer setContentsScale:?];

    [(CATextLayer *)v11->_highlightedBottomLabelLayer setAlignmentMode:v31];
    v36 = [(HKPopulationNormsAgeBucketBarView *)v11 layer];
    [v36 addSublayer:v11->_highlightedBottomLabelLayer];
  }

  return v11;
}

- (void)updateWithAscendingThresholds:(id)a3 currentHighlightIndex:(unint64_t)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([v8 count] <= 2)
  {
    [HKPopulationNormsAgeBucketBarView updateWithAscendingThresholds:a2 currentHighlightIndex:self];
  }

  if ([(NSArray *)self->_ascendingThresholds count]- 1 <= a4)
  {
    [HKPopulationNormsAgeBucketBarView updateWithAscendingThresholds:a2 currentHighlightIndex:self];
  }

  objc_storeStrong(&self->_ascendingThresholds, a3);
  self->_highlightedSegmentIndex = a4;
  v9 = [(NSArray *)self->_ascendingThresholds count];
  v10 = [(CALayer *)self->_segmentsLayer sublayers];
  v11 = [v10 count];
  v12 = v9 + ~v11;

  if (v12 < 1)
  {
    if (v12 < 0)
    {
      v14 = v11 - v9 + 1;
      do
      {
        v15 = [(CALayer *)self->_segmentsLayer sublayers];
        v16 = [v15 lastObject];
        [v16 removeFromSuperlayer];

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
  v17 = v8;
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

  v24 = [(NSArray *)self->_ascendingThresholds objectAtIndexedSubscript:a4];
  [v24 floatValue];
  self->_highlightedSectionMinY = v25;

  v26 = [(NSArray *)self->_ascendingThresholds objectAtIndexedSubscript:a4 + 1];
  [v26 floatValue];
  self->_highlightedSectionMaxY = v27;

  v28 = [MEMORY[0x1E696AD98] numberWithDouble:self->_highlightedSectionMinY];
  v29 = HKLocalizedStringForNumberWithDecimalPrecision(v28, 1, 0);
  [(CATextLayer *)self->_highlightedBottomLabelLayer setString:v29];

  v30 = [MEMORY[0x1E696AD98] numberWithDouble:self->_highlightedSectionMaxY];
  v31 = HKLocalizedStringForNumberWithDecimalPrecision(v30, 1, 0);
  [(CATextLayer *)self->_highlightedTopLabelLayer setString:v31];

  v32 = [(HKPopulationNormsAgeBucketBarView *)self layer];
  [v32 layoutSublayers];
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v69 = a3;
  v4 = [(HKPopulationNormsAgeBucketBarView *)self layer];
  v5 = [v69 isEqual:v4];

  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] hk_populationChartSeriesColor];
    v7 = [v6 CGColor];

    v8 = [(UIColor *)self->_highlightColor CGColor];
    v9 = [MEMORY[0x1E69DC888] hk_populationChartTextColor];
    -[CATextLayer setForegroundColor:](self->_highlightedTopLabelLayer, "setForegroundColor:", [v9 CGColor]);

    v10 = [MEMORY[0x1E69DC888] hk_populationChartTextColor];
    -[CATextLayer setForegroundColor:](self->_highlightedBottomLabelLayer, "setForegroundColor:", [v10 CGColor]);

    referenceMaxY = self->_referenceMaxY;
    v12 = referenceMaxY - self->_referenceMinY;
    visibleBarMaxY = self->_visibleBarMaxY;
    v14 = visibleBarMaxY - self->_visibleBarMinY;
    v15 = v14 / v12;
    v16 = (referenceMaxY - visibleBarMaxY) / v12;
    v17 = [(HKPopulationNormsAgeBucketBarView *)self layer];
    [v17 frame];
    v18 = CGRectGetWidth(v71) + -20.0;

    if (v18 > 30.0)
    {
      v18 = 30.0;
    }

    v19 = [(HKPopulationNormsAgeBucketBarView *)self window];

    if (v19)
    {
      v20 = [(HKPopulationNormsAgeBucketBarView *)self window];
      v21 = [v20 traitCollection];
      v22 = [v21 horizontalSizeClass];

      if (v22 == 2)
      {
        v23 = [(HKPopulationNormsAgeBucketBarView *)self layer];
        [v23 frame];
        v18 = CGRectGetWidth(v72) + -20.0;

        if (v18 > 60.0)
        {
          v18 = 60.0;
        }
      }
    }

    v24 = [(HKPopulationNormsAgeBucketBarView *)self layer];
    [v24 frame];
    Width = CGRectGetWidth(v73);
    v26 = HKUIFloorToScreenScale((Width - v18) * 0.5);

    v27 = [(HKPopulationNormsAgeBucketBarView *)self layer];
    [v27 frame];
    v28 = v16 * CGRectGetHeight(v74);
    v29 = [(HKPopulationNormsAgeBucketBarView *)self layer];
    [v29 frame];
    [(CALayer *)self->_underlyingBarLayer setFrame:v26, v28, v18, v15 * CGRectGetHeight(v75)];

    [(CALayer *)self->_underlyingBarLayer frame];
    MinY = CGRectGetMinY(v76);
    v31 = self->_visibleBarMaxY;
    v32 = (v31 - self->_highlightedSectionMinY) / v14;
    v33 = (v31 - self->_highlightedSectionMaxY) / v14;
    v34 = [(HKPopulationNormsAgeBucketBarView *)self _bottomSegmentIsHighlighted];
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
    if (!v34)
    {
      v37 = -1.0;
    }

    v38 = v37 + Height * v32;
    [(CALayer *)self->_underlyingBarLayer frame];
    v39 = v35 + CGRectGetHeight(v78) * v33;
    [(CALayer *)self->_highlightedLayer setBackgroundColor:v8];
    [(CALayer *)self->_underlyingBarLayer frame];
    [(CALayer *)self->_highlightedLayer setFrame:0.0, v38, CGRectGetWidth(v79), v39 - v38];
    v68 = [(CATextLayer *)self->_highlightedTopLabelLayer string];
    [v68 sizeWithAttributes:self->_highlightedTextLayerAttributes];
    v41 = v40;
    v42 = MinY + v39 - v40 + -4.0;
    v43 = [(HKPopulationNormsAgeBucketBarView *)self layer];
    [v43 frame];
    [(CATextLayer *)self->_highlightedTopLabelLayer setFrame:0.0, v42, CGRectGetWidth(v80), v41];

    [(CATextLayer *)self->_highlightedTopLabelLayer setHidden:[(HKPopulationNormsAgeBucketBarView *)self _topSegmentIsHighlighted]];
    v67 = [(CATextLayer *)self->_highlightedBottomLabelLayer string];
    [v67 sizeWithAttributes:self->_highlightedTextLayerAttributes];
    v45 = v44;
    v46 = [(HKPopulationNormsAgeBucketBarView *)self layer];
    [v46 frame];
    [(CATextLayer *)self->_highlightedBottomLabelLayer setFrame:0.0, MinY + v38 + 4.0, CGRectGetWidth(v81), v45];

    [(CATextLayer *)self->_highlightedBottomLabelLayer setHidden:[(HKPopulationNormsAgeBucketBarView *)self _bottomSegmentIsHighlighted]];
    [(CALayer *)self->_underlyingBarLayer bounds];
    [(CALayer *)self->_segmentsLayer setFrame:?];
    v47 = [(CALayer *)self->_segmentsLayer sublayers];
    v48 = [v47 count];

    if (v48)
    {
      v49 = 0;
      do
      {
        v50 = [(CALayer *)self->_segmentsLayer sublayers];
        v51 = [v50 objectAtIndexedSubscript:v49];

        [v51 setBackgroundColor:v7];
        v52 = [(NSArray *)self->_ascendingThresholds objectAtIndexedSubscript:v49];
        v53 = v49 + 1;
        [(NSArray *)self->_ascendingThresholds objectAtIndexedSubscript:v49 + 1];
        v55 = v54 = v7;
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

        v7 = v54;
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