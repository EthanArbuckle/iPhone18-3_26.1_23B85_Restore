@interface HKHistogramChartViewController
+ (id)defaultVerticalAxis;
- (CGSize)_barCornerRadiusForCurrentDevice;
- (HKHistogramBarSeries)histogramSeries;
- (HKHistogramChartViewController)initWithHealthStore:(id)store dataSource:(id)source dataFormatter:(id)formatter minimumGraphViewHeight:(double)height;
- (HKScalarGraphViewController)graphViewController;
- (id)_descriptionDateFormatter;
- (id)_displayDescriptionForDataSource:(id)source;
- (id)graphView:(id)view graphSeriesForZoom:(int64_t)zoom stackOffset:(int64_t)offset;
- (id)seriesSelectionLineColorForGraphView:(id)view;
- (void)_pinView:(id)view toParentView:(id)parentView;
- (void)didCompleteFetchForDataSource:(id)source;
- (void)graphView:(id)view didUpdateSelectedPoint:(id)point;
- (void)graphViewDidEndSelection:(id)selection;
- (void)updateAnnotationDataSource:(id)source pointContexts:(id)contexts;
- (void)viewDidLoad;
@end

@implementation HKHistogramChartViewController

- (HKHistogramChartViewController)initWithHealthStore:(id)store dataSource:(id)source dataFormatter:(id)formatter minimumGraphViewHeight:(double)height
{
  storeCopy = store;
  sourceCopy = source;
  formatterCopy = formatter;
  v20.receiver = self;
  v20.super_class = HKHistogramChartViewController;
  v14 = [(HKHistogramChartViewController *)&v20 init];
  if (v14)
  {
    v15 = [HKDisplayTypeController sharedInstanceForHealthStore:storeCopy];
    quantityType = [sourceCopy quantityType];
    v17 = [v15 displayTypeForObjectType:quantityType];
    displayType = v14->_displayType;
    v14->_displayType = v17;

    objc_storeStrong(&v14->_healthStore, store);
    v14->_minimumGraphViewHeight = height;
    objc_storeStrong(&v14->_dataSource, source);
    [(HKHistogramChartDataSource *)v14->_dataSource setFetchObserver:v14];
    objc_storeStrong(&v14->_dataFormatter, formatter);
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

  headerLabel = [(HKHistogramChartViewController *)self headerLabel];
  [headerLabel setNumberOfLines:0];

  headerLabel2 = [(HKHistogramChartViewController *)self headerLabel];
  [v4 addArrangedSubview:headerLabel2];

  graphViewController = [(HKHistogramChartViewController *)self graphViewController];
  [(HKHistogramChartViewController *)self addChildViewController:graphViewController];

  graphViewController2 = [(HKHistogramChartViewController *)self graphViewController];
  [graphViewController2 didMoveToParentViewController:self];

  graphViewController3 = [(HKHistogramChartViewController *)self graphViewController];
  view = [graphViewController3 view];
  [v4 addArrangedSubview:view];

  view2 = [(HKHistogramChartViewController *)self view];
  [view2 addSubview:v4];

  view3 = [(HKHistogramChartViewController *)self view];
  [(HKHistogramChartViewController *)self _pinView:v4 toParentView:view3];

  dataFormatter = [(HKHistogramChartViewController *)self dataFormatter];
  v16 = [[HKHistogramAnnotationViewDataSource alloc] initWithFormatter:dataFormatter];
  [(HKHistogramChartViewController *)self setAnnotationViewDataSource:v16];

  v17 = [HKLollipopController alloc];
  annotationViewDataSource = [(HKHistogramChartViewController *)self annotationViewDataSource];
  view4 = [(HKHistogramChartViewController *)self view];
  v20 = [(HKLollipopController *)v17 initWithAnnotationDataSource:annotationViewDataSource parentView:view4 delegate:self];
  [(HKHistogramChartViewController *)self setLollipopController:v20];
}

- (HKScalarGraphViewController)graphViewController
{
  graphViewController = self->_graphViewController;
  if (!graphViewController)
  {
    v4 = objc_alloc_init(HKHistogramAxisDimension);
    dataSource = [(HKHistogramChartViewController *)self dataSource];
    [(HKHistogramAxisDimension *)v4 setDataSource:dataSource];

    v6 = [HKScalarGraphViewController alloc];
    [(HKHistogramChartViewController *)self minimumGraphViewHeight];
    v7 = [(HKScalarGraphViewController *)v6 initWithMinimumHeight:v4 labelDimension:3 labelEndings:0 numericAxisConfigurationOverrides:?];
    v8 = self->_graphViewController;
    self->_graphViewController = v7;

    graphView = [(HKGraphViewController *)self->_graphViewController graphView];
    [graphView setDelegate:self];

    graphView2 = [(HKGraphViewController *)self->_graphViewController graphView];
    [graphView2 setMultiSeriesSelection:1];

    graphView3 = [(HKGraphViewController *)self->_graphViewController graphView];
    [graphView3 setDisableSelection:0];

    v12 = *MEMORY[0x1E69DDCE0];
    v13 = *(MEMORY[0x1E69DDCE0] + 8);
    v14 = *(MEMORY[0x1E69DDCE0] + 16);
    v15 = *(MEMORY[0x1E69DDCE0] + 24);
    graphView4 = [(HKGraphViewController *)self->_graphViewController graphView];
    [graphView4 setAxisInset:{v12, v13, v14, v15}];

    graphView5 = [(HKGraphViewController *)self->_graphViewController graphView];
    xAxis = [graphView5 xAxis];
    preferredStyle = [xAxis preferredStyle];
    labelStyle = [preferredStyle labelStyle];
    [labelStyle setVerticalAlignment:2];

    graphViewController = self->_graphViewController;
  }

  return graphViewController;
}

- (CGSize)_barCornerRadiusForCurrentDevice
{
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  if ([mEMORY[0x1E696C608] isiPad])
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
    displayType = [(HKHistogramChartViewController *)self displayType];
    displayCategory = [displayType displayCategory];
    fillStyle = [displayCategory fillStyle];
    dataSource = [(HKHistogramChartViewController *)self dataSource];
    numberOfBins = [dataSource numberOfBins];
    [(HKHistogramChartViewController *)self _barCornerRadiusForCurrentDevice];
    v10 = [(HKHistogramBarSeries *)v4 initWithFillStyle:fillStyle numberOfColumns:numberOfBins cornerRadii:?];
    v11 = self->_histogramSeries;
    self->_histogramSeries = v10;

    v12 = self->_histogramSeries;
    defaultVerticalAxis = [objc_opt_class() defaultVerticalAxis];
    [(HKGraphSeries *)v12 setYAxis:defaultVerticalAxis];

    dataSource2 = [(HKHistogramChartViewController *)self dataSource];
    yAxisRange = [dataSource2 yAxisRange];

    if (yAxisRange)
    {
      v16 = [HKNumericFixedAxisScalingRule ruleWithDefaultAxisBounds:yAxisRange axisBoundsOverrides:0];
      [(HKGraphSeries *)self->_histogramSeries setAxisScalingRule:v16];
    }

    dataSource3 = [(HKHistogramChartViewController *)self dataSource];
    [(HKGraphSeries *)self->_histogramSeries setDataSource:dataSource3];

    histogramSeries = self->_histogramSeries;
  }

  return histogramSeries;
}

