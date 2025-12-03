@interface HKInteractiveChartActivityController
+ (id)_activitySummariesFromCodableCollection:(id)collection;
+ (id)_activitySummaryFromCodableSummaryEntry:(id)entry;
+ (id)_codableActivitySummaryDataFromSummaries:(id)summaries;
+ (id)_codableActivitySummaryFromSummary:(id)summary;
+ (id)firstActivitySeriesForGraphView:(id)view;
+ (void)encodeChartDataWithHealthStore:(id)store dateCache:(id)cache displayTypeController:(id)controller unitController:(id)unitController activityMoveMode:(int64_t)mode monthDateInterval:(id)interval sixMonthDateInterval:(id)dateInterval completion:(id)self0;
- (BOOL)chartDataIsAvailable;
- (HKInteractiveChartActivityController)initWithHealthStore:(id)store unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)rangeController wheelchairUseCharacteristicCache:(id)characteristicCache initialXValue:(id)self0 activityMoveMode:(int64_t)self1 activityOptions:(unint64_t)self2 chartSharableModel:(id)self3;
- (HKInteractiveChartCurrentValueViewCallbacks)activityCurrentValueViewCallbacks;
- (id)_activityLollipopBackgroundColor;
- (id)_activitySeriesForActivityValue:(int64_t)value wheelchairUseCharacteristicCache:(id)cache unitPreferenceController:(id)controller displayTypeController:(id)typeController activityOptions:(unint64_t)options;
- (id)_activityYAxisForActivityValue:(int64_t)value zeroOnly:(BOOL)only stackOffset:(int64_t)offset bottomLabelPadding:(double)padding displayTypeController:(id)controller unitPreferenceController:(id)preferenceController;
- (id)_buildSummariesTableFromSharableModel:(id)model;
- (id)_dayActivitySummaryForDateRange:(id)range;
- (id)_decodeActivitySummariesFromQueryData:(id)data;
- (id)_displayTypeForActivityValue:(int64_t)value yAxis:(id)axis dataProvider:(id)provider displayTypeController:(id)controller unitPreferenceController:(id)preferenceController wheelchairUseCharacteristicCache:(id)cache timescopeToSummariesTable:(id)table activityOptions:(unint64_t)self0;
- (id)_displayTypeForUnits:(int64_t)units displayTypeController:(id)controller;
- (id)_generateActivityBarSeriesWithColor:(id)color legendTitle:(id)title metGoalFillStyle:(id)style missedGoalFillStyle:(id)fillStyle pausedFillStyle:(id)pausedFillStyle activityValue:(int64_t)value unitPreferenceController:(id)controller displayTypeController:(id)self0 drawLegendsInsideSeries:(BOOL)self1;
- (id)_generateActivityGoalLineSeriesWithColor:(id)color;
- (id)_lineColorForActivityValue:(int64_t)value;
- (id)_metGoalFillStyleForActivityValue:(int64_t)value useGradient:(BOOL)gradient;
- (id)_missedGoalFillStyleForActivityValue:(int64_t)value useGradient:(BOOL)gradient;
- (id)_pausedFillStyleForActivityValue:(int64_t)value;
- (id)_rangeValueAsNumber:(id)number;
- (id)_spanForValueDisplayType:(id)type timeScope:(int64_t)scope title:(id)title;
- (id)_timeScopeRangesFromSharableModel:(id)model;
- (id)_titleForActivityValue:(int64_t)value wheelchairUseCharacteristicCache:(id)cache;
- (id)_unitForActivityValue:(int64_t)value displayTypeController:(id)controller unitPreferenceController:(id)preferenceController;
- (id)_zeroStringForActivityValue:(int64_t)value displayTypeController:(id)controller unitPreferenceController:(id)preferenceController;
- (id)activitySummaryForCurrentRange;
- (id)buildFactorContextForDisplayType:(id)type factorDisplayType:(id)displayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items overlayMode:(int64_t)mode;
- (id)calendarQueryDisplayType;
- (id)dataSourceForCurrentValueViewString;
- (id)descriptionForChartData:(id)data timeScope:(int64_t)scope;
- (id)descriptionSeriesForGraphView:(id)view;
- (id)descriptionSpansForGraphView:(id)view timeScope:(int64_t)scope;
- (id)lollipopAnnotationColor;
- (id)makeAnnotationDataSource;
- (id)makeCurrentValueView;
- (id)seriesSelectionLineColorForGraphView:(id)view;
- (int64_t)_countOfStackedChartsFromActivityOptions:(unint64_t)options;
- (int64_t)_findFirstWeekdayFromModel:(id)model;
- (int64_t)_representativeDataTypeForActivityValue:(int64_t)value;
- (void)_handleAlternateAnnotationDataViewDataSource:(id)source;
- (void)configureDisplayTypes:(id)types timeScope:(int64_t)scope stackOffset:(int64_t)offset;
- (void)setCurrentValueViewCallbacks:(id)callbacks;
- (void)tappedOnCurrentValueView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)updateCurrentValueView:(id)view graphView:(id)graphView timeScope:(int64_t)scope showInfoButton:(BOOL)button;
- (void)updateSelectionAnnotationDataSourceForContext:(id)context displayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution;
@end

@implementation HKInteractiveChartActivityController

