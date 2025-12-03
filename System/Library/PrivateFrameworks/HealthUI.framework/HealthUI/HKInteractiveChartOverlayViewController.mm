@interface HKInteractiveChartOverlayViewController
- (BOOL)_deliverCachedDataFromSource:(id)source graphSeriesContext:(id)context timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate completion:(id)completion;
- (HKInteractiveChartOverlayViewController)initWithHealthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)rangeController initialXValue:(id)self0 currentCalendarOverride:(id)self1 options:(unint64_t)self2;
- (HKInteractiveChartOverlayViewController)initWithStackedDisplayTypes:(id)types primaryDisplayTypeStackIndex:(id)index stackedDisplayTypeHeights:(id)heights healthStore:(id)store unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)self0 sampleTypeDateRangeController:(id)self1 initialXValue:(id)self2 currentCalendarOverride:(id)self3 options:(unint64_t)self4 timeScopeRanges:(id)self5;
- (HKInteractiveChartOverlayViewController)initWithTimeScopeRanges:(id)ranges healthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)self0 initialXValue:(id)self1 currentCalendarOverride:(id)self2 options:(unint64_t)self3;
- (double)minimumHeightForChart;
- (id)_dataSourceForDistributionStyle:(int64_t)style timeScope:(int64_t)scope namedPredicate:(id)predicate;
- (id)_dataSourceForNamedDataSource:(id)source templateDisplayType:(id)type;
- (id)_dataSourceForQuantityType:(id)type timeScope:(int64_t)scope customDataSource:(id)source;
- (id)_overlayChartCacheForDataSource:(id)source templateDisplayType:(id)type;
- (id)_overlayChartCacheForDistributionStyle:(int64_t)style timeScope:(int64_t)scope namedPredicate:(id)predicate;
- (id)displayTypeForGraphSeries:(id)series namedDataSource:(id)source templateDisplayType:(id)type timeScope:(int64_t)scope formatter:(id)formatter;
- (id)displayTypeForQuantityDistributionStyle:(int64_t)style timeScope:(int64_t)scope overlayColor:(id)color options:(int64_t)options alternateFormatter:(id)formatter namedPredicate:(id)predicate;
- (id)displayTypeForQuantityIdentifier:(id)identifier timeScope:(int64_t)scope displayTypeController:(id)controller overlayColor:(id)color cacheDataSource:(id)source alternateLineSeries:(id)series alternateFormatter:(id)formatter seriesOptions:(int64_t)self0;
- (id)visibleRangeForTimeScope:(int64_t)scope proposedRange:(id)range;
- (void)_commonInitializationWithDisplayType:(id)type;
- (void)_deliverOrWaitForDataSource:(id)source graphSeriesContext:(id)context priorityDelegate:(id)delegate timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate queryIfNeeded:(BOOL)self0 completion:(id)self1;
- (void)_modifyFormatter:(id)formatter forTitleOptions:(int64_t)options;
- (void)cachedDataForCustomGraphSeries:(id)series timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate completion:(id)completion;
- (void)cachedDataForCustomGraphSeries:(id)series timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate queryIfNeeded:(BOOL)needed completion:(id)completion;
- (void)cachedDataForQuantityDistributionStyle:(int64_t)style timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate namedPredicate:(id)predicate completion:(id)completion;
- (void)cachedDataForQuantityIdentifier:(id)identifier timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate cacheDataSource:(id)source completion:(id)completion;
- (void)cachedDataForStandardDisplayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate completion:(id)completion;
- (void)clearDisplayTypeStack;
- (void)clearOverlayDisplayTypeWithAutomaticAutoscale:(BOOL)autoscale;
- (void)configureDisplayTypes:(id)types timeScope:(int64_t)scope stackOffset:(int64_t)offset;
- (void)installOverlayDisplayType:(id)type;
- (void)installStackedDisplayType:(id)type;
- (void)unitPreferencesWillUpdate:(id)update;
@end

@implementation HKInteractiveChartOverlayViewController

