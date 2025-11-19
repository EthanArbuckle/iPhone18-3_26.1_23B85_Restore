@interface HKOverlayRoomSleepViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
+ (int64_t)indexForOverlaySleepRoomSegment:(int64_t)a3;
- (BOOL)_initialTrendSelectedForMode:(int64_t)a3 trendModel:(id)a4;
- (BOOL)supportsShowAllFilters;
- (HKOverlayRoomSleepViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 sleepDataSourceProvider:(id)a5 sleepChartFormatter:(id)a6 mode:(int64_t)a7 trendModel:(id)a8 factorDisplayTypes:(id)a9;
- (HKSleepDataSourceProvider)sleepDataSourceProvider;
- (id)_buildDurationAverageFormatter;
- (id)_buildDurationAverageSeries;
- (id)_buildSleepDisplayTypeWithApplicationItems:(id)a3 sleepSeriesType:(int64_t)a4 customSleepSeriesMapping:(id)a5 customSleepChartFormatter:(id)a6 isStackedChart:(BOOL)a7;
- (id)_buildSleepTrendContext:(id)a3 overlayChartController:(id)a4;
- (id)_consistencyContextForApplicationItems:(id)a3 overlayMode:(int64_t)a4 isPrimaryContext:(BOOL)a5;
- (id)_durationAmountContextForApplicationItems:(id)a3 durationDisplayType:(id)a4;
- (id)_durationAverageContextForApplicationItems:(id)a3 durationDisplayType:(id)a4 useInBedAverage:(BOOL)a5;
- (id)_durationGoalContextForApplicationItems:(id)a3 durationDisplayType:(id)a4 overlayMode:(int64_t)a5 isPrimaryContext:(BOOL)a6;
- (id)_fullContextsForApplicationItems:(id)a3 overlayChartController:(id)a4;
- (id)_itemForSleepStageInfographicWithStage:(int64_t)a3;
- (id)_itemForTitle:(id)a3 titleAccessoryColor:(id)a4 description:(id)a5;
- (id)_primaryContextForApplicationItems:(id)a3 overlayChartController:(id)a4;
- (id)_sleepColorForSelectedRangeData:(id)a3;
- (id)_sleepStagePercentageContextForStage:(int64_t)a3 applicationItems:(id)a4 baseDisplayType:(id)a5;
- (id)_stageDurationContextForApplicationItems:(id)a3 baseDisplayType:(id)a4 sleepCategoryValue:(int64_t)a5;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)dateRangeFromSelectionContext:(id)a3 timeScope:(int64_t)a4;
- (id)infographicViewControllerForDisplayType:(id)a3 healthStore:(id)a4;
- (id)initialSelectedContextForMode:(int64_t)a3 containerIndex:(int64_t)a4;
- (id)primaryDisplayTypeWithApplicationItems:(id)a3;
- (id)restorationStateDictionary;
- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4;
- (id)titleForSelectedRangeData:(id)a3 displayType:(id)a4;
- (int64_t)initialSelectedContainerIndexForMode:(int64_t)a3;
- (int64_t)initialSleepSeriesType;
- (void)_installUpdateObserversForGoalsAndSchedulesWithApplicationItems:(id)a3;
- (void)_setDefaultChartFormatterFonts;
- (void)_updateHighlightedSleepStage:(int64_t)a3 onDisplayType:(id)a4;
- (void)dealloc;
- (void)didChangeFromContextItem:(id)a3 toContextItem:(id)a4;
- (void)restoreUserActivityState:(id)a3;
- (void)saveRestorationState;
- (void)setBaseDisplayIsDuration;
- (void)setBaseDisplayIsSchedule;
- (void)setComparisonContextSelected:(BOOL)a3;
- (void)setDurationContextSelected:(BOOL)a3;
- (void)setScheduleContextSelected:(BOOL)a3;
- (void)setShouldHighlightBaseDisplayContext;
- (void)setStagePercentageContextSelected:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HKOverlayRoomSleepViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11
{
  v16 = a4;
  v17 = a9;
  v18 = a10;
  v19 = a8;
  v20 = a6;
  v21 = a5;
  v22 = [v16 sleepDataSourceProvider];

  if (!v22)
  {
    [HKOverlayRoomSleepViewController createInteractiveChartViewControllerForTypeIdentifier:a2 chartFactory:a1 applicationItems:? displayDate:? preferredOverlay:? restorationUserActivity:? trendModel:? factorDisplayTypes:? additionalChartOptions:?];
  }

  v23 = [v16 sleepChartFormatter];

  if (v23)
  {
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [HKOverlayRoomSleepViewController createInteractiveChartViewControllerForTypeIdentifier:a2 chartFactory:a1 applicationItems:? displayDate:? preferredOverlay:? restorationUserActivity:? trendModel:? factorDisplayTypes:? additionalChartOptions:?];
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  if ([v17 selectTrendInitially])
  {
    v24 = 1;
    goto LABEL_9;
  }

LABEL_8:
  v24 = 0;
LABEL_9:
  v25 = [HKOverlayRoomSleepViewController alloc];
  v26 = [v16 sleepDataSourceProvider];
  v27 = [v16 sleepChartFormatter];
  v28 = [(HKOverlayRoomSleepViewController *)v25 initWithDisplayDate:v20 applicationItems:v21 sleepDataSourceProvider:v26 sleepChartFormatter:v27 mode:v24 trendModel:v17 factorDisplayTypes:v18];

  [(HKOverlayRoomViewController *)v28 setRestorationUserActivity:v19];
  [(HKOverlayRoomViewController *)v28 setAdditionalChartOptions:a11];

  return v28;
}

- (HKOverlayRoomSleepViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 sleepDataSourceProvider:(id)a5 sleepChartFormatter:(id)a6 mode:(int64_t)a7 trendModel:(id)a8 factorDisplayTypes:(id)a9
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  obj = a8;
  v43 = a6;
  v18 = a8;
  v19 = a9;
  v20 = [HKOverlayRoomTrendContext findInitialDateFromTrendModel:v18];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v15;
  }

  v23 = v22;

  v44.receiver = self;
  v44.super_class = HKOverlayRoomSleepViewController;
  v24 = [(HKOverlayRoomViewController *)&v44 initWithDisplayDate:v23 applicationItems:v16 factorDisplayTypes:v19 mode:a7];

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

    v29 = [(HKOverlayRoomSleepViewController *)v24 _initialTrendSelectedForMode:a7 trendModel:v18, obj, v43];
    objc_storeWeak(&v24->_sleepDataSourceProvider, v17);
    objc_storeStrong(&v24->_sleepChartFormatter, a6);
    [(HKOverlayRoomSleepViewController *)v24 _setDefaultChartFormatterFonts];
    v24->baseDisplayIsSchedule = v29 ^ 1;
    v24->shouldHighlightBaseDisplayContext = 0;
    v30 = [v16 displayTypeController];
    v31 = [v30 displayTypeWithIdentifier:&unk_1F4384510];
    sleepDisplayType = v24->_sleepDisplayType;
    v24->_sleepDisplayType = v31;

    v33 = v24->_sleepDisplayType;
    v34 = [v16 chartDataCacheController];
    v35 = [v16 healthStore];
    v36 = [HKSleepUtilities buildSleepChartCachesWithDisplayType:v33 dataSourceProvider:v17 cacheController:v34 healthStore:v35];
    sleepChartCaches = v24->_sleepChartCaches;
    v24->_sleepChartCaches = v36;

    [(HKOverlayRoomSleepViewController *)v24 _installUpdateObserversForGoalsAndSchedulesWithApplicationItems:v16];
    objc_storeStrong(&v24->_trendModel, obja);
    [(HKOverlayRoomViewController *)v24 setShouldSelectInitialOverlay:v29];
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

+ (int64_t)indexForOverlaySleepRoomSegment:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 != 1;
  }
}

