@interface HKHistogramChartViewController
+ (id)defaultVerticalAxis;
- (CGSize)_barCornerRadiusForCurrentDevice;
- (HKHistogramBarSeries)histogramSeries;
- (HKHistogramChartViewController)initWithHealthStore:(id)a3 dataSource:(id)a4 dataFormatter:(id)a5 minimumGraphViewHeight:(double)a6;
- (HKScalarGraphViewController)graphViewController;
- (id)_descriptionDateFormatter;
- (id)_displayDescriptionForDataSource:(id)a3;
- (id)graphView:(id)a3 graphSeriesForZoom:(int64_t)a4 stackOffset:(int64_t)a5;
- (id)seriesSelectionLineColorForGraphView:(id)a3;
- (void)_pinView:(id)a3 toParentView:(id)a4;
- (void)didCompleteFetchForDataSource:(id)a3;
- (void)graphView:(id)a3 didUpdateSelectedPoint:(id)a4;
- (void)graphViewDidEndSelection:(id)a3;
- (void)updateAnnotationDataSource:(id)a3 pointContexts:(id)a4;
- (void)viewDidLoad;
@end

@implementation HKHistogramChartViewController

- (HKHistogramChartViewController)initWithHealthStore:(id)a3 dataSource:(id)a4 dataFormatter:(id)a5 minimumGraphViewHeight:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = HKHistogramChartViewController;
  v14 = [(HKHistogramChartViewController *)&v20 init];
  if (v14)
  {
    v15 = [HKDisplayTypeController sharedInstanceForHealthStore:v11];
    v16 = [v12 quantityType];
    v17 = [v15 displayTypeForObjectType:v16];
    displayType = v14->_displayType;
    v14->_displayType = v17;

    objc_storeStrong(&v14->_healthStore, a3);
    v14->_minimumGraphViewHeight = a6;
    objc_storeStrong(&v14->_dataSource, a4);
    [(HKHistogramChartDataSource *)v14->_dataSource setFetchObserver:v14];
    objc_storeStrong(&v14->_dataFormatter, a5);
  }

  return v14;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = HKHistogramChartViewController;
  [(HKHistogramChartViewController *)&v21 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [v3 initWithArrangedSubviews:MEMORY[0x1E695E0F0]];
  [v4 setAxis:1];
  v5 = objc_alloc(MEMORY[0x1E69DCC10]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(HKHistogramChartViewController *)self setHeaderLabel:v6];

  v7 = [(HKHistogramChartViewController *)self headerLabel];
  [v7 setNumberOfLines:0];

  v8 = [(HKHistogramChartViewController *)self headerLabel];
  [v4 addArrangedSubview:v8];

  v9 = [(HKHistogramChartViewController *)self graphViewController];
  [(HKHistogramChartViewController *)self addChildViewController:v9];

  v10 = [(HKHistogramChartViewController *)self graphViewController];
  [v10 didMoveToParentViewController:self];

  v11 = [(HKHistogramChartViewController *)self graphViewController];
  v12 = [v11 view];
  [v4 addArrangedSubview:v12];

  v13 = [(HKHistogramChartViewController *)self view];
  [v13 addSubview:v4];

  v14 = [(HKHistogramChartViewController *)self view];
  [(HKHistogramChartViewController *)self _pinView:v4 toParentView:v14];

  v15 = [(HKHistogramChartViewController *)self dataFormatter];
  v16 = [[HKHistogramAnnotationViewDataSource alloc] initWithFormatter:v15];
  [(HKHistogramChartViewController *)self setAnnotationViewDataSource:v16];

  v17 = [HKLollipopController alloc];
  v18 = [(HKHistogramChartViewController *)self annotationViewDataSource];
  v19 = [(HKHistogramChartViewController *)self view];
  v20 = [(HKLollipopController *)v17 initWithAnnotationDataSource:v18 parentView:v19 delegate:self];
  [(HKHistogramChartViewController *)self setLollipopController:v20];
}

