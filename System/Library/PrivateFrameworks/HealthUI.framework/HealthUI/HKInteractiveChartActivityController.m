@interface HKInteractiveChartActivityController
+ (id)_activitySummariesFromCodableCollection:(id)a3;
+ (id)_activitySummaryFromCodableSummaryEntry:(id)a3;
+ (id)_codableActivitySummaryDataFromSummaries:(id)a3;
+ (id)_codableActivitySummaryFromSummary:(id)a3;
+ (id)firstActivitySeriesForGraphView:(id)a3;
+ (void)encodeChartDataWithHealthStore:(id)a3 dateCache:(id)a4 displayTypeController:(id)a5 unitController:(id)a6 activityMoveMode:(int64_t)a7 monthDateInterval:(id)a8 sixMonthDateInterval:(id)a9 completion:(id)a10;
- (BOOL)chartDataIsAvailable;
- (HKInteractiveChartActivityController)initWithHealthStore:(id)a3 unitPreferenceController:(id)a4 dateCache:(id)a5 chartDataCacheController:(id)a6 selectedTimeScopeController:(id)a7 sampleTypeDateRangeController:(id)a8 wheelchairUseCharacteristicCache:(id)a9 initialXValue:(id)a10 activityMoveMode:(int64_t)a11 activityOptions:(unint64_t)a12 chartSharableModel:(id)a13;
- (HKInteractiveChartCurrentValueViewCallbacks)activityCurrentValueViewCallbacks;
- (id)_activityLollipopBackgroundColor;
- (id)_activitySeriesForActivityValue:(int64_t)a3 wheelchairUseCharacteristicCache:(id)a4 unitPreferenceController:(id)a5 displayTypeController:(id)a6 activityOptions:(unint64_t)a7;
- (id)_activityYAxisForActivityValue:(int64_t)a3 zeroOnly:(BOOL)a4 stackOffset:(int64_t)a5 bottomLabelPadding:(double)a6 displayTypeController:(id)a7 unitPreferenceController:(id)a8;
- (id)_buildSummariesTableFromSharableModel:(id)a3;
- (id)_dayActivitySummaryForDateRange:(id)a3;
- (id)_decodeActivitySummariesFromQueryData:(id)a3;
- (id)_displayTypeForActivityValue:(int64_t)a3 yAxis:(id)a4 dataProvider:(id)a5 displayTypeController:(id)a6 unitPreferenceController:(id)a7 wheelchairUseCharacteristicCache:(id)a8 timescopeToSummariesTable:(id)a9 activityOptions:(unint64_t)a10;
- (id)_displayTypeForUnits:(int64_t)a3 displayTypeController:(id)a4;
- (id)_generateActivityBarSeriesWithColor:(id)a3 legendTitle:(id)a4 metGoalFillStyle:(id)a5 missedGoalFillStyle:(id)a6 pausedFillStyle:(id)a7 activityValue:(int64_t)a8 unitPreferenceController:(id)a9 displayTypeController:(id)a10 drawLegendsInsideSeries:(BOOL)a11;
- (id)_generateActivityGoalLineSeriesWithColor:(id)a3;
- (id)_lineColorForActivityValue:(int64_t)a3;
- (id)_metGoalFillStyleForActivityValue:(int64_t)a3 useGradient:(BOOL)a4;
- (id)_missedGoalFillStyleForActivityValue:(int64_t)a3 useGradient:(BOOL)a4;
- (id)_pausedFillStyleForActivityValue:(int64_t)a3;
- (id)_rangeValueAsNumber:(id)a3;
- (id)_spanForValueDisplayType:(id)a3 timeScope:(int64_t)a4 title:(id)a5;
- (id)_timeScopeRangesFromSharableModel:(id)a3;
- (id)_titleForActivityValue:(int64_t)a3 wheelchairUseCharacteristicCache:(id)a4;
- (id)_unitForActivityValue:(int64_t)a3 displayTypeController:(id)a4 unitPreferenceController:(id)a5;
- (id)_zeroStringForActivityValue:(int64_t)a3 displayTypeController:(id)a4 unitPreferenceController:(id)a5;
- (id)activitySummaryForCurrentRange;
- (id)buildFactorContextForDisplayType:(id)a3 factorDisplayType:(id)a4 overlayChartController:(id)a5 currentCalendarOverride:(id)a6 applicationItems:(id)a7 overlayMode:(int64_t)a8;
- (id)calendarQueryDisplayType;
- (id)dataSourceForCurrentValueViewString;
- (id)descriptionForChartData:(id)a3 timeScope:(int64_t)a4;
- (id)descriptionSeriesForGraphView:(id)a3;
- (id)descriptionSpansForGraphView:(id)a3 timeScope:(int64_t)a4;
- (id)lollipopAnnotationColor;
- (id)makeAnnotationDataSource;
- (id)makeCurrentValueView;
- (id)seriesSelectionLineColorForGraphView:(id)a3;
- (int64_t)_countOfStackedChartsFromActivityOptions:(unint64_t)a3;
- (int64_t)_findFirstWeekdayFromModel:(id)a3;
- (int64_t)_representativeDataTypeForActivityValue:(int64_t)a3;
- (void)_handleAlternateAnnotationDataViewDataSource:(id)a3;
- (void)configureDisplayTypes:(id)a3 timeScope:(int64_t)a4 stackOffset:(int64_t)a5;
- (void)setCurrentValueViewCallbacks:(id)a3;
- (void)tappedOnCurrentValueView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateCurrentValueView:(id)a3 graphView:(id)a4 timeScope:(int64_t)a5 showInfoButton:(BOOL)a6;
- (void)updateSelectionAnnotationDataSourceForContext:(id)a3 displayType:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6;
@end

@implementation HKInteractiveChartActivityController

