@interface HKInteractiveChartOverlayViewController
- (BOOL)_deliverCachedDataFromSource:(id)a3 graphSeriesContext:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 startDate:(id)a7 endDate:(id)a8 completion:(id)a9;
- (HKInteractiveChartOverlayViewController)initWithHealthStore:(id)a3 primaryDisplayType:(id)a4 unitPreferenceController:(id)a5 dateCache:(id)a6 chartDataCacheController:(id)a7 selectedTimeScopeController:(id)a8 sampleTypeDateRangeController:(id)a9 initialXValue:(id)a10 currentCalendarOverride:(id)a11 options:(unint64_t)a12;
- (HKInteractiveChartOverlayViewController)initWithStackedDisplayTypes:(id)a3 primaryDisplayTypeStackIndex:(id)a4 stackedDisplayTypeHeights:(id)a5 healthStore:(id)a6 unitPreferenceController:(id)a7 dateCache:(id)a8 chartDataCacheController:(id)a9 selectedTimeScopeController:(id)a10 sampleTypeDateRangeController:(id)a11 initialXValue:(id)a12 currentCalendarOverride:(id)a13 options:(unint64_t)a14 timeScopeRanges:(id)a15;
- (HKInteractiveChartOverlayViewController)initWithTimeScopeRanges:(id)a3 healthStore:(id)a4 primaryDisplayType:(id)a5 unitPreferenceController:(id)a6 dateCache:(id)a7 chartDataCacheController:(id)a8 selectedTimeScopeController:(id)a9 sampleTypeDateRangeController:(id)a10 initialXValue:(id)a11 currentCalendarOverride:(id)a12 options:(unint64_t)a13;
- (double)minimumHeightForChart;
- (id)_dataSourceForDistributionStyle:(int64_t)a3 timeScope:(int64_t)a4 namedPredicate:(id)a5;
- (id)_dataSourceForNamedDataSource:(id)a3 templateDisplayType:(id)a4;
- (id)_dataSourceForQuantityType:(id)a3 timeScope:(int64_t)a4 customDataSource:(id)a5;
- (id)_overlayChartCacheForDataSource:(id)a3 templateDisplayType:(id)a4;
- (id)_overlayChartCacheForDistributionStyle:(int64_t)a3 timeScope:(int64_t)a4 namedPredicate:(id)a5;
- (id)displayTypeForGraphSeries:(id)a3 namedDataSource:(id)a4 templateDisplayType:(id)a5 timeScope:(int64_t)a6 formatter:(id)a7;
- (id)displayTypeForQuantityDistributionStyle:(int64_t)a3 timeScope:(int64_t)a4 overlayColor:(id)a5 options:(int64_t)a6 alternateFormatter:(id)a7 namedPredicate:(id)a8;
- (id)displayTypeForQuantityIdentifier:(id)a3 timeScope:(int64_t)a4 displayTypeController:(id)a5 overlayColor:(id)a6 cacheDataSource:(id)a7 alternateLineSeries:(id)a8 alternateFormatter:(id)a9 seriesOptions:(int64_t)a10;
- (id)visibleRangeForTimeScope:(int64_t)a3 proposedRange:(id)a4;
- (void)_commonInitializationWithDisplayType:(id)a3;
- (void)_deliverOrWaitForDataSource:(id)a3 graphSeriesContext:(id)a4 priorityDelegate:(id)a5 timeScope:(int64_t)a6 resolution:(int64_t)a7 startDate:(id)a8 endDate:(id)a9 queryIfNeeded:(BOOL)a10 completion:(id)a11;
- (void)_modifyFormatter:(id)a3 forTitleOptions:(int64_t)a4;
- (void)cachedDataForCustomGraphSeries:(id)a3 timeScope:(int64_t)a4 resolution:(int64_t)a5 startDate:(id)a6 endDate:(id)a7 completion:(id)a8;
- (void)cachedDataForCustomGraphSeries:(id)a3 timeScope:(int64_t)a4 resolution:(int64_t)a5 startDate:(id)a6 endDate:(id)a7 queryIfNeeded:(BOOL)a8 completion:(id)a9;
- (void)cachedDataForQuantityDistributionStyle:(int64_t)a3 timeScope:(int64_t)a4 resolution:(int64_t)a5 startDate:(id)a6 endDate:(id)a7 namedPredicate:(id)a8 completion:(id)a9;
- (void)cachedDataForQuantityIdentifier:(id)a3 timeScope:(int64_t)a4 resolution:(int64_t)a5 startDate:(id)a6 endDate:(id)a7 cacheDataSource:(id)a8 completion:(id)a9;
- (void)cachedDataForStandardDisplayType:(id)a3 timeScope:(int64_t)a4 resolution:(int64_t)a5 startDate:(id)a6 endDate:(id)a7 completion:(id)a8;
- (void)clearDisplayTypeStack;
- (void)clearOverlayDisplayTypeWithAutomaticAutoscale:(BOOL)a3;
- (void)configureDisplayTypes:(id)a3 timeScope:(int64_t)a4 stackOffset:(int64_t)a5;
- (void)installOverlayDisplayType:(id)a3;
- (void)installStackedDisplayType:(id)a3;
- (void)unitPreferencesWillUpdate:(id)a3;
@end

