@interface HKOverlayRoomSleepViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
+ (int64_t)indexForOverlaySleepRoomSegment:(int64_t)segment;
- (BOOL)_initialTrendSelectedForMode:(int64_t)mode trendModel:(id)model;
- (BOOL)supportsShowAllFilters;
- (HKOverlayRoomSleepViewController)initWithDisplayDate:(id)date applicationItems:(id)items sleepDataSourceProvider:(id)provider sleepChartFormatter:(id)formatter mode:(int64_t)mode trendModel:(id)model factorDisplayTypes:(id)types;
- (HKSleepDataSourceProvider)sleepDataSourceProvider;
- (id)_buildDurationAverageFormatter;
- (id)_buildDurationAverageSeries;
- (id)_buildSleepDisplayTypeWithApplicationItems:(id)items sleepSeriesType:(int64_t)type customSleepSeriesMapping:(id)mapping customSleepChartFormatter:(id)formatter isStackedChart:(BOOL)chart;
- (id)_buildSleepTrendContext:(id)context overlayChartController:(id)controller;
- (id)_consistencyContextForApplicationItems:(id)items overlayMode:(int64_t)mode isPrimaryContext:(BOOL)context;
- (id)_durationAmountContextForApplicationItems:(id)items durationDisplayType:(id)type;
- (id)_durationAverageContextForApplicationItems:(id)items durationDisplayType:(id)type useInBedAverage:(BOOL)average;
- (id)_durationGoalContextForApplicationItems:(id)items durationDisplayType:(id)type overlayMode:(int64_t)mode isPrimaryContext:(BOOL)context;
- (id)_fullContextsForApplicationItems:(id)items overlayChartController:(id)controller;
- (id)_itemForSleepStageInfographicWithStage:(int64_t)stage;
- (id)_itemForTitle:(id)title titleAccessoryColor:(id)color description:(id)description;
- (id)_primaryContextForApplicationItems:(id)items overlayChartController:(id)controller;
- (id)_sleepColorForSelectedRangeData:(id)data;
- (id)_sleepStagePercentageContextForStage:(int64_t)stage applicationItems:(id)items baseDisplayType:(id)type;
- (id)_stageDurationContextForApplicationItems:(id)items baseDisplayType:(id)type sleepCategoryValue:(int64_t)value;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)dateRangeFromSelectionContext:(id)context timeScope:(int64_t)scope;
- (id)infographicViewControllerForDisplayType:(id)type healthStore:(id)store;
- (id)initialSelectedContextForMode:(int64_t)mode containerIndex:(int64_t)index;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
- (id)restorationStateDictionary;
- (id)stringForValueRange:(id)range timeScope:(int64_t)scope;
- (id)titleForSelectedRangeData:(id)data displayType:(id)type;
- (int64_t)initialSelectedContainerIndexForMode:(int64_t)mode;
- (int64_t)initialSleepSeriesType;
- (void)_installUpdateObserversForGoalsAndSchedulesWithApplicationItems:(id)items;
- (void)_setDefaultChartFormatterFonts;
- (void)_updateHighlightedSleepStage:(int64_t)stage onDisplayType:(id)type;
- (void)dealloc;
- (void)didChangeFromContextItem:(id)item toContextItem:(id)contextItem;
- (void)restoreUserActivityState:(id)state;
- (void)saveRestorationState;
- (void)setBaseDisplayIsDuration;
- (void)setBaseDisplayIsSchedule;
- (void)setComparisonContextSelected:(BOOL)selected;
- (void)setDurationContextSelected:(BOOL)selected;
- (void)setScheduleContextSelected:(BOOL)selected;
- (void)setShouldHighlightBaseDisplayContext;
- (void)setStagePercentageContextSelected:(BOOL)selected;
- (void)viewDidLoad;
@end

@implementation HKOverlayRoomSleepViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  factoryCopy = factory;
  modelCopy = model;
  typesCopy = types;
  activityCopy = activity;
  dateCopy = date;
  itemsCopy = items;
  sleepDataSourceProvider = [factoryCopy sleepDataSourceProvider];

  if (!sleepDataSourceProvider)
  {
    [HKOverlayRoomSleepViewController createInteractiveChartViewControllerForTypeIdentifier:a2 chartFactory:self applicationItems:? displayDate:? preferredOverlay:? restorationUserActivity:? trendModel:? factorDisplayTypes:? additionalChartOptions:?];
  }

  sleepChartFormatter = [factoryCopy sleepChartFormatter];

  if (sleepChartFormatter)
  {
    if (!modelCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [HKOverlayRoomSleepViewController createInteractiveChartViewControllerForTypeIdentifier:a2 chartFactory:self applicationItems:? displayDate:? preferredOverlay:? restorationUserActivity:? trendModel:? factorDisplayTypes:? additionalChartOptions:?];
    if (!modelCopy)
    {
      goto LABEL_8;
    }
  }

  if ([modelCopy selectTrendInitially])
  {
    v24 = 1;
    goto LABEL_9;
  }

LABEL_8:
  v24 = 0;
LABEL_9:
  v25 = [HKOverlayRoomSleepViewController alloc];
  sleepDataSourceProvider2 = [factoryCopy sleepDataSourceProvider];
  sleepChartFormatter2 = [factoryCopy sleepChartFormatter];
  v28 = [(HKOverlayRoomSleepViewController *)v25 initWithDisplayDate:dateCopy applicationItems:itemsCopy sleepDataSourceProvider:sleepDataSourceProvider2 sleepChartFormatter:sleepChartFormatter2 mode:v24 trendModel:modelCopy factorDisplayTypes:typesCopy];

  [(HKOverlayRoomViewController *)v28 setRestorationUserActivity:activityCopy];
  [(HKOverlayRoomViewController *)v28 setAdditionalChartOptions:options];

  return v28;
}

