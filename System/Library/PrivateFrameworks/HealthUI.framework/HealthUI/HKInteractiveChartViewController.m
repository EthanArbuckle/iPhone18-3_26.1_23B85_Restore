@interface HKInteractiveChartViewController
+ (BOOL)_timeScope:(int64_t)a3 inTimeScopeRanges:(id)a4;
+ (id)_encodeCurrentProfileIdentifierForHealthStore:(id)a3;
+ (id)_timeScopesWithOptions:(unint64_t)a3 timeScopeRanges:(id)a4;
+ (id)baseRestorationUserActivity:(id)a3 activityType:(id)a4 title:(id)a5;
+ (id)mergeRestorationDictionary:(id)a3 otherDictionary:(id)a4;
+ (id)standardChartRestorationActivity:(id)a3 primaryDisplayType:(id)a4;
+ (id)standardChartRestorationDictionary:(id)a3 healthStore:(id)a4;
+ (int64_t)_timeScopeForTimeScope:(int64_t)a3 availableTimeScopes:(id)a4;
+ (void)_validateStackedHeights:(id)a3;
+ (void)saveRestorationUserActivity:(id)a3 viewController:(id)a4;
- (BOOL)_acceptSubclassRange:(id)a3 proposedRange:(id)a4 axisRange:(id)a5;
- (BOOL)_applyHorizontalMarginsToEntireView;
- (BOOL)_date:(id)a3 closeToDate:(id)a4 epsilonDateComponents:(id)a5 calendar:(id)a6;
- (BOOL)_displayTypeIsHorizontalForTimeScope:(int64_t)a3 displayType:(id)a4;
- (BOOL)_primaryDisplayTypeHasNoData;
- (BOOL)_selectedSeriesWantsLastRecordedDate;
- (BOOL)_shouldHandleInitialLollipopTouchDate:(id)a3 mostRecentDataDate:(id)a4 forGraphView:(id)a5;
- (BOOL)_shouldHandleVisibleRangeChangeWithChangeContext:(int64_t)a3;
- (BOOL)_showInfoButtonInCurrentValueView;
- (BOOL)_valueRange:(id)a3 fitsInsideValueRange:(id)a4;
- (BOOL)_viewHierarchyIsHidden:(id)a3;
- (BOOL)_visibleRangeIsNowForTimeScope:(int64_t)a3;
- (BOOL)chartDataIsAvailable;
- (BOOL)infographicSupportedForDisplayType:(id)a3 healthStore:(id)a4;
- (BOOL)removeDisplayTypeStackAtIndex:(int64_t)a3;
- (HKCurrentOverlayLocationProviding)currentOverlayLocationProvider;
- (HKCurrentValueViewDataSourceDelegate)currentValueViewDataSourceDelegate;
- (HKDisplayType)calendarQueryDisplayType;
- (HKInteractiveChartCurrentValueViewCallbacks)standardCurrentValueViewCallbacks;
- (HKInteractiveChartCurrentValueViewHandler)currentValueViewHandler;
- (HKInteractiveChartViewController)initWithDisplayTypes:(id)a3 healthStore:(id)a4 unitPreferenceController:(id)a5 dateCache:(id)a6 chartDataCacheController:(id)a7 selectedTimeScopeController:(id)a8 sampleTypeDateRangeController:(id)a9 initialXValue:(id)a10 currentCalendarOverride:(id)a11 options:(unint64_t)a12;
- (HKInteractiveChartViewController)initWithStackedDisplayTypes:(id)a3 primaryDisplayTypeStackIndex:(id)a4 stackedDisplayTypeHeights:(id)a5 healthStore:(id)a6 unitPreferenceController:(id)a7 dateCache:(id)a8 chartDataCacheController:(id)a9 selectedTimeScopeController:(id)a10 sampleTypeDateRangeController:(id)a11 initialXValue:(id)a12 currentCalendarOverride:(id)a13 options:(unint64_t)a14 timeScopeRanges:(id)a15;
- (HKSampleType)calendarQuerySampleType;
- (HKTrendAccessibilityDelegate)trendAccessibilityDelegate;
- (UIColor)calendarDaySamplePresentColor;
- (double)_annotationViewCenterY;
- (double)_effectiveHorizontalMargin;
- (id)_allDisplayTypes;
- (id)_assembleValueViewString:(id)a3;
- (id)_chartDataForPoint:(id)a3;
- (id)_colorForDisplayType:(id)a3;
- (id)_configurationForDisplayType:(id)a3;
- (id)_configurationForSeries:(id)a3;
- (id)_createGraphSeriesConfigurationFromDisplayType:(id)a3 timeScope:(int64_t)a4;
- (id)_customGraphSeriesForDisplayType:(id)a3;
- (id)_dateForBlockPoint:(id)a3;
- (id)_dateForMostRecentData;
- (id)_debugDateStringForPoint:(id)a3;
- (id)_defaultAxisRangeIncludeToday:(BOOL)a3;
- (id)_displayNameForDisplayType:(id)a3;
- (id)_displayTypeForSeries:(id)a3;
- (id)_displayUnitForDisplayType:(id)a3;
- (id)_formatterForSeries:(id)a3;
- (id)_graphViewAxisAndVisibleDateRangeForTimeScope:(int64_t)a3 fixedRange:(id)a4;
- (id)_midPointDateFromVisibleRange;
- (id)_numberForXCoordinate:(double)a3 graphView:(id)a4;
- (id)_pointSelectionInfo:(id)a3;
- (id)_primaryDisplayType;
- (id)_rangeValueAsNumber:(id)a3;
- (id)_singleFixedRange;
- (id)_trendCoordinateDescriptionForStartX:(double)a3 endX:(double)a4 timeScope:(int64_t)a5 graphView:(id)a6;
- (id)_valueViewToString:(id)a3;
- (id)accessibilityDataForChart;
- (id)addNoDataEntries:(id)a3 timeScope:(int64_t)a4 targetSeries:(id)a5;
- (id)currentDisplayTypesForStackOffset:(int64_t)a3;
- (id)currentValueViewAsString;
- (id)dateForXCoordinate:(double)a3 graphView:(id)a4;
- (id)descriptionForChartData:(id)a3 timeScope:(int64_t)a4;
- (id)descriptionForStartX:(double)a3 endX:(double)a4 chartData:(id)a5 timeScope:(int64_t)a6 resolution:(int64_t)a7 graphView:(id)a8;
- (id)descriptionSpansForGraphView:(id)a3 timeScope:(int64_t)a4;
- (id)fixedRangeForTimeScope:(int64_t)a3;
- (id)graphSeriesForDisplayType:(id)a3 timeScope:(int64_t)a4 stackOffset:(int64_t)a5;
- (id)graphView:(id)a3 graphSeriesForZoom:(int64_t)a4 stackOffset:(int64_t)a5;
- (id)infographicViewControllerForDisplayType:(id)a3 healthStore:(id)a4;
- (id)lollipopAnnotationColor;
- (id)lollipopExtensionColor;
- (id)makeAnchorDateFromPreviousAnchorDate:(id)a3 previousEffectiveVisibleRange:(id)a4 previousTimeScope:(int64_t)a5 currentTimeScope:(int64_t)a6;
- (id)makeAnnotationDataSource;
- (id)makeCurrentValueView;
- (id)makePrimaryGraphViewControllerWithDateZoom:(int64_t)a3 previousDateZoom:(int64_t)a4 previousXAxisSpace:(double)a5 currentCalendar:(id)a6;
- (id)makeStandardCurrentValueViewDataSource;
- (id)primaryGraphSeriesForTimeScope:(int64_t)a3;
- (id)replaceRangeClause:(id)a3;
- (id)restorationStateDictionary;
- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4;
- (id)supportedTimeScopes;
- (int64_t)_countOfHorizontalSectionsForConfigurationManager:(id)a3 timeScope:(int64_t)a4;
- (int64_t)_defaultTimeScopeWithAvailableTimeScopes:(id)a3;
- (int64_t)_numHorizontalDisplayTypesForTimeScope:(int64_t)a3 displayTypes:(id)a4;
- (int64_t)_userInfoSelectionCount:(id)a3;
- (int64_t)addNewDisplayTypeStackWithDisplayTypes:(id)a3;
- (int64_t)annotationDataSourceFirstWeekday;
- (int64_t)defaultAlignmentForTimeScope:(int64_t)a3;
- (void)_addDisplayTypeToConfiguration:(id)a3 allDisplayTypes:(id)a4 configurationManager:(id)a5;
- (void)_addSeriesForDisplayType:(id)a3 updatingTimeScopeProperties:(id)a4 configurationManager:(id)a5;
- (void)_automaticAutoScale;
- (void)_configureCustomDisplayType:(id)a3 graphSeries:(id)a4 configurationManager:(id)a5 timeScope:(int64_t)a6;
- (void)_configureInitialLollipopSelection;
- (void)_configureSelectedRangeFormatterWithChartRangeProvider;
- (void)_createAndPrepareFeedbackGenerator;
- (void)_createDashboardEmptyLabelsIfNecessary;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_handleInitialLollipopSelection;
- (void)_handleVisibleRangeChange;
- (void)_layoutDashboardEmptyLabelsIfNecessary;
- (void)_layoutDividerViews;
- (void)_layoutHeader;
- (void)_moveSelectedDateInDirection:(int64_t)a3;
- (void)_notifyObserversDidUpdateVisibleValueRange:(id)a3 changeContext:(int64_t)a4;
- (void)_omitLayoutHeader;
- (void)_primaryDisplayType;
- (void)_radioButtonsDidUpdate:(id)a3;
- (void)_replacePrimaryGraphViewControllerWithScalarController;
- (void)_replacePrimaryGraphViewControllerWithTimeScope:(int64_t)a3 anchorDate:(id)a4 animated:(BOOL)a5;
- (void)_scheduleDelayedAutoscale;
- (void)_scrollToAnchorDate:(id)a3 graphView:(id)a4 alignment:(int64_t)a5;
- (void)_scrollToMostRecentDataWithAlignment:(int64_t)a3;
- (void)_setDateSelectorToVisibleRange;
- (void)_setGraphViewAxisAndVisibleDateRangeForTimeScope:(int64_t)a3 anchorDate:(id)a4 preserveScrollPosition:(BOOL)a5;
- (void)_setSelectedGraphSeries:(id)a3 animated:(BOOL)a4;
- (void)_setVisibleDisplayTypes:(id)a3;
- (void)_setVisibleRangeUsingDateFromDateSelector:(id)a3;
- (void)_showHideNoGraphSeriesLabels;
- (void)_unitPreferencesDidUpdate:(id)a3;
- (void)_updateAfterConfigurationChangeIncludeDateAxis:(BOOL)a3;
- (void)_updateAxisScalingRulesForUnitPreferenceChangesOfTypes:(id)a3;
- (void)_updateGraphViewAxisDateRange;
- (void)_updateSelectedSeriesLabel:(id)a3;
- (void)addChartViewObserver:(id)a3;
- (void)addOverlayDisplayType:(id)a3 stackOffset:(int64_t)a4;
- (void)currentTimeViewDidTapOnDateSelector:(id)a3;
- (void)dealloc;
- (void)didTapOnInfoButtonFromCurrentValueView:(id)a3;
- (void)graphView:(id)a3 didFinishUserScrollingToValueRange:(id)a4;
- (void)graphView:(id)a3 didUpdateFromDateZoom:(int64_t)a4 toDateZoom:(int64_t)a5 newVisibleRange:(id)a6;
- (void)graphView:(id)a3 didUpdateLegendViewsWithTopLegendFrame:(CGRect)a4;
- (void)graphView:(id)a3 didUpdateSelectedPoint:(id)a4;
- (void)graphView:(id)a3 didUpdateSeries:(id)a4 newDataArrived:(BOOL)a5 changeContext:(int64_t)a6;
- (void)graphView:(id)a3 didUpdateVisibleValueRange:(id)a4 changeContext:(int64_t)a5;
- (void)graphView:(id)a3 startupTime:(int64_t)a4;
- (void)graphViewDidEndSelection:(id)a3;
- (void)graphViewDidTapYAxis:(id)a3;
- (void)graphViewExternalSelectionEnd:(id)a3;
- (void)graphViewRenderedView:(id)a3;
- (void)installGraphViewSnapshot;
- (void)interactiveChartHasData:(id)a3;
- (void)loadView;
- (void)monthViewController:(id)a3 didSelectDate:(id)a4;
- (void)removeChartViewObserver:(id)a3;
- (void)removeGraphViewSnapshotAnimated:(BOOL)a3;
- (void)removeOverlayDisplayType:(id)a3 stackOffset:(int64_t)a4 automaticAutoscale:(BOOL)a5;
- (void)removeStackedDisplayType:(id)a3;
- (void)replaceCurrentDisplayTypesWithTypes:(id)a3 stackOffset:(int64_t)a4 resetDateRange:(BOOL)a5 automaticAutoScale:(BOOL)a6;
- (void)sampleTypeDateRangeController:(id)a3 didUpdateDateRanges:(id)a4;
- (void)saveRestorationState;
- (void)scrollToDate:(id)a3 withVisibleAlignment:(int64_t)a4;
- (void)scrollToMostRecentData;
- (void)scrollToRange:(id)a3 withVisibleAlignment:(int64_t)a4;
- (void)selectTimeScope:(int64_t)a3;
- (void)setCurrentValueViewDataSourceDelegate:(id)a3;
- (void)setDetailView:(id)a3;
- (void)setStackedDisplayTypeHeights:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAnnotationDataSource:(id)a3 pointContexts:(id)a4;
- (void)updateCurrentValueView:(id)a3 graphView:(id)a4 timeScope:(int64_t)a5 showInfoButton:(BOOL)a6;
- (void)updateCurrentValueViewWithVisibleRange;
- (void)updatePrimaryGraphViewController;
- (void)updateSelectionAnnotationDataSourceForContext:(id)a3 displayType:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKInteractiveChartViewController

- (HKInteractiveChartViewController)initWithStackedDisplayTypes:(id)a3 primaryDisplayTypeStackIndex:(id)a4 stackedDisplayTypeHeights:(id)a5 healthStore:(id)a6 unitPreferenceController:(id)a7 dateCache:(id)a8 chartDataCacheController:(id)a9 selectedTimeScopeController:(id)a10 sampleTypeDateRangeController:(id)a11 initialXValue:(id)a12 currentCalendarOverride:(id)a13 options:(unint64_t)a14 timeScopeRanges:(id)a15
{
  v66[1] = *MEMORY[0x1E69E9840];
  v54 = a3;
  v64 = a4;
  v20 = a8;
  v63 = a5;
  v21 = a6;
  v53 = a7;
  v22 = a7;
  v23 = v21;
  v62 = v22;
  v61 = a8;
  v60 = a9;
  v59 = a10;
  v58 = a11;
  v57 = a12;
  v24 = a13;
  v25 = a15;
  v65.receiver = self;
  v65.super_class = HKInteractiveChartViewController;
  v26 = [(HKInteractiveChartViewController *)&v65 init];
  v27 = v26;
  if (v26)
  {
    v56 = v25;
    v26->_displayState = 0;
    v28 = [MEMORY[0x1E695DF00] date];
    creationDate = v27->_creationDate;
    v27->_creationDate = v28;

    v27->_options = a14;
    objc_storeStrong(&v27->_healthStore, a6);
    objc_storeStrong(&v27->_unitPreferenceController, v53);
    objc_storeStrong(&v27->_dateCache, v20);
    objc_storeStrong(&v27->_chartDataCacheController, a9);
    objc_storeStrong(&v27->_selectedTimeScopeController, a10);
    objc_storeWeak(&v27->_currentValueViewHandler, v27);
    v30 = [HKDisplayTypeController sharedInstanceForHealthStore:v23];
    displayTypeController = v27->_displayTypeController;
    v27->_displayTypeController = v30;

    objc_storeStrong(&v27->_sampleTypeDateRangeController, a11);
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    observers = v27->_observers;
    v27->_observers = v32;

    v34 = objc_alloc_init(HKGraphSeriesConfigurationManager);
    v66[0] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
    allGraphSeriesConfigurationManagers = v27->_allGraphSeriesConfigurationManagers;
    v27->_allGraphSeriesConfigurationManagers = v35;

    v37 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    majorSelectedPointFont = v27->_majorSelectedPointFont;
    v27->_majorSelectedPointFont = v37;

    v39 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0 weight:*MEMORY[0x1E69DB970]];
    minorSelectedPointFont = v27->_minorSelectedPointFont;
    v27->_minorSelectedPointFont = v39;

    timeScopeRanges = v27->_timeScopeRanges;
    v27->_timeScopeRanges = 0;

    chartHasDataCompletion = v27->_chartHasDataCompletion;
    v27->_chartHasDataCompletion = 0;

    v27->_lastDateValueRangeUpdate = 0.0;
    objc_storeStrong(&v27->_initialXValue, a12);
    v27->_firstSampleDateRangeUpdate = 1;
    v27->_delayedAutoscaleRequestCount = 0;
    v27->_delayedAutoscaleActualCount = 0;
    v43 = v24;
    if (!v24)
    {
      v43 = [MEMORY[0x1E695DEE8] currentCalendar];
    }

    objc_storeStrong(&v27->_currentCalendar, v43);
    if (!v24)
    {
    }

    if (v64)
    {
      v44 = [v64 intValue];
    }

    else
    {
      v44 = 0;
    }

    v27->_primaryDisplayTypeStackIndex = v44;
    [HKInteractiveChartViewController _validateStackedHeights:v63, a6];
    objc_storeStrong(&v27->_stackedDisplayTypeHeights, a5);
    [(HKInteractiveChartViewController *)v27 setDisplayTypeStack:v54];
    if ([(HKInteractiveChartViewController *)v27 _chartHasDateAxis])
    {
      v45 = [(HKInteractiveChartViewController *)v27 sampleTypeDateRangeController];
      [v45 addObserver:v27];
    }

    v46 = [MEMORY[0x1E696AD88] defaultCenter];
    [v46 addObserver:v27 selector:sel__unitPreferencesDidUpdate_ name:*MEMORY[0x1E696BE70] object:0];

    [(HKInteractiveChartViewController *)v27 _setVisibleDisplayTypes:v54];
    [(HKInteractiveChartViewController *)v27 _createAndPrepareFeedbackGenerator];
    v47 = [HKSelectedRangeFormatter alloc];
    v48 = [(HKInteractiveChartViewController *)v27 unitPreferenceController];
    v49 = [(HKSelectedRangeFormatter *)v47 initWithUnitPreferenceController:v48];
    [(HKInteractiveChartViewController *)v27 setSelectedRangeFormatter:v49];

    v27->_disableCurrentValueViewForInitialLollipop = 0;
    v27->_hasInitialDateRangeAndTimeScope = 1;
    objc_storeStrong(&v27->_timeScopeRanges, a15);
    v27->_annotationDataSourceFirstWeekday = -1;
    v50 = [[_TtC8HealthUI45HKInteractiveChartInteractionAnalyticsManager alloc] initWithHealthStore:v23];
    analyticsManager = v27->_analyticsManager;
    v27->_analyticsManager = v50;

    v25 = v56;
  }

  return v27;
}

- (HKInteractiveChartViewController)initWithDisplayTypes:(id)a3 healthStore:(id)a4 unitPreferenceController:(id)a5 dateCache:(id)a6 chartDataCacheController:(id)a7 selectedTimeScopeController:(id)a8 sampleTypeDateRangeController:(id)a9 initialXValue:(id)a10 currentCalendarOverride:(id)a11 options:(unint64_t)a12
{
  v32[1] = *MEMORY[0x1E69E9840];
  v32[0] = a3;
  v30 = MEMORY[0x1E695DEC8];
  v18 = a11;
  v19 = a10;
  v20 = a9;
  v21 = a8;
  v22 = a7;
  v23 = a6;
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = [v30 arrayWithObjects:v32 count:1];

  v28 = [(HKInteractiveChartViewController *)self initWithStackedDisplayTypes:v27 primaryDisplayTypeStackIndex:0 stackedDisplayTypeHeights:0 healthStore:v25 unitPreferenceController:v24 dateCache:v23 chartDataCacheController:v22 selectedTimeScopeController:v21 sampleTypeDateRangeController:v20 initialXValue:v19 currentCalendarOverride:v18 options:a12 timeScopeRanges:0];
  return v28;
}

