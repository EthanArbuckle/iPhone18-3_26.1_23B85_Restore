@interface HKOverlayRoomFactorAndTrendViewController
- (BOOL)supportsShowAllFilters;
- (HKOverlayRoomFactorAndTrendViewController)initWithBaseChartDisplayType:(id)type trendModel:(id)model factorDisplayTypes:(id)types displayDate:(id)date applicationItems:(id)items mode:(int64_t)mode timeScopeRanges:(id)ranges initialTimeScope:(int64_t)self0 wrappedOverlay:(id)self1 overrideFirstWeekday:(int64_t)self2 overrideCalendar:(id)self3 additionalChartOptions:(unint64_t)self4;
- (HKOverlayRoomFactorAndTrendViewController)initWithBaseChartDisplayType:(id)type trendModel:(id)model factorDisplayTypes:(id)types displayDate:(id)date applicationItems:(id)items mode:(int64_t)mode timeScopeRanges:(id)ranges initialTimeScope:(int64_t)self0 wrappedOverlay:(id)self1 overrideFirstWeekday:(int64_t)self2 overrideCalendar:(id)self3 additionalChartOptions:(unint64_t)self4 activityMoveMode:(int64_t)self5 activityOptions:(unint64_t)self6;
- (id)_buildFullModeSectionContainerWithOverlayController:(id)controller applicationItems:(id)items;
- (id)_primarySectionForApplicationItems:(id)items overlayChartController:(id)controller;
- (id)_primaryTrendContextForApplicationItems:(id)items overlayChartController:(id)controller;
- (id)buildFactorContextForDisplayType:(id)type factorDisplayType:(id)displayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items overlayMode:(int64_t)mode allowsDeselection:(BOOL)deselection;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
@end

@implementation HKOverlayRoomFactorAndTrendViewController

- (HKOverlayRoomFactorAndTrendViewController)initWithBaseChartDisplayType:(id)type trendModel:(id)model factorDisplayTypes:(id)types displayDate:(id)date applicationItems:(id)items mode:(int64_t)mode timeScopeRanges:(id)ranges initialTimeScope:(int64_t)self0 wrappedOverlay:(id)self1 overrideFirstWeekday:(int64_t)self2 overrideCalendar:(id)self3 additionalChartOptions:(unint64_t)self4
{
  typeCopy = type;
  modelCopy = model;
  typesCopy = types;
  dateCopy = date;
  itemsCopy = items;
  rangesCopy = ranges;
  overlayCopy = overlay;
  calendarCopy = calendar;
  if ([typeCopy displayTypeIdentifier] == 100)
  {
    [HKOverlayRoomFactorAndTrendViewController initWithBaseChartDisplayType:a2 trendModel:self factorDisplayTypes:? displayDate:? applicationItems:? mode:? timeScopeRanges:? initialTimeScope:? wrappedOverlay:? overrideFirstWeekday:? overrideCalendar:? additionalChartOptions:?];
  }

  v26 = [(HKOverlayRoomFactorAndTrendViewController *)self initWithBaseChartDisplayType:typeCopy trendModel:modelCopy factorDisplayTypes:typesCopy displayDate:dateCopy applicationItems:itemsCopy mode:mode timeScopeRanges:rangesCopy initialTimeScope:scope wrappedOverlay:overlayCopy overrideFirstWeekday:weekday overrideCalendar:calendarCopy additionalChartOptions:options activityMoveMode:1 activityOptions:0];

  return v26;
}