- (HKOverlayRoomSleepViewController)initWithDisplayDate:(id)date applicationItems:(id)items sleepDataSourceProvider:(id)provider sleepChartFormatter:(id)formatter mode:(int64_t)mode trendModel:(id)model factorDisplayTypes:(id)types
{
  v47 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  itemsCopy = items;
  providerCopy = provider;
  obj = model;
  formatterCopy = formatter;
  modelCopy = model;
  typesCopy = types;
  v20 = [HKOverlayRoomTrendContext findInitialDateFromTrendModel:modelCopy];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = dateCopy;
  }

  v23 = v22;

  v44.receiver = self;
  v44.super_class = HKOverlayRoomSleepViewController;
  v24 = [(HKOverlayRoomViewController *)&v44 initWithDisplayDate:v23 applicationItems:itemsCopy factorDisplayTypes:typesCopy mode:mode];

  if (v24)
  {
    _HKInitializeLogging();
    v25 = *MEMORY[0x1E696B998];
    if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      v27 = objc_opt_class();
      *buf = 138543362;
      v46 = v27;
      v28 = v27;
      _os_log_impl(&dword_1C3942000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@] init", buf, 0xCu);
    }

    formatterCopy = [(HKOverlayRoomSleepViewController *)v24 _initialTrendSelectedForMode:mode trendModel:modelCopy, obj, formatterCopy];
    objc_storeWeak(&v24->_sleepDataSourceProvider, providerCopy);
    objc_storeStrong(&v24->_sleepChartFormatter, formatter);
    [(HKOverlayRoomSleepViewController *)v24 _setDefaultChartFormatterFonts];
    v24->baseDisplayIsSchedule = formatterCopy ^ 1;
    v24->shouldHighlightBaseDisplayContext = 0;
    displayTypeController = [itemsCopy displayTypeController];
    v31 = [displayTypeController displayTypeWithIdentifier:&unk_1F4384510];
    sleepDisplayType = v24->_sleepDisplayType;
    v24->_sleepDisplayType = v31;

    v33 = v24->_sleepDisplayType;
    chartDataCacheController = [itemsCopy chartDataCacheController];
    healthStore = [itemsCopy healthStore];
    v36 = [HKSleepUtilities buildSleepChartCachesWithDisplayType:v33 dataSourceProvider:providerCopy cacheController:chartDataCacheController healthStore:healthStore];
    sleepChartCaches = v24->_sleepChartCaches;
    v24->_sleepChartCaches = v36;

    [(HKOverlayRoomSleepViewController *)v24 _installUpdateObserversForGoalsAndSchedulesWithApplicationItems:itemsCopy];
    objc_storeStrong(&v24->_trendModel, obja);
    [(HKOverlayRoomViewController *)v24 setShouldSelectInitialOverlay:formatterCopy];
    trendContextLocation = v24->_trendContextLocation;
    v24->_trendContextLocation = 0;

    comparisonContextLocation = v24->_comparisonContextLocation;
    v24->_comparisonContextLocation = 0;
  }

  return v24;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B998];
  if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_1C3942000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] dealloc", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = HKOverlayRoomSleepViewController;
  [(HKOverlayRoomViewController *)&v6 dealloc];
}

+ (int64_t)indexForOverlaySleepRoomSegment:(int64_t)segment
{
  if (segment == 2)
  {
    return 2;
  }

  else
  {
    return segment != 1;
  }
}

- (BOOL)_initialTrendSelectedForMode:(int64_t)mode trendModel:(id)model
{
  v16 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v6 = modelCopy;
  if (mode == 3)
  {
    selectTrendInitially = 0;
  }

  else
  {
    selectTrendInitially = [modelCopy selectTrendInitially];
  }

  _HKInitializeLogging();
  v8 = *MEMORY[0x1E696B998];
  if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 1024;
    v15 = selectTrendInitially;
    v10 = v13;
    _os_log_impl(&dword_1C3942000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning initial trend selected: %d", &v12, 0x12u);
  }

  return selectTrendInitially;
}

- (void)_installUpdateObserversForGoalsAndSchedulesWithApplicationItems:(id)items
{
  itemsCopy = items;
  displayTypeController = [itemsCopy displayTypeController];
  v12 = [displayTypeController displayTypeWithIdentifier:&unk_1F4384528];

  displayTypeController2 = [itemsCopy displayTypeController];
  v7 = [displayTypeController2 displayTypeWithIdentifier:&unk_1F4384540];

  sleepChartCaches = [(HKOverlayRoomSleepViewController *)self sleepChartCaches];
  v9 = [sleepChartCaches objectForKeyedSubscript:@"HKSleepChartCacheIdentifierSleepConsistency"];

  chartDataCacheController = [itemsCopy chartDataCacheController];
  [chartDataCacheController addCustomChartCache:v9 forDisplayType:v12];

  chartDataCacheController2 = [itemsCopy chartDataCacheController];

  [chartDataCacheController2 addCustomChartCache:v9 forDisplayType:v7];
}

- (void)_setDefaultChartFormatterFonts
{
  sleepChartFormatter = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
  majorFont = [sleepChartFormatter majorFont];

  if (!majorFont)
  {
    hk_chartCurrentValueValueFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
    sleepChartFormatter2 = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
    [sleepChartFormatter2 setMajorFont:hk_chartCurrentValueValueFont];
  }

  sleepChartFormatter3 = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
  minorFont = [sleepChartFormatter3 minorFont];

  if (!minorFont)
  {
    hk_chartCurrentValueUnitFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueUnitFont];
    sleepChartFormatter4 = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
    [sleepChartFormatter4 setMinorFont:hk_chartCurrentValueUnitFont];
  }
}

- (void)viewDidLoad
{
  v9 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B998];
  if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_1C3942000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] viewDidLoad", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = HKOverlayRoomSleepViewController;
  [(HKOverlayRoomViewController *)&v6 viewDidLoad];
}

- (void)setDurationContextSelected:(BOOL)selected
{
  self->durationContextSelected = selected;
  if (selected)
  {
    [(HKOverlayRoomSleepViewController *)self setBaseDisplayIsDuration];
  }
}

- (void)setScheduleContextSelected:(BOOL)selected
{
  self->scheduleContextSelected = selected;
  if (selected)
  {
    [(HKOverlayRoomSleepViewController *)self setBaseDisplayIsSchedule];
  }
}

- (void)setComparisonContextSelected:(BOOL)selected
{
  self->comparisonContextSelected = selected;
  if (selected)
  {
    [(HKOverlayRoomSleepViewController *)self setBaseDisplayIsDuration];
  }
}

- (void)setBaseDisplayIsDuration
{
  if (self->baseDisplayIsSchedule)
  {
    self->baseDisplayIsSchedule = 0;
    [(HKOverlayRoomViewController *)self refreshOverlayContextItems];
  }
}