- (HKInteractiveChartActivityController)initWithHealthStore:(id)a3 unitPreferenceController:(id)a4 dateCache:(id)a5 chartDataCacheController:(id)a6 selectedTimeScopeController:(id)a7 sampleTypeDateRangeController:(id)a8 wheelchairUseCharacteristicCache:(id)a9 initialXValue:(id)a10 activityMoveMode:(int64_t)a11 activityOptions:(unint64_t)a12 chartSharableModel:(id)a13
{
  v92[2] = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a4;
  v87 = a5;
  v83 = a9;
  v21 = a13;
  v76 = a10;
  v75 = a8;
  v74 = a7;
  v72 = a6;
  v22 = v21;
  v88 = [HKDisplayTypeController sharedInstanceForHealthStore:v19];
  if (v21)
  {
    v23 = v19;
    v24 = [(HKInteractiveChartActivityController *)self _buildSummariesTableFromSharableModel:v22];
    v82 = [(HKInteractiveChartActivityController *)self _timeScopeRangesFromSharableModel:v22];
    v84 = v24;
    v25 = [v24 objectForKeyedSubscript:&unk_1F4384390];
    v26 = [v25 firstObject];

    v27 = a11;
    if (v26)
    {
      v27 = [v26 activityMoveMode];
    }

    v71 = [(HKInteractiveChartActivityController *)self _findFirstWeekdayFromModel:v22];

    v19 = v23;
    v28 = v87;
  }

  else
  {
    v82 = 0;
    v84 = 0;
    v71 = -1;
    v27 = a11;
    v28 = v87;
  }

  v80 = v22;
  v29 = [[HKActivitySummaryDataProvider alloc] initWithHealthStore:v19 dateCache:v28 displayTypeController:v88 unitController:v20 activityMoveMode:v27];
  v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v31 = a12;
  v32 = [(HKInteractiveChartActivityController *)self _countOfStackedChartsFromActivityOptions:a12];
  v86 = v29;
  v77 = v32;
  if (a12)
  {
    v38 = 0;
    v39 = 0;
    v37 = v83;
  }

  else
  {
    v33 = v27 == 2;
    if (v27 == 2)
    {
      v34 = 5;
    }

    else
    {
      v34 = 4;
    }

    v35 = [(HKInteractiveChartActivityController *)self _activityYAxisForActivityValue:v27 == 2 zeroOnly:v32 > 1 stackOffset:0 bottomLabelPadding:v88 displayTypeController:v20 unitPreferenceController:0.0];
    v36 = v33;
    v37 = v83;
    v38 = [(HKInteractiveChartActivityController *)self _displayTypeForActivityValue:v36 yAxis:v35 dataProvider:v29 displayTypeController:v88 unitPreferenceController:v20 wheelchairUseCharacteristicCache:v83 timescopeToSummariesTable:v84 activityOptions:a12];
    v39 = [(HKInteractiveChartActivityController *)self _displayTypeForActivityValue:v34 yAxis:v35 dataProvider:v29 displayTypeController:v88 unitPreferenceController:v20 wheelchairUseCharacteristicCache:v83 timescopeToSummariesTable:v84 activityOptions:a12];
    v92[0] = v38;
    v92[1] = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
    [v30 addObject:v40];

    v31 = a12;
  }

  v41 = v30;
  v81 = v30;
  obj = v38;
  v79 = v39;
  if ((v31 & 2) != 0)
  {
    v43 = 0;
    v44 = 0;
  }

  else
  {
    v42 = [(HKInteractiveChartActivityController *)self _activityYAxisForActivityValue:2 zeroOnly:v77 > 1 stackOffset:1 bottomLabelPadding:v88 displayTypeController:v20 unitPreferenceController:0.0];
    v43 = [(HKInteractiveChartActivityController *)self _displayTypeForActivityValue:2 yAxis:v42 dataProvider:v86 displayTypeController:v88 unitPreferenceController:v20 wheelchairUseCharacteristicCache:v37 timescopeToSummariesTable:v84 activityOptions:v31];
    v41 = v81;
    v44 = [(HKInteractiveChartActivityController *)self _displayTypeForActivityValue:6 yAxis:v42 dataProvider:v86 displayTypeController:v88 unitPreferenceController:v20 wheelchairUseCharacteristicCache:v37 timescopeToSummariesTable:v84 activityOptions:v31];
    v91[0] = v43;
    v91[1] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
    [v81 addObject:v45];

    v31 = a12;
  }

  v85 = v20;
  if ((v31 & 4) != 0)
  {
    v48 = 0;
    v50 = 0;
  }

  else
  {
    [(HKInteractiveChartActivityController *)self _activityYAxisForActivityValue:3 zeroOnly:v77 > 1 stackOffset:2 bottomLabelPadding:v88 displayTypeController:v20 unitPreferenceController:5.0];
    v47 = v46 = v37;
    v48 = [(HKInteractiveChartActivityController *)self _displayTypeForActivityValue:3 yAxis:v47 dataProvider:v86 displayTypeController:v88 unitPreferenceController:v20 wheelchairUseCharacteristicCache:v46 timescopeToSummariesTable:v84 activityOptions:v31];
    v49 = v46;
    v41 = v81;
    v50 = [(HKInteractiveChartActivityController *)self _displayTypeForActivityValue:7 yAxis:v47 dataProvider:v86 displayTypeController:v88 unitPreferenceController:v20 wheelchairUseCharacteristicCache:v49 timescopeToSummariesTable:v84 activityOptions:v31];
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
  v56 = [(HKInteractiveChartOverlayViewController *)&v89 initWithStackedDisplayTypes:v41 primaryDisplayTypeStackIndex:0 stackedDisplayTypeHeights:0 healthStore:v19 unitPreferenceController:v85 dateCache:v87 chartDataCacheController:v72 selectedTimeScopeController:v74 sampleTypeDateRangeController:v75 initialXValue:v76 currentCalendarOverride:0 options:v55 timeScopeRanges:v82];

  v57 = v87;
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
    v63 = [(HKInteractiveChartViewController *)v56 displayTypeController];
    v57 = v87;
    LOBYTE(v69) = v56->_isChartSharingContext;
    v64 = [(HKActivitySummaryAnnotationViewDataSource *)v62 initWithDisplayTypeController:v63 unitController:v85 wheelchairUseCharacteristicCache:v83 dateCache:v87 currentValueViewContext:0 activityOptions:a12 firstWeekday:v71 isChartSharingContext:v69];
    activityAnnotationDataSource = v56->_activityAnnotationDataSource;
    v56->_activityAnnotationDataSource = v64;

    v52 = v80;
    v59 = obj;
    v61 = v44;
    [(HKActivitySummaryAnnotationViewDataSource *)v56->_activityAnnotationDataSource setActivitySummary:0];
    v56->_currentTimeScope = 2;
    v66 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    yAxisAccessoryViewsByGraphSeries = v56->_yAxisAccessoryViewsByGraphSeries;
    v56->_yAxisAccessoryViewsByGraphSeries = v66;

    objc_storeStrong(&v56->_wheelchairUseCharacteristicCache, a9);
    v56->_activityOptions = a12;
    v58 = v86;
    [(HKInteractiveChartViewController *)v56 addChartViewObserver:v56];
  }

  return v56;
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = HKInteractiveChartActivityController;
  v4 = a3;
  [(HKInteractiveChartViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [(HKInteractiveChartActivityController *)self traitCollection:v10.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v8 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
    v9 = [v8 graphView];
    [v9 resetAndRedraw];
  }
}

- (id)buildFactorContextForDisplayType:(id)a3 factorDisplayType:(id)a4 overlayChartController:(id)a5 currentCalendarOverride:(id)a6 applicationItems:(id)a7 overlayMode:(int64_t)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [_ActivityFactorContext alloc];
  v20 = [(HKInteractiveChartActivityController *)self activityCurrentValueView];
  v21 = [(_ActivityFactorContext *)v19 initWithPrimaryDisplayType:v18 factorDisplayType:v17 overlayChartController:v16 currentCalendarOverride:v15 applicationItems:v14 overlayMode:a8 activityCurrentValueView:v20];

  return v21;
}

- (id)_buildSummariesTableFromSharableModel:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v4 hasSixMonthData])
  {
    v6 = [v4 sixMonthData];
    v7 = [(HKInteractiveChartActivityController *)self _decodeActivitySummariesFromQueryData:v6];
    [v5 setObject:v7 forKeyedSubscript:&unk_1F43843A8];
  }

  if ([v4 hasMonthData])
  {
    v8 = [v4 monthData];
    v9 = [(HKInteractiveChartActivityController *)self _decodeActivitySummariesFromQueryData:v8];
    [v5 setObject:v9 forKeyedSubscript:&unk_1F4384390];
  }

  return v5;
}

