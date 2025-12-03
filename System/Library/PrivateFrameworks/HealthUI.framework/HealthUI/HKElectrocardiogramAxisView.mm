@interface HKElectrocardiogramAxisView
- (CGSize)lastBoundsSize;
- (HKElectrocardiogramAxisView)initWithAxisSpacing:(double)spacing lineColor:(id)color lineWidth:(double)width;
- (HKElectrocardiogramAxisView)initWithAxisSpacing:(double)spacing options:(id)options startingIndex:(int64_t)index;
- (UIColor)lineColor;
- (UIFont)axisLabelFont;
- (double)lineWidth;
- (id)_createLabel;
- (void)_drawAxis;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HKElectrocardiogramAxisView

- (HKElectrocardiogramAxisView)initWithAxisSpacing:(double)spacing lineColor:(id)color lineWidth:(double)width
{
  colorCopy = color;
  v9 = [HKElectrocardiogramAxisOptions alloc];
  v10 = [MEMORY[0x1E69DB878] hk_roundedSystemFontWithSize:13.0 weight:*MEMORY[0x1E69DB970]];
  hk_chartAxisLabelColor = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
  v12 = [(HKElectrocardiogramAxisOptions *)v9 initWithAxisLabelFont:v10 axisLabelTextColor:hk_chartAxisLabelColor scaleMetricsAutomatically:1 lineColor:colorCopy lineWidth:width axisLineToLabelSpacing:5.0 topBaselineMargin:18.0 bottomBaselineMargin:2.0];

  v13 = [(HKElectrocardiogramAxisView *)self initWithAxisSpacing:v12 options:0 startingIndex:spacing];
  return v13;
}

- (HKElectrocardiogramAxisView)initWithAxisSpacing:(double)spacing options:(id)options startingIndex:(int64_t)index
{
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = HKElectrocardiogramAxisView;
  v10 = [(HKElectrocardiogramAxisView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v11 = v10;
  if (v10)
  {
    v10->_axisSpacing = spacing;
    objc_storeStrong(&v10->_options, options);
    v12 = objc_alloc_init(MEMORY[0x1E6979430]);
    ticksLayer = v11->_ticksLayer;
    v11->_ticksLayer = v12;

    v14 = [MEMORY[0x1E69DCA40] metricsForTextStyle:*MEMORY[0x1E69DDD28]];
    metrics = v11->_metrics;
    v11->_metrics = v14;

    v11->_startingIndex = index;
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
  ticksLayer = [(HKElectrocardiogramAxisView *)self ticksLayer];
  sublayers = [ticksLayer sublayers];

  v12 = [sublayers countByEnumeratingWithState:&v59 objects:v64 count:16];
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
          objc_enumerationMutation(sublayers);
        }

        [*(*(&v59 + 1) + 8 * i) removeFromSuperlayer];
      }

      v13 = [sublayers countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v13);
  }

  v16 = v9;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  subviews = [(HKElectrocardiogramAxisView *)self subviews];
  v18 = [subviews countByEnumeratingWithState:&v55 objects:v63 count:16];
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
          objc_enumerationMutation(subviews);
        }

        [*(*(&v55 + 1) + 8 * j) removeFromSuperview];
      }

      v19 = [subviews countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v19);
  }

  v22 = MEMORY[0x1E69794A0];
  [(HKElectrocardiogramAxisView *)self bounds];
  v24 = v23;
  options = [(HKElectrocardiogramAxisView *)self options];
  [options lineWidth];
  v27 = [v22 verticalLineLayerWithLength:v24 lineWidth:v26];

  [v27 setFillColor:0];
  lineColor = [(HKElectrocardiogramAxisView *)self lineColor];
  [v27 setStrokeColor:{objc_msgSend(lineColor, "CGColor")}];

  ticksLayer2 = [(HKElectrocardiogramAxisView *)self ticksLayer];
  [ticksLayer2 addSublayer:v27];

  ticksLayer3 = [(HKElectrocardiogramAxisView *)self ticksLayer];
  [ticksLayer3 setInstanceCount:v16 + 1];

  [(HKElectrocardiogramAxisView *)self axisSpacing];
  CATransform3DMakeTranslation(&v54, v31, 0.0, 0.0);
  ticksLayer4 = [(HKElectrocardiogramAxisView *)self ticksLayer];
  v53 = v54;
  [ticksLayer4 setInstanceTransform:&v53];

  layer = [(HKElectrocardiogramAxisView *)self layer];
  ticksLayer5 = [(HKElectrocardiogramAxisView *)self ticksLayer];
  [layer addSublayer:ticksLayer5];

  v35 = objc_alloc_init(MEMORY[0x1E696AB70]);
  [v35 setUnitsStyle:1];
  [v35 setAllowedUnits:128];
  v36 = objc_alloc_init(MEMORY[0x1E695DF10]);
  options2 = [(HKElectrocardiogramAxisView *)self options];
  if ([options2 scaleMetricsAutomatically])
  {
    metrics = [(HKElectrocardiogramAxisView *)self metrics];
    options3 = [(HKElectrocardiogramAxisView *)self options];
    [options3 axisLineToLabelSpacing];
    v41 = v40;
    traitCollection = [(HKElectrocardiogramAxisView *)self traitCollection];
    [metrics scaledValueForValue:traitCollection compatibleWithTraitCollection:v41];
    v44 = v43;
  }

  else
  {
    metrics = [(HKElectrocardiogramAxisView *)self options];
    [metrics axisLineToLabelSpacing];
    v44 = v45;
  }

  if (v16 >= 1)
  {
    for (k = 0; k != v16; ++k)
    {
      _createLabel = [(HKElectrocardiogramAxisView *)self _createLabel];
      leftAnchor = [_createLabel leftAnchor];
      leftAnchor2 = [(HKElectrocardiogramAxisView *)self leftAnchor];
      [(HKElectrocardiogramAxisView *)self axisSpacing];
      v51 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:v44 + v50 * k];
      [v51 setActive:1];

      [v36 setSecond:{-[HKElectrocardiogramAxisView startingIndex](self, "startingIndex") + k}];
      v52 = [v35 stringFromDateComponents:v36];
      [_createLabel setText:v52];
    }
  }
}