- (BOOL)_initialTrendSelectedForMode:(int64_t)a3 trendModel:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (a3 == 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 selectTrendInitially];
  }

  _HKInitializeLogging();
  v8 = *MEMORY[0x1E696B998];
  if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 1024;
    v15 = v7;
    v10 = v13;
    _os_log_impl(&dword_1C3942000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning initial trend selected: %d", &v12, 0x12u);
  }

  return v7;
}

- (void)_installUpdateObserversForGoalsAndSchedulesWithApplicationItems:(id)a3
{
  v4 = a3;
  v5 = [v4 displayTypeController];
  v12 = [v5 displayTypeWithIdentifier:&unk_1F4384528];

  v6 = [v4 displayTypeController];
  v7 = [v6 displayTypeWithIdentifier:&unk_1F4384540];

  v8 = [(HKOverlayRoomSleepViewController *)self sleepChartCaches];
  v9 = [v8 objectForKeyedSubscript:@"HKSleepChartCacheIdentifierSleepConsistency"];

  v10 = [v4 chartDataCacheController];
  [v10 addCustomChartCache:v9 forDisplayType:v12];

  v11 = [v4 chartDataCacheController];

  [v11 addCustomChartCache:v9 forDisplayType:v7];
}

- (void)_setDefaultChartFormatterFonts
{
  v3 = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
  v4 = [v3 majorFont];

  if (!v4)
  {
    v5 = [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
    v6 = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
    [v6 setMajorFont:v5];
  }

  v7 = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
  v8 = [v7 minorFont];

  if (!v8)
  {
    v10 = [MEMORY[0x1E69DB878] hk_chartCurrentValueUnitFont];
    v9 = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
    [v9 setMinorFont:v10];
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

- (void)setDurationContextSelected:(BOOL)a3
{
  self->durationContextSelected = a3;
  if (a3)
  {
    [(HKOverlayRoomSleepViewController *)self setBaseDisplayIsDuration];
  }
}

- (void)setScheduleContextSelected:(BOOL)a3
{
  self->scheduleContextSelected = a3;
  if (a3)
  {
    [(HKOverlayRoomSleepViewController *)self setBaseDisplayIsSchedule];
  }
}

- (void)setComparisonContextSelected:(BOOL)a3
{
  self->comparisonContextSelected = a3;
  if (a3)
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

- (void)setStagePercentageContextSelected:(BOOL)a3
{
  stagePercentageContextSelected = self->stagePercentageContextSelected;
  if (stagePercentageContextSelected != a3 && stagePercentageContextSelected != self->stagePercentageContextWillBeSelected)
  {
    v6 = [(HKOverlayRoomViewController *)self chartController];
    [v6 updatePrimaryGraphViewController];

    self->stagePercentageContextSelected = a3;
  }
}

- (void)didChangeFromContextItem:(id)a3 toContextItem:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
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
  [(HKOverlayRoomViewController *)&v11 didChangeFromContextItem:v7 toContextItem:v6];
}

- (id)createChartOverlayViewController
{
  if ([(HKOverlayRoomViewController *)self controllerMode]!= 3)
  {
    v3 = [HKOverlayRoomTrendContext findStartingTimeScopeFromTrendModel:self->_trendModel];
    if (v3 != 8)
    {
      v4 = v3;
      v5 = [(HKOverlayRoomViewController *)self applicationItems];
      v6 = [v5 timeScopeController];
      [v6 setSelectedTimeScope:v4];
    }
  }

  v21 = [(HKOverlayRoomViewController *)self additionalChartOptions]| 0x12200;
  v20 = [HKInteractiveChartOverlaySleepViewController alloc];
  v24 = [(HKOverlayRoomViewController *)self applicationItems];
  v25 = [v24 healthStore];
  v18 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v23 = [(HKOverlayRoomViewController *)self applicationItems];
  v7 = [v23 unitController];
  v22 = [(HKOverlayRoomViewController *)self applicationItems];
  v8 = [v22 dateCache];
  v19 = [(HKOverlayRoomViewController *)self applicationItems];
  v9 = [v19 chartDataCacheController];
  v10 = [(HKOverlayRoomViewController *)self applicationItems];
  v11 = [v10 timeScopeController];
  v12 = [(HKOverlayRoomViewController *)self applicationItems];
  v13 = [v12 sampleDateRangeController];
  v14 = [(HKOverlayRoomViewController *)self displayDate];
  v15 = v8;
  v16 = [(HKInteractiveChartOverlayViewController *)v20 initWithHealthStore:v25 primaryDisplayType:v18 unitPreferenceController:v7 dateCache:v8 chartDataCacheController:v9 selectedTimeScopeController:v11 sampleTypeDateRangeController:v13 initialXValue:v14 currentCalendarOverride:0 options:v21];

  [(HKInteractiveChartViewController *)v16 setCurrentValueViewDataSourceDelegate:self];
  [(HKInteractiveChartViewController *)v16 setCurrentOverlayLocationProvider:self];

  return v16;
}

- (id)_buildSleepDisplayTypeWithApplicationItems:(id)a3 sleepSeriesType:(int64_t)a4 customSleepSeriesMapping:(id)a5 customSleepChartFormatter:(id)a6 isStackedChart:(BOOL)a7
{
  v11 = a3;
  v27 = a5;
  v12 = a6;
  v25 = v12;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
  }

  v26 = v13;
  v14 = [v11 healthStore];
  v15 = [(HKOverlayRoomSleepViewController *)self sleepDisplayType];
  v16 = [v11 unitController];
  v17 = [v11 displayTypeController];
  v18 = [v11 chartDataCacheController];
  v19 = [(HKOverlayRoomSleepViewController *)self sleepChartCaches];
  LOBYTE(v23) = a7;
  v20 = [HKSleepUtilities sleepDisplayTypesWithHealthStore:v14 sleepDisplayType:v15 unitController:v16 displayTypeController:v17 chartCacheController:v18 sleepChartFormatter:v26 sleepSeriesType:a4 sleepChartCaches:v19 customSleepSeriesMapping:v27 isStackedChart:v23];

  v21 = [v20 firstObject];

  return v21;
}

- (id)_buildDurationAverageSeries
{
  v2 = objc_alloc_init(_HKSleepDurationAverageSeries);
  v3 = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
  v4 = [HKStrokeStyle strokeStyleWithColor:v3 lineWidth:2.0];

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
  v4 = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
  v5 = [v4 majorFont];
  [(HKInteractiveChartDataFormatter *)v3 setMajorFont:v5];

  v6 = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
  v7 = [v6 minorFont];
  [(HKInteractiveChartDataFormatter *)v3 setMinorFont:v7];

  [(HKInteractiveChartDataFormatter *)v3 setUnitController:0];
  [(HKInteractiveChartDataFormatter *)v3 setDisplayType:0];

  return v3;
}

- (id)controllerTitleWithApplicationItems:(id)a3
{
  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"SLEEP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v4;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)a3
{
  v4 = a3;
  v5 = [v4 healthStore];
  v6 = [(HKOverlayRoomSleepViewController *)self sleepDisplayType];
  v7 = [v4 unitController];
  v8 = [v4 displayTypeController];
  v9 = [v4 chartDataCacheController];

  v10 = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
  v11 = [(HKOverlayRoomSleepViewController *)self initialSleepSeriesType];
  v12 = [(HKOverlayRoomSleepViewController *)self sleepChartCaches];
  LOBYTE(v16) = 0;
  v13 = [HKSleepUtilities sleepDisplayTypesWithHealthStore:v5 sleepDisplayType:v6 unitController:v7 displayTypeController:v8 chartCacheController:v9 sleepChartFormatter:v10 sleepSeriesType:v11 sleepChartCaches:v12 customSleepSeries:0 isStackedChart:v16];

  v14 = [v13 firstObject];

  return v14;
}

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (a3 == 3)
  {
    v13 = [(HKOverlayRoomSleepViewController *)self _fullContextsForApplicationItems:v8 overlayChartController:v9];
  }

  else if (a3 == 1)
  {
    v10 = [HKOverlayContextSectionContainer alloc];
    v11 = [(HKOverlayRoomSleepViewController *)self _primaryContextForApplicationItems:v8 overlayChartController:v9];
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
  v2 = self;
  v3 = [(HKOverlayRoomViewController *)self controllerMode];
  v4 = [(HKOverlayRoomSleepViewController *)v2 trendModel];
  LODWORD(v2) = [(HKOverlayRoomSleepViewController *)v2 _initialTrendSelectedForMode:v3 trendModel:v4];

  if (v2)
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

- (id)_primaryContextForApplicationItems:(id)a3 overlayChartController:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HKOverlayRoomSleepViewController *)self trendModel];
  if (v8 && (v9 = v8, -[HKOverlayRoomSleepViewController trendModel](self, "trendModel"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 selectTrendInitially], v10, v9, v11))
  {
    v12 = [(HKOverlayRoomSleepViewController *)self _buildSleepTrendContext:v6 overlayChartController:v7];
    v13 = [[HKOverlayContextLocation alloc] initWithContainerIndex:0 sectionIndex:0 itemIndex:0];
    [(HKOverlayRoomSleepViewController *)self setTrendContextLocation:v13];
  }

  else
  {
    v12 = [(HKOverlayRoomSleepViewController *)self _consistencyContextForApplicationItems:v6 overlayMode:1 isPrimaryContext:1];
  }

  v19[0] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v15 = [[HKOverlayContextSection alloc] initWithSectionTitle:0 overlayContextItems:v14];
  v18 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];

  return v16;
}