- (HKInteractiveChartOverlayViewController)initWithHealthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)rangeController initialXValue:(id)self0 currentCalendarOverride:(id)self1 options:(unint64_t)self2
{
  v32[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v32[0] = typeCopy;
  v17 = MEMORY[0x1E695DEC8];
  overrideCopy = override;
  valueCopy = value;
  rangeControllerCopy = rangeController;
  scopeControllerCopy = scopeController;
  cacheControllerCopy = cacheController;
  cacheCopy = cache;
  controllerCopy = controller;
  storeCopy = store;
  v26 = [v17 arrayWithObjects:v32 count:1];
  v31.receiver = self;
  v31.super_class = HKInteractiveChartOverlayViewController;
  v27 = [(HKInteractiveChartViewController *)&v31 initWithDisplayTypes:v26 healthStore:storeCopy unitPreferenceController:controllerCopy dateCache:cacheCopy chartDataCacheController:cacheControllerCopy selectedTimeScopeController:scopeControllerCopy sampleTypeDateRangeController:rangeControllerCopy initialXValue:valueCopy currentCalendarOverride:overrideCopy options:options];

  if (v27)
  {
    [(HKInteractiveChartOverlayViewController *)v27 _commonInitializationWithDisplayType:typeCopy];
  }

  return v27;
}

- (HKInteractiveChartOverlayViewController)initWithTimeScopeRanges:(id)ranges healthStore:(id)store primaryDisplayType:(id)type unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)self0 initialXValue:(id)self1 currentCalendarOverride:(id)self2 options:(unint64_t)self3
{
  v37[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v36 = typeCopy;
  v18 = MEMORY[0x1E695DEC8];
  overrideCopy = override;
  valueCopy = value;
  rangeControllerCopy = rangeController;
  scopeControllerCopy = scopeController;
  cacheControllerCopy = cacheController;
  cacheCopy = cache;
  controllerCopy = controller;
  storeCopy = store;
  rangesCopy = ranges;
  v33 = [v18 arrayWithObjects:&v36 count:1];
  v37[0] = v33;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  v35.receiver = self;
  v35.super_class = HKInteractiveChartOverlayViewController;
  v23 = controllerCopy;
  v24 = [(HKInteractiveChartViewController *)&v35 initWithStackedDisplayTypes:v22 primaryDisplayTypeStackIndex:0 stackedDisplayTypeHeights:0 healthStore:storeCopy unitPreferenceController:controllerCopy dateCache:cacheCopy chartDataCacheController:cacheControllerCopy selectedTimeScopeController:scopeControllerCopy sampleTypeDateRangeController:rangeControllerCopy initialXValue:valueCopy currentCalendarOverride:overrideCopy options:options timeScopeRanges:rangesCopy];

  if (v24)
  {
    [(HKInteractiveChartOverlayViewController *)v24 _commonInitializationWithDisplayType:typeCopy];
  }

  return v24;
}

- (HKInteractiveChartOverlayViewController)initWithStackedDisplayTypes:(id)types primaryDisplayTypeStackIndex:(id)index stackedDisplayTypeHeights:(id)heights healthStore:(id)store unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)self0 sampleTypeDateRangeController:(id)self1 initialXValue:(id)self2 currentCalendarOverride:(id)self3 options:(unint64_t)self4 timeScopeRanges:(id)self5
{
  typesCopy = types;
  v26.receiver = self;
  v26.super_class = HKInteractiveChartOverlayViewController;
  v22 = [(HKInteractiveChartViewController *)&v26 initWithStackedDisplayTypes:typesCopy primaryDisplayTypeStackIndex:index stackedDisplayTypeHeights:heights healthStore:store unitPreferenceController:controller dateCache:cache chartDataCacheController:cacheController selectedTimeScopeController:scopeController sampleTypeDateRangeController:rangeController initialXValue:value currentCalendarOverride:override options:options timeScopeRanges:ranges];
  if (v22)
  {
    firstObject = [typesCopy firstObject];
    v23FirstObject = [firstObject firstObject];

    [(HKInteractiveChartOverlayViewController *)v22 _commonInitializationWithDisplayType:v23FirstObject];
  }

  return v22;
}

- (void)_commonInitializationWithDisplayType:(id)type
{
  objc_storeStrong(&self->_primaryDisplayType, type);
  typeCopy = type;
  overlayDisplayType = self->_overlayDisplayType;
  self->_overlayDisplayType = 0;

  currentOverlayColor = self->_currentOverlayColor;
  self->_currentOverlayColor = 0;

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  overlayChartCaches = self->_overlayChartCaches;
  self->_overlayChartCaches = v8;

  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  customNamedCaches = self->_customNamedCaches;
  self->_customNamedCaches = v10;

  v12 = [[_HKInteractiveChartOverlayWaitForCacheData alloc] initWithOverlayController:self];
  waitForCacheData = self->_waitForCacheData;
  self->_waitForCacheData = v12;

  initialVisibleDateRange = self->_initialVisibleDateRange;
  self->_initialVisibleDateRange = 0;

  [(HKInteractiveChartViewController *)self addChartViewObserver:self];
}

- (void)unitPreferencesWillUpdate:(id)update
{
  updateCopy = update;
  overlayChartCaches = [(HKInteractiveChartOverlayViewController *)self overlayChartCaches];
  [overlayChartCaches enumerateKeysAndObjectsUsingBlock:&__block_literal_global_27];

  customNamedCaches = [(HKInteractiveChartOverlayViewController *)self customNamedCaches];
  [customNamedCaches enumerateKeysAndObjectsUsingBlock:&__block_literal_global_299];

  v7.receiver = self;
  v7.super_class = HKInteractiveChartOverlayViewController;
  [(HKInteractiveChartViewController *)&v7 unitPreferencesWillUpdate:updateCopy];
}

- (void)installOverlayDisplayType:(id)type
{
  typeCopy = type;
  [(HKInteractiveChartOverlayViewController *)self clearOverlayDisplayTypeWithAutomaticAutoscale:typeCopy == 0];
  if (typeCopy)
  {
    objc_storeStrong(&self->_overlayDisplayType, type);
    overlayDisplayType = self->_overlayDisplayType;
    v7.receiver = self;
    v7.super_class = HKInteractiveChartOverlayViewController;
    [(HKInteractiveChartViewController *)&v7 addOverlayDisplayType:overlayDisplayType stackOffset:0];
  }
}

- (void)clearOverlayDisplayTypeWithAutomaticAutoscale:(BOOL)autoscale
{
  autoscaleCopy = autoscale;
  overlayDisplayType = self->_overlayDisplayType;
  if (overlayDisplayType)
  {
    v7.receiver = self;
    v7.super_class = HKInteractiveChartOverlayViewController;
    [(HKInteractiveChartViewController *)&v7 removeOverlayDisplayType:overlayDisplayType stackOffset:0 automaticAutoscale:autoscaleCopy];
    v6 = self->_overlayDisplayType;
    self->_overlayDisplayType = 0;
  }
}

