@interface HKOverlayRoomWalkingViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
- (HKOverlayRoomWalkingViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 identifier:(id)a6 preferredOverlay:(int64_t)a7 trendModel:(id)a8 factorDisplayTypes:(id)a9;
- (id)_buildGranularAverageDataSourceTitleFromTimeScope;
- (id)_buildWalkingAverageDataSourceWithUnitController:(id)a3 displayType:(id)a4 healthStore:(id)a5;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)primaryDisplayTypeWithApplicationItems:(id)a3;
- (id)showAllFiltersButtonTitle;
- (void)viewDidLoad;
@end

@implementation HKOverlayRoomWalkingViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11
{
  v17 = a10;
  v18 = a9;
  v19 = a8;
  v20 = a6;
  v21 = a5;
  v22 = a3;
  v23 = [[a1 alloc] initWithDisplayDate:v20 applicationItems:v21 mode:1 identifier:v22 preferredOverlay:a7 trendModel:v18 factorDisplayTypes:v17];

  [v23 setRestorationUserActivity:v19];
  [v23 setAdditionalChartOptions:a11];

  return v23;
}

- (HKOverlayRoomWalkingViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 identifier:(id)a6 preferredOverlay:(int64_t)a7 trendModel:(id)a8 factorDisplayTypes:(id)a9
{
  v14 = a3;
  v32 = a6;
  v15 = a8;
  v16 = a9;
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

  v33.receiver = self;
  v33.super_class = HKOverlayRoomWalkingViewController;
  v22 = [(HKOverlayRoomViewController *)&v33 initWithDisplayDate:v21 applicationItems:v17 factorDisplayTypes:v16 mode:a5];

  if (v22)
  {
    objc_storeStrong(&v22->_quantityTypeIdentifier, a6);
    v22->_preferredOverlay = a7;
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contextDelegates = v22->_contextDelegates;
    v22->_contextDelegates = v23;

    preferredOverlayIndex = v22->_preferredOverlayIndex;
    v22->_preferredOverlayIndex = 0;

    objc_storeStrong(&v22->_trendModel, a8);
    if (a5 == 3)
    {
      v26 = 0;
    }

    else
    {
      v27 = [v15 selectTrendInitially];
      if (a5)
      {
        v28 = a7 == 0;
      }

      else
      {
        v28 = 1;
      }

      v29 = !v28;
      v26 = v29 | v27;
    }

    [(HKOverlayRoomViewController *)v22 setShouldSelectInitialOverlay:v26 & 1, a7, v32];
  }

  return v22;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HKOverlayRoomWalkingViewController;
  [(HKOverlayRoomViewController *)&v2 viewDidLoad];
}

- (id)controllerTitleWithApplicationItems:(id)a3
{
  if ([(NSString *)self->_quantityTypeIdentifier isEqualToString:*MEMORY[0x1E696BE10]])
  {
    v5 = HKHealthKitFrameworkBundle();
    v6 = v5;
    v7 = *MEMORY[0x1E696B910];
    v8 = @"WALKING_SPEED";
LABEL_11:
    v9 = [v5 localizedStringForKey:v8 value:&stru_1F42FFBE0 table:v7];
    goto LABEL_12;
  }

  if ([(NSString *)self->_quantityTypeIdentifier isEqualToString:*MEMORY[0x1E696BE00]])
  {
    v5 = HKHealthKitFrameworkBundle();
    v6 = v5;
    v7 = *MEMORY[0x1E696B910];
    v8 = @"WALKING_DOUBLE_SUPPORT_PERCENTAGE";
    goto LABEL_11;
  }

  if ([(NSString *)self->_quantityTypeIdentifier isEqualToString:*MEMORY[0x1E696BDB8]])
  {
    v5 = HKHealthKitFrameworkBundle();
    v6 = v5;
    v7 = *MEMORY[0x1E696B910];
    v8 = @"STAIR_ASCENT_SPEED";
    goto LABEL_11;
  }

  if ([(NSString *)self->_quantityTypeIdentifier isEqualToString:*MEMORY[0x1E696BDC0]])
  {
    v5 = HKHealthKitFrameworkBundle();
    v6 = v5;
    v7 = *MEMORY[0x1E696B910];
    v8 = @"STAIR_DESCENT_SPEED";
    goto LABEL_11;
  }

  if ([(NSString *)self->_quantityTypeIdentifier isEqualToString:*MEMORY[0x1E696BE18]])
  {
    v5 = HKHealthKitFrameworkBundle();
    v6 = v5;
    v7 = *MEMORY[0x1E696B910];
    v8 = @"WALKING_STEP_LENGTH";
    goto LABEL_11;
  }

  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"HKOverlayRoomWalkingViewController.m" lineNumber:133 description:{@"Unsupported identifier (%@)", self->_quantityTypeIdentifier}];
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

- (id)primaryDisplayTypeWithApplicationItems:(id)a3
{
  v3 = MEMORY[0x1E696C2E0];
  quantityTypeIdentifier = self->_quantityTypeIdentifier;
  v5 = a3;
  v6 = [v3 quantityTypeForIdentifier:quantityTypeIdentifier];
  v7 = [v5 displayTypeController];

  v8 = [v7 displayTypeForObjectType:v6];

  return v8;
}

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  v68[3] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(HKOverlayRoomWalkingViewController *)self primaryDisplayTypeWithApplicationItems:v8];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__HKOverlayRoomWalkingViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_2;
  aBlock[3] = &unk_1E81B61A0;
  v11 = v9;
  v61 = v11;
  v12 = v8;
  v62 = v12;
  v63 = a3;
  v13 = _Block_copy(aBlock);
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __110__HKOverlayRoomWalkingViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_3;
  v56[3] = &unk_1E81B6178;
  v14 = v11;
  v57 = v14;
  v15 = v12;
  v58 = v15;
  v59 = a3;
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
  v55 = a3;
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
  v26 = [(HKOverlayRoomWalkingViewController *)self trendModel];

  v49 = v17;
  if (v26)
  {
    v27 = [HKOverlayRoomTrendContext alloc];
    v28 = [(HKOverlayRoomWalkingViewController *)self trendModel];
    v29 = v19;
    v30 = [(HKOverlayRoomTrendContext *)v27 initWithBaseDisplayType:v18 trendModel:v28 overlayChartController:v19 applicationItems:v17 overlayMode:a3];

    v31 = [(HKOverlayRoomViewController *)self chartController];
    [v31 setTrendAccessibilityDelegate:v30];

    v32 = [v24 arrayByAddingObject:v30];

    v33 = [(HKOverlayRoomWalkingViewController *)self trendModel];
    v34 = [v33 selectTrendInitially];

    if (v34)
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
  if ((a3 - 1) >= 2)
  {
    if (a3 != 3)
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
    v3 = [(HKOverlayRoomWalkingViewController *)self trendModel];
    v4 = [HKOverlayRoomTrendContext findStartingTimeScopeFromTrendModel:v3];

    if (v4 != 8)
    {
      v5 = [(HKOverlayRoomViewController *)self applicationItems];
      v6 = [v5 timeScopeController];
      [v6 setSelectedTimeScope:v4];
    }
  }

  v9.receiver = self;
  v9.super_class = HKOverlayRoomWalkingViewController;
  v7 = [(HKOverlayRoomViewController *)&v9 createChartOverlayViewController];

  return v7;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [HKOverlayRoomWalkingViewController alloc];
  quantityTypeIdentifier = self->_quantityTypeIdentifier;
  preferredOverlay = self->_preferredOverlay;
  v13 = [(HKOverlayRoomWalkingViewController *)self trendModel];
  v14 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v15 = [(HKOverlayRoomWalkingViewController *)v10 initWithDisplayDate:v9 applicationItems:v8 mode:a3 identifier:quantityTypeIdentifier preferredOverlay:preferredOverlay trendModel:v13 factorDisplayTypes:v14];

  [(HKOverlayRoomViewController *)v15 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:a3]];

  return v15;
}

- (id)_buildWalkingAverageDataSourceWithUnitController:(id)a3 displayType:(id)a4 healthStore:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[HKQuantityTypeDataSource alloc] initWithUnitController:v8 options:66 displayType:v9 healthStore:v10];

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __111__HKOverlayRoomWalkingViewController__buildWalkingAverageDataSourceWithUnitController_displayType_healthStore___block_invoke;
  v24 = &unk_1E81B6288;
  v25 = v8;
  v26 = v9;
  v12 = v9;
  v13 = v8;
  [(HKQuantityTypeDataSource *)v11 setUserInfoCreationBlock:&v21];
  v14 = [(HKOverlayRoomWalkingViewController *)self _buildGranularAverageDataSourceTitleFromTimeScope];
  v15 = MEMORY[0x1E696AEC0];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v15 stringWithFormat:@"%@%@", @"HKOverlayRoomNamedChartCacheDataSource_", v17, v21, v22, v23, v24];

  v19 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v11 named:v18 withContextTitleForTimeScope:v14];

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