- (id)_buildSleepTrendContext:(id)a3 overlayChartController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HKOverlayRoomSleepViewController *)self _buildDurationDisplayTypeWithApplicationItems:v7];
  v9 = [_HKSleepTrendContext alloc];
  v10 = [(HKOverlayRoomSleepViewController *)self trendModel];
  v11 = [(_HKSleepTrendContext *)v9 initWithBaseDisplayType:v8 trendModel:v10 overlayChartController:v6 applicationItems:v7 overlayMode:[(HKOverlayRoomViewController *)self controllerMode] contextChangeDelegate:self];

  return v11;
}

- (id)_fullContextsForApplicationItems:(id)a3 overlayChartController:(id)a4
{
  v122[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HKOverlayRoomSleepViewController *)self _buildDurationDisplayTypeWithApplicationItems:v6];
  v9 = [(HKOverlayRoomSleepViewController *)self _durationAmountContextForApplicationItems:v6 durationDisplayType:v8];
  v10 = [(HKOverlayRoomSleepViewController *)self _durationGoalContextForApplicationItems:v6 durationDisplayType:v8 overlayMode:3 isPrimaryContext:0];
  v11 = [(HKOverlayRoomSleepViewController *)self _durationAverageContextForApplicationItems:v6 durationDisplayType:v8 useInBedAverage:1];
  v103 = v8;
  v12 = [(HKOverlayRoomSleepViewController *)self _durationAverageContextForApplicationItems:v6 durationDisplayType:v8 useInBedAverage:0];
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

  v15 = [(HKOverlayRoomSleepViewController *)self trendModel];

  if (v15)
  {
    v16 = [(HKOverlayRoomSleepViewController *)self _buildSleepTrendContext:v6 overlayChartController:v7];
    [v13 addObject:v16];
    v17 = -[HKOverlayContextLocation initWithContainerIndex:sectionIndex:itemIndex:]([HKOverlayContextLocation alloc], "initWithContainerIndex:sectionIndex:itemIndex:", 1, 1, [v13 count] - 1);
    [(HKOverlayRoomSleepViewController *)self setTrendContextLocation:v17];
  }

  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v19 = [v18 localizedStringForKey:@"SLEEP_AMOUNT_SECTION_HEADER" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];

  v97 = v19;
  v98 = v13;
  v105 = [[HKOverlayContextSection alloc] initWithSectionTitle:v19 overlayContextItems:v13];
  v20 = [(HKOverlayRoomSleepViewController *)self _consistencyContextForApplicationItems:v6 overlayMode:3 isPrimaryContext:1];
  v21 = [HKOverlayContextSection alloc];
  v96 = v20;
  v121 = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
  v104 = [(HKOverlayContextSection *)v21 initWithSectionTitle:0 overlayContextItems:v22];

  v23 = [(HKOverlayRoomSleepViewController *)self _buildDurationDisplayTypeForStackedWithApplicationItems:v6];
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = [_HKSleepComparisonContext alloc];
  v26 = [MEMORY[0x1E696C3D0] dataTypeWithCode:5];
  v27 = [(_HKSleepComparisonContext *)v25 initWithStackedSampleType:v26 currentCalendarOverride:0 overlayChartController:v7 applicationItems:v6 contextChangeDelegate:self primarySleepDisplayType:v23];

  v28 = [_HKSleepComparisonContext alloc];
  v29 = [MEMORY[0x1E696C3D0] dataTypeWithCode:61];
  v30 = [(_HKSleepComparisonContext *)v28 initWithStackedSampleType:v29 currentCalendarOverride:0 overlayChartController:v7 applicationItems:v6 contextChangeDelegate:self primarySleepDisplayType:v23];

  v94 = v30;
  v95 = v27;
  v120[0] = v27;
  v120[1] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:2];
  [v24 addObjectsFromArray:v31];

  v32 = [_HKSleepComparisonContext alloc];
  v33 = [MEMORY[0x1E696C3D0] dataTypeWithCode:256];
  v108 = v23;
  v109 = v7;
  v34 = v6;
  v35 = [(_HKSleepComparisonContext *)v32 initWithStackedSampleType:v33 currentCalendarOverride:0 overlayChartController:v7 applicationItems:v6 contextChangeDelegate:self primarySleepDisplayType:v23];

  v36 = self;
  v37 = v24;
  v93 = v35;
  [v24 addObject:v35];
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v38 = v36;
  obj = [(HKOverlayRoomViewController *)v36 factorDisplayTypes];
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
        v45 = [(HKOverlayRoomSleepViewController *)v38 sleepChartFormatter];
        v46 = [(_HKSleepComparisonFactorContext *)v44 initWithStackedFactorDisplayType:v43 currentCalendarOverride:0 overlayChartController:v109 applicationItems:v34 contextChangeDelegate:v38 primarySleepDisplayType:v108 sleepChartFormatter:v45];

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
  v78 = [(HKOverlayRoomViewController *)v38 applicationItems];
  v56 = v52;
  v77 = [(HKOverlayRoomSleepViewController *)v38 _sleepStagePercentageContextForStage:2 applicationItems:v78 baseDisplayType:v52];
  v115[0] = v77;
  v76 = [(HKOverlayRoomViewController *)v38 applicationItems];
  v86 = v52;
  v75 = [(HKOverlayRoomSleepViewController *)v38 _sleepStagePercentageContextForStage:5 applicationItems:v76 baseDisplayType:v52];
  v115[1] = v75;
  v57 = [(HKOverlayRoomViewController *)v38 applicationItems];
  v58 = [(HKOverlayRoomSleepViewController *)v47 _sleepStagePercentageContextForStage:3 applicationItems:v57 baseDisplayType:v52];
  v115[2] = v58;
  v59 = [(HKOverlayRoomViewController *)v47 applicationItems];
  v60 = [(HKOverlayRoomSleepViewController *)v47 _sleepStagePercentageContextForStage:4 applicationItems:v59 baseDisplayType:v56];
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

