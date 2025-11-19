@interface HKElectrocardiogramAxisView
- (CGSize)lastBoundsSize;
- (HKElectrocardiogramAxisView)initWithAxisSpacing:(double)a3 lineColor:(id)a4 lineWidth:(double)a5;
- (HKElectrocardiogramAxisView)initWithAxisSpacing:(double)a3 options:(id)a4 startingIndex:(int64_t)a5;
- (UIColor)lineColor;
- (UIFont)axisLabelFont;
- (double)lineWidth;
- (id)_createLabel;
- (void)_drawAxis;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HKElectrocardiogramAxisView

- (HKElectrocardiogramAxisView)initWithAxisSpacing:(double)a3 lineColor:(id)a4 lineWidth:(double)a5
{
  v8 = a4;
  v9 = [HKElectrocardiogramAxisOptions alloc];
  v10 = [MEMORY[0x1E69DB878] hk_roundedSystemFontWithSize:13.0 weight:*MEMORY[0x1E69DB970]];
  v11 = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  v12 = [(HKElectrocardiogramAxisOptions *)v9 initWithAxisLabelFont:v10 axisLabelTextColor:v11 scaleMetricsAutomatically:1 lineColor:v8 lineWidth:a5 axisLineToLabelSpacing:5.0 topBaselineMargin:18.0 bottomBaselineMargin:2.0];

  v13 = [(HKElectrocardiogramAxisView *)self initWithAxisSpacing:v12 options:0 startingIndex:a3];
  return v13;
}

- (HKElectrocardiogramAxisView)initWithAxisSpacing:(double)a3 options:(id)a4 startingIndex:(int64_t)a5
{
  v9 = a4;
  v17.receiver = self;
  v17.super_class = HKElectrocardiogramAxisView;
  v10 = [(HKElectrocardiogramAxisView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v11 = v10;
  if (v10)
  {
    v10->_axisSpacing = a3;
    objc_storeStrong(&v10->_options, a4);
    v12 = objc_alloc_init(MEMORY[0x1E6979430]);
    ticksLayer = v11->_ticksLayer;
    v11->_ticksLayer = v12;

    v14 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD28]];
    metrics = v11->_metrics;
    v11->_metrics = v14;

    v11->_startingIndex = a5;
    [(HKElectrocardiogramAxisView *)v11 _drawAxis];
  }

  return v11;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = HKElectrocardiogramAxisView;
  [(HKElectrocardiogramAxisView *)&v12 layoutSubviews];
  [(HKElectrocardiogramAxisView *)self lastBoundsSize];
  v4 = v3;
  v6 = v5;
  [(HKElectrocardiogramAxisView *)self bounds];
  if (v4 != v8 || v6 != v7)
  {
    [(HKElectrocardiogramAxisView *)self bounds];
    [(HKElectrocardiogramAxisView *)self setLastBoundsSize:v10, v11];
    [(HKElectrocardiogramAxisView *)self _drawAxis];
  }
}

- (void)_drawAxis
{
  v65 = *MEMORY[0x1E69E9840];
  [(HKElectrocardiogramAxisView *)self bounds];
  v4 = v3;
  [(HKElectrocardiogramAxisView *)self axisSpacing];
  v6 = v4 / v5;
  v7 = round(v6);
  if (vabdd_f64(v6, v7) < 0.01)
  {
    v6 = v7;
  }

  v8 = ceil(v6);
  v59 = 0u;
  v60 = 0u;
  if (v8 >= 1.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  v61 = 0uLL;
  v62 = 0uLL;
  v10 = [(HKElectrocardiogramAxisView *)self ticksLayer];
  v11 = [v10 sublayers];

  v12 = [v11 countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v60;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v60 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v59 + 1) + 8 * i) removeFromSuperlayer];
      }

      v13 = [v11 countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v13);
  }

  v16 = v9;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v17 = [(HKElectrocardiogramAxisView *)self subviews];
  v18 = [v17 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v56;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v56 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v55 + 1) + 8 * j) removeFromSuperview];
      }

      v19 = [v17 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v19);
  }

  v22 = MEMORY[0x1E69794A0];
  [(HKElectrocardiogramAxisView *)self bounds];
  v24 = v23;
  v25 = [(HKElectrocardiogramAxisView *)self options];
  [v25 lineWidth];
  v27 = [v22 verticalLineLayerWithLength:v24 lineWidth:v26];

  [v27 setFillColor:0];
  v28 = [(HKElectrocardiogramAxisView *)self lineColor];
  [v27 setStrokeColor:{objc_msgSend(v28, "CGColor")}];

  v29 = [(HKElectrocardiogramAxisView *)self ticksLayer];
  [v29 addSublayer:v27];

  v30 = [(HKElectrocardiogramAxisView *)self ticksLayer];
  [v30 setInstanceCount:v16 + 1];

  [(HKElectrocardiogramAxisView *)self axisSpacing];
  CATransform3DMakeTranslation(&v54, v31, 0.0, 0.0);
  v32 = [(HKElectrocardiogramAxisView *)self ticksLayer];
  v53 = v54;
  [v32 setInstanceTransform:&v53];

  v33 = [(HKElectrocardiogramAxisView *)self layer];
  v34 = [(HKElectrocardiogramAxisView *)self ticksLayer];
  [v33 addSublayer:v34];

  v35 = objc_alloc_init(MEMORY[0x1E696AB70]);
  [v35 setUnitsStyle:1];
  [v35 setAllowedUnits:128];
  v36 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v37 = [(HKElectrocardiogramAxisView *)self options];
  if ([v37 scaleMetricsAutomatically])
  {
    v38 = [(HKElectrocardiogramAxisView *)self metrics];
    v39 = [(HKElectrocardiogramAxisView *)self options];
    [v39 axisLineToLabelSpacing];
    v41 = v40;
    v42 = [(HKElectrocardiogramAxisView *)self traitCollection];
    [v38 scaledValueForValue:v42 compatibleWithTraitCollection:v41];
    v44 = v43;
  }

  else
  {
    v38 = [(HKElectrocardiogramAxisView *)self options];
    [v38 axisLineToLabelSpacing];
    v44 = v45;
  }

  if (v16 >= 1)
  {
    for (k = 0; k != v16; ++k)
    {
      v47 = [(HKElectrocardiogramAxisView *)self _createLabel];
      v48 = [v47 leftAnchor];
      v49 = [(HKElectrocardiogramAxisView *)self leftAnchor];
      [(HKElectrocardiogramAxisView *)self axisSpacing];
      v51 = [v48 constraintEqualToAnchor:v49 constant:v44 + v50 * k];
      [v51 setActive:1];

      [v36 setSecond:{-[HKElectrocardiogramAxisView startingIndex](self, "startingIndex") + k}];
      v52 = [v35 stringFromDateComponents:v36];
      [v47 setText:v52];
    }
  }
}