- (id)_decodeActivitySummariesFromQueryData:(id)a3
{
  v3 = a3;
  v4 = [HKCodableActivitySummaryCollection alloc];
  v5 = [v3 queryDataObject];

  v6 = [(HKCodableActivitySummaryCollection *)v4 initWithData:v5];
  v7 = [HKInteractiveChartActivityController _activitySummariesFromCodableCollection:v6];

  return v7;
}

- (id)_timeScopeRangesFromSharableModel:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB80];
  v4 = a3;
  v5 = [v4 monthDateInterval];
  v6 = [v3 hk_dateIntervalWithCodableDateInterval:v5 sourceTimeZone:0];

  v7 = MEMORY[0x1E696AB80];
  v8 = [v4 sixMonthDateInterval];

  v9 = [v7 hk_dateIntervalWithCodableDateInterval:v8 sourceTimeZone:0];

  v10 = [v6 startDate];
  v11 = [v6 endDate];
  v12 = [HKValueRange valueRangeWithMinValue:v10 maxValue:v11];

  v13 = [v9 startDate];
  v14 = [v9 endDate];
  v15 = [HKValueRange valueRangeWithMinValue:v13 maxValue:v14];

  v18[0] = &unk_1F4384390;
  v18[1] = &unk_1F43843A8;
  v19[0] = v12;
  v19[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v16;
}

- (int64_t)_findFirstWeekdayFromModel:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_9;
  }

  if (![v3 hasMonthData] || (objc_msgSend(v4, "monthData"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasFirstWeekday"), v5, !v6))
  {
    if ([v4 hasSixMonthData])
    {
      v8 = [v4 sixMonthData];
      v9 = [v8 hasFirstWeekday];

      if (v9)
      {
        v7 = [v4 sixMonthData];
        goto LABEL_8;
      }
    }

LABEL_9:
    v11 = -1;
    goto LABEL_10;
  }

  v7 = [v4 monthData];
LABEL_8:
  v10 = v7;
  v11 = [v7 firstWeekday];

LABEL_10:
  return v11;
}

+ (void)encodeChartDataWithHealthStore:(id)a3 dateCache:(id)a4 displayTypeController:(id)a5 unitController:(id)a6 activityMoveMode:(int64_t)a7 monthDateInterval:(id)a8 sixMonthDateInterval:(id)a9 completion:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [[HKActivitySummaryDataProvider alloc] initWithHealthStore:v22 dateCache:v21 displayTypeController:v20 unitController:v19 activityMoveMode:a7];

  [_ActivityRemoteDataGathererManager gatherDataWithActivitySummaryDataProvider:v23 monthDateInterval:v18 sixMonthDateInterval:v17 completion:v16];
}

- (int64_t)_countOfStackedChartsFromActivityOptions:(unint64_t)a3
{
  v3 = 2 - (a3 & 1);
  if ((a3 & 2) == 0)
  {
    v3 = a3 & 1 ^ 3;
  }

  return v3 + ((a3 << 61) >> 63);
}

- (id)_lineColorForActivityValue:(int64_t)a3
{
  if (a3 > 7)
  {
    v5 = 0;
  }

  else
  {
    if (((1 << a3) & 0x33) != 0)
    {
      v5 = [MEMORY[0x1E69DC888] hk_activityMoveGoalLineColor];
    }

    else
    {
      if (((1 << a3) & 0x44) != 0)
      {
        [MEMORY[0x1E69DC888] hk_activityExerciseGoalLineColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] hk_activityStandGoalLineColor];
      }
      v5 = ;
    }
  }

  return v5;
}