- (id)_durationGoalContextForApplicationItems:(id)a3 durationDisplayType:(id)a4 overlayMode:(int64_t)a5 isPrimaryContext:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = [(HKOverlayRoomSleepViewController *)self _buildDurationGoalDisplayTypeWithApplicationItems:a3];
  v12 = [_HKSleepDurationGoalContext alloc];
  v13 = [(HKOverlayRoomViewController *)self chartController];
  v14 = [(_HKSleepDurationGoalContext *)v12 initWithBaseDisplayType:v10 overlayDisplayType:v11 overlayChartController:v13 overlayMode:a5 isPrimaryContext:v6 contextChangeDelegate:self];

  return v14;
}

- (id)_consistencyContextForApplicationItems:(id)a3 overlayMode:(int64_t)a4 isPrimaryContext:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(HKOverlayRoomSleepViewController *)self _buildConsistencyDisplayTypeWithApplicationItems:v8];
  v10 = [(HKOverlayRoomSleepViewController *)self _buildScheduleDisplayTypeWithApplicationItems:v8];

  v11 = [_HKSleepScheduleContext alloc];
  v12 = [(HKOverlayRoomViewController *)self chartController];
  v13 = [(_HKSleepScheduleContext *)v11 initWithBaseDisplayType:v9 overlayDisplayType:v10 overlayChartController:v12 overlayMode:a4 isPrimaryContext:v5 contextChangeDelegate:self];

  return v13;
}