- (void)setStackedDisplayTypeHeights:(id)a3
{
  v4 = a3;
  [HKInteractiveChartViewController _validateStackedHeights:v4];
  stackedDisplayTypeHeights = self->_stackedDisplayTypeHeights;
  self->_stackedDisplayTypeHeights = v4;
}

+ (void)_validateStackedHeights:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (![v10 kind])
        {
          [v10 heightValue];
          v8 = v8 + v11;
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
    if (v6 >= 1 && fabs(v8 + -1.0) >= 0.000001)
    {
      _HKInitializeLogging();
      v12 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[HKInteractiveChartViewController _validateStackedHeights:];
      }
    }
  }
}

- (void)interactiveChartHasData:(id)a3
{
  v4 = a3;
  if (![(HKInteractiveChartViewController *)self chartDataIsAvailable])
  {
    v5 = [(HKInteractiveChartViewController *)self chartHasDataCompletion];

    if (!v5)
    {
      [(HKInteractiveChartViewController *)self setChartHasDataCompletion:v4];
      goto LABEL_7;
    }

    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HKInteractiveChartViewController interactiveChartHasData:];
    }
  }

  v4[2](v4);
LABEL_7:
}

- (BOOL)chartDataIsAvailable
{
  v2 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  v3 = [v2 graphView];

  if (v3)
  {
    v4 = [v3 allSeriesHaveDataAvailable];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)supportedTimeScopes
{
  options = self->_options;
  v3 = [(HKInteractiveChartViewController *)self timeScopeRanges];
  v4 = [HKInteractiveChartViewController _timeScopesWithOptions:options timeScopeRanges:v3];

  return v4;
}

- (id)currentValueViewAsString
{
  [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(HKInteractiveChartViewController *)self dataSourceForCurrentValueViewString];
  v5 = v4;
  if (self->_currentValueView)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    [v3 addObject:@"Unable to determine current value view content"];
  }

  else
  {
    v7 = [v4 dateViewWithOrientation:0];
    v8 = [(HKInteractiveChartViewController *)self _valueViewToString:v7];
    [v3 addObject:v8];

    v9 = [v5 numberOfValuesForAnnotationView:self->_currentValueView];
    if (v9 < 1)
    {
      [v3 addObject:@"No Data"];
    }

    else
    {
      v10 = v9;
      for (i = 0; i != v10; ++i)
      {
        v12 = [v5 valueViewForColumnAtIndex:i orientation:1];
        v13 = [(HKInteractiveChartViewController *)self _valueViewToString:v12];
        [v3 addObject:v13];
      }
    }
  }

  v14 = [(HKInteractiveChartViewController *)self _assembleValueViewString:v3];

  return v14;
}

- (id)_valueViewToString:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 text];
    v6 = v5;
    v7 = @"NilLabelText";
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;
  }

  else
  {
    v6 = [v4 subviews];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__HKInteractiveChartViewController__valueViewToString___block_invoke;
    v11[3] = &unk_1E81B98F0;
    v11[4] = self;
    v9 = [v6 hk_map:v11];
    v8 = [(HKInteractiveChartViewController *)self _assembleValueViewString:v9];
  }

  return v8;
}

- (id)_assembleValueViewString:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [v3 componentsJoinedByString:@"|"];
    v6 = [v4 stringWithFormat:@"(%@)", v5];
  }

  else
  {
    v6 = @"None";
  }

  return v6;
}

- (id)accessibilityDataForChart
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(HKTimeScopeControl *)self->_radioButtons selectedTimeScope];
  v5 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  v6 = [v5 graphView];
  v7 = [(HKInteractiveChartViewController *)self trendAccessibilityDelegate];
  v8 = [v7 trendAccessibilitySeries];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = [(HKInteractiveChartViewController *)self descriptionSeriesForGraphView:v6];
  }

  v10 = v9;
  v11 = [v9 resolutionForTimeScope:v4 traitResolution:{objc_msgSend(v6, "resolutionFromTraitCollectionAttributes")}];
  v12 = MEMORY[0x1E695E0F8];
  if (v5 && v10)
  {
    v13 = v11;
    [v6 hardLeftMarginWidth];
    v15 = v14;
    v12 = [(HKInteractiveChartViewController *)self descriptionSpansForGraphView:v6 timeScope:v4];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __61__HKInteractiveChartViewController_accessibilityDataForChart__block_invoke;
    v19[3] = &unk_1E81B9918;
    v19[4] = self;
    v23 = v4;
    v24 = v13;
    v20 = v6;
    v21 = v8;
    v25 = v15;
    v22 = v3;
    [v20 enumerateVisibleCoordinatesForSeries:v10 block:v19];
  }

  if (v8)
  {
    v16 = [[HKAccessibilityData alloc] initWithPointData:v3 accessibilitySpans:v12];
  }

  else
  {
    v17 = [(HKInteractiveChartViewController *)self addNoDataEntries:v3 timeScope:v4 targetSeries:v10];
    v16 = [[HKAccessibilityData alloc] initWithPointData:v17 accessibilitySpans:v12];
  }

  return v16;
}

void __61__HKInteractiveChartViewController_accessibilityDataForChart__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  v6 = [v24 userInfo];
  if (v6 && [objc_opt_class() conformsToProtocol:&unk_1F43A09B0])
  {
    v7 = v6;
    v8 = [*(a1 + 32) descriptionForChartData:v7 timeScope:*(a1 + 64)];
    v9 = v8;
    if (v8 && [v8 count])
    {
      v10 = *(a1 + 32);
      [v24 startXValue];
      v12 = v11;
      [v24 endXValue];
      v14 = [v10 descriptionForStartX:v7 endX:*(a1 + 64) chartData:*(a1 + 72) timeScope:*(a1 + 40) resolution:v12 graphView:v13];
      if (*(a1 + 48))
      {
        v15 = *(a1 + 32);
        [v24 startXValue];
        v17 = v16;
        [v24 endXValue];
        v19 = [v15 _trendCoordinateDescriptionForStartX:*(a1 + 64) endX:*(a1 + 40) timeScope:v17 graphView:v18];

        v14 = v19;
      }

      v20 = *(a1 + 32);
      [v24 startXValue];
      v21 = [v20 dateForXCoordinate:*(a1 + 40) graphView:?];
      [v5 startXValue];
      v23 = [[HKAccessibilityPointData alloc] initWithHorizontalScreenCoordinate:v14 horizontalTimeCoordinate:v21 horizontalDate:v9 values:v22 + *(a1 + 80)];
      [*(a1 + 56) addObject:v23];
    }
  }
}

- (id)_trendCoordinateDescriptionForStartX:(double)a3 endX:(double)a4 timeScope:(int64_t)a5 graphView:(id)a6
{
  v10 = a6;
  v11 = [(HKInteractiveChartViewController *)self dateForXCoordinate:v10 graphView:a3];
  v12 = [(HKInteractiveChartViewController *)self dateForXCoordinate:v10 graphView:a4];

  v13 = [HKValueRange valueRangeWithMinValue:v11 maxValue:v12];
  if (a5 == 3)
  {
    v14 = [(HKInteractiveChartViewController *)self currentCalendar];
    v15 = [v14 firstWeekday];

    v16 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v17 = [MEMORY[0x1E696AB80] hk_dateIntervalWithValueRange:v13];
    v18 = [v16 hk_weeksContainingInterval:v17 firstWeekday:v15];

    v19 = [v18 startDate];
    v20 = [v18 endDate];
    v21 = [HKValueRange valueRangeWithMinValue:v19 maxValue:v20];

    v13 = v21;
  }

  v22 = [(HKInteractiveChartViewController *)self stringForValueRange:v13 timeScope:a5];
  v23 = [(HKInteractiveChartViewController *)self replaceRangeClause:v22];

  return v23;
}

- (id)addNoDataEntries:(id)a3 timeScope:(int64_t)a4 targetSeries:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  v10 = v9;
  if (v8 && v9)
  {
    v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = v10;
    v11 = [v10 graphView];
    v12 = [v11 xAxis];
    v51 = v7;
    v55 = [v7 count];
    v13 = [v11 effectiveVisibleRangeActive];
    v14 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:a4];
    v15 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v16 = [v13 startDate];
    v17 = [v12 transform];
    [v17 coordinateForValue:v16];
    v19 = v18;

    v48 = v12;
    [v12 pointTransform];
    v22 = HKLinearTransformValue(v20, v21, v19);
    v50 = v8;
    v47 = v14;
    v53 = [v8 resolutionForTimeScope:a4 traitResolution:{objc_msgSend(v11, "resolutionFromTraitCollectionAttributes")}];
    v23 = [v14 seriesPointIntervalComponentsAtResolution:?];
    v45 = [v15 dateByAddingComponents:v23 toDate:v16 options:0];
    v46 = v16;
    v24 = HKDateMidpoint(v16, v45);
    v25 = v13;
    v26 = [v13 endDate];
    LODWORD(v13) = [v24 hk_isBeforeOrEqualToDate:v26];

    if (v13)
    {
      v27 = 0;
      while (1)
      {
        if (v27 < v55)
        {
          v28 = [v51 objectAtIndexedSubscript:v27];
          v29 = [(HKAccessibilityPointData *)v28 horizontalDate];
          if ([(HKInteractiveChartViewController *)self _date:v24 closeToDate:v29 epsilonDateComponents:v23 calendar:v15])
          {
            ++v27;

            if (v28)
            {
              goto LABEL_11;
            }
          }

          else
          {
          }
        }

        v30 = [v11 xAxis];
        v31 = [v30 transform];
        [v31 coordinateForValue:v24];
        v33 = v32;

        [v30 pointTransform];
        v36 = HKLinearTransformValue(v34, v35, v33) - v22;
        [v11 hardLeftMarginWidth];
        v38 = v36 + v37;
        v39 = [(HKInteractiveChartViewController *)self descriptionForStartX:0 endX:a4 chartData:v53 timeScope:v11 resolution:v33 graphView:v33];
        v28 = [[HKAccessibilityPointData alloc] initWithHorizontalScreenCoordinate:v39 horizontalTimeCoordinate:v24 horizontalDate:0 values:v38];

        if (v28)
        {
LABEL_11:
          [v52 addObject:v28];
        }

        v40 = [v15 dateByAddingComponents:v23 toDate:v24 options:0];

        v41 = [v25 endDate];
        v42 = [v40 hk_isBeforeOrEqualToDate:v41];

        v24 = v40;
        if ((v42 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    v40 = v24;
LABEL_16:

    v8 = v50;
    v7 = v51;
    v10 = v49;
    v43 = v52;
  }

  else
  {
    v43 = v7;
  }

  return v43;
}

- (BOOL)_date:(id)a3 closeToDate:(id)a4 epsilonDateComponents:(id)a5 calendar:(id)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [a6 dateByAddingComponents:a5 toDate:v10 options:0];
  [v11 timeIntervalSinceDate:v10];
  v13 = v12 * 0.5;
  [v9 timeIntervalSinceDate:v10];
  v15 = v14;

  return fabs(v15) < v13;
}

- (id)descriptionSpansForGraphView:(id)a3 timeScope:(int64_t)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = [(HKInteractiveChartViewController *)self descriptionSeriesForGraphView:a3, a4];
  v6 = [v5 visibleValueRange];
  v7 = [v6 minValue];
  v8 = [(HKInteractiveChartViewController *)self _rangeValueAsNumber:v7];

  v9 = [v6 maxValue];
  v10 = [(HKInteractiveChartViewController *)self _rangeValueAsNumber:v9];

  NSClassFromString(&cfstr_Hkbarseries.isa);
  if (objc_opt_isKindOfClass())
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = [(HKInteractiveChartViewController *)self _displayTypeForSeries:v5];
  v13 = [(HKInteractiveChartViewController *)self _displayNameForDisplayType:v12];
  v14 = [(HKInteractiveChartViewController *)self unitPreferenceController];
  v15 = [v14 localizedDisplayNameForDisplayType:v12];

  v16 = [[HKAccessibilitySpan alloc] initWithTitle:v13 seriesType:v11 dataComprehensionMinYValue:v8 dataComprehensionMaxYValue:v10 dataComprehensionUnitForChart:v15];
  v19 = v13;
  v20[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  return v17;
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

- (id)descriptionForStartX:(double)a3 endX:(double)a4 chartData:(id)a5 timeScope:(int64_t)a6 resolution:(int64_t)a7 graphView:(id)a8
{
  v11 = a8;
  v12 = [(HKInteractiveChartViewController *)self dateForXCoordinate:v11 graphView:a3];
  if (v12)
  {
    v13 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v14 = [v13 components:126 fromDate:v12];

    v15 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v16 = HKCombinedStringForAnnotationDateWithTimeScope(v14, v15, [(HKTimeScopeControl *)self->_radioButtons selectedTimeScope], a7);
    v17 = [(HKInteractiveChartViewController *)self replaceRangeClause:v16];
  }

  else
  {
    v18 = [(HKInteractiveChartViewController *)self _numberForXCoordinate:v11 graphView:a3];
    v14 = v18;
    v19 = &stru_1F42FFBE0;
    if (v18)
    {
      v19 = v18;
    }

    v17 = v19;
  }

  return v17;
}

- (id)dateForXCoordinate:(double)a3 graphView:(id)a4
{
  v5 = [a4 xAxis];
  v6 = [v5 transform];
  v7 = [v6 valueForCoordinate:a3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_numberForXCoordinate:(double)a3 graphView:(id)a4
{
  v5 = [a4 xAxis];
  v6 = [v5 transform];
  v7 = [v6 valueForCoordinate:a3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v8 setNumberStyle:1];
    [v8 setUsesSignificantDigits:1];
    v9 = [v8 stringFromNumber:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)replaceRangeClause:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"–"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v3;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v9 = [v3 substringWithRange:{0, v4}];
    v10 = [v3 substringWithRange:{v7 + v8, objc_msgSend(v3, "length") - (v7 + v8)}];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"RANGE_CLAUSE_%@_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v6 = [v11 stringWithFormat:v13, v9, v10];
  }

  return v6;
}

- (id)descriptionForChartData:(id)a3 timeScope:(int64_t)a4
{
  v53[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  if (v7)
  {
    v39 = v7;
    v8 = [v7 graphView];
    v37 = [(HKInteractiveChartViewController *)self descriptionSeriesForGraphView:v8];
    v9 = [(HKInteractiveChartViewController *)self _displayTypeForSeries:?];
    v10 = [v9 hk_interactiveChartsFormatterForTimeScope:{-[HKTimeScopeControl selectedTimeScope](self->_radioButtons, "selectedTimeScope")}];
    v11 = [MEMORY[0x1E69DB878] hk_chartLollipopValueFont];
    [v10 setMajorFont:v11];

    v12 = [MEMORY[0x1E69DB878] hk_chartLollipopKeyFont];
    [v10 setMinorFont:v12];

    [v10 setDisplayType:v9];
    v13 = [(HKInteractiveChartViewController *)self unitPreferenceController];
    [v10 setUnitController:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v9 objectType];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v16 = v10;
        v17 = [v9 objectType];
        [v16 configureFormatterForDisplayType:v9 quantityType:v17 chartRangeProvider:v8 timeScope:a4 context:0];
      }
    }

    v38 = v8;
    v40 = v6;
    v53[0] = v6;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    v36 = v10;
    v19 = [v10 formattedSelectedRangeLabelDataWithChartData:v18 context:0];

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v19;
    v45 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v45)
    {
      v42 = *v49;
      v43 = v9;
      do
      {
        for (i = 0; i != v45; ++i)
        {
          if (*v49 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v48 + 1) + 8 * i);
          v22 = [MEMORY[0x1E69DC888] labelColor];
          v23 = [HKSelectedRangeLabel standardPrefixColorForSelectedRangeData:v21 defaultColor:v22];
          v24 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
          v46 = v23;
          v47 = v22;
          v25 = [HKSelectedRangeLabel attributedStringForSelectedRangeData:v21 font:v24 foregroundColor:v22 prefixColor:v23 prefersImageAffixes:0 embedded:0];

          v26 = [(HKInteractiveChartViewController *)self _displayNameForDisplayType:v9];
          if (v25)
          {
            v27 = [v25 string];
          }

          else
          {
            v27 = &stru_1F42FFBE0;
          }

          v28 = [HKAccessibilityValue alloc];
          v29 = [v21 attributedString];
          v30 = [v29 string];
          [(HKInteractiveChartViewController *)self replaceRangeClause:v30];
          v32 = v31 = self;
          v33 = [v21 valueAsNumber];
          v34 = [(HKAccessibilityValue *)v28 initWithValueTitle:v26 valueType:v27 valueDescription:v32 valueAsNumber:v33];

          self = v31;
          [v44 addObject:v34];

          v9 = v43;
        }

        v45 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v45);
    }

    v7 = v39;
    v6 = v40;
  }

  return v44;
}

- (void)addChartViewObserver:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_62];
  [(NSMutableArray *)self->_observers filterUsingPredicate:v5];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_observers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [*(*(&v12 + 1) + 8 * v10) observer];

      if (v11 == v4)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v6 = [[_HKInteractiveChartWeakObserverWrapper alloc] initWithObserver:v4];
    [(NSMutableArray *)self->_observers addObject:v6];
  }
}

BOOL __57__HKInteractiveChartViewController_addChartViewObserver___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 observer];
  v3 = v2 != 0;

  return v3;
}

- (void)removeChartViewObserver:(id)a3
{
  v7 = a3;
  if ([(NSMutableArray *)self->_observers count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [(NSMutableArray *)self->_observers objectAtIndexedSubscript:v4];
      v6 = [v5 observer];

      if (v6 == v7)
      {
        break;
      }

      if (++v4 >= [(NSMutableArray *)self->_observers count])
      {
        goto LABEL_7;
      }
    }

    [(NSMutableArray *)self->_observers removeObjectAtIndex:v4];
  }

LABEL_7:
}

- (void)replaceCurrentDisplayTypesWithTypes:(id)a3 stackOffset:(int64_t)a4 resetDateRange:(BOOL)a5 automaticAutoScale:(BOOL)a6
{
  v26 = a5;
  v27 = a6;
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(NSArray *)self->_allGraphSeriesConfigurationManagers objectAtIndexedSubscript:a4];
  v10 = [(HKInteractiveChartViewController *)self primaryGraphSeriesForTimeScope:[(HKInteractiveChartViewController *)self _dateZoom]];
  v28 = [v10 visibleValueRange];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = [v9 allDisplayTypes];
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v9 removeConfigurationsForDisplayType:*(*(&v36 + 1) + 8 * i)];
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v13);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v40 = *(*(&v32 + 1) + 8 * j);
        v21 = v40;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
        [(HKInteractiveChartViewController *)self _addDisplayTypeToConfiguration:v21 allDisplayTypes:v22 configurationManager:v9];
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v18);
  }

  [(HKInteractiveChartViewController *)self _updateAfterConfigurationChangeIncludeDateAxis:v26];
  if (v27)
  {
    v23 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __118__HKInteractiveChartViewController_replaceCurrentDisplayTypesWithTypes_stackOffset_resetDateRange_automaticAutoScale___block_invoke;
    v29[3] = &unk_1E81B5A10;
    v29[4] = self;
    v30 = v23;
    v31 = v28;
    v24 = v23;
    [v24 autoscaleYAxesAnimated:1 specificRange:0 onlyIfNeeded:0 completion:v29];
  }

  v25 = [(HKInteractiveChartViewController *)self lollipopController];
  [v25 setInvisibleAnimated:1];

  [(HKInteractiveChartViewController *)self _setSelectedGraphSeries:0 animated:1];
}

