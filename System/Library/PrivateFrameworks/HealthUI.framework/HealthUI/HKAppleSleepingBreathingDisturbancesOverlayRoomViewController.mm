@interface HKAppleSleepingBreathingDisturbancesOverlayRoomViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (BOOL)supportsShowAllFilters;
- (HKAppleSleepingBreathingDisturbancesOverlayRoomViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode preferredOverlay:(int64_t)overlay;
- (id)_chartDataSourceWithApplicationItems:(id)items displayType:(id)type;
- (id)_overlayContextContainerWithApplicationItems:(id)items overlayChartController:(id)controller mode:(int64_t)mode;
- (id)_sleepApneaEventDisplayTypeWithApplicationItems:(id)items;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)stringForValueRange:(id)range timeScope:(int64_t)scope;
@end

@implementation HKAppleSleepingBreathingDisturbancesOverlayRoomViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  typesCopy = types;
  activityCopy = activity;
  dateCopy = date;
  itemsCopy = items;
  v19 = [[HKAppleSleepingBreathingDisturbancesOverlayRoomViewController alloc] initWithDisplayDate:dateCopy applicationItems:itemsCopy factorDisplayTypes:typesCopy mode:0 preferredOverlay:overlay];

  [(HKOverlayRoomViewController *)v19 setRestorationUserActivity:activityCopy];
  [(HKOverlayRoomViewController *)v19 setAdditionalChartOptions:options];

  return v19;
}

- (HKAppleSleepingBreathingDisturbancesOverlayRoomViewController)initWithDisplayDate:(id)date applicationItems:(id)items factorDisplayTypes:(id)types mode:(int64_t)mode preferredOverlay:(int64_t)overlay
{
  dateCopy = date;
  itemsCopy = items;
  typesCopy = types;
  if (overlay && overlay != 11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKAppleSleepingBreathingDisturbancesOverlayRoomViewController.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"_HKAppleSleepingBreathingDisturbancesIsPreferredOverlaySupported(preferredOverlay)"}];
  }

  v26.receiver = self;
  v26.super_class = HKAppleSleepingBreathingDisturbancesOverlayRoomViewController;
  v17 = [(HKOverlayRoomViewController *)&v26 initWithDisplayDate:dateCopy applicationItems:itemsCopy factorDisplayTypes:typesCopy mode:mode];
  v18 = v17;
  if (v17)
  {
    v17->_preferredOverlay = overlay;
    preferredContextLocation = v17->_preferredContextLocation;
    v17->_preferredContextLocation = 0;

    displayTypeController = [itemsCopy displayTypeController];
    v21 = [displayTypeController displayTypeWithIdentifier:&unk_1F4384468];
    representativeDisplayType = v18->_representativeDisplayType;
    v18->_representativeDisplayType = v21;

    v23 = mode != 3 && overlay != 0;
    if (mode)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    [(HKOverlayRoomViewController *)v18 setShouldSelectInitialOverlay:v24];
  }

  return v18;
}

- (id)stringForValueRange:(id)range timeScope:(int64_t)scope
{
  rangeCopy = range;
  chartController = [(HKOverlayRoomViewController *)self chartController];
  v8 = [chartController stringForValueRange:rangeCopy timeScope:scope];

  return v8;
}

- (BOOL)supportsShowAllFilters
{
  healthFactorsEnabled = [(HKOverlayRoomViewController *)self healthFactorsEnabled];
  if (healthFactorsEnabled)
  {
    LOBYTE(healthFactorsEnabled) = [(HKOverlayRoomViewController *)self controllerMode]!= 3;
  }

  return healthFactorsEnabled;
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"SLEEP_BREATHING_DISTURBANCES" value:&stru_1F42FFBE0 table:@"Localizable-Nebula"];

  return v4;
}