- (void)setBaseDisplayIsSchedule
{
  if (!self->baseDisplayIsSchedule)
  {
    self->baseDisplayIsSchedule = 1;
    [(HKOverlayRoomViewController *)self refreshOverlayContextItems];
  }
}

- (void)setShouldHighlightBaseDisplayContext
{
  if (!self->shouldHighlightBaseDisplayContext)
  {
    self->shouldHighlightBaseDisplayContext = 1;
    [(HKOverlayRoomViewController *)self refreshOverlayContextItems];
  }
}

- (void)setStagePercentageContextSelected:(BOOL)selected
{
  stagePercentageContextSelected = self->stagePercentageContextSelected;
  if (stagePercentageContextSelected != selected && stagePercentageContextSelected != self->stagePercentageContextWillBeSelected)
  {
    chartController = [(HKOverlayRoomViewController *)self chartController];
    [chartController updatePrimaryGraphViewController];

    self->stagePercentageContextSelected = selected;
  }
}

- (void)didChangeFromContextItem:(id)item toContextItem:(id)contextItem
{
  v14 = *MEMORY[0x1E69E9840];
  contextItemCopy = contextItem;
  itemCopy = item;
  _HKInitializeLogging();
  v8 = *MEMORY[0x1E696B998];
  if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138543362;
    v13 = objc_opt_class();
    v10 = v13;
    _os_log_impl(&dword_1C3942000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] didChangeFromContextItem", buf, 0xCu);
  }

  v11.receiver = self;
  v11.super_class = HKOverlayRoomSleepViewController;
  [(HKOverlayRoomViewController *)&v11 didChangeFromContextItem:itemCopy toContextItem:contextItemCopy];
}

- (id)createChartOverlayViewController
{
  if ([(HKOverlayRoomViewController *)self controllerMode]!= 3)
  {
    v3 = [HKOverlayRoomTrendContext findStartingTimeScopeFromTrendModel:self->_trendModel];
    if (v3 != 8)
    {
      v4 = v3;
      applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
      timeScopeController = [applicationItems timeScopeController];
      [timeScopeController setSelectedTimeScope:v4];
    }
  }

  v21 = [(HKOverlayRoomViewController *)self additionalChartOptions]| 0x12200;
  v20 = [HKInteractiveChartOverlaySleepViewController alloc];
  applicationItems2 = [(HKOverlayRoomViewController *)self applicationItems];
  healthStore = [applicationItems2 healthStore];
  primaryDisplayType = [(HKOverlayRoomViewController *)self primaryDisplayType];
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
  v15 = dateCache;
  v16 = [(HKInteractiveChartOverlayViewController *)v20 initWithHealthStore:healthStore primaryDisplayType:primaryDisplayType unitPreferenceController:unitController dateCache:dateCache chartDataCacheController:chartDataCacheController selectedTimeScopeController:timeScopeController2 sampleTypeDateRangeController:sampleDateRangeController initialXValue:displayDate currentCalendarOverride:0 options:v21];

  [(HKInteractiveChartViewController *)v16 setCurrentValueViewDataSourceDelegate:self];
  [(HKInteractiveChartViewController *)v16 setCurrentOverlayLocationProvider:self];

  return v16;
}

- (id)_buildSleepDisplayTypeWithApplicationItems:(id)items sleepSeriesType:(int64_t)type customSleepSeriesMapping:(id)mapping customSleepChartFormatter:(id)formatter isStackedChart:(BOOL)chart
{
  itemsCopy = items;
  mappingCopy = mapping;
  formatterCopy = formatter;
  v25 = formatterCopy;
  if (formatterCopy)
  {
    sleepChartFormatter = formatterCopy;
  }

  else
  {
    sleepChartFormatter = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
  }

  v26 = sleepChartFormatter;
  healthStore = [itemsCopy healthStore];
  sleepDisplayType = [(HKOverlayRoomSleepViewController *)self sleepDisplayType];
  unitController = [itemsCopy unitController];
  displayTypeController = [itemsCopy displayTypeController];
  chartDataCacheController = [itemsCopy chartDataCacheController];
  sleepChartCaches = [(HKOverlayRoomSleepViewController *)self sleepChartCaches];
  LOBYTE(v23) = chart;
  v20 = [HKSleepUtilities sleepDisplayTypesWithHealthStore:healthStore sleepDisplayType:sleepDisplayType unitController:unitController displayTypeController:displayTypeController chartCacheController:chartDataCacheController sleepChartFormatter:v26 sleepSeriesType:type sleepChartCaches:sleepChartCaches customSleepSeriesMapping:mappingCopy isStackedChart:v23];

  firstObject = [v20 firstObject];

  return firstObject;
}

- (id)_buildDurationAverageSeries
{
  v2 = objc_alloc_init(_HKSleepDurationAverageSeries);
  hk_sleepAsleepColor = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
  v4 = [HKStrokeStyle strokeStyleWithColor:hk_sleepAsleepColor lineWidth:2.0];

  [v4 setDashStyle:0];
  [(HKSleepDurationSeries *)v2 setGoalLineStrokeStyle:v4];
  [(HKSleepDurationSeries *)v2 setGoalLineMarkerStyle:0];
  [(HKBarSeries *)v2 setTiledStrokeStyle:0];
  [(HKSleepDurationSeries *)v2 setDefaultFillStyles:0];

  return v2;
}

