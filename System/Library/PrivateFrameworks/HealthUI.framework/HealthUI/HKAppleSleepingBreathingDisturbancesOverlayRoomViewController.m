@interface HKAppleSleepingBreathingDisturbancesOverlayRoomViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
- (BOOL)supportsShowAllFilters;
- (HKAppleSleepingBreathingDisturbancesOverlayRoomViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6 preferredOverlay:(int64_t)a7;
- (id)_chartDataSourceWithApplicationItems:(id)a3 displayType:(id)a4;
- (id)_overlayContextContainerWithApplicationItems:(id)a3 overlayChartController:(id)a4 mode:(int64_t)a5;
- (id)_sleepApneaEventDisplayTypeWithApplicationItems:(id)a3;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4;
@end

@implementation HKAppleSleepingBreathingDisturbancesOverlayRoomViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11
{
  v15 = a10;
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = [[HKAppleSleepingBreathingDisturbancesOverlayRoomViewController alloc] initWithDisplayDate:v17 applicationItems:v18 factorDisplayTypes:v15 mode:0 preferredOverlay:a7];

  [(HKOverlayRoomViewController *)v19 setRestorationUserActivity:v16];
  [(HKOverlayRoomViewController *)v19 setAdditionalChartOptions:a11];

  return v19;
}

- (HKAppleSleepingBreathingDisturbancesOverlayRoomViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 factorDisplayTypes:(id)a5 mode:(int64_t)a6 preferredOverlay:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if (a7 && a7 != 11)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HKAppleSleepingBreathingDisturbancesOverlayRoomViewController.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"_HKAppleSleepingBreathingDisturbancesIsPreferredOverlaySupported(preferredOverlay)"}];
  }

  v26.receiver = self;
  v26.super_class = HKAppleSleepingBreathingDisturbancesOverlayRoomViewController;
  v17 = [(HKOverlayRoomViewController *)&v26 initWithDisplayDate:v13 applicationItems:v14 factorDisplayTypes:v15 mode:a6];
  v18 = v17;
  if (v17)
  {
    v17->_preferredOverlay = a7;
    preferredContextLocation = v17->_preferredContextLocation;
    v17->_preferredContextLocation = 0;

    v20 = [v14 displayTypeController];
    v21 = [v20 displayTypeWithIdentifier:&unk_1F4384468];
    representativeDisplayType = v18->_representativeDisplayType;
    v18->_representativeDisplayType = v21;

    v23 = a6 != 3 && a7 != 0;
    if (a6)
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

- (id)stringForValueRange:(id)a3 timeScope:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKOverlayRoomViewController *)self chartController];
  v8 = [v7 stringForValueRange:v6 timeScope:a4];

  return v8;
}

- (BOOL)supportsShowAllFilters
{
  v3 = [(HKOverlayRoomViewController *)self healthFactorsEnabled];
  if (v3)
  {
    LOBYTE(v3) = [(HKOverlayRoomViewController *)self controllerMode]!= 3;
  }

  return v3;
}

- (id)controllerTitleWithApplicationItems:(id)a3
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"SLEEP_BREATHING_DISTURBANCES" value:&stru_1F42FFBE0 table:@"Localizable-Nebula"];

  return v4;
}