@implementation HKInteractiveChartOverlayViewController

- (HKInteractiveChartOverlayViewController)initWithHealthStore:(id)a3 primaryDisplayType:(id)a4 unitPreferenceController:(id)a5 dateCache:(id)a6 chartDataCacheController:(id)a7 selectedTimeScopeController:(id)a8 sampleTypeDateRangeController:(id)a9 initialXValue:(id)a10 currentCalendarOverride:(id)a11 options:(unint64_t)a12
{
  v32[1] = *MEMORY[0x1E69E9840];
  v30 = a4;
  v32[0] = v30;
  v17 = MEMORY[0x1E695DEC8];
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a3;
  v26 = [v17 arrayWithObjects:v32 count:1];
  v31.receiver = self;
  v31.super_class = HKInteractiveChartOverlayViewController;
  v27 = [(HKInteractiveChartViewController *)&v31 initWithDisplayTypes:v26 healthStore:v25 unitPreferenceController:v24 dateCache:v23 chartDataCacheController:v22 selectedTimeScopeController:v21 sampleTypeDateRangeController:v20 initialXValue:v19 currentCalendarOverride:v18 options:a12];

  if (v27)
  {
    [(HKInteractiveChartOverlayViewController *)v27 _commonInitializationWithDisplayType:v30];
  }

  return v27;
}

- (HKInteractiveChartOverlayViewController)initWithTimeScopeRanges:(id)a3 healthStore:(id)a4 primaryDisplayType:(id)a5 unitPreferenceController:(id)a6 dateCache:(id)a7 chartDataCacheController:(id)a8 selectedTimeScopeController:(id)a9 sampleTypeDateRangeController:(id)a10 initialXValue:(id)a11 currentCalendarOverride:(id)a12 options:(unint64_t)a13
{
  v37[1] = *MEMORY[0x1E69E9840];
  v34 = a5;
  v36 = v34;
  v18 = MEMORY[0x1E695DEC8];
  v30 = a12;
  v31 = a11;
  v29 = a10;
  v19 = a9;
  v27 = a8;
  v28 = a7;
  v20 = a6;
  v21 = a4;
  v26 = a3;
  v33 = [v18 arrayWithObjects:&v36 count:1];
  v37[0] = v33;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
  v35.receiver = self;
  v35.super_class = HKInteractiveChartOverlayViewController;
  v23 = v20;
  v24 = [(HKInteractiveChartViewController *)&v35 initWithStackedDisplayTypes:v22 primaryDisplayTypeStackIndex:0 stackedDisplayTypeHeights:0 healthStore:v21 unitPreferenceController:v20 dateCache:v28 chartDataCacheController:v27 selectedTimeScopeController:v19 sampleTypeDateRangeController:v29 initialXValue:v31 currentCalendarOverride:v30 options:a13 timeScopeRanges:v26];

  if (v24)
  {
    [(HKInteractiveChartOverlayViewController *)v24 _commonInitializationWithDisplayType:v34];
  }

  return v24;
}

- (HKInteractiveChartOverlayViewController)initWithStackedDisplayTypes:(id)a3 primaryDisplayTypeStackIndex:(id)a4 stackedDisplayTypeHeights:(id)a5 healthStore:(id)a6 unitPreferenceController:(id)a7 dateCache:(id)a8 chartDataCacheController:(id)a9 selectedTimeScopeController:(id)a10 sampleTypeDateRangeController:(id)a11 initialXValue:(id)a12 currentCalendarOverride:(id)a13 options:(unint64_t)a14 timeScopeRanges:(id)a15
{
  v21 = a3;
  v26.receiver = self;
  v26.super_class = HKInteractiveChartOverlayViewController;
  v22 = [(HKInteractiveChartViewController *)&v26 initWithStackedDisplayTypes:v21 primaryDisplayTypeStackIndex:a4 stackedDisplayTypeHeights:a5 healthStore:a6 unitPreferenceController:a7 dateCache:a8 chartDataCacheController:a9 selectedTimeScopeController:a10 sampleTypeDateRangeController:a11 initialXValue:a12 currentCalendarOverride:a13 options:a14 timeScopeRanges:a15];
  if (v22)
  {
    v23 = [v21 firstObject];
    v24 = [v23 firstObject];

    [(HKInteractiveChartOverlayViewController *)v22 _commonInitializationWithDisplayType:v24];
  }

  return v22;
}

