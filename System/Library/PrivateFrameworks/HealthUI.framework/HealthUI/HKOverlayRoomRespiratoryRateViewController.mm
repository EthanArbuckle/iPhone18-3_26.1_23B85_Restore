@interface HKOverlayRoomRespiratoryRateViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
- (HKOverlayRoomRespiratoryRateViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 preferredOverlay:(int64_t)a6 trendModel:(id)a7 factorDisplayTypes:(id)a8;
- (id)_buildGranularAverageDataSourceTitleFromTimeScope;
- (id)_buildRespiratoryRateAverageDataSourceWithUnitController:(id)a3 displayType:(id)a4 healthStore:(id)a5;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)primaryDisplayTypeWithApplicationItems:(id)a3;
- (int64_t)_initialPillForPreference:(int64_t)a3;
@end

@implementation HKOverlayRoomRespiratoryRateViewController

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

- (HKOverlayRoomRespiratoryRateViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 preferredOverlay:(int64_t)a6 trendModel:(id)a7 factorDisplayTypes:(id)a8
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
  v31.super_class = HKOverlayRoomRespiratoryRateViewController;
  v22 = [(HKOverlayRoomViewController *)&v31 initWithDisplayDate:v21 applicationItems:v17 factorDisplayTypes:v16 mode:a5];

  if (v22)
  {
    v22->_preferredOverlay = a6;
    preferredOverlayIndex = v22->_preferredOverlayIndex;
    v22->_preferredOverlayIndex = 0;

    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contextDelegates = v22->_contextDelegates;
    v22->_contextDelegates = v24;

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
  v4 = [v3 localizedStringForKey:@"RESPIRATORY_RATE" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];

  return v4;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)a3
{
  v3 = MEMORY[0x1E696C2E0];
  v4 = *MEMORY[0x1E696BD70];
  v5 = a3;
  v6 = [v3 quantityTypeForIdentifier:v4];
  v7 = [v5 displayTypeController];

  v8 = [v7 displayTypeForObjectType:v6];

  return v8;
}

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  v83[4] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(HKOverlayRoomRespiratoryRateViewController *)self primaryDisplayTypeWithApplicationItems:v8];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __118__HKOverlayRoomRespiratoryRateViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_2;
  aBlock[3] = &unk_1E81B6178;
  v11 = v9;
  v75 = v11;
  v12 = v8;
  v76 = v12;
  v77 = a3;
  v13 = _Block_copy(aBlock);
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __118__HKOverlayRoomRespiratoryRateViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_3;
  v70[3] = &unk_1E81B61A0;
  v14 = v11;
  v71 = v14;
  v15 = v12;
  v72 = v15;
  v73 = a3;
  v16 = _Block_copy(v70);
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __118__HKOverlayRoomRespiratoryRateViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_4;
  v65[3] = &unk_1E81B61C8;
  v65[4] = self;
  v17 = v15;
  v66 = v17;
  v18 = v10;
  v67 = v18;
  v19 = v14;
  v68 = v19;
  v69 = a3;
  v60 = a3;
  v20 = _Block_copy(v65);
  v63 = v16;
  v21 = (*(v16 + 2))(v16);
  v83[0] = v21;
  v22 = v13[2](v13, 0, 2);
  v83[1] = v22;
  v61 = v20;
  v23 = (*(v20 + 2))(v20);
  v83[2] = v23;
  v64 = v13;
  v24 = v13[2](v13, 6, 128);
  v83[3] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:4];

  v26 = [(HKOverlayRoomRespiratoryRateViewController *)self trendModel];

  v62 = v19;
  if (v26)
  {
    v27 = [HKOverlayRoomTrendContext alloc];
    v28 = [(HKOverlayRoomRespiratoryRateViewController *)self trendModel];
    v29 = v18;
    v30 = v18;
    v31 = v17;
    v32 = v60;
    v33 = [(HKOverlayRoomTrendContext *)v27 initWithBaseDisplayType:v30 trendModel:v28 overlayChartController:v19 applicationItems:v17 overlayMode:v60];

    v34 = [(HKOverlayRoomViewController *)self chartController];
    [v34 setTrendAccessibilityDelegate:v33];

    v35 = [v25 arrayByAddingObject:v33];

    v25 = v35;
  }

  else
  {
    v29 = v18;
    v31 = v17;
    v33 = 0;
    v32 = v60;
  }

  v36 = [(HKOverlayRoomRespiratoryRateViewController *)self _initialPillForPreference:[(HKOverlayRoomRespiratoryRateViewController *)self preferredOverlay]];
  if (!v36)
  {
    v39 = (*(v16 + 2))();
    goto LABEL_10;
  }

  if (v36 == 2)
  {
    v39 = v33;
LABEL_10:
    v38 = v39;
    v37 = v64;
    goto LABEL_12;
  }

  v37 = v64;
  if (v36 == 1)
  {
    v38 = v64[2](v64, 6, 128);
  }

  else
  {
    v38 = 0;
  }