- (HKOverlayRoomFactorAndTrendViewController)initWithBaseChartDisplayType:(id)type trendModel:(id)model factorDisplayTypes:(id)types displayDate:(id)date applicationItems:(id)items mode:(int64_t)mode timeScopeRanges:(id)ranges initialTimeScope:(int64_t)self0 wrappedOverlay:(id)self1 overrideFirstWeekday:(int64_t)self2 overrideCalendar:(id)self3 additionalChartOptions:(unint64_t)self4 activityMoveMode:(int64_t)self5 activityOptions:(unint64_t)self6
{
  typeCopy = type;
  obj = model;
  modelCopy = model;
  dateCopy = date;
  rangesCopy = ranges;
  overlayCopy = overlay;
  calendarCopy = calendar;
  itemsCopy = items;
  typesCopy = types;
  v27 = [HKOverlayRoomTrendContext findInitialDateFromTrendModel:modelCopy];
  v28 = v27;
  v39 = dateCopy;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = dateCopy;
  }

  v30 = v29;

  v41.receiver = self;
  v41.super_class = HKOverlayRoomFactorAndTrendViewController;
  v31 = [(HKOverlayRoomViewController *)&v41 initWithDisplayDate:v30 applicationItems:itemsCopy factorDisplayTypes:typesCopy mode:mode];

  if (v31)
  {
    objc_storeStrong(&v31->_baseChartDisplayType, type);
    objc_storeStrong(&v31->_trendModel, obj);
    v32 = [HKOverlayRoomTrendContext findStartingTimeScopeFromTrendModel:modelCopy];
    if (v32 != 8)
    {
      scope = v32;
    }

    v31->_startingTimeScope = scope;
    objc_storeStrong(&v31->_timeScopeRanges, ranges);
    objc_storeStrong(&v31->_wrappedOverlayViewController, overlay);
    -[HKOverlayRoomViewController setShouldSelectInitialOverlay:](v31, "setShouldSelectInitialOverlay:", [modelCopy selectTrendInitially]);
    v31->_overrideFirstWeekday = weekday;
    objc_storeStrong(&v31->_overrideCalendar, calendar);
    [(HKOverlayRoomViewController *)v31 setAdditionalChartOptions:options | 0x10000];
    v31->_activityMoveMode = moveMode;
    v31->_activityOptions = activityOptions;
  }

  return v31;
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  baseChartDisplayType = [(HKOverlayRoomFactorAndTrendViewController *)self baseChartDisplayType];
  localization = [baseChartDisplayType localization];
  displayName = [localization displayName];

  return displayName;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  v15[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  if (mode == 3)
  {
    v13 = [(HKOverlayRoomFactorAndTrendViewController *)self _buildFullModeSectionContainerWithOverlayController:controllerCopy applicationItems:itemsCopy];
  }

  else if (mode == 1)
  {
    v10 = [HKOverlayContextSectionContainer alloc];
    v11 = [(HKOverlayRoomFactorAndTrendViewController *)self _primarySectionForApplicationItems:itemsCopy overlayChartController:controllerCopy];
    v12 = [(HKOverlayContextSectionContainer *)v10 initWithContainerTitle:0 overlayContextSections:v11];
    v15[0] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  return v13;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  wrappedOverlayViewController = self->_wrappedOverlayViewController;
  if (wrappedOverlayViewController)
  {
    itemsCopy = items;
    v9 = [(HKOverlayRoomViewController *)wrappedOverlayViewController createViewControllerForMode:mode displayDate:date applicationItems:itemsCopy];
  }

  else
  {
    itemsCopy2 = items;
    v20 = [HKOverlayRoomFactorAndTrendViewController alloc];
    itemsCopy = [(HKOverlayRoomFactorAndTrendViewController *)self baseChartDisplayType];
    trendModel = [(HKOverlayRoomFactorAndTrendViewController *)self trendModel];
    factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
    displayDate = [(HKOverlayRoomViewController *)self displayDate];
    timeScopeRanges = [(HKOverlayRoomFactorAndTrendViewController *)self timeScopeRanges];
    startingTimeScope = [(HKOverlayRoomFactorAndTrendViewController *)self startingTimeScope];
    wrappedOverlayViewController = [(HKOverlayRoomFactorAndTrendViewController *)self wrappedOverlayViewController];
    overrideFirstWeekday = [(HKOverlayRoomFactorAndTrendViewController *)self overrideFirstWeekday];
    overrideCalendar = [(HKOverlayRoomFactorAndTrendViewController *)self overrideCalendar];
    v9 = [(HKOverlayRoomFactorAndTrendViewController *)v20 initWithBaseChartDisplayType:itemsCopy trendModel:trendModel factorDisplayTypes:factorDisplayTypes displayDate:displayDate applicationItems:itemsCopy2 mode:mode timeScopeRanges:timeScopeRanges initialTimeScope:startingTimeScope wrappedOverlay:wrappedOverlayViewController overrideFirstWeekday:overrideFirstWeekday overrideCalendar:overrideCalendar additionalChartOptions:[(HKOverlayRoomViewController *)self additionalChartOptions] activityMoveMode:[(HKOverlayRoomFactorAndTrendViewController *)self activityMoveMode] activityOptions:[(HKOverlayRoomFactorAndTrendViewController *)self activityOptions]];
  }

  return v9;
}

- (BOOL)supportsShowAllFilters
{
  factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  if (factorDisplayTypes)
  {
    factorDisplayTypes2 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
    v5 = [factorDisplayTypes2 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return [(HKOverlayRoomViewController *)self controllerMode]!= 3 && (self->_wrappedOverlayViewController != 0 || v5);
}

- (id)createChartOverlayViewController
{
  timeScopeRanges = [(HKOverlayRoomFactorAndTrendViewController *)self timeScopeRanges];

  if (timeScopeRanges)
  {
    timeScopeRanges2 = [(HKOverlayRoomFactorAndTrendViewController *)self timeScopeRanges];
    if ([(HKOverlayRoomFactorAndTrendViewController *)self startingTimeScope]== 8)
    {
      startingTimeScope = 4;
    }

    else
    {
      startingTimeScope = [(HKOverlayRoomFactorAndTrendViewController *)self startingTimeScope];
    }

    applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
    timeScopeController = [applicationItems timeScopeController];
    [timeScopeController setSelectedTimeScope:startingTimeScope];

    primaryDisplayType = [(HKOverlayRoomViewController *)self primaryDisplayType];
    hk_interactiveChartOptions = [primaryDisplayType hk_interactiveChartOptions];

    if ([(HKOverlayRoomViewController *)self shouldSelectInitialOverlay])
    {
      v23 = 663552;
    }

    else
    {
      v23 = 655360;
    }

    v41 = v23 | hk_interactiveChartOptions | [(HKOverlayRoomViewController *)self additionalChartOptions];
    v39 = [HKInteractiveChartOverlayViewController alloc];
    applicationItems2 = [(HKOverlayRoomViewController *)self applicationItems];
    healthStore = [applicationItems2 healthStore];
    primaryDisplayType2 = [(HKOverlayRoomViewController *)self primaryDisplayType];
    applicationItems3 = [(HKOverlayRoomViewController *)self applicationItems];
    unitController = [applicationItems3 unitController];
    applicationItems4 = [(HKOverlayRoomViewController *)self applicationItems];
    dateCache = [applicationItems4 dateCache];
    applicationItems5 = [(HKOverlayRoomViewController *)self applicationItems];
    chartDataCacheController = [applicationItems5 chartDataCacheController];
    applicationItems6 = [(HKOverlayRoomViewController *)self applicationItems];
    timeScopeController2 = [applicationItems6 timeScopeController];
    applicationItems7 = [(HKOverlayRoomViewController *)self applicationItems];
    sampleDateRangeController = [applicationItems7 sampleDateRangeController];
    displayDate = [(HKOverlayRoomViewController *)self displayDate];
    overrideCalendar = [(HKOverlayRoomFactorAndTrendViewController *)self overrideCalendar];
    createChartOverlayViewController = [(HKInteractiveChartOverlayViewController *)v39 initWithTimeScopeRanges:timeScopeRanges2 healthStore:healthStore primaryDisplayType:primaryDisplayType2 unitPreferenceController:unitController dateCache:dateCache chartDataCacheController:chartDataCacheController selectedTimeScopeController:timeScopeController2 sampleTypeDateRangeController:sampleDateRangeController initialXValue:displayDate currentCalendarOverride:overrideCalendar options:v41];

    overrideCalendar2 = [(HKOverlayRoomFactorAndTrendViewController *)self overrideCalendar];

    if (!overrideCalendar2)
    {
      [(HKInteractiveChartViewController *)createChartOverlayViewController setAnnotationDataSourceFirstWeekday:[(HKOverlayRoomFactorAndTrendViewController *)self overrideFirstWeekday]];
    }
  }

  else
  {
    baseChartDisplayType = [(HKOverlayRoomFactorAndTrendViewController *)self baseChartDisplayType];
    isActivitySummary = [baseChartDisplayType isActivitySummary];

    if (isActivitySummary)
    {
      v7 = objc_alloc(MEMORY[0x1E696C678]);
      applicationItems8 = [(HKOverlayRoomViewController *)self applicationItems];
      healthStore2 = [applicationItems8 healthStore];
      v10 = [v7 initWithHealthStore:healthStore2];

      v11 = [HKInteractiveChartActivityController alloc];
      applicationItems9 = [(HKOverlayRoomViewController *)self applicationItems];
      healthStore3 = [applicationItems9 healthStore];
      applicationItems10 = [(HKOverlayRoomViewController *)self applicationItems];
      unitController2 = [applicationItems10 unitController];
      applicationItems11 = [(HKOverlayRoomViewController *)self applicationItems];
      dateCache2 = [applicationItems11 dateCache];
      applicationItems12 = [(HKOverlayRoomViewController *)self applicationItems];
      chartDataCacheController2 = [applicationItems12 chartDataCacheController];
      applicationItems13 = [(HKOverlayRoomViewController *)self applicationItems];
      timeScopeController3 = [applicationItems13 timeScopeController];
      applicationItems14 = [(HKOverlayRoomViewController *)self applicationItems];
      sampleDateRangeController2 = [applicationItems14 sampleDateRangeController];
      displayDate2 = [(HKOverlayRoomViewController *)self displayDate];
      createChartOverlayViewController = [(HKInteractiveChartActivityController *)v11 initWithHealthStore:healthStore3 unitPreferenceController:unitController2 dateCache:dateCache2 chartDataCacheController:chartDataCacheController2 selectedTimeScopeController:timeScopeController3 sampleTypeDateRangeController:sampleDateRangeController2 wheelchairUseCharacteristicCache:v10 initialXValue:displayDate2 activityMoveMode:[(HKOverlayRoomFactorAndTrendViewController *)self activityMoveMode] activityOptions:[(HKOverlayRoomFactorAndTrendViewController *)self activityOptions] chartSharableModel:0];
    }

    else
    {
      if ([(HKOverlayRoomViewController *)self shouldSelectInitialOverlay]&& [(HKOverlayRoomFactorAndTrendViewController *)self startingTimeScope]!= 8)
      {
        startingTimeScope2 = [(HKOverlayRoomFactorAndTrendViewController *)self startingTimeScope];
        applicationItems15 = [(HKOverlayRoomViewController *)self applicationItems];
        timeScopeController4 = [applicationItems15 timeScopeController];
        [timeScopeController4 setSelectedTimeScope:startingTimeScope2];
      }

      v54.receiver = self;
      v54.super_class = HKOverlayRoomFactorAndTrendViewController;
      createChartOverlayViewController = [(HKOverlayRoomViewController *)&v54 createChartOverlayViewController];
    }
  }

  return createChartOverlayViewController;
}

- (id)_primarySectionForApplicationItems:(id)items overlayChartController:(id)controller
{
  v15[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  trendModel = [(HKOverlayRoomFactorAndTrendViewController *)self trendModel];

  if (trendModel)
  {
    v10 = [(HKOverlayRoomFactorAndTrendViewController *)self _primaryTrendContextForApplicationItems:itemsCopy overlayChartController:controllerCopy];
    chartController = [(HKOverlayRoomViewController *)self chartController];
    [chartController setTrendAccessibilityDelegate:v10];

    [v8 addObject:v10];
  }

  v12 = [[HKOverlayContextSection alloc] initWithSectionTitle:0 overlayContextItems:v8];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  return v13;
}

- (id)_primaryTrendContextForApplicationItems:(id)items overlayChartController:(id)controller
{
  controllerCopy = controller;
  itemsCopy = items;
  v8 = [HKOverlayRoomTrendContext alloc];
  baseChartDisplayType = [(HKOverlayRoomFactorAndTrendViewController *)self baseChartDisplayType];
  trendModel = [(HKOverlayRoomFactorAndTrendViewController *)self trendModel];
  v11 = [(HKOverlayRoomTrendContext *)v8 initWithBaseDisplayType:baseChartDisplayType trendModel:trendModel overlayChartController:controllerCopy applicationItems:itemsCopy overlayMode:[(HKOverlayRoomViewController *)self controllerMode]];

  return v11;
}

- (id)_buildFullModeSectionContainerWithOverlayController:(id)controller applicationItems:(id)items
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695DF70];
  itemsCopy = items;
  controllerCopy = controller;
  v9 = objc_alloc_init(v6);
  v10 = [(HKOverlayRoomFactorAndTrendViewController *)self _primarySectionForApplicationItems:itemsCopy overlayChartController:controllerCopy];

  [v9 addObjectsFromArray:v10];
  buildFactorContextSectionForChartController = [(HKOverlayRoomViewController *)self buildFactorContextSectionForChartController];
  if (buildFactorContextSectionForChartController)
  {
    [v9 addObject:buildFactorContextSectionForChartController];
  }

  v12 = [[HKOverlayContextSectionContainer alloc] initWithContainerTitle:0 overlayContextSections:v9];
  v15[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

  return v13;
}

- (id)buildFactorContextForDisplayType:(id)type factorDisplayType:(id)displayType overlayChartController:(id)controller currentCalendarOverride:(id)override applicationItems:(id)items overlayMode:(int64_t)mode allowsDeselection:(BOOL)deselection
{
  typeCopy = type;
  displayTypeCopy = displayType;
  controllerCopy = controller;
  overrideCopy = override;
  itemsCopy = items;
  baseChartDisplayType = [(HKOverlayRoomFactorAndTrendViewController *)self baseChartDisplayType];
  if ([baseChartDisplayType isActivitySummary])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v22 = [controllerCopy buildFactorContextForDisplayType:typeCopy factorDisplayType:displayTypeCopy overlayChartController:controllerCopy currentCalendarOverride:overrideCopy applicationItems:itemsCopy overlayMode:mode];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v25.receiver = self;
  v25.super_class = HKOverlayRoomFactorAndTrendViewController;
  v22 = [(HKOverlayRoomViewController *)&v25 buildFactorContextForDisplayType:typeCopy factorDisplayType:displayTypeCopy overlayChartController:controllerCopy currentCalendarOverride:overrideCopy applicationItems:itemsCopy overlayMode:mode allowsDeselection:deselection];
LABEL_6:
  v23 = v22;

  return v23;
}

- (void)initWithBaseChartDisplayType:(uint64_t)a1 trendModel:(uint64_t)a2 factorDisplayTypes:displayDate:applicationItems:mode:timeScopeRanges:initialTimeScope:wrappedOverlay:overrideFirstWeekday:overrideCalendar:additionalChartOptions:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOverlayRoomFactorAndTrendViewController.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"baseChartDisplayType.displayTypeIdentifier != HKDisplayTypeIdentifierActivitySummary"}];
}

@end