- (id)_buildDurationAverageFormatter
{
  v3 = objc_alloc_init(_HKSleepDurationAverageFormatter);
  sleepChartFormatter = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
  majorFont = [sleepChartFormatter majorFont];
  [(HKInteractiveChartDataFormatter *)v3 setMajorFont:majorFont];

  sleepChartFormatter2 = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
  minorFont = [sleepChartFormatter2 minorFont];
  [(HKInteractiveChartDataFormatter *)v3 setMinorFont:minorFont];

  [(HKInteractiveChartDataFormatter *)v3 setUnitController:0];
  [(HKInteractiveChartDataFormatter *)v3 setDisplayType:0];

  return v3;
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"SLEEP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v4;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)items
{
  itemsCopy = items;
  healthStore = [itemsCopy healthStore];
  sleepDisplayType = [(HKOverlayRoomSleepViewController *)self sleepDisplayType];
  unitController = [itemsCopy unitController];
  displayTypeController = [itemsCopy displayTypeController];
  chartDataCacheController = [itemsCopy chartDataCacheController];

  sleepChartFormatter = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
  initialSleepSeriesType = [(HKOverlayRoomSleepViewController *)self initialSleepSeriesType];
  sleepChartCaches = [(HKOverlayRoomSleepViewController *)self sleepChartCaches];
  LOBYTE(v16) = 0;
  v13 = [HKSleepUtilities sleepDisplayTypesWithHealthStore:healthStore sleepDisplayType:sleepDisplayType unitController:unitController displayTypeController:displayTypeController chartCacheController:chartDataCacheController sleepChartFormatter:sleepChartFormatter sleepSeriesType:initialSleepSeriesType sleepChartCaches:sleepChartCaches customSleepSeries:0 isStackedChart:v16];

  firstObject = [v13 firstObject];

  return firstObject;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  v15[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  if (mode == 3)
  {
    v13 = [(HKOverlayRoomSleepViewController *)self _fullContextsForApplicationItems:itemsCopy overlayChartController:controllerCopy];
  }

  else if (mode == 1)
  {
    v10 = [HKOverlayContextSectionContainer alloc];
    v11 = [(HKOverlayRoomSleepViewController *)self _primaryContextForApplicationItems:itemsCopy overlayChartController:controllerCopy];
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

- (BOOL)supportsShowAllFilters
{
  if (![(HKOverlayRoomViewController *)self controllerMode])
  {
    return [(HKOverlayRoomSleepViewController *)self initialSleepSeriesType]== 4;
  }

  v4.receiver = self;
  v4.super_class = HKOverlayRoomSleepViewController;
  return [(HKOverlayRoomViewController *)&v4 supportsShowAllFilters];
}

- (int64_t)initialSleepSeriesType
{
  selfCopy = self;
  controllerMode = [(HKOverlayRoomViewController *)self controllerMode];
  trendModel = [(HKOverlayRoomSleepViewController *)selfCopy trendModel];
  LODWORD(selfCopy) = [(HKOverlayRoomSleepViewController *)selfCopy _initialTrendSelectedForMode:controllerMode trendModel:trendModel];

  if (selfCopy)
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

- (id)_primaryContextForApplicationItems:(id)items overlayChartController:(id)controller
{
  v19[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  trendModel = [(HKOverlayRoomSleepViewController *)self trendModel];
  if (trendModel && (v9 = trendModel, -[HKOverlayRoomSleepViewController trendModel](self, "trendModel"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 selectTrendInitially], v10, v9, v11))
  {
    v12 = [(HKOverlayRoomSleepViewController *)self _buildSleepTrendContext:itemsCopy overlayChartController:controllerCopy];
    v13 = [[HKOverlayContextLocation alloc] initWithContainerIndex:0 sectionIndex:0 itemIndex:0];
    [(HKOverlayRoomSleepViewController *)self setTrendContextLocation:v13];
  }

  else
  {
    v12 = [(HKOverlayRoomSleepViewController *)self _consistencyContextForApplicationItems:itemsCopy overlayMode:1 isPrimaryContext:1];
  }

  v19[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v15 = [[HKOverlayContextSection alloc] initWithSectionTitle:0 overlayContextItems:v14];
  v18 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];

  return v16;
}

- (id)_buildSleepTrendContext:(id)context overlayChartController:(id)controller
{
  controllerCopy = controller;
  contextCopy = context;
  v8 = [(HKOverlayRoomSleepViewController *)self _buildDurationDisplayTypeWithApplicationItems:contextCopy];
  v9 = [_HKSleepTrendContext alloc];
  trendModel = [(HKOverlayRoomSleepViewController *)self trendModel];
  v11 = [(_HKSleepTrendContext *)v9 initWithBaseDisplayType:v8 trendModel:trendModel overlayChartController:controllerCopy applicationItems:contextCopy overlayMode:[(HKOverlayRoomViewController *)self controllerMode] contextChangeDelegate:self];

  return v11;
}

- (id)_fullContextsForApplicationItems:(id)items overlayChartController:(id)controller
{
  v122[4] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  v8 = [(HKOverlayRoomSleepViewController *)self _buildDurationDisplayTypeWithApplicationItems:itemsCopy];
  v9 = [(HKOverlayRoomSleepViewController *)self _durationAmountContextForApplicationItems:itemsCopy durationDisplayType:v8];
  v10 = [(HKOverlayRoomSleepViewController *)self _durationGoalContextForApplicationItems:itemsCopy durationDisplayType:v8 overlayMode:3 isPrimaryContext:0];
  v11 = [(HKOverlayRoomSleepViewController *)self _durationAverageContextForApplicationItems:itemsCopy durationDisplayType:v8 useInBedAverage:1];
  v103 = v8;
  v12 = [(HKOverlayRoomSleepViewController *)self _durationAverageContextForApplicationItems:itemsCopy durationDisplayType:v8 useInBedAverage:0];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v101 = v10;
  v102 = v9;
  v122[0] = v9;
  v122[1] = v10;
  v99 = v12;
  v100 = v11;
  v122[2] = v11;
  v122[3] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:4];
  [v13 addObjectsFromArray:v14];

  trendModel = [(HKOverlayRoomSleepViewController *)self trendModel];

  if (trendModel)
  {
    v16 = [(HKOverlayRoomSleepViewController *)self _buildSleepTrendContext:itemsCopy overlayChartController:controllerCopy];
    [v13 addObject:v16];
    v17 = -[HKOverlayContextLocation initWithContainerIndex:sectionIndex:itemIndex:]([HKOverlayContextLocation alloc], "initWithContainerIndex:sectionIndex:itemIndex:", 1, 1, [v13 count] - 1);
    [(HKOverlayRoomSleepViewController *)self setTrendContextLocation:v17];
  }

  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v19 = [v18 localizedStringForKey:@"SLEEP_AMOUNT_SECTION_HEADER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];

  v97 = v19;
  v98 = v13;
  v105 = [[HKOverlayContextSection alloc] initWithSectionTitle:v19 overlayContextItems:v13];
  v20 = [(HKOverlayRoomSleepViewController *)self _consistencyContextForApplicationItems:itemsCopy overlayMode:3 isPrimaryContext:1];
  v21 = [HKOverlayContextSection alloc];
  v96 = v20;
  v121 = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
  v104 = [(HKOverlayContextSection *)v21 initWithSectionTitle:0 overlayContextItems:v22];

  v23 = [(HKOverlayRoomSleepViewController *)self _buildDurationDisplayTypeForStackedWithApplicationItems:itemsCopy];
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = [_HKSleepComparisonContext alloc];
  v26 = [MEMORY[0x1E696C3D0] dataTypeWithCode:5];
  v27 = [(_HKSleepComparisonContext *)v25 initWithStackedSampleType:v26 currentCalendarOverride:0 overlayChartController:controllerCopy applicationItems:itemsCopy contextChangeDelegate:self primarySleepDisplayType:v23];

  v28 = [_HKSleepComparisonContext alloc];
  v29 = [MEMORY[0x1E696C3D0] dataTypeWithCode:61];
  v30 = [(_HKSleepComparisonContext *)v28 initWithStackedSampleType:v29 currentCalendarOverride:0 overlayChartController:controllerCopy applicationItems:itemsCopy contextChangeDelegate:self primarySleepDisplayType:v23];

  v94 = v30;
  v95 = v27;
  v120[0] = v27;
  v120[1] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:2];
  [v24 addObjectsFromArray:v31];

  v32 = [_HKSleepComparisonContext alloc];
  v33 = [MEMORY[0x1E696C3D0] dataTypeWithCode:256];
  v108 = v23;
  v109 = controllerCopy;
  v34 = itemsCopy;
  v35 = [(_HKSleepComparisonContext *)v32 initWithStackedSampleType:v33 currentCalendarOverride:0 overlayChartController:controllerCopy applicationItems:itemsCopy contextChangeDelegate:self primarySleepDisplayType:v23];

  selfCopy = self;
  v37 = v24;
  v93 = v35;
  [v24 addObject:v35];
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v38 = selfCopy;
  obj = [(HKOverlayRoomViewController *)selfCopy factorDisplayTypes];
  v39 = [obj countByEnumeratingWithState:&v110 objects:v119 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v111;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v111 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v110 + 1) + 8 * i);
        v44 = [_HKSleepComparisonFactorContext alloc];
        sleepChartFormatter = [(HKOverlayRoomSleepViewController *)v38 sleepChartFormatter];
        v46 = [(_HKSleepComparisonFactorContext *)v44 initWithStackedFactorDisplayType:v43 currentCalendarOverride:0 overlayChartController:v109 applicationItems:v34 contextChangeDelegate:v38 primarySleepDisplayType:v108 sleepChartFormatter:sleepChartFormatter];

        if ([(HKOverlayRoomViewController *)v38 factorDisplayTypeIsActive:v43])
        {
          [v37 insertObject:v46 atIndex:0];
        }

        else
        {
          [v37 addObject:v46];
        }
      }

      v40 = [obj countByEnumeratingWithState:&v110 objects:v119 count:16];
    }

    while (v40);
  }

  v92 = v37;
  v90 = [[HKOverlayContextSection alloc] initWithSectionTitle:0 overlayContextItems:v37];
  v87 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = v38;
  v91 = [(HKOverlayRoomSleepViewController *)v38 _buildConsistencyDisplayTypeWithApplicationItems:v34];
  v48 = [HKOverlayContextSectionContainer alloc];
  v49 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v50 = [v49 localizedStringForKey:@"SLEEP_ANALYSIS_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  v118[0] = v104;
  v118[1] = v105;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];
  v89 = [(HKOverlayContextSectionContainer *)v48 initWithContainerTitle:v50 overlayContextSections:v51 primaryDisplayType:v91];

  [v87 addObject:v89];
  obja = [(HKOverlayRoomSleepViewController *)v38 _buildStagesDisplayTypeWithApplicationItems:v34];
  v88 = v34;
  v52 = [(HKOverlayRoomSleepViewController *)v38 _buildStagesDurationDisplayTypeWithApplicationItems:v34];
  v53 = [HKOverlayContextSection alloc];
  v85 = [(HKOverlayRoomSleepViewController *)v38 _stageDurationContextForApplicationItems:v34 baseDisplayType:obja sleepCategoryValue:2];
  v116[0] = v85;
  v84 = [(HKOverlayRoomSleepViewController *)v38 _stageDurationContextForApplicationItems:v34 baseDisplayType:obja sleepCategoryValue:5];
  v116[1] = v84;
  v83 = [(HKOverlayRoomSleepViewController *)v38 _stageDurationContextForApplicationItems:v34 baseDisplayType:obja sleepCategoryValue:3];
  v116[2] = v83;
  v82 = [(HKOverlayRoomSleepViewController *)v38 _stageDurationContextForApplicationItems:v34 baseDisplayType:obja sleepCategoryValue:4];
  v116[3] = v82;
  v81 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:4];
  v80 = [(HKOverlayContextSection *)v53 initWithSectionTitle:0 overlayContextItems:v81];
  v117[0] = v80;
  v54 = [HKOverlayContextSection alloc];
  v79 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v55 = [v79 localizedStringForKey:@"SLEEP_STAGES_PERCENTAGE_SECTION_HEADER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
  applicationItems = [(HKOverlayRoomViewController *)v38 applicationItems];
  v56 = v52;
  v77 = [(HKOverlayRoomSleepViewController *)v38 _sleepStagePercentageContextForStage:2 applicationItems:applicationItems baseDisplayType:v52];
  v115[0] = v77;
  applicationItems2 = [(HKOverlayRoomViewController *)v38 applicationItems];
  v86 = v52;
  v75 = [(HKOverlayRoomSleepViewController *)v38 _sleepStagePercentageContextForStage:5 applicationItems:applicationItems2 baseDisplayType:v52];
  v115[1] = v75;
  applicationItems3 = [(HKOverlayRoomViewController *)v38 applicationItems];
  v58 = [(HKOverlayRoomSleepViewController *)v47 _sleepStagePercentageContextForStage:3 applicationItems:applicationItems3 baseDisplayType:v52];
  v115[2] = v58;
  applicationItems4 = [(HKOverlayRoomViewController *)v47 applicationItems];
  v60 = [(HKOverlayRoomSleepViewController *)v47 _sleepStagePercentageContextForStage:4 applicationItems:applicationItems4 baseDisplayType:v56];
  v115[3] = v60;
  v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:4];
  v62 = [(HKOverlayContextSection *)v54 initWithSectionTitle:v55 overlayContextItems:v61];
  v117[1] = v62;
  v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];

  v64 = [HKOverlayContextSectionContainer alloc];
  v65 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v66 = [v65 localizedStringForKey:@"SLEEP_STAGES_OVERLAY_CONTAINER_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
  v67 = [(HKOverlayContextSectionContainer *)v64 initWithContainerTitle:v66 overlayContextSections:v63 primaryDisplayType:obja];

  [v87 insertObject:v67 atIndex:0];
  v68 = [HKOverlayContextSectionContainer alloc];
  v69 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v70 = [v69 localizedStringForKey:@"SLEEP_COMPARISON_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];
  v114 = v90;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];
  v72 = [(HKOverlayContextSectionContainer *)v68 initWithContainerTitle:v70 overlayContextSections:v71];

  [v87 addObject:v72];
  v73 = [[HKOverlayContextLocation alloc] initWithContainerIndex:2 sectionIndex:0 itemIndex:0];
  [(HKOverlayRoomSleepViewController *)v47 setComparisonContextLocation:v73];

  return v87;
}