- (HKScalarGraphViewController)graphViewController
{
  graphViewController = self->_graphViewController;
  if (!graphViewController)
  {
    v4 = objc_alloc_init(HKHistogramAxisDimension);
    v5 = [(HKHistogramChartViewController *)self dataSource];
    [(HKHistogramAxisDimension *)v4 setDataSource:v5];

    v6 = [HKScalarGraphViewController alloc];
    [(HKHistogramChartViewController *)self minimumGraphViewHeight];
    v7 = [(HKScalarGraphViewController *)v6 initWithMinimumHeight:v4 labelDimension:3 labelEndings:0 numericAxisConfigurationOverrides:?];
    v8 = self->_graphViewController;
    self->_graphViewController = v7;

    v9 = [(HKGraphViewController *)self->_graphViewController graphView];
    [v9 setDelegate:self];

    v10 = [(HKGraphViewController *)self->_graphViewController graphView];
    [v10 setMultiSeriesSelection:1];

    v11 = [(HKGraphViewController *)self->_graphViewController graphView];
    [v11 setDisableSelection:0];

    v12 = *MEMORY[0x1E69DDCE0];
    v13 = *(MEMORY[0x1E69DDCE0] + 8);
    v14 = *(MEMORY[0x1E69DDCE0] + 16);
    v15 = *(MEMORY[0x1E69DDCE0] + 24);
    v16 = [(HKGraphViewController *)self->_graphViewController graphView];
    [v16 setAxisInset:{v12, v13, v14, v15}];

    v17 = [(HKGraphViewController *)self->_graphViewController graphView];
    v18 = [v17 xAxis];
    v19 = [v18 preferredStyle];
    v20 = [v19 labelStyle];
    [v20 setVerticalAlignment:2];

    graphViewController = self->_graphViewController;
  }

  return graphViewController;
}

- (CGSize)_barCornerRadiusForCurrentDevice
{
  v2 = [MEMORY[0x1E696C608] sharedBehavior];
  if ([v2 isiPad])
  {
    v3 = 3.0;
  }

  else
  {
    v3 = 1.5;
  }

  v4 = v3;
  v5 = v3;
  result.height = v5;
  result.width = v4;
  return result;
}

- (HKHistogramBarSeries)histogramSeries
{
  histogramSeries = self->_histogramSeries;
  if (!histogramSeries)
  {
    v4 = [HKHistogramBarSeries alloc];
    v5 = [(HKHistogramChartViewController *)self displayType];
    v6 = [v5 displayCategory];
    v7 = [v6 fillStyle];
    v8 = [(HKHistogramChartViewController *)self dataSource];
    v9 = [v8 numberOfBins];
    [(HKHistogramChartViewController *)self _barCornerRadiusForCurrentDevice];
    v10 = [(HKHistogramBarSeries *)v4 initWithFillStyle:v7 numberOfColumns:v9 cornerRadii:?];
    v11 = self->_histogramSeries;
    self->_histogramSeries = v10;

    v12 = self->_histogramSeries;
    v13 = [objc_opt_class() defaultVerticalAxis];
    [(HKGraphSeries *)v12 setYAxis:v13];

    v14 = [(HKHistogramChartViewController *)self dataSource];
    v15 = [v14 yAxisRange];

    if (v15)
    {
      v16 = [HKNumericFixedAxisScalingRule ruleWithDefaultAxisBounds:v15 axisBoundsOverrides:0];
      [(HKGraphSeries *)self->_histogramSeries setAxisScalingRule:v16];
    }

    v17 = [(HKHistogramChartViewController *)self dataSource];
    [(HKGraphSeries *)self->_histogramSeries setDataSource:v17];

    histogramSeries = self->_histogramSeries;
  }

  return histogramSeries;
}

+ (id)defaultVerticalAxis
{
  v2 = objc_alloc_init(HKSolidFillStyle);
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKSolidFillStyle *)v2 setColor:v3];

  v4 = objc_alloc_init(HKAxisStyle);
  v5 = [MEMORY[0x1E69DC888] grayColor];
  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  v7 = [HKAxisLabelStyle labelStyleWithColor:v5 font:v6 horizontalAlignment:2 verticalAlignment:2];
  [(HKAxisStyle *)v4 setLabelStyle:v7];

  [(HKAxisStyle *)v4 setTickPositions:1];
  v8 = [MEMORY[0x1E69DC888] grayColor];
  v9 = [HKStrokeStyle strokeStyleWithColor:v8 lineWidth:2.0];
  [(HKAxisStyle *)v4 setAxisLineStyle:v9];

  [(HKAxisStyle *)v4 setFillStyle:v2];
  [(HKAxisStyle *)v4 setFillInnerPadding:4.0];
  [(HKAxisStyle *)v4 setFillOuterPadding:4.0];
  [(HKAxisStyle *)v4 setLocation:1];
  [(HKAxisStyle *)v4 setShowGridLines:1];
  v10 = [MEMORY[0x1E69DC888] grayColor];
  v11 = [v10 colorWithAlphaComponent:0.5];
  v12 = [HKStrokeStyle strokeStyleWithColor:v11 lineWidth:HKUIOnePixel()];
  [(HKAxisStyle *)v4 setGridLineStyle:v12];

  v13 = [MEMORY[0x1E69DC888] grayColor];
  v14 = [HKStrokeStyle strokeStyleWithColor:v13 lineWidth:HKUIOnePixel() * 0.5];
  [(HKAxisStyle *)v4 setBorderStyleForFill:v14];

  v15 = objc_alloc_init(HKNumericAxisConfiguration);
  [(HKAxisConfiguration *)v15 setPreferredStyle:v4];
  v16 = [[HKNumericAxis alloc] initWithConfiguration:v15];

  return v16;
}