- (void)installStackedDisplayType:(id)type
{
  v8[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  [(HKInteractiveChartOverlayViewController *)self clearDisplayTypeStack];
  if (typeCopy)
  {
    objc_storeStrong(&self->_stackedDisplayType, type);
    v8[0] = typeCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v7.receiver = self;
    v7.super_class = HKInteractiveChartOverlayViewController;
    [(HKInteractiveChartViewController *)&v7 addNewDisplayTypeStackWithDisplayTypes:v6];
  }
}

- (void)clearDisplayTypeStack
{
  stackedDisplayType = [(HKInteractiveChartOverlayViewController *)self stackedDisplayType];

  if (stackedDisplayType)
  {
    stackedDisplayType2 = [(HKInteractiveChartOverlayViewController *)self stackedDisplayType];
    [(HKInteractiveChartViewController *)self removeStackedDisplayType:stackedDisplayType2];

    stackedDisplayType = self->_stackedDisplayType;
    self->_stackedDisplayType = 0;
  }
}

- (id)displayTypeForQuantityDistributionStyle:(int64_t)style timeScope:(int64_t)scope overlayColor:(id)color options:(int64_t)options alternateFormatter:(id)formatter namedPredicate:(id)predicate
{
  formatterCopy = formatter;
  predicateCopy = predicate;
  colorCopy = color;
  primaryDisplayType = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
  v18 = [(HKInteractiveChartViewController *)self graphSeriesForDisplayType:primaryDisplayType timeScope:scope stackOffset:0];

  if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v19 = v18;
  }

  else
  {
    _HKInitializeLogging();
    v20 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [HKInteractiveChartOverlayViewController displayTypeForQuantityDistributionStyle:v20 timeScope:? overlayColor:? options:? alternateFormatter:? namedPredicate:?];
    }

    v19 = 0;
  }

  v44 = predicateCopy;
  v21 = [(HKInteractiveChartOverlayViewController *)self _dataSourceForDistributionStyle:style timeScope:scope namedPredicate:predicateCopy];
  v22 = objc_alloc_init(HKQuantityDistributionSeries);
  unselectedStrokeStyle = [v19 unselectedStrokeStyle];
  [(HKQuantityDistributionSeries *)v22 setUnselectedStrokeStyle:unselectedStrokeStyle];

  unselectedStrokeStyle2 = [(HKQuantityDistributionSeries *)v22 unselectedStrokeStyle];
  [unselectedStrokeStyle2 setStrokeColor:colorCopy];

  inactiveStrokeStyle = [v19 inactiveStrokeStyle];
  [(HKQuantityDistributionSeries *)v22 setInactiveStrokeStyle:inactiveStrokeStyle];

  selectedStrokeStyle = [v19 selectedStrokeStyle];
  [(HKQuantityDistributionSeries *)v22 setSelectedStrokeStyle:selectedStrokeStyle];

  selectedStrokeStyle2 = [(HKQuantityDistributionSeries *)v22 selectedStrokeStyle];
  [selectedStrokeStyle2 setStrokeColor:colorCopy];

  minMaxLabelStyle = [v19 minMaxLabelStyle];
  [(HKQuantityDistributionSeries *)v22 setMinMaxLabelStyle:minMaxLabelStyle];

  minMaxLabelStyle2 = [(HKQuantityDistributionSeries *)v22 minMaxLabelStyle];
  [minMaxLabelStyle2 setTextColor:colorCopy];

  minMaxValueStyle = [v19 minMaxValueStyle];
  [(HKQuantityDistributionSeries *)v22 setMinMaxValueStyle:minMaxValueStyle];

  minMaxValueStyle2 = [(HKQuantityDistributionSeries *)v22 minMaxValueStyle];
  [minMaxValueStyle2 setTextColor:colorCopy];

  minMaxPointStyle = [v19 minMaxPointStyle];
  [(HKQuantityDistributionSeries *)v22 setMinMaxPointStyle:minMaxPointStyle];

  minMaxPointStyle2 = [(HKQuantityDistributionSeries *)v22 minMaxPointStyle];
  [minMaxPointStyle2 setStrokeColor:colorCopy];

  yAxis = [v19 yAxis];
  [(HKGraphSeries *)v22 setYAxis:yAxis];

  axisScalingRule = [v19 axisScalingRule];
  [(HKGraphSeries *)v22 setAxisScalingRule:axisScalingRule];

  -[HKQuantityDistributionSeries setZeroCountForGap:](v22, "setZeroCountForGap:", [v19 zeroCountForGap]);
  if ((options & 2) != 0)
  {
    [(HKQuantityDistributionSeries *)v22 setExcludeDistribution:1];
  }

  [(HKGraphSeries *)v22 setDataSource:v21];
  if (formatterCopy)
  {
    v36 = formatterCopy;
  }

  else
  {
    primaryDisplayType2 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
    v36 = [primaryDisplayType2 hk_interactiveChartsFormatterForTimeScope:scope];
  }

  [(HKInteractiveChartOverlayViewController *)self _modifyFormatter:v36 forTitleOptions:options];
  v38 = [HKInteractiveChartDisplayType alloc];
  primaryDisplayType3 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
  primaryDisplayType4 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
  objectType = [primaryDisplayType4 objectType];
  v42 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v38, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v22, primaryDisplayType3, v36, [objectType code]);

  return v42;
}

- (void)_modifyFormatter:(id)formatter forTitleOptions:(int64_t)options
{
  optionsCopy = options;
  formatterCopy = formatter;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = formatterCopy;
  if (isKindOfClass)
  {
    v7 = formatterCopy;
    v8 = v7;
    if ((optionsCopy & 0x20) != 0)
    {
      v9 = &unk_1F4381210;
    }

    else if ((optionsCopy & 0x40) != 0)
    {
      v9 = &unk_1F4381228;
    }

    else
    {
      if ((optionsCopy & 0x80) == 0)
      {
LABEL_9:

        v6 = formatterCopy;
        goto LABEL_10;
      }

      v9 = &unk_1F4381240;
    }

    [v7 setOverrideStatFormatterItemOptions:v9];
    goto LABEL_9;
  }

LABEL_10:

  MEMORY[0x1EEE66BB8](isKindOfClass, v6);
}