- (id)_durationGoalContextForApplicationItems:(id)items durationDisplayType:(id)type overlayMode:(int64_t)mode isPrimaryContext:(BOOL)context
{
  contextCopy = context;
  typeCopy = type;
  v11 = [(HKOverlayRoomSleepViewController *)self _buildDurationGoalDisplayTypeWithApplicationItems:items];
  v12 = [_HKSleepDurationGoalContext alloc];
  chartController = [(HKOverlayRoomViewController *)self chartController];
  v14 = [(_HKSleepDurationGoalContext *)v12 initWithBaseDisplayType:typeCopy overlayDisplayType:v11 overlayChartController:chartController overlayMode:mode isPrimaryContext:contextCopy contextChangeDelegate:self];

  return v14;
}

- (id)_consistencyContextForApplicationItems:(id)items overlayMode:(int64_t)mode isPrimaryContext:(BOOL)context
{
  contextCopy = context;
  itemsCopy = items;
  v9 = [(HKOverlayRoomSleepViewController *)self _buildConsistencyDisplayTypeWithApplicationItems:itemsCopy];
  v10 = [(HKOverlayRoomSleepViewController *)self _buildScheduleDisplayTypeWithApplicationItems:itemsCopy];

  v11 = [_HKSleepScheduleContext alloc];
  chartController = [(HKOverlayRoomViewController *)self chartController];
  v13 = [(_HKSleepScheduleContext *)v11 initWithBaseDisplayType:v9 overlayDisplayType:v10 overlayChartController:chartController overlayMode:mode isPrimaryContext:contextCopy contextChangeDelegate:self];

  return v13;
}