- (void)_pinView:(id)a3 toParentView:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v6 leadingAnchor];
  v8 = [v5 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [v6 trailingAnchor];
  v11 = [v5 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [v6 topAnchor];
  v14 = [v5 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v18 = [v6 bottomAnchor];

  v16 = [v5 bottomAnchor];

  v17 = [v18 constraintEqualToAnchor:v16];
  [v17 setActive:1];
}

- (id)_descriptionDateFormatter
{
  v2 = _descriptionDateFormatter_formatter;
  if (!_descriptionDateFormatter_formatter)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v4 = _descriptionDateFormatter_formatter;
    _descriptionDateFormatter_formatter = v3;

    [_descriptionDateFormatter_formatter setDateFormat:@"MM/dd/yyyy"];
    v2 = _descriptionDateFormatter_formatter;
  }

  return v2;
}

- (id)_displayDescriptionForDataSource:(id)a3
{
  v4 = a3;
  v5 = [(HKHistogramChartViewController *)self _descriptionDateFormatter];
  v6 = [v4 samplesStartDate];
  v7 = [v5 stringFromDate:v6];

  v8 = [(HKHistogramChartViewController *)self _descriptionDateFormatter];
  v9 = [v4 samplesEndDate];

  v10 = [v8 stringFromDate:v9];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v7, v10];

  return v11;
}

- (void)didCompleteFetchForDataSource:(id)a3
{
  v4 = [(HKHistogramChartViewController *)self displayType];
  v5 = [v4 localization];
  v21 = [v5 displayName];

  v6 = [(HKHistogramChartViewController *)self dataSource];
  v7 = [(HKHistogramChartViewController *)self _displayDescriptionForDataSource:v6];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Histogram\n%@", v21, v7];
  v9 = [(HKHistogramChartViewController *)self headerLabel];
  [v9 setText:v8];

  v10 = [(HKHistogramChartViewController *)self dataSource];
  v11 = [v10 numberOfBins];
  v12 = [(HKHistogramChartViewController *)self histogramSeries];
  [v12 setNumberOfColumns:v11];

  v13 = [(HKHistogramChartViewController *)self graphViewController];
  v14 = [v13 graphView];
  v15 = [v14 xAxis];
  v16 = [v15 valueForKeyPath:@"axisLabelCache"];
  [v16 performSelector:sel_invalidateCache];

  v17 = [(HKHistogramChartViewController *)self dataSource];
  v18 = [v17 xAxisRange];

  v19 = [(HKHistogramChartViewController *)self graphViewController];
  v20 = [v19 graphView];
  [v20 setEffectiveAxisRange:v18 effectiveVisibleRangeCadence:v18 effectiveVisibleRangeActive:v18];
}

- (void)updateAnnotationDataSource:(id)a3 pointContexts:(id)a4
{
  v5 = a4;
  v6 = [(HKHistogramChartViewController *)self annotationViewDataSource];
  [v6 updateWithPointSelectionContexts:v5];
}

- (id)graphView:(id)a3 graphSeriesForZoom:(int64_t)a4 stackOffset:(int64_t)a5
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = [(HKHistogramChartViewController *)self histogramSeries:a3];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

- (id)seriesSelectionLineColorForGraphView:(id)a3
{
  v3 = [(HKHistogramChartViewController *)self displayType];
  v4 = [v3 color];

  return v4;
}

- (void)graphView:(id)a3 didUpdateSelectedPoint:(id)a4
{
  v17 = a4;
  if ([HKLollipopController pointSelectionContextsHaveUserInfo:?])
  {
    v5 = [(HKHistogramChartViewController *)self lollipopController];
    v6 = [v5 isVisible];

    if (v6)
    {
      v7 = [(HKHistogramChartViewController *)self lollipopController];
      [v7 updateWithPointContexts:v17];
    }

    else
    {
      v8 = [(HKHistogramChartViewController *)self headerLabel];
      [v8 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v7 = [(HKHistogramChartViewController *)self lollipopController];
      [v7 setVisibleWithRect:v17 pointContexts:1 animated:{v10, v12, v14, v16}];
    }
  }
}

- (void)graphViewDidEndSelection:(id)a3
{
  v3 = [(HKHistogramChartViewController *)self lollipopController];
  [v3 setInvisibleAnimated:1];
}

@end