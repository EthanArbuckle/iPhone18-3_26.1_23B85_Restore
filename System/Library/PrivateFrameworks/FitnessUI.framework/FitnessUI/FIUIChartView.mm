@interface FIUIChartView
- (CGRect)_chartRect;
- (CGRect)_insetChartRect;
- (FIUIChartDataSource)dataSource;
- (FIUIChartView)initWithDateInterval:(id)interval;
- (UIEdgeInsets)contentBufferEdgeInsets;
- (UIEdgeInsets)seriesEdgeInsets;
- (double)_absolutePositionForXPlaneValue:(id)value;
- (double)_xAxisLabelPaddingForBackground:(BOOL)background;
- (float)_relativePositionForXPlaneValue:(id)value;
- (id)_dataPointAtIndex:(unint64_t)index forSeriesAtIndex:(unint64_t)atIndex;
- (id)_dataPointsForSeriesAtIndex:(unint64_t)index;
- (id)_labelsForSeriesAtIndex:(unint64_t)index;
- (id)_seriesAtIndex:(unint64_t)index;
- (unint64_t)_numberOfDataPointsForSeriesAtIndex:(unint64_t)index;
- (unint64_t)_numberOfSeries;
- (void)_adjustMinMaxValues;
- (void)_layoutAxisLabels;
- (void)_layoutChartSeries;
- (void)_layoutContainerView;
- (void)_layoutXAxisLabels;
- (void)_layoutYAxisLabels;
- (void)_orderSubviews;
- (void)_reloadDataSeries;
- (void)_updateBackgroundView;
- (void)_updateDataSeries;
- (void)_updateHighlightedValue;
- (void)layoutSubviews;
- (void)reloadData;
- (void)selectAxisPoint:(int64_t)point selected:(BOOL)selected;
- (void)setBackgroundView:(id)view;
- (void)setDateInterval:(id)interval;
- (void)setXAxisDescriptor:(id)descriptor;
- (void)setYAxisDescriptor:(id)descriptor;
@end

@implementation FIUIChartView

- (FIUIChartView)initWithDateInterval:(id)interval
{
  intervalCopy = interval;
  v6 = [(FIUIChartView *)self initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
    v7 = objc_alloc_init(FIUIChartDataGroup);
    dataGroup = v6->_dataGroup;
    v6->_dataGroup = v7;

    xAxisLabels = v6->_xAxisLabels;
    v6->_xAxisLabels = MEMORY[0x1E695E0F0];

    xAxisSubLabels = v6->_xAxisSubLabels;
    v6->_xAxisSubLabels = 0;

    [(FIUIChartDataGroup *)v6->_dataGroup setDataSource:v6];
    objc_storeStrong(&v6->_dateInterval, interval);
    v6->_yAxisEdgeInset = 0.0;
    v6->_labelsInsetChartBackground = 1;
    v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
    containerView = v6->_containerView;
    v6->_containerView = v11;

    [(UIView *)v6->_containerView setOpaque:0];
    [(FIUIChartView *)v6 addSubview:v6->_containerView];
  }

  return v6;
}

- (void)reloadData
{
  [(FIUIChartDataGroup *)self->_dataGroup reloadData];
  [(FIUIChartView *)self _adjustMinMaxValues];
  [(FIUIChartView *)self _updateHighlightedValue];
  [(FIUIChartView *)self _reloadDataSeries];
  [(FIUIChartView *)self _updateDataSeries];

  [(FIUIChartView *)self setNeedsLayout];
}

- (void)selectAxisPoint:(int64_t)point selected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(NSArray *)self->_xAxisLabels count]> point)
  {
    axisLabels = [(FIUIChartTimeAxisDescriptor *)self->_xAxisDescriptor axisLabels];
    v10 = [axisLabels objectAtIndexedSubscript:point];

    [(FIUIChartTimeAxisDescriptor *)self->_xAxisDescriptor selectLabel:selectedCopy atIndex:point];
    v8 = [(NSArray *)self->_xAxisLabels objectAtIndexedSubscript:point];
    labelColor = [v10 labelColor];
    [v8 setTextColor:labelColor];
  }
}

