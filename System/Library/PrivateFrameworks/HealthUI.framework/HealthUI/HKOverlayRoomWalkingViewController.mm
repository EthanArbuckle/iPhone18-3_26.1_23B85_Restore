@interface HKOverlayRoomWalkingViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (HKOverlayRoomWalkingViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode identifier:(id)identifier preferredOverlay:(int64_t)overlay trendModel:(id)model factorDisplayTypes:(id)types;
- (id)_buildGranularAverageDataSourceTitleFromTimeScope;
- (id)_buildWalkingAverageDataSourceWithUnitController:(id)controller displayType:(id)type healthStore:(id)store;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
- (id)showAllFiltersButtonTitle;
- (void)viewDidLoad;
@end

@implementation HKOverlayRoomWalkingViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  typesCopy = types;
  modelCopy = model;
  activityCopy = activity;
  dateCopy = date;
  itemsCopy = items;
  identifierCopy = identifier;
  v23 = [[self alloc] initWithDisplayDate:dateCopy applicationItems:itemsCopy mode:1 identifier:identifierCopy preferredOverlay:overlay trendModel:modelCopy factorDisplayTypes:typesCopy];

  [v23 setRestorationUserActivity:activityCopy];
  [v23 setAdditionalChartOptions:options];

  return v23;
}

- (HKOverlayRoomWalkingViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode identifier:(id)identifier preferredOverlay:(int64_t)overlay trendModel:(id)model factorDisplayTypes:(id)types
{
  dateCopy = date;
  identifierCopy = identifier;
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

  v33.receiver = self;
  v33.super_class = HKOverlayRoomWalkingViewController;
  v22 = [(HKOverlayRoomViewController *)&v33 initWithDisplayDate:v21 applicationItems:itemsCopy factorDisplayTypes:typesCopy mode:mode];

  if (v22)
  {
    objc_storeStrong(&v22->_quantityTypeIdentifier, identifier);
    v22->_preferredOverlay = overlay;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contextDelegates = v22->_contextDelegates;
    v22->_contextDelegates = v23;

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

    [(HKOverlayRoomViewController *)v22 setShouldSelectInitialOverlay:v26 & 1, overlay, identifierCopy];
  }

  return v22;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HKOverlayRoomWalkingViewController;
  [(HKOverlayRoomViewController *)&v2 viewDidLoad];
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  if ([(NSString *)self->_quantityTypeIdentifier isEqualToString:*MEMORY[0x1E696BE10]])
  {
    v5 = HKHealthKitFrameworkBundle();
    currentHandler = v5;
    v7 = *MEMORY[0x1E696B910];
    v8 = @"WALKING_SPEED";
LABEL_11:
    v9 = [v5 localizedStringForKey:v8 value:&stru_1F42FFBE0 table:v7];
    goto LABEL_12;
  }

  if ([(NSString *)self->_quantityTypeIdentifier isEqualToString:*MEMORY[0x1E696BE00]])
  {
    v5 = HKHealthKitFrameworkBundle();
    currentHandler = v5;
    v7 = *MEMORY[0x1E696B910];
    v8 = @"WALKING_DOUBLE_SUPPORT_PERCENTAGE";
    goto LABEL_11;
  }

  if ([(NSString *)self->_quantityTypeIdentifier isEqualToString:*MEMORY[0x1E696BDB8]])
  {
    v5 = HKHealthKitFrameworkBundle();
    currentHandler = v5;
    v7 = *MEMORY[0x1E696B910];
    v8 = @"STAIR_ASCENT_SPEED";
    goto LABEL_11;
  }

  if ([(NSString *)self->_quantityTypeIdentifier isEqualToString:*MEMORY[0x1E696BDC0]])
  {
    v5 = HKHealthKitFrameworkBundle();
    currentHandler = v5;
    v7 = *MEMORY[0x1E696B910];
    v8 = @"STAIR_DESCENT_SPEED";
    goto LABEL_11;
  }

  if ([(NSString *)self->_quantityTypeIdentifier isEqualToString:*MEMORY[0x1E696BE18]])
  {
    v5 = HKHealthKitFrameworkBundle();
    currentHandler = v5;
    v7 = *MEMORY[0x1E696B910];
    v8 = @"WALKING_STEP_LENGTH";
    goto LABEL_11;
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HKOverlayRoomWalkingViewController.m" lineNumber:133 description:{@"Unsupported identifier (%@)", self->_quantityTypeIdentifier}];
  v9 = &stru_1F42FFBE0;
LABEL_12:

  return v9;
}

- (id)showAllFiltersButtonTitle
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v3 = [v2 localizedStringForKey:@"SHOW_MORE_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v3;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)items
{
  v3 = MEMORY[0x1E696C2E0];
  quantityTypeIdentifier = self->_quantityTypeIdentifier;
  itemsCopy = items;
  v6 = [v3 quantityTypeForIdentifier:quantityTypeIdentifier];
  displayTypeController = [itemsCopy displayTypeController];

  v8 = [displayTypeController displayTypeForObjectType:v6];

  return v8;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  v68[3] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  v10 = [(HKOverlayRoomWalkingViewController *)self primaryDisplayTypeWithApplicationItems:itemsCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__HKOverlayRoomWalkingViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_2;
  aBlock[3] = &unk_1E81B61A0;
  v11 = controllerCopy;
  v61 = v11;
  v12 = itemsCopy;
  v62 = v12;
  modeCopy = mode;
  v13 = _Block_copy(aBlock);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __110__HKOverlayRoomWalkingViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_3;
  v56[3] = &unk_1E81B6178;
  v14 = v11;
  v57 = v14;
  v15 = v12;
  v58 = v15;
  modeCopy2 = mode;
  v16 = _Block_copy(v56);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __110__HKOverlayRoomWalkingViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_4;
  v51[3] = &unk_1E81B82E8;
  v51[4] = self;
  v17 = v15;
  v52 = v17;
  v18 = v10;
  v53 = v18;
  v19 = v14;
  v54 = v19;
  modeCopy3 = mode;
  v20 = _Block_copy(v51);
  v50 = v13;
  v21 = v13[2](v13);
  v68[0] = v21;
  v48 = v16;
  v22 = (*(v16 + 2))(v16, 0, 2);
  v68[1] = v22;
  v47 = v20;
  v23 = (*(v20 + 2))(v20, self->_quantityTypeIdentifier);
  v68[2] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:3];

  v25 = [v24 objectAtIndexedSubscript:0];
  trendModel = [(HKOverlayRoomWalkingViewController *)self trendModel];

  v49 = v17;
  if (trendModel)
  {
    v27 = [HKOverlayRoomTrendContext alloc];
    trendModel2 = [(HKOverlayRoomWalkingViewController *)self trendModel];
    v29 = v19;
    v30 = [(HKOverlayRoomTrendContext *)v27 initWithBaseDisplayType:v18 trendModel:trendModel2 overlayChartController:v19 applicationItems:v17 overlayMode:mode];

    chartController = [(HKOverlayRoomViewController *)self chartController];
    [chartController setTrendAccessibilityDelegate:v30];

    v32 = [v24 arrayByAddingObject:v30];

    trendModel3 = [(HKOverlayRoomWalkingViewController *)self trendModel];
    selectTrendInitially = [trendModel3 selectTrendInitially];

    if (selectTrendInitially)
    {
      v30 = v30;

      v25 = v30;
    }

    v24 = v32;
  }

  else
  {
    v29 = v19;
    v30 = 0;
  }

  v35 = v50;
  if ((mode - 1) >= 2)
  {
    if (mode != 3)
    {
      v42 = MEMORY[0x1E695E0F0];
      goto LABEL_17;
    }

    v43 = [v24 indexOfObject:v25];
    if (v43 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v44 = 0;
    }

    else
    {
      v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v43];
    }

    objc_storeStrong(&self->_preferredOverlayIndex, v44);
    if (v43 != 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v38, 0, v24);
    [v38 addObject:v45];

    v39 = [[HKOverlayContextSectionContainer alloc] initWithContainerTitle:0 overlayContextSections:v38];
    v64 = v39;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
  }

  else
  {
    preferredOverlayIndex = self->_preferredOverlayIndex;
    self->_preferredOverlayIndex = &unk_1F43828A8;

    v37 = [HKOverlayContextSectionContainer alloc];
    v65 = v25;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
    v39 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v38, 0, v38);
    v66 = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
    v41 = [(HKOverlayContextSectionContainer *)v37 initWithContainerTitle:0 overlayContextSections:v40];
    v67 = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
  }

  v35 = v50;
LABEL_17:

  return v42;
}

HKOverlayRoomViewControllerLastQuantityContext *__110__HKOverlayRoomWalkingViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_2(void *a1)
{
  v1 = [[HKOverlayRoomViewControllerLastQuantityContext alloc] initWithOverlayChartController:a1[4] applicationItems:a1[5] mode:a1[6]];

  return v1;
}

id __110__HKOverlayRoomWalkingViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) unitController];
  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) healthStore];
  v8 = [v4 _buildWalkingAverageDataSourceWithUnitController:v5 displayType:v6 healthStore:v7];

  v9 = [[_HKWalkingQuantityContextDelegate alloc] initWithCustomDataSource:v8 primaryDisplayType:*(a1 + 48)];
  if (v9)
  {
    [*(*(a1 + 32) + 1368) addObject:v9];
  }

  v10 = [HKOverlayRoomViewControllerIntegratedContext quantityContextWithIdentifier:v3 overlayChartController:*(a1 + 56) applicationItems:*(a1 + 40) optionalDelegate:v9 seriesOptions:0 mode:*(a1 + 64)];

  return v10;
}