- (id)_durationAverageContextForApplicationItems:(id)items durationDisplayType:(id)type useInBedAverage:(BOOL)average
{
  averageCopy = average;
  v24[4] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  typeCopy = type;
  sleepDisplayType = [(HKOverlayRoomSleepViewController *)self sleepDisplayType];
  unitController = [itemsCopy unitController];
  v11 = [HKSleepUtilities buildSleepGraphSeriesForSleepSeriesType:0 sleepDisplayType:sleepDisplayType unitController:unitController numericAxisConfigurationOverrides:0 timeScope:6];

  if (averageCopy)
  {
    [v11 setHighlightedSleepValue:&unk_1F4384558];
    _buildDurationAverageSeries = [(HKOverlayRoomSleepViewController *)self _buildDurationAverageSeries];
    [_buildDurationAverageSeries setAverageValueType:&unk_1F4384558];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:_HKCategoryValueSleepAnalysisDefaultAsleepValue()];
    [v11 setHighlightedSleepValue:v13];

    _buildDurationAverageSeries = [(HKOverlayRoomSleepViewController *)self _buildDurationAverageSeries];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:_HKCategoryValueSleepAnalysisDefaultAsleepValue()];
    [_buildDurationAverageSeries setAverageValueType:v14];
  }

  v23[0] = &unk_1F4384570;
  v23[1] = &unk_1F4384588;
  v24[0] = v11;
  v24[1] = _buildDurationAverageSeries;
  v23[2] = &unk_1F43845A0;
  v23[3] = &unk_1F43845B8;
  v24[2] = _buildDurationAverageSeries;
  v24[3] = _buildDurationAverageSeries;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
  _buildDurationAverageFormatter = [(HKOverlayRoomSleepViewController *)self _buildDurationAverageFormatter];
  v17 = [(HKOverlayRoomSleepViewController *)self _buildDurationAverageDisplayTypeWithApplicationItems:itemsCopy customSleepSeriesMapping:v15 customSleepChartFormatter:_buildDurationAverageFormatter];
  v18 = [_HKSleepDurationAverageContext alloc];
  chartController = [(HKOverlayRoomViewController *)self chartController];
  v20 = [(_HKSleepDurationAverageContext *)v18 initWithBaseDisplayType:typeCopy overlayDisplayType:v17 overlayChartController:chartController useInBedAverage:averageCopy contextChangeDelegate:self overlayAverageSeries:_buildDurationAverageSeries averageChartFormatter:_buildDurationAverageFormatter];

  return v20;
}

- (id)_durationAmountContextForApplicationItems:(id)items durationDisplayType:(id)type
{
  typeCopy = type;
  v6 = [_HKSleepDurationAmountContext alloc];
  chartController = [(HKOverlayRoomViewController *)self chartController];
  v8 = [(_HKSleepDurationAmountContext *)v6 initWithBaseDisplayType:typeCopy overlayChartController:chartController contextChangeDelegate:self];

  return v8;
}

- (id)_sleepStagePercentageContextForStage:(int64_t)stage applicationItems:(id)items baseDisplayType:(id)type
{
  typeCopy = type;
  v9 = [(HKOverlayRoomSleepViewController *)self _buildStagesDurationDisplayTypeWithApplicationItems:items];
  [(HKOverlayRoomSleepViewController *)self _updateHighlightedSleepStage:stage onDisplayType:v9];
  v10 = [HKSleepStagePercentageContext alloc];
  chartController = [(HKOverlayRoomViewController *)self chartController];
  v12 = [(HKSleepStagePercentageContext *)v10 initWithSleepStage:stage baseDisplayType:typeCopy overlayDisplayType:v9 overlayChartController:chartController contextChangeDelegate:self];

  return v12;
}

