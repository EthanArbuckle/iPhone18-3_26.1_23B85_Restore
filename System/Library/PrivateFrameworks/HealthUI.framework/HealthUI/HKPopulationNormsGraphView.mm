@interface HKPopulationNormsGraphView
- (CGSize)intrinsicContentSize;
- (HKPopulationNormsGraphView)initWithMaxYValue:(double)value minYValue:(double)yValue YSeriesTitle:(id)title XSeriesTitle:(id)seriesTitle highlightedSegmentColor:(id)color;
- (unint64_t)_highlightIndexForClassificationIndex:(unint64_t)index numberOfSegments:(unint64_t)segments;
- (void)_updateUserValueChartPointIfNecessary;
- (void)layoutSubviews;
- (void)updateWithFlattenedLevelsByAgeBucket:(id)bucket currentClassificationIndex:(unint64_t)index;
- (void)updateWithUserAgeBucketIndex:(id)index userLatestSampleValue:(id)value;
@end

@implementation HKPopulationNormsGraphView

- (HKPopulationNormsGraphView)initWithMaxYValue:(double)value minYValue:(double)yValue YSeriesTitle:(id)title XSeriesTitle:(id)seriesTitle highlightedSegmentColor:(id)color
{
  titleCopy = title;
  seriesTitleCopy = seriesTitle;
  colorCopy = color;
  v21.receiver = self;
  v21.super_class = HKPopulationNormsGraphView;
  v17 = [(HKPopulationNormsGraphView *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v17)
  {
    if (value <= yValue)
    {
      [HKPopulationNormsGraphView initWithMaxYValue:a2 minYValue:v17 YSeriesTitle:? XSeriesTitle:? highlightedSegmentColor:?];
    }

    v17->_maxChartYValue = value;
    v17->_minChartYValue = yValue;
    objc_storeStrong(&v17->_ySeriesTitle, title);
    objc_storeStrong(&v17->_xSeriesTitle, seriesTitle);
    hk_chartAxisLabelFont = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
    seriesTitleFont = v17->_seriesTitleFont;
    v17->_seriesTitleFont = hk_chartAxisLabelFont;

    objc_storeStrong(&v17->_highlightedSegmentColor, color);
  }

  return v17;
}

- (unint64_t)_highlightIndexForClassificationIndex:(unint64_t)index numberOfSegments:(unint64_t)segments
{
  if (index >= segments)
  {
    return 0;
  }

  else
  {
    return ~index + segments;
  }
}

- (void)updateWithFlattenedLevelsByAgeBucket:(id)bucket currentClassificationIndex:(unint64_t)index
{
  v87 = *MEMORY[0x1E69E9840];
  bucketCopy = bucket;
  allKeys = [bucketCopy allKeys];
  v8 = [allKeys sortedArrayUsingComparator:&__block_literal_global_35];

  if (!self->_gridView)
  {
    v77 = bucketCopy;
    selfCopy = self;
    v80 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v76 = v8;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v81 objects:v86 count:16];
    v79 = v9;
    if (v10)
    {
      v11 = v10;
      v12 = *v82;
      v13 = *MEMORY[0x1E696B540];
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v82 != v12)
          {
            objc_enumerationMutation(v9);
          }

          rangeValue = [*(*(&v81 + 1) + 8 * i) rangeValue];
          v17 = rangeValue + v16;
          if (rangeValue + v16 == v13)
          {
            v18 = [HKPopulationNormsUnboundedEndAxisLabel alloc];
            v19 = [MEMORY[0x1E696AD98] numberWithInteger:rangeValue];
            v20 = [(HKPopulationNormsUnboundedEndAxisLabel *)v18 initWithRangeStart:v19];
          }

          else
          {
            v21 = [HKPopulationNormsAxisLabel alloc];
            v19 = [MEMORY[0x1E696AD98] numberWithInteger:rangeValue];
            v22 = [MEMORY[0x1E696AD98] numberWithInteger:v17];
            v20 = [(HKPopulationNormsAxisLabel *)v21 initWithRangeStart:v19 end:v22];

            v9 = v79;
          }

          [v80 addObject:v20];
        }

        v11 = [v9 countByEnumeratingWithState:&v81 objects:v86 count:16];
      }

      while (v11);
    }

    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:7];
    minChartYValue = selfCopy->_minChartYValue;
    v25 = minChartYValue;
    maxChartYValue = selfCopy->_maxChartYValue;
    if (maxChartYValue >= v25)
    {
      v27 = (maxChartYValue - minChartYValue) / 6.0;
      do
      {
        v28 = [HKPopulationNormsAxisLabel alloc];
        *&v29 = v25;
        v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
        v31 = [(HKPopulationNormsAxisLabel *)v28 initWithValue:v30];

        [v23 addObject:v31];
        v25 = v25 + v27;
      }

      while (selfCopy->_maxChartYValue >= v25);
    }

    v32 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    ySeriesTitleLabel = selfCopy->_ySeriesTitleLabel;
    selfCopy->_ySeriesTitleLabel = v32;

    [(UILabel *)selfCopy->_ySeriesTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)selfCopy->_ySeriesTitleLabel setNumberOfLines:0];
    hk_chartAxisLabelColor = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
    [(UILabel *)selfCopy->_ySeriesTitleLabel setTextColor:hk_chartAxisLabelColor];

    [(UILabel *)selfCopy->_ySeriesTitleLabel setText:selfCopy->_ySeriesTitle];
    [(UILabel *)selfCopy->_ySeriesTitleLabel setFont:selfCopy->_seriesTitleFont];
    [(HKPopulationNormsGraphView *)selfCopy addSubview:selfCopy->_ySeriesTitleLabel];
    v35 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    xSeriesTitleLabel = selfCopy->_xSeriesTitleLabel;
    selfCopy->_xSeriesTitleLabel = v35;

    [(UILabel *)selfCopy->_xSeriesTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)selfCopy->_xSeriesTitleLabel setNumberOfLines:0];
    hk_chartAxisLabelColor2 = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
    [(UILabel *)selfCopy->_xSeriesTitleLabel setTextColor:hk_chartAxisLabelColor2];

    [(UILabel *)selfCopy->_xSeriesTitleLabel setText:selfCopy->_xSeriesTitle];
    [(UILabel *)selfCopy->_xSeriesTitleLabel setFont:selfCopy->_seriesTitleFont];
    [(HKPopulationNormsGraphView *)selfCopy addSubview:selfCopy->_xSeriesTitleLabel];
    v75 = v23;
    v38 = [[HKPopulationNormsChartGridView alloc] initWithXAxisLabels:v80 YAxisLabels:v23];
    gridView = selfCopy->_gridView;
    selfCopy->_gridView = v38;

    [(HKPopulationNormsChartGridView *)selfCopy->_gridView setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(HKPopulationNormsChartGridView *)selfCopy->_gridView setBackgroundColor:clearColor];

    [(HKPopulationNormsGraphView *)selfCopy addSubview:selfCopy->_gridView];
    v67 = MEMORY[0x1E696ACD8];
    topAnchor = [(UILabel *)selfCopy->_ySeriesTitleLabel topAnchor];
    topAnchor2 = [(HKPopulationNormsGraphView *)selfCopy topAnchor];
    v74 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v85[0] = v74;
    rightAnchor = [(UILabel *)selfCopy->_ySeriesTitleLabel rightAnchor];
    rightAnchor2 = [(HKPopulationNormsGraphView *)selfCopy rightAnchor];
    v71 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v85[1] = v71;
    topAnchor3 = [(HKPopulationNormsChartGridView *)selfCopy->_gridView topAnchor];
    bottomAnchor = [(UILabel *)selfCopy->_ySeriesTitleLabel bottomAnchor];
    v68 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:10.0];
    v85[2] = v68;
    leftAnchor = [(HKPopulationNormsChartGridView *)selfCopy->_gridView leftAnchor];
    leftAnchor2 = [(HKPopulationNormsGraphView *)selfCopy leftAnchor];
    v62 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v85[3] = v62;
    rightAnchor3 = [(HKPopulationNormsChartGridView *)selfCopy->_gridView rightAnchor];
    rightAnchor4 = [(HKPopulationNormsGraphView *)selfCopy rightAnchor];
    v59 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    v85[4] = v59;
    topAnchor4 = [(UILabel *)selfCopy->_xSeriesTitleLabel topAnchor];
    bottomAnchor2 = [(HKPopulationNormsChartGridView *)selfCopy->_gridView bottomAnchor];
    v56 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:3.0];
    v85[5] = v56;
    leftAnchor3 = [(UILabel *)selfCopy->_xSeriesTitleLabel leftAnchor];
    leftAnchor4 = [(HKPopulationNormsGraphView *)selfCopy leftAnchor];
    v43 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:5.0];
    v85[6] = v43;
    bottomAnchor3 = [(UILabel *)selfCopy->_xSeriesTitleLabel bottomAnchor];
    bottomAnchor4 = [(HKPopulationNormsGraphView *)selfCopy bottomAnchor];
    v46 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v85[7] = v46;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:8];
    [v67 activateConstraints:v47];

    self = selfCopy;
    v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v79, "count")}];
    ageBucketBarViews = selfCopy->_ageBucketBarViews;
    selfCopy->_ageBucketBarViews = v48;

    if ([v79 count])
    {
      v50 = 0;
      do
      {
        v51 = [[HKPopulationNormsAgeBucketBarView alloc] initWithReferenceMinY:selfCopy->_highlightedSegmentColor referenceMaxY:selfCopy->_minChartYValue highlightColor:selfCopy->_maxChartYValue];
        [(HKPopulationNormsChartGridView *)selfCopy->_gridView addSubview:v51];
        [(NSMutableArray *)selfCopy->_ageBucketBarViews addObject:v51];

        ++v50;
      }

      while ([v79 count] > v50);
    }

    bucketCopy = v77;
    v8 = v76;
  }

  if ([v8 count])
  {
    v52 = 0;
    do
    {
      v53 = [(NSMutableArray *)self->_ageBucketBarViews objectAtIndexedSubscript:v52];
      v54 = [v8 objectAtIndexedSubscript:v52];
      v55 = [bucketCopy objectForKeyedSubscript:v54];

      [v53 updateWithAscendingThresholds:v55 currentHighlightIndex:{-[HKPopulationNormsGraphView _highlightIndexForClassificationIndex:numberOfSegments:](self, "_highlightIndexForClassificationIndex:numberOfSegments:", index, objc_msgSend(v55, "count") - 1)}];
      ++v52;
    }

    while ([v8 count] > v52);
  }

  [(HKPopulationNormsGraphView *)self setNeedsLayout];
  [(HKPopulationNormsChartGridView *)self->_gridView relocalizeAxisLabels];
}