- (id)createChartOverlayViewController
{
  if ([(HKOverlayRoomViewController *)self controllerMode]!= 3)
  {
    trendModel = [(HKOverlayRoomWalkingViewController *)self trendModel];
    v4 = [HKOverlayRoomTrendContext findStartingTimeScopeFromTrendModel:trendModel];

    if (v4 != 8)
    {
      applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
      timeScopeController = [applicationItems timeScopeController];
      [timeScopeController setSelectedTimeScope:v4];
    }
  }

  v9.receiver = self;
  v9.super_class = HKOverlayRoomWalkingViewController;
  createChartOverlayViewController = [(HKOverlayRoomViewController *)&v9 createChartOverlayViewController];

  return createChartOverlayViewController;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  itemsCopy = items;
  dateCopy = date;
  v10 = [HKOverlayRoomWalkingViewController alloc];
  quantityTypeIdentifier = self->_quantityTypeIdentifier;
  preferredOverlay = self->_preferredOverlay;
  trendModel = [(HKOverlayRoomWalkingViewController *)self trendModel];
  factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v15 = [(HKOverlayRoomWalkingViewController *)v10 initWithDisplayDate:dateCopy applicationItems:itemsCopy mode:mode identifier:quantityTypeIdentifier preferredOverlay:preferredOverlay trendModel:trendModel factorDisplayTypes:factorDisplayTypes];

  [(HKOverlayRoomViewController *)v15 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:mode]];

  return v15;
}

- (id)_buildWalkingAverageDataSourceWithUnitController:(id)controller displayType:(id)type healthStore:(id)store
{
  controllerCopy = controller;
  typeCopy = type;
  storeCopy = store;
  v11 = [[HKQuantityTypeDataSource alloc] initWithUnitController:controllerCopy options:66 displayType:typeCopy healthStore:storeCopy];

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __111__HKOverlayRoomWalkingViewController__buildWalkingAverageDataSourceWithUnitController_displayType_healthStore___block_invoke;
  v24 = &unk_1E81B6288;
  v25 = controllerCopy;
  v26 = typeCopy;
  v12 = typeCopy;
  v13 = controllerCopy;
  [(HKQuantityTypeDataSource *)v11 setUserInfoCreationBlock:&v21];
  _buildGranularAverageDataSourceTitleFromTimeScope = [(HKOverlayRoomWalkingViewController *)self _buildGranularAverageDataSourceTitleFromTimeScope];
  v15 = MEMORY[0x1E696AEC0];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v15 stringWithFormat:@"%@%@", @"HKOverlayRoomNamedChartCacheDataSource_", v17, v21, v22, v23, v24];

  v19 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v11 named:v18 withContextTitleForTimeScope:_buildGranularAverageDataSourceTitleFromTimeScope];

  return v19;
}

HKInteractiveChartSinglePointData *__111__HKOverlayRoomWalkingViewController__buildWalkingAverageDataSourceWithUnitController_displayType_healthStore___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 unitForDisplayType:v3];
  v6 = objc_alloc_init(HKInteractiveChartSinglePointData);
  v7 = [v4 averageQuantity];
  [v7 doubleValueForUnit:v5];
  [(HKInteractiveChartSinglePointData *)v6 setValue:?];

  [(HKInteractiveChartSinglePointData *)v6 setUnit:v5];
  v8 = [v4 statisticsInterval];
  [(HKInteractiveChartSinglePointData *)v6 setStatisticsInterval:v8];

  v9 = [v4 recordCount];
  [(HKInteractiveChartSinglePointData *)v6 setRecordCount:v9];

  return v6;
}

id __79__HKOverlayRoomWalkingViewController__buildAverageDataSourceTitleFromTimeScope__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v1 = [v0 localizedStringForKey:@"AVERAGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v1;
}

- (id)_buildGranularAverageDataSourceTitleFromTimeScope
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __87__HKOverlayRoomWalkingViewController__buildGranularAverageDataSourceTitleFromTimeScope__block_invoke;
  v5[3] = &unk_1E81B62B0;
  v5[4] = self;
  v5[5] = a2;
  v2 = _Block_copy(v5);
  v3 = _Block_copy(v2);

  return v3;
}

__CFString *__87__HKOverlayRoomWalkingViewController__buildGranularAverageDataSourceTitleFromTimeScope__block_invoke(uint64_t a1, uint64_t a2)
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
      v7 = @"OVERLAY_AVERAGE_BYMINUTE";
    }

    else
    {
      if (a2 == 5)
      {
LABEL_13:
        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v6 = v5;
        v7 = @"OVERLAY_AVERAGE_DAILY";
        goto LABEL_16;
      }

      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = v5;
      v7 = @"OVERLAY_AVERAGE_HOURLY";
    }

LABEL_16:
    v4 = [v5 localizedStringForKey:v7 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    goto LABEL_17;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = v5;
      v7 = @"OVERLAY_AVERAGE_WEEKLY";
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
    v7 = @"OVERLAY_AVERAGE_MONTHLY";
    goto LABEL_16;
  }

LABEL_11:
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"HKOverlayRoomWalkingViewController.m" lineNumber:332 description:{@"Unsupported zoom level (%ld)", a2}];
LABEL_17:

LABEL_18:

  return v4;
}

@end