- (id)_metGoalFillStyleForActivityValue:(int64_t)a3 useGradient:(BOOL)a4
{
  v4 = a4;
  if (a3 > 7)
  {
    v5 = 0;
    v6 = 0;
    v9 = 0;
    if (a4)
    {
LABEL_9:
      v10 = [[HKGradientFillStyle alloc] initWithFirstColor:v5 secondColor:v6];
      goto LABEL_12;
    }
  }

  else
  {
    if (((1 << a3) & 0x33) != 0)
    {
      v5 = [MEMORY[0x1E69DC888] hk_activityMoveGoalMetGradientTopColor];
      v6 = [MEMORY[0x1E69DC888] hk_activityMoveGoalMetGradientBottomColor];
      v7 = [MEMORY[0x1E69DC888] hk_activityMoveGoalMetNonGradientColor];
    }

    else
    {
      if (((1 << a3) & 0x44) != 0)
      {
        v8 = [MEMORY[0x1E69DC888] hk_activityExerciseGoalMetGradientTopColor];
        [MEMORY[0x1E69DC888] hk_activityExerciseGoalMetGradientBottomColor];
      }

      else
      {
        v8 = [MEMORY[0x1E69DC888] hk_activityStandGoalMetGradientTopColor];
        [MEMORY[0x1E69DC888] hk_activityStandGoalMetGradientBottomColor];
      }
      v6 = ;
      v7 = v8;
      v5 = v7;
    }

    v9 = v7;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  v10 = objc_alloc_init(HKSolidFillStyle);
  [(HKGradientFillStyle *)v10 setColor:v9];
LABEL_12:

  return v10;
}

- (id)_missedGoalFillStyleForActivityValue:(int64_t)a3 useGradient:(BOOL)a4
{
  v4 = a4;
  if (a3 > 7)
  {
    v5 = 0;
    v6 = 0;
    v9 = 0;
    if (a4)
    {
LABEL_9:
      v10 = [[HKGradientFillStyle alloc] initWithFirstColor:v5 secondColor:v6];
      goto LABEL_12;
    }
  }

  else
  {
    if (((1 << a3) & 0x33) != 0)
    {
      v5 = [MEMORY[0x1E69DC888] hk_activityMoveGoalMissedGradientTopColor];
      v6 = [MEMORY[0x1E69DC888] hk_activityMoveGoalMissedGradientBottomColor];
      v7 = [MEMORY[0x1E69DC888] hk_activityMoveGoalMissedNonGradientColor];
    }

    else
    {
      if (((1 << a3) & 0x44) != 0)
      {
        v8 = [MEMORY[0x1E69DC888] hk_activityExerciseGoalMissedGradientTopColor];
        [MEMORY[0x1E69DC888] hk_activityExerciseGoalMissedGradientBottomColor];
      }

      else
      {
        v8 = [MEMORY[0x1E69DC888] hk_activityStandGoalMissedGradientTopColor];
        [MEMORY[0x1E69DC888] hk_activityStandGoalMissedGradientBottomColor];
      }
      v6 = ;
      v7 = v8;
      v5 = v7;
    }

    v9 = v7;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  v10 = objc_alloc_init(HKSolidFillStyle);
  [(HKGradientFillStyle *)v10 setColor:v9];
LABEL_12:

  return v10;
}

- (id)_pausedFillStyleForActivityValue:(int64_t)a3
{
  v3 = objc_alloc_init(HKSolidFillStyle);
  v4 = [MEMORY[0x1E69DC888] hk_activityPausedColor];
  [(HKSolidFillStyle *)v3 setColor:v4];

  return v3;
}

- (id)_titleForActivityValue:(int64_t)a3 wheelchairUseCharacteristicCache:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 <= 7)
  {
    if (((1 << a3) & 0x33) != 0)
    {
      v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v8 = v7;
      v9 = @"MOVE_CHART_TITLE";
    }

    else
    {
      if (((1 << a3) & 0x44) == 0)
      {
        v8 = [MEMORY[0x1E696C1C0] localizationStringSuffixForWheelchairUser:{objc_msgSend(v5, "isWheelchairUser")}];
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

- (int64_t)_representativeDataTypeForActivityValue:(int64_t)a3
{
  if (a3 > 7)
  {
    return 3;
  }

  else
  {
    return qword_1C3D5D988[a3];
  }
}

- (id)_unitForActivityValue:(int64_t)a3 displayTypeController:(id)a4 unitPreferenceController:(id)a5
{
  v7 = a5;
  v8 = _DisplayTypeForActivityValue(a3, a4);
  v9 = [v7 localizedDisplayNameForDisplayType:v8];

  return v9;
}

- (id)_displayTypeForActivityValue:(int64_t)a3 yAxis:(id)a4 dataProvider:(id)a5 displayTypeController:(id)a6 unitPreferenceController:(id)a7 wheelchairUseCharacteristicCache:(id)a8 timescopeToSummariesTable:(id)a9 activityOptions:(unint64_t)a10
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v39 = v19;
  v40 = v16;
  if (v19)
  {
    v20 = v19;
    v21 = MEMORY[0x1E695DEE8];
    v22 = a8;
    v23 = a4;
    v24 = [v21 currentCalendar];
    v25 = v17;
    v26 = [[_ActivitySourceDelegateSharing alloc] initWithTimescopeToSummariesTable:v20 activityValue:a3 displayTypeController:v17 unitPreferenceController:v18 calendar:v24];
  }

  else
  {
    v27 = a8;
    v28 = a4;
    v25 = v17;
    v26 = [[_ActivitySourceDelegateProvider alloc] initWithDataProvider:v16 activityValue:a3 displayTypeController:v17 unitPreferenceController:v18];
  }

  v38 = v26;
  v29 = [[HKDateRangeDataSource alloc] initWithSourceDelegate:v26];
  v30 = v18;
  v31 = [(HKInteractiveChartActivityController *)self _activitySeriesForActivityValue:a3 wheelchairUseCharacteristicCache:a8 unitPreferenceController:v18 displayTypeController:v25 activityOptions:a10];
  [v31 setYAxis:a4];

  [v31 setDataSource:v29];
  v32 = objc_alloc_init(HKInteractiveChartGenericStatFormatter);
  [(HKInteractiveChartGenericStatFormatter *)v32 setOverrideStatFormatterItemOptions:&unk_1F4381A98];
  v33 = [(HKInteractiveChartActivityController *)self _unitForActivityValue:a3 displayTypeController:v25 unitPreferenceController:v30];
  v34 = [(HKInteractiveChartActivityController *)self _representativeDataTypeForActivityValue:a3];
  v35 = [(HKInteractiveChartActivityController *)self _titleForActivityValue:a3 wheelchairUseCharacteristicCache:a8];

  v36 = [[HKInteractiveChartDisplayType alloc] initWithGraphSeries:v31 displayName:v35 unitName:v33 valueFormatter:v32 dataTypeCode:v34];

  return v36;
}

- (id)_activitySeriesForActivityValue:(int64_t)a3 wheelchairUseCharacteristicCache:(id)a4 unitPreferenceController:(id)a5 displayTypeController:(id)a6 activityOptions:(unint64_t)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(HKInteractiveChartActivityController *)self _lineColorForActivityValue:a3];
  v16 = [(HKInteractiveChartActivityController *)self _countOfStackedChartsFromActivityOptions:a7];
  if (v16 < 2)
  {
    v17 = &stru_1F42FFBE0;
  }

  else
  {
    v17 = [(HKInteractiveChartActivityController *)self _titleForActivityValue:a3 wheelchairUseCharacteristicCache:v12];
  }

  if ((a3 & 0xFFFFFFFFFFFFFFFCLL) == 4)
  {
    v18 = [(HKInteractiveChartActivityController *)self _generateActivityGoalLineSeriesWithColor:v15];
  }

  else
  {
    v28 = v14;
    v19 = v13;
    v20 = v12;
    v21 = v16 < 2;
    v22 = v16 > 1;
    v23 = [(HKInteractiveChartActivityController *)self _metGoalFillStyleForActivityValue:a3 useGradient:v22];
    v24 = [(HKInteractiveChartActivityController *)self _missedGoalFillStyleForActivityValue:a3 useGradient:v22];
    v25 = [(HKInteractiveChartActivityController *)self _pausedFillStyleForActivityValue:a3];
    LOBYTE(v27) = v21;
    v12 = v20;
    v13 = v19;
    v14 = v28;
    v18 = [(HKInteractiveChartActivityController *)self _generateActivityBarSeriesWithColor:v15 legendTitle:v17 metGoalFillStyle:v23 missedGoalFillStyle:v24 pausedFillStyle:v25 activityValue:a3 unitPreferenceController:v13 displayTypeController:v28 drawLegendsInsideSeries:v27];
  }

  return v18;
}

- (id)_zeroStringForActivityValue:(int64_t)a3 displayTypeController:(id)a4 unitPreferenceController:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ((a3 - 1) < 2)
  {
    v9 = [MEMORY[0x1E696C510] minuteUnit];
LABEL_6:
    v10 = v9;
    v11 = [v8 localizedDisplayNameForUnit:v9 value:&unk_1F43843D8];
    goto LABEL_8;
  }

  if (a3)
  {
    if (a3 != 3)
    {
      goto LABEL_10;
    }

    v9 = [MEMORY[0x1E696C510] hourUnit];
    goto LABEL_6;
  }

  v10 = _DisplayTypeForActivityValue(0, v7);
  v12 = [v8 unitForDisplayType:v10];
  v11 = [v8 localizedDisplayNameForUnit:v12 value:&unk_1F43843D8];

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

- (id)_activityYAxisForActivityValue:(int64_t)a3 zeroOnly:(BOOL)a4 stackOffset:(int64_t)a5 bottomLabelPadding:(double)a6 displayTypeController:(id)a7 unitPreferenceController:(id)a8
{
  v10 = a4;
  v12 = a7;
  v13 = a8;
  v14 = objc_alloc_init(HKSolidFillStyle);
  v15 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [(HKSolidFillStyle *)v14 setColor:v15];

  v16 = objc_alloc_init(HKAxisStyle);
  v17 = HKDefaultChartYAxisColor();
  v18 = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
  v19 = [HKAxisLabelStyle labelStyleWithColor:v17 font:v18 horizontalAlignment:2 verticalAlignment:2];
  [(HKAxisStyle *)v16 setLabelStyle:v19];

  [(HKAxisStyle *)v16 setTickPositions:1];
  v20 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v21 = [HKStrokeStyle strokeStyleWithColor:v20 lineWidth:2.0];
  [(HKAxisStyle *)v16 setAxisLineStyle:v21];

  [(HKAxisStyle *)v16 setFillStyle:v14];
  v22 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v23 = [HKStrokeStyle strokeStyleWithColor:v22 lineWidth:HKUIOnePixel()];

  [(HKAxisStyle *)v16 setBorderStyleForFill:v23];
  [(HKAxisStyle *)v16 setFillInnerPadding:4.0];
  [(HKAxisStyle *)v16 setFillOuterPadding:4.0];
  [(HKAxisStyle *)v16 setLocation:1];
  [(HKAxisStyle *)v16 setShowGridLines:1];
  v24 = [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
  v25 = [v24 colorWithAlphaComponent:0.5];
  v26 = [HKStrokeStyle strokeStyleWithColor:v25 lineWidth:0.5];
  [(HKAxisStyle *)v16 setGridLineStyle:v26];

  v27 = objc_alloc_init(HKNumericAxisConfiguration);
  [(HKAxisConfiguration *)v27 setPreferredStyle:v16];
  if (v10)
  {
    v28 = [(HKInteractiveChartActivityController *)self _zeroStringForActivityValue:a3 displayTypeController:v12 unitPreferenceController:v13];
    [(HKNumericAxisConfiguration *)v27 setTopVerticalLabelPadding:0.0];
    [(HKNumericAxisConfiguration *)v27 setBottomVerticalLabelPadding:a6];
    [(HKAxisConfiguration *)v27 setMinLabels:2];
    [(HKAxisConfiguration *)v27 setMaxLabels:20];
    v29 = [[HKNumericAxisZeroOnly alloc] initWithZeroLabel:v28 axisConfiguration:v27];
  }

  else
  {
    [(HKNumericAxisConfiguration *)v27 setTopVerticalLabelPadding:10.0];
    [(HKNumericAxisConfiguration *)v27 setBottomVerticalLabelPadding:a6];
    [(HKAxisConfiguration *)v27 setMinLabels:2];
    [(HKAxisConfiguration *)v27 setMaxLabels:3];
    v28 = [(HKInteractiveChartActivityController *)self _displayTypeForUnits:a3 displayTypeController:v12];
    if (v28)
    {
      v30 = [[HKAxisLabelDimensionDisplayType alloc] initWithDisplayType:v28 unitPreferencesController:v13];
      [(HKNumericAxisConfiguration *)v27 setLabelDimension:v30];
    }

    v29 = [[HKNumericAxis alloc] initWithConfiguration:v27];
  }

  v31 = v29;

  return v31;
}

- (id)_displayTypeForUnits:(int64_t)a3 displayTypeController:(id)a4
{
  v5 = a4;
  v6 = v5;
  switch(a3)
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
      v8 = [v5 displayTypeWithIdentifier:v7];
      goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)_generateActivityBarSeriesWithColor:(id)a3 legendTitle:(id)a4 metGoalFillStyle:(id)a5 missedGoalFillStyle:(id)a6 pausedFillStyle:(id)a7 activityValue:(int64_t)a8 unitPreferenceController:(id)a9 displayTypeController:(id)a10 drawLegendsInsideSeries:(BOOL)a11
{
  v34[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a10;
  v19 = a9;
  v20 = a7;
  v21 = a6;
  v22 = a5;
  v23 = [[_ActivityBarSeries alloc] initWithUnitPreferenceController:v19 activityBarDelegate:self displayTypeController:v18];

  [(_ActivityBarSeries *)v23 setActivityDisplayTypeIdentifier:_RepresentativeDisplayTypeIdentifierForActivityValue(a8)];
  v24 = objc_alloc_init(HKStrokeStyle);
  v25 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  [(HKStrokeStyle *)v24 setStrokeColor:v25];

  [(HKStrokeStyle *)v24 setLineWidth:3.0];
  [(HKStrokeStyle *)v24 setBlendMode:22];
  [(HKBarSeries *)v23 setUnselectedStrokeStyle:v24];
  [(HKBarSeries *)v23 setUnselectedFillStyle:v22];

  [(_ActivityBarSeries *)v23 setMissedGoalUnselectedFillStyle:v21];
  [(_ActivityBarSeries *)v23 setPausedUnselectedFillStyle:v20];

  [(HKBarSeries *)v23 setSelectedFillStyle:0];
  [(HKBarSeries *)v23 setSelectedStrokeStyle:0];
  [(HKBarSeries *)v23 setCornerRadii:1.5, 1.5];
  if (v17)
  {
    v26 = [HKLegendEntry legendEntryWithTitle:v17 labelColor:v16];
    v34[0] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    [(HKGraphSeries *)v23 setTitleLegendEntries:v27];

    v28 = [MEMORY[0x1E69DC888] labelColor];
    v29 = [HKLegendEntry legendEntryWithTitle:&stru_1F42FFBE0 labelColor:v28];

    v33 = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    [(HKGraphSeries *)v23 setDetailLegendEntries:v30];

    [(HKGraphSeries *)v23 setDrawLegendInsideSeries:a11];
  }

  return v23;
}

- (id)_generateActivityGoalLineSeriesWithColor:(id)a3
{
  v3 = a3;
  v4 = [[_ActivityGoalLineSeries alloc] initWithColor:v3];

  return v4;
}

+ (id)firstActivitySeriesForGraphView:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a3 allSeries];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)configureDisplayTypes:(id)a3 timeScope:(int64_t)a4 stackOffset:(int64_t)a5
{
  v5 = [(HKInteractiveChartViewController *)self primaryGraphViewController:a3];
  v6 = [v5 graphView];

  [v6 setScrollingOptions:1];
}

- (id)makeAnnotationDataSource
{
  v3 = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
  [(HKInteractiveChartActivityController *)self _handleAlternateAnnotationDataViewDataSource:v3];

  return [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
}

- (void)_handleAlternateAnnotationDataViewDataSource:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = HKInteractiveChartActivityController;
  v5 = [(HKInteractiveChartViewController *)&v6 makeAnnotationDataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setStandardAnnotationViewDataSource:v5];
  }
}