LABEL_12:
  v40 = v29;
  if ((v32 - 1) >= 2)
  {
    v47 = v62;
    if (v32 != 3)
    {
      v51 = MEMORY[0x1E695E0F0];
      goto LABEL_28;
    }

    if (v38 && (v48 = [v25 indexOfObject:v38], v48 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v48];
      v50 = 0;
    }

    else
    {
      v49 = 0;
      v50 = 1;
    }

    v55 = v31;
    objc_storeStrong(&self->_preferredOverlayIndex, v49);
    if ((v50 & 1) == 0)
    {
    }

    v56 = [HKOverlayContextSectionContainer alloc];
    v46 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v56, 0, v25);
    v78 = v46;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
    v58 = [(HKOverlayContextSectionContainer *)v56 initWithContainerTitle:0 overlayContextSections:v57];
    v79 = v58;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];

    v31 = v55;
    v37 = v64;
  }

  else
  {
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
    preferredOverlayIndex = self->_preferredOverlayIndex;
    self->_preferredOverlayIndex = v41;

    v43 = [HKOverlayContextSectionContainer alloc];
    v44 = v43;
    v45 = v31;
    if (v38)
    {
      v80 = v38;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
      v46 = v43;
    }

    else
    {
      v46 = MEMORY[0x1E695E0F0];
    }

    v52 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v43, 0, v46);
    v81 = v52;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
    v54 = [(HKOverlayContextSectionContainer *)v44 initWithContainerTitle:0 overlayContextSections:v53];
    v82 = v54;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];

    v40 = v29;
    v47 = v62;
    v31 = v45;
    v37 = v64;
    if (!v38)
    {
      goto LABEL_28;
    }
  }

LABEL_28:

  return v51;
}

HKOverlayRoomViewControllerLastQuantityContext *__118__HKOverlayRoomRespiratoryRateViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_3(void *a1)
{
  v1 = [[HKOverlayRoomViewControllerLastQuantityContext alloc] initWithOverlayChartController:a1[4] applicationItems:a1[5] mode:a1[6]];

  return v1;
}

id __118__HKOverlayRoomRespiratoryRateViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) unitController];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) healthStore];
  v6 = [v2 _buildRespiratoryRateAverageDataSourceWithUnitController:v3 displayType:v4 healthStore:v5];

  v7 = [[_HKRespiratoryRateQuantityContextDelegate alloc] initWithCustomDataSource:v6 primaryDisplayType:*(a1 + 48)];
  if (v7)
  {
    [*(*(a1 + 32) + 1368) addObject:v7];
  }

  v8 = [HKOverlayRoomViewControllerIntegratedContext quantityContextWithIdentifier:*MEMORY[0x1E696BD70] overlayChartController:*(a1 + 56) applicationItems:*(a1 + 40) optionalDelegate:v7 seriesOptions:0 mode:*(a1 + 64)];

  return v8;
}

- (id)createChartOverlayViewController
{
  if ([(HKOverlayRoomViewController *)self controllerMode]!= 3)
  {
    v3 = [(HKOverlayRoomRespiratoryRateViewController *)self trendModel];
    v4 = [HKOverlayRoomTrendContext findStartingTimeScopeFromTrendModel:v3];

    if (v4 != 8)
    {
      v5 = [(HKOverlayRoomViewController *)self applicationItems];
      v6 = [v5 timeScopeController];
      [v6 setSelectedTimeScope:v4];
    }
  }

  v9.receiver = self;
  v9.super_class = HKOverlayRoomRespiratoryRateViewController;
  v7 = [(HKOverlayRoomViewController *)&v9 createChartOverlayViewController];

  return v7;
}