void __118__HKInteractiveChartViewController_replaceCurrentDisplayTypesWithTypes_stackOffset_resetDateRange_automaticAutoScale___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateCurrentValueViewWithVisibleRange];
  v3 = [*(a1 + 32) primaryGraphSeriesForTimeScope:{objc_msgSend(*(a1 + 32), "_dateZoom")}];
  v2 = [v3 visibleValueRange];

  if (!v2)
  {
    [*(a1 + 40) autoscaleYAxesAnimated:0 specificRange:*(a1 + 48) onlyIfNeeded:0 completion:0];
  }
}

- (void)addOverlayDisplayType:(id)a3 stackOffset:(int64_t)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  allGraphSeriesConfigurationManagers = self->_allGraphSeriesConfigurationManagers;
  v7 = a3;
  v8 = [(NSArray *)allGraphSeriesConfigurationManagers objectAtIndexedSubscript:a4];
  v10[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(HKInteractiveChartViewController *)self _addDisplayTypeToConfiguration:v7 allDisplayTypes:v9 configurationManager:v8];

  [(HKInteractiveChartViewController *)self _updateAfterConfigurationChangeIncludeDateAxis:0];
  [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
  [(HKInteractiveChartViewController *)self _automaticAutoScale];
}

- (void)removeOverlayDisplayType:(id)a3 stackOffset:(int64_t)a4 automaticAutoscale:(BOOL)a5
{
  v5 = a5;
  allGraphSeriesConfigurationManagers = self->_allGraphSeriesConfigurationManagers;
  v9 = a3;
  v10 = [(NSArray *)allGraphSeriesConfigurationManagers objectAtIndexedSubscript:a4];
  [v10 removeConfigurationsForDisplayType:v9];

  [(HKInteractiveChartViewController *)self _updateAfterConfigurationChangeIncludeDateAxis:0];
  [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
  if (v5)
  {
    [(HKInteractiveChartViewController *)self _automaticAutoScale];
  }
}

- (id)currentDisplayTypesForStackOffset:(int64_t)a3
{
  v3 = [(NSArray *)self->_allGraphSeriesConfigurationManagers objectAtIndexedSubscript:a3];
  v4 = [v3 allDisplayTypes];

  return v4;
}

- (id)graphSeriesForDisplayType:(id)a3 timeScope:(int64_t)a4 stackOffset:(int64_t)a5
{
  allGraphSeriesConfigurationManagers = self->_allGraphSeriesConfigurationManagers;
  v8 = a3;
  v9 = [(NSArray *)allGraphSeriesConfigurationManagers objectAtIndexedSubscript:a5];
  v10 = [v9 configurationForDisplayType:v8 zoom:a4];

  v11 = [v10 graphSeries];

  return v11;
}

- (id)primaryGraphSeriesForTimeScope:(int64_t)a3
{
  v5 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
  v6 = [(HKInteractiveChartViewController *)self graphSeriesForDisplayType:v5 timeScope:a3 stackOffset:[(HKInteractiveChartViewController *)self primaryDisplayTypeStackIndex]];

  return v6;
}

- (void)setDetailView:(id)a3
{
  v4 = a3;
  v5 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  [v5 setDetailView:v4];
}

- (void)dealloc
{
  v3 = [(HKInteractiveChartViewController *)self sampleTypeDateRangeController];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E696BE70] object:0];

  v5.receiver = self;
  v5.super_class = HKInteractiveChartViewController;
  [(HKInteractiveChartViewController *)&v5 dealloc];
}

- (void)loadView
{
  v5 = [[HKMinimumSizeView alloc] initWithFrame:0.0, 0.0, 320.0, 100.0];
  [(HKInteractiveChartViewController *)self minimumHeightForChart];
  [(HKMinimumSizeView *)v5 setMinimumHeight:?];
  v3 = [MEMORY[0x1E696AEC0] hk_chartAccessibilityIdentifier:@"Top"];
  [(HKMinimumSizeView *)v5 setAccessibilityIdentifier:v3];

  [(HKInteractiveChartViewController *)self setView:v5];
  v4 = [(HKInteractiveChartViewController *)self view];
  [v4 setPreservesSuperviewLayoutMargins:1];
}

- (double)_effectiveHorizontalMargin
{
  if ([(HKInteractiveChartViewController *)self _applyHorizontalMarginsToEntireView])
  {
    v3 = [(HKInteractiveChartViewController *)self view];
    [v3 frame];
    [HKWidthDesignationProvider widthDesignationFromViewWidth:v4];

    HKCollectionViewLayoutDefaultLayoutMarginsForWidthDesignation();
    return v5;
  }

  else
  {
    v7 = [(HKInteractiveChartViewController *)self view];
    [v7 layoutMargins];
    v9 = v8;

    return fmax(v9, 16.0) + -4.0;
  }
}

- (BOOL)_applyHorizontalMarginsToEntireView
{
  v2 = [MEMORY[0x1E696C608] sharedBehavior];
  v3 = [v2 isiPad];

  return v3;
}

- (void)viewWillLayoutSubviews
{
  v45.receiver = self;
  v45.super_class = HKInteractiveChartViewController;
  [(HKInteractiveChartViewController *)&v45 viewWillLayoutSubviews];
  [(HKInteractiveChartViewController *)self _effectiveHorizontalMargin];
  v4 = v3;
  v5 = [(HKInteractiveChartViewController *)self view];
  [v5 bounds];
  Width = CGRectGetWidth(v46);

  v7 = [(HKInteractiveChartViewController *)self view];
  [v7 bounds];
  Height = CGRectGetHeight(v47);

  if ([(HKInteractiveChartViewController *)self _headerLineEnabled])
  {
    [(HKInteractiveChartViewController *)self _layoutHeader];
  }

  else
  {
    [(HKInteractiveChartViewController *)self _omitLayoutHeader];
  }

  v9 = [(HKInteractiveChartViewController *)self _timeScopeEnabled];
  v10 = [(HKInteractiveChartViewController *)self _applyHorizontalMarginsToEntireView];
  v11 = 0.0;
  if (v9)
  {
    v12 = 42.0;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [(HKInteractiveChartViewController *)self _currentValueEnabled];
  if ([MEMORY[0x1E69DCEB0] hk_currentDeviceHas4InchScreen])
  {
    *&v14 = 76.0;
LABEL_14:
    v16 = *&v14;
    goto LABEL_15;
  }

  if (![MEMORY[0x1E69DCEB0] hk_currentDeviceHas4Point7InchScreen])
  {
    *&v14 = 80.0;
    goto LABEL_14;
  }

  v15 = [MEMORY[0x1E69DCEB0] hk_currentDeviceHasDisplayZoomedEnabled];
  v16 = 80.0;
  if (v15)
  {
    v16 = 76.0;
  }

LABEL_15:
  v43 = v16;
  if (!v13)
  {
    v16 = 0.0;
  }

  v17 = v16 + v12 + self->_bannerBottom;
  v18 = v17;
  if (!v13)
  {
    [(HKInteractiveChartViewController *)self dateSelectorHeight];
    v11 = v19;
    v18 = v12 + self->_bannerBottom;
  }

  v44 = v18;
  v20 = Height - (v17 + v11);
  v21 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  v22 = [v21 graphView];
  [v22 leftMarginViewRect];
  v24 = v23;

  v25 = v4 - v24;
  if (v10)
  {
    v26 = Width + v24 + v4 * -2.0;
  }

  else
  {
    v26 = Width;
  }

  if (!v10)
  {
    v25 = 0.0;
  }

  v42 = v25;
  [(UIView *)self->_primaryGraphViewWrapper setFrame:?];
  v27 = [(HKGraphViewController *)self->_primaryGraphViewController view];
  [v27 setFrame:{0.0, 0.0, v26, v20}];

  radioButtons = self->_radioButtons;
  if (v9)
  {
    v41 = v12;
    [(HKTimeScopeControl *)radioButtons minimumWidth];
    v30 = fmax(v29, 550.0);
    [(HKTimeScopeControl *)self->_radioButtons frame];
    v31 = Width + v4 * -2.0;
    if (Width <= v30)
    {
      v32 = v4;
    }

    else
    {
      v32 = (Width - v30) * 0.5;
    }

    if (Width <= v30)
    {
      v33 = Width + v4 * -2.0;
    }

    else
    {
      v33 = v30;
    }

    bannerBottom = self->_bannerBottom;
    [(HKTimeScopeControl *)self->_radioButtons frame];
    v49.origin.x = v35;
    v49.origin.y = v36;
    v49.size.width = v37;
    v49.size.height = v38;
    v48.origin.x = v32;
    v48.origin.y = bannerBottom;
    v48.size.width = v33;
    v48.size.height = 42.0;
    if (!CGRectEqualToRect(v48, v49))
    {
      [(HKTimeScopeControl *)self->_radioButtons setFrame:v32, bannerBottom, v33, 42.0];
    }

    v12 = v41;
  }

  else
  {
    [(HKTimeScopeControl *)radioButtons setHidden:1];
    v31 = Width + v4 * -2.0;
  }

  [(HKInteractiveChartViewController *)self dateSelectorHeight];
  [(HKCurrentTimeView *)self->_currentTimeView setFrame:v4, v44, v31, v39];
  if (v13)
  {
    [(HKCurrentTimeView *)self->_currentTimeView removeFromSuperview];
    [(UIView *)self->_currentValueView setHidden:0];
    if (v10)
    {
      v40 = v31 + v24;
    }

    else
    {
      v40 = Width;
    }

    [(UIView *)self->_currentValueView setFrame:v42, v12 + self->_bannerBottom, v40, v43];
  }

  else
  {
    [(UIView *)self->_currentValueView setHidden:1];
  }

  [(HKInteractiveChartViewController *)self _layoutDividerViews];
  [(HKInteractiveChartViewController *)self _layoutDashboardEmptyLabelsIfNecessary];
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  v4 = [v3 graphView];
  [v4 resetAndRedraw];

  [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = HKInteractiveChartViewController;
  v4 = a3;
  [(HKInteractiveChartViewController *)&v10 traitCollectionDidChange:v4];
  v5 = [(HKInteractiveChartViewController *)self traitCollection:v10.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    v8 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
    v9 = [v8 graphView];
    [v9 resetAndRedraw];

    [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
  }
}

- (double)_annotationViewCenterY
{
  v3 = [(HKInteractiveChartViewController *)self _timeScopeEnabled];
  v4 = 42.0;
  if (!v3)
  {
    v4 = 0.0;
  }

  return v4 + self->_bannerBottom;
}

- (void)_layoutHeader
{
  v57[2] = *MEMORY[0x1E69E9840];
  [(HKInteractiveChartViewController *)self _effectiveHorizontalMargin];
  v4 = v3;
  v5 = [(HKInteractiveChartViewController *)self view];
  [v5 bounds];
  Width = CGRectGetWidth(v58);

  v7 = [(HKInteractiveChartViewController *)self view];
  [v7 bounds];
  v8 = CGRectGetWidth(v59);

  if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:0] == 1)
  {
    if ([(HKInteractiveChartViewController *)self _selectedDateRangeLabelEnabled])
    {
      selectedSeriesUnitLabel = self->_selectedSeriesUnitLabel;
      v57[0] = self->_selectedPointDateLabel;
      v57[1] = selectedSeriesUnitLabel;
      v10 = MEMORY[0x1E695DEC8];
      v11 = v57;
      v12 = 2;
    }

    else
    {
      v56 = self->_selectedSeriesUnitLabel;
      v10 = MEMORY[0x1E695DEC8];
      v11 = &v56;
      v12 = 1;
    }

    v13 = [v10 arrayWithObjects:v11 count:v12];
    selectedSeriesLabel = self->_selectedSeriesLabel;
    v15 = MEMORY[0x1E695DEC8];
    p_selectedSeriesLabel = &selectedSeriesLabel;
    goto LABEL_9;
  }

  v54 = self->_selectedSeriesLabel;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
  if (![(HKInteractiveChartViewController *)self _selectedDateRangeLabelEnabled])
  {
    v52 = self->_selectedSeriesUnitLabel;
    v15 = MEMORY[0x1E695DEC8];
    p_selectedSeriesLabel = &v52;
LABEL_9:
    v17 = 1;
    goto LABEL_10;
  }

  v14 = self->_selectedSeriesUnitLabel;
  v53[0] = self->_selectedPointDateLabel;
  v53[1] = v14;
  v15 = MEMORY[0x1E695DEC8];
  p_selectedSeriesLabel = v53;
  v17 = 2;
LABEL_10:
  v18 = [v15 arrayWithObjects:p_selectedSeriesLabel count:v17];
  v19 = Width - v4;
  v20 = 32.0;
  do
  {
    v21 = v20;
    if (v20 >= v8)
    {
      break;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v22 = v13;
    v23 = [v22 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v47;
      v26 = 0.0;
      v27 = 0.0;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v47 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v29 = *(*(&v46 + 1) + 8 * i);
          [v29 sizeToFit];
          [v29 frame];
          [v29 setFrame:?];
          [v29 sizeToFit];
          [v29 frame];
          if (v26 < v33)
          {
            v26 = v33;
          }

          v34 = v4 + CGRectGetWidth(*&v30);
          if (v27 < v34)
          {
            v27 = v34;
          }

          [v29 setFrame:{v4, 0.0, v34 - v4, v21}];
        }

        v24 = [v22 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v24);
    }

    else
    {
      v26 = 0.0;
      v27 = 0.0;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v35 = v18;
    v36 = [v35 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v43;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v43 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v42 + 1) + 8 * j);
          [v40 sizeToFit];
          [v40 frame];
          v41 = v19 - CGRectGetWidth(v60);
          if (v27 >= v41)
          {
            v41 = v27;
          }

          [v40 setFrame:{v41, 0.0, v19 - v41, v21}];
        }

        v37 = [v35 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v37);
    }

    v20 = v21 + 32.0;
  }

  while (v26 >= v21);
  self->_bannerBottom = v21;
}

- (void)_omitLayoutHeader
{
  [(UILabel *)self->_selectedSeriesLabel setHidden:1];
  [(UILabel *)self->_selectedSeriesUnitLabel setHidden:1];
  [(HKUIDateLabel *)self->_selectedPointDateLabel setHidden:1];
  self->_bannerBottom = 0.0;
}

- (void)_layoutDividerViews
{
  [(UIView *)self->_primaryGraphViewWrapper frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(HKInteractiveChartViewController *)self view];
  [v11 bounds];
  Width = CGRectGetWidth(v17);

  v13 = HKUIOnePixel();
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  CGRectGetMinY(v18);
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  [(UIView *)self->_graphTopDividerView setFrame:0.0, CGRectGetMinY(v19), Width, v13];
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  [(UIView *)self->_graphBottomDividerView setFrame:0.0, CGRectGetMaxY(v20) + -25.0, Width, v13];
  v14 = [(HKInteractiveChartViewController *)self view];
  [v14 bringSubviewToFront:self->_graphTopDividerView];

  v15 = [(HKInteractiveChartViewController *)self view];
  [v15 bringSubviewToFront:self->_graphBottomDividerView];
}

- (void)_layoutDashboardEmptyLabelsIfNecessary
{
  if ([(HKInteractiveChartViewController *)self _dashboardEmptyLabelsExist])
  {
    [(UILabel *)self->_dashboardEmptyHeader sizeToFit];
    v3 = [(HKInteractiveChartViewController *)self view];
    [v3 bounds];
    Width = CGRectGetWidth(v17);
    [(HKInteractiveChartViewController *)self _effectiveHorizontalMargin];
    v6 = Width + v5 * -2.0;

    [(UILabel *)self->_dashboardEmptyDescription setFrame:0.0, 0.0, fmin(v6, 380.0), 1.79769313e308];
    [(UILabel *)self->_dashboardEmptyDescription sizeToFit];
    [(UILabel *)self->_dashboardEmptyHeader frame];
    Height = CGRectGetHeight(v18);
    [(UILabel *)self->_dashboardEmptyDescription frame];
    v8 = CGRectGetHeight(v19);
    v9 = Height + v8 + 12.0;
    [(UIView *)self->_graphTopDividerView frame];
    MinY = CGRectGetMinY(v20);
    [(UIView *)self->_graphBottomDividerView frame];
    v11 = (MinY + CGRectGetMaxY(v21)) * 0.5;
    v12 = [(HKInteractiveChartViewController *)self view];
    [v12 bounds];
    MidX = CGRectGetMidX(v22);

    [(UILabel *)self->_dashboardEmptyHeader setCenter:MidX, Height * 0.5 + v11 - v9 * 0.5];
    [(UILabel *)self->_dashboardEmptyDescription setCenter:MidX, v9 * 0.5 + v11 - v8 * 0.5];
    dashboardEmptyHeader = self->_dashboardEmptyHeader;
    [(UILabel *)dashboardEmptyHeader frame];
    v24 = CGRectIntegral(v23);
    [(UILabel *)dashboardEmptyHeader setFrame:v24.origin.x, v24.origin.y, v24.size.width, v24.size.height];
    dashboardEmptyDescription = self->_dashboardEmptyDescription;
    [(UILabel *)dashboardEmptyDescription frame];
    v26 = CGRectIntegral(v25);

    [(UILabel *)dashboardEmptyDescription setFrame:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height];
  }
}