- (id)displayTypeForQuantityIdentifier:(id)identifier timeScope:(int64_t)scope displayTypeController:(id)controller overlayColor:(id)color cacheDataSource:(id)source alternateLineSeries:(id)series alternateFormatter:(id)formatter seriesOptions:(int64_t)self0
{
  v105[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  seriesCopy = series;
  formatterCopy = formatter;
  v18 = MEMORY[0x1E696C2E0];
  sourceCopy = source;
  controllerCopy = controller;
  identifierCopy = identifier;
  v88 = [v18 quantityTypeForIdentifier:?];
  v20 = [controllerCopy displayTypeForObjectType:?];

  chartingRules = [v20 chartingRules];
  primaryDisplayType = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
  selfCopy = self;
  scopeCopy = scope;
  v99 = [(HKInteractiveChartViewController *)self graphSeriesForDisplayType:primaryDisplayType timeScope:scope stackOffset:0];

  v22 = seriesCopy;
  v93 = v22;
  if (!v22)
  {
    v22 = objc_alloc_init(HKLineSeries);
  }

  v23 = [HKGradientFillStyle alloc];
  v24 = [colorCopy colorWithAlphaComponent:0.3];
  v25 = [colorCopy colorWithAlphaComponent:0.0];
  v98 = [(HKGradientFillStyle *)v23 initWithFirstColor:v24 secondColor:v25];

  v26 = [HKGradientFillStyle alloc];
  hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_vitalsKeyColor];
  v28 = [hk_vitalsKeyColor colorWithAlphaComponent:0.3];
  hk_vitalsKeyColor2 = [MEMORY[0x1E69DC888] hk_vitalsKeyColor];
  v30 = [hk_vitalsKeyColor2 colorWithAlphaComponent:0.0];
  v97 = [(HKGradientFillStyle *)v26 initWithFirstColor:v28 secondColor:v30];

  v31 = objc_alloc_init(HKLineSeriesPresentationStyle);
  v89 = [HKStrokeStyle strokeStyleWithColor:colorCopy lineWidth:2.0];
  [(HKLineSeriesPresentationStyle *)v31 setStrokeStyle:?];
  v101 = v31;
  [(HKLineSeriesPresentationStyle *)v31 setWaveForm:0];
  v32 = chartingRules;
  if (options)
  {
    v33 = [MEMORY[0x1E69DB878] hk_roundedSystemFontWithSize:18.0 weight:*MEMORY[0x1E69DB970]];
    if ([chartingRules shouldDisplayUnitForAxisLabels])
    {
      v34 = [HKDisplayTypeNumberFormatter alloc];
      unitPreferenceController = [(HKInteractiveChartViewController *)selfCopy unitPreferenceController];
      v36 = [(HKDisplayTypeNumberFormatter *)v34 initWithDisplayType:v20 unitController:unitPreferenceController];
    }

    else
    {
      unitPreferenceController2 = [(HKInteractiveChartViewController *)selfCopy unitPreferenceController];
      unitPreferenceController = [unitPreferenceController2 unitForDisplayType:v20];

      v36 = [v20 hk_numberFormatterForUnit:unitPreferenceController];
    }

    v38 = v36;

    v39 = [HKAxisLabelStyle labelStyleWithColor:colorCopy font:v33 horizontalAlignment:0 verticalAlignment:2 numberFormatter:v38];
    [(HKLineSeriesPresentationStyle *)v101 setAnnotationStyle:v39];
  }

  v40 = objc_alloc_init(HKLineSeriesPresentationStyle);
  v41 = [HKStrokeStyle strokeStyleWithColor:colorCopy lineWidth:2.0];
  [(HKLineSeriesPresentationStyle *)v40 setStrokeStyle:v41];

  [(HKLineSeriesPresentationStyle *)v40 setFillStyle:v98];
  [(HKLineSeriesPresentationStyle *)v40 setWaveForm:0];
  v42 = objc_alloc_init(HKLineSeriesPresentationStyle);
  v43 = HKHealthKeyColor();
  v44 = [HKStrokeStyle strokeStyleWithColor:v43 lineWidth:2.0];
  [(HKLineSeriesPresentationStyle *)v42 setStrokeStyle:v44];

  v45 = [HKLineSeriesPointMarkerStyle alloc];
  v46 = HKHealthKeyColor();
  v47 = [(HKLineSeriesPointMarkerStyle *)v45 initWithColor:v46 radius:0 style:4.0];

  v95 = v47;
  [(HKLineSeriesPresentationStyle *)v42 setPointMarkerStyle:v47];
  [(HKLineSeriesPresentationStyle *)v42 setFillStyle:v97];
  [(HKLineSeriesPresentationStyle *)v42 setWaveForm:0];
  selectedTimeScopeController = [(HKInteractiveChartViewController *)selfCopy selectedTimeScopeController];
  selectedTimeScope = [selectedTimeScopeController selectedTimeScope];

  v96 = v20;
  if (options)
  {
    v56 = 0;
  }

  else
  {
    v50 = (options >> 2) & 1;
    v51 = v50 | [chartingRules lineChartFlatLastValueForTimeScope:selectedTimeScope];
    [(HKLineSeries *)v22 setFlatLastValue:v51];
    v52 = colorCopy;
    v53 = [chartingRules lineChartExtendLastValueForTimeScope:selectedTimeScope];
    [(HKLineSeries *)v22 setExtendLastValue:v50 | v53];
    v54 = [chartingRules lineChartExtendFirstValueForTimeScope:selectedTimeScope];
    [(HKLineSeries *)v22 setExtendFirstValue:v50 | v54];
    v55 = v53 | v54;
    colorCopy = v52;
    v32 = chartingRules;
    v56 = v51 | v55;
  }

  v57 = [v32 lineChartUsesPointMarkerImageForTimeScope:selectedTimeScope];
  if ((v56 & 1) == 0 && v57)
  {
    v58 = 0.0;
    v59 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [objc_msgSend(v99 performSelector:{sel_unselectedStrokeStyle), "lineWidth"}];
      v59 = v60;
    }

    if (objc_opt_respondsToSelector())
    {
      [objc_msgSend(v99 performSelector:{sel_selectedStrokeStyle), "lineWidth"}];
      v58 = v61;
    }

    if (objc_opt_respondsToSelector())
    {
      [objc_msgSend(v99 performSelector:{sel_strokeStyle), "lineWidth"}];
      v58 = v62;
      v59 = v62;
    }

    v63 = [[HKLineSeriesPointMarkerStyle alloc] initWithColor:colorCopy radius:~(options >> 3) & 1 style:v59 * 0.5];
    v64 = [HKLineSeriesPointMarkerStyle alloc];
    HKHealthKeyColor();
    v66 = v65 = colorCopy;
    v67 = [(HKLineSeriesPointMarkerStyle *)v64 initWithColor:v66 radius:0 style:v58 * 0.5];

    colorCopy = v65;
    [(HKLineSeriesPresentationStyle *)v101 setPointMarkerStyle:v63];
    [(HKLineSeriesPresentationStyle *)v40 setPointMarkerStyle:v47];
    [(HKLineSeries *)v22 setSelectedPointMarkerStyle:v67];

    v32 = chartingRules;
  }

  v68 = [v32 lineChartUsesValueAxisAnnotationForTimeScope:selectedTimeScope];
  if ((options & 1) == 0 && (options >> 4) & 1 | v68)
  {
    v69 = colorCopy;
    v70 = [MEMORY[0x1E69DB878] hk_roundedSystemFontWithSize:18.0 weight:*MEMORY[0x1E69DB970]];
    if ([v32 shouldDisplayUnitForAxisLabels])
    {
      v71 = [HKDisplayTypeNumberFormatter alloc];
      unitPreferenceController3 = [(HKInteractiveChartViewController *)selfCopy unitPreferenceController];
      v73 = [(HKDisplayTypeNumberFormatter *)v71 initWithDisplayType:v96 unitController:unitPreferenceController3];
    }

    else
    {
      unitPreferenceController4 = [(HKInteractiveChartViewController *)selfCopy unitPreferenceController];
      unitPreferenceController3 = [unitPreferenceController4 unitForDisplayType:v96];

      v73 = [v96 hk_numberFormatterForUnit:unitPreferenceController3];
    }

    v75 = v73;

    colorCopy = v69;
    v76 = [HKAxisLabelStyle labelStyleWithColor:v69 font:v70 horizontalAlignment:0 verticalAlignment:2 numberFormatter:v75];
    [(HKLineSeriesPresentationStyle *)v101 setAxisAnnotationStyle:v76];
    [(HKLineSeriesPresentationStyle *)v40 setAxisAnnotationStyle:v76];
    [(HKLineSeriesPresentationStyle *)v42 setAxisAnnotationStyle:v76];
  }

  v105[0] = v101;
  v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:1];
  [(HKLineSeries *)v22 setUnhighlightedPresentationStyles:v77];

  v104 = v40;
  v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
  [(HKLineSeries *)v22 setHighlightedPresentationStyles:v78];

  v103 = v42;
  v79 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
  [(HKLineSeries *)v22 setSelectedPresentationStyles:v79];

  yAxis = [v99 yAxis];
  [(HKGraphSeries *)v22 setYAxis:yAxis];

  yAxis2 = [(HKGraphSeries *)v22 yAxis];
  [yAxis2 clearAnnotations];

  axisScalingRule = [v99 axisScalingRule];
  [(HKGraphSeries *)v22 setAxisScalingRule:axisScalingRule];

  v83 = [(HKInteractiveChartOverlayViewController *)selfCopy _dataSourceForQuantityType:identifierCopy timeScope:scopeCopy customDataSource:sourceCopy];

  [(HKGraphSeries *)v22 setDataSource:v83];
  if (formatterCopy)
  {
    v84 = formatterCopy;
    v85 = v96;
  }

  else
  {
    v85 = v96;
    v84 = [v96 hk_interactiveChartsFormatterForTimeScope:scopeCopy];
  }

  v86 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:]([HKInteractiveChartDisplayType alloc], "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v22, v85, v84, [v88 code]);

  return v86;
}

