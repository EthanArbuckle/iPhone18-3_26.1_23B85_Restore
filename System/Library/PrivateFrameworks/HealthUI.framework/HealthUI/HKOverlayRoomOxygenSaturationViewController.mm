@interface HKOverlayRoomOxygenSaturationViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (HKOverlayRoomOxygenSaturationViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode preferredOverlay:(int64_t)overlay trendModel:(id)model factorDisplayTypes:(id)types;
- (id)_buildAverageDataSourceWithUnitController:(id)controller displayType:(id)type healthStore:(id)store;
- (id)_buildGranularAverageDataSourceTitleFromTimeScope;
- (id)_configureContextSectionsForFullMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)_configureContextSectionsForSingleOverlayMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)_createOverrideOnboardingGestureRecognizer;
- (id)_makeAverageContextForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller contextDelegate:(id *)delegate;
- (id)_makeLatestContextForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)_makePressureOverlayContextForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller context:(unint64_t)context contextDelegate:(id *)delegate;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
- (void)_installOverrideOnboardingGestureRecognizer;
- (void)_overrideOnboardingAction:(id)action;
- (void)_uninstallOverrideOnboardingGestureRecognizer;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HKOverlayRoomOxygenSaturationViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  typesCopy = types;
  modelCopy = model;
  activityCopy = activity;
  dateCopy = date;
  itemsCopy = items;
  v21 = [[self alloc] initWithDisplayDate:dateCopy applicationItems:itemsCopy mode:1 preferredOverlay:overlay trendModel:modelCopy factorDisplayTypes:typesCopy];

  [v21 setRestorationUserActivity:activityCopy];
  [v21 setAdditionalChartOptions:options];

  return v21;
}

- (HKOverlayRoomOxygenSaturationViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode preferredOverlay:(int64_t)overlay trendModel:(id)model factorDisplayTypes:(id)types
{
  dateCopy = date;
  modelCopy = model;
  typesCopy = types;
  itemsCopy = items;
  v18 = [HKOverlayRoomTrendContext findInitialDateFromTrendModel:modelCopy];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = dateCopy;
  }

  v21 = v20;

  v31.receiver = self;
  v31.super_class = HKOverlayRoomOxygenSaturationViewController;
  v22 = [(HKOverlayRoomViewController *)&v31 initWithDisplayDate:v21 applicationItems:itemsCopy factorDisplayTypes:typesCopy mode:mode];

  if (v22)
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contextDelegates = v22->_contextDelegates;
    v22->_contextDelegates = v23;

    v22->_preferredOverlay = overlay;
    preferredOverlayIndex = v22->_preferredOverlayIndex;
    v22->_preferredOverlayIndex = 0;

    objc_storeStrong(&v22->_trendModel, model);
    if (mode == 3)
    {
      v26 = 0;
    }

    else
    {
      selectTrendInitially = [modelCopy selectTrendInitially];
      if (mode)
      {
        v28 = overlay == 0;
      }

      else
      {
        v28 = 1;
      }

      v29 = !v28;
      v26 = v29 | selectTrendInitially;
    }

    [(HKOverlayRoomViewController *)v22 setShouldSelectInitialOverlay:v26 & 1];
  }

  return v22;
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"OXYGEN_SATURATION" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HKOverlayRoomOxygenSaturationViewController;
  [(HKOverlayRoomOxygenSaturationViewController *)&v4 viewWillAppear:appear];
  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    [(HKOverlayRoomOxygenSaturationViewController *)self _installOverrideOnboardingGestureRecognizer];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    [(HKOverlayRoomOxygenSaturationViewController *)self _uninstallOverrideOnboardingGestureRecognizer];
  }

  v5.receiver = self;
  v5.super_class = HKOverlayRoomOxygenSaturationViewController;
  [(HKOverlayRoomOxygenSaturationViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)_installOverrideOnboardingGestureRecognizer
{
  _createOverrideOnboardingGestureRecognizer = [(HKOverlayRoomOxygenSaturationViewController *)self _createOverrideOnboardingGestureRecognizer];
  [(HKOverlayRoomOxygenSaturationViewController *)self setOverrideOnboardingRecognizer:_createOverrideOnboardingGestureRecognizer];

  navigationController = [(HKOverlayRoomOxygenSaturationViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  overrideOnboardingRecognizer = [(HKOverlayRoomOxygenSaturationViewController *)self overrideOnboardingRecognizer];
  [navigationBar addGestureRecognizer:overrideOnboardingRecognizer];
}

- (void)_uninstallOverrideOnboardingGestureRecognizer
{
  navigationController = [(HKOverlayRoomOxygenSaturationViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  overrideOnboardingRecognizer = [(HKOverlayRoomOxygenSaturationViewController *)self overrideOnboardingRecognizer];
  [navigationBar removeGestureRecognizer:overrideOnboardingRecognizer];

  [(HKOverlayRoomOxygenSaturationViewController *)self setOverrideOnboardingRecognizer:0];
}

- (id)_createOverrideOnboardingGestureRecognizer
{
  v2 = [[_HKOxygenSaturationOverrideTapGestureRecognizer alloc] initWithTarget:self action:sel__overrideOnboardingAction_];

  return v2;
}

- (void)_overrideOnboardingAction:(id)action
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
  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  healthStore = [applicationItems healthStore];
  v13 = [(HKFeatureAvailabilityInternalSettingsViewController *)v10 initWithHealthStore:healthStore configuration:v9];

  [(HKOverlayRoomOxygenSaturationViewController *)self showViewController:v13 sender:self];
}

- (id)primaryDisplayTypeWithApplicationItems:(id)items
{
  v3 = MEMORY[0x1E696C2E0];
  v4 = *MEMORY[0x1E696BD58];
  itemsCopy = items;
  v6 = [v3 quantityTypeForIdentifier:v4];
  displayTypeController = [itemsCopy displayTypeController];

  v8 = [displayTypeController displayTypeForObjectType:v6];

  return v8;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  v18[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  if ((mode - 1) < 2)
  {
    v10 = [HKOverlayContextSectionContainer alloc];
    v11 = [(HKOverlayRoomOxygenSaturationViewController *)self _configureContextSectionsForSingleOverlayMode:mode applicationItems:itemsCopy overlayChartController:controllerCopy];
    v12 = [(HKOverlayContextSectionContainer *)v10 initWithContainerTitle:0 overlayContextSections:v11];
    v18[0] = v12;
    v13 = v18;
LABEL_5:
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

    goto LABEL_7;
  }

  if (mode == 3)
  {
    v14 = [HKOverlayContextSectionContainer alloc];
    v11 = [(HKOverlayRoomOxygenSaturationViewController *)self _configureContextSectionsForFullMode:3 applicationItems:itemsCopy overlayChartController:controllerCopy];
    v12 = [(HKOverlayContextSectionContainer *)v14 initWithContainerTitle:0 overlayContextSections:v11];
    v17 = v12;
    v13 = &v17;
    goto LABEL_5;
  }

  v15 = MEMORY[0x1E695E0F0];
LABEL_7:

  return v15;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  itemsCopy = items;
  dateCopy = date;
  v10 = [HKOverlayRoomOxygenSaturationViewController alloc];
  preferredOverlay = [(HKOverlayRoomOxygenSaturationViewController *)self preferredOverlay];
  trendModel = self->_trendModel;
  factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v14 = [(HKOverlayRoomOxygenSaturationViewController *)v10 initWithDisplayDate:dateCopy applicationItems:itemsCopy mode:mode preferredOverlay:preferredOverlay trendModel:trendModel factorDisplayTypes:factorDisplayTypes];

  [(HKOverlayRoomViewController *)v14 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:mode]];

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
      applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
      timeScopeController = [applicationItems timeScopeController];
      [timeScopeController setSelectedTimeScope:v4];
    }
  }

  v9.receiver = self;
  v9.super_class = HKOverlayRoomOxygenSaturationViewController;
  createChartOverlayViewController = [(HKOverlayRoomViewController *)&v9 createChartOverlayViewController];

  return createChartOverlayViewController;
}

- (id)_configureContextSectionsForSingleOverlayMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  v22[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  v10 = [(HKOverlayRoomOxygenSaturationViewController *)self _makeLatestContextForMode:mode applicationItems:itemsCopy overlayChartController:controllerCopy];
  preferredOverlayIndex = self->_preferredOverlayIndex;
  self->_preferredOverlayIndex = &unk_1F43824E8;

  trendModel = self->_trendModel;
  if (trendModel && [(HKChartSummaryTrendModel *)trendModel selectTrendInitially])
  {
    v13 = [(HKOverlayRoomOxygenSaturationViewController *)self primaryDisplayTypeWithApplicationItems:itemsCopy];
    v14 = [[HKOverlayRoomTrendContext alloc] initWithBaseDisplayType:v13 trendModel:self->_trendModel overlayChartController:controllerCopy applicationItems:itemsCopy overlayMode:mode];
    chartController = [(HKOverlayRoomViewController *)self chartController];
    [chartController setTrendAccessibilityDelegate:v14];

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

- (id)_configureContextSectionsForFullMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  v33[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = [(HKOverlayRoomOxygenSaturationViewController *)self _makeLatestContextForMode:mode applicationItems:itemsCopy overlayChartController:controllerCopy];
  [v10 addObject:v11];
  v30 = v11;
  v29 = [(HKOverlayRoomOxygenSaturationViewController *)self _makeRangeContextForMode:mode applicationItems:itemsCopy overlayChartController:controllerCopy];
  [v10 addObject:?];
  v32 = 0;
  v12 = [(HKOverlayRoomOxygenSaturationViewController *)self _makeAverageContextForMode:mode applicationItems:itemsCopy overlayChartController:controllerCopy contextDelegate:&v32];
  v13 = v32;
  [v10 addObject:v12];
  if (v13)
  {
    contextDelegates = [(HKOverlayRoomOxygenSaturationViewController *)self contextDelegates];
    [contextDelegates addObject:v13];
  }

  v31 = 0;
  v15 = [(HKOverlayRoomOxygenSaturationViewController *)self _makePressureOverlayContextForMode:mode applicationItems:itemsCopy overlayChartController:controllerCopy context:1 contextDelegate:&v31];
  v16 = v31;
  v28 = v15;
  [v10 addObject:v15];
  if (v16)
  {
    contextDelegates2 = [(HKOverlayRoomOxygenSaturationViewController *)self contextDelegates];
    [contextDelegates2 addObject:v16];
  }

  v18 = [(HKOverlayRoomOxygenSaturationViewController *)self _makeSleepContextForMode:mode applicationItems:itemsCopy overlayChartController:controllerCopy];
  [v10 addObject:v18];
  v19 = v30;
  if (self->_trendModel)
  {
    v20 = [(HKOverlayRoomOxygenSaturationViewController *)self primaryDisplayTypeWithApplicationItems:itemsCopy];
    v21 = [[HKOverlayRoomTrendContext alloc] initWithBaseDisplayType:v20 trendModel:self->_trendModel overlayChartController:controllerCopy applicationItems:itemsCopy overlayMode:mode];
    chartController = [(HKOverlayRoomViewController *)self chartController];
    [chartController setTrendAccessibilityDelegate:v21];

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

- (id)_makePressureOverlayContextForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller context:(unint64_t)context contextDelegate:(id *)delegate
{
  itemsCopy = items;
  controllerCopy = controller;
  v15 = HKOxygenSaturationLowBarometricPressureThresholdQuantity();
  if (context)
  {
    if (context != 1)
    {
      v23 = 0;
      v20 = 0;
      goto LABEL_7;
    }

    currentHandler = [MEMORY[0x1E696C378] predicateForObjectsWithMetadataKey:*MEMORY[0x1E696BA50] operatorType:1 value:v15];
    v17 = [HKInteractiveChartOverlayPredicate alloc];
    v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v19 = [v18 localizedStringForKey:@"SCANDIUM_OVERLAY_LOW_AIR_PRESSURE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Scandium"];
    v20 = [(HKInteractiveChartOverlayPredicate *)v17 initWithPredicate:currentHandler name:v19];

    v21 = [_HKOxygenSaturationIntegratedContextDelegate alloc];
    primaryDisplayType = [(HKOverlayRoomViewController *)self primaryDisplayType];
    v23 = [(_HKOxygenSaturationIntegratedContextDelegate *)v21 initWithCustomDataSource:0 primaryDisplayType:primaryDisplayType context:1];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKOverlayRoomOxygenSaturationViewController.m" lineNumber:320 description:@"unsupported context"];
    v23 = 0;
    v20 = 0;
  }

LABEL_7:
  v24 = [HKOverlayRoomViewControllerIntegratedContext distributionContextWithStyle:0 namedPredicate:v20 overlayChartController:controllerCopy applicationItems:itemsCopy optionalDelegate:v23 options:0 mode:mode];
  if (delegate && v23)
  {
    v25 = v23;
    *delegate = v23;
  }

  return v24;
}

- (id)_makeLatestContextForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  controllerCopy = controller;
  itemsCopy = items;
  v9 = [[HKOverlayRoomViewControllerLastQuantityContext alloc] initWithOverlayChartController:controllerCopy applicationItems:itemsCopy mode:mode];

  return v9;
}

- (id)_makeAverageContextForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller contextDelegate:(id *)delegate
{
  controllerCopy = controller;
  itemsCopy = items;
  v12 = [(HKOverlayRoomOxygenSaturationViewController *)self primaryDisplayTypeWithApplicationItems:itemsCopy];
  unitController = [itemsCopy unitController];
  healthStore = [itemsCopy healthStore];
  v15 = [(HKOverlayRoomOxygenSaturationViewController *)self _buildAverageDataSourceWithUnitController:unitController displayType:v12 healthStore:healthStore];

  v16 = [[_HKOxygenSaturationIntegratedContextDelegate alloc] initWithCustomDataSource:v15 primaryDisplayType:v12 context:0];
  v17 = v16;
  if (delegate)
  {
    v18 = v16;
    *delegate = v17;
  }

  v19 = [HKOverlayRoomViewControllerIntegratedContext quantityContextWithIdentifier:*MEMORY[0x1E696BD58] overlayChartController:controllerCopy applicationItems:itemsCopy optionalDelegate:v17 seriesOptions:0 mode:mode];

  return v19;
}

- (id)_buildAverageDataSourceWithUnitController:(id)controller displayType:(id)type healthStore:(id)store
{
  storeCopy = store;
  typeCopy = type;
  controllerCopy = controller;
  v11 = [[HKQuantityTypeDataSource alloc] initWithUnitController:controllerCopy options:2 displayType:typeCopy healthStore:storeCopy];

  [(HKQuantityTypeDataSource *)v11 setUserInfoCreationBlock:&__block_literal_global_20];
  _buildGranularAverageDataSourceTitleFromTimeScope = [(HKOverlayRoomOxygenSaturationViewController *)self _buildGranularAverageDataSourceTitleFromTimeScope];
  v13 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v11 named:@"HKOverlayRoomNamedChartCacheDataSource_OxygenSaturation" withContextTitleForTimeScope:_buildGranularAverageDataSourceTitleFromTimeScope];

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