+ (id)_timeScopesWithOptions:(unint64_t)a3 timeScopeRanges:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ((v4 & 0x80) != 0)
  {
    v7 = [a1 _timeScope:7 inTimeScopeRanges:v6];
    if ((v4 & 0x400) != 0)
    {
LABEL_3:
      v8 = 0;
      if ((v4 & 0x8000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    if ((v4 & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = [a1 _timeScope:6 inTimeScopeRanges:v6];
  if ((v4 & 0x8000) != 0)
  {
LABEL_4:
    v9 = 0;
    if ((v4 & 0x4000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v9 = [a1 _timeScope:5 inTimeScopeRanges:v6];
  if ((v4 & 0x4000) != 0)
  {
LABEL_5:
    v10 = 0;
    if ((v4 & 0x200) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = [a1 _timeScope:3 inTimeScopeRanges:v6];
  if ((v4 & 0x200) != 0)
  {
LABEL_6:
    v11 = 0;
    if ((v4 & 0x100) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v12 = 0;
    if ((v4 & 0x200000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v11 = [a1 _timeScope:2 inTimeScopeRanges:v6];
  if ((v4 & 0x100) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v12 = [a1 _timeScope:1 inTimeScopeRanges:v6];
  if ((v4 & 0x200000) != 0)
  {
LABEL_8:
    v13 = [a1 _timeScope:0 inTimeScopeRanges:v6];
    goto LABEL_16;
  }

LABEL_15:
  v13 = 0;
LABEL_16:
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = v14;
  if (v7)
  {
    [v14 addObject:&unk_1F4383EC8];
    if (!v8)
    {
LABEL_18:
      if (!v9)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if (!v8)
  {
    goto LABEL_18;
  }

  [v15 addObject:&unk_1F4383EE0];
  if (v9)
  {
LABEL_19:
    [v15 addObject:&unk_1F4383EF8];
  }

LABEL_20:
  [v15 addObject:&unk_1F4383F10];
  if (v10)
  {
    [v15 addObject:&unk_1F4383F28];
    if (!v11)
    {
LABEL_22:
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }
  }

  else if (!v11)
  {
    goto LABEL_22;
  }

  [v15 addObject:&unk_1F4383F40];
  if (!v12)
  {
LABEL_23:
    if (!v13)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_33:
  [v15 addObject:&unk_1F4383F58];
  if (v13)
  {
LABEL_24:
    [v15 addObject:&unk_1F4383F70];
  }

LABEL_25:
  v16 = [v15 copy];

  return v16;
}

+ (BOOL)_timeScope:(int64_t)a3 inTimeScopeRanges:(id)a4
{
  if (!a4)
  {
    return 1;
  }

  v5 = MEMORY[0x1E696AD98];
  v6 = a4;
  v7 = [v5 numberWithInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = v8 != 0;
  return v9;
}

+ (int64_t)_timeScopeForTimeScope:(int64_t)a3 availableTimeScopes:(id)a4
{
  v7 = a4;
  if (![v7 count])
  {
    [HKInteractiveChartViewController _timeScopeForTimeScope:a2 availableTimeScopes:a1];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [v7 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [v7 lastObject];
    v11 = [v10 integerValue];

    if ([v7 count] != 1)
    {
      v12 = [v7 lastObject];
      v13 = [v12 integerValue];

      if (v13 <= a3)
      {
        v14 = [v7 firstObject];
        v15 = [v14 integerValue];

        if (v15 < a3)
        {
          v16 = [v7 firstObject];
          a3 = [v16 integerValue];

          goto LABEL_12;
        }

        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __79__HKInteractiveChartViewController__timeScopeForTimeScope_availableTimeScopes___block_invoke;
        v20[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
        v20[4] = a3;
        v17 = [v7 hk_firstObjectPassingTest:v20];
        v18 = v17;
        if (v17)
        {
          v11 = [v17 integerValue];
        }
      }
    }

    a3 = v11;
  }

LABEL_12:

  return a3;
}

- (int64_t)_defaultTimeScopeWithAvailableTimeScopes:(id)a3
{
  v4 = a3;
  v5 = [(HKInteractiveChartViewController *)self _singleFixedRange];
  if (v5)
  {
    v6 = [HKGraphZoomLevelConfiguration timeScopeForDateRange:v5];
  }

  else
  {
    v7 = [(HKInteractiveChartViewController *)self selectedTimeScopeController];
    v6 = [v7 selectedTimeScope];
  }

  v8 = [HKInteractiveChartViewController _timeScopeForTimeScope:v6 availableTimeScopes:v4];

  return v8;
}

- (BOOL)_selectedSeriesWantsLastRecordedDate
{
  v2 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
  v3 = [v2 displayTypeIdentifier] == 95;

  return v3;
}

- (void)viewDidLoad
{
  v64.receiver = self;
  v64.super_class = HKInteractiveChartViewController;
  [(HKInteractiveChartViewController *)&v64 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  v4 = [(HKInteractiveChartViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [[HKCurrentTimeView alloc] initWithWideHorizontalMargin:0];
  currentTimeView = self->_currentTimeView;
  self->_currentTimeView = v5;

  [(HKCurrentTimeView *)self->_currentTimeView setDelegate:self];
  v7 = [(HKInteractiveChartViewController *)self _singleFixedRange];
  [(HKCurrentTimeView *)self->_currentTimeView setDisableControls:v7 != 0];

  [(HKCurrentTimeView *)self->_currentTimeView setOmitPrevNextButtons:1];
  v8 = [(HKInteractiveChartViewController *)self view];
  [v8 addSubview:self->_currentTimeView];

  v9 = [(HKInteractiveChartViewController *)self currentValueViewHandler];
  v10 = [v9 makeCurrentValueView];
  currentValueView = self->_currentValueView;
  self->_currentValueView = v10;

  v12 = [MEMORY[0x1E696AEC0] hk_chartAccessibilityIdentifier:@"ValueView"];
  [(UIView *)self->_currentValueView setAccessibilityIdentifier:v12];

  v13 = [(HKInteractiveChartViewController *)self currentValueViewHandler];
  [v13 setCurrentValueViewCallbacks:self];

  v14 = [(HKInteractiveChartViewController *)self view];
  [v14 addSubview:self->_currentValueView];

  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  primaryGraphViewWrapper = self->_primaryGraphViewWrapper;
  self->_primaryGraphViewWrapper = v15;

  [(UIView *)self->_primaryGraphViewWrapper setClipsToBounds:1];
  v17 = self->_primaryGraphViewWrapper;
  v18 = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  [(UIView *)v17 setBackgroundColor:v18];

  v19 = [(HKInteractiveChartViewController *)self view];
  [v19 addSubview:self->_primaryGraphViewWrapper];

  [(HKInteractiveChartViewController *)self _configureInitialLollipopSelection];
  options = self->_options;
  v21 = [(HKInteractiveChartViewController *)self timeScopeRanges];
  v22 = [HKInteractiveChartViewController _timeScopesWithOptions:options timeScopeRanges:v21];

  if ([(HKInteractiveChartViewController *)self _chartHasDateAxis])
  {
    v23 = [(HKInteractiveChartViewController *)self _defaultTimeScopeWithAvailableTimeScopes:v22];
    v24 = [(HKInteractiveChartViewController *)self initialXValue];
    [(HKInteractiveChartViewController *)self _replacePrimaryGraphViewControllerWithTimeScope:v23 anchorDate:v24 animated:0];
  }

  else
  {
    [(HKInteractiveChartViewController *)self _replacePrimaryGraphViewControllerWithScalarController];
  }

  [(HKInteractiveChartViewController *)self _handleInitialLollipopSelection];
  v25 = [HKTimeScopeControl controlWithFrame:v22 timeScopes:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  radioButtons = self->_radioButtons;
  self->_radioButtons = v25;

  v27 = [MEMORY[0x1E696AEC0] hk_chartAccessibilityIdentifier:@"TimeScopes"];
  [(HKTimeScopeControl *)self->_radioButtons setAccessibilityIdentifier:v27];

  [(HKTimeScopeControl *)self->_radioButtons addTarget:self action:sel__radioButtonsDidUpdate_ forControlEvents:4096];
  v28 = [(HKInteractiveChartViewController *)self view];
  [v28 addSubview:self->_radioButtons];

  [(HKTimeScopeControl *)self->_radioButtons setSelectedTimeScope:[(HKInteractiveChartViewController *)self _dateZoom]];
  if (![(HKInteractiveChartViewController *)self _chartHasDateAxis])
  {
    [(HKInteractiveChartViewController *)self _hideTimeDateControls];
  }

  v29 = [MEMORY[0x1E69DC888] tableSeparatorColor];
  v30 = objc_alloc_init(MEMORY[0x1E69DD250]);
  graphTopDividerView = self->_graphTopDividerView;
  self->_graphTopDividerView = v30;

  [(UIView *)self->_graphTopDividerView setBackgroundColor:v29];
  v32 = [(HKInteractiveChartViewController *)self view];
  [v32 addSubview:self->_graphTopDividerView];

  v33 = objc_alloc_init(MEMORY[0x1E69DD250]);
  graphBottomDividerView = self->_graphBottomDividerView;
  self->_graphBottomDividerView = v33;

  [(UIView *)self->_graphBottomDividerView setBackgroundColor:v29];
  v35 = [(HKInteractiveChartViewController *)self view];
  [v35 addSubview:self->_graphBottomDividerView];

  v36 = [(HKInteractiveChartViewController *)self makeAnnotationDataSource];
  [(HKInteractiveChartViewController *)self setAnnotationDataSource:v36];

  [(HKInteractiveChartViewController *)self setLegendBottomLocation:0.0];
  v37 = [HKLollipopController alloc];
  v38 = [(HKInteractiveChartViewController *)self annotationDataSource];
  v39 = [(HKInteractiveChartViewController *)self view];
  v40 = [(HKLollipopController *)v37 initWithAnnotationDataSource:v38 parentView:v39 delegate:self];
  [(HKInteractiveChartViewController *)self setLollipopController:v40];

  v41 = (self->_options >> 12) & 1;
  v42 = [(HKInteractiveChartViewController *)self lollipopController];
  [v42 setCenterLollipopVertically:v41];

  v43 = objc_alloc_init(HKUIDateLabel);
  selectedPointDateLabel = self->_selectedPointDateLabel;
  self->_selectedPointDateLabel = v43;

  v45 = self->_selectedPointDateLabel;
  v46 = [MEMORY[0x1E69DC888] labelColor];
  [(HKUIDateLabel *)v45 setTextColor:v46];

  v47 = self->_selectedPointDateLabel;
  v48 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0];
  [(HKUIDateLabel *)v47 setFont:v48];

  [(HKUIDateLabel *)self->_selectedPointDateLabel setUseUppercase:0];
  [(HKUIDateLabel *)self->_selectedPointDateLabel setAdjustsFontSizeToFitWidth:1];
  [(HKUIDateLabel *)self->_selectedPointDateLabel setTextAlignment:2];
  [(HKUIDateLabel *)self->_selectedPointDateLabel setAlpha:0.0];
  v49 = [(HKInteractiveChartViewController *)self view];
  [v49 addSubview:self->_selectedPointDateLabel];

  v50 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  selectedSeriesLabel = self->_selectedSeriesLabel;
  self->_selectedSeriesLabel = v50;

  v52 = self->_selectedSeriesLabel;
  v53 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)v52 setTextColor:v53];

  v54 = self->_selectedSeriesLabel;
  v55 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:20.0];
  [(UILabel *)v54 setFont:v55];

  [(UILabel *)self->_selectedSeriesLabel setNumberOfLines:0];
  [(UILabel *)self->_selectedSeriesLabel setTextAlignment:0];
  v56 = [(HKInteractiveChartViewController *)self view];
  [v56 addSubview:self->_selectedSeriesLabel];

  v57 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  selectedSeriesUnitLabel = self->_selectedSeriesUnitLabel;
  self->_selectedSeriesUnitLabel = v57;

  v59 = self->_selectedSeriesUnitLabel;
  v60 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)v59 setTextColor:v60];

  v61 = self->_selectedSeriesUnitLabel;
  v62 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:20.0];
  [(UILabel *)v61 setFont:v62];

  [(UILabel *)self->_selectedSeriesUnitLabel setAdjustsFontSizeToFitWidth:1];
  v63 = [(HKInteractiveChartViewController *)self view];
  [v63 addSubview:self->_selectedSeriesUnitLabel];

  [(HKInteractiveChartViewController *)self _updateSelectedSeriesLabel:0];
  self->_bannerBottom = 32.0;
  [(HKInteractiveChartViewController *)self _showHideNoGraphSeriesLabels];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = HKInteractiveChartViewController;
  [(HKInteractiveChartViewController *)&v7 viewDidAppear:a3];
  v4 = [(UIViewController *)self hk_viewIsHidden];
  v5 = [(HKInteractiveChartViewController *)self restorationUserActivity];

  if (v5)
  {
    if (!v4)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__HKInteractiveChartViewController_viewDidAppear___block_invoke;
      block[3] = &unk_1E81B55A8;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

void __50__HKInteractiveChartViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 restorationUserActivity];
  [v1 restoreUserActivityState:v2];
}

- (id)_singleFixedRange
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(HKInteractiveChartViewController *)self timeScopeRanges];
  if (v3 && (v4 = v3, -[HKInteractiveChartViewController timeScopeRanges](self, "timeScopeRanges"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6 == 1))
  {
    memset(v12, 0, sizeof(v12));
    v7 = [(HKInteractiveChartViewController *)self timeScopeRanges];
    if ([v7 countByEnumeratingWithState:v12 objects:v13 count:16])
    {
      v8 = **(&v12[0] + 1);
      v9 = [(HKInteractiveChartViewController *)self timeScopeRanges];
      v10 = [v9 objectForKeyedSubscript:v8];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)fixedRangeForTimeScope:(int64_t)a3
{
  v5 = [(HKInteractiveChartViewController *)self timeScopeRanges];
  if (v5)
  {
    v6 = [(HKInteractiveChartViewController *)self timeScopeRanges];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v8 = [v6 objectForKeyedSubscript:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_valueRange:(id)a3 fitsInsideValueRange:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 minValue];
  v8 = [v6 minValue];
  v9 = [v7 compare:v8];

  v10 = [v6 maxValue];

  v11 = [v5 maxValue];

  v12 = [v10 compare:v11];
  return v9 != 1 && v12 != 1;
}

- (void)_setGraphViewAxisAndVisibleDateRangeForTimeScope:(int64_t)a3 anchorDate:(id)a4 preserveScrollPosition:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  v10 = [(HKInteractiveChartViewController *)self fixedRangeForTimeScope:a3];
  if (!v10)
  {
    v37 = v8;
    v14 = [(HKInteractiveChartViewController *)self currentCalendar];
    v15 = [v14 firstWeekday];

    v16 = [(HKInteractiveChartViewController *)self _defaultAxisRangeIncludeToday:1];
    v17 = [(HKInteractiveChartViewController *)self defaultAlignmentForTimeScope:a3];
    v18 = [(HKInteractiveChartViewController *)self currentCalendar];
    v13 = [HKGraphZoomLevelConfiguration chartDataRangeForTimeScope:a3 dataRange:v16 firstWeekday:v15 calendar:v18 cadence:0 alignment:v17];

    if (v5)
    {
      v12 = [v9 effectiveVisibleRangeCadence];
      v11 = [v9 effectiveVisibleRangeActive];
      v19 = [v12 minValue];
      v20 = [v13 minValue];
      v21 = [v19 compare:v20];

      if (v21 == -1)
      {
        v22 = [v12 minValue];
        v23 = [v13 maxValue];
        v24 = [HKValueRange valueRangeWithMinValue:v22 maxValue:v23];

        v13 = v24;
      }

      v25 = [v12 maxValue];
      v26 = [v13 maxValue];
      v27 = [v25 compare:v26];

      if (v27 != 1)
      {
LABEL_17:

        v8 = v37;
        if (!v13)
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }

      v28 = [v13 minValue];
      v29 = [v12 maxValue];
      v30 = [HKValueRange valueRangeWithMinValue:v28 maxValue:v29];

      v13 = v30;
    }

    else
    {
      v36 = v16;
      if (self->_hasInitialDateRangeAndTimeScope && (self->_options & 0x100000) != 0)
      {
        v17 = 3;
      }

      v31 = [(HKInteractiveChartViewController *)self currentCalendar];
      v28 = [HKGraphZoomLevelConfiguration chartVisibleRangeForTimeScope:a3 anchorDate:v37 alignment:v17 dataRange:v13 calendar:v31 firstWeekday:v15 cadence:0 level:0];

      v29 = [(HKInteractiveChartViewController *)self visibleRangeForTimeScope:a3 proposedRange:v28];
      if ([(HKInteractiveChartViewController *)self _acceptSubclassRange:v29 proposedRange:v28 axisRange:v13])
      {
        v29 = v29;
        v11 = v29;
        v12 = v29;
      }

      else
      {
        v28 = v28;
        v32 = [(HKInteractiveChartViewController *)self currentCalendar];
        v11 = [HKGraphZoomLevelConfiguration chartVisibleRangeForTimeScope:a3 anchorDate:v37 alignment:v17 dataRange:v13 calendar:v32 firstWeekday:v15 cadence:1 level:0];

        v12 = v28;
      }

      v16 = v36;
    }

    goto LABEL_17;
  }

  v11 = [(HKInteractiveChartViewController *)self _graphViewAxisAndVisibleDateRangeForTimeScope:a3 fixedRange:v10];
  v12 = v11;
  v13 = v11;
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v12 && v11)
  {
    _HKInitializeLogging();
    v33 = HKLogWellnessDashboard();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG);

    if (v34)
    {
      v35 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [HKInteractiveChartViewController _setGraphViewAxisAndVisibleDateRangeForTimeScope:v13 anchorDate:v35 preserveScrollPosition:?];
      }
    }

    [v9 setContentWidthFromTimeScope:v10 == 0];
    [v9 setEffectiveAxisRange:v13 effectiveVisibleRangeCadence:v12 effectiveVisibleRangeActive:v11];
  }

LABEL_25:
}

- (BOOL)_acceptSubclassRange:(id)a3 proposedRange:(id)a4 axisRange:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 startDate];
  v11 = [v9 endDate];

  v12 = [v8 startDate];
  v13 = [v8 endDate];

  if ([v10 hk_isAfterOrEqualToDate:v12] && objc_msgSend(v11, "hk_isBeforeOrEqualToDate:", v13))
  {
    v14 = [v7 startDate];
    v15 = [v7 endDate];
    v16 = ![v10 isEqualToDate:v14] || (objc_msgSend(v11, "isEqualToDate:", v15) & 1) == 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_graphViewAxisAndVisibleDateRangeForTimeScope:(int64_t)a3 fixedRange:(id)a4
{
  v5 = a4;
  v6 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:a3];
  [v6 canonicalSize];
  v8 = v7;
  if (a3 != 4 || ((v9 = v7 - (3 * *MEMORY[0x1E696B510]), [v5 endDate], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "timeIntervalSinceReferenceDate"), v12 = v11, objc_msgSend(v5, "startDate"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "timeIntervalSinceReferenceDate"), v15 = v12 - v14, v13, v10, v15 >= v9) ? (v16 = v15 > v8) : (v16 = 1), v16))
  {
    v17 = [v5 startDate];
    v18 = [v5 endDate];
    v19 = HKUIMidDate(v17, v18);
    v20 = [v19 dateByAddingTimeInterval:-(v8 * 0.5)];
    v21 = [v19 dateByAddingTimeInterval:v8 * 0.5];
    v22 = [HKValueRange valueRangeWithMinValue:v20 maxValue:v21];
  }

  else
  {
    v22 = v5;
  }

  return v22;
}

- (BOOL)_visibleRangeIsNowForTimeScope:(int64_t)a3
{
  v5 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  v6 = [v5 effectiveVisibleRangeCadence];
  if (v6)
  {
    v7 = [(HKInteractiveChartViewController *)self currentCalendar];
    v8 = [v7 firstWeekday];

    v9 = [MEMORY[0x1E695DF00] date];
    v10 = [v5 effectiveAxisRange];
    v11 = [(HKInteractiveChartViewController *)self currentCalendar];
    v12 = [HKGraphZoomLevelConfiguration chartVisibleRangeForTimeScope:a3 anchorDate:v9 alignment:3 dataRange:v10 calendar:v11 firstWeekday:v8 cadence:0 level:0];

    v13 = [v5 effectiveVisibleRangeCadence];
    v14 = [v12 isEqual:v13];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (id)makeAnchorDateFromPreviousAnchorDate:(id)a3 previousEffectiveVisibleRange:(id)a4 previousTimeScope:(int64_t)a5 currentTimeScope:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = v11;
  v14 = [(HKInteractiveChartViewController *)self lollipopController];
  v15 = [v14 firstLollipopDateSinceDelta:0.25];

  v16 = [(HKInteractiveChartViewController *)self _dateForMostRecentData];
  v17 = [(HKInteractiveChartViewController *)self _singleFixedRange];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 startDate];
    v20 = [v18 endDate];
    v21 = HKUIMidDate(v19, v20);

LABEL_6:
    goto LABEL_7;
  }

  if (v15)
  {
    v21 = v15;

    if (a6 >= 6)
    {
      if (a6 != 8)
      {
        goto LABEL_7;
      }

      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"HKInteractiveChartViewController.m" lineNumber:1558 description:{@"Invalid zoom specified (%ld)", 8}];
    }

    else
    {
      __138__HKInteractiveChartViewController_makeAnchorDateFromPreviousAnchorDate_previousEffectiveVisibleRange_previousTimeScope_currentTimeScope___block_invoke(v22, v21, a6);
      v21 = v19 = v21;
    }

    goto LABEL_6;
  }

  v21 = v13;
  if (![(HKInteractiveChartViewController *)self _visibleRangeIsNowForTimeScope:a5])
  {
    v21 = [v12 endDate];

    if (a5 <= a6 && (a6 & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      v26 = [MEMORY[0x1E695DEE8] currentCalendar];
      v27 = [v26 startOfDayForDate:v21];
      v28 = [v27 isEqualToDate:v21];

      if (v28)
      {
        v29 = [MEMORY[0x1E695DEE8] currentCalendar];
        v30 = [v29 dateByAddingUnit:16 value:-1 toDate:v21 options:0];

        v21 = v30;
      }
    }

    if (a6 == 7)
    {
      v31 = [MEMORY[0x1E695DEE8] currentCalendar];
      v19 = [v31 startOfDayForDate:v21];

      v32 = [MEMORY[0x1E695DEE8] currentCalendar];
      v33 = [v32 dateByAddingUnit:16 value:1 toDate:v19 options:0];

      v34 = HKUIMidDate(v19, v33);
      if (HKUIObjectIsLargerOrEqual(v16, v19) && HKUIObjectIsSmaller(v16, v33))
      {
        v35 = [v34 laterDate:v16];
      }

      else
      {
        v35 = v34;
      }

      v36 = v35;

      v21 = v36;
      goto LABEL_6;
    }
  }

LABEL_7:
  if (([v21 hk_isAfterDate:v16] & 1) != 0 || !v21)
  {
    v23 = v16;

    v21 = v23;
  }

  v24 = v21;

  return v21;
}

id __138__HKInteractiveChartViewController_makeAnchorDateFromPreviousAnchorDate_previousEffectiveVisibleRange_previousTimeScope_currentTimeScope___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:a3];
  [v5 approximateSeriesPointIntervalAtResolution:0];
  v7 = v6;
  [v5 canonicalSize];
  v9 = [v4 dateByAddingTimeInterval:(v8 - v7) * 0.5];

  return v9;
}

- (void)updatePrimaryGraphViewController
{
  if ([(HKInteractiveChartViewController *)self _chartHasDateAxis])
  {
    v3 = [(HKTimeScopeControl *)self->_radioButtons selectedTimeScope];

    [(HKInteractiveChartViewController *)self _replacePrimaryGraphViewControllerWithTimeScope:v3 anchorDate:0 animated:0];
  }

  else
  {

    [(HKInteractiveChartViewController *)self _replacePrimaryGraphViewControllerWithScalarController];
  }
}

- (void)_replacePrimaryGraphViewControllerWithTimeScope:(int64_t)a3 anchorDate:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  primaryGraphViewController = self->_primaryGraphViewController;
  v9 = a4;
  v10 = [(HKGraphViewController *)primaryGraphViewController dateZoom];
  memset(&v65, 0, sizeof(v65));
  if (v10 >= a3)
  {
    CGAffineTransformMakeScale(&v65, 0.899999999, 1.0);
    v11 = 1.1;
  }

  else
  {
    CGAffineTransformMakeScale(&v65, 1.1, 1.0);
    v11 = 0.899999999;
  }

  memset(&v64, 0, sizeof(v64));
  CGAffineTransformMakeScale(&v64, v11, 1.0);
  v12 = self->_primaryGraphViewController;
  v13 = [(HKGraphViewController *)v12 graphView];
  v14 = [v13 effectiveVisibleRangeActive];

  v15 = [(HKInteractiveChartViewController *)self makeAnchorDateFromPreviousAnchorDate:v9 previousEffectiveVisibleRange:v14 previousTimeScope:v10 currentTimeScope:a3];

  v16 = [(HKGraphViewController *)v12 graphView];
  [v16 removeSeries];

  v17 = [(HKGraphViewController *)v12 view];
  [v17 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(HKGraphViewController *)v12 graphView];
  [v26 xAxisSpace];
  v28 = v27;

  v29 = [(HKInteractiveChartViewController *)self currentCalendar];
  v30 = [(HKInteractiveChartViewController *)self makePrimaryGraphViewControllerWithDateZoom:a3 previousDateZoom:v10 previousXAxisSpace:v29 currentCalendar:v28];
  v31 = self->_primaryGraphViewController;
  self->_primaryGraphViewController = v30;

  [(HKInteractiveChartViewController *)self primaryGraphViewControllerDidInitialize:self->_primaryGraphViewController];
  [(HKGraphViewController *)self->_primaryGraphViewController setGraphViewDelegateProxy:self];
  v32 = [(HKGraphViewController *)self->_primaryGraphViewController view];
  [v32 setFrame:{v19, v21, v23, v25}];

  [(HKInteractiveChartViewController *)self addChildViewController:self->_primaryGraphViewController];
  primaryGraphViewWrapper = self->_primaryGraphViewWrapper;
  v34 = [(HKGraphViewController *)self->_primaryGraphViewController view];
  [(UIView *)primaryGraphViewWrapper addSubview:v34];

  [(HKGraphViewController *)self->_primaryGraphViewController didMoveToParentViewController:self];
  v35 = [(HKGraphViewController *)self->_primaryGraphViewController view];
  [v35 setAlpha:0.0];

  v36 = [(HKGraphViewController *)self->_primaryGraphViewController view];
  v63 = v64;
  [v36 setTransform:&v63];

  v37 = [(HKGraphViewController *)self->_primaryGraphViewController view];
  v38 = [(HKInteractiveChartViewController *)self view];
  v39 = [v38 backgroundColor];
  [v37 setBackgroundColor:v39];

  [(HKInteractiveChartViewController *)self _configureSelectedRangeFormatterWithChartRangeProvider];
  v40 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  v41 = [(HKInteractiveChartViewController *)self view];
  v42 = [v41 backgroundColor];
  [v40 setTopMarginColor:v42];

  [v40 setTilingDisabled:{-[HKInteractiveChartViewController _tilingDisabled](self, "_tilingDisabled")}];
  [v40 setPrefersOpaqueLegends:{-[HKInteractiveChartViewController _prefersOpaqueLegends](self, "_prefersOpaqueLegends")}];
  [v40 setDrawsGridlinesPerSeriesGroup:{-[HKInteractiveChartViewController _drawsGridlinesPerSeriesGroup](self, "_drawsGridlinesPerSeriesGroup")}];
  [(HKInteractiveChartViewController *)self _setGraphViewAxisAndVisibleDateRangeForTimeScope:a3 anchorDate:v15 preserveScrollPosition:0];
  v43 = [(HKInteractiveChartViewController *)self view];
  [v43 setNeedsLayout];

  v44 = [(HKInteractiveChartViewController *)self view];
  [v44 layoutSubviews];

  aBlock = MEMORY[0x1E69E9820];
  v58 = 3221225472;
  v59 = __104__HKInteractiveChartViewController__replacePrimaryGraphViewControllerWithTimeScope_anchorDate_animated___block_invoke;
  v60 = &unk_1E81B9980;
  v45 = v12;
  v61 = v45;
  v62 = self;
  v46 = _Block_copy(&aBlock);
  v50 = MEMORY[0x1E69E9820];
  v51 = 3221225472;
  v52 = __104__HKInteractiveChartViewController__replacePrimaryGraphViewControllerWithTimeScope_anchorDate_animated___block_invoke_2;
  v53 = &unk_1E81B99A8;
  v54 = self;
  v55 = v45;
  v56 = v65;
  v47 = v45;
  v48 = _Block_copy(&v50);
  v49 = v48;
  if (v5)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v48 animations:v46 completion:{0.25, v50, v51, v52, v53, v54, v55, *&v56.a, *&v56.c, *&v56.tx, aBlock, v58, v59, v60}];
  }

  else
  {
    (*(v48 + 2))(v48);
    v46[2](v46, 1);
  }
}

void *__104__HKInteractiveChartViewController__replacePrimaryGraphViewControllerWithTimeScope_anchorDate_animated___block_invoke(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    [result willMoveToParentViewController:0];
    v5 = [*(a1 + 32) view];
    [v5 removeFromSuperview];

    result = [*(a1 + 32) removeFromParentViewController];
  }

  if (a2)
  {
    v6 = *(a1 + 40);

    return [v6 _automaticAutoScale];
  }

  return result;
}

void __104__HKInteractiveChartViewController__replacePrimaryGraphViewControllerWithTimeScope_anchorDate_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1136) view];
  [v2 setAlpha:1.0];

  v3 = [*(*(a1 + 32) + 1136) view];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v8 = *MEMORY[0x1E695EFD0];
  v9 = v4;
  v10 = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:&v8];

  v5 = [*(a1 + 40) view];
  [v5 setAlpha:0.0];

  v6 = [*(a1 + 40) view];
  v7 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = v7;
  v10 = *(a1 + 80);
  [v6 setTransform:&v8];
}

- (void)_replacePrimaryGraphViewControllerWithScalarController
{
  v3 = [[HKScalarGraphViewController alloc] initWithMinimumHeight:10.0];
  primaryGraphViewController = self->_primaryGraphViewController;
  self->_primaryGraphViewController = &v3->super;

  [(HKGraphViewController *)self->_primaryGraphViewController setGraphViewDelegateProxy:self];
  primaryGraphViewWrapper = self->_primaryGraphViewWrapper;
  v6 = [(HKGraphViewController *)self->_primaryGraphViewController view];
  [(UIView *)primaryGraphViewWrapper addSubview:v6];

  [(HKInteractiveChartViewController *)self addChildViewController:self->_primaryGraphViewController];
  [(HKGraphViewController *)self->_primaryGraphViewController didMoveToParentViewController:self];

  [(HKInteractiveChartViewController *)self _configureSelectedRangeFormatterWithChartRangeProvider];
}

- (void)_configureSelectedRangeFormatterWithChartRangeProvider
{
  v5 = [(HKInteractiveChartViewController *)self selectedRangeFormatter];
  v3 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  v4 = [v3 graphView];
  [v5 configureWithChartRangeProvider:v4];
}

- (void)_handleVisibleRangeChange
{
  [(HKInteractiveChartViewController *)self _setDateSelectorToVisibleRange];

  [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
}

- (void)_configureInitialLollipopSelection
{
  v6 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
  v3 = [v6 chartingRules];
  options = self->_options;
  if ([v3 shouldShowInitialLollipop] && (options & 0x2000) == 0)
  {
    v5 = [(HKInteractiveChartViewController *)self _dateForMostRecentData];
    [(HKInteractiveChartViewController *)self initialXValue];

    if (v5)
    {
      [(HKInteractiveChartViewController *)self setDisableCurrentValueViewForInitialLollipop:1];
    }
  }
}

- (void)_handleInitialLollipopSelection
{
  v3 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  v4 = v3;
  if (v3)
  {
    v10 = v3;
    v3 = [(HKInteractiveChartViewController *)self disableCurrentValueViewForInitialLollipop];
    v4 = v10;
    if (v3)
    {
      v5 = [(HKInteractiveChartViewController *)self _dateForMostRecentData];
      v6 = [(HKInteractiveChartViewController *)self initialXValue];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = v5;
      }

      v9 = v8;

      if ([(HKInteractiveChartViewController *)self _shouldHandleInitialLollipopTouchDate:v9 mostRecentDataDate:v5 forGraphView:v10])
      {
        [v10 touchSelectionAtModelX:v9];
      }

      else
      {
        [(HKInteractiveChartViewController *)self graphViewExternalSelectionEnd:v10];
      }

      v4 = v10;
    }
  }

  MEMORY[0x1EEE66BB8](v3, v4);
}

- (BOOL)_shouldHandleInitialLollipopTouchDate:(id)a3 mostRecentDataDate:(id)a4 forGraphView:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    v11 = [v9 xAxisDateZoom];
    if (v11 == 8)
    {
      v12 = 1;
    }

    else
    {
      v13 = v11;
      v14 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:v11];
      v15 = [v10 resolutionFromTraitCollectionAttributes];
      v16 = [v10 primarySeries];
      v17 = [v16 resolutionForTimeScope:v13 traitResolution:v15];

      [v14 approximateSeriesPointIntervalAtResolution:v17];
      v18 = [v8 dateByAddingTimeInterval:?];
      v12 = [v7 hk_isBeforeOrEqualToDate:v18];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)installGraphViewSnapshot
{
  primaryGraphViewSnapshot = self->_primaryGraphViewSnapshot;
  if (primaryGraphViewSnapshot)
  {
    [(UIView *)primaryGraphViewSnapshot removeFromSuperview];
    v4 = self->_primaryGraphViewSnapshot;
    self->_primaryGraphViewSnapshot = 0;
  }

  v5 = [(UIView *)self->_primaryGraphViewWrapper snapshotViewAfterScreenUpdates:0];
  v6 = self->_primaryGraphViewSnapshot;
  self->_primaryGraphViewSnapshot = v5;

  [(UIView *)self->_primaryGraphViewWrapper frame];
  [(UIView *)self->_primaryGraphViewSnapshot setFrame:?];
  v7 = [(HKInteractiveChartViewController *)self view];
  [v7 insertSubview:self->_primaryGraphViewSnapshot aboveSubview:self->_primaryGraphViewWrapper];
}

- (void)removeGraphViewSnapshotAnimated:(BOOL)a3
{
  primaryGraphViewSnapshot = self->_primaryGraphViewSnapshot;
  if (primaryGraphViewSnapshot)
  {
    if (a3)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __68__HKInteractiveChartViewController_removeGraphViewSnapshotAnimated___block_invoke;
      v7[3] = &unk_1E81B55A8;
      v7[4] = self;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __68__HKInteractiveChartViewController_removeGraphViewSnapshotAnimated___block_invoke_2;
      v6[3] = &unk_1E81B7C10;
      v6[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:v6 completion:0.12];
    }

    else
    {
      [(UIView *)primaryGraphViewSnapshot removeFromSuperview];
      v5 = self->_primaryGraphViewSnapshot;
      self->_primaryGraphViewSnapshot = 0;
    }
  }
}

void __68__HKInteractiveChartViewController_removeGraphViewSnapshotAnimated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1144) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1144);
  *(v2 + 1144) = 0;
}