- (void)setDateInterval:(id)interval
{
  intervalCopy = interval;
  if (![(NSDateInterval *)self->_dateInterval isEqualToDateInterval:?])
  {
    objc_storeStrong(&self->_dateInterval, interval);
    xAxisDescriptor = self->_xAxisDescriptor;
    startDate = [intervalCopy startDate];
    [(FIUIChartTimeAxisDescriptor *)xAxisDescriptor setMinValue:startDate];

    v7 = self->_xAxisDescriptor;
    endDate = [intervalCopy endDate];
    [(FIUIChartTimeAxisDescriptor *)v7 setMaxValue:endDate];

    [(FIUIChartView *)self setNeedsLayout];
  }
}

- (void)setXAxisDescriptor:(id)descriptor
{
  objc_storeStrong(&self->_xAxisDescriptor, descriptor);
  descriptorCopy = descriptor;
  xAxisDescriptor = self->_xAxisDescriptor;
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  [(FIUIChartTimeAxisDescriptor *)xAxisDescriptor setMinValue:startDate];

  v8 = self->_xAxisDescriptor;
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  [(FIUIChartTimeAxisDescriptor *)v8 setMaxValue:endDate];

  [(FIUIChartView *)self setNeedsLayout];
}

- (void)setYAxisDescriptor:(id)descriptor
{
  objc_storeStrong(&self->_yAxisDescriptor, descriptor);
  descriptorCopy = descriptor;
  [(FIUIChartAxisDescriptor *)self->_yAxisDescriptor setMinValue:self->_minYValue];
  [(FIUIChartAxisDescriptor *)self->_yAxisDescriptor setMaxValue:self->_maxYValue];

  [(FIUIChartView *)self setNeedsLayout];
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  backgroundView = self->_backgroundView;
  if (backgroundView != viewCopy)
  {
    v7 = viewCopy;
    [(FIUIChartBackgroundView *)backgroundView removeFromSuperview];
    [(FIUIChartView *)self addSubview:v7];
    objc_storeStrong(&self->_backgroundView, view);
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)_updateBackgroundView
{
  [(FIUIChartView *)self bounds];
  [(FIUIChartView *)self _yAxisLabelPadding];
  [(FIUIChartView *)self _xAxisLabelPaddingForBackground:1];
  [(FIUIChartView *)self _yAxisLabelPadding];
  UIRectInset();
  v4 = v3;
  v6 = v5;
  [(FIUIChartBackgroundView *)self->_backgroundView sizeThatFits:v7, v8];
  [(FIUIChartBackgroundView *)self->_backgroundView setFrame:v4, v6, v9, v10];
  backgroundView = self->_backgroundView;

  [(FIUIChartBackgroundView *)backgroundView setNeedsDisplay];
}

- (void)_reloadDataSeries
{
  _numberOfSeries = [(FIUIChartView *)self _numberOfSeries];
  array = [MEMORY[0x1E695DF70] array];
  if (_numberOfSeries)
  {
    for (i = 0; i != _numberOfSeries; ++i)
    {
      v5 = [(FIUIChartView *)self _seriesAtIndex:i];
      if (v5)
      {
        [array addObject:v5];
      }
    }
  }

  v6 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  chartSeries = self->_chartSeries;
  self->_chartSeries = v6;
}

- (void)_updateDataSeries
{
  if ([(NSArray *)self->_chartSeries count])
  {
    v3 = 0;
    do
    {
      v4 = [(FIUIChartDataGroup *)self->_dataGroup dataSetAtIndex:v3];
      v5 = [(NSArray *)self->_chartSeries objectAtIndexedSubscript:v3];
      [v5 setDataSet:v4];
      [v5 setDataSource:self];

      ++v3;
    }

    while (v3 < [(NSArray *)self->_chartSeries count]);
  }
}

- (void)_adjustMinMaxValues
{
  minYValue = [(FIUIChartDataGroup *)self->_dataGroup minYValue];
  if (minYValue)
  {
  }

  else
  {
    maxYValue = [(FIUIChartDataGroup *)self->_dataGroup maxYValue];

    if (!maxYValue)
    {
      minYValue = self->_minYValue;
      self->_minYValue = 0;

      v25 = 0;
      goto LABEL_24;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    minYValue2 = [(FIUIChartDataGroup *)self->_dataGroup minYValue];
    [minYValue2 doubleValue];
    v9 = v13;

    maxYValue2 = [(FIUIChartDataGroup *)self->_dataGroup maxYValue];
    [maxYValue2 doubleValue];
    v11 = v15;

    if (vabdd_f64(v11, v9) >= 2.22044605e-16)
    {
LABEL_20:
      v27 = objc_loadWeakRetained(&self->_dataSource);
      v28 = objc_opt_respondsToSelector();

      if (v28)
      {
        v29 = objc_loadWeakRetained(&self->_dataSource);
        v30 = [v29 minimumYRangeForChart:self];
        [v30 doubleValue];
        v32 = v31;

        v33 = v32 - (v11 - v9);
        if (v33 > 2.22044605e-16)
        {
          v34 = v33 * 0.5;
          v9 = v9 - floor(v34);
          v11 = v11 + ceil(v34);
        }
      }

      goto LABEL_23;
    }

    v16 = objc_loadWeakRetained(&self->_dataSource);
    v17 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      v18 = objc_loadWeakRetained(&self->_dataSource);
      v19 = objc_opt_respondsToSelector();

      v20 = 0.0;
      if ((v19 & 1) == 0)
      {
LABEL_13:
        if (v17 > 2.22044605e-16 || v20 > 2.22044605e-16)
        {
          if (v9 >= v17)
          {
            v9 = v17;
          }

          [(NSNumber *)self->_maxYValue floatValue];
          if (v20 >= v26)
          {
            v11 = v20;
          }
        }

        else
        {
          v11 = v11 + 1.0;
          v9 = v9 + -1.0;
        }

        goto LABEL_20;
      }

      v21 = objc_loadWeakRetained(&self->_dataSource);
      [v21 defaultOverrideMinYValueInChart:self];
      v17 = v22;

      v16 = objc_loadWeakRetained(&self->_dataSource);
      [v16 defaultOverrideMaxYValueInChart:self];
      v20 = v23;
    }

    else
    {
      v20 = 0.0;
    }

    goto LABEL_13;
  }

  v7 = objc_loadWeakRetained(&self->_dataSource);
  [v7 overrideMinMaxYValueInChart:self];
  v9 = v8;
  v11 = v10;

LABEL_23:
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  v36 = self->_minYValue;
  self->_minYValue = v35;

  v25 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
LABEL_24:
  maxYValue = self->_maxYValue;
  self->_maxYValue = v25;

  [(FIUIChartAxisDescriptor *)self->_yAxisDescriptor setMinValue:self->_minYValue];
  yAxisDescriptor = self->_yAxisDescriptor;
  v39 = self->_maxYValue;

  [(FIUIChartAxisDescriptor *)yAxisDescriptor setMaxValue:v39];
}

- (void)_updateHighlightedValue
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    yAxisDescriptor = self->_yAxisDescriptor;
    v7 = objc_loadWeakRetained(&self->_dataSource);
    v6 = [v7 highlightedYValueInChart:self];
    [(FIUIChartAxisDescriptor *)yAxisDescriptor setHighlightedValue:v6];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = FIUIChartView;
  [(FIUIChartView *)&v3 layoutSubviews];
  [(FIUIChartView *)self _layoutContainerView];
  [(FIUIChartView *)self _layoutChartSeries];
  [(FIUIChartView *)self _layoutAxisLabels];
  [(FIUIChartView *)self _orderSubviews];
  [(FIUIChartView *)self _updateBackgroundView];
}