- (id)_durationAverageContextForApplicationItems:(id)a3 durationDisplayType:(id)a4 useInBedAverage:(BOOL)a5
{
  v5 = a5;
  v24[4] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v22 = a4;
  v9 = [(HKOverlayRoomSleepViewController *)self sleepDisplayType];
  v10 = [v8 unitController];
  v11 = [HKSleepUtilities buildSleepGraphSeriesForSleepSeriesType:0 sleepDisplayType:v9 unitController:v10 numericAxisConfigurationOverrides:0 timeScope:6];

  if (v5)
  {
    [v11 setHighlightedSleepValue:&unk_1F4384558];
    v12 = [(HKOverlayRoomSleepViewController *)self _buildDurationAverageSeries];
    [v12 setAverageValueType:&unk_1F4384558];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:_HKCategoryValueSleepAnalysisDefaultAsleepValue()];
    [v11 setHighlightedSleepValue:v13];

    v12 = [(HKOverlayRoomSleepViewController *)self _buildDurationAverageSeries];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:_HKCategoryValueSleepAnalysisDefaultAsleepValue()];
    [v12 setAverageValueType:v14];
  }

  v23[0] = &unk_1F4384570;
  v23[1] = &unk_1F4384588;
  v24[0] = v11;
  v24[1] = v12;
  v23[2] = &unk_1F43845A0;
  v23[3] = &unk_1F43845B8;
  v24[2] = v12;
  v24[3] = v12;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
  v16 = [(HKOverlayRoomSleepViewController *)self _buildDurationAverageFormatter];
  v17 = [(HKOverlayRoomSleepViewController *)self _buildDurationAverageDisplayTypeWithApplicationItems:v8 customSleepSeriesMapping:v15 customSleepChartFormatter:v16];
  v18 = [_HKSleepDurationAverageContext alloc];
  v19 = [(HKOverlayRoomViewController *)self chartController];
  v20 = [(_HKSleepDurationAverageContext *)v18 initWithBaseDisplayType:v22 overlayDisplayType:v17 overlayChartController:v19 useInBedAverage:v5 contextChangeDelegate:self overlayAverageSeries:v12 averageChartFormatter:v16];

  return v20;
}