- (void)updateSelectionAnnotationDataSourceForContext:(id)a3 displayType:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6
{
  v19 = a3;
  v10 = a4;
  v11 = [v19 userInfo];
  v12 = [v11 firstObject];

  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
    [v13 useActivityAnnotationViewDataSource];

    v14 = [v12 activitySummaryData];
    v15 = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
    [v15 setActivitySummary:v14];

    v16 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
    v17 = [v16 dateZoom];
    v18 = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
    [v18 setTimeScope:v17];
  }

  else
  {
    v14 = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
    v16 = [(HKInteractiveChartViewController *)self healthStore];
    [v14 useStandardAnnotationViewDataSourceForContext:v19 displayType:v10 timeScope:a5 resolution:a6 healthStore:v16 viewController:self];
  }
}

- (id)lollipopAnnotationColor
{
  v3 = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
  v4 = [v3 useStandardAnnotationDataSource];

  if (v4)
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
  v2 = [(HKInteractiveChartActivityController *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] hk_chartLollipopBackgroundColor];
    }
    v4 = ;
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
  }

  return v4;
}

- (id)descriptionSeriesForGraphView:(id)a3
{
  v3 = [a3 allSeries];
  v4 = [v3 firstObject];

  return v4;
}

- (id)descriptionSpansForGraphView:(id)a3 timeScope:(int64_t)a4
{
  v24[3] = *MEMORY[0x1E69E9840];
  v6 = [(HKInteractiveChartActivityController *)self moveValueDisplayType];
  v7 = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
  v8 = [v7 activityMoveTitle];
  v9 = [(HKInteractiveChartActivityController *)self _spanForValueDisplayType:v6 timeScope:a4 title:v8];

  v10 = [(HKInteractiveChartActivityController *)self exerciseValueDisplayType];
  v11 = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
  v12 = [v11 activityExerciseTitle];
  v13 = [(HKInteractiveChartActivityController *)self _spanForValueDisplayType:v10 timeScope:a4 title:v12];

  v14 = [(HKInteractiveChartActivityController *)self standValueDisplayType];
  v15 = [(HKInteractiveChartActivityController *)self activityAnnotationDataSource];
  v16 = [v15 activityStandTitle];
  v17 = [(HKInteractiveChartActivityController *)self _spanForValueDisplayType:v14 timeScope:a4 title:v16];

  v18 = [v9 dataSeriesTitle];
  v23[0] = v18;
  v24[0] = v9;
  v19 = [v13 dataSeriesTitle];
  v23[1] = v19;
  v24[1] = v13;
  v20 = [v17 dataSeriesTitle];
  v23[2] = v20;
  v24[2] = v17;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];

  return v21;
}

