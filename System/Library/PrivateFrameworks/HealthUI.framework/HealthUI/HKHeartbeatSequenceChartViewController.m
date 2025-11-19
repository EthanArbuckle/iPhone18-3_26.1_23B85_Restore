@interface HKHeartbeatSequenceChartViewController
- (HKHeartbeatSequenceChartViewController)initWithMinimumHeight:(double)a3 startDate:(id)a4;
- (id)_heartbeatSequenceSeriesForSource:(id)a3 axis:(id)a4 color:(id)a5 lineWidth:(double)a6 markerRadius:(double)a7 dashStyle:(int64_t)a8 annotate:(BOOL)a9;
- (id)_verticalNumericalAxis;
- (void)_adjustGraphViewOptions;
- (void)_recomputeAxisRanges;
- (void)addSequenceData:(id)a3;
- (void)addSequenceData:(id)a3 color:(id)a4 lineWidth:(double)a5 markerRadius:(double)a6 dashStyle:(int64_t)a7 annotate:(BOOL)a8;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKHeartbeatSequenceChartViewController

- (HKHeartbeatSequenceChartViewController)initWithMinimumHeight:(double)a3 startDate:(id)a4
{
  v7 = a4;
  v8 = [[HKAxisLabelDimensionMinuteSecond alloc] initWithStartDate:v7];
  v17.receiver = self;
  v17.super_class = HKHeartbeatSequenceChartViewController;
  v9 = [(HKScalarGraphViewController *)&v17 initWithMinimumHeight:v8 labelDimension:0 labelEndings:0 numericAxisConfigurationOverrides:a3];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sequenceDataSources = v9->_sequenceDataSources;
    v9->_sequenceDataSources = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    graphSeries = v9->_graphSeries;
    v9->_graphSeries = v12;

    v14 = [(HKHeartbeatSequenceChartViewController *)v9 _verticalNumericalAxis];
    commonVerticalAxis = v9->_commonVerticalAxis;
    v9->_commonVerticalAxis = v14;

    objc_storeStrong(&v9->_startDate, a4);
  }

  return v9;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HKHeartbeatSequenceChartViewController;
  [(HKScalarGraphViewController *)&v3 viewDidLoad];
  [(HKHeartbeatSequenceChartViewController *)self _adjustGraphViewOptions];
  [(HKHeartbeatSequenceChartViewController *)self _recomputeAxisRanges];
}

- (void)viewWillLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = HKHeartbeatSequenceChartViewController;
  [(HKHeartbeatSequenceChartViewController *)&v13 viewWillLayoutSubviews];
  v3 = [(HKHeartbeatSequenceChartViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(HKGraphViewController *)self graphView];
  [v12 setFrame:{v5, v7, v9, v11}];
}

- (void)addSequenceData:(id)a3
{
  v4 = a3;
  v5 = HKHealthKeyColor();
  [(HKHeartbeatSequenceChartViewController *)self addSequenceData:v4 color:v5 lineWidth:0 markerRadius:1 dashStyle:2.0 annotate:3.0];
}

- (void)addSequenceData:(id)a3 color:(id)a4 lineWidth:(double)a5 markerRadius:(double)a6 dashStyle:(int64_t)a7 annotate:(BOOL)a8
{
  v14 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __106__HKHeartbeatSequenceChartViewController_addSequenceData_color_lineWidth_markerRadius_dashStyle_annotate___block_invoke;
  v16[3] = &unk_1E81B8CC8;
  v16[4] = self;
  v17 = v14;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v15 = v14;
  [a3 enumerateSequences:v16];
}

uint64_t __106__HKHeartbeatSequenceChartViewController_addSequenceData_color_lineWidth_markerRadius_dashStyle_annotate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HKHeartbeatSequenceDataSource);
  [(HKHeartbeatSequenceDataSource *)v4 setHeartbeatSequencePoints:v3];

  v5 = [*(a1 + 32) _heartbeatSequenceSeriesForSource:v4 axis:*(*(a1 + 32) + 1056) color:*(a1 + 40) lineWidth:*(a1 + 64) markerRadius:*(a1 + 72) dashStyle:*(a1 + 48) annotate:*(a1 + 56)];
  [*(*(a1 + 32) + 1040) addObject:v4];
  [*(*(a1 + 32) + 1048) addObject:v5];

  return 1;
}

