@interface HKOverlayRoomOxygenSaturationViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
- (HKOverlayRoomOxygenSaturationViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 preferredOverlay:(int64_t)a6 trendModel:(id)a7 factorDisplayTypes:(id)a8;
- (id)_buildAverageDataSourceWithUnitController:(id)a3 displayType:(id)a4 healthStore:(id)a5;
- (id)_buildGranularAverageDataSourceTitleFromTimeScope;
- (id)_configureContextSectionsForFullMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)_configureContextSectionsForSingleOverlayMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)_createOverrideOnboardingGestureRecognizer;
- (id)_makeAverageContextForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 contextDelegate:(id *)a6;
- (id)_makeLatestContextForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)_makePressureOverlayContextForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 context:(unint64_t)a6 contextDelegate:(id *)a7;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)primaryDisplayTypeWithApplicationItems:(id)a3;
- (void)_installOverrideOnboardingGestureRecognizer;
- (void)_overrideOnboardingAction:(id)a3;
- (void)_uninstallOverrideOnboardingGestureRecognizer;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HKOverlayRoomOxygenSaturationViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a6;
  v20 = a5;
  v21 = [[a1 alloc] initWithDisplayDate:v19 applicationItems:v20 mode:1 preferredOverlay:a7 trendModel:v17 factorDisplayTypes:v16];

  [v21 setRestorationUserActivity:v18];
  [v21 setAdditionalChartOptions:a11];

  return v21;
}

- (HKOverlayRoomOxygenSaturationViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 preferredOverlay:(int64_t)a6 trendModel:(id)a7 factorDisplayTypes:(id)a8
{
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v17 = a4;
  v18 = [HKOverlayRoomTrendContext findInitialDateFromTrendModel:v15];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v14;
  }

  v21 = v20;

  v31.receiver = self;
  v31.super_class = HKOverlayRoomOxygenSaturationViewController;
  v22 = [(HKOverlayRoomViewController *)&v31 initWithDisplayDate:v21 applicationItems:v17 factorDisplayTypes:v16 mode:a5];

  if (v22)
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contextDelegates = v22->_contextDelegates;
    v22->_contextDelegates = v23;

    v22->_preferredOverlay = a6;
    preferredOverlayIndex = v22->_preferredOverlayIndex;
    v22->_preferredOverlayIndex = 0;

    objc_storeStrong(&v22->_trendModel, a7);
    if (a5 == 3)
    {
      v26 = 0;
    }

    else
    {
      v27 = [v15 selectTrendInitially];
      if (a5)
      {
        v28 = a6 == 0;
      }

      else
      {
        v28 = 1;
      }

      v29 = !v28;
      v26 = v29 | v27;
    }

    [(HKOverlayRoomViewController *)v22 setShouldSelectInitialOverlay:v26 & 1];
  }

  return v22;
}

- (id)controllerTitleWithApplicationItems:(id)a3
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"OXYGEN_SATURATION" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];

  return v4;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = HKOverlayRoomOxygenSaturationViewController;
  [(HKOverlayRoomOxygenSaturationViewController *)&v4 viewWillAppear:a3];
  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    [(HKOverlayRoomOxygenSaturationViewController *)self _installOverrideOnboardingGestureRecognizer];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    [(HKOverlayRoomOxygenSaturationViewController *)self _uninstallOverrideOnboardingGestureRecognizer];
  }

  v5.receiver = self;
  v5.super_class = HKOverlayRoomOxygenSaturationViewController;
  [(HKOverlayRoomOxygenSaturationViewController *)&v5 viewWillDisappear:v3];
}

- (void)_installOverrideOnboardingGestureRecognizer
{
  v3 = [(HKOverlayRoomOxygenSaturationViewController *)self _createOverrideOnboardingGestureRecognizer];
  [(HKOverlayRoomOxygenSaturationViewController *)self setOverrideOnboardingRecognizer:v3];

  v6 = [(HKOverlayRoomOxygenSaturationViewController *)self navigationController];
  v4 = [v6 navigationBar];
  v5 = [(HKOverlayRoomOxygenSaturationViewController *)self overrideOnboardingRecognizer];
  [v4 addGestureRecognizer:v5];
}

- (void)_uninstallOverrideOnboardingGestureRecognizer
{
  v3 = [(HKOverlayRoomOxygenSaturationViewController *)self navigationController];
  v4 = [v3 navigationBar];
  v5 = [(HKOverlayRoomOxygenSaturationViewController *)self overrideOnboardingRecognizer];
  [v4 removeGestureRecognizer:v5];

  [(HKOverlayRoomOxygenSaturationViewController *)self setOverrideOnboardingRecognizer:0];
}