- (id)displayTypeForGraphSeries:(id)series namedDataSource:(id)source templateDisplayType:(id)type timeScope:(int64_t)scope formatter:(id)formatter
{
  formatterCopy = formatter;
  typeCopy = type;
  seriesCopy = series;
  v14 = [(HKInteractiveChartOverlayViewController *)self _dataSourceForNamedDataSource:source templateDisplayType:typeCopy];
  [seriesCopy setDataSource:v14];

  v15 = [HKInteractiveChartDisplayType alloc];
  sampleType = [typeCopy sampleType];
  v17 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v15, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", seriesCopy, typeCopy, formatterCopy, [sampleType code]);

  return v17;
}

- (void)cachedDataForQuantityDistributionStyle:(int64_t)style timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate namedPredicate:(id)predicate completion:(id)completion
{
  completionCopy = completion;
  endDateCopy = endDate;
  dateCopy = date;
  v20 = [(HKInteractiveChartOverlayViewController *)self _dataSourceForDistributionStyle:style timeScope:scope namedPredicate:predicate];
  LOBYTE(v19) = 1;
  [(HKInteractiveChartOverlayViewController *)self _deliverOrWaitForDataSource:v20 graphSeriesContext:0 priorityDelegate:0 timeScope:scope resolution:resolution startDate:dateCopy endDate:endDateCopy queryIfNeeded:v19 completion:completionCopy];
}

- (void)cachedDataForQuantityIdentifier:(id)identifier timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate cacheDataSource:(id)source completion:(id)completion
{
  completionCopy = completion;
  endDateCopy = endDate;
  dateCopy = date;
  v20 = [(HKInteractiveChartOverlayViewController *)self _dataSourceForQuantityType:identifier timeScope:scope customDataSource:source];
  LOBYTE(v19) = 1;
  [(HKInteractiveChartOverlayViewController *)self _deliverOrWaitForDataSource:v20 graphSeriesContext:0 priorityDelegate:0 timeScope:scope resolution:resolution startDate:dateCopy endDate:endDateCopy queryIfNeeded:v19 completion:completionCopy];
}