- (HKInteractiveChartActivityController)initWithHealthStore:(id)store unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)rangeController wheelchairUseCharacteristicCache:(id)characteristicCache initialXValue:(id)self0 activityMoveMode:(int64_t)self1 activityOptions:(unint64_t)self2 chartSharableModel:(id)self3
{
  v92[2] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  controllerCopy = controller;
  cacheCopy = cache;
  characteristicCacheCopy = characteristicCache;
  modelCopy = model;
  valueCopy = value;
  rangeControllerCopy = rangeController;
  scopeControllerCopy = scopeController;
  cacheControllerCopy = cacheController;
  v22 = modelCopy;
  v88 = [HKDisplayTypeController sharedInstanceForHealthStore:storeCopy];
  if (modelCopy)
  {
    v23 = storeCopy;
    v24 = [(HKInteractiveChartActivityController *)self _buildSummariesTableFromSharableModel:v22];
    v82 = [(HKInteractiveChartActivityController *)self _timeScopeRangesFromSharableModel:v22];
    v84 = v24;
    v25 = [v24 objectForKeyedSubscript:&unk_1F4384390];
    firstObject = [v25 firstObject];

    modeCopy2 = mode;
    if (firstObject)
    {
      modeCopy2 = [firstObject activityMoveMode];
    }

    v71 = [(HKInteractiveChartActivityController *)self _findFirstWeekdayFromModel:v22];

    storeCopy = v23;
    v28 = cacheCopy;
  }

  else
  {
    v82 = 0;
    v84 = 0;
    v71 = -1;
    modeCopy2 = mode;
    v28 = cacheCopy;
  }

  v80 = v22;
  v29 = [[HKActivitySummaryDataProvider alloc] initWithHealthStore:storeCopy dateCache:v28 displayTypeController:v88 unitController:controllerCopy activityMoveMode:modeCopy2];
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  optionsCopy3 = options;
  v32 = [(HKInteractiveChartActivityController *)self _countOfStackedChartsFromActivityOptions:options];
  v86 = v29;
  v77 = v32;
  if (options)
  {
    v38 = 0;
    v39 = 0;
    v37 = characteristicCacheCopy;
  }

  else
  {
    v33 = modeCopy2 == 2;
    if (modeCopy2 == 2)
    {
      v34 = 5;
    }

    else
    {
      v34 = 4;
    }

    v35 = [(HKInteractiveChartActivityController *)self _activityYAxisForActivityValue:modeCopy2 == 2 zeroOnly:v32 > 1 stackOffset:0 bottomLabelPadding:v88 displayTypeController:controllerCopy unitPreferenceController:0.0];
    v36 = v33;
    v37 = characteristicCacheCopy;
    v38 = [(HKInteractiveChartActivityController *)self _displayTypeForActivityValue:v36 yAxis:v35 dataProvider:v29 displayTypeController:v88 unitPreferenceController:controllerCopy wheelchairUseCharacteristicCache:characteristicCacheCopy timescopeToSummariesTable:v84 activityOptions:options];
    v39 = [(HKInteractiveChartActivityController *)self _displayTypeForActivityValue:v34 yAxis:v35 dataProvider:v29 displayTypeController:v88 unitPreferenceController:controllerCopy wheelchairUseCharacteristicCache:characteristicCacheCopy timescopeToSummariesTable:v84 activityOptions:options];
    v92[0] = v38;
    v92[1] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
    [v30 addObject:v40];

    optionsCopy3 = options;
  }

  v41 = v30;
  v81 = v30;
  obj = v38;
  v79 = v39;
  if ((optionsCopy3 & 2) != 0)
  {
    v43 = 0;
    v44 = 0;
  }

  else
  {
    v42 = [(HKInteractiveChartActivityController *)self _activityYAxisForActivityValue:2 zeroOnly:v77 > 1 stackOffset:1 bottomLabelPadding:v88 displayTypeController:controllerCopy unitPreferenceController:0.0];
    v43 = [(HKInteractiveChartActivityController *)self _displayTypeForActivityValue:2 yAxis:v42 dataProvider:v86 displayTypeController:v88 unitPreferenceController:controllerCopy wheelchairUseCharacteristicCache:v37 timescopeToSummariesTable:v84 activityOptions:optionsCopy3];
    v41 = v81;
    v44 = [(HKInteractiveChartActivityController *)self _displayTypeForActivityValue:6 yAxis:v42 dataProvider:v86 displayTypeController:v88 unitPreferenceController:controllerCopy wheelchairUseCharacteristicCache:v37 timescopeToSummariesTable:v84 activityOptions:optionsCopy3];
    v91[0] = v43;
    v91[1] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
    [v81 addObject:v45];

    optionsCopy3 = options;
  }

  v85 = controllerCopy;
  if ((optionsCopy3 & 4) != 0)
  {
    v48 = 0;
    v50 = 0;
  }

  else
  {
    [(HKInteractiveChartActivityController *)self _activityYAxisForActivityValue:3 zeroOnly:v77 > 1 stackOffset:2 bottomLabelPadding:v88 displayTypeController:controllerCopy unitPreferenceController:5.0];
    v47 = v46 = v37;
    v48 = [(HKInteractiveChartActivityController *)self _displayTypeForActivityValue:3 yAxis:v47 dataProvider:v86 displayTypeController:v88 unitPreferenceController:controllerCopy wheelchairUseCharacteristicCache:v46 timescopeToSummariesTable:v84 activityOptions:optionsCopy3];
    v49 = v46;
    v41 = v81;
    v50 = [(HKInteractiveChartActivityController *)self _displayTypeForActivityValue:7 yAxis:v47 dataProvider:v86 displayTypeController:v88 unitPreferenceController:controllerCopy wheelchairUseCharacteristicCache:v49 timescopeToSummariesTable:v84 activityOptions:optionsCopy3];
    v90[0] = v48;
    v90[1] = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
    [v81 addObject:v51];
  }

  v52 = v80;
  v78 = v48;
  v53 = v43;
  if ([v41 count] >= 4)
  {
    [HKInteractiveChartActivityController initWithHealthStore:a2 unitPreferenceController:self dateCache:? chartDataCacheController:? selectedTimeScopeController:? sampleTypeDateRangeController:? wheelchairUseCharacteristicCache:? initialXValue:? activityMoveMode:? activityOptions:? chartSharableModel:?];
  }

  v54 = [v41 count];
  v55 = 12288;
  if (v54 > 1)
  {
    v55 = 77824;
  }

  if (v80)
  {
    v55 |= 0x20000uLL;
  }

  v89.receiver = self;
  v89.super_class = HKInteractiveChartActivityController;
  v56 = [(HKInteractiveChartOverlayViewController *)&v89 initWithStackedDisplayTypes:v41 primaryDisplayTypeStackIndex:0 stackedDisplayTypeHeights:0 healthStore:storeCopy unitPreferenceController:v85 dateCache:cacheCopy chartDataCacheController:cacheControllerCopy selectedTimeScopeController:scopeControllerCopy sampleTypeDateRangeController:rangeControllerCopy initialXValue:valueCopy currentCalendarOverride:0 options:v55 timeScopeRanges:v82];

  v57 = cacheCopy;
  v58 = v86;
  v59 = obj;
  v60 = v53;
  v61 = v44;
  if (v56)
  {
    objc_storeStrong(&v56->_moveValueDisplayType, obj);
    objc_storeStrong(&v56->_moveGoalDisplayType, v79);
    objc_storeStrong(&v56->_exerciseValueDisplayType, v60);
    objc_storeStrong(&v56->_exerciseGoalDisplayType, v44);
    objc_storeStrong(&v56->_standValueDisplayType, v78);
    objc_storeStrong(&v56->_standGoalDisplayType, v50);
    objc_storeStrong(&v56->_activityDataProvider, v86);
    v56->_isChartSharingContext = v80 != 0;
    v62 = [HKActivitySummaryAnnotationViewDataSource alloc];
    displayTypeController = [(HKInteractiveChartViewController *)v56 displayTypeController];
    v57 = cacheCopy;
    LOBYTE(v69) = v56->_isChartSharingContext;
    v64 = [(HKActivitySummaryAnnotationViewDataSource *)v62 initWithDisplayTypeController:displayTypeController unitController:v85 wheelchairUseCharacteristicCache:characteristicCacheCopy dateCache:cacheCopy currentValueViewContext:0 activityOptions:options firstWeekday:v71 isChartSharingContext:v69];
    activityAnnotationDataSource = v56->_activityAnnotationDataSource;
    v56->_activityAnnotationDataSource = v64;

    v52 = v80;
    v59 = obj;
    v61 = v44;
    [(HKActivitySummaryAnnotationViewDataSource *)v56->_activityAnnotationDataSource setActivitySummary:0];
    v56->_currentTimeScope = 2;
    weakToWeakObjectsMapTable = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    yAxisAccessoryViewsByGraphSeries = v56->_yAxisAccessoryViewsByGraphSeries;
    v56->_yAxisAccessoryViewsByGraphSeries = weakToWeakObjectsMapTable;

    objc_storeStrong(&v56->_wheelchairUseCharacteristicCache, characteristicCache);
    v56->_activityOptions = options;
    v58 = v86;
    [(HKInteractiveChartViewController *)v56 addChartViewObserver:v56];
  }

  return v56;
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = HKInteractiveChartActivityController;
  changeCopy = change;
  [(HKInteractiveChartViewController *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(HKInteractiveChartActivityController *)self traitCollection:v10.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
    graphView = [primaryGraphViewController graphView];
    [graphView resetAndRedraw];
  }
}

- (id)buildFactorContextForDisplayType:(id)type factorDisplayType:(id)displayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items overlayMode:(int64_t)mode
{
  itemsCopy = items;
  overrideCopy = override;
  controllerCopy = controller;
  displayTypeCopy = displayType;
  typeCopy = type;
  v19 = [_ActivityFactorContext alloc];
  activityCurrentValueView = [(HKInteractiveChartActivityController *)self activityCurrentValueView];
  v21 = [(_ActivityFactorContext *)v19 initWithPrimaryDisplayType:typeCopy factorDisplayType:displayTypeCopy overlayChartController:controllerCopy currentCalendarOverride:overrideCopy applicationItems:itemsCopy overlayMode:mode activityCurrentValueView:activityCurrentValueView];

  return v21;
}

- (id)_buildSummariesTableFromSharableModel:(id)model
{
  modelCopy = model;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([modelCopy hasSixMonthData])
  {
    sixMonthData = [modelCopy sixMonthData];
    v7 = [(HKInteractiveChartActivityController *)self _decodeActivitySummariesFromQueryData:sixMonthData];
    [v5 setObject:v7 forKeyedSubscript:&unk_1F43843A8];
  }

  if ([modelCopy hasMonthData])
  {
    monthData = [modelCopy monthData];
    v9 = [(HKInteractiveChartActivityController *)self _decodeActivitySummariesFromQueryData:monthData];
    [v5 setObject:v9 forKeyedSubscript:&unk_1F4384390];
  }

  return v5;
}

- (id)_decodeActivitySummariesFromQueryData:(id)data
{
  dataCopy = data;
  v4 = [HKCodableActivitySummaryCollection alloc];
  queryDataObject = [dataCopy queryDataObject];

  v6 = [(HKCodableActivitySummaryCollection *)v4 initWithData:queryDataObject];
  v7 = [HKInteractiveChartActivityController _activitySummariesFromCodableCollection:v6];

  return v7;
}

- (id)_timeScopeRangesFromSharableModel:(id)model
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB80];
  modelCopy = model;
  monthDateInterval = [modelCopy monthDateInterval];
  v6 = [v3 hk_dateIntervalWithCodableDateInterval:monthDateInterval sourceTimeZone:0];

  v7 = MEMORY[0x1E696AB80];
  sixMonthDateInterval = [modelCopy sixMonthDateInterval];

  v9 = [v7 hk_dateIntervalWithCodableDateInterval:sixMonthDateInterval sourceTimeZone:0];

  startDate = [v6 startDate];
  endDate = [v6 endDate];
  v12 = [HKValueRange valueRangeWithMinValue:startDate maxValue:endDate];

  startDate2 = [v9 startDate];
  endDate2 = [v9 endDate];
  v15 = [HKValueRange valueRangeWithMinValue:startDate2 maxValue:endDate2];

  v18[0] = &unk_1F4384390;
  v18[1] = &unk_1F43843A8;
  v19[0] = v12;
  v19[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v16;
}