- (void)_commonInitializationWithDisplayType:(id)a3
{
  objc_storeStrong(&self->_primaryDisplayType, a3);
  v5 = a3;
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

- (void)unitPreferencesWillUpdate:(id)a3
{
  v4 = a3;
  v5 = [(HKInteractiveChartOverlayViewController *)self overlayChartCaches];
  [v5 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_27];

  v6 = [(HKInteractiveChartOverlayViewController *)self customNamedCaches];
  [v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_299];

  v7.receiver = self;
  v7.super_class = HKInteractiveChartOverlayViewController;
  [(HKInteractiveChartViewController *)&v7 unitPreferencesWillUpdate:v4];
}

- (void)installOverlayDisplayType:(id)a3
{
  v5 = a3;
  [(HKInteractiveChartOverlayViewController *)self clearOverlayDisplayTypeWithAutomaticAutoscale:v5 == 0];
  if (v5)
  {
    objc_storeStrong(&self->_overlayDisplayType, a3);
    overlayDisplayType = self->_overlayDisplayType;
    v7.receiver = self;
    v7.super_class = HKInteractiveChartOverlayViewController;
    [(HKInteractiveChartViewController *)&v7 addOverlayDisplayType:overlayDisplayType stackOffset:0];
  }
}

- (void)clearOverlayDisplayTypeWithAutomaticAutoscale:(BOOL)a3
{
  v3 = a3;
  overlayDisplayType = self->_overlayDisplayType;
  if (overlayDisplayType)
  {
    v7.receiver = self;
    v7.super_class = HKInteractiveChartOverlayViewController;
    [(HKInteractiveChartViewController *)&v7 removeOverlayDisplayType:overlayDisplayType stackOffset:0 automaticAutoscale:v3];
    v6 = self->_overlayDisplayType;
    self->_overlayDisplayType = 0;
  }
}

- (void)installStackedDisplayType:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(HKInteractiveChartOverlayViewController *)self clearDisplayTypeStack];
  if (v5)
  {
    objc_storeStrong(&self->_stackedDisplayType, a3);
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v7.receiver = self;
    v7.super_class = HKInteractiveChartOverlayViewController;
    [(HKInteractiveChartViewController *)&v7 addNewDisplayTypeStackWithDisplayTypes:v6];
  }
}

- (void)clearDisplayTypeStack
{
  v3 = [(HKInteractiveChartOverlayViewController *)self stackedDisplayType];

  if (v3)
  {
    v4 = [(HKInteractiveChartOverlayViewController *)self stackedDisplayType];
    [(HKInteractiveChartViewController *)self removeStackedDisplayType:v4];

    stackedDisplayType = self->_stackedDisplayType;
    self->_stackedDisplayType = 0;
  }
}

- (id)displayTypeForQuantityDistributionStyle:(int64_t)a3 timeScope:(int64_t)a4 overlayColor:(id)a5 options:(int64_t)a6 alternateFormatter:(id)a7 namedPredicate:(id)a8
{
  v14 = a7;
  v15 = a8;
  v16 = a5;
  v17 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
  v18 = [(HKInteractiveChartViewController *)self graphSeriesForDisplayType:v17 timeScope:a4 stackOffset:0];

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

  v44 = v15;
  v21 = [(HKInteractiveChartOverlayViewController *)self _dataSourceForDistributionStyle:a3 timeScope:a4 namedPredicate:v15];
  v22 = objc_alloc_init(HKQuantityDistributionSeries);
  v23 = [v19 unselectedStrokeStyle];
  [(HKQuantityDistributionSeries *)v22 setUnselectedStrokeStyle:v23];

  v24 = [(HKQuantityDistributionSeries *)v22 unselectedStrokeStyle];
  [v24 setStrokeColor:v16];

  v25 = [v19 inactiveStrokeStyle];
  [(HKQuantityDistributionSeries *)v22 setInactiveStrokeStyle:v25];

  v26 = [v19 selectedStrokeStyle];
  [(HKQuantityDistributionSeries *)v22 setSelectedStrokeStyle:v26];

  v27 = [(HKQuantityDistributionSeries *)v22 selectedStrokeStyle];
  [v27 setStrokeColor:v16];

  v28 = [v19 minMaxLabelStyle];
  [(HKQuantityDistributionSeries *)v22 setMinMaxLabelStyle:v28];

  v29 = [(HKQuantityDistributionSeries *)v22 minMaxLabelStyle];
  [v29 setTextColor:v16];

  v30 = [v19 minMaxValueStyle];
  [(HKQuantityDistributionSeries *)v22 setMinMaxValueStyle:v30];

  v31 = [(HKQuantityDistributionSeries *)v22 minMaxValueStyle];
  [v31 setTextColor:v16];

  v32 = [v19 minMaxPointStyle];
  [(HKQuantityDistributionSeries *)v22 setMinMaxPointStyle:v32];

  v33 = [(HKQuantityDistributionSeries *)v22 minMaxPointStyle];
  [v33 setStrokeColor:v16];

  v34 = [v19 yAxis];
  [(HKGraphSeries *)v22 setYAxis:v34];

  v35 = [v19 axisScalingRule];
  [(HKGraphSeries *)v22 setAxisScalingRule:v35];

  -[HKQuantityDistributionSeries setZeroCountForGap:](v22, "setZeroCountForGap:", [v19 zeroCountForGap]);
  if ((a6 & 2) != 0)
  {
    [(HKQuantityDistributionSeries *)v22 setExcludeDistribution:1];
  }

  [(HKGraphSeries *)v22 setDataSource:v21];
  if (v14)
  {
    v36 = v14;
  }

  else
  {
    v37 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
    v36 = [v37 hk_interactiveChartsFormatterForTimeScope:a4];
  }

  [(HKInteractiveChartOverlayViewController *)self _modifyFormatter:v36 forTitleOptions:a6];
  v38 = [HKInteractiveChartDisplayType alloc];
  v39 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
  v40 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
  v41 = [v40 objectType];
  v42 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v38, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v22, v39, v36, [v41 code]);

  return v42;
}