- (void)cachedDataForCustomGraphSeries:(id)series timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate completion:(id)completion
{
  completionCopy = completion;
  endDateCopy = endDate;
  dateCopy = date;
  seriesCopy = series;
  dataSource = [seriesCopy dataSource];
  seriesDataSourceContext = [seriesCopy seriesDataSourceContext];
  LOBYTE(v19) = 1;
  [(HKInteractiveChartOverlayViewController *)self _deliverOrWaitForDataSource:dataSource graphSeriesContext:seriesDataSourceContext priorityDelegate:seriesCopy timeScope:scope resolution:resolution startDate:dateCopy endDate:endDateCopy queryIfNeeded:v19 completion:completionCopy];
}

- (void)cachedDataForCustomGraphSeries:(id)series timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate queryIfNeeded:(BOOL)needed completion:(id)completion
{
  completionCopy = completion;
  endDateCopy = endDate;
  dateCopy = date;
  seriesCopy = series;
  dataSource = [seriesCopy dataSource];
  seriesDataSourceContext = [seriesCopy seriesDataSourceContext];
  LOBYTE(v21) = needed;
  [(HKInteractiveChartOverlayViewController *)self _deliverOrWaitForDataSource:dataSource graphSeriesContext:seriesDataSourceContext priorityDelegate:seriesCopy timeScope:scope resolution:resolution startDate:dateCopy endDate:endDateCopy queryIfNeeded:v21 completion:completionCopy];
}

- (void)cachedDataForStandardDisplayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate completion:(id)completion
{
  completionCopy = completion;
  endDateCopy = endDate;
  dateCopy = date;
  typeCopy = type;
  chartDataCacheController = [(HKInteractiveChartViewController *)self chartDataCacheController];
  v21 = [chartDataCacheController interactiveChartsCacheForDisplayType:typeCopy timeScope:scope];

  v19 = objc_alloc_init(HKCacheBackedChartSeriesDataSource);
  [(HKCacheBackedChartSeriesDataSource *)v19 setChartCache:v21];
  LOBYTE(v20) = 1;
  [(HKInteractiveChartOverlayViewController *)self _deliverOrWaitForDataSource:v19 graphSeriesContext:0 priorityDelegate:0 timeScope:scope resolution:resolution startDate:dateCopy endDate:endDateCopy queryIfNeeded:v20 completion:completionCopy];
}

- (void)_deliverOrWaitForDataSource:(id)source graphSeriesContext:(id)context priorityDelegate:(id)delegate timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate queryIfNeeded:(BOOL)self0 completion:(id)self1
{
  sourceCopy = source;
  contextCopy = context;
  delegateCopy = delegate;
  dateCopy = date;
  endDateCopy = endDate;
  completionCopy = completion;
  v22 = [(HKInteractiveChartOverlayViewController *)self _deliverCachedDataFromSource:sourceCopy graphSeriesContext:contextCopy timeScope:scope resolution:resolution startDate:dateCopy endDate:endDateCopy completion:completionCopy];
  if (v22 || !needed)
  {
    if (!v22 && !needed)
    {
      (*(completionCopy + 2))(completionCopy, MEMORY[0x1E695E0F0], 1, 0);
    }
  }

  else
  {
    waitForCacheData = [(HKInteractiveChartOverlayViewController *)self waitForCacheData];
    [waitForCacheData addWaitForDataSource:sourceCopy graphSeriesContext:contextCopy timeScope:scope resolution:resolution startDate:dateCopy endDate:endDateCopy priorityDelegate:delegateCopy completion:completionCopy];
  }
}