- (void)_updateUserValueChartPointIfNecessary
{
  if (self->_ageBucketIndex && self->_latestSampleValue)
  {
    latestSampleHighlightView = self->_latestSampleHighlightView;
    if (!latestSampleHighlightView)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v5 = self->_latestSampleHighlightView;
      self->_latestSampleHighlightView = v4;

      [(UIView *)self->_latestSampleHighlightView setUserInteractionEnabled:0];
      hk_chartLollipopStickColor = [MEMORY[0x1E69DC888] hk_chartLollipopStickColor];
      [(UIView *)self->_latestSampleHighlightView setBackgroundColor:hk_chartLollipopStickColor];

      hk_chartBackgroundColor = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
      cGColor = [hk_chartBackgroundColor CGColor];
      layer = [(UIView *)self->_latestSampleHighlightView layer];
      [layer setBorderColor:cGColor];

      layer2 = [(UIView *)self->_latestSampleHighlightView layer];
      [layer2 setBorderWidth:1.25];

      layer3 = [(UIView *)self->_latestSampleHighlightView layer];
      [layer3 setCornerRadius:5.0];

      layer4 = [(UIView *)self->_latestSampleHighlightView layer];
      [layer4 setMasksToBounds:1];

      [(HKPopulationNormsChartGridView *)self->_gridView addSubview:self->_latestSampleHighlightView];
      latestSampleHighlightView = self->_latestSampleHighlightView;
    }

    [(UIView *)latestSampleHighlightView setHidden:0];

    [(HKPopulationNormsGraphView *)self setNeedsLayout];
  }

  else
  {
    v13 = self->_latestSampleHighlightView;
    if (v13)
    {

      [(UIView *)v13 setHidden:1];
    }
  }
}