- (id)_stageDurationContextForApplicationItems:(id)items baseDisplayType:(id)type sleepCategoryValue:(int64_t)value
{
  typeCopy = type;
  v9 = [(HKOverlayRoomSleepViewController *)self _buildStagesDisplayTypeWithApplicationItems:items];
  [(HKOverlayRoomSleepViewController *)self _updateHighlightedSleepStage:value onDisplayType:v9];
  v10 = [HKSleepStageDurationContext alloc];
  chartController = [(HKOverlayRoomViewController *)self chartController];
  v12 = [(HKSleepStageDurationContext *)v10 initWithBaseDisplayType:typeCopy overlayDisplayType:v9 overlayChartController:chartController contextChangeDelegate:self sleepValue:value];

  return v12;
}

- (void)_updateHighlightedSleepStage:(int64_t)stage onDisplayType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E695DFD8];
    seriesForTimeScopeMapping = [typeCopy seriesForTimeScopeMapping];
    allValues = [seriesForTimeScopeMapping allValues];
    v9 = [v6 setWithArray:allValues];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__HKOverlayRoomSleepViewController__updateHighlightedSleepStage_onDisplayType___block_invoke;
    v10[3] = &__block_descriptor_40_e27_v24__0__HKGraphSeries_8_B16l;
    v10[4] = stage;
    [v9 enumerateObjectsUsingBlock:v10];
  }
}

void __79__HKOverlayRoomSleepViewController__updateHighlightedSleepStage_onDisplayType___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 conformsToProtocol:&unk_1F43FB0F0])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
    [v4 setHighlightedSleepStage:v3];
  }
}

- (int64_t)initialSelectedContainerIndexForMode:(int64_t)mode
{
  if (mode == 3)
  {
    trendModel = [(HKOverlayRoomSleepViewController *)self trendModel];
    selectTrendInitially = [trendModel selectTrendInitially];

    if (selectTrendInitially)
    {
      return 1;
    }
  }

  v8.receiver = self;
  v8.super_class = HKOverlayRoomSleepViewController;
  return [(HKOverlayRoomViewController *)&v8 initialSelectedContainerIndexForMode:mode];
}

- (id)initialSelectedContextForMode:(int64_t)mode containerIndex:(int64_t)index
{
  v20 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v6 = *MEMORY[0x1E696B998];
  if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *v19 = 138543618;
    *&v19[4] = objc_opt_class();
    *&v19[12] = 2048;
    *&v19[14] = index;
    v8 = *&v19[4];
    _os_log_impl(&dword_1C3942000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Determining initial selected context for container index: %ld", v19, 0x16u);
  }

  v9 = [(HKOverlayRoomViewController *)self chartController:*v19];
  [v9 updatePrimaryGraphViewController];

  comparisonContextLocation = [(HKOverlayRoomSleepViewController *)self comparisonContextLocation];
  if (comparisonContextLocation)
  {
    v11 = comparisonContextLocation;
    comparisonContextLocation2 = [(HKOverlayRoomSleepViewController *)self comparisonContextLocation];
    containerIndex = [comparisonContextLocation2 containerIndex];

    if (containerIndex == index)
    {
      comparisonContextLocation3 = [(HKOverlayRoomSleepViewController *)self comparisonContextLocation];
      goto LABEL_11;
    }
  }

  trendModel = [(HKOverlayRoomSleepViewController *)self trendModel];
  if ([trendModel selectTrendInitially])
  {
    trendContextLocation = [(HKOverlayRoomSleepViewController *)self trendContextLocation];
    containerIndex2 = [trendContextLocation containerIndex];

    if (containerIndex2 == index)
    {
      comparisonContextLocation3 = [(HKOverlayRoomSleepViewController *)self trendContextLocation];
      goto LABEL_11;
    }
  }

  else
  {
  }

  comparisonContextLocation3 = 0;
LABEL_11:

  return comparisonContextLocation3;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  itemsCopy = items;
  dateCopy = date;
  v10 = [HKOverlayRoomSleepViewController alloc];
  sleepDataSourceProvider = [(HKOverlayRoomSleepViewController *)self sleepDataSourceProvider];
  sleepChartFormatter = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
  trendModel = [(HKOverlayRoomSleepViewController *)self trendModel];
  factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v15 = [(HKOverlayRoomSleepViewController *)v10 initWithDisplayDate:dateCopy applicationItems:itemsCopy sleepDataSourceProvider:sleepDataSourceProvider sleepChartFormatter:sleepChartFormatter mode:mode trendModel:trendModel factorDisplayTypes:factorDisplayTypes];

  [(HKOverlayRoomViewController *)v15 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:mode]];

  return v15;
}

- (id)infographicViewControllerForDisplayType:(id)type healthStore:(id)store
{
  v19[5] = *MEMORY[0x1E69E9840];
  v5 = [HKInfographicViewController alloc];
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"SLEEP_STAGES_DESCRIPTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
  v8 = [(HKOverlayRoomSleepViewController *)self _itemForTitle:0 titleAccessoryColor:0 description:v7];
  v9 = [(HKOverlayRoomSleepViewController *)self _itemForSleepStageInfographicWithStage:2, v8];
  v19[1] = v9;
  v10 = [(HKOverlayRoomSleepViewController *)self _itemForSleepStageInfographicWithStage:5];
  v19[2] = v10;
  v11 = [(HKOverlayRoomSleepViewController *)self _itemForSleepStageInfographicWithStage:3];
  v19[3] = v11;
  v12 = [(HKOverlayRoomSleepViewController *)self _itemForSleepStageInfographicWithStage:4];
  v19[4] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
  v14 = [(HKInfographicViewController *)v5 initWithItems:v13];

  v15 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v16 = [v15 localizedStringForKey:@"SLEEP_STAGES" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Acacia"];
  [(HKInfographicViewController *)v14 setTitle:v16];

  v17 = [[HKModalNavigationController alloc] initWithRootViewController:v14];

  return v17;
}

- (id)_itemForTitle:(id)title titleAccessoryColor:(id)color description:(id)description
{
  titleCopy = title;
  colorCopy = color;
  v9 = MEMORY[0x1E696AD40];
  descriptionCopy = description;
  v11 = objc_alloc_init(v9);
  v12 = 0x1E696A000;
  if (titleCopy)
  {
    v13 = HKInteractiveChartInfographicTitleAttributes();
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
    if (colorCopy)
    {
      v24 = [MEMORY[0x1E69DCAD8] configurationWithFont:v14 scale:1];
      v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle.fill" withConfiguration:v24];
      v16 = [v15 imageWithRenderingMode:2];
      v17 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v16];
      v18 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v17];
      [v11 appendAttributedString:v18];

      v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
      [v11 appendAttributedString:v19];

      [v11 addAttribute:*MEMORY[0x1E69DB650] value:colorCopy range:{0, objc_msgSend(v11, "length")}];
      v12 = 0x1E696A000uLL;
    }

    v20 = [objc_alloc(*(v12 + 2736)) initWithString:titleCopy attributes:v13];
    [v11 appendAttributedString:v20];
  }

  v21 = [objc_alloc(*(v12 + 2736)) initWithString:descriptionCopy];

  v22 = [[HKInfographicContentItem alloc] initWithTitle:v11 description:v21];

  return v22;
}