- (id)_createOverrideOnboardingGestureRecognizer
{
  v2 = [[_HKOxygenSaturationOverrideTapGestureRecognizer alloc] initWithTarget:self action:sel__overrideOnboardingAction_];

  return v2;
}

- (void)_overrideOnboardingAction:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*MEMORY[0x1E696BD58]];
  v5 = [HKFeatureAvailabilityInternalSettingsConfiguration alloc];
  v6 = *MEMORY[0x1E696B8A8];
  v7 = *MEMORY[0x1E696BE28];
  v14[0] = v4;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v9 = [(HKFeatureAvailabilityInternalSettingsConfiguration *)v5 initWithFeatureIdentifier:v6 userDefaultsDomain:v7 userDefaultsFeatureEnabledKey:@"HKRPBloodOxygenSaturationEnabled" userDefaultsDisabledOverrideKey:@"OverrideIsRemoteDisabled" options:15 samplesTypesToDelete:v8];

  v10 = [HKFeatureAvailabilityInternalSettingsViewController alloc];
  v11 = [(HKOverlayRoomViewController *)self applicationItems];
  v12 = [v11 healthStore];
  v13 = [(HKFeatureAvailabilityInternalSettingsViewController *)v10 initWithHealthStore:v12 configuration:v9];

  [(HKOverlayRoomOxygenSaturationViewController *)self showViewController:v13 sender:self];
}

- (id)primaryDisplayTypeWithApplicationItems:(id)a3
{
  v3 = MEMORY[0x1E696C2E0];
  v4 = *MEMORY[0x1E696BD58];
  v5 = a3;
  v6 = [v3 quantityTypeForIdentifier:v4];
  v7 = [v5 displayTypeController];

  v8 = [v7 displayTypeForObjectType:v6];

  return v8;
}

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if ((a3 - 1) < 2)
  {
    v10 = [HKOverlayContextSectionContainer alloc];
    v11 = [(HKOverlayRoomOxygenSaturationViewController *)self _configureContextSectionsForSingleOverlayMode:a3 applicationItems:v8 overlayChartController:v9];
    v12 = [(HKOverlayContextSectionContainer *)v10 initWithContainerTitle:0 overlayContextSections:v11];
    v18[0] = v12;
    v13 = v18;
LABEL_5:
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

    goto LABEL_7;
  }

  if (a3 == 3)
  {
    v14 = [HKOverlayContextSectionContainer alloc];
    v11 = [(HKOverlayRoomOxygenSaturationViewController *)self _configureContextSectionsForFullMode:3 applicationItems:v8 overlayChartController:v9];
    v12 = [(HKOverlayContextSectionContainer *)v14 initWithContainerTitle:0 overlayContextSections:v11];
    v17 = v12;
    v13 = &v17;
    goto LABEL_5;
  }

  v15 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v15;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [HKOverlayRoomOxygenSaturationViewController alloc];
  v11 = [(HKOverlayRoomOxygenSaturationViewController *)self preferredOverlay];
  trendModel = self->_trendModel;
  v13 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v14 = [(HKOverlayRoomOxygenSaturationViewController *)v10 initWithDisplayDate:v9 applicationItems:v8 mode:a3 preferredOverlay:v11 trendModel:trendModel factorDisplayTypes:v13];

  [(HKOverlayRoomViewController *)v14 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:a3]];

  return v14;
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

  v9.receiver = self;
  v9.super_class = HKOverlayRoomOxygenSaturationViewController;
  v7 = [(HKOverlayRoomViewController *)&v9 createChartOverlayViewController];

  return v7;
}

- (id)_configureContextSectionsForSingleOverlayMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  v22[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(HKOverlayRoomOxygenSaturationViewController *)self _makeLatestContextForMode:a3 applicationItems:v8 overlayChartController:v9];
  preferredOverlayIndex = self->_preferredOverlayIndex;
  self->_preferredOverlayIndex = &unk_1F43824E8;

  trendModel = self->_trendModel;
  if (trendModel && [(HKChartSummaryTrendModel *)trendModel selectTrendInitially])
  {
    v13 = [(HKOverlayRoomOxygenSaturationViewController *)self primaryDisplayTypeWithApplicationItems:v8];
    v14 = [[HKOverlayRoomTrendContext alloc] initWithBaseDisplayType:v13 trendModel:self->_trendModel overlayChartController:v9 applicationItems:v8 overlayMode:a3];
    v15 = [(HKOverlayRoomViewController *)self chartController];
    [v15 setTrendAccessibilityDelegate:v14];

    v10 = v14;
  }

  v16 = [HKOverlayContextSection alloc];
  v22[0] = v10;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v18 = [(HKOverlayContextSection *)v16 initWithSectionTitle:0 overlayContextItems:v17];

  v21 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];

  return v19;
}