- (id)_durationAmountContextForApplicationItems:(id)a3 durationDisplayType:(id)a4
{
  v5 = a4;
  v6 = [_HKSleepDurationAmountContext alloc];
  v7 = [(HKOverlayRoomViewController *)self chartController];
  v8 = [(_HKSleepDurationAmountContext *)v6 initWithBaseDisplayType:v5 overlayChartController:v7 contextChangeDelegate:self];

  return v8;
}

- (id)_sleepStagePercentageContextForStage:(int64_t)a3 applicationItems:(id)a4 baseDisplayType:(id)a5
{
  v8 = a5;
  v9 = [(HKOverlayRoomSleepViewController *)self _buildStagesDurationDisplayTypeWithApplicationItems:a4];
  [(HKOverlayRoomSleepViewController *)self _updateHighlightedSleepStage:a3 onDisplayType:v9];
  v10 = [HKSleepStagePercentageContext alloc];
  v11 = [(HKOverlayRoomViewController *)self chartController];
  v12 = [(HKSleepStagePercentageContext *)v10 initWithSleepStage:a3 baseDisplayType:v8 overlayDisplayType:v9 overlayChartController:v11 contextChangeDelegate:self];

  return v12;
}

- (id)_stageDurationContextForApplicationItems:(id)a3 baseDisplayType:(id)a4 sleepCategoryValue:(int64_t)a5
{
  v8 = a4;
  v9 = [(HKOverlayRoomSleepViewController *)self _buildStagesDisplayTypeWithApplicationItems:a3];
  [(HKOverlayRoomSleepViewController *)self _updateHighlightedSleepStage:a5 onDisplayType:v9];
  v10 = [HKSleepStageDurationContext alloc];
  v11 = [(HKOverlayRoomViewController *)self chartController];
  v12 = [(HKSleepStageDurationContext *)v10 initWithBaseDisplayType:v8 overlayDisplayType:v9 overlayChartController:v11 contextChangeDelegate:self sleepValue:a5];

  return v12;
}