- (int64_t)_findFirstWeekdayFromModel:(id)model
{
  modelCopy = model;
  v4 = modelCopy;
  if (!modelCopy)
  {
    goto LABEL_9;
  }

  if (![modelCopy hasMonthData] || (objc_msgSend(v4, "monthData"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasFirstWeekday"), v5, !v6))
  {
    if ([v4 hasSixMonthData])
    {
      sixMonthData = [v4 sixMonthData];
      hasFirstWeekday = [sixMonthData hasFirstWeekday];

      if (hasFirstWeekday)
      {
        sixMonthData2 = [v4 sixMonthData];
        goto LABEL_8;
      }
    }

LABEL_9:
    firstWeekday = -1;
    goto LABEL_10;
  }

  sixMonthData2 = [v4 monthData];
LABEL_8:
  v10 = sixMonthData2;
  firstWeekday = [sixMonthData2 firstWeekday];

LABEL_10:
  return firstWeekday;
}

+ (void)encodeChartDataWithHealthStore:(id)store dateCache:(id)cache displayTypeController:(id)controller unitController:(id)unitController activityMoveMode:(int64_t)mode monthDateInterval:(id)interval sixMonthDateInterval:(id)dateInterval completion:(id)self0
{
  completionCopy = completion;
  dateIntervalCopy = dateInterval;
  intervalCopy = interval;
  unitControllerCopy = unitController;
  controllerCopy = controller;
  cacheCopy = cache;
  storeCopy = store;
  v23 = [[HKActivitySummaryDataProvider alloc] initWithHealthStore:storeCopy dateCache:cacheCopy displayTypeController:controllerCopy unitController:unitControllerCopy activityMoveMode:mode];

  [_ActivityRemoteDataGathererManager gatherDataWithActivitySummaryDataProvider:v23 monthDateInterval:intervalCopy sixMonthDateInterval:dateIntervalCopy completion:completionCopy];
}

- (int64_t)_countOfStackedChartsFromActivityOptions:(unint64_t)options
{
  v3 = 2 - (options & 1);
  if ((options & 2) == 0)
  {
    v3 = options & 1 ^ 3;
  }

  return v3 + ((options << 61) >> 63);
}

- (id)_lineColorForActivityValue:(int64_t)value
{
  if (value > 7)
  {
    hk_activityMoveGoalLineColor = 0;
  }

  else
  {
    if (((1 << value) & 0x33) != 0)
    {
      hk_activityMoveGoalLineColor = [MEMORY[0x1E69DC888] hk_activityMoveGoalLineColor];
    }

    else
    {
      if (((1 << value) & 0x44) != 0)
      {
        [MEMORY[0x1E69DC888] hk_activityExerciseGoalLineColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] hk_activityStandGoalLineColor];
      }
      hk_activityMoveGoalLineColor = ;
    }
  }

  return hk_activityMoveGoalLineColor;
}

- (id)_metGoalFillStyleForActivityValue:(int64_t)value useGradient:(BOOL)gradient
{
  gradientCopy = gradient;
  if (value > 7)
  {
    hk_activityMoveGoalMetGradientTopColor = 0;
    hk_activityMoveGoalMetGradientBottomColor = 0;
    v9 = 0;
    if (gradient)
    {
LABEL_9:
      v10 = [[HKGradientFillStyle alloc] initWithFirstColor:hk_activityMoveGoalMetGradientTopColor secondColor:hk_activityMoveGoalMetGradientBottomColor];
      goto LABEL_12;
    }
  }

  else
  {
    if (((1 << value) & 0x33) != 0)
    {
      hk_activityMoveGoalMetGradientTopColor = [MEMORY[0x1E69DC888] hk_activityMoveGoalMetGradientTopColor];
      hk_activityMoveGoalMetGradientBottomColor = [MEMORY[0x1E69DC888] hk_activityMoveGoalMetGradientBottomColor];
      hk_activityMoveGoalMetNonGradientColor = [MEMORY[0x1E69DC888] hk_activityMoveGoalMetNonGradientColor];
    }

    else
    {
      if (((1 << value) & 0x44) != 0)
      {
        hk_activityExerciseGoalMetGradientTopColor = [MEMORY[0x1E69DC888] hk_activityExerciseGoalMetGradientTopColor];
        [MEMORY[0x1E69DC888] hk_activityExerciseGoalMetGradientBottomColor];
      }

      else
      {
        hk_activityExerciseGoalMetGradientTopColor = [MEMORY[0x1E69DC888] hk_activityStandGoalMetGradientTopColor];
        [MEMORY[0x1E69DC888] hk_activityStandGoalMetGradientBottomColor];
      }
      hk_activityMoveGoalMetGradientBottomColor = ;
      hk_activityMoveGoalMetNonGradientColor = hk_activityExerciseGoalMetGradientTopColor;
      hk_activityMoveGoalMetGradientTopColor = hk_activityMoveGoalMetNonGradientColor;
    }

    v9 = hk_activityMoveGoalMetNonGradientColor;
    if (gradientCopy)
    {
      goto LABEL_9;
    }
  }

  v10 = objc_alloc_init(HKSolidFillStyle);
  [(HKGradientFillStyle *)v10 setColor:v9];
LABEL_12:

  return v10;
}

- (id)_missedGoalFillStyleForActivityValue:(int64_t)value useGradient:(BOOL)gradient
{
  gradientCopy = gradient;
  if (value > 7)
  {
    hk_activityMoveGoalMissedGradientTopColor = 0;
    hk_activityMoveGoalMissedGradientBottomColor = 0;
    v9 = 0;
    if (gradient)
    {
LABEL_9:
      v10 = [[HKGradientFillStyle alloc] initWithFirstColor:hk_activityMoveGoalMissedGradientTopColor secondColor:hk_activityMoveGoalMissedGradientBottomColor];
      goto LABEL_12;
    }
  }

  else
  {
    if (((1 << value) & 0x33) != 0)
    {
      hk_activityMoveGoalMissedGradientTopColor = [MEMORY[0x1E69DC888] hk_activityMoveGoalMissedGradientTopColor];
      hk_activityMoveGoalMissedGradientBottomColor = [MEMORY[0x1E69DC888] hk_activityMoveGoalMissedGradientBottomColor];
      hk_activityMoveGoalMissedNonGradientColor = [MEMORY[0x1E69DC888] hk_activityMoveGoalMissedNonGradientColor];
    }

    else
    {
      if (((1 << value) & 0x44) != 0)
      {
        hk_activityExerciseGoalMissedGradientTopColor = [MEMORY[0x1E69DC888] hk_activityExerciseGoalMissedGradientTopColor];
        [MEMORY[0x1E69DC888] hk_activityExerciseGoalMissedGradientBottomColor];
      }

      else
      {
        hk_activityExerciseGoalMissedGradientTopColor = [MEMORY[0x1E69DC888] hk_activityStandGoalMissedGradientTopColor];
        [MEMORY[0x1E69DC888] hk_activityStandGoalMissedGradientBottomColor];
      }
      hk_activityMoveGoalMissedGradientBottomColor = ;
      hk_activityMoveGoalMissedNonGradientColor = hk_activityExerciseGoalMissedGradientTopColor;
      hk_activityMoveGoalMissedGradientTopColor = hk_activityMoveGoalMissedNonGradientColor;
    }

    v9 = hk_activityMoveGoalMissedNonGradientColor;
    if (gradientCopy)
    {
      goto LABEL_9;
    }
  }

  v10 = objc_alloc_init(HKSolidFillStyle);
  [(HKGradientFillStyle *)v10 setColor:v9];
LABEL_12:

  return v10;
}

- (id)_pausedFillStyleForActivityValue:(int64_t)value
{
  v3 = objc_alloc_init(HKSolidFillStyle);
  hk_activityPausedColor = [MEMORY[0x1E69DC888] hk_activityPausedColor];
  [(HKSolidFillStyle *)v3 setColor:hk_activityPausedColor];

  return v3;
}

- (id)_titleForActivityValue:(int64_t)value wheelchairUseCharacteristicCache:(id)cache
{
  cacheCopy = cache;
  v6 = cacheCopy;
  if (value <= 7)
  {
    if (((1 << value) & 0x33) != 0)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v8 = v7;
      v9 = @"MOVE_CHART_TITLE";
    }

    else
    {
      if (((1 << value) & 0x44) == 0)
      {
        v8 = [MEMORY[0x1E696C1C0] localizationStringSuffixForWheelchairUser:{objc_msgSend(cacheCopy, "isWheelchairUser")}];
        v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v12 = [@"STAND_CHART_TITLE" stringByAppendingString:v8];
        v10 = [v11 localizedStringForKey:v12 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

        goto LABEL_8;
      }

      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v8 = v7;
      v9 = @"EXERCISE_CHART_TITLE";
    }

    v10 = [v7 localizedStringForKey:v9 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
LABEL_8:

    goto LABEL_9;
  }

  v10 = @"None";
LABEL_9:

  return v10;
}

- (int64_t)_representativeDataTypeForActivityValue:(int64_t)value
{
  if (value > 7)
  {
    return 3;
  }

  else
  {
    return qword_1C3D5D988[value];
  }
}

- (id)_unitForActivityValue:(int64_t)value displayTypeController:(id)controller unitPreferenceController:(id)preferenceController
{
  preferenceControllerCopy = preferenceController;
  v8 = _DisplayTypeForActivityValue(value, controller);
  v9 = [preferenceControllerCopy localizedDisplayNameForDisplayType:v8];

  return v9;
}

- (id)_displayTypeForActivityValue:(int64_t)value yAxis:(id)axis dataProvider:(id)provider displayTypeController:(id)controller unitPreferenceController:(id)preferenceController wheelchairUseCharacteristicCache:(id)cache timescopeToSummariesTable:(id)table activityOptions:(unint64_t)self0
{
  providerCopy = provider;
  controllerCopy = controller;
  preferenceControllerCopy = preferenceController;
  tableCopy = table;
  v39 = tableCopy;
  v40 = providerCopy;
  if (tableCopy)
  {
    v20 = tableCopy;
    v21 = MEMORY[0x1E695DEE8];
    cacheCopy = cache;
    axisCopy = axis;
    currentCalendar = [v21 currentCalendar];
    v25 = controllerCopy;
    v26 = [[_ActivitySourceDelegateSharing alloc] initWithTimescopeToSummariesTable:v20 activityValue:value displayTypeController:controllerCopy unitPreferenceController:preferenceControllerCopy calendar:currentCalendar];
  }

  else
  {
    cacheCopy2 = cache;
    axisCopy2 = axis;
    v25 = controllerCopy;
    v26 = [[_ActivitySourceDelegateProvider alloc] initWithDataProvider:providerCopy activityValue:value displayTypeController:controllerCopy unitPreferenceController:preferenceControllerCopy];
  }

  v38 = v26;
  v29 = [[HKDateRangeDataSource alloc] initWithSourceDelegate:v26];
  v30 = preferenceControllerCopy;
  v31 = [(HKInteractiveChartActivityController *)self _activitySeriesForActivityValue:value wheelchairUseCharacteristicCache:cache unitPreferenceController:preferenceControllerCopy displayTypeController:v25 activityOptions:options];
  [v31 setYAxis:axis];

  [v31 setDataSource:v29];
  v32 = objc_alloc_init(HKInteractiveChartGenericStatFormatter);
  [(HKInteractiveChartGenericStatFormatter *)v32 setOverrideStatFormatterItemOptions:&unk_1F4381A98];
  v33 = [(HKInteractiveChartActivityController *)self _unitForActivityValue:value displayTypeController:v25 unitPreferenceController:v30];
  v34 = [(HKInteractiveChartActivityController *)self _representativeDataTypeForActivityValue:value];
  v35 = [(HKInteractiveChartActivityController *)self _titleForActivityValue:value wheelchairUseCharacteristicCache:cache];

  v36 = [[HKInteractiveChartDisplayType alloc] initWithGraphSeries:v31 displayName:v35 unitName:v33 valueFormatter:v32 dataTypeCode:v34];

  return v36;
}

- (id)_activitySeriesForActivityValue:(int64_t)value wheelchairUseCharacteristicCache:(id)cache unitPreferenceController:(id)controller displayTypeController:(id)typeController activityOptions:(unint64_t)options
{
  cacheCopy = cache;
  controllerCopy = controller;
  typeControllerCopy = typeController;
  v15 = [(HKInteractiveChartActivityController *)self _lineColorForActivityValue:value];
  v16 = [(HKInteractiveChartActivityController *)self _countOfStackedChartsFromActivityOptions:options];
  if (v16 < 2)
  {
    v17 = &stru_1F42FFBE0;
  }

  else
  {
    v17 = [(HKInteractiveChartActivityController *)self _titleForActivityValue:value wheelchairUseCharacteristicCache:cacheCopy];
  }

  if ((value & 0xFFFFFFFFFFFFFFFCLL) == 4)
  {
    v18 = [(HKInteractiveChartActivityController *)self _generateActivityGoalLineSeriesWithColor:v15];
  }

  else
  {
    v28 = typeControllerCopy;
    v19 = controllerCopy;
    v20 = cacheCopy;
    v21 = v16 < 2;
    v22 = v16 > 1;
    v23 = [(HKInteractiveChartActivityController *)self _metGoalFillStyleForActivityValue:value useGradient:v22];
    v24 = [(HKInteractiveChartActivityController *)self _missedGoalFillStyleForActivityValue:value useGradient:v22];
    v25 = [(HKInteractiveChartActivityController *)self _pausedFillStyleForActivityValue:value];
    LOBYTE(v27) = v21;
    cacheCopy = v20;
    controllerCopy = v19;
    typeControllerCopy = v28;
    v18 = [(HKInteractiveChartActivityController *)self _generateActivityBarSeriesWithColor:v15 legendTitle:v17 metGoalFillStyle:v23 missedGoalFillStyle:v24 pausedFillStyle:v25 activityValue:value unitPreferenceController:controllerCopy displayTypeController:v28 drawLegendsInsideSeries:v27];
  }

  return v18;
}

- (id)_zeroStringForActivityValue:(int64_t)value displayTypeController:(id)controller unitPreferenceController:(id)preferenceController
{
  controllerCopy = controller;
  preferenceControllerCopy = preferenceController;
  if ((value - 1) < 2)
  {
    minuteUnit = [MEMORY[0x1E696C510] minuteUnit];
LABEL_6:
    v10 = minuteUnit;
    v11 = [preferenceControllerCopy localizedDisplayNameForUnit:minuteUnit value:&unk_1F43843D8];
    goto LABEL_8;
  }

  if (value)
  {
    if (value != 3)
    {
      goto LABEL_10;
    }

    minuteUnit = [MEMORY[0x1E696C510] hourUnit];
    goto LABEL_6;
  }

  v10 = _DisplayTypeForActivityValue(0, controllerCopy);
  v12 = [preferenceControllerCopy unitForDisplayType:v10];
  v11 = [preferenceControllerCopy localizedDisplayNameForUnit:v12 value:&unk_1F43843D8];

LABEL_8:
  if (v11)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0 %@", v11];

    goto LABEL_11;
  }

LABEL_10:
  v13 = &stru_1F42FFBE0;
LABEL_11:

  return v13;
}

- (id)_activityYAxisForActivityValue:(int64_t)value zeroOnly:(BOOL)only stackOffset:(int64_t)offset bottomLabelPadding:(double)padding displayTypeController:(id)controller unitPreferenceController:(id)preferenceController
{
  onlyCopy = only;
  controllerCopy = controller;
  preferenceControllerCopy = preferenceController;
  v14 = objc_alloc_init(HKSolidFillStyle);
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKSolidFillStyle *)v14 setColor:systemBackgroundColor];

  v16 = objc_alloc_init(HKAxisStyle);
  v17 = HKDefaultChartYAxisColor();
  hk_chartAxisLabelFont = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
  v19 = [HKAxisLabelStyle labelStyleWithColor:v17 font:hk_chartAxisLabelFont horizontalAlignment:2 verticalAlignment:2];
  [(HKAxisStyle *)v16 setLabelStyle:v19];

  [(HKAxisStyle *)v16 setTickPositions:1];
  hk_chartGrayGraphColor = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v21 = [HKStrokeStyle strokeStyleWithColor:hk_chartGrayGraphColor lineWidth:2.0];
  [(HKAxisStyle *)v16 setAxisLineStyle:v21];

  [(HKAxisStyle *)v16 setFillStyle:v14];
  hk_chartGrayGraphColor2 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v23 = [HKStrokeStyle strokeStyleWithColor:hk_chartGrayGraphColor2 lineWidth:HKUIOnePixel()];

  [(HKAxisStyle *)v16 setBorderStyleForFill:v23];
  [(HKAxisStyle *)v16 setFillInnerPadding:4.0];
  [(HKAxisStyle *)v16 setFillOuterPadding:4.0];
  [(HKAxisStyle *)v16 setLocation:1];
  [(HKAxisStyle *)v16 setShowGridLines:1];
  hk_chartGrayGraphColor3 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v25 = [hk_chartGrayGraphColor3 colorWithAlphaComponent:0.5];
  v26 = [HKStrokeStyle strokeStyleWithColor:v25 lineWidth:0.5];
  [(HKAxisStyle *)v16 setGridLineStyle:v26];

  v27 = objc_alloc_init(HKNumericAxisConfiguration);
  [(HKAxisConfiguration *)v27 setPreferredStyle:v16];
  if (onlyCopy)
  {
    v28 = [(HKInteractiveChartActivityController *)self _zeroStringForActivityValue:value displayTypeController:controllerCopy unitPreferenceController:preferenceControllerCopy];
    [(HKNumericAxisConfiguration *)v27 setTopVerticalLabelPadding:0.0];
    [(HKNumericAxisConfiguration *)v27 setBottomVerticalLabelPadding:padding];
    [(HKAxisConfiguration *)v27 setMinLabels:2];
    [(HKAxisConfiguration *)v27 setMaxLabels:20];
    v29 = [[HKNumericAxisZeroOnly alloc] initWithZeroLabel:v28 axisConfiguration:v27];
  }

  else
  {
    [(HKNumericAxisConfiguration *)v27 setTopVerticalLabelPadding:10.0];
    [(HKNumericAxisConfiguration *)v27 setBottomVerticalLabelPadding:padding];
    [(HKAxisConfiguration *)v27 setMinLabels:2];
    [(HKAxisConfiguration *)v27 setMaxLabels:3];
    v28 = [(HKInteractiveChartActivityController *)self _displayTypeForUnits:value displayTypeController:controllerCopy];
    if (v28)
    {
      v30 = [[HKAxisLabelDimensionDisplayType alloc] initWithDisplayType:v28 unitPreferencesController:preferenceControllerCopy];
      [(HKNumericAxisConfiguration *)v27 setLabelDimension:v30];
    }

    v29 = [[HKNumericAxis alloc] initWithConfiguration:v27];
  }

  v31 = v29;

  return v31;
}