- (id)_itemForSleepStageInfographicWithStage:(int64_t)stage
{
  v5 = [HKSleepUtilities localizedInfographicTitleForCategoryValue:?];
  v6 = [HKSleepUtilities localizedInfographicDescriptionForCategoryValue:stage];
  v7 = [MEMORY[0x1E69DC888] hk_sleepColorForSleepAnalysis:stage];
  v8 = [(HKOverlayRoomSleepViewController *)self _itemForTitle:v5 titleAccessoryColor:v7 description:v6];

  return v8;
}

- (id)dateRangeFromSelectionContext:(id)context timeScope:(int64_t)scope
{
  contextCopy = context;
  chartController = [(HKOverlayRoomViewController *)self chartController];
  v8 = [chartController dateRangeFromSelectionContext:contextCopy timeScope:scope];

  return v8;
}

- (id)stringForValueRange:(id)range timeScope:(int64_t)scope
{
  rangeCopy = range;
  chartController = [(HKOverlayRoomViewController *)self chartController];
  v8 = [chartController stringForValueRange:rangeCopy timeScope:scope];

  return v8;
}

- (id)titleForSelectedRangeData:(id)data displayType:(id)type
{
  dataCopy = data;
  v6 = [(HKOverlayRoomSleepViewController *)self _sleepColorForSelectedRangeData:dataCopy];
  hk_chartLollipopKeyFont = [MEMORY[0x1E69DB878] hk_chartLollipopKeyFont];
  hk_chartLollipopLabelColor = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  v9 = +[HKSelectedRangeLabel attributedStringForSelectedRangeData:font:foregroundColor:prefixColor:prefersImageAffixes:embedded:](HKSelectedRangeLabel, "attributedStringForSelectedRangeData:font:foregroundColor:prefixColor:prefersImageAffixes:embedded:", dataCopy, hk_chartLollipopKeyFont, hk_chartLollipopLabelColor, v6, [dataCopy prefersImageAffixes], 0);

  return v9;
}

- (id)_sleepColorForSelectedRangeData:(id)data
{
  dataCopy = data;
  prefixColor = [dataCopy prefixColor];

  if (prefixColor)
  {
    prefixColor2 = [dataCopy prefixColor];
LABEL_3:
    v7 = prefixColor2;
    goto LABEL_4;
  }

  stagePercentageContextSelected = [(HKOverlayRoomSleepViewController *)self durationContextSelected]|| [(HKOverlayRoomSleepViewController *)self scheduleContextSelected]|| [(HKOverlayRoomSleepViewController *)self stageDurationContextSelected]|| [(HKOverlayRoomSleepViewController *)self stagePercentageContextSelected];
  if ([dataCopy dataType] == 9)
  {
    if (stagePercentageContextSelected)
    {
      [MEMORY[0x1E69DC888] hk_sleepInactiveInBedColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] hk_sleepInBedColor];
    }

    prefixColor2 = LABEL_14:;
    goto LABEL_3;
  }

  if ([dataCopy dataType] == 10)
  {
    if (stagePercentageContextSelected)
    {
      [MEMORY[0x1E69DC888] hk_sleepInactiveAsleepColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
    }

    goto LABEL_14;
  }

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v7 = [HKSelectedRangeLabel standardPrefixColorForSelectedRangeData:dataCopy defaultColor:labelColor];

LABEL_4:

  return v7;
}

- (void)restoreUserActivityState:(id)state
{
  v15 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B998];
  if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = v7;
    userInfo = [stateCopy userInfo];
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = userInfo;
    _os_log_impl(&dword_1C3942000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Restoring sleep chart with userInfo: %{public}@", buf, 0x16u);
  }

  v10.receiver = self;
  v10.super_class = HKOverlayRoomSleepViewController;
  [(HKOverlayRoomViewController *)&v10 restoreUserActivityState:stateCopy];
}

- (id)restorationStateDictionary
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"bundleName";
  v9[1] = @"chartContext";
  v10[0] = @"SleepHealthAppPlugin";
  v3 = objc_alloc_init(MEMORY[0x1E695DFB0]);
  v10[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v8.receiver = self;
  v8.super_class = HKOverlayRoomSleepViewController;
  restorationStateDictionary = [(HKOverlayRoomViewController *)&v8 restorationStateDictionary];
  v6 = [HKInteractiveChartViewController mergeRestorationDictionary:v4 otherDictionary:restorationStateDictionary];

  return v6;
}

- (void)saveRestorationState
{
  restorationStateDictionary = [(HKOverlayRoomSleepViewController *)self restorationStateDictionary];
  v3 = [HKInteractiveChartViewController baseRestorationUserActivity:restorationStateDictionary activityType:@"com.apple.health.plugin" title:@"Sleep"];
  [HKInteractiveChartViewController saveRestorationUserActivity:v3 viewController:self];
}

- (HKSleepDataSourceProvider)sleepDataSourceProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_sleepDataSourceProvider);

  return WeakRetained;
}

+ (void)createInteractiveChartViewControllerForTypeIdentifier:(uint64_t)a1 chartFactory:(uint64_t)a2 applicationItems:displayDate:preferredOverlay:restorationUserActivity:trendModel:factorDisplayTypes:additionalChartOptions:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOverlayRoomSleepViewController.m" lineNumber:227 description:@"The sleep experience requires an externally provided data source provider."];
}

+ (void)createInteractiveChartViewControllerForTypeIdentifier:(uint64_t)a1 chartFactory:(uint64_t)a2 applicationItems:displayDate:preferredOverlay:restorationUserActivity:trendModel:factorDisplayTypes:additionalChartOptions:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKOverlayRoomSleepViewController.m" lineNumber:228 description:@"The sleep experience requires an externally provided sleep chart formatter."];
}

@end