- (void)_unitPreferencesDidUpdate:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__HKInteractiveChartViewController__unitPreferencesDidUpdate___block_invoke;
  v6[3] = &unk_1E81B5AD0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __62__HKInteractiveChartViewController__unitPreferencesDidUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696BE68]];

  [*(a1 + 40) unitPreferencesWillUpdate:v4];
  [*(a1 + 40) _updateAxisScalingRulesForUnitPreferenceChangesOfTypes:v4];
  v3 = [*(*(a1 + 40) + 1136) graphView];
  [v3 invalidateDataSourceCaches];
  [*(a1 + 40) _automaticAutoScale];
  [*(a1 + 40) _handleVisibleRangeChange];
}

- (void)_updateAxisScalingRulesForUnitPreferenceChangesOfTypes:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = self->_allGraphSeriesConfigurationManagers;
  v31 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v31)
  {
    v30 = *v50;
    v33 = self;
    v34 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v50 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v5;
        v6 = *(*(&v49 + 1) + 8 * v5);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v7 = [v6 allDisplayTypes];
        v8 = [v7 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v46;
          v35 = *v46;
          v36 = v7;
          do
          {
            v11 = 0;
            v37 = v9;
            do
            {
              if (*v46 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v45 + 1) + 8 * v11);
              v13 = [v12 objectType];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 containsObject:v13])
              {
                v14 = v4;
                v39 = v13;
                v15 = [(HKInteractiveChartViewController *)self unitPreferenceController];
                v16 = [v15 unitForChartingDisplayType:v12];

                v40 = v16;
                if (v16)
                {
                  v38 = v11;
                  v43 = 0u;
                  v44 = 0u;
                  v41 = 0u;
                  v42 = 0u;
                  options = self->_options;
                  v18 = [(HKInteractiveChartViewController *)self timeScopeRanges];
                  v19 = [HKInteractiveChartViewController _timeScopesWithOptions:options timeScopeRanges:v18];

                  v20 = [v19 countByEnumeratingWithState:&v41 objects:v53 count:16];
                  if (v20)
                  {
                    v21 = v20;
                    v22 = *v42;
                    do
                    {
                      for (i = 0; i != v21; ++i)
                      {
                        if (*v42 != v22)
                        {
                          objc_enumerationMutation(v19);
                        }

                        v24 = [v6 configurationForDisplayType:v12 zoom:{objc_msgSend(*(*(&v41 + 1) + 8 * i), "integerValue")}];
                        v25 = [v24 graphSeries];
                        v26 = [v25 yAxis];
                        [v26 invalidateAxisLabelCache];

                        v27 = [v24 graphSeries];
                        v28 = [v27 axisScalingRule];

                        if ([v28 conformsToProtocol:&unk_1F4433D88] && (objc_opt_respondsToSelector() & 1) != 0)
                        {
                          [v28 setUnit:v40];
                        }
                      }

                      v21 = [v19 countByEnumeratingWithState:&v41 objects:v53 count:16];
                    }

                    while (v21);
                  }

                  self = v33;
                  v14 = v34;
                  v10 = v35;
                  v7 = v36;
                  v9 = v37;
                  v11 = v38;
                }

                v13 = v39;
                v4 = v14;
              }

              ++v11;
            }

            while (v11 != v9);
            v9 = [v7 countByEnumeratingWithState:&v45 objects:v54 count:16];
          }

          while (v9);
        }

        v5 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v31);
  }
}

- (id)makePrimaryGraphViewControllerWithDateZoom:(int64_t)a3 previousDateZoom:(int64_t)a4 previousXAxisSpace:(double)a5 currentCalendar:(id)a6
{
  v9 = a6;
  v10 = [[HKDateGraphViewController alloc] initWithDateZoom:a3 previousDateZoom:a4 previousXAxisSpace:v9 currentCalendar:a5];

  return v10;
}

- (id)_displayNameForDisplayType:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_options)
  {
LABEL_7:
    v7 = &stru_1F42FFBE0;
    goto LABEL_8;
  }

  v6 = [v4 localization];
  v7 = [v6 displayName];

  if (!v7)
  {
    v8 = [v5 localization];
    v7 = [v8 displayNameKey];

    if (!v7)
    {
      _HKInitializeLogging();
      v9 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [HKInteractiveChartViewController _displayNameForDisplayType:];
      }

      goto LABEL_7;
    }
  }

LABEL_8:

  return v7;
}

- (id)_displayUnitForDisplayType:(id)a3
{
  v4 = a3;
  v5 = [(HKInteractiveChartViewController *)self unitPreferenceController];
  v6 = [v4 unitNameForValue:0 unitPreferenceController:v5];

  return v6;
}

- (id)_allDisplayTypes
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_allGraphSeriesConfigurationManagers;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) allDisplayTypes];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_updateSelectedSeriesLabel:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(HKInteractiveChartViewController *)self _displayNameForDisplayType:v4];
    v6 = [(HKInteractiveChartViewController *)self _colorForDisplayType:v4];
    v7 = [(HKInteractiveChartViewController *)self _displayUnitForDisplayType:v4];
  }

  else
  {
    v8 = [(HKInteractiveChartViewController *)self _allDisplayTypes];
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v8;
    v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [(HKInteractiveChartViewController *)self _displayNameForDisplayType:v16];
          if (v17)
          {
            [v9 addObject:v17];
          }

          v18 = [(HKInteractiveChartViewController *)self _displayUnitForDisplayType:v16];
          if (v18)
          {
            [v10 addObject:v18];
          }

          v19 = [(HKInteractiveChartViewController *)self _colorForDisplayType:v16];
          if (v19)
          {
            [v11 addObject:v19];
          }
        }

        v13 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    if ([v9 count] == 1 && objc_msgSend(v10, "count") == 1)
    {
      v5 = [v9 anyObject];
      v7 = [v10 anyObject];
      v6 = [v11 anyObject];
    }

    else
    {
      v7 = 0;
      v6 = 0;
      v5 = 0;
    }

    v4 = 0;
  }

  selectedSeriesLabel = self->_selectedSeriesLabel;
  if (selectedSeriesLabel)
  {
    if (v5)
    {
      [(UILabel *)selectedSeriesLabel setText:v5];
      v21 = [(HKInteractiveChartViewController *)self view];
      [v21 setNeedsLayout];
    }

    if (v6)
    {
      [(UILabel *)self->_selectedSeriesLabel setTextColor:v6];
    }
  }

  selectedSeriesUnitLabel = self->_selectedSeriesUnitLabel;
  if (selectedSeriesUnitLabel)
  {
    if (v7)
    {
      [(UILabel *)selectedSeriesUnitLabel setText:v7];
    }

    if (v6)
    {
      [(UILabel *)self->_selectedSeriesUnitLabel setTextColor:v6];
    }
  }
}