- (double)minimumHeightForChart
{
  v8.receiver = self;
  v8.super_class = HKInteractiveChartOverlayViewController;
  [(HKInteractiveChartViewController *)&v8 minimumHeightForChart];
  v3 = v2;
  if ([MEMORY[0x1E69DCEB0] hk_currentDeviceHas4InchScreen])
  {
    v4 = [MEMORY[0x1E69DCEB0] hk_currentDeviceHasDisplayZoomedEnabled] == 0;
    v5 = 280.0;
    v6 = 225.0;
  }

  else
  {
    if (![MEMORY[0x1E69DCEB0] hk_currentDeviceHas4Point7InchScreen])
    {
      return v3;
    }

    v4 = [MEMORY[0x1E69DCEB0] hk_currentDeviceHasDisplayZoomedEnabled] == 0;
    v5 = 390.0;
    v6 = 335.0;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

- (id)visibleRangeForTimeScope:(int64_t)scope proposedRange:(id)range
{
  rangeCopy = range;
  initialVisibleDateRange = [(HKInteractiveChartOverlayViewController *)self initialVisibleDateRange];

  initialVisibleDateRange2 = rangeCopy;
  if (initialVisibleDateRange)
  {
    initialVisibleDateRange2 = [(HKInteractiveChartOverlayViewController *)self initialVisibleDateRange];

    [(HKInteractiveChartOverlayViewController *)self setInitialVisibleDateRange:0];
  }

  return initialVisibleDateRange2;
}

- (void)configureDisplayTypes:(id)types timeScope:(int64_t)scope stackOffset:(int64_t)offset
{
  v30 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  if ([typesCopy count] == 1)
  {
    v9 = [typesCopy objectAtIndexedSubscript:0];
    v10 = [(HKInteractiveChartViewController *)self graphSeriesForDisplayType:v9 timeScope:scope stackOffset:offset];

    [v10 setAllowsSelection:1];
  }

  else
  {
    v11 = [(HKInteractiveChartViewController *)self graphSeriesForDisplayType:self->_overlayDisplayType timeScope:scope stackOffset:offset];
    v22 = v11;
    if (v11)
    {
      v24 = [v11 allowsSelection] ^ 1;
    }

    else
    {
      v24 = 0;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = typesCopy;
    v12 = typesCopy;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          v18 = [(HKInteractiveChartViewController *)self graphSeriesForDisplayType:v17 timeScope:scope stackOffset:offset];
          v19 = v18;
          if (v17 != self->_overlayDisplayType)
          {
            [v18 setAllowsSelection:v24];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
    graphView = [primaryGraphViewController graphView];

    if (v24)
    {
      [graphView setMoveSelectedSeriesToFront:0];
    }

    typesCopy = v23;
  }
}

- (id)_overlayChartCacheForDistributionStyle:(int64_t)style timeScope:(int64_t)scope namedPredicate:(id)predicate
{
  predicateCopy = predicate;
  v10 = predicateCopy;
  if (predicateCopy)
  {
    localizedNameKey = [predicateCopy localizedNameKey];
  }

  else
  {
    localizedNameKey = &stru_1F42FFBE0;
  }

  v12 = [[_HKInteractiveChartDistributionStyleKey alloc] initWithDistributionStyle:style timeScope:scope predicateName:localizedNameKey];
  overlayChartCaches = [(HKInteractiveChartOverlayViewController *)self overlayChartCaches];
  v14 = [overlayChartCaches objectForKey:v12];

  if (!v14)
  {
    v38 = localizedNameKey;
    primaryDisplayType = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
    primaryDisplayType2 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
    objectType = [primaryDisplayType2 objectType];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKInteractiveChartOverlayViewController _overlayChartCacheForDistributionStyle:a2 timeScope:self namedPredicate:objectType];
    }

    v18 = objectType;
    v36 = v18;
    primaryDisplayType3 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
    v20 = [(HKInteractiveChartOverlayViewController *)self _displayTypeRequiresAverageAndDuration:primaryDisplayType3];

    v21 = v20;
    if ([primaryDisplayType contextItemShouldDisplayEventCountForDistributionStyle:style])
    {
      v21 = v20 | 2;
    }

    identifier = [v18 identifier];
    v37 = primaryDisplayType;
    v23 = *MEMORY[0x1E696BD08];

    if (identifier == v23)
    {
      v24 = v21 | 4;
    }

    else
    {
      v24 = v21;
    }

    v25 = [HKQuantityDistributionDataSource alloc];
    unitPreferenceController = [(HKInteractiveChartViewController *)self unitPreferenceController];
    healthStore = [(HKInteractiveChartViewController *)self healthStore];
    predicate = [v10 predicate];
    primaryDisplayType4 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __107__HKInteractiveChartOverlayViewController__overlayChartCacheForDistributionStyle_timeScope_namedPredicate___block_invoke;
    v39[3] = &__block_descriptor_40_e48__24__0___HKQuantityDistributionData_8__HKUnit_16l;
    v39[4] = v24;
    v30 = [(HKQuantityDistributionDataSource *)v25 initWithQuantityType:v36 unitController:unitPreferenceController healthStore:healthStore contextStyle:style predicate:predicate options:v24 baseDisplayType:primaryDisplayType4 specificStartDate:0 specificEndDate:0 userInfoCreationBlock:v39];

    v14 = objc_alloc_init(HKChartCache);
    [(HKChartCache *)v14 setDataSource:v30];
    v31 = +[HKOutstandingFetchOperationManager sharedOperationManager];
    [(HKChartCache *)v14 setOperationManager:v31];

    overlayChartCaches2 = [(HKInteractiveChartOverlayViewController *)self overlayChartCaches];
    [overlayChartCaches2 setObject:v14 forKey:v12];

    chartDataCacheController = [(HKInteractiveChartViewController *)self chartDataCacheController];
    primaryDisplayType5 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
    [chartDataCacheController addCustomChartCache:v14 forDisplayType:primaryDisplayType5];

    localizedNameKey = v38;
  }

  return v14;
}

HKInteractiveChartSinglePointEventIdentifierData *__107__HKInteractiveChartOverlayViewController__overlayChartCacheForDistributionStyle_timeScope_namedPredicate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    v9 = a3;
    v10 = a2;
    v6 = objc_alloc_init(HKInteractiveChartSinglePointEventIdentifierData);
    v11 = [v10 minimumValue];
    [v11 doubleValueForUnit:v9];
    [(HKInteractiveChartSinglePointData *)v6 setMinValue:?];

    v12 = [v10 maximumValue];
    [v12 doubleValueForUnit:v9];
    [(HKInteractiveChartSinglePointData *)v6 setMaxValue:?];

    [(HKInteractiveChartSinglePointData *)v6 setUnit:v9];
    [(HKInteractiveChartSinglePointData *)v6 setRepresentsRange:1];
    v13 = [v10 contextIdentifiers];

    [(HKInteractiveChartSinglePointEventIdentifierData *)v6 setIdentifiers:v13];
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = objc_alloc_init(HKInteractiveChartSinglePointData);
    v7 = [v5 minimumValue];
    [v7 doubleValueForUnit:v4];
    [(HKInteractiveChartSinglePointData *)v6 setMinValue:?];

    v8 = [v5 maximumValue];

    [v8 doubleValueForUnit:v4];
    [(HKInteractiveChartSinglePointData *)v6 setMaxValue:?];

    [(HKInteractiveChartSinglePointData *)v6 setUnit:v4];
    [(HKInteractiveChartSinglePointData *)v6 setRepresentsRange:1];
  }

  return v6;
}