- (void)_modifyFormatter:(id)a3 forTitleOptions:(int64_t)a4
{
  v4 = a4;
  v10 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v10;
  if (isKindOfClass)
  {
    v7 = v10;
    v8 = v7;
    if ((v4 & 0x20) != 0)
    {
      v9 = &unk_1F4381210;
    }

    else if ((v4 & 0x40) != 0)
    {
      v9 = &unk_1F4381228;
    }

    else
    {
      if ((v4 & 0x80) == 0)
      {
LABEL_9:

        v6 = v10;
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

- (id)displayTypeForQuantityIdentifier:(id)a3 timeScope:(int64_t)a4 displayTypeController:(id)a5 overlayColor:(id)a6 cacheDataSource:(id)a7 alternateLineSeries:(id)a8 alternateFormatter:(id)a9 seriesOptions:(int64_t)a10
{
  v105[1] = *MEMORY[0x1E69E9840];
  v16 = a6;
  v17 = a8;
  v94 = a9;
  v18 = MEMORY[0x1E696C2E0];
  v91 = a7;
  v19 = a5;
  v90 = a3;
  v88 = [v18 quantityTypeForIdentifier:?];
  v20 = [v19 displayTypeForObjectType:?];

  v102 = [v20 chartingRules];
  v21 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
  v100 = self;
  v92 = a4;
  v99 = [(HKInteractiveChartViewController *)self graphSeriesForDisplayType:v21 timeScope:a4 stackOffset:0];

  v22 = v17;
  v93 = v22;
  if (!v22)
  {
    v22 = objc_alloc_init(HKLineSeries);
  }

  v23 = [HKGradientFillStyle alloc];
  v24 = [v16 colorWithAlphaComponent:0.3];
  v25 = [v16 colorWithAlphaComponent:0.0];
  v98 = [(HKGradientFillStyle *)v23 initWithFirstColor:v24 secondColor:v25];

  v26 = [HKGradientFillStyle alloc];
  v27 = [MEMORY[0x1E69DC888] hk_vitalsKeyColor];
  v28 = [v27 colorWithAlphaComponent:0.3];
  v29 = [MEMORY[0x1E69DC888] hk_vitalsKeyColor];
  v30 = [v29 colorWithAlphaComponent:0.0];
  v97 = [(HKGradientFillStyle *)v26 initWithFirstColor:v28 secondColor:v30];

  v31 = objc_alloc_init(HKLineSeriesPresentationStyle);
  v89 = [HKStrokeStyle strokeStyleWithColor:v16 lineWidth:2.0];
  [(HKLineSeriesPresentationStyle *)v31 setStrokeStyle:?];
  v101 = v31;
  [(HKLineSeriesPresentationStyle *)v31 setWaveForm:0];
  v32 = v102;
  if (a10)
  {
    v33 = [MEMORY[0x1E69DB878] hk_roundedSystemFontWithSize:18.0 weight:*MEMORY[0x1E69DB970]];
    if ([v102 shouldDisplayUnitForAxisLabels])
    {
      v34 = [HKDisplayTypeNumberFormatter alloc];
      v35 = [(HKInteractiveChartViewController *)v100 unitPreferenceController];
      v36 = [(HKDisplayTypeNumberFormatter *)v34 initWithDisplayType:v20 unitController:v35];
    }

    else
    {
      v37 = [(HKInteractiveChartViewController *)v100 unitPreferenceController];
      v35 = [v37 unitForDisplayType:v20];

      v36 = [v20 hk_numberFormatterForUnit:v35];
    }

    v38 = v36;

    v39 = [HKAxisLabelStyle labelStyleWithColor:v16 font:v33 horizontalAlignment:0 verticalAlignment:2 numberFormatter:v38];
    [(HKLineSeriesPresentationStyle *)v101 setAnnotationStyle:v39];
  }

  v40 = objc_alloc_init(HKLineSeriesPresentationStyle);
  v41 = [HKStrokeStyle strokeStyleWithColor:v16 lineWidth:2.0];
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
  v48 = [(HKInteractiveChartViewController *)v100 selectedTimeScopeController];
  v49 = [v48 selectedTimeScope];

  v96 = v20;
  if (a10)
  {
    v56 = 0;
  }

  else
  {
    v50 = (a10 >> 2) & 1;
    v51 = v50 | [v102 lineChartFlatLastValueForTimeScope:v49];
    [(HKLineSeries *)v22 setFlatLastValue:v51];
    v52 = v16;
    v53 = [v102 lineChartExtendLastValueForTimeScope:v49];
    [(HKLineSeries *)v22 setExtendLastValue:v50 | v53];
    v54 = [v102 lineChartExtendFirstValueForTimeScope:v49];
    [(HKLineSeries *)v22 setExtendFirstValue:v50 | v54];
    v55 = v53 | v54;
    v16 = v52;
    v32 = v102;
    v56 = v51 | v55;
  }

  v57 = [v32 lineChartUsesPointMarkerImageForTimeScope:v49];
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

    v63 = [[HKLineSeriesPointMarkerStyle alloc] initWithColor:v16 radius:~(a10 >> 3) & 1 style:v59 * 0.5];
    v64 = [HKLineSeriesPointMarkerStyle alloc];
    HKHealthKeyColor();
    v66 = v65 = v16;
    v67 = [(HKLineSeriesPointMarkerStyle *)v64 initWithColor:v66 radius:0 style:v58 * 0.5];

    v16 = v65;
    [(HKLineSeriesPresentationStyle *)v101 setPointMarkerStyle:v63];
    [(HKLineSeriesPresentationStyle *)v40 setPointMarkerStyle:v47];
    [(HKLineSeries *)v22 setSelectedPointMarkerStyle:v67];

    v32 = v102;
  }

  v68 = [v32 lineChartUsesValueAxisAnnotationForTimeScope:v49];
  if ((a10 & 1) == 0 && (a10 >> 4) & 1 | v68)
  {
    v69 = v16;
    v70 = [MEMORY[0x1E69DB878] hk_roundedSystemFontWithSize:18.0 weight:*MEMORY[0x1E69DB970]];
    if ([v32 shouldDisplayUnitForAxisLabels])
    {
      v71 = [HKDisplayTypeNumberFormatter alloc];
      v72 = [(HKInteractiveChartViewController *)v100 unitPreferenceController];
      v73 = [(HKDisplayTypeNumberFormatter *)v71 initWithDisplayType:v96 unitController:v72];
    }

    else
    {
      v74 = [(HKInteractiveChartViewController *)v100 unitPreferenceController];
      v72 = [v74 unitForDisplayType:v96];

      v73 = [v96 hk_numberFormatterForUnit:v72];
    }

    v75 = v73;

    v16 = v69;
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

  v80 = [v99 yAxis];
  [(HKGraphSeries *)v22 setYAxis:v80];

  v81 = [(HKGraphSeries *)v22 yAxis];
  [v81 clearAnnotations];

  v82 = [v99 axisScalingRule];
  [(HKGraphSeries *)v22 setAxisScalingRule:v82];

  v83 = [(HKInteractiveChartOverlayViewController *)v100 _dataSourceForQuantityType:v90 timeScope:v92 customDataSource:v91];

  [(HKGraphSeries *)v22 setDataSource:v83];
  if (v94)
  {
    v84 = v94;
    v85 = v96;
  }

  else
  {
    v85 = v96;
    v84 = [v96 hk_interactiveChartsFormatterForTimeScope:v92];
  }

  v86 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:]([HKInteractiveChartDisplayType alloc], "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v22, v85, v84, [v88 code]);

  return v86;
}

- (id)displayTypeForGraphSeries:(id)a3 namedDataSource:(id)a4 templateDisplayType:(id)a5 timeScope:(int64_t)a6 formatter:(id)a7
{
  v11 = a7;
  v12 = a5;
  v13 = a3;
  v14 = [(HKInteractiveChartOverlayViewController *)self _dataSourceForNamedDataSource:a4 templateDisplayType:v12];
  [v13 setDataSource:v14];

  v15 = [HKInteractiveChartDisplayType alloc];
  v16 = [v12 sampleType];
  v17 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v15, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v13, v12, v11, [v16 code]);

  return v17;
}

- (void)cachedDataForQuantityDistributionStyle:(int64_t)a3 timeScope:(int64_t)a4 resolution:(int64_t)a5 startDate:(id)a6 endDate:(id)a7 namedPredicate:(id)a8 completion:(id)a9
{
  v16 = a9;
  v17 = a7;
  v18 = a6;
  v20 = [(HKInteractiveChartOverlayViewController *)self _dataSourceForDistributionStyle:a3 timeScope:a4 namedPredicate:a8];
  LOBYTE(v19) = 1;
  [(HKInteractiveChartOverlayViewController *)self _deliverOrWaitForDataSource:v20 graphSeriesContext:0 priorityDelegate:0 timeScope:a4 resolution:a5 startDate:v18 endDate:v17 queryIfNeeded:v19 completion:v16];
}

- (void)cachedDataForQuantityIdentifier:(id)a3 timeScope:(int64_t)a4 resolution:(int64_t)a5 startDate:(id)a6 endDate:(id)a7 cacheDataSource:(id)a8 completion:(id)a9
{
  v16 = a9;
  v17 = a7;
  v18 = a6;
  v20 = [(HKInteractiveChartOverlayViewController *)self _dataSourceForQuantityType:a3 timeScope:a4 customDataSource:a8];
  LOBYTE(v19) = 1;
  [(HKInteractiveChartOverlayViewController *)self _deliverOrWaitForDataSource:v20 graphSeriesContext:0 priorityDelegate:0 timeScope:a4 resolution:a5 startDate:v18 endDate:v17 queryIfNeeded:v19 completion:v16];
}

- (void)cachedDataForCustomGraphSeries:(id)a3 timeScope:(int64_t)a4 resolution:(int64_t)a5 startDate:(id)a6 endDate:(id)a7 completion:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a3;
  v20 = [v17 dataSource];
  v18 = [v17 seriesDataSourceContext];
  LOBYTE(v19) = 1;
  [(HKInteractiveChartOverlayViewController *)self _deliverOrWaitForDataSource:v20 graphSeriesContext:v18 priorityDelegate:v17 timeScope:a4 resolution:a5 startDate:v16 endDate:v15 queryIfNeeded:v19 completion:v14];
}

- (void)cachedDataForCustomGraphSeries:(id)a3 timeScope:(int64_t)a4 resolution:(int64_t)a5 startDate:(id)a6 endDate:(id)a7 queryIfNeeded:(BOOL)a8 completion:(id)a9
{
  v16 = a9;
  v17 = a7;
  v18 = a6;
  v19 = a3;
  v22 = [v19 dataSource];
  v20 = [v19 seriesDataSourceContext];
  LOBYTE(v21) = a8;
  [(HKInteractiveChartOverlayViewController *)self _deliverOrWaitForDataSource:v22 graphSeriesContext:v20 priorityDelegate:v19 timeScope:a4 resolution:a5 startDate:v18 endDate:v17 queryIfNeeded:v21 completion:v16];
}

- (void)cachedDataForStandardDisplayType:(id)a3 timeScope:(int64_t)a4 resolution:(int64_t)a5 startDate:(id)a6 endDate:(id)a7 completion:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a3;
  v18 = [(HKInteractiveChartViewController *)self chartDataCacheController];
  v21 = [v18 interactiveChartsCacheForDisplayType:v17 timeScope:a4];

  v19 = objc_alloc_init(HKCacheBackedChartSeriesDataSource);
  [(HKCacheBackedChartSeriesDataSource *)v19 setChartCache:v21];
  LOBYTE(v20) = 1;
  [(HKInteractiveChartOverlayViewController *)self _deliverOrWaitForDataSource:v19 graphSeriesContext:0 priorityDelegate:0 timeScope:a4 resolution:a5 startDate:v16 endDate:v15 queryIfNeeded:v20 completion:v14];
}

- (void)_deliverOrWaitForDataSource:(id)a3 graphSeriesContext:(id)a4 priorityDelegate:(id)a5 timeScope:(int64_t)a6 resolution:(int64_t)a7 startDate:(id)a8 endDate:(id)a9 queryIfNeeded:(BOOL)a10 completion:(id)a11
{
  v24 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = a9;
  v21 = a11;
  v22 = [(HKInteractiveChartOverlayViewController *)self _deliverCachedDataFromSource:v24 graphSeriesContext:v17 timeScope:a6 resolution:a7 startDate:v19 endDate:v20 completion:v21];
  if (v22 || !a10)
  {
    if (!v22 && !a10)
    {
      (*(v21 + 2))(v21, MEMORY[0x1E695E0F0], 1, 0);
    }
  }

  else
  {
    v23 = [(HKInteractiveChartOverlayViewController *)self waitForCacheData];
    [v23 addWaitForDataSource:v24 graphSeriesContext:v17 timeScope:a6 resolution:a7 startDate:v19 endDate:v20 priorityDelegate:v18 completion:v21];
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

- (id)visibleRangeForTimeScope:(int64_t)a3 proposedRange:(id)a4
{
  v5 = a4;
  v6 = [(HKInteractiveChartOverlayViewController *)self initialVisibleDateRange];

  v7 = v5;
  if (v6)
  {
    v7 = [(HKInteractiveChartOverlayViewController *)self initialVisibleDateRange];

    [(HKInteractiveChartOverlayViewController *)self setInitialVisibleDateRange:0];
  }

  return v7;
}

- (void)configureDisplayTypes:(id)a3 timeScope:(int64_t)a4 stackOffset:(int64_t)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if ([v8 count] == 1)
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [(HKInteractiveChartViewController *)self graphSeriesForDisplayType:v9 timeScope:a4 stackOffset:a5];

    [v10 setAllowsSelection:1];
  }

  else
  {
    v11 = [(HKInteractiveChartViewController *)self graphSeriesForDisplayType:self->_overlayDisplayType timeScope:a4 stackOffset:a5];
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
    v23 = v8;
    v12 = v8;
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
          v18 = [(HKInteractiveChartViewController *)self graphSeriesForDisplayType:v17 timeScope:a4 stackOffset:a5];
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

    v20 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
    v21 = [v20 graphView];

    if (v24)
    {
      [v21 setMoveSelectedSeriesToFront:0];
    }

    v8 = v23;
  }
}

- (id)_overlayChartCacheForDistributionStyle:(int64_t)a3 timeScope:(int64_t)a4 namedPredicate:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 localizedNameKey];
  }

  else
  {
    v11 = &stru_1F42FFBE0;
  }

  v12 = [[_HKInteractiveChartDistributionStyleKey alloc] initWithDistributionStyle:a3 timeScope:a4 predicateName:v11];
  v13 = [(HKInteractiveChartOverlayViewController *)self overlayChartCaches];
  v14 = [v13 objectForKey:v12];

  if (!v14)
  {
    v38 = v11;
    v15 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
    v16 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
    v17 = [v16 objectType];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKInteractiveChartOverlayViewController _overlayChartCacheForDistributionStyle:a2 timeScope:self namedPredicate:v17];
    }

    v18 = v17;
    v36 = v18;
    v19 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
    v20 = [(HKInteractiveChartOverlayViewController *)self _displayTypeRequiresAverageAndDuration:v19];

    v21 = v20;
    if ([v15 contextItemShouldDisplayEventCountForDistributionStyle:a3])
    {
      v21 = v20 | 2;
    }

    v22 = [v18 identifier];
    v37 = v15;
    v23 = *MEMORY[0x1E696BD08];

    if (v22 == v23)
    {
      v24 = v21 | 4;
    }

    else
    {
      v24 = v21;
    }

    v25 = [HKQuantityDistributionDataSource alloc];
    v26 = [(HKInteractiveChartViewController *)self unitPreferenceController];
    v27 = [(HKInteractiveChartViewController *)self healthStore];
    v28 = [v10 predicate];
    v29 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __107__HKInteractiveChartOverlayViewController__overlayChartCacheForDistributionStyle_timeScope_namedPredicate___block_invoke;
    v39[3] = &__block_descriptor_40_e48__24__0___HKQuantityDistributionData_8__HKUnit_16l;
    v39[4] = v24;
    v30 = [(HKQuantityDistributionDataSource *)v25 initWithQuantityType:v36 unitController:v26 healthStore:v27 contextStyle:a3 predicate:v28 options:v24 baseDisplayType:v29 specificStartDate:0 specificEndDate:0 userInfoCreationBlock:v39];

    v14 = objc_alloc_init(HKChartCache);
    [(HKChartCache *)v14 setDataSource:v30];
    v31 = +[HKOutstandingFetchOperationManager sharedOperationManager];
    [(HKChartCache *)v14 setOperationManager:v31];

    v32 = [(HKInteractiveChartOverlayViewController *)self overlayChartCaches];
    [v32 setObject:v14 forKey:v12];

    v33 = [(HKInteractiveChartViewController *)self chartDataCacheController];
    v34 = [(HKInteractiveChartOverlayViewController *)self primaryDisplayType];
    [v33 addCustomChartCache:v14 forDisplayType:v34];

    v11 = v38;
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