- (void)_addDisplayTypeToConfiguration:(id)a3 allDisplayTypes:(id)a4 configurationManager:(id)a5
{
  v37 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(HKInteractiveChartViewController *)self _customGraphSeriesForDisplayType:v37];
  if (v10)
  {
    for (i = 0; i != 8; ++i)
    {
      [(HKInteractiveChartViewController *)self _configureCustomDisplayType:v37 graphSeries:v10 configurationManager:v9 timeScope:i];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v37;
      for (j = 0; j != 8; ++j)
      {
        v14 = [v12 graphSeriesForTimeScope:j];
        if (!v14)
        {
          v16 = 0;
          while (1)
          {
            v14 = [v12 graphSeriesForTimeScope:v16];
            if (v14)
            {
              break;
            }

            if (++v16 == 8)
            {
              v15 = 0;
              goto LABEL_9;
            }
          }
        }

        v15 = v14;
LABEL_9:
        [(HKInteractiveChartViewController *)self _configureCustomDisplayType:v12 graphSeries:v15 configurationManager:v9 timeScope:j];
      }
    }

    else
    {
      options = self->_options;
      v18 = [(HKInteractiveChartViewController *)self _numHorizontalDisplayTypesForTimeScope:6 displayTypes:v8];
      v19 = [(HKInteractiveChartViewController *)self _numHorizontalDisplayTypesForTimeScope:5 displayTypes:v8];
      v32 = [(HKInteractiveChartViewController *)self _numHorizontalDisplayTypesForTimeScope:4 displayTypes:v8];
      v33 = [(HKInteractiveChartViewController *)self _numHorizontalDisplayTypesForTimeScope:3 displayTypes:v8];
      v12 = objc_opt_new();
      v20 = objc_opt_new();
      v21 = v20;
      v36 = options;
      if ((options & 0x80) != 0)
      {
        [v20 setTimeScope:7];
        [v21 setNumberOfHorizontalDisplayTypes:{-[HKInteractiveChartViewController _numHorizontalDisplayTypesForTimeScope:displayTypes:](self, "_numHorizontalDisplayTypesForTimeScope:displayTypes:", 7, v8)}];
        [v21 setHorizontalIndex:0];
        [v12 addObject:v21];
      }

      v35 = v21;
      if ((options & 0x400) == 0)
      {
        v22 = objc_opt_new();
        [v22 setTimeScope:6];
        [v22 setNumberOfHorizontalDisplayTypes:v18];
        [v22 setHorizontalIndex:0];
        [v12 addObject:v22];
      }

      v23 = objc_opt_new();
      [v23 setTimeScope:5];
      [v23 setNumberOfHorizontalDisplayTypes:v19];
      [v23 setHorizontalIndex:0];
      v34 = v23;
      [v12 addObject:v23];
      v24 = objc_opt_new();
      [v24 setTimeScope:4];
      [v24 setNumberOfHorizontalDisplayTypes:v32];
      [v24 setHorizontalIndex:0];
      [v12 addObject:v24];
      v25 = objc_opt_new();
      [v25 setTimeScope:3];
      [v25 setNumberOfHorizontalDisplayTypes:v33];
      [v25 setHorizontalIndex:0];
      [v12 addObject:v25];
      v26 = objc_opt_new();
      v27 = v26;
      if ((v36 & 0x200) == 0)
      {
        [v26 setTimeScope:2];
        [v27 setNumberOfHorizontalDisplayTypes:{-[HKInteractiveChartViewController _numHorizontalDisplayTypesForTimeScope:displayTypes:](self, "_numHorizontalDisplayTypesForTimeScope:displayTypes:", 2, v8)}];
        [v27 setHorizontalIndex:0];
        [v12 addObject:v27];
      }

      v28 = objc_opt_new();
      v29 = v28;
      if ((v36 & 0x100) != 0)
      {
        [v28 setTimeScope:1];
        [v29 setNumberOfHorizontalDisplayTypes:{-[HKInteractiveChartViewController _numHorizontalDisplayTypesForTimeScope:displayTypes:](self, "_numHorizontalDisplayTypesForTimeScope:displayTypes:", 1, v8)}];
        [v29 setHorizontalIndex:0];
        [v12 addObject:v29];
      }

      v30 = objc_opt_new();
      v31 = v30;
      if ((v36 & 0x200000) != 0)
      {
        [v30 setTimeScope:0];
        [v31 setNumberOfHorizontalDisplayTypes:{-[HKInteractiveChartViewController _numHorizontalDisplayTypesForTimeScope:displayTypes:](self, "_numHorizontalDisplayTypesForTimeScope:displayTypes:", 0, v8)}];
        [v31 setHorizontalIndex:0];
        [v12 addObject:v31];
      }

      [(HKInteractiveChartViewController *)self _addSeriesForDisplayType:v37 updatingTimeScopeProperties:v12 configurationManager:v9];
    }
  }
}

- (void)_updateAfterConfigurationChangeIncludeDateAxis:(BOOL)a3
{
  if (a3 && [(HKInteractiveChartViewController *)self _chartHasDateAxis])
  {
    [(HKInteractiveChartViewController *)self _updateGraphViewAxisDateRange];
  }

  v4 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  [v4 setNeedsReloadSeries];

  [(HKInteractiveChartViewController *)self _showHideNoGraphSeriesLabels];

  [(HKInteractiveChartViewController *)self _updateSelectedSeriesLabel:0];
}

- (void)_setVisibleDisplayTypes:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v11 = objc_alloc_init(HKGraphSeriesConfigurationManager);
        [(HKGraphSeriesConfigurationManager *)v11 reset];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v21;
          do
          {
            v16 = 0;
            do
            {
              if (*v21 != v15)
              {
                objc_enumerationMutation(v12);
              }

              [(HKInteractiveChartViewController *)self _addDisplayTypeToConfiguration:*(*(&v20 + 1) + 8 * v16++) allDisplayTypes:v12 configurationManager:v11];
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v14);
        }

        [v5 addObject:v11];
        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v17 = [v5 copy];
  allGraphSeriesConfigurationManagers = self->_allGraphSeriesConfigurationManagers;
  self->_allGraphSeriesConfigurationManagers = v17;

  [(HKInteractiveChartViewController *)self _updateAfterConfigurationChangeIncludeDateAxis:1];
}

- (int64_t)addNewDisplayTypeStackWithDisplayTypes:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:self->_allGraphSeriesConfigurationManagers];
    v7 = objc_alloc_init(HKGraphSeriesConfigurationManager);
    [(HKGraphSeriesConfigurationManager *)v7 reset];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(HKInteractiveChartViewController *)self _addDisplayTypeToConfiguration:*(*(&v17 + 1) + 8 * v12++) allDisplayTypes:v8 configurationManager:v7, v17];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [v6 addObject:v7];
    v13 = [v6 copy];
    allGraphSeriesConfigurationManagers = self->_allGraphSeriesConfigurationManagers;
    self->_allGraphSeriesConfigurationManagers = v13;

    [(HKInteractiveChartViewController *)self _updateAfterConfigurationChangeIncludeDateAxis:0];
    [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
    [(HKInteractiveChartViewController *)self _scheduleDelayedAutoscale];
    [(HKInteractiveChartViewController *)self _updateGraphViewAxisDateRange];
    v15 = [v6 count] - 1;
  }

  else
  {
    v15 = -1;
  }

  return v15;
}

- (void)removeStackedDisplayType:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_allGraphSeriesConfigurationManagers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v12 + 1) + 8 * v10) configurationContainsDisplayType:{v4, v12}])
        {
          v8 = v11;
          goto LABEL_12;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_12:

  if (v8 < [(NSArray *)self->_allGraphSeriesConfigurationManagers count])
  {
    [(HKInteractiveChartViewController *)self removeDisplayTypeStackAtIndex:v8];
  }
}

- (BOOL)removeDisplayTypeStackAtIndex:(int64_t)a3
{
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:self->_allGraphSeriesConfigurationManagers];
  v6 = [v5 count];
  v7 = v6;
  if (a3 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3;
  }

  if (v6 > v8)
  {
    [v5 removeObjectAtIndex:a3];
    v9 = [v5 copy];
    allGraphSeriesConfigurationManagers = self->_allGraphSeriesConfigurationManagers;
    self->_allGraphSeriesConfigurationManagers = v9;

    [(HKInteractiveChartViewController *)self _updateAfterConfigurationChangeIncludeDateAxis:0];
    [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
    [(HKInteractiveChartViewController *)self _scheduleDelayedAutoscale];
  }

  return v7 > v8;
}

- (id)_customGraphSeriesForDisplayType:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 performSelector:sel_graphSeries];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_configureCustomDisplayType:(id)a3 graphSeries:(id)a4 configurationManager:(id)a5 timeScope:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(HKGraphSeriesConfiguration);
  [(HKGraphSeriesConfiguration *)v13 setGraphSeries:v11];

  [(HKGraphSeriesConfiguration *)v13 setDisplayType:v12];
  if (a6 <= 3)
  {
    if (a6 > 1)
    {
      if (a6 == 2)
      {
        if ((self->_options & 0x200) != 0)
        {
          goto LABEL_28;
        }
      }

      else if ((self->_options & 0x4000) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (!a6)
    {
      if ((self->_options & 0x200000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (a6 == 1 && (self->_options & 0x100) != 0)
    {
LABEL_27:
      [v10 addConfiguration:v13 zoom:a6];
    }
  }

  else if (a6 <= 5)
  {
    if (a6 == 4 || (self->_options & 0x8000) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (a6 != 8)
    {
      if (a6 == 7)
      {
        if ((self->_options & 0x80) == 0)
        {
          goto LABEL_28;
        }
      }

      else if (a6 != 6 || (self->_options & 0x400) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    _HKInitializeLogging();
    v14 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [HKInteractiveChartViewController _configureCustomDisplayType:graphSeries:configurationManager:timeScope:];
    }
  }

LABEL_28:
}

- (int64_t)_numHorizontalDisplayTypesForTimeScope:(int64_t)a3 displayTypes:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([(HKInteractiveChartViewController *)self _displayTypeIsHorizontalForTimeScope:a3 displayType:v12])
        {
          v9 += [v12 hk_stackedChartSectionsCountForTimeScope:a3];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_displayTypeIsHorizontalForTimeScope:(int64_t)a3 displayType:(id)a4
{
  v5 = [a4 chartingRules];
  v6 = [v5 chartStyleForTimeScope:a3];

  return (v6 - 5) < 4;
}

- (void)_addSeriesForDisplayType:(id)a3 updatingTimeScopeProperties:(id)a4 configurationManager:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __110__HKInteractiveChartViewController__addSeriesForDisplayType_updatingTimeScopeProperties_configurationManager___block_invoke;
  v12[3] = &unk_1E81B99D0;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [a4 enumerateObjectsUsingBlock:v12];
}

uint64_t __110__HKInteractiveChartViewController__addSeriesForDisplayType_updatingTimeScopeProperties_configurationManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 timeScope];
  v4 = [*(a1 + 32) _createGraphSeriesConfigurationFromDisplayType:*(a1 + 40) timeScope:v3];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v4 = [*(a1 + 48) addConfiguration:v4 zoom:v3];
    v5 = v7;
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

- (int64_t)_countOfHorizontalSectionsForConfigurationManager:(id)a3 timeScope:(int64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [a3 allDisplayTypesForZoom:a4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([(HKInteractiveChartViewController *)self _displayTypeIsHorizontalForTimeScope:a4 displayType:v12])
        {
          v9 += [v12 hk_stackedChartSectionsCountForTimeScope:a4];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_createGraphSeriesConfigurationFromDisplayType:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = +[HKDisplayCategory categoryWithID:](HKDisplayCategory, "categoryWithID:", [v6 categoryIdentifier]);
  v8 = [(HKInteractiveChartViewController *)self unitPreferenceController];
  v9 = [(HKInteractiveChartViewController *)self chartDataCacheController];
  v10 = [v6 hk_standardSeriesForTimeScope:a4 displayCategory:v7 unitController:v8 dataCacheController:v9];

  if (v10)
  {
    v11 = objc_opt_new();
    [v11 setDisplayType:v6];
    v12 = [v7 color];
    [v11 setTintColor:v12];

    [v11 setGraphSeries:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_primaryDisplayType
{
  v4 = [(HKInteractiveChartViewController *)self primaryDisplayTypeStackIndex];
  if (v4 >= [(NSArray *)self->_allGraphSeriesConfigurationManagers count])
  {
    [(HKInteractiveChartViewController *)self _primaryDisplayType];
  }

  v5 = [(NSArray *)self->_allGraphSeriesConfigurationManagers objectAtIndexedSubscript:[(HKInteractiveChartViewController *)self primaryDisplayTypeStackIndex]];
  v6 = [v5 allDisplayTypes];
  v7 = [v6 firstObject];

  return v7;
}

- (id)_colorForDisplayType:(id)a3
{
  v3 = +[HKDisplayCategory categoryWithID:](HKDisplayCategory, "categoryWithID:", [a3 categoryIdentifier]);
  v4 = [v3 color];

  return v4;
}

- (id)makeStandardCurrentValueViewDataSource
{
  v3 = [HKCurrentValueViewDataSource alloc];
  v4 = [(HKInteractiveChartViewController *)self dateCache];
  v5 = [(HKInteractiveChartViewController *)self healthStore];
  v6 = [(HKInteractiveChartViewController *)self selectedRangeFormatter];
  v7 = [(HKCurrentValueViewDataSource *)v3 initWithDateCache:v4 healthStore:v5 selectedRangeFormatter:v6];

  v8 = [(HKInteractiveChartViewController *)self currentValueViewDataSourceDelegate];

  if (v8)
  {
    v9 = [(HKInteractiveChartViewController *)self currentValueViewDataSourceDelegate];
    [(HKCurrentValueViewDataSource *)v7 setDelegate:v9];
  }

  else
  {
    [(HKCurrentValueViewDataSource *)v7 setDelegate:self];
  }

  return v7;
}

- (void)setCurrentValueViewDataSourceDelegate:(id)a3
{
  v6 = a3;
  objc_storeWeak(&self->_currentValueViewDataSourceDelegate, v6);
  v4 = [(HKInteractiveChartViewController *)self currentValueViewDataSource];

  if (v4)
  {
    v5 = [(HKInteractiveChartViewController *)self currentValueViewDataSource];
    [v5 setDelegate:v6];
  }
}

- (void)_createDashboardEmptyLabelsIfNecessary
{
  if (![(HKInteractiveChartViewController *)self _dashboardEmptyLabelsExist])
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    dashboardEmptyHeader = self->_dashboardEmptyHeader;
    self->_dashboardEmptyHeader = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    dashboardEmptyDescription = self->_dashboardEmptyDescription;
    self->_dashboardEmptyDescription = v5;

    [(UILabel *)self->_dashboardEmptyDescription setNumberOfLines:0];
    [(UILabel *)self->_dashboardEmptyDescription setTextAlignment:1];
    v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v7 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(UILabel *)self->_dashboardEmptyHeader setTextColor:v21];
    [(UILabel *)self->_dashboardEmptyDescription setTextColor:v21];
    [(UILabel *)self->_dashboardEmptyHeader setBackgroundColor:v7];
    [(UILabel *)self->_dashboardEmptyDescription setBackgroundColor:v7];
    v8 = self->_dashboardEmptyHeader;
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:27.0];
    [(UILabel *)v8 setFont:v9];

    v10 = self->_dashboardEmptyDescription;
    v11 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
    [(UILabel *)v10 setFont:v11];

    v12 = [(HKInteractiveChartViewController *)self view];
    [v12 addSubview:self->_dashboardEmptyHeader];

    v13 = [(HKInteractiveChartViewController *)self view];
    [v13 addSubview:self->_dashboardEmptyDescription];

    v14 = self->_dashboardEmptyHeader;
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = [v15 localizedStringForKey:@"NO_SERIES_HEADER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(UILabel *)v14 setText:v16];

    v17 = self->_dashboardEmptyDescription;
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"NO_SERIES_DESCRIPTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(UILabel *)v17 setText:v19];

    v20 = [(HKInteractiveChartViewController *)self view];
    [v20 setNeedsLayout];
  }
}

- (void)_showHideNoGraphSeriesLabels
{
  v3 = [(HKInteractiveChartViewController *)self _allDisplayTypes];
  v4 = [v3 count];

  if (!v4)
  {
    [(HKInteractiveChartViewController *)self _createDashboardEmptyLabelsIfNecessary];
  }

  v5 = v4 == 0;
  v6 = v4 != 0;
  v7 = v5;
  v8 = [(HKGraphViewController *)self->_primaryGraphViewController view];
  [v8 setHidden:v7];

  [(UIView *)self->_graphBottomDividerView setHidden:v6];
  [(UIView *)self->_graphTopDividerView setHidden:v6];
  [(UILabel *)self->_dashboardEmptyHeader setHidden:v6];
  [(UILabel *)self->_dashboardEmptyDescription setHidden:v6];
  radioButtons = self->_radioButtons;

  [(HKTimeScopeControl *)radioButtons setUserInteractionEnabled:v6];
}

- (void)_radioButtonsDidUpdate:(id)a3
{
  v4 = [a3 selectedTimeScope];
  v5 = [(HKInteractiveChartViewController *)self selectedTimeScopeController];
  [v5 setSelectedTimeScope:v4];

  if ([(HKGraphViewController *)self->_primaryGraphViewController dateZoom]!= v4)
  {
    [(HKInteractiveChartViewController *)self setHasInitialDateRangeAndTimeScope:0];
    [(HKInteractiveChartViewController *)self _replacePrimaryGraphViewControllerWithTimeScope:v4 anchorDate:0 animated:1];
    v6 = [_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent alloc];
    v7 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
    v8 = [(HKInteractiveChartInteractionAnalyticsEvent *)v6 initFor:v7 timeScopeSelected:v4];

    [(HKInteractiveChartInteractionAnalyticsManager *)self->_analyticsManager submitWithEvent:v8];
  }
}

- (void)updateAnnotationDataSource:(id)a3 pointContexts:(id)a4
{
  v10 = [a4 firstObject];
  v5 = [v10 selectedSeries];
  v6 = [(HKInteractiveChartViewController *)self _displayTypeForSeries:v5];
  v7 = [(HKInteractiveChartViewController *)self _dateZoom];
  v8 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  v9 = [v8 graphView];

  -[HKInteractiveChartViewController updateSelectionAnnotationDataSourceForContext:displayType:timeScope:resolution:](self, "updateSelectionAnnotationDataSourceForContext:displayType:timeScope:resolution:", v10, v6, v7, [v5 resolutionForTimeScope:v7 traitResolution:{objc_msgSend(v9, "resolutionFromTraitCollectionAttributes")}]);
}

- (id)lollipopAnnotationColor
{
  v2 = [(HKInteractiveChartViewController *)self _allDisplayTypes];
  if ([v2 count])
  {
    [MEMORY[0x1E69DC888] hk_chartLollipopBackgroundColor];
  }

  else
  {
    HKHealthKeyColor();
  }
  v3 = ;

  return v3;
}

- (id)lollipopExtensionColor
{
  v2 = [(HKInteractiveChartViewController *)self _allDisplayTypes];
  if ([v2 count])
  {
    [MEMORY[0x1E69DC888] hk_chartLollipopStickColor];
  }

  else
  {
    HKHealthKeyColor();
  }
  v3 = ;

  return v3;
}

- (id)makeAnnotationDataSource
{
  v3 = [(HKInteractiveChartViewController *)self currentValueViewDataSourceDelegate];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  v7 = [HKInteractiveChartAnnotationViewDataSource alloc];
  v8 = [(HKInteractiveChartViewController *)self selectedRangeFormatter];
  v9 = [(HKInteractiveChartAnnotationViewDataSource *)v7 initWithSelectedRangeFormatter:v8 firstWeekday:[(HKInteractiveChartViewController *)self annotationDataSourceFirstWeekday] currentValueViewDataSourceDelegate:v6];

  return v9;
}

- (void)_setSelectedGraphSeries:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(HKInteractiveChartViewController *)self _configurationForSeries:a3];
  v7 = v6;
  v8 = v6 != 0;
  if (v6)
  {
    self->_displayState = 1;
    v9 = [v6 displayType];
    [(HKInteractiveChartViewController *)self _updateSelectedSeriesLabel:v9];
  }

  else
  {
    self->_displayState = 0;
  }

  v10 = [(HKInteractiveChartViewController *)self view];
  [v10 setNeedsLayout];

  v11 = [(HKInteractiveChartViewController *)self view];
  [v11 layoutIfNeeded];

  if ([(HKInteractiveChartViewController *)self _selectedDateRangeLabelEnabled]&& [(HKInteractiveChartViewController *)self _chartHasDateAxis])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__HKInteractiveChartViewController__setSelectedGraphSeries_animated___block_invoke;
    v14[3] = &unk_1E81B8570;
    v15 = v8;
    v14[4] = self;
    v12 = _Block_copy(v14);
    v13 = v12;
    if (v4)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:v12 animations:0.25];
    }

    else
    {
      (*(v12 + 2))(v12);
    }
  }
}

uint64_t __69__HKInteractiveChartViewController__setSelectedGraphSeries_animated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1112);
  if (*(a1 + 40))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  if (*(a1 + 40))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  [v2 setAlpha:v3];
  v5 = *(*(a1 + 32) + 1016);

  return [v5 setAlpha:v4];
}

- (id)_configurationForSeries:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKInteractiveChartViewController *)self _dateZoom];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_allGraphSeriesConfigurationManagers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) configurationForGraphSeries:v4 zoom:{v5, v14}];
        if (v11)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_configurationForDisplayType:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKInteractiveChartViewController *)self _dateZoom];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_allGraphSeriesConfigurationManagers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) configurationForDisplayType:v4 zoom:{v5, v14}];
        if (v11)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)_createAndPrepareFeedbackGenerator
{
  v3 = [objc_alloc(MEMORY[0x1E69DCAE8]) initWithStyle:1];
  impactFeedbackGenerator = self->_impactFeedbackGenerator;
  self->_impactFeedbackGenerator = v3;

  v5 = self->_impactFeedbackGenerator;

  [(UIImpactFeedbackGenerator *)v5 prepare];
}