- (void)_layoutContainerView
{
  [(FIUIChartView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIView *)self->_containerView frame];
  if (v4 != v8 || v6 != v7)
  {
    containerView = self->_containerView;
    [(FIUIChartView *)self bounds];
    [(UIView *)containerView setFrame:?];
  }

  v11 = self->_containerView;

  [(FIUIChartView *)self bringSubviewToFront:v11];
}

- (void)_layoutAxisLabels
{
  [(FIUIChartView *)self _layoutXAxisLabels];

  [(FIUIChartView *)self _layoutYAxisLabels];
}

- (void)_layoutYAxisLabels
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_yAxisLabels mutableCopy];
  array = [MEMORY[0x1E695DF70] array];
  axisLabels = [(FIUIChartAxisDescriptor *)self->_yAxisDescriptor axisLabels];
  [(NSNumber *)self->_minYValue doubleValue];
  v42 = v6;
  [(NSNumber *)self->_maxYValue doubleValue];
  v41 = v7;
  if ([axisLabels count])
  {
    v8 = 0;
    do
    {
      v9 = [axisLabels objectAtIndexedSubscript:v8];
      hk_dequeue = [v3 hk_dequeue];
      if (!hk_dequeue)
      {
        hk_dequeue = objc_alloc_init(MEMORY[0x1E69DCC10]);
        [hk_dequeue setTextAlignment:2];
        [(UIView *)self->_containerView addSubview:hk_dequeue];
      }

      labelFont = [(FIUIChartAxisDescriptor *)self->_yAxisDescriptor labelFont];
      [hk_dequeue setFont:labelFont];

      text = [v9 text];
      [hk_dequeue setText:text];

      labelColor = [v9 labelColor];
      [hk_dequeue setTextColor:labelColor];

      [v9 shadowOffset];
      [hk_dequeue setShadowOffset:?];
      shadowColor = [v9 shadowColor];
      [hk_dequeue setShadowColor:shadowColor];

      [v9 shadowBlur];
      [hk_dequeue setShadowBlur:?];
      [hk_dequeue setAdjustsFontSizeToFitWidth:1];
      [hk_dequeue setNumberOfLines:0];
      [hk_dequeue sizeToFit];
      [(FIUIChartView *)self _insetChartRect];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [hk_dequeue intrinsicContentSize];
      v24 = v23;
      v26 = v25;
      [(FIUIChartAxisDescriptor *)self->_yAxisDescriptor axisDescriptorPadding];
      location = [v9 location];
      [location doubleValue];
      v29 = v28;

      v30 = FIUIChartRelativePositionForYPlaneValue(v29, v42, v41);
      FIUIChartAbsolutePositionForYPlaneValue(self, v30, v16, v18, v20, v22);
      if (v8 && v8 != [axisLabels count] - 1 && vabdd_f64(v29, v42) < vabdd_f64(v29, v41))
      {
        [hk_dequeue _firstBaselineOffsetFromTop];
      }

      UIRoundToViewScale();
      v32 = v31;
      UIRoundToViewScale();
      [hk_dequeue setFrame:{v32, v33, v24, v26}];
      [array addObject:hk_dequeue];

      ++v8;
    }

    while (v8 < [axisLabels count]);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v34 = v3;
  v35 = [v34 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v44;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v44 != v37)
        {
          objc_enumerationMutation(v34);
        }

        [*(*(&v43 + 1) + 8 * i) removeFromSuperview];
      }

      v36 = [v34 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v36);
  }

  v39 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  yAxisLabels = self->_yAxisLabels;
  self->_yAxisLabels = v39;
}