- (void)_updateHighlightedSleepStage:(int64_t)a3 onDisplayType:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = [v5 seriesForTimeScopeMapping];
    v8 = [v7 allValues];
    v9 = [v6 setWithArray:v8];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __79__HKOverlayRoomSleepViewController__updateHighlightedSleepStage_onDisplayType___block_invoke;
    v10[3] = &__block_descriptor_40_e27_v24__0__HKGraphSeries_8_B16l;
    v10[4] = a3;
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

- (int64_t)initialSelectedContainerIndexForMode:(int64_t)a3
{
  if (a3 == 3)
  {
    v5 = [(HKOverlayRoomSleepViewController *)self trendModel];
    v6 = [v5 selectTrendInitially];

    if (v6)
    {
      return 1;
    }
  }

  v8.receiver = self;
  v8.super_class = HKOverlayRoomSleepViewController;
  return [(HKOverlayRoomViewController *)&v8 initialSelectedContainerIndexForMode:a3];
}

- (id)initialSelectedContextForMode:(int64_t)a3 containerIndex:(int64_t)a4
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
    *&v19[14] = a4;
    v8 = *&v19[4];
    _os_log_impl(&dword_1C3942000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Determining initial selected context for container index: %ld", v19, 0x16u);
  }

  v9 = [(HKOverlayRoomViewController *)self chartController:*v19];
  [v9 updatePrimaryGraphViewController];

  v10 = [(HKOverlayRoomSleepViewController *)self comparisonContextLocation];
  if (v10)
  {
    v11 = v10;
    v12 = [(HKOverlayRoomSleepViewController *)self comparisonContextLocation];
    v13 = [v12 containerIndex];

    if (v13 == a4)
    {
      v14 = [(HKOverlayRoomSleepViewController *)self comparisonContextLocation];
      goto LABEL_11;
    }
  }

  v15 = [(HKOverlayRoomSleepViewController *)self trendModel];
  if ([v15 selectTrendInitially])
  {
    v16 = [(HKOverlayRoomSleepViewController *)self trendContextLocation];
    v17 = [v16 containerIndex];

    if (v17 == a4)
    {
      v14 = [(HKOverlayRoomSleepViewController *)self trendContextLocation];
      goto LABEL_11;
    }
  }

  else
  {
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [HKOverlayRoomSleepViewController alloc];
  v11 = [(HKOverlayRoomSleepViewController *)self sleepDataSourceProvider];
  v12 = [(HKOverlayRoomSleepViewController *)self sleepChartFormatter];
  v13 = [(HKOverlayRoomSleepViewController *)self trendModel];
  v14 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v15 = [(HKOverlayRoomSleepViewController *)v10 initWithDisplayDate:v9 applicationItems:v8 sleepDataSourceProvider:v11 sleepChartFormatter:v12 mode:a3 trendModel:v13 factorDisplayTypes:v14];

  [(HKOverlayRoomViewController *)v15 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:a3]];

  return v15;
}

- (id)infographicViewControllerForDisplayType:(id)a3 healthStore:(id)a4
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