- (void)updateWithUserAgeBucketIndex:(id)index userLatestSampleValue:(id)value
{
  indexCopy = index;
  valueCopy = value;
  ageBucketIndex = self->_ageBucketIndex;
  self->_ageBucketIndex = indexCopy;
  v10 = indexCopy;

  latestSampleValue = self->_latestSampleValue;
  self->_latestSampleValue = valueCopy;
}

- (void)layoutSubviews
{
  if (!self->_currentViewWidth || ([(HKPopulationNormsGraphView *)self frame], Width = CGRectGetWidth(v20), [(NSNumber *)self->_currentViewWidth floatValue], Width != v4))
  {
    v5 = MEMORY[0x1E696AD98];
    [(HKPopulationNormsGraphView *)self frame];
    v6 = [v5 numberWithDouble:CGRectGetWidth(v21)];
    currentViewWidth = self->_currentViewWidth;
    self->_currentViewWidth = v6;

    [(HKPopulationNormsGraphView *)self invalidateIntrinsicContentSize];
  }

  v19.receiver = self;
  v19.super_class = HKPopulationNormsGraphView;
  [(HKPopulationNormsGraphView *)&v19 layoutSubviews];
  [(HKPopulationNormsChartGridView *)self->_gridView setNeedsDisplay];
  if ([(NSMutableArray *)self->_ageBucketBarViews count])
  {
    minChartYValue = self->_minChartYValue;
    maxChartYValue = self->_maxChartYValue;
    [(HKPopulationNormsChartGridView *)self->_gridView determineCanvasRect];
    v11 = v10;
    v13 = v12 / [(NSMutableArray *)self->_ageBucketBarViews count];
    ageBucketIndex = self->_ageBucketIndex;
    if (ageBucketIndex && self->_latestSampleValue)
    {
      unsignedIntegerValue = [(NSNumber *)ageBucketIndex unsignedIntegerValue];
      [(NSNumber *)self->_latestSampleValue floatValue];
      [(UIView *)self->_latestSampleHighlightView setFrame:(unsignedIntegerValue + 0.5) * v13 + -5.0, (maxChartYValue - v16) / (maxChartYValue - minChartYValue) * v11 + -5.0, 10.0, 10.0];
    }

    if ([(NSMutableArray *)self->_ageBucketBarViews count])
    {
      v17 = 0;
      do
      {
        v18 = [(NSMutableArray *)self->_ageBucketBarViews objectAtIndexedSubscript:v17];
        [v18 setFrame:{v13 * v17, 0.0, v13, v11}];
        [v18 setNeedsLayout];

        ++v17;
      }

      while ([(NSMutableArray *)self->_ageBucketBarViews count]> v17);
    }
  }
}

- (CGSize)intrinsicContentSize
{
  currentViewWidth = self->_currentViewWidth;
  if (currentViewWidth)
  {
    [(NSNumber *)currentViewWidth floatValue];
    v4 = v3 * 1.1;
  }

  else
  {
    v4 = 2.22507386e-308;
  }

  v5 = 0.0;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)initWithMaxYValue:(uint64_t)a1 minYValue:(uint64_t)a2 YSeriesTitle:XSeriesTitle:highlightedSegmentColor:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKPopulationNormsGraphView.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"maxChartYValue > minChartYValue"}];
}

@end