- (void)_layoutXAxisLabels
{
  selfCopy = self;
  v118 = *MEMORY[0x1E69E9840];
  v89 = [(NSArray *)self->_xAxisLabels mutableCopy];
  axisLabels = [(FIUIChartTimeAxisDescriptor *)selfCopy->_xAxisDescriptor axisLabels];
  axisSubLabels = [(FIUIChartTimeAxisDescriptor *)selfCopy->_xAxisDescriptor axisSubLabels];
  v83 = axisLabels;
  reverseObjectEnumerator = [axisLabels reverseObjectEnumerator];
  array = [MEMORY[0x1E695DF70] array];
  labelFont = [(FIUIChartTimeAxisDescriptor *)selfCopy->_xAxisDescriptor labelFont];
  [labelFont lineHeight];

  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = reverseObjectEnumerator;
  v91 = [obj countByEnumeratingWithState:&v109 objects:v117 count:16];
  if (v91)
  {
    v88 = *v110;
    v84 = *MEMORY[0x1E69DB648];
    v86 = selfCopy;
    do
    {
      for (i = 0; i != v91; ++i)
      {
        if (*v110 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v109 + 1) + 8 * i);
        lastObject = [v89 lastObject];
        [v89 removeLastObject];
        if (!lastObject)
        {
          lastObject = objc_alloc_init(MEMORY[0x1E69DCC10]);
          [lastObject setTextAlignment:1];
          [(UIView *)selfCopy->_containerView addSubview:lastObject];
        }

        labelFont2 = [(FIUIChartTimeAxisDescriptor *)selfCopy->_xAxisDescriptor labelFont];
        [lastObject setFont:labelFont2];

        text = [v7 text];
        [lastObject setText:text];

        labelColor = [v7 labelColor];
        [lastObject setTextColor:labelColor];

        [lastObject setAdjustsFontSizeToFitWidth:1];
        [lastObject setNumberOfLines:0];
        [lastObject sizeToFit];
        labelAMPMFont = [(FIUIChartTimeAxisDescriptor *)selfCopy->_xAxisDescriptor labelAMPMFont];
        if (labelAMPMFont)
        {
          v13 = objc_alloc_init(MEMORY[0x1E696AB78]);
          text2 = [v7 text];
          aMSymbol = [v13 AMSymbol];
          v16 = [text2 rangeOfString:aMSymbol];
          v18 = v17;

          if (v16 == 0x7FFFFFFFFFFFFFFFLL)
          {
            text3 = [v7 text];
            pMSymbol = [v13 PMSymbol];
            v16 = [text3 rangeOfString:pMSymbol];
            v18 = v21;

            selfCopy = v86;
            if (v16 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_14;
            }
          }

          else
          {
            selfCopy = v86;
          }

          attributedText = [lastObject attributedText];
          v23 = [attributedText mutableCopy];

          [v23 addAttribute:v84 value:labelAMPMFont range:{v16, v18}];
          [lastObject setAttributedText:v23];

LABEL_14:
        }

        [lastObject intrinsicContentSize];
        location = [v7 location];
        [(FIUIChartView *)selfCopy _absolutePositionForXPlaneValue:location];

        [v7 useReversePlacement];
        [(FIUIChartTimeAxisDescriptor *)selfCopy->_xAxisDescriptor axisDescriptorPadding];
        if (selfCopy->_xAxisLabelsShouldBaselineAlign)
        {
          [(UIView *)selfCopy->_containerView bounds];
          CGRectGetMaxY(v119);
          [lastObject _firstBaselineOffsetFromTop];
        }

        else
        {
          [axisSubLabels count];
          [(UIView *)selfCopy->_containerView bounds];
          CGRectGetMaxY(v120);
          [(FIUIChartView *)selfCopy _xAxisLabelPaddingForBackground:0];
          UIRoundToViewScale();
          UIRoundToViewScale();
        }

        UIRoundToViewScale();
        [lastObject setFrame:?];
        if ([(FIUIChartTimeAxisDescriptor *)selfCopy->_xAxisDescriptor hideClippedLabels])
        {
          [lastObject frame];
          v26 = v25;
          [lastObject frame];
          v28 = v27;
          [lastObject frame];
          v30 = v29;
          [(FIUIChartView *)selfCopy bounds];
          v124.size.height = 2.22507386e-308;
          v124.origin.x = v26;
          v124.origin.y = v28;
          v124.size.width = v30;
          [lastObject setHidden:{!CGRectContainsRect(v121, v124)}];
        }

        [array insertObject:lastObject atIndex:0];
      }

      v91 = [obj countByEnumeratingWithState:&v109 objects:v117 count:16];
    }

    while (v91);
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v31 = v89;
  v32 = [v31 countByEnumeratingWithState:&v105 objects:v116 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v106;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v106 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [*(*(&v105 + 1) + 8 * j) removeFromSuperview];
      }

      v33 = [v31 countByEnumeratingWithState:&v105 objects:v116 count:16];
    }

    while (v33);
  }

  v36 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
  xAxisLabels = selfCopy->_xAxisLabels;
  selfCopy->_xAxisLabels = v36;

  if ([axisSubLabels count])
  {
    v38 = (objc_opt_respondsToSelector() & 1) == 0 || [(FIUIChartTimeAxisDescriptor *)selfCopy->_xAxisDescriptor subLabelAlignment]== 0;
    v92 = v38;
    v46 = [(NSArray *)selfCopy->_xAxisSubLabels mutableCopy];

    reverseObjectEnumerator2 = [axisSubLabels reverseObjectEnumerator];

    array2 = [MEMORY[0x1E695DF70] array];

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    obj = reverseObjectEnumerator2;
    v48 = [obj countByEnumeratingWithState:&v101 objects:v115 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v102;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v102 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v52 = *(*(&v101 + 1) + 8 * k);
          lastObject2 = [v46 lastObject];
          [v46 removeLastObject];
          if (!lastObject2)
          {
            lastObject2 = objc_alloc_init(MEMORY[0x1E69DCC10]);
            [lastObject2 setTextAlignment:1];
            [(UIView *)selfCopy->_containerView addSubview:lastObject2];
          }

          subLabelFont = [(FIUIChartTimeAxisDescriptor *)selfCopy->_xAxisDescriptor subLabelFont];
          [lastObject2 setFont:subLabelFont];

          text4 = [v52 text];
          [lastObject2 setText:text4];

          labelColor2 = [v52 labelColor];
          [lastObject2 setTextColor:labelColor2];

          location2 = [v52 location];
          [(FIUIChartView *)selfCopy _absolutePositionForXPlaneValue:location2];

          [(UIView *)selfCopy->_containerView bounds];
          CGRectGetMaxY(v122);
          [(FIUIChartView *)selfCopy _xAxisLabelPaddingForBackground:0];
          UIRoundToViewScale();
          [lastObject2 intrinsicContentSize];
          v59 = v58;
          v61 = v60;
          [(FIUIChartTimeAxisDescriptor *)selfCopy->_xAxisDescriptor subAxisDescriptorPadding];
          if (v62 > 0.00000011920929)
          {
            if (v92)
            {
              [lastObject2 intrinsicContentSize];
              [(FIUIChartTimeAxisDescriptor *)selfCopy->_xAxisDescriptor subAxisDescriptorPadding];
            }

            else
            {
              [(FIUIChartTimeAxisDescriptor *)selfCopy->_xAxisDescriptor subAxisDescriptorPadding];
            }
          }

          UIRoundToViewScale();
          v64 = v63;
          [(FIUIChartTimeAxisDescriptor *)selfCopy->_xAxisDescriptor subAxisVerticalPadding];
          UIRoundToViewScale();
          [lastObject2 setFrame:{v64, v65, v59, v61}];
          if ([(FIUIChartTimeAxisDescriptor *)selfCopy->_xAxisDescriptor hideClippedLabels])
          {
            [(FIUIChartView *)selfCopy bounds];
            v67 = v66;
            v69 = v68;
            v71 = v70;
            v73 = v72;
            [lastObject2 frame];
            v125.origin.x = v74;
            v125.origin.y = v75;
            v125.size.width = v76;
            v125.size.height = v77;
            v123.origin.x = v67;
            v123.origin.y = v69;
            v123.size.width = v71;
            v123.size.height = v73;
            [lastObject2 setHidden:{!CGRectContainsRect(v123, v125)}];
          }

          [array2 insertObject:lastObject2 atIndex:0];
        }

        v49 = [obj countByEnumeratingWithState:&v101 objects:v115 count:16];
      }

      while (v49);
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v31 = v46;
    v78 = [v31 countByEnumeratingWithState:&v97 objects:v114 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = *v98;
      do
      {
        for (m = 0; m != v79; ++m)
        {
          if (*v98 != v80)
          {
            objc_enumerationMutation(v31);
          }

          [*(*(&v97 + 1) + 8 * m) removeFromSuperview];
        }

        v79 = [v31 countByEnumeratingWithState:&v97 objects:v114 count:16];
      }

      while (v79);
    }

    v82 = [MEMORY[0x1E695DEC8] arrayWithArray:array2];
    xAxisSubLabels = selfCopy->_xAxisSubLabels;
    selfCopy->_xAxisSubLabels = v82;
  }

  else
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v39 = selfCopy->_xAxisSubLabels;
    v40 = [(NSArray *)v39 countByEnumeratingWithState:&v93 objects:v113 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v94;
      do
      {
        for (n = 0; n != v41; ++n)
        {
          if (*v94 != v42)
          {
            objc_enumerationMutation(v39);
          }

          [*(*(&v93 + 1) + 8 * n) removeFromSuperview];
        }

        v41 = [(NSArray *)v39 countByEnumeratingWithState:&v93 objects:v113 count:16];
      }

      while (v41);
    }

    xAxisSubLabels = selfCopy->_xAxisSubLabels;
    selfCopy->_xAxisSubLabels = 0;
    array2 = array;
  }
}

