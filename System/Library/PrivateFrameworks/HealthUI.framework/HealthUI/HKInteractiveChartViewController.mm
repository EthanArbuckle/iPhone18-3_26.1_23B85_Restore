@interface HKInteractiveChartViewController
+ (BOOL)_timeScope:(int64_t)scope inTimeScopeRanges:(id)ranges;
+ (id)_encodeCurrentProfileIdentifierForHealthStore:(id)store;
+ (id)_timeScopesWithOptions:(unint64_t)options timeScopeRanges:(id)ranges;
+ (id)baseRestorationUserActivity:(id)activity activityType:(id)type title:(id)title;
+ (id)mergeRestorationDictionary:(id)dictionary otherDictionary:(id)otherDictionary;
+ (id)standardChartRestorationActivity:(id)activity primaryDisplayType:(id)type;
+ (id)standardChartRestorationDictionary:(id)dictionary healthStore:(id)store;
+ (int64_t)_timeScopeForTimeScope:(int64_t)scope availableTimeScopes:(id)scopes;
+ (void)_validateStackedHeights:(id)heights;
+ (void)saveRestorationUserActivity:(id)activity viewController:(id)controller;
- (BOOL)_acceptSubclassRange:(id)range proposedRange:(id)proposedRange axisRange:(id)axisRange;
- (BOOL)_applyHorizontalMarginsToEntireView;
- (BOOL)_date:(id)_date closeToDate:(id)date epsilonDateComponents:(id)components calendar:(id)calendar;
- (BOOL)_displayTypeIsHorizontalForTimeScope:(int64_t)scope displayType:(id)type;
- (BOOL)_primaryDisplayTypeHasNoData;
- (BOOL)_selectedSeriesWantsLastRecordedDate;
- (BOOL)_shouldHandleInitialLollipopTouchDate:(id)date mostRecentDataDate:(id)dataDate forGraphView:(id)view;
- (BOOL)_shouldHandleVisibleRangeChangeWithChangeContext:(int64_t)context;
- (BOOL)_showInfoButtonInCurrentValueView;
- (BOOL)_valueRange:(id)range fitsInsideValueRange:(id)valueRange;
- (BOOL)_viewHierarchyIsHidden:(id)hidden;
- (BOOL)_visibleRangeIsNowForTimeScope:(int64_t)scope;
- (BOOL)chartDataIsAvailable;
- (BOOL)infographicSupportedForDisplayType:(id)type healthStore:(id)store;
- (BOOL)removeDisplayTypeStackAtIndex:(int64_t)index;
- (HKCurrentOverlayLocationProviding)currentOverlayLocationProvider;
- (HKCurrentValueViewDataSourceDelegate)currentValueViewDataSourceDelegate;
- (HKDisplayType)calendarQueryDisplayType;
- (HKInteractiveChartCurrentValueViewCallbacks)standardCurrentValueViewCallbacks;
- (HKInteractiveChartCurrentValueViewHandler)currentValueViewHandler;
- (HKInteractiveChartViewController)initWithDisplayTypes:(id)types healthStore:(id)store unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)rangeController initialXValue:(id)self0 currentCalendarOverride:(id)self1 options:(unint64_t)self2;
- (HKInteractiveChartViewController)initWithStackedDisplayTypes:(id)types primaryDisplayTypeStackIndex:(id)index stackedDisplayTypeHeights:(id)heights healthStore:(id)store unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)self0 sampleTypeDateRangeController:(id)self1 initialXValue:(id)self2 currentCalendarOverride:(id)self3 options:(unint64_t)self4 timeScopeRanges:(id)self5;
- (HKSampleType)calendarQuerySampleType;
- (HKTrendAccessibilityDelegate)trendAccessibilityDelegate;
- (UIColor)calendarDaySamplePresentColor;
- (double)_annotationViewCenterY;
- (double)_effectiveHorizontalMargin;
- (id)_allDisplayTypes;
- (id)_assembleValueViewString:(id)string;
- (id)_chartDataForPoint:(id)point;
- (id)_colorForDisplayType:(id)type;
- (id)_configurationForDisplayType:(id)type;
- (id)_configurationForSeries:(id)series;
- (id)_createGraphSeriesConfigurationFromDisplayType:(id)type timeScope:(int64_t)scope;
- (id)_customGraphSeriesForDisplayType:(id)type;
- (id)_dateForBlockPoint:(id)point;
- (id)_dateForMostRecentData;
- (id)_debugDateStringForPoint:(id)point;
- (id)_defaultAxisRangeIncludeToday:(BOOL)today;
- (id)_displayNameForDisplayType:(id)type;
- (id)_displayTypeForSeries:(id)series;
- (id)_displayUnitForDisplayType:(id)type;
- (id)_formatterForSeries:(id)series;
- (id)_graphViewAxisAndVisibleDateRangeForTimeScope:(int64_t)scope fixedRange:(id)range;
- (id)_midPointDateFromVisibleRange;
- (id)_numberForXCoordinate:(double)coordinate graphView:(id)view;
- (id)_pointSelectionInfo:(id)info;
- (id)_primaryDisplayType;
- (id)_rangeValueAsNumber:(id)number;
- (id)_singleFixedRange;
- (id)_trendCoordinateDescriptionForStartX:(double)x endX:(double)endX timeScope:(int64_t)scope graphView:(id)view;
- (id)_valueViewToString:(id)string;
- (id)accessibilityDataForChart;
- (id)addNoDataEntries:(id)entries timeScope:(int64_t)scope targetSeries:(id)series;
- (id)currentDisplayTypesForStackOffset:(int64_t)offset;
- (id)currentValueViewAsString;
- (id)dateForXCoordinate:(double)coordinate graphView:(id)view;
- (id)descriptionForChartData:(id)data timeScope:(int64_t)scope;
- (id)descriptionForStartX:(double)x endX:(double)endX chartData:(id)data timeScope:(int64_t)scope resolution:(int64_t)resolution graphView:(id)view;
- (id)descriptionSpansForGraphView:(id)view timeScope:(int64_t)scope;
- (id)fixedRangeForTimeScope:(int64_t)scope;
- (id)graphSeriesForDisplayType:(id)type timeScope:(int64_t)scope stackOffset:(int64_t)offset;
- (id)graphView:(id)view graphSeriesForZoom:(int64_t)zoom stackOffset:(int64_t)offset;
- (id)infographicViewControllerForDisplayType:(id)type healthStore:(id)store;
- (id)lollipopAnnotationColor;
- (id)lollipopExtensionColor;
- (id)makeAnchorDateFromPreviousAnchorDate:(id)date previousEffectiveVisibleRange:(id)range previousTimeScope:(int64_t)scope currentTimeScope:(int64_t)timeScope;
- (id)makeAnnotationDataSource;
- (id)makeCurrentValueView;
- (id)makePrimaryGraphViewControllerWithDateZoom:(int64_t)zoom previousDateZoom:(int64_t)dateZoom previousXAxisSpace:(double)space currentCalendar:(id)calendar;
- (id)makeStandardCurrentValueViewDataSource;
- (id)primaryGraphSeriesForTimeScope:(int64_t)scope;
- (id)replaceRangeClause:(id)clause;
- (id)restorationStateDictionary;
- (id)stringForValueRange:(id)range timeScope:(int64_t)scope;
- (id)supportedTimeScopes;
- (int64_t)_countOfHorizontalSectionsForConfigurationManager:(id)manager timeScope:(int64_t)scope;
- (int64_t)_defaultTimeScopeWithAvailableTimeScopes:(id)scopes;
- (int64_t)_numHorizontalDisplayTypesForTimeScope:(int64_t)scope displayTypes:(id)types;
- (int64_t)_userInfoSelectionCount:(id)count;
- (int64_t)addNewDisplayTypeStackWithDisplayTypes:(id)types;
- (int64_t)annotationDataSourceFirstWeekday;
- (int64_t)defaultAlignmentForTimeScope:(int64_t)scope;
- (void)_addDisplayTypeToConfiguration:(id)configuration allDisplayTypes:(id)types configurationManager:(id)manager;
- (void)_addSeriesForDisplayType:(id)type updatingTimeScopeProperties:(id)properties configurationManager:(id)manager;
- (void)_automaticAutoScale;
- (void)_configureCustomDisplayType:(id)type graphSeries:(id)series configurationManager:(id)manager timeScope:(int64_t)scope;
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
- (void)_moveSelectedDateInDirection:(int64_t)direction;
- (void)_notifyObserversDidUpdateVisibleValueRange:(id)range changeContext:(int64_t)context;
- (void)_omitLayoutHeader;
- (void)_primaryDisplayType;
- (void)_radioButtonsDidUpdate:(id)update;
- (void)_replacePrimaryGraphViewControllerWithScalarController;
- (void)_replacePrimaryGraphViewControllerWithTimeScope:(int64_t)scope anchorDate:(id)date animated:(BOOL)animated;
- (void)_scheduleDelayedAutoscale;
- (void)_scrollToAnchorDate:(id)date graphView:(id)view alignment:(int64_t)alignment;
- (void)_scrollToMostRecentDataWithAlignment:(int64_t)alignment;
- (void)_setDateSelectorToVisibleRange;
- (void)_setGraphViewAxisAndVisibleDateRangeForTimeScope:(int64_t)scope anchorDate:(id)date preserveScrollPosition:(BOOL)position;
- (void)_setSelectedGraphSeries:(id)series animated:(BOOL)animated;
- (void)_setVisibleDisplayTypes:(id)types;
- (void)_setVisibleRangeUsingDateFromDateSelector:(id)selector;
- (void)_showHideNoGraphSeriesLabels;
- (void)_unitPreferencesDidUpdate:(id)update;
- (void)_updateAfterConfigurationChangeIncludeDateAxis:(BOOL)axis;
- (void)_updateAxisScalingRulesForUnitPreferenceChangesOfTypes:(id)types;
- (void)_updateGraphViewAxisDateRange;
- (void)_updateSelectedSeriesLabel:(id)label;
- (void)addChartViewObserver:(id)observer;
- (void)addOverlayDisplayType:(id)type stackOffset:(int64_t)offset;
- (void)currentTimeViewDidTapOnDateSelector:(id)selector;
- (void)dealloc;
- (void)didTapOnInfoButtonFromCurrentValueView:(id)view;
- (void)graphView:(id)view didFinishUserScrollingToValueRange:(id)range;
- (void)graphView:(id)view didUpdateFromDateZoom:(int64_t)zoom toDateZoom:(int64_t)dateZoom newVisibleRange:(id)range;
- (void)graphView:(id)view didUpdateLegendViewsWithTopLegendFrame:(CGRect)frame;
- (void)graphView:(id)view didUpdateSelectedPoint:(id)point;
- (void)graphView:(id)view didUpdateSeries:(id)series newDataArrived:(BOOL)arrived changeContext:(int64_t)context;
- (void)graphView:(id)view didUpdateVisibleValueRange:(id)range changeContext:(int64_t)context;
- (void)graphView:(id)view startupTime:(int64_t)time;
- (void)graphViewDidEndSelection:(id)selection;
- (void)graphViewDidTapYAxis:(id)axis;
- (void)graphViewExternalSelectionEnd:(id)end;
- (void)graphViewRenderedView:(id)view;
- (void)installGraphViewSnapshot;
- (void)interactiveChartHasData:(id)data;
- (void)loadView;
- (void)monthViewController:(id)controller didSelectDate:(id)date;
- (void)removeChartViewObserver:(id)observer;
- (void)removeGraphViewSnapshotAnimated:(BOOL)animated;
- (void)removeOverlayDisplayType:(id)type stackOffset:(int64_t)offset automaticAutoscale:(BOOL)autoscale;
- (void)removeStackedDisplayType:(id)type;
- (void)replaceCurrentDisplayTypesWithTypes:(id)types stackOffset:(int64_t)offset resetDateRange:(BOOL)range automaticAutoScale:(BOOL)scale;
- (void)sampleTypeDateRangeController:(id)controller didUpdateDateRanges:(id)ranges;
- (void)saveRestorationState;
- (void)scrollToDate:(id)date withVisibleAlignment:(int64_t)alignment;
- (void)scrollToMostRecentData;
- (void)scrollToRange:(id)range withVisibleAlignment:(int64_t)alignment;
- (void)selectTimeScope:(int64_t)scope;
- (void)setCurrentValueViewDataSourceDelegate:(id)delegate;
- (void)setDetailView:(id)view;
- (void)setStackedDisplayTypeHeights:(id)heights;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAnnotationDataSource:(id)source pointContexts:(id)contexts;
- (void)updateCurrentValueView:(id)view graphView:(id)graphView timeScope:(int64_t)scope showInfoButton:(BOOL)button;
- (void)updateCurrentValueViewWithVisibleRange;
- (void)updatePrimaryGraphViewController;
- (void)updateSelectionAnnotationDataSourceForContext:(id)context displayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKInteractiveChartViewController

- (HKInteractiveChartViewController)initWithStackedDisplayTypes:(id)types primaryDisplayTypeStackIndex:(id)index stackedDisplayTypeHeights:(id)heights healthStore:(id)store unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)self0 sampleTypeDateRangeController:(id)self1 initialXValue:(id)self2 currentCalendarOverride:(id)self3 options:(unint64_t)self4 timeScopeRanges:(id)self5
{
  v66[1] = *MEMORY[0x1E69E9840];
  typesCopy = types;
  indexCopy = index;
  cacheCopy = cache;
  heightsCopy = heights;
  storeCopy = store;
  controllerCopy = controller;
  controllerCopy2 = controller;
  v23 = storeCopy;
  v62 = controllerCopy2;
  cacheCopy2 = cache;
  cacheControllerCopy = cacheController;
  scopeControllerCopy = scopeController;
  rangeControllerCopy = rangeController;
  valueCopy = value;
  overrideCopy = override;
  rangesCopy = ranges;
  v65.receiver = self;
  v65.super_class = HKInteractiveChartViewController;
  v26 = [(HKInteractiveChartViewController *)&v65 init];
  v27 = v26;
  if (v26)
  {
    v56 = rangesCopy;
    v26->_displayState = 0;
    date = [MEMORY[0x1E695DF00] date];
    creationDate = v27->_creationDate;
    v27->_creationDate = date;

    v27->_options = options;
    objc_storeStrong(&v27->_healthStore, store);
    objc_storeStrong(&v27->_unitPreferenceController, controllerCopy);
    objc_storeStrong(&v27->_dateCache, cacheCopy);
    objc_storeStrong(&v27->_chartDataCacheController, cacheController);
    objc_storeStrong(&v27->_selectedTimeScopeController, scopeController);
    objc_storeWeak(&v27->_currentValueViewHandler, v27);
    v30 = [HKDisplayTypeController sharedInstanceForHealthStore:v23];
    displayTypeController = v27->_displayTypeController;
    v27->_displayTypeController = v30;

    objc_storeStrong(&v27->_sampleTypeDateRangeController, rangeController);
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
    objc_storeStrong(&v27->_initialXValue, value);
    v27->_firstSampleDateRangeUpdate = 1;
    v27->_delayedAutoscaleRequestCount = 0;
    v27->_delayedAutoscaleActualCount = 0;
    currentCalendar = overrideCopy;
    if (!overrideCopy)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    }

    objc_storeStrong(&v27->_currentCalendar, currentCalendar);
    if (!overrideCopy)
    {
    }

    if (indexCopy)
    {
      intValue = [indexCopy intValue];
    }

    else
    {
      intValue = 0;
    }

    v27->_primaryDisplayTypeStackIndex = intValue;
    [HKInteractiveChartViewController _validateStackedHeights:heightsCopy, store];
    objc_storeStrong(&v27->_stackedDisplayTypeHeights, heights);
    [(HKInteractiveChartViewController *)v27 setDisplayTypeStack:typesCopy];
    if ([(HKInteractiveChartViewController *)v27 _chartHasDateAxis])
    {
      sampleTypeDateRangeController = [(HKInteractiveChartViewController *)v27 sampleTypeDateRangeController];
      [sampleTypeDateRangeController addObserver:v27];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v27 selector:sel__unitPreferencesDidUpdate_ name:*MEMORY[0x1E696BE70] object:0];

    [(HKInteractiveChartViewController *)v27 _setVisibleDisplayTypes:typesCopy];
    [(HKInteractiveChartViewController *)v27 _createAndPrepareFeedbackGenerator];
    v47 = [HKSelectedRangeFormatter alloc];
    unitPreferenceController = [(HKInteractiveChartViewController *)v27 unitPreferenceController];
    v49 = [(HKSelectedRangeFormatter *)v47 initWithUnitPreferenceController:unitPreferenceController];
    [(HKInteractiveChartViewController *)v27 setSelectedRangeFormatter:v49];

    v27->_disableCurrentValueViewForInitialLollipop = 0;
    v27->_hasInitialDateRangeAndTimeScope = 1;
    objc_storeStrong(&v27->_timeScopeRanges, ranges);
    v27->_annotationDataSourceFirstWeekday = -1;
    v50 = [[_TtC8HealthUI45HKInteractiveChartInteractionAnalyticsManager alloc] initWithHealthStore:v23];
    analyticsManager = v27->_analyticsManager;
    v27->_analyticsManager = v50;

    rangesCopy = v56;
  }

  return v27;
}