- (id)_overlayChartCacheForDataSource:(id)source templateDisplayType:(id)type
{
  sourceCopy = source;
  typeCopy = type;
  customNamedCaches = [(HKInteractiveChartOverlayViewController *)self customNamedCaches];
  name = [sourceCopy name];
  v10 = [customNamedCaches objectForKey:name];

  if (!v10)
  {
    v10 = objc_alloc_init(HKChartCache);
    dataSource = [sourceCopy dataSource];
    [(HKChartCache *)v10 setDataSource:dataSource];

    v12 = +[HKOutstandingFetchOperationManager sharedOperationManager];
    [(HKChartCache *)v10 setOperationManager:v12];

    customNamedCaches2 = [(HKInteractiveChartOverlayViewController *)self customNamedCaches];
    name2 = [sourceCopy name];
    [customNamedCaches2 setObject:v10 forKey:name2];

    chartDataCacheController = [(HKInteractiveChartViewController *)self chartDataCacheController];
    [chartDataCacheController addCustomChartCache:v10 forDisplayType:typeCopy];
  }

  return v10;
}

- (id)_dataSourceForDistributionStyle:(int64_t)style timeScope:(int64_t)scope namedPredicate:(id)predicate
{
  v5 = [(HKInteractiveChartOverlayViewController *)self _overlayChartCacheForDistributionStyle:style timeScope:scope namedPredicate:predicate];
  v6 = objc_alloc_init(HKCacheBackedChartSeriesDataSource);
  [(HKCacheBackedChartSeriesDataSource *)v6 setChartCache:v5];

  return v6;
}

- (id)_dataSourceForQuantityType:(id)type timeScope:(int64_t)scope customDataSource:(id)source
{
  sourceCopy = source;
  typeCopy = type;
  displayTypeController = [(HKInteractiveChartViewController *)self displayTypeController];
  v11 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:typeCopy];

  v12 = [displayTypeController displayTypeForObjectType:v11];

  if (sourceCopy)
  {
    v13 = [(HKInteractiveChartOverlayViewController *)self _overlayChartCacheForDataSource:sourceCopy templateDisplayType:v12];
  }

  else
  {
    chartDataCacheController = [(HKInteractiveChartViewController *)self chartDataCacheController];
    v13 = [chartDataCacheController interactiveChartsCacheForDisplayType:v12 timeScope:scope];
  }

  v15 = objc_alloc_init(HKCacheBackedChartSeriesDataSource);
  [(HKCacheBackedChartSeriesDataSource *)v15 setChartCache:v13];

  return v15;
}

- (id)_dataSourceForNamedDataSource:(id)source templateDisplayType:(id)type
{
  v4 = [(HKInteractiveChartOverlayViewController *)self _overlayChartCacheForDataSource:source templateDisplayType:type];
  v5 = objc_alloc_init(HKCacheBackedChartSeriesDataSource);
  [(HKCacheBackedChartSeriesDataSource *)v5 setChartCache:v4];

  return v5;
}

- (BOOL)_deliverCachedDataFromSource:(id)source graphSeriesContext:(id)context timeScope:(int64_t)scope resolution:(int64_t)resolution startDate:(id)date endDate:(id)endDate completion:(id)completion
{
  v53 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  contextCopy = context;
  dateCopy = date;
  endDateCopy = endDate;
  completionCopy = completion;
  v50 = 0uLL;
  v51 = 0;
  if (sourceCopy)
  {
    [sourceCopy blockPathForX:dateCopy zoom:scope resolution:resolution];
    v48 = 0uLL;
    v49 = 0;
    [sourceCopy blockPathForX:endDateCopy zoom:scope resolution:resolution];
  }

  else
  {
    v48 = 0uLL;
    v49 = 0;
  }

  v46 = v50;
  resolutionCopy2 = v51;
  v44 = v48;
  v45 = v49;
  v18 = [sourceCopy hasAllBlocksAvailableBetweenStartPath:&v46 endPath:&v44];
  v19 = v18;
  if (v18)
  {
    v32 = v18;
    v33 = completionCopy;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = v50;
    if (v50 <= v48)
    {
      resolutionCopy = resolution;
      v36 = sourceCopy;
      scopeCopy = scope;
      do
      {
        v39 = v21;
        *&v46 = v21;
        *(&v46 + 1) = scope;
        resolutionCopy2 = resolution;
        v22 = [sourceCopy cachedBlockForPath:&v46 context:contextCopy];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v38 = v22;
        chartPoints = [v22 chartPoints];
        v24 = [chartPoints countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v41;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v41 != v26)
              {
                objc_enumerationMutation(chartPoints);
              }

              v28 = *(*(&v40 + 1) + 8 * i);
              minXValueAsGenericType = [v28 minXValueAsGenericType];
              maxXValueAsGenericType = [v28 maxXValueAsGenericType];
              if (([maxXValueAsGenericType hk_isBeforeDate:dateCopy] & 1) == 0 && (objc_msgSend(minXValueAsGenericType, "hk_isAfterDate:", endDateCopy) & 1) == 0)
              {
                [v20 addObject:v28];
              }
            }

            v25 = [chartPoints countByEnumeratingWithState:&v40 objects:v52 count:16];
          }

          while (v25);
        }

        v21 = v39 + 1;
        resolution = resolutionCopy;
        sourceCopy = v36;
        scope = scopeCopy;
      }

      while (v39 < v48);
    }

    completionCopy = v33;
    (*(v33 + 2))(v33, v20, 1, 0);

    v19 = v32;
  }

  return v19;
}

- (void)displayTypeForQuantityDistributionStyle:(uint64_t)a1 timeScope:(NSObject *)a2 overlayColor:options:alternateFormatter:namedPredicate:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Unable to determine the base series for an overlay", &v2, 0xCu);
}

- (void)_overlayChartCacheForDistributionStyle:(uint64_t)a1 timeScope:(uint64_t)a2 namedPredicate:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HKInteractiveChartOverlayViewController.m" lineNumber:722 description:{@"Distribution overlay supported only for quantity types not %@", a3}];
}

@end