- (void)_layoutChartSeries
{
  v32 = *MEMORY[0x1E69E9840];
  [(FIUIChartView *)self _chartRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  top = self->_contentBufferEdgeInsets.top;
  left = self->_contentBufferEdgeInsets.left;
  bottom = self->_contentBufferEdgeInsets.bottom;
  right = self->_contentBufferEdgeInsets.right;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_chartSeries;
  v15 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = v10 - (top + bottom);
    v18 = v8 - (left + right);
    v19 = v6 + top;
    v20 = v4 + left;
    v21 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v27 + 1) + 8 * i);
        [v23 setFrame:{v20, v19, v18, v17}];
        superview = [v23 superview];
        containerView = self->_containerView;

        if (superview != containerView)
        {
          UIEdgeInsetsSubtract();
          [v23 setEdgeInsets:?];
          [(UIView *)self->_containerView addSubview:v23];
        }

        [v23 setNeedsLayout];
      }

      v16 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);
  }
}

- (void)_orderSubviews
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_chartSeries;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        displayAboveAxisLabels = [v9 displayAboveAxisLabels];
        containerView = self->_containerView;
        if (displayAboveAxisLabels)
        {
          [(UIView *)containerView bringSubviewToFront:v9];
        }

        else
        {
          [(UIView *)containerView insertSubview:v9 atIndex:v6++];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (double)_xAxisLabelPaddingForBackground:(BOOL)background
{
  if (!background || self->_labelsInsetChartBackground)
  {
    labelFont = [(FIUIChartTimeAxisDescriptor *)self->_xAxisDescriptor labelFont];
    [labelFont lineHeight];

    [(FIUIChartTimeAxisDescriptor *)self->_xAxisDescriptor subAxisSpacing];
  }

  UIRoundToViewScale();
  return result;
}

- (CGRect)_chartRect
{
  [(UIView *)self->_containerView frame];
  [(FIUIChartView *)self _yAxisLabelPadding];
  [(FIUIChartView *)self _xAxisLabelPaddingForBackground:0];
  [(FIUIChartView *)self _yAxisLabelPadding];

  UIRectInset();
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_insetChartRect
{
  [(FIUIChartView *)self _chartRect];
  top = self->_seriesEdgeInsets.top;
  left = self->_seriesEdgeInsets.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_seriesEdgeInsets.right);
  v12 = v11 - (top + self->_seriesEdgeInsets.bottom);
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (double)_absolutePositionForXPlaneValue:(id)value
{
  [(FIUIChartView *)self _relativePositionForXPlaneValue:value];
  v5 = v4;
  [(FIUIChartView *)self _insetChartRect];

  return FIUIChartAbsolutePositionForXPlaneValue(self, v5, v6, v7, v8, v9);
}

- (float)_relativePositionForXPlaneValue:(id)value
{
  dateInterval = self->_dateInterval;
  valueCopy = value;
  startDate = [(NSDateInterval *)dateInterval startDate];
  v7 = (FIUIChartXAxisFloatValue)();

  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  v9 = (FIUIChartXAxisFloatValue)();

  v10 = FIUIChartXAxisFloatValue(valueCopy);
  return FIUIChartRelativePositionForXPlaneValue(v10, v7, v9);
}

- (unint64_t)_numberOfSeries
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = [WeakRetained numberOfSeriesInChart:self];

  return v4;
}

- (id)_seriesAtIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained chart:self seriesAtIndex:index];

  return v6;
}

- (unint64_t)_numberOfDataPointsForSeriesAtIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = [WeakRetained chart:self numberOfDataPointsForSeriesAtIndex:index];

  return v6;
}

- (id)_dataPointAtIndex:(unint64_t)index forSeriesAtIndex:(unint64_t)atIndex
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v8 = [WeakRetained chart:self dataPointAtIndex:index forSeriesAtIndex:atIndex];

  return v8;
}

- (id)_dataPointsForSeriesAtIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_dataSource);
    v8 = [v7 chart:self dataPointsForSeriesAtIndex:index];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_labelsForSeriesAtIndex:(unint64_t)index
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_dataSource);
    v8 = [v7 chart:self labelsForSeriesAtIndex:index];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (FIUIChartDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (UIEdgeInsets)seriesEdgeInsets
{
  top = self->_seriesEdgeInsets.top;
  left = self->_seriesEdgeInsets.left;
  bottom = self->_seriesEdgeInsets.bottom;
  right = self->_seriesEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)contentBufferEdgeInsets
{
  top = self->_contentBufferEdgeInsets.top;
  left = self->_contentBufferEdgeInsets.left;
  bottom = self->_contentBufferEdgeInsets.bottom;
  right = self->_contentBufferEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end