- (id)_displayTypeForUnits:(int64_t)units displayTypeController:(id)controller
{
  controllerCopy = controller;
  v6 = controllerCopy;
  switch(units)
  {
    case 0:
      v7 = &unk_1F43843F0;
      goto LABEL_7;
    case 3:
      v7 = &unk_1F4384420;
      goto LABEL_7;
    case 2:
      v7 = &unk_1F4384408;
LABEL_7:
      v8 = [controllerCopy displayTypeWithIdentifier:v7];
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_generateActivityBarSeriesWithColor:(id)color legendTitle:(id)title metGoalFillStyle:(id)style missedGoalFillStyle:(id)fillStyle pausedFillStyle:(id)pausedFillStyle activityValue:(int64_t)value unitPreferenceController:(id)controller displayTypeController:(id)self0 drawLegendsInsideSeries:(BOOL)self1
{
  v34[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  titleCopy = title;
  typeControllerCopy = typeController;
  controllerCopy = controller;
  pausedFillStyleCopy = pausedFillStyle;
  fillStyleCopy = fillStyle;
  styleCopy = style;
  v23 = [[_ActivityBarSeries alloc] initWithUnitPreferenceController:controllerCopy activityBarDelegate:self displayTypeController:typeControllerCopy];

  [(_ActivityBarSeries *)v23 setActivityDisplayTypeIdentifier:_RepresentativeDisplayTypeIdentifierForActivityValue(value)];
  v24 = objc_alloc_init(HKStrokeStyle);
  v25 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  [(HKStrokeStyle *)v24 setStrokeColor:v25];

  [(HKStrokeStyle *)v24 setLineWidth:3.0];
  [(HKStrokeStyle *)v24 setBlendMode:22];
  [(HKBarSeries *)v23 setUnselectedStrokeStyle:v24];
  [(HKBarSeries *)v23 setUnselectedFillStyle:styleCopy];

  [(_ActivityBarSeries *)v23 setMissedGoalUnselectedFillStyle:fillStyleCopy];
  [(_ActivityBarSeries *)v23 setPausedUnselectedFillStyle:pausedFillStyleCopy];

  [(HKBarSeries *)v23 setSelectedFillStyle:0];
  [(HKBarSeries *)v23 setSelectedStrokeStyle:0];
  [(HKBarSeries *)v23 setCornerRadii:1.5, 1.5];
  if (titleCopy)
  {
    v26 = [HKLegendEntry legendEntryWithTitle:titleCopy labelColor:colorCopy];
    v34[0] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    [(HKGraphSeries *)v23 setTitleLegendEntries:v27];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v29 = [HKLegendEntry legendEntryWithTitle:&stru_1F42FFBE0 labelColor:labelColor];

    v33 = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    [(HKGraphSeries *)v23 setDetailLegendEntries:v30];

    [(HKGraphSeries *)v23 setDrawLegendInsideSeries:series];
  }

  return v23;
}

- (id)_generateActivityGoalLineSeriesWithColor:(id)color
{
  colorCopy = color;
  v4 = [[_ActivityGoalLineSeries alloc] initWithColor:colorCopy];

  return v4;
}

+ (id)firstActivitySeriesForGraphView:(id)view
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allSeries = [view allSeries];
  v4 = [allSeries countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(allSeries);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [allSeries countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)configureDisplayTypes:(id)types timeScope:(int64_t)scope stackOffset:(int64_t)offset
{
  v5 = [(HKInteractiveChartViewController *)self primaryGraphViewController:types];
  graphView = [v5 graphView];

  [graphView setScrollingOptions:1];
}

- (id)makeAnnotationDataSource
{
  activityAnnotationDataSource = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
  [(HKInteractiveChartActivityController *)self _handleAlternateAnnotationDataViewDataSource:activityAnnotationDataSource];

  return [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
}

- (void)_handleAlternateAnnotationDataViewDataSource:(id)source
{
  sourceCopy = source;
  v6.receiver = self;
  v6.super_class = HKInteractiveChartActivityController;
  makeAnnotationDataSource = [(HKInteractiveChartViewController *)&v6 makeAnnotationDataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [sourceCopy setStandardAnnotationViewDataSource:makeAnnotationDataSource];
  }
}

- (void)updateSelectionAnnotationDataSourceForContext:(id)context displayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution
{
  contextCopy = context;
  typeCopy = type;
  userInfo = [contextCopy userInfo];
  firstObject = [userInfo firstObject];

  if (firstObject && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    activityAnnotationDataSource = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
    [activityAnnotationDataSource useActivityAnnotationViewDataSource];

    activitySummaryData = [firstObject activitySummaryData];
    activityAnnotationDataSource2 = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
    [activityAnnotationDataSource2 setActivitySummary:activitySummaryData];

    primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
    dateZoom = [primaryGraphViewController dateZoom];
    activityAnnotationDataSource3 = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
    [activityAnnotationDataSource3 setTimeScope:dateZoom];
  }

  else
  {
    activitySummaryData = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
    primaryGraphViewController = [(HKInteractiveChartViewController *)self healthStore];
    [activitySummaryData useStandardAnnotationViewDataSourceForContext:contextCopy displayType:typeCopy timeScope:scope resolution:resolution healthStore:primaryGraphViewController viewController:self];
  }
}

- (id)lollipopAnnotationColor
{
  activityAnnotationDataSource = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
  useStandardAnnotationDataSource = [activityAnnotationDataSource useStandardAnnotationDataSource];

  if (useStandardAnnotationDataSource)
  {
    [MEMORY[0x1E69DC888] hk_chartLollipopBackgroundColor];
  }

  else
  {
    [(HKInteractiveChartActivityController *)self _activityLollipopBackgroundColor];
  }
  v5 = ;

  return v5;
}

- (id)_activityLollipopBackgroundColor
{
  traitCollection = [(HKInteractiveChartActivityController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle >= 2)
  {
    if (userInterfaceStyle == 2)
    {
      [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] hk_chartLollipopBackgroundColor];
    }
    blackColor = ;
  }

  else
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  return blackColor;
}

- (id)descriptionSeriesForGraphView:(id)view
{
  allSeries = [view allSeries];
  firstObject = [allSeries firstObject];

  return firstObject;
}

- (id)descriptionSpansForGraphView:(id)view timeScope:(int64_t)scope
{
  v24[3] = *MEMORY[0x1E69E9840];
  moveValueDisplayType = [(HKInteractiveChartActivityController *)self moveValueDisplayType];
  activityAnnotationDataSource = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
  activityMoveTitle = [activityAnnotationDataSource activityMoveTitle];
  v9 = [(HKInteractiveChartActivityController *)self _spanForValueDisplayType:moveValueDisplayType timeScope:scope title:activityMoveTitle];

  exerciseValueDisplayType = [(HKInteractiveChartActivityController *)self exerciseValueDisplayType];
  activityAnnotationDataSource2 = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
  activityExerciseTitle = [activityAnnotationDataSource2 activityExerciseTitle];
  v13 = [(HKInteractiveChartActivityController *)self _spanForValueDisplayType:exerciseValueDisplayType timeScope:scope title:activityExerciseTitle];

  standValueDisplayType = [(HKInteractiveChartActivityController *)self standValueDisplayType];
  activityAnnotationDataSource3 = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
  activityStandTitle = [activityAnnotationDataSource3 activityStandTitle];
  v17 = [(HKInteractiveChartActivityController *)self _spanForValueDisplayType:standValueDisplayType timeScope:scope title:activityStandTitle];

  dataSeriesTitle = [v9 dataSeriesTitle];
  v23[0] = dataSeriesTitle;
  v24[0] = v9;
  dataSeriesTitle2 = [v13 dataSeriesTitle];
  v23[1] = dataSeriesTitle2;
  v24[1] = v13;
  dataSeriesTitle3 = [v17 dataSeriesTitle];
  v23[2] = dataSeriesTitle3;
  v24[2] = v17;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

  return v21;
}

- (id)_spanForValueDisplayType:(id)type timeScope:(int64_t)scope title:(id)title
{
  titleCopy = title;
  typeCopy = type;
  v10 = [typeCopy graphSeriesForTimeScope:scope];
  visibleValueRange = [v10 visibleValueRange];

  minValue = [visibleValueRange minValue];
  v13 = [(HKInteractiveChartActivityController *)self _rangeValueAsNumber:minValue];

  maxValue = [visibleValueRange maxValue];
  v15 = [(HKInteractiveChartActivityController *)self _rangeValueAsNumber:maxValue];

  unitPreferenceController = [(HKInteractiveChartViewController *)self unitPreferenceController];
  v17 = [unitPreferenceController localizedDisplayNameForDisplayType:typeCopy];

  v18 = [[HKAccessibilitySpan alloc] initWithTitle:titleCopy seriesType:2 dataComprehensionMinYValue:v13 dataComprehensionMaxYValue:v15 dataComprehensionUnitForChart:v17];

  return v18;
}

- (id)_rangeValueAsNumber:(id)number
{
  numberCopy = number;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = numberCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)descriptionForChartData:(id)data timeScope:(int64_t)scope
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = dataCopy;
    v8 = [HKActivitySummaryAnnotationViewDataSource alloc];
    displayTypeController = [(HKInteractiveChartViewController *)self displayTypeController];
    unitPreferenceController = [(HKInteractiveChartViewController *)self unitPreferenceController];
    wheelchairUseCharacteristicCache = [(HKInteractiveChartActivityController *)self wheelchairUseCharacteristicCache];
    dateCache = [(HKInteractiveChartViewController *)self dateCache];
    activityOptions = [(HKInteractiveChartActivityController *)self activityOptions];
    scopeCopy = scope;
    annotationDataSourceFirstWeekday = [(HKInteractiveChartViewController *)self annotationDataSourceFirstWeekday];
    LOBYTE(v19) = [(HKInteractiveChartActivityController *)self isChartSharingContext];
    v15 = [(HKActivitySummaryAnnotationViewDataSource *)v8 initWithDisplayTypeController:displayTypeController unitController:unitPreferenceController wheelchairUseCharacteristicCache:wheelchairUseCharacteristicCache dateCache:dateCache currentValueViewContext:0 activityOptions:activityOptions firstWeekday:annotationDataSourceFirstWeekday isChartSharingContext:v19];

    [(HKInteractiveChartActivityController *)self _handleAlternateAnnotationDataViewDataSource:v15];
    activitySummaryData = [v7 activitySummaryData];

    [(HKActivitySummaryAnnotationViewDataSource *)v15 setActivitySummary:activitySummaryData];
    [(HKActivitySummaryAnnotationViewDataSource *)v15 setTimeScope:scopeCopy];
    descriptionsForActivitySummary = [(HKActivitySummaryAnnotationViewDataSource *)v15 descriptionsForActivitySummary];
  }

  else
  {
    descriptionsForActivitySummary = MEMORY[0x1E695E0F0];
  }

  return descriptionsForActivitySummary;
}

- (BOOL)chartDataIsAvailable
{
  activityDataProvider = [(HKInteractiveChartActivityController *)self activityDataProvider];
  activitySummariesAreLoading = [activityDataProvider activitySummariesAreLoading];

  return activitySummariesAreLoading ^ 1;
}

- (id)dataSourceForCurrentValueViewString
{
  activityCurrentValueView = [(HKInteractiveChartActivityController *)self activityCurrentValueView];
  currentValueDataSource = [activityCurrentValueView currentValueDataSource];

  return currentValueDataSource;
}

- (id)makeCurrentValueView
{
  v3 = [_ActivityCurrentValueView alloc];
  displayTypeController = [(HKInteractiveChartViewController *)self displayTypeController];
  unitPreferenceController = [(HKInteractiveChartViewController *)self unitPreferenceController];
  wheelchairUseCharacteristicCache = [(HKInteractiveChartActivityController *)self wheelchairUseCharacteristicCache];
  activityDataProvider = [(HKInteractiveChartActivityController *)self activityDataProvider];
  activityOptions = [(HKInteractiveChartActivityController *)self activityOptions];
  annotationDataSourceFirstWeekday = [(HKInteractiveChartViewController *)self annotationDataSourceFirstWeekday];
  LOBYTE(v12) = [(HKInteractiveChartActivityController *)self isChartSharingContext];
  v10 = [(_ActivityCurrentValueView *)v3 initWithDisplayTypeController:displayTypeController unitPreferenceController:unitPreferenceController wheelchairUseCharacteristicCache:wheelchairUseCharacteristicCache currentValueViewCallbacks:self activitySummaryDataProvider:activityDataProvider activityOptions:activityOptions firstWeekday:annotationDataSourceFirstWeekday isChartSharingContext:v12];
  [(HKInteractiveChartActivityController *)self setActivityCurrentValueView:v10];

  return [(HKInteractiveChartActivityController *)self activityCurrentValueView];
}

- (void)updateCurrentValueView:(id)view graphView:(id)graphView timeScope:(int64_t)scope showInfoButton:(BOOL)button
{
  graphViewCopy = graphView;
  viewCopy = view;
  activityCurrentValueView = [(HKInteractiveChartActivityController *)self activityCurrentValueView];

  if (activityCurrentValueView == viewCopy)
  {
    activityCurrentValueView2 = [(HKInteractiveChartActivityController *)self activityCurrentValueView];
    [activityCurrentValueView2 updateWithGraphView:graphViewCopy timeScope:scope];
  }
}

- (void)setCurrentValueViewCallbacks:(id)callbacks
{
  [(HKInteractiveChartActivityController *)self setActivityCurrentValueViewCallbacks:callbacks];
  v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tappedOnCurrentValueView_];
  activityCurrentValueView = [(HKInteractiveChartActivityController *)self activityCurrentValueView];
  [activityCurrentValueView addGestureRecognizer:v6];

  activityCurrentValueView2 = [(HKInteractiveChartActivityController *)self activityCurrentValueView];
  [activityCurrentValueView2 setUserInteractionEnabled:1];
}

- (void)tappedOnCurrentValueView:(id)view
{
  activityCurrentValueViewCallbacks = [(HKInteractiveChartActivityController *)self activityCurrentValueViewCallbacks];
  activityCurrentValueView = [(HKInteractiveChartActivityController *)self activityCurrentValueView];
  [activityCurrentValueViewCallbacks didTapOnDateFromCurrentValueView:activityCurrentValueView];
}

- (id)calendarQueryDisplayType
{
  displayTypeController = [(HKInteractiveChartViewController *)self displayTypeController];
  v3 = [displayTypeController displayTypeWithIdentifier:&unk_1F4384438];

  return v3;
}

- (id)seriesSelectionLineColorForGraphView:(id)view
{
  traitCollection = [(HKInteractiveChartActivityController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle >= 2)
  {
    if (userInterfaceStyle == 2)
    {
      tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    }
  }

  else
  {
    tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] blackColor];
  }

  return tertiarySystemBackgroundColor;
}

- (id)activitySummaryForCurrentRange
{
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];
  effectiveVisibleRangeActive = [graphView effectiveVisibleRangeActive];

  v6 = [(HKInteractiveChartActivityController *)self _dayActivitySummaryForDateRange:effectiveVisibleRangeActive];

  return v6;
}