- (HKInteractiveChartViewController)initWithDisplayTypes:(id)types healthStore:(id)store unitPreferenceController:(id)controller dateCache:(id)cache chartDataCacheController:(id)cacheController selectedTimeScopeController:(id)scopeController sampleTypeDateRangeController:(id)rangeController initialXValue:(id)self0 currentCalendarOverride:(id)self1 options:(unint64_t)self2
{
  v32[1] = *MEMORY[0x1E69E9840];
  v32[0] = types;
  v30 = MEMORY[0x1E695DEC8];
  overrideCopy = override;
  valueCopy = value;
  rangeControllerCopy = rangeController;
  scopeControllerCopy = scopeController;
  cacheControllerCopy = cacheController;
  cacheCopy = cache;
  controllerCopy = controller;
  storeCopy = store;
  typesCopy = types;
  v27 = [v30 arrayWithObjects:v32 count:1];

  v28 = [(HKInteractiveChartViewController *)self initWithStackedDisplayTypes:v27 primaryDisplayTypeStackIndex:0 stackedDisplayTypeHeights:0 healthStore:storeCopy unitPreferenceController:controllerCopy dateCache:cacheCopy chartDataCacheController:cacheControllerCopy selectedTimeScopeController:scopeControllerCopy sampleTypeDateRangeController:rangeControllerCopy initialXValue:valueCopy currentCalendarOverride:overrideCopy options:options timeScopeRanges:0];
  return v28;
}

- (void)setStackedDisplayTypeHeights:(id)heights
{
  heightsCopy = heights;
  [HKInteractiveChartViewController _validateStackedHeights:heightsCopy];
  stackedDisplayTypeHeights = self->_stackedDisplayTypeHeights;
  self->_stackedDisplayTypeHeights = heightsCopy;
}

+ (void)_validateStackedHeights:(id)heights
{
  v18 = *MEMORY[0x1E69E9840];
  heightsCopy = heights;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [heightsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(heightsCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (![v10 kind])
        {
          [v10 heightValue];
          v8 = v8 + v11;
          ++v6;
        }
      }

      v5 = [heightsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)interactiveChartHasData:(id)data
{
  dataCopy = data;
  if (![(HKInteractiveChartViewController *)self chartDataIsAvailable])
  {
    chartHasDataCompletion = [(HKInteractiveChartViewController *)self chartHasDataCompletion];

    if (!chartHasDataCompletion)
    {
      [(HKInteractiveChartViewController *)self setChartHasDataCompletion:dataCopy];
      goto LABEL_7;
    }

    _HKInitializeLogging();
    v6 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [HKInteractiveChartViewController interactiveChartHasData:];
    }
  }

  dataCopy[2](dataCopy);
LABEL_7:
}

- (BOOL)chartDataIsAvailable
{
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];

  if (graphView)
  {
    allSeriesHaveDataAvailable = [graphView allSeriesHaveDataAvailable];
  }

  else
  {
    allSeriesHaveDataAvailable = 0;
  }

  return allSeriesHaveDataAvailable;
}

- (id)supportedTimeScopes
{
  options = self->_options;
  timeScopeRanges = [(HKInteractiveChartViewController *)self timeScopeRanges];
  v4 = [HKInteractiveChartViewController _timeScopesWithOptions:options timeScopeRanges:timeScopeRanges];

  return v4;
}

