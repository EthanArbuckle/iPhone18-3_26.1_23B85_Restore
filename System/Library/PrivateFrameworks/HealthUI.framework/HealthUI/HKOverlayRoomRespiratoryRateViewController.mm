@interface HKOverlayRoomRespiratoryRateViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (HKOverlayRoomRespiratoryRateViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode preferredOverlay:(int64_t)overlay trendModel:(id)model factorDisplayTypes:(id)types;
- (id)_buildGranularAverageDataSourceTitleFromTimeScope;
- (id)_buildRespiratoryRateAverageDataSourceWithUnitController:(id)controller displayType:(id)type healthStore:(id)store;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
- (int64_t)_initialPillForPreference:(int64_t)preference;
@end

@implementation HKOverlayRoomRespiratoryRateViewController

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

- (HKOverlayRoomRespiratoryRateViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode preferredOverlay:(int64_t)overlay trendModel:(id)model factorDisplayTypes:(id)types
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
  v31.super_class = HKOverlayRoomRespiratoryRateViewController;
  v22 = [(HKOverlayRoomViewController *)&v31 initWithDisplayDate:v21 applicationItems:itemsCopy factorDisplayTypes:typesCopy mode:mode];

  if (v22)
  {
    v22->_preferredOverlay = overlay;
    preferredOverlayIndex = v22->_preferredOverlayIndex;
    v22->_preferredOverlayIndex = 0;

    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contextDelegates = v22->_contextDelegates;
    v22->_contextDelegates = v24;

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
  v4 = [v3 localizedStringForKey:@"RESPIRATORY_RATE" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];

  return v4;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)items
{
  v3 = MEMORY[0x1E696C2E0];
  v4 = *MEMORY[0x1E696BD70];
  itemsCopy = items;
  v6 = [v3 quantityTypeForIdentifier:v4];
  displayTypeController = [itemsCopy displayTypeController];

  v8 = [displayTypeController displayTypeForObjectType:v6];

  return v8;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  v83[4] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  v10 = [(HKOverlayRoomRespiratoryRateViewController *)self primaryDisplayTypeWithApplicationItems:itemsCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __118__HKOverlayRoomRespiratoryRateViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_2;
  aBlock[3] = &unk_1E81B6178;
  v11 = controllerCopy;
  v75 = v11;
  v12 = itemsCopy;
  v76 = v12;
  modeCopy = mode;
  v13 = _Block_copy(aBlock);
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __118__HKOverlayRoomRespiratoryRateViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_3;
  v70[3] = &unk_1E81B61A0;
  v14 = v11;
  v71 = v14;
  v15 = v12;
  v72 = v15;
  modeCopy2 = mode;
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
  modeCopy3 = mode;
  modeCopy4 = mode;
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

  trendModel = [(HKOverlayRoomRespiratoryRateViewController *)self trendModel];

  v62 = v19;
  if (trendModel)
  {
    v27 = [HKOverlayRoomTrendContext alloc];
    trendModel2 = [(HKOverlayRoomRespiratoryRateViewController *)self trendModel];
    v29 = v18;
    v30 = v18;
    v31 = v17;
    v32 = modeCopy4;
    v33 = [(HKOverlayRoomTrendContext *)v27 initWithBaseDisplayType:v30 trendModel:trendModel2 overlayChartController:v19 applicationItems:v17 overlayMode:modeCopy4];

    chartController = [(HKOverlayRoomViewController *)self chartController];
    [chartController setTrendAccessibilityDelegate:v33];

    v35 = [v25 arrayByAddingObject:v33];

    v25 = v35;
  }

  else
  {
    v29 = v18;
    v31 = v17;
    v33 = 0;
    v32 = modeCopy4;
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
    trendModel = [(HKOverlayRoomRespiratoryRateViewController *)self trendModel];
    v4 = [HKOverlayRoomTrendContext findStartingTimeScopeFromTrendModel:trendModel];

    if (v4 != 8)
    {
      applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
      timeScopeController = [applicationItems timeScopeController];
      [timeScopeController setSelectedTimeScope:v4];
    }
  }

  v9.receiver = self;
  v9.super_class = HKOverlayRoomRespiratoryRateViewController;
  createChartOverlayViewController = [(HKOverlayRoomViewController *)&v9 createChartOverlayViewController];

  return createChartOverlayViewController;
}

- (int64_t)_initialPillForPreference:(int64_t)preference
{
  trendModel = [(HKOverlayRoomRespiratoryRateViewController *)self trendModel];
  if (trendModel)
  {
    v6 = trendModel;
    trendModel2 = [(HKOverlayRoomRespiratoryRateViewController *)self trendModel];
    selectTrendInitially = [trendModel2 selectTrendInitially];

    if (selectTrendInitially)
    {
      return 2;
    }
  }

  result = 0;
  if (preference)
  {
    if (preference == 9)
    {
      return 1;
    }

    else if (preference != 11)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x1E696B940];
      if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
      {
        [(HKOverlayRoomRespiratoryRateViewController *)preference _initialPillForPreference:v10];
      }

      return 0;
    }
  }

  return result;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  itemsCopy = items;
  dateCopy = date;
  v10 = [HKOverlayRoomRespiratoryRateViewController alloc];
  preferredOverlay = [(HKOverlayRoomRespiratoryRateViewController *)self preferredOverlay];
  trendModel = [(HKOverlayRoomRespiratoryRateViewController *)self trendModel];
  factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v14 = [(HKOverlayRoomRespiratoryRateViewController *)v10 initWithDisplayDate:dateCopy applicationItems:itemsCopy mode:mode preferredOverlay:preferredOverlay trendModel:trendModel factorDisplayTypes:factorDisplayTypes];

  [(HKOverlayRoomViewController *)v14 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:mode]];

  return v14;
}

- (id)_buildRespiratoryRateAverageDataSourceWithUnitController:(id)controller displayType:(id)type healthStore:(id)store
{
  controllerCopy = controller;
  typeCopy = type;
  storeCopy = store;
  v11 = [[HKQuantityTypeDataSource alloc] initWithUnitController:controllerCopy options:2 displayType:typeCopy healthStore:storeCopy];

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __127__HKOverlayRoomRespiratoryRateViewController__buildRespiratoryRateAverageDataSourceWithUnitController_displayType_healthStore___block_invoke;
  v20 = &unk_1E81B6288;
  v21 = controllerCopy;
  v22 = typeCopy;
  v12 = typeCopy;
  v13 = controllerCopy;
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