- (id)_dayActivitySummaryForDateRange:(id)range
{
  v23 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  activityDataProvider = [(HKInteractiveChartActivityController *)self activityDataProvider];
  v6 = [activityDataProvider activitySummariesForDateRange:rangeCopy timeScope:5];

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  maxValue = [rangeCopy maxValue];
  v9 = [currentCalendar dateByAddingUnit:64 value:-1 toDate:maxValue options:0];

  v10 = [currentCalendar hk_activitySummaryDateComponentsFromDate:v9];
  [v10 setCalendar:0];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = *v19;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = [v15 dateComponentsForCalendar:{currentCalendar, v18}];
        [v16 setCalendar:0];
        if ([v16 isEqual:v10])
        {
          v12 = v15;

          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v12;
}

+ (id)_codableActivitySummaryDataFromSummaries:(id)summaries
{
  v18 = *MEMORY[0x1E69E9840];
  summariesCopy = summaries;
  v5 = objc_alloc_init(HKCodableActivitySummaryCollection);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = summariesCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self _codableActivitySummaryFromSummary:{*(*(&v13 + 1) + 8 * i), v13}];
        [(HKCodableActivitySummaryCollection *)v5 addActivitySummaryEntry:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_codableActivitySummaryFromSummary:(id)summary
{
  summaryCopy = summary;
  v6 = objc_alloc_init(HKCodableActivitySummaryEntry);
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [summaryCopy dateComponentsForCalendar:currentCalendar];
  hour = [v8 hour];

  if (hour == 0x7FFFFFFFFFFFFFFFLL)
  {
    _gregorianDateComponents = [summaryCopy _gregorianDateComponents];
    calendar = [_gregorianDateComponents calendar];

    if (!calendar)
    {
      v12 = [_gregorianDateComponents copy];

      hk_gregorianCalendarWithUTCTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithUTCTimeZone];
      [v12 setCalendar:hk_gregorianCalendarWithUTCTimeZone];

      _gregorianDateComponents = v12;
    }

    hkui_codableDateComponents = [_gregorianDateComponents hkui_codableDateComponents];
    [(HKCodableActivitySummaryEntry *)v6 setGregorianDateComponents:hkui_codableDateComponents];

    -[HKCodableActivitySummaryEntry setActivityMoveMode:](v6, "setActivityMoveMode:", [summaryCopy activityMoveMode]);
    activeEnergyBurned = [summaryCopy activeEnergyBurned];

    if (activeEnergyBurned)
    {
      activeEnergyBurned2 = [summaryCopy activeEnergyBurned];
      codableRepresentation = [activeEnergyBurned2 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setActiveEnergyBurned:codableRepresentation];
    }

    appleMoveTime = [summaryCopy appleMoveTime];

    if (appleMoveTime)
    {
      appleMoveTime2 = [summaryCopy appleMoveTime];
      codableRepresentation2 = [appleMoveTime2 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setAppleMoveTime:codableRepresentation2];
    }

    appleExerciseTime = [summaryCopy appleExerciseTime];

    if (appleExerciseTime)
    {
      appleExerciseTime2 = [summaryCopy appleExerciseTime];
      codableRepresentation3 = [appleExerciseTime2 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setAppleExerciseTime:codableRepresentation3];
    }

    appleStandHours = [summaryCopy appleStandHours];

    if (appleStandHours)
    {
      appleStandHours2 = [summaryCopy appleStandHours];
      codableRepresentation4 = [appleStandHours2 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setAppleStandHours:codableRepresentation4];
    }

    activeEnergyBurnedGoal = [summaryCopy activeEnergyBurnedGoal];

    if (activeEnergyBurnedGoal)
    {
      activeEnergyBurnedGoal2 = [summaryCopy activeEnergyBurnedGoal];
      codableRepresentation5 = [activeEnergyBurnedGoal2 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setActiveEnergyBurnedGoal:codableRepresentation5];
    }

    appleMoveTimeGoal = [summaryCopy appleMoveTimeGoal];

    if (appleMoveTimeGoal)
    {
      appleMoveTimeGoal2 = [summaryCopy appleMoveTimeGoal];
      codableRepresentation6 = [appleMoveTimeGoal2 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setAppleMoveTimeGoal:codableRepresentation6];
    }

    exerciseTimeGoal = [summaryCopy exerciseTimeGoal];

    if (exerciseTimeGoal)
    {
      exerciseTimeGoal2 = [summaryCopy exerciseTimeGoal];
      codableRepresentation7 = [exerciseTimeGoal2 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setAppleExerciseTimeGoal:codableRepresentation7];
    }

    standHoursGoal = [summaryCopy standHoursGoal];

    if (standHoursGoal)
    {
      standHoursGoal2 = [summaryCopy standHoursGoal];
      codableRepresentation8 = [standHoursGoal2 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setAppleStandHoursGoal:codableRepresentation8];
    }

    -[HKCodableActivitySummaryEntry setPaused:](v6, "setPaused:", [summaryCopy isPaused]);
  }

  else
  {
    _gregorianDateComponents = [MEMORY[0x1E696AAA8] currentHandler];
    [_gregorianDateComponents handleFailureInMethod:a2 object:self file:@"HKInteractiveChartActivityController.m" lineNumber:1298 description:@"There is no support for encoding hourly activity summaries"];
  }

  return v6;
}

+ (id)_activitySummariesFromCodableCollection:(id)collection
{
  v18 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  activitySummaryEntrys = [collectionCopy activitySummaryEntrys];
  v7 = [activitySummaryEntrys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(activitySummaryEntrys);
        }

        v11 = [self _activitySummaryFromCodableSummaryEntry:*(*(&v13 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [activitySummaryEntrys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_activitySummaryFromCodableSummaryEntry:(id)entry
{
  entryCopy = entry;
  v4 = objc_alloc_init(MEMORY[0x1E696BEC8]);
  if ([entryCopy hasGregorianDateComponents])
  {
    v5 = MEMORY[0x1E695DF10];
    gregorianDateComponents = [entryCopy gregorianDateComponents];
    v7 = [v5 hkui_dateComponentsWithCodableDateComponents:gregorianDateComponents];
    [v4 _setGregorianDateComponents:v7];
  }

  if ([entryCopy hasActivityMoveMode])
  {
    [v4 setActivityMoveMode:{objc_msgSend(entryCopy, "activityMoveMode")}];
  }

  if ([entryCopy hasActiveEnergyBurned])
  {
    v8 = MEMORY[0x1E696C348];
    activeEnergyBurned = [entryCopy activeEnergyBurned];
    v10 = [v8 createWithCodableQuantity:activeEnergyBurned];
    [v4 setActiveEnergyBurned:v10];
  }

  if ([entryCopy hasAppleMoveTime])
  {
    v11 = MEMORY[0x1E696C348];
    appleMoveTime = [entryCopy appleMoveTime];
    v13 = [v11 createWithCodableQuantity:appleMoveTime];
    [v4 setAppleMoveTime:v13];
  }

  if ([entryCopy hasAppleExerciseTime])
  {
    v14 = MEMORY[0x1E696C348];
    appleExerciseTime = [entryCopy appleExerciseTime];
    v16 = [v14 createWithCodableQuantity:appleExerciseTime];
    [v4 setAppleExerciseTime:v16];
  }

  if ([entryCopy hasAppleStandHours])
  {
    v17 = MEMORY[0x1E696C348];
    appleStandHours = [entryCopy appleStandHours];
    v19 = [v17 createWithCodableQuantity:appleStandHours];
    [v4 setAppleStandHours:v19];
  }

  if ([entryCopy hasActiveEnergyBurnedGoal])
  {
    v20 = MEMORY[0x1E696C348];
    activeEnergyBurnedGoal = [entryCopy activeEnergyBurnedGoal];
    v22 = [v20 createWithCodableQuantity:activeEnergyBurnedGoal];
    [v4 setActiveEnergyBurnedGoal:v22];
  }

  appleMoveTimeGoal = [entryCopy appleMoveTimeGoal];

  if (appleMoveTimeGoal)
  {
    v24 = MEMORY[0x1E696C348];
    appleMoveTimeGoal2 = [entryCopy appleMoveTimeGoal];
    v26 = [v24 createWithCodableQuantity:appleMoveTimeGoal2];
    [v4 setAppleMoveTimeGoal:v26];
  }

  if ([entryCopy hasAppleExerciseTimeGoal])
  {
    v27 = MEMORY[0x1E696C348];
    appleExerciseTimeGoal = [entryCopy appleExerciseTimeGoal];
    v29 = [v27 createWithCodableQuantity:appleExerciseTimeGoal];
    [v4 setExerciseTimeGoal:v29];
  }

  if ([entryCopy hasAppleStandHoursGoal])
  {
    v30 = MEMORY[0x1E696C348];
    appleStandHoursGoal = [entryCopy appleStandHoursGoal];
    v32 = [v30 createWithCodableQuantity:appleStandHoursGoal];
    [v4 setStandHoursGoal:v32];
  }

  if ([entryCopy hasPaused])
  {
    paused = [entryCopy paused];
  }

  else
  {
    paused = 0;
  }

  [v4 setPaused:paused];

  return v4;
}

- (HKInteractiveChartCurrentValueViewCallbacks)activityCurrentValueViewCallbacks
{
  WeakRetained = objc_loadWeakRetained(&self->_activityCurrentValueViewCallbacks);

  return WeakRetained;
}

- (void)initWithHealthStore:(uint64_t)a1 unitPreferenceController:(uint64_t)a2 dateCache:chartDataCacheController:selectedTimeScopeController:sampleTypeDateRangeController:wheelchairUseCharacteristicCache:initialXValue:activityMoveMode:activityOptions:chartSharableModel:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKInteractiveChartActivityController.m" lineNumber:469 description:@"Unexpected stacked charts count for activity summary"];
}

@end