- (id)_overlayChartCacheForDataSource:(id)a3 templateDisplayType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HKInteractiveChartOverlayViewController *)self customNamedCaches];
  v9 = [v6 name];
  v10 = [v8 objectForKey:v9];

  if (!v10)
  {
    v10 = objc_alloc_init(HKChartCache);
    v11 = [v6 dataSource];
    [(HKChartCache *)v10 setDataSource:v11];

    v12 = +[HKOutstandingFetchOperationManager sharedOperationManager];
    [(HKChartCache *)v10 setOperationManager:v12];

    v13 = [(HKInteractiveChartOverlayViewController *)self customNamedCaches];
    v14 = [v6 name];
    [v13 setObject:v10 forKey:v14];

    v15 = [(HKInteractiveChartViewController *)self chartDataCacheController];
    [v15 addCustomChartCache:v10 forDisplayType:v7];
  }

  return v10;
}

- (id)_dataSourceForDistributionStyle:(int64_t)a3 timeScope:(int64_t)a4 namedPredicate:(id)a5
{
  v5 = [(HKInteractiveChartOverlayViewController *)self _overlayChartCacheForDistributionStyle:a3 timeScope:a4 namedPredicate:a5];
  v6 = objc_alloc_init(HKCacheBackedChartSeriesDataSource);
  [(HKCacheBackedChartSeriesDataSource *)v6 setChartCache:v5];

  return v6;
}