- (id)_spanForValueDisplayType:(id)a3 timeScope:(int64_t)a4 title:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [v9 graphSeriesForTimeScope:a4];
  v11 = [v10 visibleValueRange];

  v12 = [v11 minValue];
  v13 = [(HKInteractiveChartActivityController *)self _rangeValueAsNumber:v12];

  v14 = [v11 maxValue];
  v15 = [(HKInteractiveChartActivityController *)self _rangeValueAsNumber:v14];

  v16 = [(HKInteractiveChartViewController *)self unitPreferenceController];
  v17 = [v16 localizedDisplayNameForDisplayType:v9];

  v18 = [[HKAccessibilitySpan alloc] initWithTitle:v8 seriesType:2 dataComprehensionMinYValue:v13 dataComprehensionMaxYValue:v15 dataComprehensionUnitForChart:v17];

  return v18;
}

- (id)_rangeValueAsNumber:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)descriptionForChartData:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [HKActivitySummaryAnnotationViewDataSource alloc];
    v9 = [(HKInteractiveChartViewController *)self displayTypeController];
    v10 = [(HKInteractiveChartViewController *)self unitPreferenceController];
    v11 = [(HKInteractiveChartActivityController *)self wheelchairUseCharacteristicCache];
    v12 = [(HKInteractiveChartViewController *)self dateCache];
    v13 = [(HKInteractiveChartActivityController *)self activityOptions];
    v20 = a4;
    v14 = [(HKInteractiveChartViewController *)self annotationDataSourceFirstWeekday];
    LOBYTE(v19) = [(HKInteractiveChartActivityController *)self isChartSharingContext];
    v15 = [(HKActivitySummaryAnnotationViewDataSource *)v8 initWithDisplayTypeController:v9 unitController:v10 wheelchairUseCharacteristicCache:v11 dateCache:v12 currentValueViewContext:0 activityOptions:v13 firstWeekday:v14 isChartSharingContext:v19];

    [(HKInteractiveChartActivityController *)self _handleAlternateAnnotationDataViewDataSource:v15];
    v16 = [v7 activitySummaryData];

    [(HKActivitySummaryAnnotationViewDataSource *)v15 setActivitySummary:v16];
    [(HKActivitySummaryAnnotationViewDataSource *)v15 setTimeScope:v20];
    v17 = [(HKActivitySummaryAnnotationViewDataSource *)v15 descriptionsForActivitySummary];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