- (id)_pointSelectionInfo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  [a3 userInfo];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![objc_opt_class() conformsToProtocol:{&unk_1F43A09B0, v10}])
        {

          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = v3;
LABEL_11:

  return v8;
}

- (id)_displayTypeForSeries:(id)a3
{
  v3 = [(HKInteractiveChartViewController *)self _configurationForSeries:a3];
  v4 = [v3 displayType];

  return v4;
}

- (void)updateSelectionAnnotationDataSourceForContext:(id)a3 displayType:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6
{
  v15 = a3;
  v9 = a4;
  v10 = [(HKInteractiveChartViewController *)self annotationDataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [(HKInteractiveChartViewController *)self annotationDataSource];
    v13 = [(HKInteractiveChartViewController *)self _dateZoom];
    v14 = [(HKInteractiveChartViewController *)self healthStore];
    [v12 updateWithSelectionContext:v15 displayType:v9 timeScope:v13 resolution:a6 healthStore:v14 viewController:self];
  }
}

- (int64_t)_userInfoSelectionCount:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) userInfo];
        v6 += [v9 count];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)graphView:(id)a3 didUpdateSelectedPoint:(id)a4
{
  v23 = a4;
  if ([HKLollipopController pointSelectionContextsHaveUserInfo:?])
  {
    v5 = [(HKInteractiveChartViewController *)self lollipopController];
    v6 = [v5 isVisible];

    if (v6)
    {
      v7 = [(HKInteractiveChartViewController *)self lollipopController];
      [v7 updateWithPointContexts:v23];
    }

    else
    {
      v8 = [(HKInteractiveChartViewController *)self _currentValueEnabled];
      v9 = &OBJC_IVAR___HKInteractiveChartViewController__currentTimeView;
      if (v8)
      {
        v9 = &OBJC_IVAR___HKInteractiveChartViewController__currentValueView;
      }

      [*(&self->super.super.super.super.isa + *v9) frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = HKUIRoundToScreenScale(0.5);
      v25.origin.x = v11;
      v25.origin.y = v13;
      v25.size.width = v15;
      v25.size.height = v17;
      v26 = CGRectInset(v25, 0.0, v18);
      v27 = CGRectOffset(v26, 0.0, v18);
      x = v27.origin.x;
      y = v27.origin.y;
      width = v27.size.width;
      height = v27.size.height;
      v7 = [(HKInteractiveChartViewController *)self lollipopController];
      [v7 setVisibleWithRect:v23 pointContexts:1 animated:{x, y, width, height}];
    }
  }
}

- (void)graphViewDidEndSelection:(id)a3
{
  v3 = [(HKInteractiveChartViewController *)self lollipopController];
  [v3 setInvisibleAnimated:1];
}

- (void)graphView:(id)a3 didUpdateFromDateZoom:(int64_t)a4 toDateZoom:(int64_t)a5 newVisibleRange:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a6;
  v10 = [(HKGraphViewController *)self->_primaryGraphViewController dateZoom];
  if (v10 == a5)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = self->_observers;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * v15) observer];
          if (v16 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v16 didUpdateFromDateZoom:a4 toDateZoom:a5 newVisibleRange:v9];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v17 = v10;
    [(HKInteractiveChartViewController *)self selectTimeScope:a5];
    v18 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__HKInteractiveChartViewController_graphView_didUpdateFromDateZoom_toDateZoom_newVisibleRange___block_invoke;
    block[3] = &unk_1E81B99F8;
    block[4] = self;
    block[5] = v17;
    dispatch_after(v18, MEMORY[0x1E69E96A0], block);
  }
}

- (id)graphView:(id)a3 graphSeriesForZoom:(int64_t)a4 stackOffset:(int64_t)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = [(NSArray *)self->_allGraphSeriesConfigurationManagers objectAtIndexedSubscript:a5];
  v17 = [v8 allGraphSeriesForZoom:a4];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_observers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * i) observer];
        if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v15 = [v8 allDisplayTypesForZoom:a4];
          [v14 configureDisplayTypes:v15 timeScope:a4 stackOffset:a5];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v17;
}

- (void)_notifyObserversDidUpdateVisibleValueRange:(id)a3 changeContext:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_observers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v13 + 1) + 8 * v11) observer];
        if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v12 didUpdateVisibleValueRange:v6 changeContext:a4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BOOL)_shouldHandleVisibleRangeChangeWithChangeContext:(int64_t)a3
{
  if (a3 != 1)
  {
    return 1;
  }

  v4 = CACurrentMediaTime();
  if (v4 - self->_lastDateValueRangeUpdate < 1.0)
  {
    return 0;
  }

  self->_lastDateValueRangeUpdate = v4;
  return 1;
}

- (void)graphView:(id)a3 didUpdateVisibleValueRange:(id)a4 changeContext:(int64_t)a5
{
  v9 = a3;
  v8 = a4;
  if (a5)
  {
    [(HKInteractiveChartViewController *)self _notifyObserversDidUpdateVisibleValueRange:v8 changeContext:a5];
    if ([(HKInteractiveChartViewController *)self _shouldHandleVisibleRangeChangeWithChangeContext:a5])
    {
      [(HKInteractiveChartViewController *)self _handleVisibleRangeChange];
    }
  }
}

- (void)_scheduleDelayedAutoscale
{
  [(HKInteractiveChartViewController *)self setDelayedAutoscaleRequestCount:[(HKInteractiveChartViewController *)self delayedAutoscaleRequestCount]+ 1];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__HKInteractiveChartViewController__scheduleDelayedAutoscale__block_invoke;
  v4[3] = &unk_1E81B6548;
  v4[4] = self;
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v4 block:0.2];
}

uint64_t __61__HKInteractiveChartViewController__scheduleDelayedAutoscale__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelayedAutoscaleActualCount:{objc_msgSend(*(a1 + 32), "delayedAutoscaleActualCount") + 1}];
  v2 = [*(a1 + 32) delayedAutoscaleActualCount];
  result = [*(a1 + 32) delayedAutoscaleRequestCount];
  if (v2 >= result)
  {
    [*(a1 + 32) _automaticAutoScale];
    [*(a1 + 32) setDelayedAutoscaleRequestCount:0];
    v4 = *(a1 + 32);

    return [v4 setDelayedAutoscaleActualCount:0];
  }

  return result;
}

- (void)graphView:(id)a3 didFinishUserScrollingToValueRange:(id)a4
{
  v5 = a4;
  [(HKInteractiveChartViewController *)self setHasInitialDateRangeAndTimeScope:0];
  [(HKInteractiveChartViewController *)self _notifyObserversDidUpdateVisibleValueRange:v5 changeContext:2];

  [(HKInteractiveChartViewController *)self _handleVisibleRangeChange];

  [(HKInteractiveChartViewController *)self _scheduleDelayedAutoscale];
}

- (void)graphView:(id)a3 didUpdateSeries:(id)a4 newDataArrived:(BOOL)a5 changeContext:(int64_t)a6
{
  v7 = a5;
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v22 = a4;
  v23 = v10;
  if (v7 && [(HKInteractiveChartViewController *)self _shouldHandleVisibleRangeChangeWithChangeContext:a6, v22, v10])
  {
    _HKInitializeLogging();
    v11 = HKLogWellnessDashboard();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

    if (v12)
    {
      v13 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [HKInteractiveChartViewController graphView:v13 didUpdateSeries:? newDataArrived:? changeContext:?];
      }
    }

    [(HKInteractiveChartViewController *)self _automaticAutoScale];
    v14 = [v10 effectiveVisibleRangeActive];
    v15 = 1;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = self->_observers;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v24 + 1) + 8 * i) observer];
        if (v21 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [v21 didUpdateSeriesWithNewValueRange:v14];
        }
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  if (v15)
  {
    [(HKInteractiveChartViewController *)self _handleVisibleRangeChange];
  }
}

- (void)graphView:(id)a3 didUpdateLegendViewsWithTopLegendFrame:(CGRect)a4
{
  MinY = CGRectGetMinY(a4);

  [(HKInteractiveChartViewController *)self setLegendBottomLocation:MinY];
}

- (void)graphViewDidTapYAxis:(id)a3
{
  if ((self->_options & 0x80000) == 0)
  {
    [(HKInteractiveChartViewController *)self scrollToMostRecentData];
  }
}

- (void)scrollToMostRecentData
{
  v3 = [(HKInteractiveChartViewController *)self defaultAlignmentForTimeScope:[(HKTimeScopeControl *)self->_radioButtons selectedTimeScope]];

  [(HKInteractiveChartViewController *)self _scrollToMostRecentDataWithAlignment:v3];
}

- (void)scrollToDate:(id)a3 withVisibleAlignment:(int64_t)a4
{
  v6 = a3;
  v8 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  v7 = [v8 graphView];
  [(HKInteractiveChartViewController *)self _scrollToAnchorDate:v6 graphView:v7 alignment:a4];
}

- (void)scrollToRange:(id)a3 withVisibleAlignment:(int64_t)a4
{
  v25 = a3;
  v6 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  v7 = [v6 graphView];

  v8 = [v7 effectiveAxisRange];
  v9 = [v25 minValue];
  v10 = [v8 containsValue:v9 exclusiveStart:0 exclusiveEnd:0];

  v11 = [v25 maxValue];
  v12 = [v8 containsValue:v11 exclusiveStart:0 exclusiveEnd:0];

  if (v10)
  {
    if (v12)
    {
      goto LABEL_9;
    }

    v13 = [v8 minValue];
  }

  else
  {
    v13 = [v25 minValue];
    if (v12)
    {
      v14 = v8;
      goto LABEL_7;
    }
  }

  v14 = v25;
LABEL_7:
  v15 = [v14 maxValue];
  v16 = [HKValueRange valueRangeWithMinValue:v13 maxValue:v15];

  if (v16)
  {
    v17 = [v7 effectiveVisibleRangeCadence];
    v18 = [v7 effectiveVisibleRangeActive];
    [v7 setEffectiveAxisRange:v16 effectiveVisibleRangeCadence:v17 effectiveVisibleRangeActive:v18];
  }

LABEL_9:
  if (a4 > 2)
  {
    if ((a4 - 3) >= 2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!a4)
    {
      v19 = [v25 startDate];
      v20 = self;
      v21 = v19;
      v22 = 0;
      goto LABEL_17;
    }

    if (a4 != 1)
    {
      if (a4 != 2)
      {
        goto LABEL_18;
      }

      v19 = [v25 endDate];
      v20 = self;
      v21 = v19;
      v22 = 2;
      goto LABEL_17;
    }
  }

  v23 = [v25 startDate];
  v24 = [v25 endDate];
  v19 = HKUIMidDate(v23, v24);

  v20 = self;
  v21 = v19;
  v22 = 1;
LABEL_17:
  [(HKInteractiveChartViewController *)v20 scrollToDate:v21 withVisibleAlignment:v22];

LABEL_18:
}

- (void)_scrollToMostRecentDataWithAlignment:(int64_t)a3
{
  v7 = [(HKInteractiveChartViewController *)self _dateForMostRecentData];
  v5 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  v6 = [v5 graphView];
  [(HKInteractiveChartViewController *)self _scrollToAnchorDate:v7 graphView:v6 alignment:a3];
}

- (int64_t)defaultAlignmentForTimeScope:(int64_t)a3
{
  if (a3 < 6)
  {
    return 2;
  }

  if (a3 == 8)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"HKInteractiveChartViewController.m" lineNumber:2857 description:{@"Invalid timescope (%ld)", 8}];
  }

  return 3;
}

- (BOOL)_viewHierarchyIsHidden:(id)a3
{
  v4 = a3;
  if ([v4 isHidden])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 superview];
    if (v6)
    {
      v5 = [(HKInteractiveChartViewController *)self _viewHierarchyIsHidden:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)graphView:(id)a3 startupTime:(int64_t)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = [(HKInteractiveChartViewController *)self view];
  v7 = [(HKInteractiveChartViewController *)self _viewHierarchyIsHidden:v6];

  if (!v7)
  {
    v8 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
    v9 = [v8 localization];
    v10 = [v9 displayName];

    if (!v10 || ![(__CFString *)v10 length])
    {

      v10 = @"**UNKNOWN**";
    }

    v11 = HKNumberFormatterFromTemplate(1);
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v13 = [v11 stringFromNumber:v12];

    _HKInitializeLogging();
    v14 = HKLogWellnessDashboard();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);

    if (v15)
    {
      v16 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v19 = 138412546;
        v20 = v10;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_1C3942000, v16, OS_LOG_TYPE_INFO, "Interactive chart startup time for %@: %@ us", &v19, 0x16u);
      }
    }

    v17 = [(HKInteractiveChartViewController *)self startupReportingBlock];

    if (v17)
    {
      v18 = [(HKInteractiveChartViewController *)self startupReportingBlock];
      (v18)[2](v18, v10, a4);
    }
  }
}

- (void)graphViewExternalSelectionEnd:(id)a3
{
  if ([(HKInteractiveChartViewController *)self disableCurrentValueViewForInitialLollipop])
  {
    [(HKInteractiveChartViewController *)self setDisableCurrentValueViewForInitialLollipop:0];

    [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
  }
}

- (void)graphViewRenderedView:(id)a3
{
  v4 = [(HKInteractiveChartViewController *)self chartHasDataCompletion];

  if (v4 && [(HKInteractiveChartViewController *)self chartDataIsAvailable])
  {
    v5 = [(HKInteractiveChartViewController *)self chartHasDataCompletion];
    v5[2]();

    [(HKInteractiveChartViewController *)self setChartHasDataCompletion:0];
  }
}

- (HKDisplayType)calendarQueryDisplayType
{
  v2 = [(HKInteractiveChartViewController *)self displayTypeStack];
  v3 = [v2 firstObject];
  v4 = [v3 firstObject];

  return v4;
}

- (HKSampleType)calendarQuerySampleType
{
  v2 = [(HKInteractiveChartViewController *)self calendarQueryDisplayType];
  v3 = [v2 sampleType];

  return v3;
}

- (UIColor)calendarDaySamplePresentColor
{
  v3 = [(HKInteractiveChartViewController *)self displayTypeController];
  v4 = [(HKInteractiveChartViewController *)self calendarQuerySampleType];
  v5 = [v3 displayTypeForObjectType:v4];

  v6 = +[HKDisplayCategory categoryWithID:](HKDisplayCategory, "categoryWithID:", [v5 categoryIdentifier]);
  v7 = [v6 color];

  return v7;
}

- (void)currentTimeViewDidTapOnDateSelector:(id)a3
{
  if ((self->_options & 0x20000) == 0)
  {
    v4 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
    v5 = [v4 graphView];
    v14 = [v5 effectiveVisibleRangeCadence];

    v6 = [HKInteractiveChartsMonthViewController alloc];
    v7 = [(HKInteractiveChartViewController *)self healthStore];
    v8 = [(HKInteractiveChartViewController *)self dateCache];
    v9 = [v14 minValue];
    v10 = [(HKInteractiveChartsMonthViewController *)v6 initWithHealthStore:v7 dateCache:v8 date:v9];

    v11 = [(HKInteractiveChartViewController *)self calendarQuerySampleType];
    [(HKInteractiveChartsMonthViewController *)v10 setSampleType:v11];

    v12 = [(HKInteractiveChartViewController *)self calendarDaySamplePresentColor];
    [(HKInteractiveChartsMonthViewController *)v10 setSampleColor:v12];

    [(HKMonthViewController *)v10 setDelegate:self];
    v13 = [[HKNavigationController alloc] initWithRootViewController:v10];
    [(HKInteractiveChartViewController *)self presentViewController:v13 animated:1 completion:0];
  }
}

- (void)_scrollToAnchorDate:(id)a3 graphView:(id)a4 alignment:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(HKInteractiveChartViewController *)self currentCalendar];
  v11 = [v10 firstWeekday];

  v12 = [v8 xAxisDateZoom];
  v16 = [v8 effectiveAxisRange];
  v13 = [(HKInteractiveChartViewController *)self currentCalendar];
  v14 = [HKGraphZoomLevelConfiguration chartVisibleRangeForTimeScope:v12 anchorDate:v9 alignment:a5 dataRange:v16 calendar:v13 firstWeekday:v11 cadence:1 level:0];

  v15 = -[HKInteractiveChartViewController visibleRangeForTimeScope:proposedRange:](self, "visibleRangeForTimeScope:proposedRange:", [v8 xAxisDateZoom], v14);
  [v8 setEffectiveVisibleRangeActive:v15 animated:1];

  [(HKInteractiveChartViewController *)self _handleVisibleRangeChange];
}

- (void)_moveSelectedDateInDirection:(int64_t)a3
{
  v5 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  v16 = [v5 effectiveVisibleRangeCadence];

  v6 = [v16 startDate];
  v7 = [v16 endDate];
  v8 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  v9 = v8;
  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && v8 != 0)
  {
    [v6 timeIntervalSinceReferenceDate];
    v13 = v12;
    [v7 timeIntervalSinceReferenceDate];
    v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v13 + (v14 - v13) * a3 + (v14 - v13) * 0.5];
    [(HKInteractiveChartViewController *)self _scrollToAnchorDate:v15 graphView:v9 alignment:3];
  }
}

