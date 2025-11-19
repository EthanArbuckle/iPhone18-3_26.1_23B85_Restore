@interface HKPopulationNormsGraphView
- (CGSize)intrinsicContentSize;
- (HKPopulationNormsGraphView)initWithMaxYValue:(double)a3 minYValue:(double)a4 YSeriesTitle:(id)a5 XSeriesTitle:(id)a6 highlightedSegmentColor:(id)a7;
- (unint64_t)_highlightIndexForClassificationIndex:(unint64_t)a3 numberOfSegments:(unint64_t)a4;
- (void)_updateUserValueChartPointIfNecessary;
- (void)layoutSubviews;
- (void)updateWithFlattenedLevelsByAgeBucket:(id)a3 currentClassificationIndex:(unint64_t)a4;
- (void)updateWithUserAgeBucketIndex:(id)a3 userLatestSampleValue:(id)a4;
@end

@implementation HKPopulationNormsGraphView

- (HKPopulationNormsGraphView)initWithMaxYValue:(double)a3 minYValue:(double)a4 YSeriesTitle:(id)a5 XSeriesTitle:(id)a6 highlightedSegmentColor:(id)a7
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HKPopulationNormsGraphView;
  v17 = [(HKPopulationNormsGraphView *)&v21 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v17)
  {
    if (a3 <= a4)
    {
      [HKPopulationNormsGraphView initWithMaxYValue:a2 minYValue:v17 YSeriesTitle:? XSeriesTitle:? highlightedSegmentColor:?];
    }

    v17->_maxChartYValue = a3;
    v17->_minChartYValue = a4;
    objc_storeStrong(&v17->_ySeriesTitle, a5);
    objc_storeStrong(&v17->_xSeriesTitle, a6);
    v18 = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
    seriesTitleFont = v17->_seriesTitleFont;
    v17->_seriesTitleFont = v18;

    objc_storeStrong(&v17->_highlightedSegmentColor, a7);
  }

  return v17;
}

- (unint64_t)_highlightIndexForClassificationIndex:(unint64_t)a3 numberOfSegments:(unint64_t)a4
{
  if (a3 >= a4)
  {
    return 0;
  }

  else
  {
    return ~a3 + a4;
  }
}