- (id)_dataSourceForQuantityType:(id)a3 timeScope:(int64_t)a4 customDataSource:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(HKInteractiveChartViewController *)self displayTypeController];
  v11 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:v9];

  v12 = [v10 displayTypeForObjectType:v11];

  if (v8)
  {
    v13 = [(HKInteractiveChartOverlayViewController *)self _overlayChartCacheForDataSource:v8 templateDisplayType:v12];
  }

  else
  {
    v14 = [(HKInteractiveChartViewController *)self chartDataCacheController];
    v13 = [v14 interactiveChartsCacheForDisplayType:v12 timeScope:a4];
  }

  v15 = objc_alloc_init(HKCacheBackedChartSeriesDataSource);
  [(HKCacheBackedChartSeriesDataSource *)v15 setChartCache:v13];

  return v15;
}

- (id)_dataSourceForNamedDataSource:(id)a3 templateDisplayType:(id)a4
{
  v4 = [(HKInteractiveChartOverlayViewController *)self _overlayChartCacheForDataSource:a3 templateDisplayType:a4];
  v5 = objc_alloc_init(HKCacheBackedChartSeriesDataSource);
  [(HKCacheBackedChartSeriesDataSource *)v5 setChartCache:v4];

  return v5;
}

- (BOOL)_deliverCachedDataFromSource:(id)a3 graphSeriesContext:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 startDate:(id)a7 endDate:(id)a8 completion:(id)a9
{
  v53 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v37 = a4;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v50 = 0uLL;
  v51 = 0;
  if (v14)
  {
    [v14 blockPathForX:v15 zoom:a5 resolution:a6];
    v48 = 0uLL;
    v49 = 0;
    [v14 blockPathForX:v16 zoom:a5 resolution:a6];
  }

  else
  {
    v48 = 0uLL;
    v49 = 0;
  }

  v46 = v50;
  v47 = v51;
  v44 = v48;
  v45 = v49;
  v18 = [v14 hasAllBlocksAvailableBetweenStartPath:&v46 endPath:&v44];
  v19 = v18;
  if (v18)
  {
    v32 = v18;
    v33 = v17;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = v50;
    if (v50 <= v48)
    {
      v35 = a6;
      v36 = v14;
      v34 = a5;
      do
      {
        v39 = v21;
        *&v46 = v21;
        *(&v46 + 1) = a5;
        v47 = a6;
        v22 = [v14 cachedBlockForPath:&v46 context:v37];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v38 = v22;
        v23 = [v22 chartPoints];
        v24 = [v23 countByEnumeratingWithState:&v40 objects:v52 count:16];
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
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v40 + 1) + 8 * i);
              v29 = [v28 minXValueAsGenericType];
              v30 = [v28 maxXValueAsGenericType];
              if (([v30 hk_isBeforeDate:v15] & 1) == 0 && (objc_msgSend(v29, "hk_isAfterDate:", v16) & 1) == 0)
              {
                [v20 addObject:v28];
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v40 objects:v52 count:16];
          }

          while (v25);
        }

        v21 = v39 + 1;
        a6 = v35;
        v14 = v36;
        a5 = v34;
      }

      while (v39 < v48);
    }

    v17 = v33;
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