- (id)_createLabel
{
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v6 = [(HKElectrocardiogramAxisView *)self options];
  if ([v6 scaleMetricsAutomatically])
  {
    v7 = [(HKElectrocardiogramAxisView *)self metrics];
    v8 = [(HKElectrocardiogramAxisView *)self options];
    v9 = [v8 axisLabelFont];
    v10 = [(HKElectrocardiogramAxisView *)self traitCollection];
    v2 = [v7 scaledFontForFont:v9 compatibleWithTraitCollection:v10];
    [v5 setFont:v2];
  }

  else
  {
    v7 = [(HKElectrocardiogramAxisView *)self options];
    v8 = [v7 axisLabelFont];
    [v5 setFont:v8];
  }

  v11 = [(HKElectrocardiogramAxisView *)self options];
  v12 = [v11 axisLabelTextColor];
  [v5 setTextColor:v12];

  [v5 setTextAlignment:0];
  v13 = [(HKElectrocardiogramAxisView *)self options];
  [v5 setAdjustsFontForContentSizeCategory:{objc_msgSend(v13, "scaleMetricsAutomatically")}];

  [(HKElectrocardiogramAxisView *)self addSubview:v5];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v5 firstBaselineAnchor];
  v15 = [(HKElectrocardiogramAxisView *)self topAnchor];
  v16 = [(HKElectrocardiogramAxisView *)self options];
  v17 = [v16 scaleMetricsAutomatically];
  if (v17)
  {
    v18 = [(HKElectrocardiogramAxisView *)self metrics];
    v2 = [(HKElectrocardiogramAxisView *)self options];
    [v2 topBaselineMargin];
    [v18 scaledValueForValue:?];
  }

  else
  {
    v18 = [(HKElectrocardiogramAxisView *)self options];
    [v18 topBaselineMargin];
  }

  v19 = [v14 constraintEqualToAnchor:v15 constant:?];
  [v19 setActive:1];

  if (v17)
  {
  }

  v20 = [(HKElectrocardiogramAxisView *)self bottomAnchor];
  v21 = [v5 lastBaselineAnchor];
  v22 = [(HKElectrocardiogramAxisView *)self options];
  v23 = [v22 scaleMetricsAutomatically];
  if (v23)
  {
    v24 = [(HKElectrocardiogramAxisView *)self metrics];
    self = [(HKElectrocardiogramAxisView *)self options];
    [(HKElectrocardiogramAxisView *)self bottomBaselineMargin];
    [v24 scaledValueForValue:?];
  }

  else
  {
    v24 = [(HKElectrocardiogramAxisView *)self options];
    [v24 bottomBaselineMargin];
  }

  v25 = [v20 constraintEqualToAnchor:v21 constant:?];
  [v25 setActive:1];

  if (v23)
  {
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = HKElectrocardiogramAxisView;
  [(HKElectrocardiogramAxisView *)&v4 traitCollectionDidChange:a3];
  [(HKElectrocardiogramAxisView *)self setNeedsLayout];
}

- (UIFont)axisLabelFont
{
  v2 = [(HKElectrocardiogramAxisView *)self options];
  v3 = [v2 axisLabelFont];

  return v3;
}

- (double)lineWidth
{
  v2 = [(HKElectrocardiogramAxisView *)self options];
  [v2 lineWidth];
  v4 = v3;

  return v4;
}

- (UIColor)lineColor
{
  v2 = [(HKElectrocardiogramAxisView *)self options];
  v3 = [v2 lineColor];

  return v3;
}

- (CGSize)lastBoundsSize
{
  width = self->_lastBoundsSize.width;
  height = self->_lastBoundsSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end