- (void)_adjustGraphViewOptions
{
  v2 = [(HKGraphViewController *)self graphView];
  [v2 setDisableSelection:1];
  [v2 setOutlineOptions:4];
}

- (void)_recomputeAxisRanges
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(HKGraphViewController *)self graphView];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v4 = self->_sequenceDataSources;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    v8 = -1.79769313e308;
    v9 = 1.79769313e308;
    v10 = 1.79769313e308;
    v11 = -1.79769313e308;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v33 + 1) + 8 * i) unionWithExtent:{v9, v10, v8, v11, v33}];
        v9 = v13;
        v10 = v14;
        v8 = v15;
        v11 = v16;
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = -1.79769313e308;
    v9 = 1.79769313e308;
    v10 = 1.79769313e308;
    v11 = -1.79769313e308;
  }

  if (v9 >= 1.79769313e308 || v10 >= 1.79769313e308 || v8 <= -1.79769313e308 || v11 <= -1.79769313e308)
  {
    v19 = [HKValueRange valueRangeWithMinValue:&unk_1F4384930 maxValue:&unk_1F4384930, v33];
    [v3 setEffectiveAxisRange:v19 effectiveVisibleRangeCadence:v19 effectiveVisibleRangeActive:v19];
  }

  else
  {
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:v9 + -1.0];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    v19 = [HKValueRange valueRangeWithMinValue:v17 maxValue:v18];

    [(HKHeartbeatSequenceChartViewController *)self initialXAxisOffset];
    if (v20 >= v8 + -30.0)
    {
      v20 = v8 + -30.0;
    }

    v21 = v20 + 30.0;
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v33];
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
    v24 = [HKValueRange valueRangeWithMinValue:v22 maxValue:v23];

    [v3 setEffectiveAxisRange:v19 effectiveVisibleRangeCadence:v24 effectiveVisibleRangeActive:v24];
    v25 = v10 + v11;
    v26 = v10 + v11 * 0.5;
    v27 = v26 + 20.0;
    if (v11 >= 40.0)
    {
      v28 = v10;
    }

    else
    {
      v28 = v26 + -20.0;
    }

    if (v11 >= 40.0)
    {
      v29 = v10 + v11;
    }

    else
    {
      v29 = v27;
    }

    v30 = [MEMORY[0x1E696AD98] numberWithDouble:{v28, v25}];
    v31 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
    v32 = [HKValueRange valueRangeWithMinValue:v30 maxValue:v31];

    [v3 autoscaleYAxesAnimated:0 specificRange:v32 onlyIfNeeded:0 completion:0];
  }
}