+ (id)defaultVerticalAxis
{
  v2 = objc_alloc_init(HKSolidFillStyle);
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKSolidFillStyle *)v2 setColor:systemBackgroundColor];

  v4 = objc_alloc_init(HKAxisStyle);
  grayColor = [MEMORY[0x1E69DC888] grayColor];
  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  v7 = [HKAxisLabelStyle labelStyleWithColor:grayColor font:v6 horizontalAlignment:2 verticalAlignment:2];
  [(HKAxisStyle *)v4 setLabelStyle:v7];

  [(HKAxisStyle *)v4 setTickPositions:1];
  grayColor2 = [MEMORY[0x1E69DC888] grayColor];
  v9 = [HKStrokeStyle strokeStyleWithColor:grayColor2 lineWidth:2.0];
  [(HKAxisStyle *)v4 setAxisLineStyle:v9];

  [(HKAxisStyle *)v4 setFillStyle:v2];
  [(HKAxisStyle *)v4 setFillInnerPadding:4.0];
  [(HKAxisStyle *)v4 setFillOuterPadding:4.0];
  [(HKAxisStyle *)v4 setLocation:1];
  [(HKAxisStyle *)v4 setShowGridLines:1];
  grayColor3 = [MEMORY[0x1E69DC888] grayColor];
  v11 = [grayColor3 colorWithAlphaComponent:0.5];
  v12 = [HKStrokeStyle strokeStyleWithColor:v11 lineWidth:HKUIOnePixel()];
  [(HKAxisStyle *)v4 setGridLineStyle:v12];

  grayColor4 = [MEMORY[0x1E69DC888] grayColor];
  v14 = [HKStrokeStyle strokeStyleWithColor:grayColor4 lineWidth:HKUIOnePixel() * 0.5];
  [(HKAxisStyle *)v4 setBorderStyleForFill:v14];

  v15 = objc_alloc_init(HKNumericAxisConfiguration);
  [(HKAxisConfiguration *)v15 setPreferredStyle:v4];
  v16 = [[HKNumericAxis alloc] initWithConfiguration:v15];

  return v16;
}