- (BOOL)chartDataIsAvailable
{
  v2 = [(HKInteractiveChartActivityController *)self activityDataProvider];
  v3 = [v2 activitySummariesAreLoading];

  return v3 ^ 1;
}

- (id)dataSourceForCurrentValueViewString
{
  v2 = [(HKInteractiveChartActivityController *)self activityCurrentValueView];
  v3 = [v2 currentValueDataSource];

  return v3;
}

- (id)makeCurrentValueView
{
  v3 = [_ActivityCurrentValueView alloc];
  v4 = [(HKInteractiveChartViewController *)self displayTypeController];
  v5 = [(HKInteractiveChartViewController *)self unitPreferenceController];
  v6 = [(HKInteractiveChartActivityController *)self wheelchairUseCharacteristicCache];
  v7 = [(HKInteractiveChartActivityController *)self activityDataProvider];
  v8 = [(HKInteractiveChartActivityController *)self activityOptions];
  v9 = [(HKInteractiveChartViewController *)self annotationDataSourceFirstWeekday];
  LOBYTE(v12) = [(HKInteractiveChartActivityController *)self isChartSharingContext];
  v10 = [(_ActivityCurrentValueView *)v3 initWithDisplayTypeController:v4 unitPreferenceController:v5 wheelchairUseCharacteristicCache:v6 currentValueViewCallbacks:self activitySummaryDataProvider:v7 activityOptions:v8 firstWeekday:v9 isChartSharingContext:v12];
  [(HKInteractiveChartActivityController *)self setActivityCurrentValueView:v10];

  return [(HKInteractiveChartActivityController *)self activityCurrentValueView];
}

- (void)updateCurrentValueView:(id)a3 graphView:(id)a4 timeScope:(int64_t)a5 showInfoButton:(BOOL)a6
{
  v12 = a4;
  v9 = a3;
  v10 = [(HKInteractiveChartActivityController *)self activityCurrentValueView];

  if (v10 == v9)
  {
    v11 = [(HKInteractiveChartActivityController *)self activityCurrentValueView];
    [v11 updateWithGraphView:v12 timeScope:a5];
  }
}

- (void)setCurrentValueViewCallbacks:(id)a3
{
  [(HKInteractiveChartActivityController *)self setActivityCurrentValueViewCallbacks:a3];
  v6 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tappedOnCurrentValueView_];
  v4 = [(HKInteractiveChartActivityController *)self activityCurrentValueView];
  [v4 addGestureRecognizer:v6];

  v5 = [(HKInteractiveChartActivityController *)self activityCurrentValueView];
  [v5 setUserInteractionEnabled:1];
}

- (void)tappedOnCurrentValueView:(id)a3
{
  v5 = [(HKInteractiveChartActivityController *)self activityCurrentValueViewCallbacks];
  v4 = [(HKInteractiveChartActivityController *)self activityCurrentValueView];
  [v5 didTapOnDateFromCurrentValueView:v4];
}

- (id)calendarQueryDisplayType
{
  v2 = [(HKInteractiveChartViewController *)self displayTypeController];
  v3 = [v2 displayTypeWithIdentifier:&unk_1F4384438];

  return v3;
}

- (id)seriesSelectionLineColorForGraphView:(id)a3
{
  v3 = [(HKInteractiveChartActivityController *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      v5 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69DC888] blackColor];
  }

  return v5;
}

- (id)activitySummaryForCurrentRange
{
  v3 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  v4 = [v3 graphView];
  v5 = [v4 effectiveVisibleRangeActive];

  v6 = [(HKInteractiveChartActivityController *)self _dayActivitySummaryForDateRange:v5];

  return v6;
}

- (id)_dayActivitySummaryForDateRange:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKInteractiveChartActivityController *)self activityDataProvider];
  v6 = [v5 activitySummariesForDateRange:v4 timeScope:5];

  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v4 maxValue];
  v9 = [v7 dateByAddingUnit:64 value:-1 toDate:v8 options:0];

  v10 = [v7 hk_activitySummaryDateComponentsFromDate:v9];
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
        v16 = [v15 dateComponentsForCalendar:{v7, v18}];
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