- (id)currentValueViewAsString
{
  [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  dataSourceForCurrentValueViewString = [(HKInteractiveChartViewController *)self dataSourceForCurrentValueViewString];
  v5 = dataSourceForCurrentValueViewString;
  if (self->_currentValueView)
  {
    v6 = dataSourceForCurrentValueViewString == 0;
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
    v7 = [dataSourceForCurrentValueViewString dateViewWithOrientation:0];
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

- (id)_valueViewToString:(id)string
{
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    text = [stringCopy text];
    subviews = text;
    v7 = @"NilLabelText";
    if (text)
    {
      v7 = text;
    }

    v8 = v7;
  }

  else
  {
    subviews = [stringCopy subviews];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__HKInteractiveChartViewController__valueViewToString___block_invoke;
    v11[3] = &unk_1E81B98F0;
    v11[4] = self;
    v9 = [subviews hk_map:v11];
    v8 = [(HKInteractiveChartViewController *)self _assembleValueViewString:v9];
  }

  return v8;
}

- (id)_assembleValueViewString:(id)string
{
  stringCopy = string;
  if ([stringCopy count])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [stringCopy componentsJoinedByString:@"|"];
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
  selectedTimeScope = [(HKTimeScopeControl *)self->_radioButtons selectedTimeScope];
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];
  trendAccessibilityDelegate = [(HKInteractiveChartViewController *)self trendAccessibilityDelegate];
  trendAccessibilitySeries = [trendAccessibilityDelegate trendAccessibilitySeries];

  if (trendAccessibilitySeries)
  {
    v9 = trendAccessibilitySeries;
  }

  else
  {
    v9 = [(HKInteractiveChartViewController *)self descriptionSeriesForGraphView:graphView];
  }

  v10 = v9;
  v11 = [v9 resolutionForTimeScope:selectedTimeScope traitResolution:{objc_msgSend(graphView, "resolutionFromTraitCollectionAttributes")}];
  v12 = MEMORY[0x1E695E0F8];
  if (primaryGraphViewController && v10)
  {
    v13 = v11;
    [graphView hardLeftMarginWidth];
    v15 = v14;
    v12 = [(HKInteractiveChartViewController *)self descriptionSpansForGraphView:graphView timeScope:selectedTimeScope];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __61__HKInteractiveChartViewController_accessibilityDataForChart__block_invoke;
    v19[3] = &unk_1E81B9918;
    v19[4] = self;
    v23 = selectedTimeScope;
    v24 = v13;
    v20 = graphView;
    v21 = trendAccessibilitySeries;
    v25 = v15;
    v22 = v3;
    [v20 enumerateVisibleCoordinatesForSeries:v10 block:v19];
  }

  if (trendAccessibilitySeries)
  {
    v16 = [[HKAccessibilityData alloc] initWithPointData:v3 accessibilitySpans:v12];
  }

  else
  {
    v17 = [(HKInteractiveChartViewController *)self addNoDataEntries:v3 timeScope:selectedTimeScope targetSeries:v10];
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

- (id)_trendCoordinateDescriptionForStartX:(double)x endX:(double)endX timeScope:(int64_t)scope graphView:(id)view
{
  viewCopy = view;
  v11 = [(HKInteractiveChartViewController *)self dateForXCoordinate:viewCopy graphView:x];
  v12 = [(HKInteractiveChartViewController *)self dateForXCoordinate:viewCopy graphView:endX];

  v13 = [HKValueRange valueRangeWithMinValue:v11 maxValue:v12];
  if (scope == 3)
  {
    currentCalendar = [(HKInteractiveChartViewController *)self currentCalendar];
    firstWeekday = [currentCalendar firstWeekday];

    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v17 = [MEMORY[0x1E696AB80] hk_dateIntervalWithValueRange:v13];
    v18 = [hk_gregorianCalendarWithLocalTimeZone hk_weeksContainingInterval:v17 firstWeekday:firstWeekday];

    startDate = [v18 startDate];
    endDate = [v18 endDate];
    v21 = [HKValueRange valueRangeWithMinValue:startDate maxValue:endDate];

    v13 = v21;
  }

  v22 = [(HKInteractiveChartViewController *)self stringForValueRange:v13 timeScope:scope];
  v23 = [(HKInteractiveChartViewController *)self replaceRangeClause:v22];

  return v23;
}

- (id)addNoDataEntries:(id)entries timeScope:(int64_t)scope targetSeries:(id)series
{
  entriesCopy = entries;
  seriesCopy = series;
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  v10 = primaryGraphViewController;
  if (seriesCopy && primaryGraphViewController)
  {
    v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = v10;
    graphView = [v10 graphView];
    xAxis = [graphView xAxis];
    v51 = entriesCopy;
    v55 = [entriesCopy count];
    effectiveVisibleRangeActive = [graphView effectiveVisibleRangeActive];
    v14 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:scope];
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    startDate = [effectiveVisibleRangeActive startDate];
    transform = [xAxis transform];
    [transform coordinateForValue:startDate];
    v19 = v18;

    v48 = xAxis;
    [xAxis pointTransform];
    v22 = HKLinearTransformValue(v20, v21, v19);
    v50 = seriesCopy;
    v47 = v14;
    v53 = [seriesCopy resolutionForTimeScope:scope traitResolution:{objc_msgSend(graphView, "resolutionFromTraitCollectionAttributes")}];
    v23 = [v14 seriesPointIntervalComponentsAtResolution:?];
    v45 = [hk_gregorianCalendarWithLocalTimeZone dateByAddingComponents:v23 toDate:startDate options:0];
    v46 = startDate;
    v24 = HKDateMidpoint(startDate, v45);
    v25 = effectiveVisibleRangeActive;
    endDate = [effectiveVisibleRangeActive endDate];
    LODWORD(effectiveVisibleRangeActive) = [v24 hk_isBeforeOrEqualToDate:endDate];

    if (effectiveVisibleRangeActive)
    {
      v27 = 0;
      while (1)
      {
        if (v27 < v55)
        {
          v28 = [v51 objectAtIndexedSubscript:v27];
          horizontalDate = [(HKAccessibilityPointData *)v28 horizontalDate];
          if ([(HKInteractiveChartViewController *)self _date:v24 closeToDate:horizontalDate epsilonDateComponents:v23 calendar:hk_gregorianCalendarWithLocalTimeZone])
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

        xAxis2 = [graphView xAxis];
        transform2 = [xAxis2 transform];
        [transform2 coordinateForValue:v24];
        v33 = v32;

        [xAxis2 pointTransform];
        v36 = HKLinearTransformValue(v34, v35, v33) - v22;
        [graphView hardLeftMarginWidth];
        v38 = v36 + v37;
        v39 = [(HKInteractiveChartViewController *)self descriptionForStartX:0 endX:scope chartData:v53 timeScope:graphView resolution:v33 graphView:v33];
        v28 = [[HKAccessibilityPointData alloc] initWithHorizontalScreenCoordinate:v39 horizontalTimeCoordinate:v24 horizontalDate:0 values:v38];

        if (v28)
        {
LABEL_11:
          [v52 addObject:v28];
        }

        v40 = [hk_gregorianCalendarWithLocalTimeZone dateByAddingComponents:v23 toDate:v24 options:0];

        endDate2 = [v25 endDate];
        v42 = [v40 hk_isBeforeOrEqualToDate:endDate2];

        v24 = v40;
        if ((v42 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    v40 = v24;
LABEL_16:

    seriesCopy = v50;
    entriesCopy = v51;
    v10 = v49;
    v43 = v52;
  }

  else
  {
    v43 = entriesCopy;
  }

  return v43;
}

- (BOOL)_date:(id)_date closeToDate:(id)date epsilonDateComponents:(id)components calendar:(id)calendar
{
  dateCopy = date;
  _dateCopy = _date;
  v11 = [calendar dateByAddingComponents:components toDate:_dateCopy options:0];
  [v11 timeIntervalSinceDate:_dateCopy];
  v13 = v12 * 0.5;
  [dateCopy timeIntervalSinceDate:_dateCopy];
  v15 = v14;

  return fabs(v15) < v13;
}

- (id)descriptionSpansForGraphView:(id)view timeScope:(int64_t)scope
{
  v20[1] = *MEMORY[0x1E69E9840];
  scope = [(HKInteractiveChartViewController *)self descriptionSeriesForGraphView:view, scope];
  visibleValueRange = [scope visibleValueRange];
  minValue = [visibleValueRange minValue];
  v8 = [(HKInteractiveChartViewController *)self _rangeValueAsNumber:minValue];

  maxValue = [visibleValueRange maxValue];
  v10 = [(HKInteractiveChartViewController *)self _rangeValueAsNumber:maxValue];

  NSClassFromString(&cfstr_Hkbarseries.isa);
  if (objc_opt_isKindOfClass())
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = [(HKInteractiveChartViewController *)self _displayTypeForSeries:scope];
  v13 = [(HKInteractiveChartViewController *)self _displayNameForDisplayType:v12];
  unitPreferenceController = [(HKInteractiveChartViewController *)self unitPreferenceController];
  v15 = [unitPreferenceController localizedDisplayNameForDisplayType:v12];

  v16 = [[HKAccessibilitySpan alloc] initWithTitle:v13 seriesType:v11 dataComprehensionMinYValue:v8 dataComprehensionMaxYValue:v10 dataComprehensionUnitForChart:v15];
  v19 = v13;
  v20[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  return v17;
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

- (id)descriptionForStartX:(double)x endX:(double)endX chartData:(id)data timeScope:(int64_t)scope resolution:(int64_t)resolution graphView:(id)view
{
  viewCopy = view;
  v12 = [(HKInteractiveChartViewController *)self dateForXCoordinate:viewCopy graphView:x];
  if (v12)
  {
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v14 = [hk_gregorianCalendarWithLocalTimeZone components:126 fromDate:v12];

    hk_gregorianCalendarWithLocalTimeZone2 = [MEMORY[0x1E695DEE8] hk_gregorianCalendarWithLocalTimeZone];
    v16 = HKCombinedStringForAnnotationDateWithTimeScope(v14, hk_gregorianCalendarWithLocalTimeZone2, [(HKTimeScopeControl *)self->_radioButtons selectedTimeScope], resolution);
    v17 = [(HKInteractiveChartViewController *)self replaceRangeClause:v16];
  }

  else
  {
    v18 = [(HKInteractiveChartViewController *)self _numberForXCoordinate:viewCopy graphView:x];
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

- (id)dateForXCoordinate:(double)coordinate graphView:(id)view
{
  xAxis = [view xAxis];
  transform = [xAxis transform];
  v7 = [transform valueForCoordinate:coordinate];

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

- (id)_numberForXCoordinate:(double)coordinate graphView:(id)view
{
  xAxis = [view xAxis];
  transform = [xAxis transform];
  v7 = [transform valueForCoordinate:coordinate];

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

- (id)replaceRangeClause:(id)clause
{
  clauseCopy = clause;
  v4 = [clauseCopy rangeOfString:@"–"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = clauseCopy;
  }

  else
  {
    v7 = v4;
    v8 = v5;
    v9 = [clauseCopy substringWithRange:{0, v4}];
    v10 = [clauseCopy substringWithRange:{v7 + v8, objc_msgSend(clauseCopy, "length") - (v7 + v8)}];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"RANGE_CLAUSE_%@_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v6 = [v11 stringWithFormat:v13, v9, v10];
  }

  return v6;
}

- (id)descriptionForChartData:(id)data timeScope:(int64_t)scope
{
  v53[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  if (primaryGraphViewController)
  {
    v39 = primaryGraphViewController;
    graphView = [primaryGraphViewController graphView];
    v37 = [(HKInteractiveChartViewController *)self descriptionSeriesForGraphView:graphView];
    v9 = [(HKInteractiveChartViewController *)self _displayTypeForSeries:?];
    v10 = [v9 hk_interactiveChartsFormatterForTimeScope:{-[HKTimeScopeControl selectedTimeScope](self->_radioButtons, "selectedTimeScope")}];
    hk_chartLollipopValueFont = [MEMORY[0x1E69DB878] hk_chartLollipopValueFont];
    [v10 setMajorFont:hk_chartLollipopValueFont];

    hk_chartLollipopKeyFont = [MEMORY[0x1E69DB878] hk_chartLollipopKeyFont];
    [v10 setMinorFont:hk_chartLollipopKeyFont];

    [v10 setDisplayType:v9];
    unitPreferenceController = [(HKInteractiveChartViewController *)self unitPreferenceController];
    [v10 setUnitController:unitPreferenceController];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objectType = [v9 objectType];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v16 = v10;
        objectType2 = [v9 objectType];
        [v16 configureFormatterForDisplayType:v9 quantityType:objectType2 chartRangeProvider:graphView timeScope:scope context:0];
      }
    }

    v38 = graphView;
    v40 = dataCopy;
    v53[0] = dataCopy;
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
          labelColor = [MEMORY[0x1E69DC888] labelColor];
          v23 = [HKSelectedRangeLabel standardPrefixColorForSelectedRangeData:v21 defaultColor:labelColor];
          v24 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
          v46 = v23;
          v47 = labelColor;
          v25 = [HKSelectedRangeLabel attributedStringForSelectedRangeData:v21 font:v24 foregroundColor:labelColor prefixColor:v23 prefersImageAffixes:0 embedded:0];

          v26 = [(HKInteractiveChartViewController *)self _displayNameForDisplayType:v9];
          if (v25)
          {
            string = [v25 string];
          }

          else
          {
            string = &stru_1F42FFBE0;
          }

          v28 = [HKAccessibilityValue alloc];
          attributedString = [v21 attributedString];
          string2 = [attributedString string];
          [(HKInteractiveChartViewController *)self replaceRangeClause:string2];
          v32 = v31 = self;
          valueAsNumber = [v21 valueAsNumber];
          v34 = [(HKAccessibilityValue *)v28 initWithValueTitle:v26 valueType:string valueDescription:v32 valueAsNumber:valueAsNumber];

          self = v31;
          [v44 addObject:v34];

          v9 = v43;
        }

        v45 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v45);
    }

    primaryGraphViewController = v39;
    dataCopy = v40;
  }

  return v44;
}

- (void)addChartViewObserver:(id)observer
{
  v17 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
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

      observer = [*(*(&v12 + 1) + 8 * v10) observer];

      if (observer == observerCopy)
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

    v6 = [[_HKInteractiveChartWeakObserverWrapper alloc] initWithObserver:observerCopy];
    [(NSMutableArray *)self->_observers addObject:v6];
  }
}

BOOL __57__HKInteractiveChartViewController_addChartViewObserver___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 observer];
  v3 = v2 != 0;

  return v3;
}

- (void)removeChartViewObserver:(id)observer
{
  observerCopy = observer;
  if ([(NSMutableArray *)self->_observers count])
  {
    v4 = 0;
    while (1)
    {
      v5 = [(NSMutableArray *)self->_observers objectAtIndexedSubscript:v4];
      observer = [v5 observer];

      if (observer == observerCopy)
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

- (void)replaceCurrentDisplayTypesWithTypes:(id)types stackOffset:(int64_t)offset resetDateRange:(BOOL)range automaticAutoScale:(BOOL)scale
{
  rangeCopy = range;
  scaleCopy = scale;
  v43 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v9 = [(NSArray *)self->_allGraphSeriesConfigurationManagers objectAtIndexedSubscript:offset];
  v10 = [(HKInteractiveChartViewController *)self primaryGraphSeriesForTimeScope:[(HKInteractiveChartViewController *)self _dateZoom]];
  visibleValueRange = [v10 visibleValueRange];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  allDisplayTypes = [v9 allDisplayTypes];
  v12 = [allDisplayTypes countByEnumeratingWithState:&v36 objects:v42 count:16];
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
          objc_enumerationMutation(allDisplayTypes);
        }

        [v9 removeConfigurationsForDisplayType:*(*(&v36 + 1) + 8 * i)];
      }

      v13 = [allDisplayTypes countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v13);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = typesCopy;
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

  [(HKInteractiveChartViewController *)self _updateAfterConfigurationChangeIncludeDateAxis:rangeCopy];
  if (scaleCopy)
  {
    graphView = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __118__HKInteractiveChartViewController_replaceCurrentDisplayTypesWithTypes_stackOffset_resetDateRange_automaticAutoScale___block_invoke;
    v29[3] = &unk_1E81B5A10;
    v29[4] = self;
    v30 = graphView;
    v31 = visibleValueRange;
    v24 = graphView;
    [v24 autoscaleYAxesAnimated:1 specificRange:0 onlyIfNeeded:0 completion:v29];
  }

  lollipopController = [(HKInteractiveChartViewController *)self lollipopController];
  [lollipopController setInvisibleAnimated:1];

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

- (void)addOverlayDisplayType:(id)type stackOffset:(int64_t)offset
{
  v10[1] = *MEMORY[0x1E69E9840];
  allGraphSeriesConfigurationManagers = self->_allGraphSeriesConfigurationManagers;
  typeCopy = type;
  v8 = [(NSArray *)allGraphSeriesConfigurationManagers objectAtIndexedSubscript:offset];
  v10[0] = typeCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [(HKInteractiveChartViewController *)self _addDisplayTypeToConfiguration:typeCopy allDisplayTypes:v9 configurationManager:v8];

  [(HKInteractiveChartViewController *)self _updateAfterConfigurationChangeIncludeDateAxis:0];
  [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
  [(HKInteractiveChartViewController *)self _automaticAutoScale];
}

- (void)removeOverlayDisplayType:(id)type stackOffset:(int64_t)offset automaticAutoscale:(BOOL)autoscale
{
  autoscaleCopy = autoscale;
  allGraphSeriesConfigurationManagers = self->_allGraphSeriesConfigurationManagers;
  typeCopy = type;
  v10 = [(NSArray *)allGraphSeriesConfigurationManagers objectAtIndexedSubscript:offset];
  [v10 removeConfigurationsForDisplayType:typeCopy];

  [(HKInteractiveChartViewController *)self _updateAfterConfigurationChangeIncludeDateAxis:0];
  [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
  if (autoscaleCopy)
  {
    [(HKInteractiveChartViewController *)self _automaticAutoScale];
  }
}

- (id)currentDisplayTypesForStackOffset:(int64_t)offset
{
  v3 = [(NSArray *)self->_allGraphSeriesConfigurationManagers objectAtIndexedSubscript:offset];
  allDisplayTypes = [v3 allDisplayTypes];

  return allDisplayTypes;
}

- (id)graphSeriesForDisplayType:(id)type timeScope:(int64_t)scope stackOffset:(int64_t)offset
{
  allGraphSeriesConfigurationManagers = self->_allGraphSeriesConfigurationManagers;
  typeCopy = type;
  v9 = [(NSArray *)allGraphSeriesConfigurationManagers objectAtIndexedSubscript:offset];
  v10 = [v9 configurationForDisplayType:typeCopy zoom:scope];

  graphSeries = [v10 graphSeries];

  return graphSeries;
}

- (id)primaryGraphSeriesForTimeScope:(int64_t)scope
{
  _primaryDisplayType = [(HKInteractiveChartViewController *)self _primaryDisplayType];
  v6 = [(HKInteractiveChartViewController *)self graphSeriesForDisplayType:_primaryDisplayType timeScope:scope stackOffset:[(HKInteractiveChartViewController *)self primaryDisplayTypeStackIndex]];

  return v6;
}

- (void)setDetailView:(id)view
{
  viewCopy = view;
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  [primaryGraphViewController setDetailView:viewCopy];
}

- (void)dealloc
{
  sampleTypeDateRangeController = [(HKInteractiveChartViewController *)self sampleTypeDateRangeController];
  [sampleTypeDateRangeController removeObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696BE70] object:0];

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
  view = [(HKInteractiveChartViewController *)self view];
  [view setPreservesSuperviewLayoutMargins:1];
}

- (double)_effectiveHorizontalMargin
{
  if ([(HKInteractiveChartViewController *)self _applyHorizontalMarginsToEntireView])
  {
    view = [(HKInteractiveChartViewController *)self view];
    [view frame];
    [HKWidthDesignationProvider widthDesignationFromViewWidth:v4];

    HKCollectionViewLayoutDefaultLayoutMarginsForWidthDesignation();
    return v5;
  }

  else
  {
    view2 = [(HKInteractiveChartViewController *)self view];
    [view2 layoutMargins];
    v9 = v8;

    return fmax(v9, 16.0) + -4.0;
  }
}

- (BOOL)_applyHorizontalMarginsToEntireView
{
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  isiPad = [mEMORY[0x1E696C608] isiPad];

  return isiPad;
}

- (void)viewWillLayoutSubviews
{
  v45.receiver = self;
  v45.super_class = HKInteractiveChartViewController;
  [(HKInteractiveChartViewController *)&v45 viewWillLayoutSubviews];
  [(HKInteractiveChartViewController *)self _effectiveHorizontalMargin];
  v4 = v3;
  view = [(HKInteractiveChartViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v46);

  view2 = [(HKInteractiveChartViewController *)self view];
  [view2 bounds];
  Height = CGRectGetHeight(v47);

  if ([(HKInteractiveChartViewController *)self _headerLineEnabled])
  {
    [(HKInteractiveChartViewController *)self _layoutHeader];
  }

  else
  {
    [(HKInteractiveChartViewController *)self _omitLayoutHeader];
  }

  _timeScopeEnabled = [(HKInteractiveChartViewController *)self _timeScopeEnabled];
  _applyHorizontalMarginsToEntireView = [(HKInteractiveChartViewController *)self _applyHorizontalMarginsToEntireView];
  v11 = 0.0;
  if (_timeScopeEnabled)
  {
    v12 = 42.0;
  }

  else
  {
    v12 = 0.0;
  }

  _currentValueEnabled = [(HKInteractiveChartViewController *)self _currentValueEnabled];
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

  hk_currentDeviceHasDisplayZoomedEnabled = [MEMORY[0x1E69DCEB0] hk_currentDeviceHasDisplayZoomedEnabled];
  v16 = 80.0;
  if (hk_currentDeviceHasDisplayZoomedEnabled)
  {
    v16 = 76.0;
  }

LABEL_15:
  v43 = v16;
  if (!_currentValueEnabled)
  {
    v16 = 0.0;
  }

  v17 = v16 + v12 + self->_bannerBottom;
  v18 = v17;
  if (!_currentValueEnabled)
  {
    [(HKInteractiveChartViewController *)self dateSelectorHeight];
    v11 = v19;
    v18 = v12 + self->_bannerBottom;
  }

  v44 = v18;
  v20 = Height - (v17 + v11);
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];
  [graphView leftMarginViewRect];
  v24 = v23;

  v25 = v4 - v24;
  if (_applyHorizontalMarginsToEntireView)
  {
    v26 = Width + v24 + v4 * -2.0;
  }

  else
  {
    v26 = Width;
  }

  if (!_applyHorizontalMarginsToEntireView)
  {
    v25 = 0.0;
  }

  v42 = v25;
  [(UIView *)self->_primaryGraphViewWrapper setFrame:?];
  view3 = [(HKGraphViewController *)self->_primaryGraphViewController view];
  [view3 setFrame:{0.0, 0.0, v26, v20}];

  radioButtons = self->_radioButtons;
  if (_timeScopeEnabled)
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
  if (_currentValueEnabled)
  {
    [(HKCurrentTimeView *)self->_currentTimeView removeFromSuperview];
    [(UIView *)self->_currentValueView setHidden:0];
    if (_applyHorizontalMarginsToEntireView)
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
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];
  [graphView resetAndRedraw];

  [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = HKInteractiveChartViewController;
  changeCopy = change;
  [(HKInteractiveChartViewController *)&v10 traitCollectionDidChange:changeCopy];
  v5 = [(HKInteractiveChartViewController *)self traitCollection:v10.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
    graphView = [primaryGraphViewController graphView];
    [graphView resetAndRedraw];

    [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
  }
}

- (double)_annotationViewCenterY
{
  _timeScopeEnabled = [(HKInteractiveChartViewController *)self _timeScopeEnabled];
  v4 = 42.0;
  if (!_timeScopeEnabled)
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
  view = [(HKInteractiveChartViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v58);

  view2 = [(HKInteractiveChartViewController *)self view];
  [view2 bounds];
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
  view = [(HKInteractiveChartViewController *)self view];
  [view bounds];
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
  view2 = [(HKInteractiveChartViewController *)self view];
  [view2 bringSubviewToFront:self->_graphTopDividerView];

  view3 = [(HKInteractiveChartViewController *)self view];
  [view3 bringSubviewToFront:self->_graphBottomDividerView];
}

- (void)_layoutDashboardEmptyLabelsIfNecessary
{
  if ([(HKInteractiveChartViewController *)self _dashboardEmptyLabelsExist])
  {
    [(UILabel *)self->_dashboardEmptyHeader sizeToFit];
    view = [(HKInteractiveChartViewController *)self view];
    [view bounds];
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
    view2 = [(HKInteractiveChartViewController *)self view];
    [view2 bounds];
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

+ (id)_timeScopesWithOptions:(unint64_t)options timeScopeRanges:(id)ranges
{
  optionsCopy = options;
  rangesCopy = ranges;
  if ((optionsCopy & 0x80) != 0)
  {
    v7 = [self _timeScope:7 inTimeScopeRanges:rangesCopy];
    if ((optionsCopy & 0x400) != 0)
    {
LABEL_3:
      v8 = 0;
      if ((optionsCopy & 0x8000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    if ((optionsCopy & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = [self _timeScope:6 inTimeScopeRanges:rangesCopy];
  if ((optionsCopy & 0x8000) != 0)
  {
LABEL_4:
    v9 = 0;
    if ((optionsCopy & 0x4000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v9 = [self _timeScope:5 inTimeScopeRanges:rangesCopy];
  if ((optionsCopy & 0x4000) != 0)
  {
LABEL_5:
    v10 = 0;
    if ((optionsCopy & 0x200) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = [self _timeScope:3 inTimeScopeRanges:rangesCopy];
  if ((optionsCopy & 0x200) != 0)
  {
LABEL_6:
    v11 = 0;
    if ((optionsCopy & 0x100) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v12 = 0;
    if ((optionsCopy & 0x200000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v11 = [self _timeScope:2 inTimeScopeRanges:rangesCopy];
  if ((optionsCopy & 0x100) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v12 = [self _timeScope:1 inTimeScopeRanges:rangesCopy];
  if ((optionsCopy & 0x200000) != 0)
  {
LABEL_8:
    v13 = [self _timeScope:0 inTimeScopeRanges:rangesCopy];
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

+ (BOOL)_timeScope:(int64_t)scope inTimeScopeRanges:(id)ranges
{
  if (!ranges)
  {
    return 1;
  }

  v5 = MEMORY[0x1E696AD98];
  rangesCopy = ranges;
  v7 = [v5 numberWithInteger:scope];
  v8 = [rangesCopy objectForKeyedSubscript:v7];

  v9 = v8 != 0;
  return v9;
}

+ (int64_t)_timeScopeForTimeScope:(int64_t)scope availableTimeScopes:(id)scopes
{
  scopesCopy = scopes;
  if (![scopesCopy count])
  {
    [HKInteractiveChartViewController _timeScopeForTimeScope:a2 availableTimeScopes:self];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
  v9 = [scopesCopy containsObject:v8];

  if ((v9 & 1) == 0)
  {
    lastObject = [scopesCopy lastObject];
    integerValue = [lastObject integerValue];

    if ([scopesCopy count] != 1)
    {
      lastObject2 = [scopesCopy lastObject];
      integerValue2 = [lastObject2 integerValue];

      if (integerValue2 <= scope)
      {
        firstObject = [scopesCopy firstObject];
        integerValue3 = [firstObject integerValue];

        if (integerValue3 < scope)
        {
          firstObject2 = [scopesCopy firstObject];
          scope = [firstObject2 integerValue];

          goto LABEL_12;
        }

        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __79__HKInteractiveChartViewController__timeScopeForTimeScope_availableTimeScopes___block_invoke;
        v20[3] = &__block_descriptor_40_e18_B16__0__NSNumber_8l;
        v20[4] = scope;
        v17 = [scopesCopy hk_firstObjectPassingTest:v20];
        v18 = v17;
        if (v17)
        {
          integerValue = [v17 integerValue];
        }
      }
    }

    scope = integerValue;
  }

LABEL_12:

  return scope;
}

- (int64_t)_defaultTimeScopeWithAvailableTimeScopes:(id)scopes
{
  scopesCopy = scopes;
  _singleFixedRange = [(HKInteractiveChartViewController *)self _singleFixedRange];
  if (_singleFixedRange)
  {
    selectedTimeScope = [HKGraphZoomLevelConfiguration timeScopeForDateRange:_singleFixedRange];
  }

  else
  {
    selectedTimeScopeController = [(HKInteractiveChartViewController *)self selectedTimeScopeController];
    selectedTimeScope = [selectedTimeScopeController selectedTimeScope];
  }

  v8 = [HKInteractiveChartViewController _timeScopeForTimeScope:selectedTimeScope availableTimeScopes:scopesCopy];

  return v8;
}

- (BOOL)_selectedSeriesWantsLastRecordedDate
{
  _primaryDisplayType = [(HKInteractiveChartViewController *)self _primaryDisplayType];
  v3 = [_primaryDisplayType displayTypeIdentifier] == 95;

  return v3;
}

- (void)viewDidLoad
{
  v64.receiver = self;
  v64.super_class = HKInteractiveChartViewController;
  [(HKInteractiveChartViewController *)&v64 viewDidLoad];
  hk_chartBackgroundColor = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  view = [(HKInteractiveChartViewController *)self view];
  [view setBackgroundColor:hk_chartBackgroundColor];

  v5 = [[HKCurrentTimeView alloc] initWithWideHorizontalMargin:0];
  currentTimeView = self->_currentTimeView;
  self->_currentTimeView = v5;

  [(HKCurrentTimeView *)self->_currentTimeView setDelegate:self];
  _singleFixedRange = [(HKInteractiveChartViewController *)self _singleFixedRange];
  [(HKCurrentTimeView *)self->_currentTimeView setDisableControls:_singleFixedRange != 0];

  [(HKCurrentTimeView *)self->_currentTimeView setOmitPrevNextButtons:1];
  view2 = [(HKInteractiveChartViewController *)self view];
  [view2 addSubview:self->_currentTimeView];

  currentValueViewHandler = [(HKInteractiveChartViewController *)self currentValueViewHandler];
  makeCurrentValueView = [currentValueViewHandler makeCurrentValueView];
  currentValueView = self->_currentValueView;
  self->_currentValueView = makeCurrentValueView;

  v12 = [MEMORY[0x1E696AEC0] hk_chartAccessibilityIdentifier:@"ValueView"];
  [(UIView *)self->_currentValueView setAccessibilityIdentifier:v12];

  currentValueViewHandler2 = [(HKInteractiveChartViewController *)self currentValueViewHandler];
  [currentValueViewHandler2 setCurrentValueViewCallbacks:self];

  view3 = [(HKInteractiveChartViewController *)self view];
  [view3 addSubview:self->_currentValueView];

  v15 = objc_alloc_init(MEMORY[0x1E69DD250]);
  primaryGraphViewWrapper = self->_primaryGraphViewWrapper;
  self->_primaryGraphViewWrapper = v15;

  [(UIView *)self->_primaryGraphViewWrapper setClipsToBounds:1];
  v17 = self->_primaryGraphViewWrapper;
  hk_chartBackgroundColor2 = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  [(UIView *)v17 setBackgroundColor:hk_chartBackgroundColor2];

  view4 = [(HKInteractiveChartViewController *)self view];
  [view4 addSubview:self->_primaryGraphViewWrapper];

  [(HKInteractiveChartViewController *)self _configureInitialLollipopSelection];
  options = self->_options;
  timeScopeRanges = [(HKInteractiveChartViewController *)self timeScopeRanges];
  v22 = [HKInteractiveChartViewController _timeScopesWithOptions:options timeScopeRanges:timeScopeRanges];

  if ([(HKInteractiveChartViewController *)self _chartHasDateAxis])
  {
    v23 = [(HKInteractiveChartViewController *)self _defaultTimeScopeWithAvailableTimeScopes:v22];
    initialXValue = [(HKInteractiveChartViewController *)self initialXValue];
    [(HKInteractiveChartViewController *)self _replacePrimaryGraphViewControllerWithTimeScope:v23 anchorDate:initialXValue animated:0];
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
  view5 = [(HKInteractiveChartViewController *)self view];
  [view5 addSubview:self->_radioButtons];

  [(HKTimeScopeControl *)self->_radioButtons setSelectedTimeScope:[(HKInteractiveChartViewController *)self _dateZoom]];
  if (![(HKInteractiveChartViewController *)self _chartHasDateAxis])
  {
    [(HKInteractiveChartViewController *)self _hideTimeDateControls];
  }

  tableSeparatorColor = [MEMORY[0x1E69DC888] tableSeparatorColor];
  v30 = objc_alloc_init(MEMORY[0x1E69DD250]);
  graphTopDividerView = self->_graphTopDividerView;
  self->_graphTopDividerView = v30;

  [(UIView *)self->_graphTopDividerView setBackgroundColor:tableSeparatorColor];
  view6 = [(HKInteractiveChartViewController *)self view];
  [view6 addSubview:self->_graphTopDividerView];

  v33 = objc_alloc_init(MEMORY[0x1E69DD250]);
  graphBottomDividerView = self->_graphBottomDividerView;
  self->_graphBottomDividerView = v33;

  [(UIView *)self->_graphBottomDividerView setBackgroundColor:tableSeparatorColor];
  view7 = [(HKInteractiveChartViewController *)self view];
  [view7 addSubview:self->_graphBottomDividerView];

  makeAnnotationDataSource = [(HKInteractiveChartViewController *)self makeAnnotationDataSource];
  [(HKInteractiveChartViewController *)self setAnnotationDataSource:makeAnnotationDataSource];

  [(HKInteractiveChartViewController *)self setLegendBottomLocation:0.0];
  v37 = [HKLollipopController alloc];
  annotationDataSource = [(HKInteractiveChartViewController *)self annotationDataSource];
  view8 = [(HKInteractiveChartViewController *)self view];
  v40 = [(HKLollipopController *)v37 initWithAnnotationDataSource:annotationDataSource parentView:view8 delegate:self];
  [(HKInteractiveChartViewController *)self setLollipopController:v40];

  v41 = (self->_options >> 12) & 1;
  lollipopController = [(HKInteractiveChartViewController *)self lollipopController];
  [lollipopController setCenterLollipopVertically:v41];

  v43 = objc_alloc_init(HKUIDateLabel);
  selectedPointDateLabel = self->_selectedPointDateLabel;
  self->_selectedPointDateLabel = v43;

  v45 = self->_selectedPointDateLabel;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(HKUIDateLabel *)v45 setTextColor:labelColor];

  v47 = self->_selectedPointDateLabel;
  v48 = [MEMORY[0x1E69DB878] systemFontOfSize:20.0];
  [(HKUIDateLabel *)v47 setFont:v48];

  [(HKUIDateLabel *)self->_selectedPointDateLabel setUseUppercase:0];
  [(HKUIDateLabel *)self->_selectedPointDateLabel setAdjustsFontSizeToFitWidth:1];
  [(HKUIDateLabel *)self->_selectedPointDateLabel setTextAlignment:2];
  [(HKUIDateLabel *)self->_selectedPointDateLabel setAlpha:0.0];
  view9 = [(HKInteractiveChartViewController *)self view];
  [view9 addSubview:self->_selectedPointDateLabel];

  v50 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  selectedSeriesLabel = self->_selectedSeriesLabel;
  self->_selectedSeriesLabel = v50;

  v52 = self->_selectedSeriesLabel;
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)v52 setTextColor:labelColor2];

  v54 = self->_selectedSeriesLabel;
  v55 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:20.0];
  [(UILabel *)v54 setFont:v55];

  [(UILabel *)self->_selectedSeriesLabel setNumberOfLines:0];
  [(UILabel *)self->_selectedSeriesLabel setTextAlignment:0];
  view10 = [(HKInteractiveChartViewController *)self view];
  [view10 addSubview:self->_selectedSeriesLabel];

  v57 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  selectedSeriesUnitLabel = self->_selectedSeriesUnitLabel;
  self->_selectedSeriesUnitLabel = v57;

  v59 = self->_selectedSeriesUnitLabel;
  labelColor3 = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)v59 setTextColor:labelColor3];

  v61 = self->_selectedSeriesUnitLabel;
  v62 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:20.0];
  [(UILabel *)v61 setFont:v62];

  [(UILabel *)self->_selectedSeriesUnitLabel setAdjustsFontSizeToFitWidth:1];
  view11 = [(HKInteractiveChartViewController *)self view];
  [view11 addSubview:self->_selectedSeriesUnitLabel];

  [(HKInteractiveChartViewController *)self _updateSelectedSeriesLabel:0];
  self->_bannerBottom = 32.0;
  [(HKInteractiveChartViewController *)self _showHideNoGraphSeriesLabels];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = HKInteractiveChartViewController;
  [(HKInteractiveChartViewController *)&v7 viewDidAppear:appear];
  hk_viewIsHidden = [(UIViewController *)self hk_viewIsHidden];
  restorationUserActivity = [(HKInteractiveChartViewController *)self restorationUserActivity];

  if (restorationUserActivity)
  {
    if (!hk_viewIsHidden)
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
  timeScopeRanges = [(HKInteractiveChartViewController *)self timeScopeRanges];
  if (timeScopeRanges && (v4 = timeScopeRanges, -[HKInteractiveChartViewController timeScopeRanges](self, "timeScopeRanges"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6 == 1))
  {
    memset(v12, 0, sizeof(v12));
    timeScopeRanges2 = [(HKInteractiveChartViewController *)self timeScopeRanges];
    if ([timeScopeRanges2 countByEnumeratingWithState:v12 objects:v13 count:16])
    {
      v8 = **(&v12[0] + 1);
      timeScopeRanges3 = [(HKInteractiveChartViewController *)self timeScopeRanges];
      v10 = [timeScopeRanges3 objectForKeyedSubscript:v8];
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

- (id)fixedRangeForTimeScope:(int64_t)scope
{
  timeScopeRanges = [(HKInteractiveChartViewController *)self timeScopeRanges];
  if (timeScopeRanges)
  {
    timeScopeRanges2 = [(HKInteractiveChartViewController *)self timeScopeRanges];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:scope];
    v8 = [timeScopeRanges2 objectForKeyedSubscript:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_valueRange:(id)range fitsInsideValueRange:(id)valueRange
{
  valueRangeCopy = valueRange;
  rangeCopy = range;
  minValue = [valueRangeCopy minValue];
  minValue2 = [rangeCopy minValue];
  v9 = [minValue compare:minValue2];

  maxValue = [rangeCopy maxValue];

  maxValue2 = [valueRangeCopy maxValue];

  v12 = [maxValue compare:maxValue2];
  return v9 != 1 && v12 != 1;
}

- (void)_setGraphViewAxisAndVisibleDateRangeForTimeScope:(int64_t)scope anchorDate:(id)date preserveScrollPosition:(BOOL)position
{
  positionCopy = position;
  dateCopy = date;
  graphView = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  v10 = [(HKInteractiveChartViewController *)self fixedRangeForTimeScope:scope];
  if (!v10)
  {
    v37 = dateCopy;
    currentCalendar = [(HKInteractiveChartViewController *)self currentCalendar];
    firstWeekday = [currentCalendar firstWeekday];

    v16 = [(HKInteractiveChartViewController *)self _defaultAxisRangeIncludeToday:1];
    v17 = [(HKInteractiveChartViewController *)self defaultAlignmentForTimeScope:scope];
    currentCalendar2 = [(HKInteractiveChartViewController *)self currentCalendar];
    v13 = [HKGraphZoomLevelConfiguration chartDataRangeForTimeScope:scope dataRange:v16 firstWeekday:firstWeekday calendar:currentCalendar2 cadence:0 alignment:v17];

    if (positionCopy)
    {
      effectiveVisibleRangeCadence = [graphView effectiveVisibleRangeCadence];
      effectiveVisibleRangeActive = [graphView effectiveVisibleRangeActive];
      minValue = [effectiveVisibleRangeCadence minValue];
      minValue2 = [v13 minValue];
      v21 = [minValue compare:minValue2];

      if (v21 == -1)
      {
        minValue3 = [effectiveVisibleRangeCadence minValue];
        maxValue = [v13 maxValue];
        v24 = [HKValueRange valueRangeWithMinValue:minValue3 maxValue:maxValue];

        v13 = v24;
      }

      maxValue2 = [effectiveVisibleRangeCadence maxValue];
      maxValue3 = [v13 maxValue];
      v27 = [maxValue2 compare:maxValue3];

      if (v27 != 1)
      {
LABEL_17:

        dateCopy = v37;
        if (!v13)
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }

      minValue4 = [v13 minValue];
      maxValue4 = [effectiveVisibleRangeCadence maxValue];
      v30 = [HKValueRange valueRangeWithMinValue:minValue4 maxValue:maxValue4];

      v13 = v30;
    }

    else
    {
      v36 = v16;
      if (self->_hasInitialDateRangeAndTimeScope && (self->_options & 0x100000) != 0)
      {
        v17 = 3;
      }

      currentCalendar3 = [(HKInteractiveChartViewController *)self currentCalendar];
      minValue4 = [HKGraphZoomLevelConfiguration chartVisibleRangeForTimeScope:scope anchorDate:v37 alignment:v17 dataRange:v13 calendar:currentCalendar3 firstWeekday:firstWeekday cadence:0 level:0];

      maxValue4 = [(HKInteractiveChartViewController *)self visibleRangeForTimeScope:scope proposedRange:minValue4];
      if ([(HKInteractiveChartViewController *)self _acceptSubclassRange:maxValue4 proposedRange:minValue4 axisRange:v13])
      {
        maxValue4 = maxValue4;
        effectiveVisibleRangeActive = maxValue4;
        effectiveVisibleRangeCadence = maxValue4;
      }

      else
      {
        minValue4 = minValue4;
        currentCalendar4 = [(HKInteractiveChartViewController *)self currentCalendar];
        effectiveVisibleRangeActive = [HKGraphZoomLevelConfiguration chartVisibleRangeForTimeScope:scope anchorDate:v37 alignment:v17 dataRange:v13 calendar:currentCalendar4 firstWeekday:firstWeekday cadence:1 level:0];

        effectiveVisibleRangeCadence = minValue4;
      }

      v16 = v36;
    }

    goto LABEL_17;
  }

  effectiveVisibleRangeActive = [(HKInteractiveChartViewController *)self _graphViewAxisAndVisibleDateRangeForTimeScope:scope fixedRange:v10];
  effectiveVisibleRangeCadence = effectiveVisibleRangeActive;
  v13 = effectiveVisibleRangeActive;
  if (!effectiveVisibleRangeActive)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (effectiveVisibleRangeCadence && effectiveVisibleRangeActive)
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

    [graphView setContentWidthFromTimeScope:v10 == 0];
    [graphView setEffectiveAxisRange:v13 effectiveVisibleRangeCadence:effectiveVisibleRangeCadence effectiveVisibleRangeActive:effectiveVisibleRangeActive];
  }

LABEL_25:
}

- (BOOL)_acceptSubclassRange:(id)range proposedRange:(id)proposedRange axisRange:(id)axisRange
{
  proposedRangeCopy = proposedRange;
  axisRangeCopy = axisRange;
  rangeCopy = range;
  startDate = [rangeCopy startDate];
  endDate = [rangeCopy endDate];

  startDate2 = [axisRangeCopy startDate];
  endDate2 = [axisRangeCopy endDate];

  if ([startDate hk_isAfterOrEqualToDate:startDate2] && objc_msgSend(endDate, "hk_isBeforeOrEqualToDate:", endDate2))
  {
    startDate3 = [proposedRangeCopy startDate];
    endDate3 = [proposedRangeCopy endDate];
    v16 = ![startDate isEqualToDate:startDate3] || (objc_msgSend(endDate, "isEqualToDate:", endDate3) & 1) == 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_graphViewAxisAndVisibleDateRangeForTimeScope:(int64_t)scope fixedRange:(id)range
{
  rangeCopy = range;
  v6 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:scope];
  [v6 canonicalSize];
  v8 = v7;
  if (scope != 4 || ((v9 = v7 - (3 * *MEMORY[0x1E696B510]), [rangeCopy endDate], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "timeIntervalSinceReferenceDate"), v12 = v11, objc_msgSend(rangeCopy, "startDate"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "timeIntervalSinceReferenceDate"), v15 = v12 - v14, v13, v10, v15 >= v9) ? (v16 = v15 > v8) : (v16 = 1), v16))
  {
    startDate = [rangeCopy startDate];
    endDate = [rangeCopy endDate];
    v19 = HKUIMidDate(startDate, endDate);
    v20 = [v19 dateByAddingTimeInterval:-(v8 * 0.5)];
    v21 = [v19 dateByAddingTimeInterval:v8 * 0.5];
    v22 = [HKValueRange valueRangeWithMinValue:v20 maxValue:v21];
  }

  else
  {
    v22 = rangeCopy;
  }

  return v22;
}

- (BOOL)_visibleRangeIsNowForTimeScope:(int64_t)scope
{
  graphView = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  effectiveVisibleRangeCadence = [graphView effectiveVisibleRangeCadence];
  if (effectiveVisibleRangeCadence)
  {
    currentCalendar = [(HKInteractiveChartViewController *)self currentCalendar];
    firstWeekday = [currentCalendar firstWeekday];

    date = [MEMORY[0x1E695DF00] date];
    effectiveAxisRange = [graphView effectiveAxisRange];
    currentCalendar2 = [(HKInteractiveChartViewController *)self currentCalendar];
    v12 = [HKGraphZoomLevelConfiguration chartVisibleRangeForTimeScope:scope anchorDate:date alignment:3 dataRange:effectiveAxisRange calendar:currentCalendar2 firstWeekday:firstWeekday cadence:0 level:0];

    effectiveVisibleRangeCadence2 = [graphView effectiveVisibleRangeCadence];
    v14 = [v12 isEqual:effectiveVisibleRangeCadence2];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (id)makeAnchorDateFromPreviousAnchorDate:(id)date previousEffectiveVisibleRange:(id)range previousTimeScope:(int64_t)scope currentTimeScope:(int64_t)timeScope
{
  dateCopy = date;
  rangeCopy = range;
  v13 = dateCopy;
  lollipopController = [(HKInteractiveChartViewController *)self lollipopController];
  v15 = [lollipopController firstLollipopDateSinceDelta:0.25];

  _dateForMostRecentData = [(HKInteractiveChartViewController *)self _dateForMostRecentData];
  _singleFixedRange = [(HKInteractiveChartViewController *)self _singleFixedRange];
  v18 = _singleFixedRange;
  if (_singleFixedRange)
  {
    startDate = [_singleFixedRange startDate];
    endDate = [v18 endDate];
    endDate2 = HKUIMidDate(startDate, endDate);

LABEL_6:
    goto LABEL_7;
  }

  if (v15)
  {
    endDate2 = v15;

    if (timeScope >= 6)
    {
      if (timeScope != 8)
      {
        goto LABEL_7;
      }

      startDate = [MEMORY[0x1E696AAA8] currentHandler];
      [startDate handleFailureInMethod:a2 object:self file:@"HKInteractiveChartViewController.m" lineNumber:1558 description:{@"Invalid zoom specified (%ld)", 8}];
    }

    else
    {
      __138__HKInteractiveChartViewController_makeAnchorDateFromPreviousAnchorDate_previousEffectiveVisibleRange_previousTimeScope_currentTimeScope___block_invoke(v22, endDate2, timeScope);
      endDate2 = startDate = endDate2;
    }

    goto LABEL_6;
  }

  endDate2 = v13;
  if (![(HKInteractiveChartViewController *)self _visibleRangeIsNowForTimeScope:scope])
  {
    endDate2 = [rangeCopy endDate];

    if (scope <= timeScope && (timeScope & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v27 = [currentCalendar startOfDayForDate:endDate2];
      v28 = [v27 isEqualToDate:endDate2];

      if (v28)
      {
        currentCalendar2 = [MEMORY[0x1E695DEE8] currentCalendar];
        v30 = [currentCalendar2 dateByAddingUnit:16 value:-1 toDate:endDate2 options:0];

        endDate2 = v30;
      }
    }

    if (timeScope == 7)
    {
      currentCalendar3 = [MEMORY[0x1E695DEE8] currentCalendar];
      startDate = [currentCalendar3 startOfDayForDate:endDate2];

      currentCalendar4 = [MEMORY[0x1E695DEE8] currentCalendar];
      v33 = [currentCalendar4 dateByAddingUnit:16 value:1 toDate:startDate options:0];

      v34 = HKUIMidDate(startDate, v33);
      if (HKUIObjectIsLargerOrEqual(_dateForMostRecentData, startDate) && HKUIObjectIsSmaller(_dateForMostRecentData, v33))
      {
        v35 = [v34 laterDate:_dateForMostRecentData];
      }

      else
      {
        v35 = v34;
      }

      v36 = v35;

      endDate2 = v36;
      goto LABEL_6;
    }
  }

LABEL_7:
  if (([endDate2 hk_isAfterDate:_dateForMostRecentData] & 1) != 0 || !endDate2)
  {
    v23 = _dateForMostRecentData;

    endDate2 = v23;
  }

  v24 = endDate2;

  return endDate2;
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
    selectedTimeScope = [(HKTimeScopeControl *)self->_radioButtons selectedTimeScope];

    [(HKInteractiveChartViewController *)self _replacePrimaryGraphViewControllerWithTimeScope:selectedTimeScope anchorDate:0 animated:0];
  }

  else
  {

    [(HKInteractiveChartViewController *)self _replacePrimaryGraphViewControllerWithScalarController];
  }
}

- (void)_replacePrimaryGraphViewControllerWithTimeScope:(int64_t)scope anchorDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  primaryGraphViewController = self->_primaryGraphViewController;
  dateCopy = date;
  dateZoom = [(HKGraphViewController *)primaryGraphViewController dateZoom];
  memset(&v65, 0, sizeof(v65));
  if (dateZoom >= scope)
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
  graphView = [(HKGraphViewController *)v12 graphView];
  effectiveVisibleRangeActive = [graphView effectiveVisibleRangeActive];

  v15 = [(HKInteractiveChartViewController *)self makeAnchorDateFromPreviousAnchorDate:dateCopy previousEffectiveVisibleRange:effectiveVisibleRangeActive previousTimeScope:dateZoom currentTimeScope:scope];

  graphView2 = [(HKGraphViewController *)v12 graphView];
  [graphView2 removeSeries];

  view = [(HKGraphViewController *)v12 view];
  [view frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  graphView3 = [(HKGraphViewController *)v12 graphView];
  [graphView3 xAxisSpace];
  v28 = v27;

  currentCalendar = [(HKInteractiveChartViewController *)self currentCalendar];
  v30 = [(HKInteractiveChartViewController *)self makePrimaryGraphViewControllerWithDateZoom:scope previousDateZoom:dateZoom previousXAxisSpace:currentCalendar currentCalendar:v28];
  v31 = self->_primaryGraphViewController;
  self->_primaryGraphViewController = v30;

  [(HKInteractiveChartViewController *)self primaryGraphViewControllerDidInitialize:self->_primaryGraphViewController];
  [(HKGraphViewController *)self->_primaryGraphViewController setGraphViewDelegateProxy:self];
  view2 = [(HKGraphViewController *)self->_primaryGraphViewController view];
  [view2 setFrame:{v19, v21, v23, v25}];

  [(HKInteractiveChartViewController *)self addChildViewController:self->_primaryGraphViewController];
  primaryGraphViewWrapper = self->_primaryGraphViewWrapper;
  view3 = [(HKGraphViewController *)self->_primaryGraphViewController view];
  [(UIView *)primaryGraphViewWrapper addSubview:view3];

  [(HKGraphViewController *)self->_primaryGraphViewController didMoveToParentViewController:self];
  view4 = [(HKGraphViewController *)self->_primaryGraphViewController view];
  [view4 setAlpha:0.0];

  view5 = [(HKGraphViewController *)self->_primaryGraphViewController view];
  v63 = v64;
  [view5 setTransform:&v63];

  view6 = [(HKGraphViewController *)self->_primaryGraphViewController view];
  view7 = [(HKInteractiveChartViewController *)self view];
  backgroundColor = [view7 backgroundColor];
  [view6 setBackgroundColor:backgroundColor];

  [(HKInteractiveChartViewController *)self _configureSelectedRangeFormatterWithChartRangeProvider];
  graphView4 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  view8 = [(HKInteractiveChartViewController *)self view];
  backgroundColor2 = [view8 backgroundColor];
  [graphView4 setTopMarginColor:backgroundColor2];

  [graphView4 setTilingDisabled:{-[HKInteractiveChartViewController _tilingDisabled](self, "_tilingDisabled")}];
  [graphView4 setPrefersOpaqueLegends:{-[HKInteractiveChartViewController _prefersOpaqueLegends](self, "_prefersOpaqueLegends")}];
  [graphView4 setDrawsGridlinesPerSeriesGroup:{-[HKInteractiveChartViewController _drawsGridlinesPerSeriesGroup](self, "_drawsGridlinesPerSeriesGroup")}];
  [(HKInteractiveChartViewController *)self _setGraphViewAxisAndVisibleDateRangeForTimeScope:scope anchorDate:v15 preserveScrollPosition:0];
  view9 = [(HKInteractiveChartViewController *)self view];
  [view9 setNeedsLayout];

  view10 = [(HKInteractiveChartViewController *)self view];
  [view10 layoutSubviews];

  aBlock = MEMORY[0x1E69E9820];
  v58 = 3221225472;
  v59 = __104__HKInteractiveChartViewController__replacePrimaryGraphViewControllerWithTimeScope_anchorDate_animated___block_invoke;
  v60 = &unk_1E81B9980;
  v45 = v12;
  v61 = v45;
  selfCopy = self;
  v46 = _Block_copy(&aBlock);
  v50 = MEMORY[0x1E69E9820];
  v51 = 3221225472;
  v52 = __104__HKInteractiveChartViewController__replacePrimaryGraphViewControllerWithTimeScope_anchorDate_animated___block_invoke_2;
  v53 = &unk_1E81B99A8;
  selfCopy2 = self;
  v55 = v45;
  v56 = v65;
  v47 = v45;
  v48 = _Block_copy(&v50);
  v49 = v48;
  if (animatedCopy)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v48 animations:v46 completion:{0.25, v50, v51, v52, v53, selfCopy2, v55, *&v56.a, *&v56.c, *&v56.tx, aBlock, v58, v59, v60}];
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
  view = [(HKGraphViewController *)self->_primaryGraphViewController view];
  [(UIView *)primaryGraphViewWrapper addSubview:view];

  [(HKInteractiveChartViewController *)self addChildViewController:self->_primaryGraphViewController];
  [(HKGraphViewController *)self->_primaryGraphViewController didMoveToParentViewController:self];

  [(HKInteractiveChartViewController *)self _configureSelectedRangeFormatterWithChartRangeProvider];
}

- (void)_configureSelectedRangeFormatterWithChartRangeProvider
{
  selectedRangeFormatter = [(HKInteractiveChartViewController *)self selectedRangeFormatter];
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];
  [selectedRangeFormatter configureWithChartRangeProvider:graphView];
}

- (void)_handleVisibleRangeChange
{
  [(HKInteractiveChartViewController *)self _setDateSelectorToVisibleRange];

  [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
}

- (void)_configureInitialLollipopSelection
{
  _primaryDisplayType = [(HKInteractiveChartViewController *)self _primaryDisplayType];
  chartingRules = [_primaryDisplayType chartingRules];
  options = self->_options;
  if ([chartingRules shouldShowInitialLollipop] && (options & 0x2000) == 0)
  {
    _dateForMostRecentData = [(HKInteractiveChartViewController *)self _dateForMostRecentData];
    [(HKInteractiveChartViewController *)self initialXValue];

    if (_dateForMostRecentData)
    {
      [(HKInteractiveChartViewController *)self setDisableCurrentValueViewForInitialLollipop:1];
    }
  }
}

- (void)_handleInitialLollipopSelection
{
  graphView = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  v4 = graphView;
  if (graphView)
  {
    v10 = graphView;
    graphView = [(HKInteractiveChartViewController *)self disableCurrentValueViewForInitialLollipop];
    v4 = v10;
    if (graphView)
    {
      _dateForMostRecentData = [(HKInteractiveChartViewController *)self _dateForMostRecentData];
      initialXValue = [(HKInteractiveChartViewController *)self initialXValue];
      v7 = initialXValue;
      if (initialXValue)
      {
        v8 = initialXValue;
      }

      else
      {
        v8 = _dateForMostRecentData;
      }

      v9 = v8;

      if ([(HKInteractiveChartViewController *)self _shouldHandleInitialLollipopTouchDate:v9 mostRecentDataDate:_dateForMostRecentData forGraphView:v10])
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

  MEMORY[0x1EEE66BB8](graphView, v4);
}

- (BOOL)_shouldHandleInitialLollipopTouchDate:(id)date mostRecentDataDate:(id)dataDate forGraphView:(id)view
{
  dateCopy = date;
  dataDateCopy = dataDate;
  viewCopy = view;
  v10 = viewCopy;
  if (dateCopy)
  {
    xAxisDateZoom = [viewCopy xAxisDateZoom];
    if (xAxisDateZoom == 8)
    {
      v12 = 1;
    }

    else
    {
      v13 = xAxisDateZoom;
      v14 = [HKGraphZoomLevelConfiguration configurationForZoomLevel:xAxisDateZoom];
      resolutionFromTraitCollectionAttributes = [v10 resolutionFromTraitCollectionAttributes];
      primarySeries = [v10 primarySeries];
      v17 = [primarySeries resolutionForTimeScope:v13 traitResolution:resolutionFromTraitCollectionAttributes];

      [v14 approximateSeriesPointIntervalAtResolution:v17];
      v18 = [dataDateCopy dateByAddingTimeInterval:?];
      v12 = [dateCopy hk_isBeforeOrEqualToDate:v18];
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
  view = [(HKInteractiveChartViewController *)self view];
  [view insertSubview:self->_primaryGraphViewSnapshot aboveSubview:self->_primaryGraphViewWrapper];
}

- (void)removeGraphViewSnapshotAnimated:(BOOL)animated
{
  primaryGraphViewSnapshot = self->_primaryGraphViewSnapshot;
  if (primaryGraphViewSnapshot)
  {
    if (animated)
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

- (void)_unitPreferencesDidUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__HKInteractiveChartViewController__unitPreferencesDidUpdate___block_invoke;
  v6[3] = &unk_1E81B5AD0;
  v7 = updateCopy;
  selfCopy = self;
  v5 = updateCopy;
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

- (void)_updateAxisScalingRulesForUnitPreferenceChangesOfTypes:(id)types
{
  v56 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = self->_allGraphSeriesConfigurationManagers;
  v31 = [(NSArray *)obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v31)
  {
    v30 = *v50;
    selfCopy = self;
    v34 = typesCopy;
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
        allDisplayTypes = [v6 allDisplayTypes];
        v8 = [allDisplayTypes countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v46;
          v35 = *v46;
          v36 = allDisplayTypes;
          do
          {
            v11 = 0;
            v37 = v9;
            do
            {
              if (*v46 != v10)
              {
                objc_enumerationMutation(allDisplayTypes);
              }

              v12 = *(*(&v45 + 1) + 8 * v11);
              objectType = [v12 objectType];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [typesCopy containsObject:objectType])
              {
                v14 = typesCopy;
                v39 = objectType;
                unitPreferenceController = [(HKInteractiveChartViewController *)self unitPreferenceController];
                v16 = [unitPreferenceController unitForChartingDisplayType:v12];

                v40 = v16;
                if (v16)
                {
                  v38 = v11;
                  v43 = 0u;
                  v44 = 0u;
                  v41 = 0u;
                  v42 = 0u;
                  options = self->_options;
                  timeScopeRanges = [(HKInteractiveChartViewController *)self timeScopeRanges];
                  v19 = [HKInteractiveChartViewController _timeScopesWithOptions:options timeScopeRanges:timeScopeRanges];

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
                        graphSeries = [v24 graphSeries];
                        yAxis = [graphSeries yAxis];
                        [yAxis invalidateAxisLabelCache];

                        graphSeries2 = [v24 graphSeries];
                        axisScalingRule = [graphSeries2 axisScalingRule];

                        if ([axisScalingRule conformsToProtocol:&unk_1F4433D88] && (objc_opt_respondsToSelector() & 1) != 0)
                        {
                          [axisScalingRule setUnit:v40];
                        }
                      }

                      v21 = [v19 countByEnumeratingWithState:&v41 objects:v53 count:16];
                    }

                    while (v21);
                  }

                  self = selfCopy;
                  v14 = v34;
                  v10 = v35;
                  allDisplayTypes = v36;
                  v9 = v37;
                  v11 = v38;
                }

                objectType = v39;
                typesCopy = v14;
              }

              ++v11;
            }

            while (v11 != v9);
            v9 = [allDisplayTypes countByEnumeratingWithState:&v45 objects:v54 count:16];
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

- (id)makePrimaryGraphViewControllerWithDateZoom:(int64_t)zoom previousDateZoom:(int64_t)dateZoom previousXAxisSpace:(double)space currentCalendar:(id)calendar
{
  calendarCopy = calendar;
  v10 = [[HKDateGraphViewController alloc] initWithDateZoom:zoom previousDateZoom:dateZoom previousXAxisSpace:calendarCopy currentCalendar:space];

  return v10;
}

- (id)_displayNameForDisplayType:(id)type
{
  typeCopy = type;
  v5 = typeCopy;
  if (self->_options)
  {
LABEL_7:
    displayName = &stru_1F42FFBE0;
    goto LABEL_8;
  }

  localization = [typeCopy localization];
  displayName = [localization displayName];

  if (!displayName)
  {
    localization2 = [v5 localization];
    displayName = [localization2 displayNameKey];

    if (!displayName)
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

  return displayName;
}

- (id)_displayUnitForDisplayType:(id)type
{
  typeCopy = type;
  unitPreferenceController = [(HKInteractiveChartViewController *)self unitPreferenceController];
  v6 = [typeCopy unitNameForValue:0 unitPreferenceController:unitPreferenceController];

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

        allDisplayTypes = [*(*(&v11 + 1) + 8 * i) allDisplayTypes];
        [v3 addObjectsFromArray:allDisplayTypes];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_updateSelectedSeriesLabel:(id)label
{
  v29 = *MEMORY[0x1E69E9840];
  labelCopy = label;
  if (labelCopy)
  {
    anyObject = [(HKInteractiveChartViewController *)self _displayNameForDisplayType:labelCopy];
    anyObject3 = [(HKInteractiveChartViewController *)self _colorForDisplayType:labelCopy];
    anyObject2 = [(HKInteractiveChartViewController *)self _displayUnitForDisplayType:labelCopy];
  }

  else
  {
    _allDisplayTypes = [(HKInteractiveChartViewController *)self _allDisplayTypes];
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = _allDisplayTypes;
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
      anyObject = [v9 anyObject];
      anyObject2 = [v10 anyObject];
      anyObject3 = [v11 anyObject];
    }

    else
    {
      anyObject2 = 0;
      anyObject3 = 0;
      anyObject = 0;
    }

    labelCopy = 0;
  }

  selectedSeriesLabel = self->_selectedSeriesLabel;
  if (selectedSeriesLabel)
  {
    if (anyObject)
    {
      [(UILabel *)selectedSeriesLabel setText:anyObject];
      view = [(HKInteractiveChartViewController *)self view];
      [view setNeedsLayout];
    }

    if (anyObject3)
    {
      [(UILabel *)self->_selectedSeriesLabel setTextColor:anyObject3];
    }
  }

  selectedSeriesUnitLabel = self->_selectedSeriesUnitLabel;
  if (selectedSeriesUnitLabel)
  {
    if (anyObject2)
    {
      [(UILabel *)selectedSeriesUnitLabel setText:anyObject2];
    }

    if (anyObject3)
    {
      [(UILabel *)self->_selectedSeriesUnitLabel setTextColor:anyObject3];
    }
  }
}

- (void)_addDisplayTypeToConfiguration:(id)configuration allDisplayTypes:(id)types configurationManager:(id)manager
{
  configurationCopy = configuration;
  typesCopy = types;
  managerCopy = manager;
  v10 = [(HKInteractiveChartViewController *)self _customGraphSeriesForDisplayType:configurationCopy];
  if (v10)
  {
    for (i = 0; i != 8; ++i)
    {
      [(HKInteractiveChartViewController *)self _configureCustomDisplayType:configurationCopy graphSeries:v10 configurationManager:managerCopy timeScope:i];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = configurationCopy;
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
        [(HKInteractiveChartViewController *)self _configureCustomDisplayType:v12 graphSeries:v15 configurationManager:managerCopy timeScope:j];
      }
    }

    else
    {
      options = self->_options;
      v18 = [(HKInteractiveChartViewController *)self _numHorizontalDisplayTypesForTimeScope:6 displayTypes:typesCopy];
      v19 = [(HKInteractiveChartViewController *)self _numHorizontalDisplayTypesForTimeScope:5 displayTypes:typesCopy];
      v32 = [(HKInteractiveChartViewController *)self _numHorizontalDisplayTypesForTimeScope:4 displayTypes:typesCopy];
      v33 = [(HKInteractiveChartViewController *)self _numHorizontalDisplayTypesForTimeScope:3 displayTypes:typesCopy];
      v12 = objc_opt_new();
      v20 = objc_opt_new();
      v21 = v20;
      v36 = options;
      if ((options & 0x80) != 0)
      {
        [v20 setTimeScope:7];
        [v21 setNumberOfHorizontalDisplayTypes:{-[HKInteractiveChartViewController _numHorizontalDisplayTypesForTimeScope:displayTypes:](self, "_numHorizontalDisplayTypesForTimeScope:displayTypes:", 7, typesCopy)}];
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
        [v27 setNumberOfHorizontalDisplayTypes:{-[HKInteractiveChartViewController _numHorizontalDisplayTypesForTimeScope:displayTypes:](self, "_numHorizontalDisplayTypesForTimeScope:displayTypes:", 2, typesCopy)}];
        [v27 setHorizontalIndex:0];
        [v12 addObject:v27];
      }

      v28 = objc_opt_new();
      v29 = v28;
      if ((v36 & 0x100) != 0)
      {
        [v28 setTimeScope:1];
        [v29 setNumberOfHorizontalDisplayTypes:{-[HKInteractiveChartViewController _numHorizontalDisplayTypesForTimeScope:displayTypes:](self, "_numHorizontalDisplayTypesForTimeScope:displayTypes:", 1, typesCopy)}];
        [v29 setHorizontalIndex:0];
        [v12 addObject:v29];
      }

      v30 = objc_opt_new();
      v31 = v30;
      if ((v36 & 0x200000) != 0)
      {
        [v30 setTimeScope:0];
        [v31 setNumberOfHorizontalDisplayTypes:{-[HKInteractiveChartViewController _numHorizontalDisplayTypesForTimeScope:displayTypes:](self, "_numHorizontalDisplayTypesForTimeScope:displayTypes:", 0, typesCopy)}];
        [v31 setHorizontalIndex:0];
        [v12 addObject:v31];
      }

      [(HKInteractiveChartViewController *)self _addSeriesForDisplayType:configurationCopy updatingTimeScopeProperties:v12 configurationManager:managerCopy];
    }
  }
}

- (void)_updateAfterConfigurationChangeIncludeDateAxis:(BOOL)axis
{
  if (axis && [(HKInteractiveChartViewController *)self _chartHasDateAxis])
  {
    [(HKInteractiveChartViewController *)self _updateGraphViewAxisDateRange];
  }

  graphView = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  [graphView setNeedsReloadSeries];

  [(HKInteractiveChartViewController *)self _showHideNoGraphSeriesLabels];

  [(HKInteractiveChartViewController *)self _updateSelectedSeriesLabel:0];
}

- (void)_setVisibleDisplayTypes:(id)types
{
  v30 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = typesCopy;
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

- (int64_t)addNewDisplayTypeStackWithDisplayTypes:(id)types
{
  v22 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v5 = typesCopy;
  if (typesCopy && [typesCopy count])
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

- (void)removeStackedDisplayType:(id)type
{
  v17 = *MEMORY[0x1E69E9840];
  typeCopy = type;
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

        if ([*(*(&v12 + 1) + 8 * v10) configurationContainsDisplayType:{typeCopy, v12}])
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

- (BOOL)removeDisplayTypeStackAtIndex:(int64_t)index
{
  v5 = [MEMORY[0x1E695DF70] arrayWithArray:self->_allGraphSeriesConfigurationManagers];
  v6 = [v5 count];
  v7 = v6;
  if (index <= 1)
  {
    indexCopy = 1;
  }

  else
  {
    indexCopy = index;
  }

  if (v6 > indexCopy)
  {
    [v5 removeObjectAtIndex:index];
    v9 = [v5 copy];
    allGraphSeriesConfigurationManagers = self->_allGraphSeriesConfigurationManagers;
    self->_allGraphSeriesConfigurationManagers = v9;

    [(HKInteractiveChartViewController *)self _updateAfterConfigurationChangeIncludeDateAxis:0];
    [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
    [(HKInteractiveChartViewController *)self _scheduleDelayedAutoscale];
  }

  return v7 > indexCopy;
}

- (id)_customGraphSeriesForDisplayType:(id)type
{
  typeCopy = type;
  if (objc_opt_respondsToSelector())
  {
    v4 = [typeCopy performSelector:sel_graphSeries];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_configureCustomDisplayType:(id)type graphSeries:(id)series configurationManager:(id)manager timeScope:(int64_t)scope
{
  managerCopy = manager;
  seriesCopy = series;
  typeCopy = type;
  v13 = objc_alloc_init(HKGraphSeriesConfiguration);
  [(HKGraphSeriesConfiguration *)v13 setGraphSeries:seriesCopy];

  [(HKGraphSeriesConfiguration *)v13 setDisplayType:typeCopy];
  if (scope <= 3)
  {
    if (scope > 1)
    {
      if (scope == 2)
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

    if (!scope)
    {
      if ((self->_options & 0x200000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    if (scope == 1 && (self->_options & 0x100) != 0)
    {
LABEL_27:
      [managerCopy addConfiguration:v13 zoom:scope];
    }
  }

  else if (scope <= 5)
  {
    if (scope == 4 || (self->_options & 0x8000) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (scope != 8)
    {
      if (scope == 7)
      {
        if ((self->_options & 0x80) == 0)
        {
          goto LABEL_28;
        }
      }

      else if (scope != 6 || (self->_options & 0x400) != 0)
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

- (int64_t)_numHorizontalDisplayTypesForTimeScope:(int64_t)scope displayTypes:(id)types
{
  v19 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [typesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(typesCopy);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([(HKInteractiveChartViewController *)self _displayTypeIsHorizontalForTimeScope:scope displayType:v12])
        {
          v9 += [v12 hk_stackedChartSectionsCountForTimeScope:scope];
        }
      }

      v8 = [typesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_displayTypeIsHorizontalForTimeScope:(int64_t)scope displayType:(id)type
{
  chartingRules = [type chartingRules];
  v6 = [chartingRules chartStyleForTimeScope:scope];

  return (v6 - 5) < 4;
}

- (void)_addSeriesForDisplayType:(id)type updatingTimeScopeProperties:(id)properties configurationManager:(id)manager
{
  typeCopy = type;
  managerCopy = manager;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __110__HKInteractiveChartViewController__addSeriesForDisplayType_updatingTimeScopeProperties_configurationManager___block_invoke;
  v12[3] = &unk_1E81B99D0;
  v12[4] = self;
  v13 = typeCopy;
  v14 = managerCopy;
  v10 = managerCopy;
  v11 = typeCopy;
  [properties enumerateObjectsUsingBlock:v12];
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

- (int64_t)_countOfHorizontalSectionsForConfigurationManager:(id)manager timeScope:(int64_t)scope
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [manager allDisplayTypesForZoom:scope];
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
        if ([(HKInteractiveChartViewController *)self _displayTypeIsHorizontalForTimeScope:scope displayType:v12])
        {
          v9 += [v12 hk_stackedChartSectionsCountForTimeScope:scope];
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

- (id)_createGraphSeriesConfigurationFromDisplayType:(id)type timeScope:(int64_t)scope
{
  typeCopy = type;
  v7 = +[HKDisplayCategory categoryWithID:](HKDisplayCategory, "categoryWithID:", [typeCopy categoryIdentifier]);
  unitPreferenceController = [(HKInteractiveChartViewController *)self unitPreferenceController];
  chartDataCacheController = [(HKInteractiveChartViewController *)self chartDataCacheController];
  v10 = [typeCopy hk_standardSeriesForTimeScope:scope displayCategory:v7 unitController:unitPreferenceController dataCacheController:chartDataCacheController];

  if (v10)
  {
    v11 = objc_opt_new();
    [v11 setDisplayType:typeCopy];
    color = [v7 color];
    [v11 setTintColor:color];

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
  primaryDisplayTypeStackIndex = [(HKInteractiveChartViewController *)self primaryDisplayTypeStackIndex];
  if (primaryDisplayTypeStackIndex >= [(NSArray *)self->_allGraphSeriesConfigurationManagers count])
  {
    [(HKInteractiveChartViewController *)self _primaryDisplayType];
  }

  v5 = [(NSArray *)self->_allGraphSeriesConfigurationManagers objectAtIndexedSubscript:[(HKInteractiveChartViewController *)self primaryDisplayTypeStackIndex]];
  allDisplayTypes = [v5 allDisplayTypes];
  firstObject = [allDisplayTypes firstObject];

  return firstObject;
}

- (id)_colorForDisplayType:(id)type
{
  v3 = +[HKDisplayCategory categoryWithID:](HKDisplayCategory, "categoryWithID:", [type categoryIdentifier]);
  color = [v3 color];

  return color;
}

- (id)makeStandardCurrentValueViewDataSource
{
  v3 = [HKCurrentValueViewDataSource alloc];
  dateCache = [(HKInteractiveChartViewController *)self dateCache];
  healthStore = [(HKInteractiveChartViewController *)self healthStore];
  selectedRangeFormatter = [(HKInteractiveChartViewController *)self selectedRangeFormatter];
  v7 = [(HKCurrentValueViewDataSource *)v3 initWithDateCache:dateCache healthStore:healthStore selectedRangeFormatter:selectedRangeFormatter];

  currentValueViewDataSourceDelegate = [(HKInteractiveChartViewController *)self currentValueViewDataSourceDelegate];

  if (currentValueViewDataSourceDelegate)
  {
    currentValueViewDataSourceDelegate2 = [(HKInteractiveChartViewController *)self currentValueViewDataSourceDelegate];
    [(HKCurrentValueViewDataSource *)v7 setDelegate:currentValueViewDataSourceDelegate2];
  }

  else
  {
    [(HKCurrentValueViewDataSource *)v7 setDelegate:self];
  }

  return v7;
}

- (void)setCurrentValueViewDataSourceDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_currentValueViewDataSourceDelegate, delegateCopy);
  currentValueViewDataSource = [(HKInteractiveChartViewController *)self currentValueViewDataSource];

  if (currentValueViewDataSource)
  {
    currentValueViewDataSource2 = [(HKInteractiveChartViewController *)self currentValueViewDataSource];
    [currentValueViewDataSource2 setDelegate:delegateCopy];
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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(UILabel *)self->_dashboardEmptyHeader setTextColor:secondaryLabelColor];
    [(UILabel *)self->_dashboardEmptyDescription setTextColor:secondaryLabelColor];
    [(UILabel *)self->_dashboardEmptyHeader setBackgroundColor:secondarySystemBackgroundColor];
    [(UILabel *)self->_dashboardEmptyDescription setBackgroundColor:secondarySystemBackgroundColor];
    v8 = self->_dashboardEmptyHeader;
    v9 = [MEMORY[0x1E69DB878] systemFontOfSize:27.0];
    [(UILabel *)v8 setFont:v9];

    v10 = self->_dashboardEmptyDescription;
    v11 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0];
    [(UILabel *)v10 setFont:v11];

    view = [(HKInteractiveChartViewController *)self view];
    [view addSubview:self->_dashboardEmptyHeader];

    view2 = [(HKInteractiveChartViewController *)self view];
    [view2 addSubview:self->_dashboardEmptyDescription];

    v14 = self->_dashboardEmptyHeader;
    v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v16 = [v15 localizedStringForKey:@"NO_SERIES_HEADER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(UILabel *)v14 setText:v16];

    v17 = self->_dashboardEmptyDescription;
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"NO_SERIES_DESCRIPTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(UILabel *)v17 setText:v19];

    view3 = [(HKInteractiveChartViewController *)self view];
    [view3 setNeedsLayout];
  }
}

- (void)_showHideNoGraphSeriesLabels
{
  _allDisplayTypes = [(HKInteractiveChartViewController *)self _allDisplayTypes];
  v4 = [_allDisplayTypes count];

  if (!v4)
  {
    [(HKInteractiveChartViewController *)self _createDashboardEmptyLabelsIfNecessary];
  }

  v5 = v4 == 0;
  v6 = v4 != 0;
  v7 = v5;
  view = [(HKGraphViewController *)self->_primaryGraphViewController view];
  [view setHidden:v7];

  [(UIView *)self->_graphBottomDividerView setHidden:v6];
  [(UIView *)self->_graphTopDividerView setHidden:v6];
  [(UILabel *)self->_dashboardEmptyHeader setHidden:v6];
  [(UILabel *)self->_dashboardEmptyDescription setHidden:v6];
  radioButtons = self->_radioButtons;

  [(HKTimeScopeControl *)radioButtons setUserInteractionEnabled:v6];
}

- (void)_radioButtonsDidUpdate:(id)update
{
  selectedTimeScope = [update selectedTimeScope];
  selectedTimeScopeController = [(HKInteractiveChartViewController *)self selectedTimeScopeController];
  [selectedTimeScopeController setSelectedTimeScope:selectedTimeScope];

  if ([(HKGraphViewController *)self->_primaryGraphViewController dateZoom]!= selectedTimeScope)
  {
    [(HKInteractiveChartViewController *)self setHasInitialDateRangeAndTimeScope:0];
    [(HKInteractiveChartViewController *)self _replacePrimaryGraphViewControllerWithTimeScope:selectedTimeScope anchorDate:0 animated:1];
    v6 = [_TtC8HealthUI43HKInteractiveChartInteractionAnalyticsEvent alloc];
    _primaryDisplayType = [(HKInteractiveChartViewController *)self _primaryDisplayType];
    v8 = [(HKInteractiveChartInteractionAnalyticsEvent *)v6 initFor:_primaryDisplayType timeScopeSelected:selectedTimeScope];

    [(HKInteractiveChartInteractionAnalyticsManager *)self->_analyticsManager submitWithEvent:v8];
  }
}

- (void)updateAnnotationDataSource:(id)source pointContexts:(id)contexts
{
  firstObject = [contexts firstObject];
  selectedSeries = [firstObject selectedSeries];
  v6 = [(HKInteractiveChartViewController *)self _displayTypeForSeries:selectedSeries];
  _dateZoom = [(HKInteractiveChartViewController *)self _dateZoom];
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];

  -[HKInteractiveChartViewController updateSelectionAnnotationDataSourceForContext:displayType:timeScope:resolution:](self, "updateSelectionAnnotationDataSourceForContext:displayType:timeScope:resolution:", firstObject, v6, _dateZoom, [selectedSeries resolutionForTimeScope:_dateZoom traitResolution:{objc_msgSend(graphView, "resolutionFromTraitCollectionAttributes")}]);
}

- (id)lollipopAnnotationColor
{
  _allDisplayTypes = [(HKInteractiveChartViewController *)self _allDisplayTypes];
  if ([_allDisplayTypes count])
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
  _allDisplayTypes = [(HKInteractiveChartViewController *)self _allDisplayTypes];
  if ([_allDisplayTypes count])
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
  currentValueViewDataSourceDelegate = [(HKInteractiveChartViewController *)self currentValueViewDataSourceDelegate];
  v4 = currentValueViewDataSourceDelegate;
  if (currentValueViewDataSourceDelegate)
  {
    selfCopy = currentValueViewDataSourceDelegate;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  v7 = [HKInteractiveChartAnnotationViewDataSource alloc];
  selectedRangeFormatter = [(HKInteractiveChartViewController *)self selectedRangeFormatter];
  v9 = [(HKInteractiveChartAnnotationViewDataSource *)v7 initWithSelectedRangeFormatter:selectedRangeFormatter firstWeekday:[(HKInteractiveChartViewController *)self annotationDataSourceFirstWeekday] currentValueViewDataSourceDelegate:v6];

  return v9;
}

- (void)_setSelectedGraphSeries:(id)series animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(HKInteractiveChartViewController *)self _configurationForSeries:series];
  v7 = v6;
  v8 = v6 != 0;
  if (v6)
  {
    self->_displayState = 1;
    displayType = [v6 displayType];
    [(HKInteractiveChartViewController *)self _updateSelectedSeriesLabel:displayType];
  }

  else
  {
    self->_displayState = 0;
  }

  view = [(HKInteractiveChartViewController *)self view];
  [view setNeedsLayout];

  view2 = [(HKInteractiveChartViewController *)self view];
  [view2 layoutIfNeeded];

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
    if (animatedCopy)
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

- (id)_configurationForSeries:(id)series
{
  v19 = *MEMORY[0x1E69E9840];
  seriesCopy = series;
  _dateZoom = [(HKInteractiveChartViewController *)self _dateZoom];
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

        v11 = [*(*(&v14 + 1) + 8 * i) configurationForGraphSeries:seriesCopy zoom:{_dateZoom, v14}];
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

- (id)_configurationForDisplayType:(id)type
{
  v19 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  _dateZoom = [(HKInteractiveChartViewController *)self _dateZoom];
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

        v11 = [*(*(&v14 + 1) + 8 * i) configurationForDisplayType:typeCopy zoom:{_dateZoom, v14}];
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

- (id)_pointSelectionInfo:(id)info
{
  v15 = *MEMORY[0x1E69E9840];
  [info userInfo];
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

- (id)_displayTypeForSeries:(id)series
{
  v3 = [(HKInteractiveChartViewController *)self _configurationForSeries:series];
  displayType = [v3 displayType];

  return displayType;
}

- (void)updateSelectionAnnotationDataSourceForContext:(id)context displayType:(id)type timeScope:(int64_t)scope resolution:(int64_t)resolution
{
  contextCopy = context;
  typeCopy = type;
  annotationDataSource = [(HKInteractiveChartViewController *)self annotationDataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    annotationDataSource2 = [(HKInteractiveChartViewController *)self annotationDataSource];
    _dateZoom = [(HKInteractiveChartViewController *)self _dateZoom];
    healthStore = [(HKInteractiveChartViewController *)self healthStore];
    [annotationDataSource2 updateWithSelectionContext:contextCopy displayType:typeCopy timeScope:_dateZoom resolution:resolution healthStore:healthStore viewController:self];
  }
}

- (int64_t)_userInfoSelectionCount:(id)count
{
  v16 = *MEMORY[0x1E69E9840];
  countCopy = count;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [countCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(countCopy);
        }

        userInfo = [*(*(&v11 + 1) + 8 * i) userInfo];
        v6 += [userInfo count];
      }

      v5 = [countCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)graphView:(id)view didUpdateSelectedPoint:(id)point
{
  pointCopy = point;
  if ([HKLollipopController pointSelectionContextsHaveUserInfo:?])
  {
    lollipopController = [(HKInteractiveChartViewController *)self lollipopController];
    isVisible = [lollipopController isVisible];

    if (isVisible)
    {
      lollipopController2 = [(HKInteractiveChartViewController *)self lollipopController];
      [lollipopController2 updateWithPointContexts:pointCopy];
    }

    else
    {
      _currentValueEnabled = [(HKInteractiveChartViewController *)self _currentValueEnabled];
      v9 = &OBJC_IVAR___HKInteractiveChartViewController__currentTimeView;
      if (_currentValueEnabled)
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
      lollipopController2 = [(HKInteractiveChartViewController *)self lollipopController];
      [lollipopController2 setVisibleWithRect:pointCopy pointContexts:1 animated:{x, y, width, height}];
    }
  }
}

- (void)graphViewDidEndSelection:(id)selection
{
  lollipopController = [(HKInteractiveChartViewController *)self lollipopController];
  [lollipopController setInvisibleAnimated:1];
}

- (void)graphView:(id)view didUpdateFromDateZoom:(int64_t)zoom toDateZoom:(int64_t)dateZoom newVisibleRange:(id)range
{
  v25 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  dateZoom = [(HKGraphViewController *)self->_primaryGraphViewController dateZoom];
  if (dateZoom == dateZoom)
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

          observer = [*(*(&v19 + 1) + 8 * v15) observer];
          if (observer && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [observer didUpdateFromDateZoom:zoom toDateZoom:dateZoom newVisibleRange:rangeCopy];
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
    v17 = dateZoom;
    [(HKInteractiveChartViewController *)self selectTimeScope:dateZoom];
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

- (id)graphView:(id)view graphSeriesForZoom:(int64_t)zoom stackOffset:(int64_t)offset
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = [(NSArray *)self->_allGraphSeriesConfigurationManagers objectAtIndexedSubscript:offset];
  v17 = [v8 allGraphSeriesForZoom:zoom];
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

        observer = [*(*(&v18 + 1) + 8 * i) observer];
        if (observer && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v15 = [v8 allDisplayTypesForZoom:zoom];
          [observer configureDisplayTypes:v15 timeScope:zoom stackOffset:offset];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v17;
}

- (void)_notifyObserversDidUpdateVisibleValueRange:(id)range changeContext:(int64_t)context
{
  v18 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
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

        observer = [*(*(&v13 + 1) + 8 * v11) observer];
        if (observer && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [observer didUpdateVisibleValueRange:rangeCopy changeContext:context];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (BOOL)_shouldHandleVisibleRangeChangeWithChangeContext:(int64_t)context
{
  if (context != 1)
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

- (void)graphView:(id)view didUpdateVisibleValueRange:(id)range changeContext:(int64_t)context
{
  viewCopy = view;
  rangeCopy = range;
  if (context)
  {
    [(HKInteractiveChartViewController *)self _notifyObserversDidUpdateVisibleValueRange:rangeCopy changeContext:context];
    if ([(HKInteractiveChartViewController *)self _shouldHandleVisibleRangeChangeWithChangeContext:context])
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

- (void)graphView:(id)view didFinishUserScrollingToValueRange:(id)range
{
  rangeCopy = range;
  [(HKInteractiveChartViewController *)self setHasInitialDateRangeAndTimeScope:0];
  [(HKInteractiveChartViewController *)self _notifyObserversDidUpdateVisibleValueRange:rangeCopy changeContext:2];

  [(HKInteractiveChartViewController *)self _handleVisibleRangeChange];

  [(HKInteractiveChartViewController *)self _scheduleDelayedAutoscale];
}

- (void)graphView:(id)view didUpdateSeries:(id)series newDataArrived:(BOOL)arrived changeContext:(int64_t)context
{
  arrivedCopy = arrived;
  v29 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  seriesCopy = series;
  v23 = viewCopy;
  if (arrivedCopy && [(HKInteractiveChartViewController *)self _shouldHandleVisibleRangeChangeWithChangeContext:context, seriesCopy, viewCopy])
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
    effectiveVisibleRangeActive = [viewCopy effectiveVisibleRangeActive];
    v15 = 1;
  }

  else
  {
    v15 = 0;
    effectiveVisibleRangeActive = 0;
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

        observer = [*(*(&v24 + 1) + 8 * i) observer];
        if (observer && (objc_opt_respondsToSelector() & 1) != 0)
        {
          [observer didUpdateSeriesWithNewValueRange:effectiveVisibleRangeActive];
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

- (void)graphView:(id)view didUpdateLegendViewsWithTopLegendFrame:(CGRect)frame
{
  MinY = CGRectGetMinY(frame);

  [(HKInteractiveChartViewController *)self setLegendBottomLocation:MinY];
}

- (void)graphViewDidTapYAxis:(id)axis
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

- (void)scrollToDate:(id)date withVisibleAlignment:(int64_t)alignment
{
  dateCopy = date;
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];
  [(HKInteractiveChartViewController *)self _scrollToAnchorDate:dateCopy graphView:graphView alignment:alignment];
}

- (void)scrollToRange:(id)range withVisibleAlignment:(int64_t)alignment
{
  rangeCopy = range;
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];

  effectiveAxisRange = [graphView effectiveAxisRange];
  minValue = [rangeCopy minValue];
  v10 = [effectiveAxisRange containsValue:minValue exclusiveStart:0 exclusiveEnd:0];

  maxValue = [rangeCopy maxValue];
  v12 = [effectiveAxisRange containsValue:maxValue exclusiveStart:0 exclusiveEnd:0];

  if (v10)
  {
    if (v12)
    {
      goto LABEL_9;
    }

    minValue2 = [effectiveAxisRange minValue];
  }

  else
  {
    minValue2 = [rangeCopy minValue];
    if (v12)
    {
      v14 = effectiveAxisRange;
      goto LABEL_7;
    }
  }

  v14 = rangeCopy;
LABEL_7:
  maxValue2 = [v14 maxValue];
  v16 = [HKValueRange valueRangeWithMinValue:minValue2 maxValue:maxValue2];

  if (v16)
  {
    effectiveVisibleRangeCadence = [graphView effectiveVisibleRangeCadence];
    effectiveVisibleRangeActive = [graphView effectiveVisibleRangeActive];
    [graphView setEffectiveAxisRange:v16 effectiveVisibleRangeCadence:effectiveVisibleRangeCadence effectiveVisibleRangeActive:effectiveVisibleRangeActive];
  }

LABEL_9:
  if (alignment > 2)
  {
    if ((alignment - 3) >= 2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (!alignment)
    {
      startDate = [rangeCopy startDate];
      selfCopy3 = self;
      v21 = startDate;
      v22 = 0;
      goto LABEL_17;
    }

    if (alignment != 1)
    {
      if (alignment != 2)
      {
        goto LABEL_18;
      }

      startDate = [rangeCopy endDate];
      selfCopy3 = self;
      v21 = startDate;
      v22 = 2;
      goto LABEL_17;
    }
  }

  startDate2 = [rangeCopy startDate];
  endDate = [rangeCopy endDate];
  startDate = HKUIMidDate(startDate2, endDate);

  selfCopy3 = self;
  v21 = startDate;
  v22 = 1;
LABEL_17:
  [(HKInteractiveChartViewController *)selfCopy3 scrollToDate:v21 withVisibleAlignment:v22];

LABEL_18:
}

- (void)_scrollToMostRecentDataWithAlignment:(int64_t)alignment
{
  _dateForMostRecentData = [(HKInteractiveChartViewController *)self _dateForMostRecentData];
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];
  [(HKInteractiveChartViewController *)self _scrollToAnchorDate:_dateForMostRecentData graphView:graphView alignment:alignment];
}

- (int64_t)defaultAlignmentForTimeScope:(int64_t)scope
{
  if (scope < 6)
  {
    return 2;
  }

  if (scope == 8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKInteractiveChartViewController.m" lineNumber:2857 description:{@"Invalid timescope (%ld)", 8}];
  }

  return 3;
}

- (BOOL)_viewHierarchyIsHidden:(id)hidden
{
  hiddenCopy = hidden;
  if ([hiddenCopy isHidden])
  {
    v5 = 1;
  }

  else
  {
    superview = [hiddenCopy superview];
    if (superview)
    {
      v5 = [(HKInteractiveChartViewController *)self _viewHierarchyIsHidden:superview];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)graphView:(id)view startupTime:(int64_t)time
{
  v23 = *MEMORY[0x1E69E9840];
  view = [(HKInteractiveChartViewController *)self view];
  v7 = [(HKInteractiveChartViewController *)self _viewHierarchyIsHidden:view];

  if (!v7)
  {
    _primaryDisplayType = [(HKInteractiveChartViewController *)self _primaryDisplayType];
    localization = [_primaryDisplayType localization];
    displayName = [localization displayName];

    if (!displayName || ![(__CFString *)displayName length])
    {

      displayName = @"**UNKNOWN**";
    }

    v11 = HKNumberFormatterFromTemplate(1);
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:time];
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
        v20 = displayName;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_1C3942000, v16, OS_LOG_TYPE_INFO, "Interactive chart startup time for %@: %@ us", &v19, 0x16u);
      }
    }

    startupReportingBlock = [(HKInteractiveChartViewController *)self startupReportingBlock];

    if (startupReportingBlock)
    {
      startupReportingBlock2 = [(HKInteractiveChartViewController *)self startupReportingBlock];
      (startupReportingBlock2)[2](startupReportingBlock2, displayName, time);
    }
  }
}

- (void)graphViewExternalSelectionEnd:(id)end
{
  if ([(HKInteractiveChartViewController *)self disableCurrentValueViewForInitialLollipop])
  {
    [(HKInteractiveChartViewController *)self setDisableCurrentValueViewForInitialLollipop:0];

    [(HKInteractiveChartViewController *)self updateCurrentValueViewWithVisibleRange];
  }
}

- (void)graphViewRenderedView:(id)view
{
  chartHasDataCompletion = [(HKInteractiveChartViewController *)self chartHasDataCompletion];

  if (chartHasDataCompletion && [(HKInteractiveChartViewController *)self chartDataIsAvailable])
  {
    chartHasDataCompletion2 = [(HKInteractiveChartViewController *)self chartHasDataCompletion];
    chartHasDataCompletion2[2]();

    [(HKInteractiveChartViewController *)self setChartHasDataCompletion:0];
  }
}

- (HKDisplayType)calendarQueryDisplayType
{
  displayTypeStack = [(HKInteractiveChartViewController *)self displayTypeStack];
  firstObject = [displayTypeStack firstObject];
  v3FirstObject = [firstObject firstObject];

  return v3FirstObject;
}

- (HKSampleType)calendarQuerySampleType
{
  calendarQueryDisplayType = [(HKInteractiveChartViewController *)self calendarQueryDisplayType];
  sampleType = [calendarQueryDisplayType sampleType];

  return sampleType;
}

- (UIColor)calendarDaySamplePresentColor
{
  displayTypeController = [(HKInteractiveChartViewController *)self displayTypeController];
  calendarQuerySampleType = [(HKInteractiveChartViewController *)self calendarQuerySampleType];
  v5 = [displayTypeController displayTypeForObjectType:calendarQuerySampleType];

  v6 = +[HKDisplayCategory categoryWithID:](HKDisplayCategory, "categoryWithID:", [v5 categoryIdentifier]);
  color = [v6 color];

  return color;
}

- (void)currentTimeViewDidTapOnDateSelector:(id)selector
{
  if ((self->_options & 0x20000) == 0)
  {
    primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
    graphView = [primaryGraphViewController graphView];
    effectiveVisibleRangeCadence = [graphView effectiveVisibleRangeCadence];

    v6 = [HKInteractiveChartsMonthViewController alloc];
    healthStore = [(HKInteractiveChartViewController *)self healthStore];
    dateCache = [(HKInteractiveChartViewController *)self dateCache];
    minValue = [effectiveVisibleRangeCadence minValue];
    v10 = [(HKInteractiveChartsMonthViewController *)v6 initWithHealthStore:healthStore dateCache:dateCache date:minValue];

    calendarQuerySampleType = [(HKInteractiveChartViewController *)self calendarQuerySampleType];
    [(HKInteractiveChartsMonthViewController *)v10 setSampleType:calendarQuerySampleType];

    calendarDaySamplePresentColor = [(HKInteractiveChartViewController *)self calendarDaySamplePresentColor];
    [(HKInteractiveChartsMonthViewController *)v10 setSampleColor:calendarDaySamplePresentColor];

    [(HKMonthViewController *)v10 setDelegate:self];
    v13 = [[HKNavigationController alloc] initWithRootViewController:v10];
    [(HKInteractiveChartViewController *)self presentViewController:v13 animated:1 completion:0];
  }
}

- (void)_scrollToAnchorDate:(id)date graphView:(id)view alignment:(int64_t)alignment
{
  viewCopy = view;
  dateCopy = date;
  currentCalendar = [(HKInteractiveChartViewController *)self currentCalendar];
  firstWeekday = [currentCalendar firstWeekday];

  xAxisDateZoom = [viewCopy xAxisDateZoom];
  effectiveAxisRange = [viewCopy effectiveAxisRange];
  currentCalendar2 = [(HKInteractiveChartViewController *)self currentCalendar];
  v14 = [HKGraphZoomLevelConfiguration chartVisibleRangeForTimeScope:xAxisDateZoom anchorDate:dateCopy alignment:alignment dataRange:effectiveAxisRange calendar:currentCalendar2 firstWeekday:firstWeekday cadence:1 level:0];

  v15 = -[HKInteractiveChartViewController visibleRangeForTimeScope:proposedRange:](self, "visibleRangeForTimeScope:proposedRange:", [viewCopy xAxisDateZoom], v14);
  [viewCopy setEffectiveVisibleRangeActive:v15 animated:1];

  [(HKInteractiveChartViewController *)self _handleVisibleRangeChange];
}

- (void)_moveSelectedDateInDirection:(int64_t)direction
{
  graphView = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  effectiveVisibleRangeCadence = [graphView effectiveVisibleRangeCadence];

  startDate = [effectiveVisibleRangeCadence startDate];
  endDate = [effectiveVisibleRangeCadence endDate];
  graphView2 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  v9 = graphView2;
  if (startDate)
  {
    v10 = endDate == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && graphView2 != 0)
  {
    [startDate timeIntervalSinceReferenceDate];
    v13 = v12;
    [endDate timeIntervalSinceReferenceDate];
    v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v13 + (v14 - v13) * direction + (v14 - v13) * 0.5];
    [(HKInteractiveChartViewController *)self _scrollToAnchorDate:v15 graphView:v9 alignment:3];
  }
}

- (void)monthViewController:(id)controller didSelectDate:(id)date
{
  [(HKInteractiveChartViewController *)self _setVisibleRangeUsingDateFromDateSelector:date];

  [(HKInteractiveChartViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (id)makeCurrentValueView
{
  v3 = [[HKInteractiveChartAnnotationView alloc] initWithContext:0];
  [(HKInteractiveChartAnnotationView *)v3 setDelegate:self];
  view = [(HKInteractiveChartViewController *)self view];
  [view addSubview:v3];

  makeStandardCurrentValueViewDataSource = [(HKInteractiveChartViewController *)self makeStandardCurrentValueViewDataSource];
  [(HKInteractiveChartViewController *)self setCurrentValueViewDataSource:makeStandardCurrentValueViewDataSource];

  [(HKInteractiveChartAnnotationView *)v3 setDataSource:self->_currentValueViewDataSource];
  [(HKInteractiveChartAnnotationView *)v3 setShowsInfoButton:[(HKInteractiveChartViewController *)self _showInfoButtonInCurrentValueView]];

  return v3;
}

- (void)updateCurrentValueView:(id)view graphView:(id)graphView timeScope:(int64_t)scope showInfoButton:(BOOL)button
{
  buttonCopy = button;
  v15 = self->_currentValueView;
  currentValueViewDataSource = self->_currentValueViewDataSource;
  graphViewCopy = graphView;
  _primaryDisplayType = [(HKInteractiveChartViewController *)self _primaryDisplayType];
  [(HKCurrentValueViewDataSource *)currentValueViewDataSource updateDataSourceWithGraphView:graphViewCopy displayType:_primaryDisplayType timeScope:scope];

  selectedRangeData = [(HKCurrentValueViewDataSource *)self->_currentValueViewDataSource selectedRangeData];
  v14 = [selectedRangeData count];

  if (v14)
  {
    [(UIView *)v15 setShowsInfoButton:buttonCopy];
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

- (void)didTapOnInfoButtonFromCurrentValueView:(id)view
{
  delegate = [(HKCurrentValueViewDataSource *)self->_currentValueViewDataSource delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HKCurrentValueViewDataSource *)self->_currentValueViewDataSource delegate];
    _primaryDisplayType = [(HKInteractiveChartViewController *)self _primaryDisplayType];
    v9 = [delegate2 infographicViewControllerForDisplayType:_primaryDisplayType healthStore:self->_healthStore];
  }

  else
  {
    delegate2 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
    v9 = [(HKInteractiveChartViewController *)self infographicViewControllerForDisplayType:delegate2 healthStore:self->_healthStore];
  }

  v8 = v9;
  if (v9)
  {
    [(UIViewController *)self hk_presentModalCardViewController:v9 fullScreen:0 animated:1 completion:0];
    v8 = v9;
  }
}

- (id)stringForValueRange:(id)range timeScope:(int64_t)scope
{
  v6 = [MEMORY[0x1E696AB80] hk_dateIntervalWithValueRange:range];
  dateCache = [(HKInteractiveChartViewController *)self dateCache];
  v8 = HKLastUpdatedIntervalText(v6, scope, dateCache, 1);

  return v8;
}

- (BOOL)infographicSupportedForDisplayType:(id)type healthStore:(id)store
{
  selfCopy = self;
  v5 = [(HKInteractiveChartViewController *)self _primaryDisplayType:type];
  LOBYTE(selfCopy) = [HKInteractiveChartInfographicFactory infographicSupportedForDisplayType:v5 factorDisplayType:0 healthStore:selfCopy->_healthStore];

  return selfCopy;
}

- (id)infographicViewControllerForDisplayType:(id)type healthStore:(id)store
{
  v5 = [(HKInteractiveChartViewController *)self _primaryDisplayType:type];
  v6 = [HKInteractiveChartInfographicFactory infographicViewControllerForDisplayType:v5 factorDisplayType:0 healthStore:self->_healthStore];

  return v6;
}

- (id)_midPointDateFromVisibleRange
{
  graphView = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  effectiveVisibleRangeCadence = [graphView effectiveVisibleRangeCadence];

  startDate = [effectiveVisibleRangeCadence startDate];
  if (startDate)
  {
    endDate = [effectiveVisibleRangeCadence endDate];

    if (endDate)
    {
      startDate2 = [effectiveVisibleRangeCadence startDate];
      endDate2 = [effectiveVisibleRangeCadence endDate];
      startDate = HKUIMidDate(startDate2, endDate2);
    }

    else
    {
      startDate = 0;
    }
  }

  return startDate;
}

- (void)_setDateSelectorToVisibleRange
{
  superview = [(HKCurrentTimeView *)self->_currentTimeView superview];

  if (superview)
  {
    _singleFixedRange = [(HKInteractiveChartViewController *)self _singleFixedRange];
    v19 = _singleFixedRange;
    if (_singleFixedRange)
    {
      [HKGraphZoomLevelConfiguration timeScopeForDateRange:_singleFixedRange];
    }

    else
    {
      [(HKTimeScopeControl *)self->_radioButtons selectedTimeScope];
    }

    graphView = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
    effectiveVisibleRangeActive = [graphView effectiveVisibleRangeActive];
    v6 = [HKInteractiveChartViewController stringForValueRange:"stringForValueRange:timeScope:" timeScope:?];
    [(HKCurrentTimeView *)self->_currentTimeView setCurrentTimeString:v6];
    effectiveVisibleRangeCadence = [graphView effectiveVisibleRangeCadence];
    primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
    graphView2 = [primaryGraphViewController graphView];
    effectiveAxisRange = [graphView2 effectiveAxisRange];

    endDate = [effectiveVisibleRangeCadence endDate];
    endDate2 = [effectiveAxisRange endDate];
    v13 = [endDate hk_isBeforeDate:endDate2];

    startDate = [effectiveVisibleRangeCadence startDate];
    startDate2 = [effectiveAxisRange startDate];
    v16 = [startDate hk_isAfterDate:startDate2];

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

- (void)_setVisibleRangeUsingDateFromDateSelector:(id)selector
{
  selectorCopy = selector;
  graphView = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  graphView2 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
  effectiveVisibleRangeCadence = [graphView2 effectiveVisibleRangeCadence];

  if (selectorCopy)
  {
    if (graphView && effectiveVisibleRangeCadence != 0)
    {
      [(HKInteractiveChartViewController *)self _scrollToAnchorDate:selectorCopy graphView:graphView alignment:3];
    }
  }
}

- (BOOL)_showInfoButtonInCurrentValueView
{
  delegate = [(HKCurrentValueViewDataSource *)self->_currentValueViewDataSource delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(HKCurrentValueViewDataSource *)self->_currentValueViewDataSource delegate];
    _primaryDisplayType = [(HKInteractiveChartViewController *)self _primaryDisplayType];
    v7 = [delegate2 infographicSupportedForDisplayType:_primaryDisplayType healthStore:self->_healthStore];
  }

  else
  {
    delegate2 = [(HKInteractiveChartViewController *)self _primaryDisplayType];
    v7 = [(HKInteractiveChartViewController *)self infographicSupportedForDisplayType:delegate2 healthStore:self->_healthStore];
  }

  return v7;
}

- (id)_debugDateStringForPoint:(id)point
{
  v3 = MEMORY[0x1E695DF00];
  [point startXValue];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v5 = [MEMORY[0x1E696AB78] localizedStringFromDate:v4 dateStyle:2 timeStyle:1];

  return v5;
}

- (id)_dateForBlockPoint:(id)point
{
  if (point)
  {
    v4 = MEMORY[0x1E695DF00];
    [point startXValue];
    v5 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_chartDataForPoint:(id)point
{
  userInfo = [point userInfo];
  if ([userInfo conformsToProtocol:&unk_1F43A09B0])
  {
    v4 = userInfo;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_formatterForSeries:(id)series
{
  v4 = [(HKInteractiveChartViewController *)self _configurationForSeries:series];
  displayType = [v4 displayType];
  v6 = [displayType hk_interactiveChartsFormatterForTimeScope:{-[HKInteractiveChartViewController _dateZoom](self, "_dateZoom")}];
  [v6 setMajorFont:self->_majorSelectedPointFont];
  [v6 setMinorFont:self->_minorSelectedPointFont];
  unitPreferenceController = [(HKInteractiveChartViewController *)self unitPreferenceController];
  [v6 setUnitController:unitPreferenceController];

  displayType2 = [v4 displayType];
  [v6 setDisplayType:displayType2];

  return v6;
}

- (BOOL)_primaryDisplayTypeHasNoData
{
  sampleTypeDateRangeController = [(HKInteractiveChartViewController *)self sampleTypeDateRangeController];
  dateRangesBySampleType = [sampleTypeDateRangeController dateRangesBySampleType];

  if (dateRangesBySampleType)
  {
    _primaryDisplayType = [(HKInteractiveChartViewController *)self _primaryDisplayType];
    sampleType = [_primaryDisplayType sampleType];
    v7 = [sampleTypeDateRangeController dateRangeForSampleType:sampleType];
    minValue = [v7 minValue];
    if (minValue)
    {
    }

    else
    {
      maxValue = [v7 maxValue];

      if (!maxValue)
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
    graphView = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
    _dateZoom = [(HKInteractiveChartViewController *)self _dateZoom];
    _showInfoButtonInCurrentValueView = [(HKInteractiveChartViewController *)self _showInfoButtonInCurrentValueView];
    currentValueViewHandler = [(HKInteractiveChartViewController *)self currentValueViewHandler];
    [currentValueViewHandler updateCurrentValueView:self->_currentValueView graphView:graphView timeScope:_dateZoom showInfoButton:_showInfoButtonInCurrentValueView];
  }
}

- (void)_automaticAutoScale
{
  if ((self->_options & 4) == 0)
  {
    graphView = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
    if (([graphView isScrollViewDecelerating] & 1) == 0)
    {
      graphView2 = [(HKGraphViewController *)self->_primaryGraphViewController graphView];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __55__HKInteractiveChartViewController__automaticAutoScale__block_invoke;
      v5[3] = &unk_1E81B55A8;
      v5[4] = self;
      [graphView2 autoscaleYAxesAnimated:1 specificRange:0 onlyIfNeeded:0 completion:v5];
    }
  }
}

- (id)_defaultAxisRangeIncludeToday:(BOOL)today
{
  todayCopy = today;
  v26 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  sampleTypeDateRangeController = [(HKInteractiveChartViewController *)self sampleTypeDateRangeController];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  _allDisplayTypes = [(HKInteractiveChartViewController *)self _allDisplayTypes];
  v8 = [_allDisplayTypes countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        objc_enumerationMutation(_allDisplayTypes);
      }

      v13 = *(*(&v21 + 1) + 8 * i);
      defaultDataRange = [v13 defaultDataRange];
      if (defaultDataRange)
      {
        if (v10)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sampleType = [v13 sampleType];
        defaultDataRange = [sampleTypeDateRangeController dateRangeForSampleType:sampleType];

        if (v10)
        {
LABEL_8:
          [v10 unionRange:defaultDataRange];
          goto LABEL_11;
        }
      }

      v10 = [defaultDataRange copy];
LABEL_11:
    }

    v9 = [_allDisplayTypes countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v9);
LABEL_15:

  if (todayCopy)
  {
    v16 = [HKValueRange valueRangeWithMinValue:date maxValue:date];
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

  endDate = [v10 endDate];
  v19 = [endDate hk_isAfterDate:date];

  if (v19)
  {
    [v10 setMaxValue:date];
  }

  return v10;
}

- (id)_dateForMostRecentData
{
  v29 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  currentCalendar = [(HKInteractiveChartViewController *)self currentCalendar];
  v23 = date;
  v5 = [currentCalendar hk_startOfTomorrowForDate:date];

  sampleTypeDateRangeController = [(HKInteractiveChartViewController *)self sampleTypeDateRangeController];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  _allDisplayTypes = [(HKInteractiveChartViewController *)self _allDisplayTypes];
  v7 = [_allDisplayTypes countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(_allDisplayTypes);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        defaultDataRange = [v12 defaultDataRange];
        if (!defaultDataRange)
        {
          sampleType = [v12 sampleType];
          defaultDataRange = [sampleTypeDateRangeController dateRangeForSampleType:sampleType];
        }

        endDate = [defaultDataRange endDate];
        distantFuture = [MEMORY[0x1E695DF00] distantFuture];
        v17 = [endDate isEqualToDate:distantFuture];

        if (v17)
        {
          v18 = v23;

          endDate = v18;
        }

        if (endDate && [endDate hk_isBeforeOrEqualToDate:v5] && (!v9 || objc_msgSend(endDate, "hk_isAfterDate:", v9)))
        {
          v19 = endDate;

          v9 = v19;
        }
      }

      v8 = [_allDisplayTypes countByEnumeratingWithState:&v24 objects:v28 count:16];
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

  dateZoom = [(HKGraphViewController *)primaryGraphViewController dateZoom];
  if ([(HKInteractiveChartViewController *)self firstSampleDateRangeUpdate])
  {
    trendAccessibilityDelegate = [(HKInteractiveChartViewController *)self trendAccessibilityDelegate];
    trendAccessibilitySeries = [trendAccessibilityDelegate trendAccessibilitySeries];

    if (!trendAccessibilitySeries)
    {
      initialXValue = [(HKInteractiveChartViewController *)self initialXValue];
      if (initialXValue && (v18 = initialXValue, [(HKInteractiveChartViewController *)self initialXValue], v19 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v19, v18, (isKindOfClass & 1) != 0))
      {
        initialXValue2 = [(HKInteractiveChartViewController *)self initialXValue];
      }

      else
      {
        initialXValue2 = [(HKInteractiveChartViewController *)self _dateForMostRecentData];
      }

      _dateForMostRecentData = initialXValue2;
      [(HKInteractiveChartViewController *)self _setGraphViewAxisAndVisibleDateRangeForTimeScope:dateZoom anchorDate:initialXValue2 preserveScrollPosition:0];
      goto LABEL_12;
    }
  }

  v7 = [(HKInteractiveChartViewController *)self _defaultAxisRangeIncludeToday:[(HKInteractiveChartViewController *)self firstSampleDateRangeUpdate]^ 1];
  primaryGraphViewController = [(HKInteractiveChartViewController *)self primaryGraphViewController];
  graphView = [primaryGraphViewController graphView];
  actualVisibleRange = [graphView actualVisibleRange];

  if (v7 && actualVisibleRange)
  {
    startDate = [actualVisibleRange startDate];
    endDate = [actualVisibleRange endDate];
    startDate2 = [v7 startDate];
    endDate2 = [v7 endDate];
    if ([endDate2 hk_isBeforeDate:startDate])
    {
    }

    else
    {
      v15 = [startDate2 hk_isAfterDate:endDate];

      if ((v15 & 1) == 0)
      {
        _dateForMostRecentData = 0;
        v16 = 1;
        goto LABEL_11;
      }
    }
  }

  _dateForMostRecentData = [(HKInteractiveChartViewController *)self _dateForMostRecentData];
  v16 = 0;
LABEL_11:

  [(HKInteractiveChartViewController *)self _setGraphViewAxisAndVisibleDateRangeForTimeScope:dateZoom anchorDate:_dateForMostRecentData preserveScrollPosition:v16];
LABEL_12:
}

- (void)sampleTypeDateRangeController:(id)controller didUpdateDateRanges:(id)ranges
{
  [(HKInteractiveChartViewController *)self _updateGraphViewAxisDateRange:controller];

  [(HKInteractiveChartViewController *)self setFirstSampleDateRangeUpdate:0];
}

- (void)selectTimeScope:(int64_t)scope
{
  [(HKTimeScopeControl *)self->_radioButtons setSelectedTimeScope:scope];
  radioButtons = self->_radioButtons;

  [(HKInteractiveChartViewController *)self _radioButtonsDidUpdate:radioButtons];
}

- (id)restorationStateDictionary
{
  v3 = objc_opt_class();
  _primaryDisplayType = [(HKInteractiveChartViewController *)self _primaryDisplayType];
  healthStore = [(HKInteractiveChartViewController *)self healthStore];
  v6 = [v3 standardChartRestorationDictionary:_primaryDisplayType healthStore:healthStore];

  return v6;
}

- (void)saveRestorationState
{
  restorationStateDictionary = [(HKInteractiveChartViewController *)self restorationStateDictionary];
  v3 = objc_opt_class();
  _primaryDisplayType = [(HKInteractiveChartViewController *)self _primaryDisplayType];
  v5 = [v3 standardChartRestorationActivity:restorationStateDictionary primaryDisplayType:_primaryDisplayType];

  [objc_opt_class() saveRestorationUserActivity:v5 viewController:self];
}

+ (id)standardChartRestorationDictionary:(id)dictionary healthStore:(id)store
{
  dictionaryCopy = dictionary;
  v7 = MEMORY[0x1E695DF90];
  storeCopy = store;
  v9 = objc_alloc_init(v7);
  v10 = [self _encodeCurrentProfileIdentifierForHealthStore:storeCopy];

  [v9 setObject:v10 forKeyedSubscript:@"profileIdentifier"];
  objectType = [dictionaryCopy objectType];
  code = [objectType code];

  categoryIdentifier = [dictionaryCopy categoryIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = dictionaryCopy;
    baseDisplayType = [v14 baseDisplayType];

    if (baseDisplayType)
    {
      baseDisplayType2 = [v14 baseDisplayType];
      objectType2 = [baseDisplayType2 objectType];
      code = [objectType2 code];

      baseDisplayType3 = [v14 baseDisplayType];
      categoryIdentifier = [baseDisplayType3 categoryIdentifier];
    }
  }

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  [v9 setObject:v19 forKeyedSubscript:@"dataTypeCode"];

  v20 = [MEMORY[0x1E696AD98] numberWithInteger:categoryIdentifier];
  [v9 setObject:v20 forKeyedSubscript:@"displayCategoryID"];

  return v9;
}

+ (id)_encodeCurrentProfileIdentifierForHealthStore:(id)store
{
  profileIdentifier = [store profileIdentifier];
  v9 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:profileIdentifier requiringSecureCoding:1 error:&v9];
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

+ (id)mergeRestorationDictionary:(id)dictionary otherDictionary:(id)otherDictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  otherDictionaryCopy = otherDictionary;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = dictionaryCopy;
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
  v15 = otherDictionaryCopy;
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

+ (id)standardChartRestorationActivity:(id)activity primaryDisplayType:(id)type
{
  v6 = MEMORY[0x1E696AEC0];
  activityCopy = activity;
  localization = [type localization];
  displayName = [localization displayName];
  v10 = [v6 stringWithFormat:@"Chart(%@)", displayName];

  v11 = [self baseRestorationUserActivity:activityCopy activityType:@"com.apple.health.view.data" title:v10];

  return v11;
}

+ (id)baseRestorationUserActivity:(id)activity activityType:(id)type title:(id)title
{
  v16[2] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69636A8];
  titleCopy = title;
  typeCopy = type;
  activityCopy = activity;
  v11 = [[v7 alloc] initWithActivityType:typeCopy];

  [v11 setEligibleForSearch:0];
  [v11 setEligibleForHandoff:1];
  [v11 setEligibleForPrediction:0];
  [v11 setTitle:titleCopy];

  [v11 setUserInfo:activityCopy];
  v15[0] = @"versionKey";
  v15[1] = @"DateSavedAppState";
  v16[0] = &unk_1F4383F88;
  v12 = [MEMORY[0x1E695DF00] now];
  v16[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  [v11 addUserInfoEntriesFromDictionary:v13];

  return v11;
}

+ (void)saveRestorationUserActivity:(id)activity viewController:(id)controller
{
  activityCopy = activity;
  view = [controller view];
  window = [view window];

  if (window && ([window windowScene], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    windowScene = [window windowScene];
    [windowScene setUserActivity:activityCopy];
  }

  else
  {
    _HKInitializeLogging();
    windowScene = HKLogWellnessDashboard();
    if (os_log_type_enabled(windowScene, OS_LOG_TYPE_ERROR))
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

  currentCalendar = [(HKInteractiveChartViewController *)self currentCalendar];
  firstWeekday = [currentCalendar firstWeekday];

  return firstWeekday;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKInteractiveChartViewController.m" lineNumber:2304 description:{@"Primary display type index out of bounds: %ld", objc_msgSend(self, "primaryDisplayTypeStackIndex")}];
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