- (void)updateWithFlattenedLevelsByAgeBucket:(id)a3 currentClassificationIndex:(unint64_t)a4
{
  v87 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 allKeys];
  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_35];

  if (!self->_gridView)
  {
    v77 = v6;
    v78 = self;
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

          v15 = [*(*(&v81 + 1) + 8 * i) rangeValue];
          v17 = v15 + v16;
          if (v15 + v16 == v13)
          {
            v18 = [HKPopulationNormsUnboundedEndAxisLabel alloc];
            v19 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
            v20 = [(HKPopulationNormsUnboundedEndAxisLabel *)v18 initWithRangeStart:v19];
          }

          else
          {
            v21 = [HKPopulationNormsAxisLabel alloc];
            v19 = [MEMORY[0x1E696AD98] numberWithInteger:v15];
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
    minChartYValue = v78->_minChartYValue;
    v25 = minChartYValue;
    maxChartYValue = v78->_maxChartYValue;
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

      while (v78->_maxChartYValue >= v25);
    }

    v32 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    ySeriesTitleLabel = v78->_ySeriesTitleLabel;
    v78->_ySeriesTitleLabel = v32;

    [(UILabel *)v78->_ySeriesTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v78->_ySeriesTitleLabel setNumberOfLines:0];
    v34 = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
    [(UILabel *)v78->_ySeriesTitleLabel setTextColor:v34];

    [(UILabel *)v78->_ySeriesTitleLabel setText:v78->_ySeriesTitle];
    [(UILabel *)v78->_ySeriesTitleLabel setFont:v78->_seriesTitleFont];
    [(HKPopulationNormsGraphView *)v78 addSubview:v78->_ySeriesTitleLabel];
    v35 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    xSeriesTitleLabel = v78->_xSeriesTitleLabel;
    v78->_xSeriesTitleLabel = v35;

    [(UILabel *)v78->_xSeriesTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v78->_xSeriesTitleLabel setNumberOfLines:0];
    v37 = [MEMORY[0x1E69DC888] hk_chartAxisLabelColor];
    [(UILabel *)v78->_xSeriesTitleLabel setTextColor:v37];

    [(UILabel *)v78->_xSeriesTitleLabel setText:v78->_xSeriesTitle];
    [(UILabel *)v78->_xSeriesTitleLabel setFont:v78->_seriesTitleFont];
    [(HKPopulationNormsGraphView *)v78 addSubview:v78->_xSeriesTitleLabel];
    v75 = v23;
    v38 = [[HKPopulationNormsChartGridView alloc] initWithXAxisLabels:v80 YAxisLabels:v23];
    gridView = v78->_gridView;
    v78->_gridView = v38;

    [(HKPopulationNormsChartGridView *)v78->_gridView setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [MEMORY[0x1E69DC888] clearColor];
    [(HKPopulationNormsChartGridView *)v78->_gridView setBackgroundColor:v40];

    [(HKPopulationNormsGraphView *)v78 addSubview:v78->_gridView];
    v67 = MEMORY[0x1E696ACD8];
    v66 = [(UILabel *)v78->_ySeriesTitleLabel topAnchor];
    v64 = [(HKPopulationNormsGraphView *)v78 topAnchor];
    v74 = [v66 constraintEqualToAnchor:v64];
    v85[0] = v74;
    v73 = [(UILabel *)v78->_ySeriesTitleLabel rightAnchor];
    v72 = [(HKPopulationNormsGraphView *)v78 rightAnchor];
    v71 = [v73 constraintEqualToAnchor:v72];
    v85[1] = v71;
    v70 = [(HKPopulationNormsChartGridView *)v78->_gridView topAnchor];
    v69 = [(UILabel *)v78->_ySeriesTitleLabel bottomAnchor];
    v68 = [v70 constraintEqualToAnchor:v69 constant:10.0];
    v85[2] = v68;
    v65 = [(HKPopulationNormsChartGridView *)v78->_gridView leftAnchor];
    v63 = [(HKPopulationNormsGraphView *)v78 leftAnchor];
    v62 = [v65 constraintEqualToAnchor:v63];
    v85[3] = v62;
    v61 = [(HKPopulationNormsChartGridView *)v78->_gridView rightAnchor];
    v60 = [(HKPopulationNormsGraphView *)v78 rightAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v85[4] = v59;
    v58 = [(UILabel *)v78->_xSeriesTitleLabel topAnchor];
    v57 = [(HKPopulationNormsChartGridView *)v78->_gridView bottomAnchor];
    v56 = [v58 constraintEqualToAnchor:v57 constant:3.0];
    v85[5] = v56;
    v41 = [(UILabel *)v78->_xSeriesTitleLabel leftAnchor];
    v42 = [(HKPopulationNormsGraphView *)v78 leftAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:5.0];
    v85[6] = v43;
    v44 = [(UILabel *)v78->_xSeriesTitleLabel bottomAnchor];
    v45 = [(HKPopulationNormsGraphView *)v78 bottomAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];
    v85[7] = v46;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:8];
    [v67 activateConstraints:v47];

    self = v78;
    v48 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v79, "count")}];
    ageBucketBarViews = v78->_ageBucketBarViews;
    v78->_ageBucketBarViews = v48;

    if ([v79 count])
    {
      v50 = 0;
      do
      {
        v51 = [[HKPopulationNormsAgeBucketBarView alloc] initWithReferenceMinY:v78->_highlightedSegmentColor referenceMaxY:v78->_minChartYValue highlightColor:v78->_maxChartYValue];
        [(HKPopulationNormsChartGridView *)v78->_gridView addSubview:v51];
        [(NSMutableArray *)v78->_ageBucketBarViews addObject:v51];

        ++v50;
      }

      while ([v79 count] > v50);
    }

    v6 = v77;
    v8 = v76;
  }

  if ([v8 count])
  {
    v52 = 0;
    do
    {
      v53 = [(NSMutableArray *)self->_ageBucketBarViews objectAtIndexedSubscript:v52];
      v54 = [v8 objectAtIndexedSubscript:v52];
      v55 = [v6 objectForKeyedSubscript:v54];

      [v53 updateWithAscendingThresholds:v55 currentHighlightIndex:{-[HKPopulationNormsGraphView _highlightIndexForClassificationIndex:numberOfSegments:](self, "_highlightIndexForClassificationIndex:numberOfSegments:", a4, objc_msgSend(v55, "count") - 1)}];
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
      v6 = [MEMORY[0x1E69DC888] hk_chartLollipopStickColor];
      [(UIView *)self->_latestSampleHighlightView setBackgroundColor:v6];

      v7 = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
      v8 = [v7 CGColor];
      v9 = [(UIView *)self->_latestSampleHighlightView layer];
      [v9 setBorderColor:v8];

      v10 = [(UIView *)self->_latestSampleHighlightView layer];
      [v10 setBorderWidth:1.25];

      v11 = [(UIView *)self->_latestSampleHighlightView layer];
      [v11 setCornerRadius:5.0];

      v12 = [(UIView *)self->_latestSampleHighlightView layer];
      [v12 setMasksToBounds:1];

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

- (void)updateWithUserAgeBucketIndex:(id)a3 userLatestSampleValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  ageBucketIndex = self->_ageBucketIndex;
  self->_ageBucketIndex = v6;
  v10 = v6;

  latestSampleValue = self->_latestSampleValue;
  self->_latestSampleValue = v7;
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
      v15 = [(NSNumber *)ageBucketIndex unsignedIntegerValue];
      [(NSNumber *)self->_latestSampleValue floatValue];
      [(UIView *)self->_latestSampleHighlightView setFrame:(v15 + 0.5) * v13 + -5.0, (maxChartYValue - v16) / (maxChartYValue - minChartYValue) * v11 + -5.0, 10.0, 10.0];
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