+ (id)_codableActivitySummaryDataFromSummaries:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(HKCodableActivitySummaryCollection);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
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

        v11 = [a1 _codableActivitySummaryFromSummary:{*(*(&v13 + 1) + 8 * i), v13}];
        [(HKCodableActivitySummaryCollection *)v5 addActivitySummaryEntry:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_codableActivitySummaryFromSummary:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(HKCodableActivitySummaryEntry);
  v7 = [MEMORY[0x1E695DEE8] currentCalendar];
  v8 = [v5 dateComponentsForCalendar:v7];
  v9 = [v8 hour];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v5 _gregorianDateComponents];
    v11 = [v10 calendar];

    if (!v11)
    {
      v12 = [v10 copy];

      v13 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithUTCTimeZone];
      [v12 setCalendar:v13];

      v10 = v12;
    }

    v14 = [v10 hkui_codableDateComponents];
    [(HKCodableActivitySummaryEntry *)v6 setGregorianDateComponents:v14];

    -[HKCodableActivitySummaryEntry setActivityMoveMode:](v6, "setActivityMoveMode:", [v5 activityMoveMode]);
    v15 = [v5 activeEnergyBurned];

    if (v15)
    {
      v16 = [v5 activeEnergyBurned];
      v17 = [v16 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setActiveEnergyBurned:v17];
    }

    v18 = [v5 appleMoveTime];

    if (v18)
    {
      v19 = [v5 appleMoveTime];
      v20 = [v19 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setAppleMoveTime:v20];
    }

    v21 = [v5 appleExerciseTime];

    if (v21)
    {
      v22 = [v5 appleExerciseTime];
      v23 = [v22 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setAppleExerciseTime:v23];
    }

    v24 = [v5 appleStandHours];

    if (v24)
    {
      v25 = [v5 appleStandHours];
      v26 = [v25 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setAppleStandHours:v26];
    }

    v27 = [v5 activeEnergyBurnedGoal];

    if (v27)
    {
      v28 = [v5 activeEnergyBurnedGoal];
      v29 = [v28 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setActiveEnergyBurnedGoal:v29];
    }

    v30 = [v5 appleMoveTimeGoal];

    if (v30)
    {
      v31 = [v5 appleMoveTimeGoal];
      v32 = [v31 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setAppleMoveTimeGoal:v32];
    }

    v33 = [v5 exerciseTimeGoal];

    if (v33)
    {
      v34 = [v5 exerciseTimeGoal];
      v35 = [v34 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setAppleExerciseTimeGoal:v35];
    }

    v36 = [v5 standHoursGoal];

    if (v36)
    {
      v37 = [v5 standHoursGoal];
      v38 = [v37 codableRepresentation];
      [(HKCodableActivitySummaryEntry *)v6 setAppleStandHoursGoal:v38];
    }

    -[HKCodableActivitySummaryEntry setPaused:](v6, "setPaused:", [v5 isPaused]);
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"HKInteractiveChartActivityController.m" lineNumber:1298 description:@"There is no support for encoding hourly activity summaries"];
  }

  return v6;
}

+ (id)_activitySummariesFromCodableCollection:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 activitySummaryEntrys];
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

        v11 = [a1 _activitySummaryFromCodableSummaryEntry:*(*(&v13 + 1) + 8 * i)];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)_activitySummaryFromCodableSummaryEntry:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696BEC8]);
  if ([v3 hasGregorianDateComponents])
  {
    v5 = MEMORY[0x1E695DF10];
    v6 = [v3 gregorianDateComponents];
    v7 = [v5 hkui_dateComponentsWithCodableDateComponents:v6];
    [v4 _setGregorianDateComponents:v7];
  }

  if ([v3 hasActivityMoveMode])
  {
    [v4 setActivityMoveMode:{objc_msgSend(v3, "activityMoveMode")}];
  }

  if ([v3 hasActiveEnergyBurned])
  {
    v8 = MEMORY[0x1E696C348];
    v9 = [v3 activeEnergyBurned];
    v10 = [v8 createWithCodableQuantity:v9];
    [v4 setActiveEnergyBurned:v10];
  }

  if ([v3 hasAppleMoveTime])
  {
    v11 = MEMORY[0x1E696C348];
    v12 = [v3 appleMoveTime];
    v13 = [v11 createWithCodableQuantity:v12];
    [v4 setAppleMoveTime:v13];
  }

  if ([v3 hasAppleExerciseTime])
  {
    v14 = MEMORY[0x1E696C348];
    v15 = [v3 appleExerciseTime];
    v16 = [v14 createWithCodableQuantity:v15];
    [v4 setAppleExerciseTime:v16];
  }

  if ([v3 hasAppleStandHours])
  {
    v17 = MEMORY[0x1E696C348];
    v18 = [v3 appleStandHours];
    v19 = [v17 createWithCodableQuantity:v18];
    [v4 setAppleStandHours:v19];
  }

  if ([v3 hasActiveEnergyBurnedGoal])
  {
    v20 = MEMORY[0x1E696C348];
    v21 = [v3 activeEnergyBurnedGoal];
    v22 = [v20 createWithCodableQuantity:v21];
    [v4 setActiveEnergyBurnedGoal:v22];
  }

  v23 = [v3 appleMoveTimeGoal];

  if (v23)
  {
    v24 = MEMORY[0x1E696C348];
    v25 = [v3 appleMoveTimeGoal];
    v26 = [v24 createWithCodableQuantity:v25];
    [v4 setAppleMoveTimeGoal:v26];
  }

  if ([v3 hasAppleExerciseTimeGoal])
  {
    v27 = MEMORY[0x1E696C348];
    v28 = [v3 appleExerciseTimeGoal];
    v29 = [v27 createWithCodableQuantity:v28];
    [v4 setExerciseTimeGoal:v29];
  }

  if ([v3 hasAppleStandHoursGoal])
  {
    v30 = MEMORY[0x1E696C348];
    v31 = [v3 appleStandHoursGoal];
    v32 = [v30 createWithCodableQuantity:v31];
    [v4 setStandHoursGoal:v32];
  }

  if ([v3 hasPaused])
  {
    v33 = [v3 paused];
  }

  else
  {
    v33 = 0;
  }

  [v4 setPaused:v33];

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