- (id)_configureContextSectionsForFullMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [(HKOverlayRoomOxygenSaturationViewController *)self _makeLatestContextForMode:a3 applicationItems:v8 overlayChartController:v9];
  [v10 addObject:v11];
  v30 = v11;
  v29 = [(HKOverlayRoomOxygenSaturationViewController *)self _makeRangeContextForMode:a3 applicationItems:v8 overlayChartController:v9];
  [v10 addObject:?];
  v32 = 0;
  v12 = [(HKOverlayRoomOxygenSaturationViewController *)self _makeAverageContextForMode:a3 applicationItems:v8 overlayChartController:v9 contextDelegate:&v32];
  v13 = v32;
  [v10 addObject:v12];
  if (v13)
  {
    v14 = [(HKOverlayRoomOxygenSaturationViewController *)self contextDelegates];
    [v14 addObject:v13];
  }

  v31 = 0;
  v15 = [(HKOverlayRoomOxygenSaturationViewController *)self _makePressureOverlayContextForMode:a3 applicationItems:v8 overlayChartController:v9 context:1 contextDelegate:&v31];
  v16 = v31;
  v28 = v15;
  [v10 addObject:v15];
  if (v16)
  {
    v17 = [(HKOverlayRoomOxygenSaturationViewController *)self contextDelegates];
    [v17 addObject:v16];
  }

  v18 = [(HKOverlayRoomOxygenSaturationViewController *)self _makeSleepContextForMode:a3 applicationItems:v8 overlayChartController:v9];
  [v10 addObject:v18];
  v19 = v30;
  if (self->_trendModel)
  {
    v20 = [(HKOverlayRoomOxygenSaturationViewController *)self primaryDisplayTypeWithApplicationItems:v8];
    v21 = [[HKOverlayRoomTrendContext alloc] initWithBaseDisplayType:v20 trendModel:self->_trendModel overlayChartController:v9 applicationItems:v8 overlayMode:a3];
    v22 = [(HKOverlayRoomViewController *)self chartController];
    [v22 setTrendAccessibilityDelegate:v21];

    [v10 addObject:v21];
    v19 = v30;
    if ([(HKChartSummaryTrendModel *)self->_trendModel selectTrendInitially])
    {
      v19 = v21;
    }
  }

  v23 = [v10 indexOfObject:v19];
  if (v23 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = 0;
  }

  else
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v23];
  }

  objc_storeStrong(&self->_preferredOverlayIndex, v24);
  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  v25 = [[HKOverlayContextSection alloc] initWithSectionTitle:0 overlayContextItems:v10];
  v33[0] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];

  return v26;
}

- (id)_makePressureOverlayContextForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 context:(unint64_t)a6 contextDelegate:(id *)a7
{
  v13 = a4;
  v14 = a5;
  v15 = HKOxygenSaturationLowBarometricPressureThresholdQuantity();
  if (a6)
  {
    if (a6 != 1)
    {
      v23 = 0;
      v20 = 0;
      goto LABEL_7;
    }

    v16 = [MEMORY[0x1E696C378] predicateForObjectsWithMetadataKey:*MEMORY[0x1E696BA50] operatorType:1 value:v15];
    v17 = [HKInteractiveChartOverlayPredicate alloc];
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"SCANDIUM_OVERLAY_LOW_AIR_PRESSURE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Scandium"];
    v20 = [(HKInteractiveChartOverlayPredicate *)v17 initWithPredicate:v16 name:v19];

    v21 = [_HKOxygenSaturationIntegratedContextDelegate alloc];
    v22 = [(HKOverlayRoomViewController *)self primaryDisplayType];
    v23 = [(_HKOxygenSaturationIntegratedContextDelegate *)v21 initWithCustomDataSource:0 primaryDisplayType:v22 context:1];
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HKOverlayRoomOxygenSaturationViewController.m" lineNumber:320 description:@"unsupported context"];
    v23 = 0;
    v20 = 0;
  }

LABEL_7:
  v24 = [HKOverlayRoomViewControllerIntegratedContext distributionContextWithStyle:0 namedPredicate:v20 overlayChartController:v14 applicationItems:v13 optionalDelegate:v23 options:0 mode:a3];
  if (a7 && v23)
  {
    v25 = v23;
    *a7 = v23;
  }

  return v24;
}

- (id)_makeLatestContextForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[HKOverlayRoomViewControllerLastQuantityContext alloc] initWithOverlayChartController:v7 applicationItems:v8 mode:a3];

  return v9;
}