- (id)_createLabel
{
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  options = [(HKElectrocardiogramAxisView *)self options];
  if ([options scaleMetricsAutomatically])
  {
    metrics = [(HKElectrocardiogramAxisView *)self metrics];
    options2 = [(HKElectrocardiogramAxisView *)self options];
    axisLabelFont = [options2 axisLabelFont];
    traitCollection = [(HKElectrocardiogramAxisView *)self traitCollection];
    options6 = [metrics scaledFontForFont:axisLabelFont compatibleWithTraitCollection:traitCollection];
    [v5 setFont:options6];
  }

  else
  {
    metrics = [(HKElectrocardiogramAxisView *)self options];
    options2 = [metrics axisLabelFont];
    [v5 setFont:options2];
  }

  options3 = [(HKElectrocardiogramAxisView *)self options];
  axisLabelTextColor = [options3 axisLabelTextColor];
  [v5 setTextColor:axisLabelTextColor];

  [v5 setTextAlignment:0];
  options4 = [(HKElectrocardiogramAxisView *)self options];
  [v5 setAdjustsFontForContentSizeCategory:{objc_msgSend(options4, "scaleMetricsAutomatically")}];

  [(HKElectrocardiogramAxisView *)self addSubview:v5];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  firstBaselineAnchor = [v5 firstBaselineAnchor];
  topAnchor = [(HKElectrocardiogramAxisView *)self topAnchor];
  options5 = [(HKElectrocardiogramAxisView *)self options];
  scaleMetricsAutomatically = [options5 scaleMetricsAutomatically];
  if (scaleMetricsAutomatically)
  {
    metrics2 = [(HKElectrocardiogramAxisView *)self metrics];
    options6 = [(HKElectrocardiogramAxisView *)self options];
    [options6 topBaselineMargin];
    [metrics2 scaledValueForValue:?];
  }

  else
  {
    metrics2 = [(HKElectrocardiogramAxisView *)self options];
    [metrics2 topBaselineMargin];
  }

  v19 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [v19 setActive:1];

  if (scaleMetricsAutomatically)
  {
  }

  bottomAnchor = [(HKElectrocardiogramAxisView *)self bottomAnchor];
  lastBaselineAnchor = [v5 lastBaselineAnchor];
  options7 = [(HKElectrocardiogramAxisView *)self options];
  scaleMetricsAutomatically2 = [options7 scaleMetricsAutomatically];
  if (scaleMetricsAutomatically2)
  {
    metrics3 = [(HKElectrocardiogramAxisView *)self metrics];
    self = [(HKElectrocardiogramAxisView *)self options];
    [(HKElectrocardiogramAxisView *)self bottomBaselineMargin];
    [metrics3 scaledValueForValue:?];
  }

  else
  {
    metrics3 = [(HKElectrocardiogramAxisView *)self options];
    [metrics3 bottomBaselineMargin];
  }

  v25 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:?];
  [v25 setActive:1];

  if (scaleMetricsAutomatically2)
  {
  }

  return v5;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = HKElectrocardiogramAxisView;
  [(HKElectrocardiogramAxisView *)&v4 traitCollectionDidChange:change];
  [(HKElectrocardiogramAxisView *)self setNeedsLayout];
}

- (UIFont)axisLabelFont
{
  options = [(HKElectrocardiogramAxisView *)self options];
  axisLabelFont = [options axisLabelFont];

  return axisLabelFont;
}

- (double)lineWidth
{
  options = [(HKElectrocardiogramAxisView *)self options];
  [options lineWidth];
  v4 = v3;

  return v4;
}

- (UIColor)lineColor
{
  options = [(HKElectrocardiogramAxisView *)self options];
  lineColor = [options lineColor];

  return lineColor;
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