- (void)monthViewController:(id)a3 didSelectDate:(id)a4
{
  [(HKInteractiveChartViewController *)self _setVisibleRangeUsingDateFromDateSelector:a4];

  [(HKInteractiveChartViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)makeCurrentValueView
{
  v3 = [[HKInteractiveChartAnnotationView alloc] initWithContext:0];
  [(HKInteractiveChartAnnotationView *)v3 setDelegate:self];
  v4 = [(HKInteractiveChartViewController *)self view];
  [v4 addSubview:v3];

  v5 = [(HKInteractiveChartViewController *)self makeStandardCurrentValueViewDataSource];
  [(HKInteractiveChartViewController *)self setCurrentValueViewDataSource:v5];

  [(HKInteractiveChartAnnotationView *)v3 setDataSource:self->_currentValueViewDataSource];
  [(HKInteractiveChartAnnotationView *)v3 setShowsInfoButton:[(HKInteractiveChartViewController *)self _showInfoButtonInCurrentValueView]];

  return v3;
}

- (void)updateCurrentValueView:(id)a3 graphView:(id)a4 timeScope:(int64_t)a5 showInfoButton:(BOOL)a6
{
  v6 = a6;
  v15 = self->_currentValueView;
  currentValueViewDataSource = self->_currentValueViewDataSource;
  v11 = a4;
  v12 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
  [(HKCurrentValueViewDataSource *)currentValueViewDataSource updateDataSourceWithGraphView:v11 displayType:v12 timeScope:a5];

  v13 = [(HKCurrentValueViewDataSource *)self->_currentValueViewDataSource selectedRangeData];
  v14 = [v13 count];

  if (v14)
  {
    [(UIView *)v15 setShowsInfoButton:v6];
    [(UIView *)v15 reloadData];
  }

  else if ([(HKInteractiveChartViewController *)self _primaryDisplayTypeHasNoData])
  {
    [(UIView *)v15 showNoDataStatus];
  }

  else
  {
    [(UIView *)v15 scheduleDeferredDataReload];
  }
}

- (void)didTapOnInfoButtonFromCurrentValueView:(id)a3
{
  v4 = [(HKCurrentValueViewDataSource *)self->_currentValueViewDataSource delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HKCurrentValueViewDataSource *)self->_currentValueViewDataSource delegate];
    v7 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
    v9 = [v6 infographicViewControllerForDisplayType:v7 healthStore:self->_healthStore];
  }

  else
  {
    v6 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
    v9 = [(HKInteractiveChartViewController *)self infographicViewControllerForDisplayType:v6 healthStore:self->_healthStore];
  }

  v8 = v9;
  if (v9)
  {
    [(UIViewController *)self hk_presentModalCardViewController:v9 fullScreen:0 animated:1 completion:0];
    v8 = v9;
  }
}

- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4
{
  v6 = [MEMORY[0x1E696AB80] hk_dateIntervalWithValueRange:a3];
  v7 = [(HKInteractiveChartViewController *)self dateCache];
  v8 = HKLastUpdatedIntervalText(v6, a4, v7, 1);

  return v8;
}

- (BOOL)infographicSupportedForDisplayType:(id)a3 healthStore:(id)a4
{
  v4 = self;
  v5 = [(HKInteractiveChartViewController *)self _primaryDisplayType:a3];
  LOBYTE(v4) = [HKInteractiveChartInfographicFactory infographicSupportedForDisplayType:v5 factorDisplayType:0 healthStore:v4->_healthStore];

  return v4;
}

- (id)infographicViewControllerForDisplayType:(id)a3 healthStore:(id)a4
{
  v5 = [(HKInteractiveChartViewController *)self _primaryDisplayType:a3];
  v6 = [HKInteractiveChartInfographicFactory infographicViewControllerForDisplayType:v5 factorDisplayType:0 healthStore:self->_healthStore];

  return v6;
}

- (id)_midPointDateFromVisibleRange
{
  v2 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  v3 = [v2 effectiveVisibleRangeCadence];

  v4 = [v3 startDate];
  if (v4)
  {
    v5 = [v3 endDate];

    if (v5)
    {
      v6 = [v3 startDate];
      v7 = [v3 endDate];
      v4 = HKUIMidDate(v6, v7);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)_setDateSelectorToVisibleRange
{
  v3 = [(HKCurrentTimeView *)self->_currentTimeView superview];

  if (v3)
  {
    v4 = [(HKInteractiveChartViewController *)self _singleFixedRange];
    v19 = v4;
    if (v4)
    {
      [HKGraphZoomLevelConfiguration timeScopeForDateRange:v4];
    }

    else
    {
      [(HKTimeScopeControl *)self->_radioButtons selectedTimeScope];
    }

    v5 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
    v18 = [v5 effectiveVisibleRangeActive];
    v6 = [HKInteractiveChartViewController stringForValueRange:"stringForValueRange:timeScope:" timeScope:?];
    [(HKCurrentTimeView *)self->_currentTimeView setCurrentTimeString:v6];
    v7 = [v5 effectiveVisibleRangeCadence];
    v8 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
    v9 = [v8 graphView];
    v10 = [v9 effectiveAxisRange];

    v11 = [v7 endDate];
    v12 = [v10 endDate];
    v13 = [v11 hk_isBeforeDate:v12];

    v14 = [v7 startDate];
    v15 = [v10 startDate];
    v16 = [v14 hk_isAfterDate:v15];

    currentTimeView = self->_currentTimeView;
    if ((v13 & 1) != 0 || v16)
    {
      [(HKCurrentTimeView *)currentTimeView setDisableControls:0];
      [(HKCurrentTimeView *)self->_currentTimeView setCurrentTimeButtonEnabled:1];
      [(HKCurrentTimeView *)self->_currentTimeView setNextTimeButtonEnabled:v13];
      [(HKCurrentTimeView *)self->_currentTimeView setPreviousTimeButtonEnabled:v16];
    }

    else
    {
      [(HKCurrentTimeView *)currentTimeView setDisableControls:1];
      [(HKCurrentTimeView *)self->_currentTimeView setCurrentTimeButtonEnabled:0];
    }
  }
}

- (void)_setVisibleRangeUsingDateFromDateSelector:(id)a3
{
  v8 = a3;
  v4 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  v5 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  v6 = [v5 effectiveVisibleRangeCadence];

  if (v8)
  {
    if (v4 && v6 != 0)
    {
      [(HKInteractiveChartViewController *)self _scrollToAnchorDate:v8 graphView:v4 alignment:3];
    }
  }
}

- (BOOL)_showInfoButtonInCurrentValueView
{
  v3 = [(HKCurrentValueViewDataSource *)self->_currentValueViewDataSource delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(HKCurrentValueViewDataSource *)self->_currentValueViewDataSource delegate];
    v6 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
    v7 = [v5 infographicSupportedForDisplayType:v6 healthStore:self->_healthStore];
  }

  else
  {
    v5 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
    v7 = [(HKInteractiveChartViewController *)self infographicSupportedForDisplayType:v5 healthStore:self->_healthStore];
  }

  return v7;
}

- (id)_debugDateStringForPoint:(id)a3
{
  v3 = MEMORY[0x1E695DF00];
  [a3 startXValue];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v5 = [MEMORY[0x1E696AB78] localizedStringFromDate:v4 dateStyle:2 timeStyle:1];

  return v5;
}

- (id)_dateForBlockPoint:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E695DF00];
    [a3 startXValue];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_chartDataForPoint:(id)a3
{
  v3 = [a3 userInfo];
  if ([v3 conformsToProtocol:&unk_1F43A09B0])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_formatterForSeries:(id)a3
{
  v4 = [(HKInteractiveChartViewController *)self _configurationForSeries:a3];
  v5 = [v4 displayType];
  v6 = [v5 hk_interactiveChartsFormatterForTimeScope:{-[HKInteractiveChartViewController _dateZoom](self, "_dateZoom")}];
  [v6 setMajorFont:self->_majorSelectedPointFont];
  [v6 setMinorFont:self->_minorSelectedPointFont];
  v7 = [(HKInteractiveChartViewController *)self unitPreferenceController];
  [v6 setUnitController:v7];

  v8 = [v4 displayType];
  [v6 setDisplayType:v8];

  return v6;
}

- (BOOL)_primaryDisplayTypeHasNoData
{
  v3 = [(HKInteractiveChartViewController *)self sampleTypeDateRangeController];
  v4 = [v3 dateRangesBySampleType];

  if (v4)
  {
    v5 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
    v6 = [v5 sampleType];
    v7 = [v3 dateRangeForSampleType:v6];
    v8 = [v7 minValue];
    if (v8)
    {
    }

    else
    {
      v9 = [v7 maxValue];

      if (!v9)
      {
        v10 = 1;
        goto LABEL_6;
      }
    }
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (void)updateCurrentValueViewWithVisibleRange
{
  if ([(HKInteractiveChartViewController *)self _currentValueEnabled]&& ![(HKInteractiveChartViewController *)self disableCurrentValueViewForInitialLollipop])
  {
    v6 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
    v3 = [(HKInteractiveChartViewController *)self _dateZoom];
    v4 = [(HKInteractiveChartViewController *)self _showInfoButtonInCurrentValueView];
    v5 = [(HKInteractiveChartViewController *)self currentValueViewHandler];
    [v5 updateCurrentValueView:self->_currentValueView graphView:v6 timeScope:v3 showInfoButton:v4];
  }
}

- (void)_automaticAutoScale
{
  if ((self->_options & 4) == 0)
  {
    v3 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
    if (([v3 isScrollViewDecelerating] & 1) == 0)
    {
      v4 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __55__HKInteractiveChartViewController__automaticAutoScale__block_invoke;
      v5[3] = &unk_1E81B55A8;
      v5[4] = self;
      [v4 autoscaleYAxesAnimated:1 specificRange:0 onlyIfNeeded:0 completion:v5];
    }
  }
}

- (id)_defaultAxisRangeIncludeToday:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF00] date];
  v6 = [(HKInteractiveChartViewController *)self sampleTypeDateRangeController];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(HKInteractiveChartViewController *)self _allDisplayTypes];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_15;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v22;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v21 + 1) + 8 * i);
      v14 = [v13 defaultDataRange];
      if (v14)
      {
        if (v10)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v15 = [v13 sampleType];
        v14 = [v6 dateRangeForSampleType:v15];

        if (v10)
        {
LABEL_8:
          [v10 unionRange:v14];
          goto LABEL_11;
        }
      }

      v10 = [v14 copy];
LABEL_11:
    }

    v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v9);
LABEL_15:

  if (v3)
  {
    v16 = [HKValueRange valueRangeWithMinValue:v5 maxValue:v5];
    v17 = v16;
    if (v10)
    {
      [v10 unionRange:v16];
    }

    else
    {
      v10 = [v16 copy];
    }
  }

  v18 = [v10 endDate];
  v19 = [v18 hk_isAfterDate:v5];

  if (v19)
  {
    [v10 setMaxValue:v5];
  }

  return v10;
}

- (id)_dateForMostRecentData
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(HKInteractiveChartViewController *)self currentCalendar];
  v23 = v3;
  v5 = [v4 hk_startOfTomorrowForDate:v3];

  v22 = [(HKInteractiveChartViewController *)self sampleTypeDateRangeController];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [(HKInteractiveChartViewController *)self _allDisplayTypes];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v12 defaultDataRange];
        if (!v13)
        {
          v14 = [v12 sampleType];
          v13 = [v22 dateRangeForSampleType:v14];
        }

        v15 = [v13 endDate];
        v16 = [MEMORY[0x1E695DF00] distantFuture];
        v17 = [v15 isEqualToDate:v16];

        if (v17)
        {
          v18 = v23;

          v15 = v18;
        }

        if (v15 && [v15 hk_isBeforeOrEqualToDate:v5] && (!v9 || objc_msgSend(v15, "hk_isAfterDate:", v9)))
        {
          v19 = v15;

          v9 = v19;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v20 = v9;
  return v9;
}

- (void)_updateGraphViewAxisDateRange
{
  primaryGraphViewController = self->_primaryGraphViewController;
  if (!primaryGraphViewController)
  {
    return;
  }

  v4 = [(HKGraphViewController *)primaryGraphViewController dateZoom];
  if ([(HKInteractiveChartViewController *)self firstSampleDateRangeUpdate])
  {
    v5 = [(HKInteractiveChartViewController *)self trendAccessibilityDelegate];
    v6 = [v5 trendAccessibilitySeries];

    if (!v6)
    {
      v17 = [(HKInteractiveChartViewController *)self initialXValue];
      if (v17 && (v18 = v17, [(HKInteractiveChartViewController *)self initialXValue], v19 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v19, v18, (isKindOfClass & 1) != 0))
      {
        v21 = [(HKInteractiveChartViewController *)self initialXValue];
      }

      else
      {
        v21 = [(HKInteractiveChartViewController *)self _dateForMostRecentData];
      }

      v22 = v21;
      [(HKInteractiveChartViewController *)self _setGraphViewAxisAndVisibleDateRangeForTimeScope:v4 anchorDate:v21 preserveScrollPosition:0];
      goto LABEL_12;
    }
  }

  v7 = [(HKInteractiveChartViewController *)self _defaultAxisRangeIncludeToday:[(HKInteractiveChartViewController *)self firstSampleDateRangeUpdate]^ 1];
  v8 = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  v9 = [v8 graphView];
  v10 = [v9 actualVisibleRange];

  if (v7 && v10)
  {
    v11 = [v10 startDate];
    v12 = [v10 endDate];
    v13 = [v7 startDate];
    v14 = [v7 endDate];
    if ([v14 hk_isBeforeDate:v11])
    {
    }

    else
    {
      v15 = [v13 hk_isAfterDate:v12];

      if ((v15 & 1) == 0)
      {
        v22 = 0;
        v16 = 1;
        goto LABEL_11;
      }
    }
  }

  v22 = [(HKInteractiveChartViewController *)self _dateForMostRecentData];
  v16 = 0;
LABEL_11:

  [(HKInteractiveChartViewController *)self _setGraphViewAxisAndVisibleDateRangeForTimeScope:v4 anchorDate:v22 preserveScrollPosition:v16];
LABEL_12:
}

- (void)sampleTypeDateRangeController:(id)a3 didUpdateDateRanges:(id)a4
{
  [(HKInteractiveChartViewController *)self _updateGraphViewAxisDateRange:a3];

  [(HKInteractiveChartViewController *)self setFirstSampleDateRangeUpdate:0];
}

- (void)selectTimeScope:(int64_t)a3
{
  [(HKTimeScopeControl *)self->_radioButtons setSelectedTimeScope:a3];
  radioButtons = self->_radioButtons;

  [(HKInteractiveChartViewController *)self _radioButtonsDidUpdate:radioButtons];
}

- (id)restorationStateDictionary
{
  v3 = objc_opt_class();
  v4 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
  v5 = [(HKInteractiveChartViewController *)self healthStore];
  v6 = [v3 standardChartRestorationDictionary:v4 healthStore:v5];

  return v6;
}

- (void)saveRestorationState
{
  v6 = [(HKInteractiveChartViewController *)self restorationStateDictionary];
  v3 = objc_opt_class();
  v4 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
  v5 = [v3 standardChartRestorationActivity:v6 primaryDisplayType:v4];

  [objc_opt_class() saveRestorationUserActivity:v5 viewController:self];
}

+ (id)standardChartRestorationDictionary:(id)a3 healthStore:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695DF90];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v10 = [a1 _encodeCurrentProfileIdentifierForHealthStore:v8];

  [v9 setObject:v10 forKeyedSubscript:@"profileIdentifier"];
  v11 = [v6 objectType];
  v12 = [v11 code];

  v13 = [v6 categoryIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v6;
    v15 = [v14 baseDisplayType];

    if (v15)
    {
      v16 = [v14 baseDisplayType];
      v17 = [v16 objectType];
      v12 = [v17 code];

      v18 = [v14 baseDisplayType];
      v13 = [v18 categoryIdentifier];
    }
  }

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:v12];
  [v9 setObject:v19 forKeyedSubscript:@"dataTypeCode"];

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
  [v9 setObject:v20 forKeyedSubscript:@"displayCategoryID"];

  return v9;
}

+ (id)_encodeCurrentProfileIdentifierForHealthStore:(id)a3
{
  v3 = [a3 profileIdentifier];
  v9 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[HKInteractiveChartViewController _encodeCurrentProfileIdentifierForHealthStore:];
    }
  }

  return v4;
}

+ (id)mergeRestorationDictionary:(id)a3 otherDictionary:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:v13];
        [v7 setObject:v14 forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v10);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        v21 = [v15 objectForKeyedSubscript:{v20, v23}];
        [v7 setObject:v21 forKeyedSubscript:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  return v7;
}

+ (id)standardChartRestorationActivity:(id)a3 primaryDisplayType:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [a4 localization];
  v9 = [v8 displayName];
  v10 = [v6 stringWithFormat:@"Chart(%@)", v9];

  v11 = [a1 baseRestorationUserActivity:v7 activityType:@"com.apple.health.view.data" title:v10];

  return v11;
}

+ (id)baseRestorationUserActivity:(id)a3 activityType:(id)a4 title:(id)a5
{
  v16[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69636A8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[v7 alloc] initWithActivityType:v9];

  [v11 setEligibleForSearch:0];
  [v11 setEligibleForHandoff:1];
  [v11 setEligibleForPrediction:0];
  [v11 setTitle:v8];

  [v11 setUserInfo:v10];
  v15[0] = @"versionKey";
  v15[1] = @"DateSavedAppState";
  v16[0] = &unk_1F4383F88;
  v12 = [MEMORY[0x1E695DF00] now];
  v16[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  [v11 addUserInfoEntriesFromDictionary:v13];

  return v11;
}

+ (void)saveRestorationUserActivity:(id)a3 viewController:(id)a4
{
  v5 = a3;
  v6 = [a4 view];
  v7 = [v6 window];

  if (v7 && ([v7 windowScene], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v7 windowScene];
    [v9 setUserActivity:v5];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[HKInteractiveChartViewController saveRestorationUserActivity:viewController:];
    }
  }
}

- (int64_t)annotationDataSourceFirstWeekday
{
  if (self->_annotationDataSourceFirstWeekday != -1)
  {
    return self->_annotationDataSourceFirstWeekday;
  }

  v3 = [(HKInteractiveChartViewController *)self currentCalendar];
  v4 = [v3 firstWeekday];

  return v4;
}

- (HKInteractiveChartCurrentValueViewHandler)currentValueViewHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_currentValueViewHandler);

  return WeakRetained;
}

- (HKCurrentValueViewDataSourceDelegate)currentValueViewDataSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_currentValueViewDataSourceDelegate);

  return WeakRetained;
}

- (HKCurrentOverlayLocationProviding)currentOverlayLocationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_currentOverlayLocationProvider);

  return WeakRetained;
}

- (HKTrendAccessibilityDelegate)trendAccessibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_trendAccessibilityDelegate);

  return WeakRetained;
}

- (HKInteractiveChartCurrentValueViewCallbacks)standardCurrentValueViewCallbacks
{
  WeakRetained = objc_loadWeakRetained(&self->_standardCurrentValueViewCallbacks);

  return WeakRetained;
}

- (void)interactiveChartHasData:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_timeScopeForTimeScope:(uint64_t)a1 availableTimeScopes:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKInteractiveChartViewController.m" lineNumber:1157 description:{@"Invalid parameter not satisfying: %@", @"[availableTimeScopes count] > 0"}];
}

- (void)_setGraphViewAxisAndVisibleDateRangeForTimeScope:(uint64_t)a1 anchorDate:(uint64_t)a2 preserveScrollPosition:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1C3942000, log, OS_LOG_TYPE_DEBUG, "HKInteractiveChartViewController(%p): ChartDataUpdate: setting new axis range %@", &v3, 0x16u);
}

- (void)_primaryDisplayType
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"HKInteractiveChartViewController.m" lineNumber:2304 description:{@"Primary display type index out of bounds: %ld", objc_msgSend(a1, "primaryDisplayTypeStackIndex")}];
}

- (void)graphView:(uint64_t)a1 didUpdateSeries:(NSObject *)a2 newDataArrived:changeContext:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1C3942000, a2, OS_LOG_TYPE_DEBUG, "HKInteractiveChartViewController(%p): ChartDataUpdate: new data has arrived", &v2, 0xCu);
}

+ (void)saveRestorationUserActivity:viewController:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end