- (id)_makeAverageContextForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5 contextDelegate:(id *)a6
{
  v10 = a5;
  v11 = a4;
  v12 = [(HKOverlayRoomOxygenSaturationViewController *)self primaryDisplayTypeWithApplicationItems:v11];
  v13 = [v11 unitController];
  v14 = [v11 healthStore];
  v15 = [(HKOverlayRoomOxygenSaturationViewController *)self _buildAverageDataSourceWithUnitController:v13 displayType:v12 healthStore:v14];

  v16 = [[_HKOxygenSaturationIntegratedContextDelegate alloc] initWithCustomDataSource:v15 primaryDisplayType:v12 context:0];
  v17 = v16;
  if (a6)
  {
    v18 = v16;
    *a6 = v17;
  }

  v19 = [HKOverlayRoomViewControllerIntegratedContext quantityContextWithIdentifier:*MEMORY[0x1E696BD58] overlayChartController:v10 applicationItems:v11 optionalDelegate:v17 seriesOptions:0 mode:a3];

  return v19;
}

- (id)_buildAverageDataSourceWithUnitController:(id)a3 displayType:(id)a4 healthStore:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[HKQuantityTypeDataSource alloc] initWithUnitController:v10 options:2 displayType:v9 healthStore:v8];

  [(HKQuantityTypeDataSource *)v11 setUserInfoCreationBlock:&__block_literal_global_20];
  v12 = [(HKOverlayRoomOxygenSaturationViewController *)self _buildGranularAverageDataSourceTitleFromTimeScope];
  v13 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v11 named:@"HKOverlayRoomNamedChartCacheDataSource_OxygenSaturation" withContextTitleForTimeScope:v12];

  return v13;
}

HKInteractiveChartSinglePointData *__113__HKOverlayRoomOxygenSaturationViewController__buildAverageDataSourceWithUnitController_displayType_healthStore___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696C510];
  v3 = a2;
  v4 = [v2 percentUnit];
  v5 = objc_alloc_init(HKInteractiveChartSinglePointData);
  v6 = [v3 averageQuantity];
  [v6 doubleValueForUnit:v4];
  [(HKInteractiveChartSinglePointData *)v5 setValue:?];

  [(HKInteractiveChartSinglePointData *)v5 setUnit:v4];
  v7 = [v3 statisticsInterval];
  [(HKInteractiveChartSinglePointData *)v5 setStatisticsInterval:v7];

  v8 = [v3 recordCount];
  [(HKInteractiveChartSinglePointData *)v5 setRecordCount:v8];

  return v5;
}

- (id)_buildGranularAverageDataSourceTitleFromTimeScope
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __96__HKOverlayRoomOxygenSaturationViewController__buildGranularAverageDataSourceTitleFromTimeScope__block_invoke;
  v5[3] = &unk_1E81B62B0;
  v5[4] = self;
  v5[5] = a2;
  v2 = _Block_copy(v5);
  v3 = _Block_copy(v2);

  return v3;
}

__CFString *__96__HKOverlayRoomOxygenSaturationViewController__buildGranularAverageDataSourceTitleFromTimeScope__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = &stru_1F42FFBE0;
  if (a2 > 4)
  {
    if (a2 > 6)
    {
      if (a2 != 7)
      {
        if (a2 != 8)
        {
          goto LABEL_18;
        }

        goto LABEL_11;
      }

      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = v5;
      v7 = @"SCANDIUM_OVERLAY_AVERAGE_BYMINUTE";
    }

    else
    {
      if (a2 == 5)
      {
LABEL_13:
        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v6 = v5;
        v7 = @"SCANDIUM_OVERLAY_AVERAGE_DAILY";
        goto LABEL_16;
      }

      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = v5;
      v7 = @"SCANDIUM_OVERLAY_AVERAGE_HOURLY";
    }

LABEL_16:
    v4 = [v5 localizedStringForKey:v7 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Scandium"];
    goto LABEL_17;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = v5;
      v7 = @"SCANDIUM_OVERLAY_AVERAGE_WEEKLY";
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (a2 >= 2)
  {
    if (a2 != 2)
    {
      goto LABEL_18;
    }

    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v6 = v5;
    v7 = @"SCANDIUM_OVERLAY_AVERAGE_MONTHLY";
    goto LABEL_16;
  }

LABEL_11:
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"HKOverlayRoomOxygenSaturationViewController.m" lineNumber:447 description:{@"Unsupported zoom level (%ld)", a2}];
LABEL_17:

LABEL_18:

  return v4;
}

@end