- (int64_t)_initialPillForPreference:(int64_t)a3
{
  v5 = [(HKOverlayRoomRespiratoryRateViewController *)self trendModel];
  if (v5)
  {
    v6 = v5;
    v7 = [(HKOverlayRoomRespiratoryRateViewController *)self trendModel];
    v8 = [v7 selectTrendInitially];

    if (v8)
    {
      return 2;
    }
  }

  result = 0;
  if (a3)
  {
    if (a3 == 9)
    {
      return 1;
    }

    else if (a3 != 11)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x1E696B940];
      if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
      {
        [(HKOverlayRoomRespiratoryRateViewController *)a3 _initialPillForPreference:v10];
      }

      return 0;
    }
  }

  return result;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [HKOverlayRoomRespiratoryRateViewController alloc];
  v11 = [(HKOverlayRoomRespiratoryRateViewController *)self preferredOverlay];
  v12 = [(HKOverlayRoomRespiratoryRateViewController *)self trendModel];
  v13 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v14 = [(HKOverlayRoomRespiratoryRateViewController *)v10 initWithDisplayDate:v9 applicationItems:v8 mode:a3 preferredOverlay:v11 trendModel:v12 factorDisplayTypes:v13];

  [(HKOverlayRoomViewController *)v14 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:a3]];

  return v14;
}

- (id)_buildRespiratoryRateAverageDataSourceWithUnitController:(id)a3 displayType:(id)a4 healthStore:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[HKQuantityTypeDataSource alloc] initWithUnitController:v8 options:2 displayType:v9 healthStore:v10];

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __127__HKOverlayRoomRespiratoryRateViewController__buildRespiratoryRateAverageDataSourceWithUnitController_displayType_healthStore___block_invoke;
  v20 = &unk_1E81B6288;
  v21 = v8;
  v22 = v9;
  v12 = v9;
  v13 = v8;
  [(HKQuantityTypeDataSource *)v11 setUserInfoCreationBlock:&v17];
  v14 = [(HKOverlayRoomRespiratoryRateViewController *)self _buildGranularAverageDataSourceTitleFromTimeScope:v17];
  v15 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v11 named:@"HKOverlayRoomNamedChartCacheDataSource_RespiratoryRate" withContextTitleForTimeScope:v14];

  return v15;
}

HKInteractiveChartSinglePointData *__127__HKOverlayRoomRespiratoryRateViewController__buildRespiratoryRateAverageDataSourceWithUnitController_displayType_healthStore___block_invoke(uint64_t a1, void *a2)
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
  -[HKInteractiveChartSinglePointData setRecordCount:](v6, "setRecordCount:", [v4 recordCount]);
  v8 = [v4 statisticsInterval];

  [(HKInteractiveChartSinglePointData *)v6 setStatisticsInterval:v8];

  return v6;
}

- (id)_buildGranularAverageDataSourceTitleFromTimeScope
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__HKOverlayRoomRespiratoryRateViewController__buildGranularAverageDataSourceTitleFromTimeScope__block_invoke;
  v5[3] = &unk_1E81B62B0;
  v5[4] = self;
  v5[5] = a2;
  v2 = _Block_copy(v5);
  v3 = _Block_copy(v2);

  return v3;
}

__CFString *__95__HKOverlayRoomRespiratoryRateViewController__buildGranularAverageDataSourceTitleFromTimeScope__block_invoke(uint64_t a1, uint64_t a2)
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
  [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"HKOverlayRoomRespiratoryRateViewController.m" lineNumber:309 description:{@"Unsupported zoom level (%ld)", a2}];
LABEL_17:

LABEL_18:

  return v4;
}

- (void)_initialPillForPreference:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "HKOverlayRoomRespiratoryRateViewController received invalid secondary type: %ld", &v2, 0xCu);
}

@end