- (id)createChartOverlayViewController
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = [(HKOverlayRoomViewController *)self applicationItems];
  v22 = [(HKAppleSleepingBreathingDisturbancesOverlayRoomViewController *)self _sleepApneaEventDisplayTypeWithApplicationItems:v3];
  v24 = v22;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v25[0] = v4;
  v5 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v23 = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v25[1] = v6;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

  v7 = [(HKOverlayRoomViewController *)self primaryDisplayType];
  v8 = [v7 hk_interactiveChartOptions];
  v9 = [(HKOverlayRoomViewController *)self additionalChartOptions]| v8;

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
  v13 = [v3 healthStore];
  v14 = [v3 unitController];
  v15 = [v3 dateCache];
  v16 = [v3 chartDataCacheController];
  v17 = [v3 timeScopeController];
  v18 = [v3 sampleDateRangeController];
  v19 = [(HKInteractiveChartOverlayViewController *)v11 initWithStackedDisplayTypes:v21 primaryDisplayTypeStackIndex:&unk_1F4384480 stackedDisplayTypeHeights:v12 healthStore:v13 unitPreferenceController:v14 dateCache:v15 chartDataCacheController:v16 selectedTimeScopeController:v17 sampleTypeDateRangeController:v18 initialXValue:0 currentCalendarOverride:0 options:v10 timeScopeRanges:0];

  return v19;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [HKAppleSleepingBreathingDisturbancesOverlayRoomViewController alloc];
  v11 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v12 = [(HKAppleSleepingBreathingDisturbancesOverlayRoomViewController *)v10 initWithDisplayDate:v9 applicationItems:v8 factorDisplayTypes:v11 mode:a3 preferredOverlay:[(HKAppleSleepingBreathingDisturbancesOverlayRoomViewController *)self preferredOverlay]];

  [(HKOverlayRoomViewController *)v12 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:a3]];

  return v12;
}

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  if (a3 == 3)
  {
    v7 = [(HKAppleSleepingBreathingDisturbancesOverlayRoomViewController *)self _overlayContextContainerWithApplicationItems:a4 overlayChartController:a5 mode:3, v5];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)_overlayContextContainerWithApplicationItems:(id)a3 overlayChartController:(id)a4 mode:(int64_t)a5
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(HKOverlayRoomViewController *)self buildFactorContextSectionForChartController];
  if (v7)
  {
    [v6 addObject:v7];
  }

  v8 = [[HKOverlayContextSectionContainer alloc] initWithContainerTitle:0 overlayContextSections:v6];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];

  [(HKAppleSleepingBreathingDisturbancesOverlayRoomViewController *)self setPreferredContextLocation:0];

  return v9;
}

- (id)_chartDataSourceWithApplicationItems:(id)a3 displayType:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 unitController];
  v8 = [v6 healthStore];

  v9 = [MEMORY[0x1E696C510] countUnit];
  v10 = [[HKQuantityTypeDataSource alloc] initWithUnitController:v7 options:2 displayType:v5 healthStore:v8];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __114__HKAppleSleepingBreathingDisturbancesOverlayRoomViewController__chartDataSourceWithApplicationItems_displayType___block_invoke;
  v13[3] = &unk_1E81B9070;
  v14 = v9;
  v11 = v9;
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

- (id)_sleepApneaEventDisplayTypeWithApplicationItems:(id)a3
{
  v3 = a3;
  v4 = [v3 displayTypeController];
  v5 = [v4 displayTypeWithIdentifier:&unk_1F4384498];

  v6 = [HKSleepApneaEventInteractiveChartFormatter alloc];
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v8 = [v7 localizedStringForKey:@"SLEEP_APNEA_ALERTS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Nebula"];
  v9 = [(HKSleepApneaEventInteractiveChartFormatter *)v6 initWithLocalizedCategoryName:v8];

  v10 = [v5 displayCategory];
  v11 = [v3 unitController];
  v12 = [v3 chartDataCacheController];

  v13 = [v5 hk_standardSeriesForTimeScope:5 displayCategory:v10 unitController:v11 dataCacheController:v12];

  v14 = [[HKSleepApneaEventAxis alloc] initWithDisplayType:v5];
  [v13 setYAxis:v14];

  v15 = [HKInteractiveChartDisplayType alloc];
  v16 = [v5 objectType];
  v17 = -[HKInteractiveChartDisplayType initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:](v15, "initWithGraphSeries:baseDisplayType:valueFormatter:dataTypeCode:", v13, v5, v9, [v16 code]);

  return v17;
}

@end