- (id)_heartbeatSequenceSeriesForSource:(id)a3 axis:(id)a4 color:(id)a5 lineWidth:(double)a6 markerRadius:(double)a7 dashStyle:(int64_t)a8 annotate:(BOOL)a9
{
  v9 = a9;
  v48[1] = *MEMORY[0x1E69E9840];
  v15 = a5;
  v43 = a4;
  v45 = a3;
  v16 = objc_alloc_init(HKLineSeries);
  v17 = [HKGradientFillStyle alloc];
  v18 = [v15 colorWithAlphaComponent:0.3];
  v19 = [v15 colorWithAlphaComponent:0.0];
  v44 = [(HKGradientFillStyle *)v17 initWithFirstColor:v18 secondColor:v19];

  v20 = [HKGradientFillStyle alloc];
  v21 = HKHealthKeyColor();
  v22 = [v21 colorWithAlphaComponent:0.3];
  v23 = HKHealthKeyColor();
  v24 = [v23 colorWithAlphaComponent:0.0];
  v42 = [(HKGradientFillStyle *)v20 initWithFirstColor:v22 secondColor:v24];

  v25 = HKUIOnePixel() + a6;
  v26 = [[HKLineSeriesPointMarkerStyle alloc] initWithColor:v15 radius:1 style:a7];
  v27 = [HKStrokeStyle strokeStyleWithColor:v15 lineWidth:v25];
  [v27 setDashStyle:a8];
  v28 = objc_alloc_init(HKLineSeriesPresentationStyle);
  [(HKLineSeriesPresentationStyle *)v28 setStrokeStyle:v27];
  v41 = v26;
  if (v9)
  {
    [(HKLineSeriesPresentationStyle *)v28 setPointMarkerStyle:v26];
    [(HKLineSeriesPresentationStyle *)v28 setWaveForm:0];
    [(HKLineSeriesPresentationStyle *)v28 setEndCapStyle:v26];
    v29 = objc_alloc_init(HKAxisLabelStyle);
    v30 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:12.0];
    [(HKAxisLabelStyle *)v29 setFont:v30];

    [(HKAxisLabelStyle *)v29 setTextColor:v15];
    [(HKLineSeriesPresentationStyle *)v28 setAnnotationStyle:v29];
  }

  else
  {
    [(HKLineSeriesPresentationStyle *)v28 setWaveForm:0];
    [(HKLineSeriesPresentationStyle *)v28 setEndCapStyle:v26];
  }

  v31 = objc_alloc_init(HKLineSeriesPresentationStyle);
  [(HKLineSeriesPresentationStyle *)v31 setStrokeStyle:v27];
  [(HKLineSeriesPresentationStyle *)v31 setFillStyle:v44];
  [(HKLineSeriesPresentationStyle *)v31 setWaveForm:0];
  v32 = objc_alloc_init(HKLineSeriesPresentationStyle);
  v33 = HKHealthKeyColor();
  v34 = [HKStrokeStyle strokeStyleWithColor:v33 lineWidth:v25];
  [(HKLineSeriesPresentationStyle *)v32 setStrokeStyle:v34];

  [(HKLineSeriesPresentationStyle *)v32 setFillStyle:v42];
  [(HKLineSeriesPresentationStyle *)v32 setWaveForm:0];
  v48[0] = v28;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  [(HKLineSeries *)v16 setUnhighlightedPresentationStyles:v35];

  v47 = v31;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  [(HKLineSeries *)v16 setHighlightedPresentationStyles:v36];

  v46 = v32;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  [(HKLineSeries *)v16 setSelectedPresentationStyles:v37];

  [(HKGraphSeries *)v16 setYAxis:v43];
  v38 = [HKValueRange valueRangeWithMinValue:&unk_1F4384940 maxValue:&unk_1F4384950];
  v39 = [HKNumericFixedAxisScalingRule ruleWithDefaultAxisBounds:v38 axisBoundsOverrides:0];
  [(HKGraphSeries *)v16 setAxisScalingRule:v39];

  [(HKGraphSeries *)v16 setDataSource:v45];

  return v16;
}

- (id)_verticalNumericalAxis
{
  v2 = objc_alloc_init(HKSolidFillStyle);
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKSolidFillStyle *)v2 setColor:v3];

  v4 = objc_alloc_init(HKAxisStyle);
  v5 = HKDefaultChartYAxisColor();
  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  v7 = HKNumberFormatterFromTemplate(0);
  v8 = [HKAxisLabelStyle labelStyleWithColor:v5 font:v6 horizontalAlignment:2 verticalAlignment:2 numberFormatter:v7];
  [(HKAxisStyle *)v4 setLabelStyle:v8];

  [(HKAxisStyle *)v4 setTickPositions:1];
  v9 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v10 = [HKStrokeStyle strokeStyleWithColor:v9 lineWidth:2.0];
  [(HKAxisStyle *)v4 setAxisLineStyle:v10];

  [(HKAxisStyle *)v4 setFillStyle:v2];
  [(HKAxisStyle *)v4 setFillInnerPadding:10.0];
  [(HKAxisStyle *)v4 setFillOuterPadding:15.0];
  [(HKAxisStyle *)v4 setLocation:1];
  [(HKAxisStyle *)v4 setShowGridLines:1];
  v11 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v12 = [v11 colorWithAlphaComponent:0.5];
  v13 = [HKStrokeStyle strokeStyleWithColor:v12 lineWidth:HKUIOnePixel()];
  [(HKAxisStyle *)v4 setGridLineStyle:v13];

  v14 = objc_alloc_init(HKNumericAxisConfiguration);
  [(HKAxisConfiguration *)v14 setPreferredStyle:v4];
  v15 = [[HKNumericAxis alloc] initWithConfiguration:v14];

  return v15;
}

@end