- (id)createChartOverlayViewController
{
  v25[2] = *MEMORY[0x1E69E9840];
  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  v22 = [(HKAppleSleepingBreathingDisturbancesOverlayRoomViewController *)self _sleepApneaEventDisplayTypeWithApplicationItems:applicationItems];
  v24 = v22;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v25[0] = v4;
  primaryDisplayType = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v23 = primaryDisplayType;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v25[1] = v6;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

  primaryDisplayType2 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  hk_interactiveChartOptions = [primaryDisplayType2 hk_interactiveChartOptions];
  v9 = [(HKOverlayRoomViewController *)self additionalChartOptions]| hk_interactiveChartOptions;

  if ([(HKOverlayRoomViewController *)self controllerMode]== 3)
  {
    v10 = v9 | 0x12000;
  }

  else
  {
    v10 = v9;
  }

  v11 = [HKInteractiveChartOverlayViewController alloc];
  v12 = [HKInteractiveChartStackHeight percentStackHeights:&unk_1F4381AB0];
  healthStore = [applicationItems healthStore];
  unitController = [applicationItems unitController];
  dateCache = [applicationItems dateCache];
  chartDataCacheController = [applicationItems chartDataCacheController];
  timeScopeController = [applicationItems timeScopeController];
  sampleDateRangeController = [applicationItems sampleDateRangeController];
  v19 = [(HKInteractiveChartOverlayViewController *)v11 initWithStackedDisplayTypes:v21 primaryDisplayTypeStackIndex:&unk_1F4384480 stackedDisplayTypeHeights:v12 healthStore:healthStore unitPreferenceController:unitController dateCache:dateCache chartDataCacheController:chartDataCacheController selectedTimeScopeController:timeScopeController sampleTypeDateRangeController:sampleDateRangeController initialXValue:0 currentCalendarOverride:0 options:v10 timeScopeRanges:0];

  return v19;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  itemsCopy = items;
  dateCopy = date;
  v10 = [HKAppleSleepingBreathingDisturbancesOverlayRoomViewController alloc];
  factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v12 = [(HKAppleSleepingBreathingDisturbancesOverlayRoomViewController *)v10 initWithDisplayDate:dateCopy applicationItems:itemsCopy factorDisplayTypes:factorDisplayTypes mode:mode preferredOverlay:[(HKAppleSleepingBreathingDisturbancesOverlayRoomViewController *)self preferredOverlay]];

  [(HKOverlayRoomViewController *)v12 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:mode]];

  return v12;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  if (mode == 3)
  {
    v7 = [(HKAppleSleepingBreathingDisturbancesOverlayRoomViewController *)self _overlayContextContainerWithApplicationItems:items overlayChartController:controller mode:3, v5];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)_overlayContextContainerWithApplicationItems:(id)items overlayChartController:(id)controller mode:(int64_t)mode
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  buildFactorContextSectionForChartController = [(HKOverlayRoomViewController *)self buildFactorContextSectionForChartController];
  if (buildFactorContextSectionForChartController)
  {
    [v6 addObject:buildFactorContextSectionForChartController];
  }

  v8 = [[HKOverlayContextSectionContainer alloc] initWithContainerTitle:0 overlayContextSections:v6];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  [(HKAppleSleepingBreathingDisturbancesOverlayRoomViewController *)self setPreferredContextLocation:0];

  return v9;
}

- (id)_chartDataSourceWithApplicationItems:(id)items displayType:(id)type
{
  typeCopy = type;
  itemsCopy = items;
  unitController = [itemsCopy unitController];
  healthStore = [itemsCopy healthStore];

  countUnit = [MEMORY[0x1E696C510] countUnit];
  v10 = [[HKQuantityTypeDataSource alloc] initWithUnitController:unitController options:2 displayType:typeCopy healthStore:healthStore];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __114__HKAppleSleepingBreathingDisturbancesOverlayRoomViewController__chartDataSourceWithApplicationItems_displayType___block_invoke;
  v13[3] = &unk_1E81B9070;
  v14 = countUnit;
  v11 = countUnit;
  [(HKQuantityTypeDataSource *)v10 setUserInfoCreationBlock:v13];

  return v10;
}

HKInteractiveChartSinglePointData *__114__HKAppleSleepingBreathingDisturbancesOverlayRoomViewController__chartDataSourceWithApplicationItems_displayType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HKInteractiveChartSinglePointData);
  v5 = [v3 averageQuantity];
  [v5 doubleValueForUnit:*(a1 + 32)];
  [(HKInteractiveChartSinglePointData *)v4 setValue:?];

  [(HKInteractiveChartSinglePointData *)v4 setUnit:*(a1 + 32)];
  -[HKInteractiveChartSinglePointData setRecordCount:](v4, "setRecordCount:", [v3 recordCount]);
  v6 = [v3 statisticsInterval];

  [(HKInteractiveChartSinglePointData *)v4 setStatisticsInterval:v6];

  return v4;
}

- (id)_sleepApneaEventDisplayTypeWithApplicationItems:(id)items
{
  itemsCopy = items;
  displayTypeController = [itemsCopy displayTypeController];
  v5 = [displayTypeController displayTypeWithIdentifier:&unk_1F4384498];

  v6 = [HKSleepApneaEventInteractiveChartFormatter alloc];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"SLEEP_APNEA_ALERTS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];
  v9 = [(HKSleepApneaEventInteractiveChartFormatter *)v6 initWithLocalizedCategoryName:v8];

  displayCategory = [v5 displayCategory];
  unitController = [itemsCopy unitController];
  chartDataCacheController = [itemsCopy chartDataCacheController];

  v13 = [v5 hk_standardSeriesForTimeScope:5 displayCategory:displayCategory unitController:unitController dataCacheController:chartDataCacheController];

  v14 = [[HKSleepApneaEventAxis alloc] initWithDisplayType:v5];
  [v13 setYAxis:v14];

  v15 = [HKInteractiveChartDisplayType alloc];
  objectType = [v5 objectType];
  v17 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v15, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v13, v5, v9, [objectType code]);

  return v17;
}

@end