- (void)_pinView:(id)view toParentView:(id)parentView
{
  parentViewCopy = parentView;
  viewCopy = view;
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [parentViewCopy leadingAnchor];
  v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v9 setActive:1];

  trailingAnchor = [viewCopy trailingAnchor];
  trailingAnchor2 = [parentViewCopy trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v12 setActive:1];

  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [parentViewCopy topAnchor];
  v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v15 setActive:1];

  bottomAnchor = [viewCopy bottomAnchor];

  bottomAnchor2 = [parentViewCopy bottomAnchor];

  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

- (id)_displayDescriptionForDataSource:(id)source
{
  sourceCopy = source;
  _descriptionDateFormatter = [(HKHistogramChartViewController *)self _descriptionDateFormatter];
  samplesStartDate = [sourceCopy samplesStartDate];
  v7 = [_descriptionDateFormatter stringFromDate:samplesStartDate];

  _descriptionDateFormatter2 = [(HKHistogramChartViewController *)self _descriptionDateFormatter];
  samplesEndDate = [sourceCopy samplesEndDate];

  v10 = [_descriptionDateFormatter2 stringFromDate:samplesEndDate];

  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v7, v10];

  return v11;
}

- (void)didCompleteFetchForDataSource:(id)source
{
  displayType = [(HKHistogramChartViewController *)self displayType];
  localization = [displayType localization];
  displayName = [localization displayName];

  dataSource = [(HKHistogramChartViewController *)self dataSource];
  v7 = [(HKHistogramChartViewController *)self _displayDescriptionForDataSource:dataSource];

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Histogram\n%@", displayName, v7];
  headerLabel = [(HKHistogramChartViewController *)self headerLabel];
  [headerLabel setText:v8];

  dataSource2 = [(HKHistogramChartViewController *)self dataSource];
  numberOfBins = [dataSource2 numberOfBins];
  histogramSeries = [(HKHistogramChartViewController *)self histogramSeries];
  [histogramSeries setNumberOfColumns:numberOfBins];

  graphViewController = [(HKHistogramChartViewController *)self graphViewController];
  graphView = [graphViewController graphView];
  xAxis = [graphView xAxis];
  v16 = [xAxis valueForKeyPath:@"axisLabelCache"];
  [v16 performSelector:sel_invalidateCache];

  dataSource3 = [(HKHistogramChartViewController *)self dataSource];
  xAxisRange = [dataSource3 xAxisRange];

  graphViewController2 = [(HKHistogramChartViewController *)self graphViewController];
  graphView2 = [graphViewController2 graphView];
  [graphView2 setEffectiveAxisRange:xAxisRange effectiveVisibleRangeCadence:xAxisRange effectiveVisibleRangeActive:xAxisRange];
}

- (void)updateAnnotationDataSource:(id)source pointContexts:(id)contexts
{
  contextsCopy = contexts;
  annotationViewDataSource = [(HKHistogramChartViewController *)self annotationViewDataSource];
  [annotationViewDataSource updateWithPointSelectionContexts:contextsCopy];
}

- (id)graphView:(id)view graphSeriesForZoom:(int64_t)zoom stackOffset:(int64_t)offset
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = [(HKHistogramChartViewController *)self histogramSeries:view];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

- (id)seriesSelectionLineColorForGraphView:(id)view
{
  displayType = [(HKHistogramChartViewController *)self displayType];
  color = [displayType color];

  return color;
}

- (void)graphView:(id)view didUpdateSelectedPoint:(id)point
{
  pointCopy = point;
  if ([HKLollipopController pointSelectionContextsHaveUserInfo:?])
  {
    lollipopController = [(HKHistogramChartViewController *)self lollipopController];
    isVisible = [lollipopController isVisible];

    if (isVisible)
    {
      lollipopController2 = [(HKHistogramChartViewController *)self lollipopController];
      [lollipopController2 updateWithPointContexts:pointCopy];
    }

    else
    {
      headerLabel = [(HKHistogramChartViewController *)self headerLabel];
      [headerLabel frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      lollipopController2 = [(HKHistogramChartViewController *)self lollipopController];
      [lollipopController2 setVisibleWithRect:pointCopy pointContexts:1 animated:{v10, v12, v14, v16}];
    }
  }
}

- (void)graphViewDidEndSelection:(id)selection
{
  lollipopController = [(HKHistogramChartViewController *)self lollipopController];
  [lollipopController setInvisibleAnimated:1];
}

@end