- (id)_itemForTitle:(id)a3 titleAccessoryColor:(id)a4 description:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E696AD40];
  v10 = a5;
  v11 = objc_alloc_init(v9);
  v12 = 0x1E696A000;
  if (v7)
  {
    v13 = HKInteractiveChartInfographicTitleAttributes();
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
    if (v8)
    {
      v24 = [MEMORY[0x1E69DCAD8] configurationWithFont:v14 scale:1];
      v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle.fill" withConfiguration:v24];
      v16 = [v15 imageWithRenderingMode:2];
      v17 = [MEMORY[0x1E69DB7F0] textAttachmentWithImage:v16];
      v18 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v17];
      [v11 appendAttributedString:v18];

      v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
      [v11 appendAttributedString:v19];

      [v11 addAttribute:*MEMORY[0x1E69DB650] value:v8 range:{0, objc_msgSend(v11, "length")}];
      v12 = 0x1E696A000uLL;
    }

    v20 = [objc_alloc(*(v12 + 2736)) initWithString:v7 attributes:v13];
    [v11 appendAttributedString:v20];
  }

  v21 = [objc_alloc(*(v12 + 2736)) initWithString:v10];

  v22 = [[HKInfographicContentItem alloc] initWithTitle:v11 description:v21];

  return v22;
}

- (id)_itemForSleepStageInfographicWithStage:(int64_t)a3
{
  v5 = [HKSleepUtilities localizedInfographicTitleForCategoryValue:?];
  v6 = [HKSleepUtilities localizedInfographicDescriptionForCategoryValue:a3];
  v7 = [MEMORY[0x1E69DC888] hk_sleepColorForSleepAnalysis:a3];
  v8 = [(HKOverlayRoomSleepViewController *)self _itemForTitle:v5 titleAccessoryColor:v7 description:v6];

  return v8;
}

- (id)dateRangeFromSelectionContext:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKOverlayRoomViewController *)self chartController];
  v8 = [v7 dateRangeFromSelectionContext:v6 timeScope:a4];

  return v8;
}

- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKOverlayRoomViewController *)self chartController];
  v8 = [v7 stringForValueRange:v6 timeScope:a4];

  return v8;
}

- (id)titleForSelectedRangeData:(id)a3 displayType:(id)a4
{
  v5 = a3;
  v6 = [(HKOverlayRoomSleepViewController *)self _sleepColorForSelectedRangeData:v5];
  v7 = [MEMORY[0x1E69DB878] hk_chartLollipopKeyFont];
  v8 = [MEMORY[0x1E69DC888] hk_chartLollipopLabelColor];
  v9 = +[HKSelectedRangeLabel attributedStringForSelectedRangeData:font:foregroundColor:prefixColor:prefersImageAffixes:embedded:](HKSelectedRangeLabel, "attributedStringForSelectedRangeData:font:foregroundColor:prefixColor:prefersImageAffixes:embedded:", v5, v7, v8, v6, [v5 prefersImageAffixes], 0);

  return v9;
}

- (id)_sleepColorForSelectedRangeData:(id)a3
{
  v4 = a3;
  v5 = [v4 prefixColor];

  if (v5)
  {
    v6 = [v4 prefixColor];
LABEL_3:
    v7 = v6;
    goto LABEL_4;
  }

  v9 = [(HKOverlayRoomSleepViewController *)self durationContextSelected]|| [(HKOverlayRoomSleepViewController *)self scheduleContextSelected]|| [(HKOverlayRoomSleepViewController *)self stageDurationContextSelected]|| [(HKOverlayRoomSleepViewController *)self stagePercentageContextSelected];
  if ([v4 dataType] == 9)
  {
    if (v9)
    {
      [MEMORY[0x1E69DC888] hk_sleepInactiveInBedColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] hk_sleepInBedColor];
    }

    v6 = LABEL_14:;
    goto LABEL_3;
  }

  if ([v4 dataType] == 10)
  {
    if (v9)
    {
      [MEMORY[0x1E69DC888] hk_sleepInactiveAsleepColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
    }

    goto LABEL_14;
  }

  v10 = [MEMORY[0x1E69DC888] labelColor];
  v7 = [HKSelectedRangeLabel standardPrefixColorForSelectedRangeData:v4 defaultColor:v10];

LABEL_4:

  return v7;
}

- (void)restoreUserActivityState:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B998];
  if (os_log_type_enabled(*MEMORY[0x1E696B998], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [v4 userInfo];
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_1C3942000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Restoring sleep chart with userInfo: %{public}@", buf, 0x16u);
  }

  v10.receiver = self;
  v10.super_class = HKOverlayRoomSleepViewController;
  [(HKOverlayRoomViewController *)&v10 restoreUserActivityState:v4];
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
  v5 = [(HKOverlayRoomViewController *)&v8 restorationStateDictionary];
  v6 = [HKInteractiveChartViewController mergeRestorationDictionary:v4 otherDictionary:v5];

  return v6;
}

- (void)saveRestorationState
{
  v4 = [(HKOverlayRoomSleepViewController *)self restorationStateDictionary];
  v3 = [HKInteractiveChartViewController baseRestorationUserActivity:v4 activityType:@"com.apple.health.plugin" title:@"Sleep"];
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