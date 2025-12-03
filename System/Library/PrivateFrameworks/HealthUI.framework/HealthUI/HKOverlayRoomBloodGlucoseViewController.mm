@interface HKOverlayRoomBloodGlucoseViewController
+ (id)_buildPercentInRangeChartCacheWithApplicationItems:(id)items;
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (BOOL)_isEnhancedChartingEnabledWithHealthStore:(id)store;
- (HKOverlayRoomBloodGlucoseViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode preferredOverlay:(int64_t)overlay trendModel:(id)model factorDisplayTypes:(id)types;
- (id)_buildBloodGlucoseAverageDataSourceWithUnitController:(id)controller displayType:(id)type healthStore:(id)store;
- (id)_buildEuglycemicRangeStringWithApplicationItems:(id)items;
- (id)_buildGranularAverageDataSourceTitleFromTimeScope;
- (id)_buildPercentInRangeDisplayTypeWithApplicationItems:(id)items classification:(int64_t)classification;
- (id)_buildPercentInRangeOverlayContextSectionWithApplicationItems:(id)items overlayChartController:(id)controller;
- (id)_buildPercentInRangeStackedBarSeriesForClassification:(int64_t)classification;
- (id)chartOverlayVersion;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
- (int64_t)_initialPillForPreference:(int64_t)preference;
@end

@implementation HKOverlayRoomBloodGlucoseViewController

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

- (HKOverlayRoomBloodGlucoseViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode preferredOverlay:(int64_t)overlay trendModel:(id)model factorDisplayTypes:(id)types
{
  dateCopy = date;
  itemsCopy = items;
  modelCopy = model;
  typesCopy = types;
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
  v33.super_class = HKOverlayRoomBloodGlucoseViewController;
  v22 = [(HKOverlayRoomViewController *)&v33 initWithDisplayDate:v21 applicationItems:itemsCopy factorDisplayTypes:typesCopy mode:mode];

  if (v22)
  {
    v22->_preferredOverlay = overlay;
    preferredOverlayIndex = v22->_preferredOverlayIndex;
    v22->_preferredOverlayIndex = 0;

    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contextDelegates = v22->_contextDelegates;
    v22->_contextDelegates = v24;

    v26 = [HKOverlayRoomBloodGlucoseViewController _buildPercentInRangeChartCacheWithApplicationItems:itemsCopy];
    percentInRangeChartCache = v22->_percentInRangeChartCache;
    v22->_percentInRangeChartCache = v26;

    objc_storeStrong(&v22->_trendModel, model);
    if (mode == 3)
    {
      v28 = 0;
    }

    else
    {
      selectTrendInitially = [modelCopy selectTrendInitially];
      if (mode)
      {
        v30 = overlay == 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = !v30;
      v28 = v31 | selectTrendInitially;
    }

    [(HKOverlayRoomViewController *)v22 setShouldSelectInitialOverlay:v28 & 1];
  }

  return v22;
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"BLOOD_GLUCOSE" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];

  return v4;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)items
{
  v3 = MEMORY[0x1E696C2E0];
  v4 = *MEMORY[0x1E696BC80];
  itemsCopy = items;
  v6 = [v3 quantityTypeForIdentifier:v4];
  displayTypeController = [itemsCopy displayTypeController];

  v8 = [displayTypeController displayTypeForObjectType:v6];

  return v8;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  v83[3] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  v10 = [(HKOverlayRoomBloodGlucoseViewController *)self primaryDisplayTypeWithApplicationItems:itemsCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_2;
  aBlock[3] = &unk_1E81B6178;
  v11 = controllerCopy;
  v72 = v11;
  v12 = itemsCopy;
  v73 = v12;
  modeCopy = mode;
  v13 = _Block_copy(aBlock);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_3;
  v67[3] = &unk_1E81B61A0;
  v14 = v11;
  v68 = v14;
  v15 = v12;
  v69 = v15;
  modeCopy2 = mode;
  v16 = _Block_copy(v67);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_4;
  v62[3] = &unk_1E81B61C8;
  v62[4] = self;
  v17 = v15;
  v63 = v17;
  v60 = v10;
  v64 = v60;
  v58 = v14;
  v65 = v58;
  modeCopy3 = mode;
  modeCopy4 = mode;
  v18 = _Block_copy(v62);
  v19 = v16[2](v16);
  v83[0] = v19;
  v20 = v13[2](v13, 0, 2);
  v83[1] = v20;
  v59 = v18;
  v21 = (v18[2])(v18);
  v83[2] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:3];

  v61 = v17;
  healthStore = [v17 healthStore];
  LODWORD(v17) = [(HKOverlayRoomBloodGlucoseViewController *)self _isEnhancedChartingEnabledWithHealthStore:healthStore];

  v56 = v17;
  if (v17)
  {
    v24 = v13[2](v13, 2, 32);
    v82[0] = v24;
    v25 = v13;
    v26 = v13[2](v13, 6, 128);
    v82[1] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
    v28 = [v22 arrayByAddingObjectsFromArray:v27];

    v29 = v28;
  }

  else
  {
    v25 = v13;
    v29 = v22;
  }

  v30 = [(HKOverlayRoomBloodGlucoseViewController *)self _initialPillForPreference:[(HKOverlayRoomBloodGlucoseViewController *)self preferredOverlay]];
  v31 = v58;
  if (v30 == 2)
  {
    v32 = v25;
    v25[2](v25, 2, 32);
    goto LABEL_8;
  }

  if (v30 == 1)
  {
    v32 = v25;
    v25[2](v25, 6, 128);
    v33 = LABEL_8:;
    goto LABEL_10;
  }

  v33 = v59[2]();
  v32 = v25;
LABEL_10:
  if (self->_trendModel)
  {
    v34 = [[HKOverlayRoomTrendContext alloc] initWithBaseDisplayType:v60 trendModel:self->_trendModel overlayChartController:v58 applicationItems:v61 overlayMode:modeCopy4];
    chartController = [(HKOverlayRoomViewController *)self chartController];
    [chartController setTrendAccessibilityDelegate:v34];

    v36 = [v29 arrayByAddingObject:v34];
    v37 = v29;
    v29 = v36;

    if ([(HKChartSummaryTrendModel *)self->_trendModel selectTrendInitially])
    {
      v38 = v34;

      v33 = v38;
      v31 = v58;
    }
  }

  if ((modeCopy4 - 1) < 2)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
    preferredOverlayIndex = self->_preferredOverlayIndex;
    self->_preferredOverlayIndex = v39;

    v41 = [HKOverlayContextSectionContainer alloc];
    v79 = v33;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
    v43 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v42, 0, v42);
    v80 = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
    v45 = [(HKOverlayContextSectionContainer *)v41 initWithContainerTitle:0 overlayContextSections:v44];
    v81 = v45;
    v46 = MEMORY[0x1E695DEC8];
    v47 = &v81;
    goto LABEL_16;
  }

  if (modeCopy4 == 3)
  {
    v49 = v29;
    v50 = [v29 indexOfObject:v33];
    if (v50 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v51 = 0;
    }

    else
    {
      v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v50];
    }

    objc_storeStrong(&self->_preferredOverlayIndex, v51);
    if (v50 != 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    v29 = v49;
    v42 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v53, 0, v49);
    if (!v56)
    {
      v55 = [HKOverlayContextSectionContainer alloc];
      v75 = v42;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
      v44 = [(HKOverlayContextSectionContainer *)v55 initWithContainerTitle:0 overlayContextSections:v43];
      v76 = v44;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
      goto LABEL_17;
    }

    v43 = [(HKOverlayRoomBloodGlucoseViewController *)self _buildPercentInRangeOverlayContextSectionWithApplicationItems:v61 overlayChartController:v31];
    v54 = [HKOverlayContextSectionContainer alloc];
    v77[0] = v42;
    v77[1] = v43;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
    v45 = [(HKOverlayContextSectionContainer *)v54 initWithContainerTitle:0 overlayContextSections:v44];
    v78 = v45;
    v46 = MEMORY[0x1E695DEC8];
    v47 = &v78;
LABEL_16:
    v48 = [v46 arrayWithObjects:v47 count:1];

LABEL_17:
    goto LABEL_22;
  }

  v48 = MEMORY[0x1E695E0F0];
LABEL_22:

  return v48;
}

HKOverlayContextSection *__115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[HKOverlayContextSection alloc] initWithSectionTitle:v5 overlayContextItems:v4];

  return v6;
}

HKOverlayRoomViewControllerLastQuantityContext *__115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_3(void *a1)
{
  v1 = [[HKOverlayRoomViewControllerLastQuantityContext alloc] initWithOverlayChartController:a1[4] applicationItems:a1[5] mode:a1[6]];

  return v1;
}

id __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) unitController];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) healthStore];
  v6 = [v2 _buildBloodGlucoseAverageDataSourceWithUnitController:v3 displayType:v4 healthStore:v5];

  v7 = [[_HKBloodGlucoseQuantityContextDelegate alloc] initWithCustomDataSource:v6 primaryDisplayType:*(a1 + 48)];
  if (v7)
  {
    [*(*(a1 + 32) + 1376) addObject:v7];
  }

  v8 = [HKOverlayRoomViewControllerIntegratedContext quantityContextWithIdentifier:*MEMORY[0x1E696BC80] overlayChartController:*(a1 + 56) applicationItems:*(a1 + 40) optionalDelegate:v7 seriesOptions:0 mode:*(a1 + 64)];

  return v8;
}

- (BOOL)_isEnhancedChartingEnabledWithHealthStore:(id)store
{
  storeCopy = store;
  profileIdentifier = [storeCopy profileIdentifier];
  type = [profileIdentifier type];

  if (type == 1)
  {
    v7 = objc_alloc(MEMORY[0x1E696C160]);
    v8 = [v7 initWithFeatureIdentifier:*MEMORY[0x1E696B890] healthStore:storeCopy];
    v15 = 0;
    v9 = [v8 onboardedCountryCodeSupportedStateWithError:&v15];
    v10 = v15;
    if (v9)
    {
      integerValue = [v9 integerValue];
      if (integerValue <= 5)
      {
        v12 = 5u >> integerValue;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      _HKInitializeLogging();
      v13 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(HKOverlayRoomBloodGlucoseViewController *)self _isEnhancedChartingEnabledWithHealthStore:v10, v13];
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (int64_t)_initialPillForPreference:(int64_t)preference
{
  result = 0;
  if (preference > 9)
  {
    if (preference == 11)
    {
      return result;
    }

    if (preference == 10)
    {
      return 2;
    }
  }

  else
  {
    if (!preference)
    {
      return result;
    }

    if (preference == 9)
    {
      return 1;
    }
  }

  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
  {
    [(HKOverlayRoomBloodGlucoseViewController *)preference _initialPillForPreference:v5];
  }

  return 0;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  itemsCopy = items;
  dateCopy = date;
  v10 = [HKOverlayRoomBloodGlucoseViewController alloc];
  preferredOverlay = [(HKOverlayRoomBloodGlucoseViewController *)self preferredOverlay];
  trendModel = self->_trendModel;
  factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v14 = [(HKOverlayRoomBloodGlucoseViewController *)v10 initWithDisplayDate:dateCopy applicationItems:itemsCopy mode:mode preferredOverlay:preferredOverlay trendModel:trendModel factorDisplayTypes:factorDisplayTypes];

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
  v9.super_class = HKOverlayRoomBloodGlucoseViewController;
  createChartOverlayViewController = [(HKOverlayRoomViewController *)&v9 createChartOverlayViewController];

  return createChartOverlayViewController;
}

- (id)_buildPercentInRangeOverlayContextSectionWithApplicationItems:(id)items overlayChartController:(id)controller
{
  v33[4] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __128__HKOverlayRoomBloodGlucoseViewController__buildPercentInRangeOverlayContextSectionWithApplicationItems_overlayChartController___block_invoke;
  aBlock[3] = &unk_1E81B6218;
  selfCopy = self;
  aBlock[4] = self;
  v27 = _Block_copy(aBlock);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __128__HKOverlayRoomBloodGlucoseViewController__buildPercentInRangeOverlayContextSectionWithApplicationItems_overlayChartController___block_invoke_3;
  v29[3] = &unk_1E81B6240;
  v29[4] = self;
  v30 = itemsCopy;
  v31 = controllerCopy;
  v28 = controllerCopy;
  v26 = itemsCopy;
  v8 = _Block_copy(v29);
  v9 = v8[2](v8, 3);
  v33[0] = v9;
  v10 = v8[2](v8, 2);
  v33[1] = v10;
  v11 = v8[2](v8, 1);
  v33[2] = v11;
  v12 = v8[2](v8, 0);
  v33[3] = v12;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];

  v13 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v15 = [v14 localizedStringForKey:@"GLUCOSE_OVERLAY_PERCENT_IN_RANGE_DESCRIPTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v16 = [(HKOverlayRoomBloodGlucoseViewController *)selfCopy _buildEuglycemicRangeStringWithApplicationItems:v26];
  v17 = [v13 stringWithFormat:v15, v16];

  v18 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v19 = [v18 localizedStringForKey:@"GLUCOSE_OVERLAY_PERCENT_IN_RANGE_SECTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v20 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v21 = [v20 localizedStringForKey:@"GLUCOSE_OVERLAY_LEARN_MORE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v22 = v27[2](v27, v19, v17, v21, v24);

  return v22;
}

HKOverlayContextSection *__128__HKOverlayRoomBloodGlucoseViewController__buildPercentInRangeOverlayContextSectionWithApplicationItems_overlayChartController___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, *(a1 + 32));
  v13 = [HKOverlayContextSection alloc];
  v14 = MEMORY[0x1E69DC628];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __128__HKOverlayRoomBloodGlucoseViewController__buildPercentInRangeOverlayContextSectionWithApplicationItems_overlayChartController___block_invoke_2;
  v21[3] = &unk_1E81B61F0;
  objc_copyWeak(&v25, &location);
  v15 = v9;
  v22 = v15;
  v16 = v10;
  v17 = *(a1 + 32);
  v23 = v16;
  v24 = v17;
  v18 = [v14 actionWithTitle:v11 image:0 identifier:0 handler:v21];
  v19 = [(HKOverlayContextSection *)v13 initWithSectionTitle:v15 overlayContextItems:v12 accessoryButtonAction:v18];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  return v19;
}

void __128__HKOverlayRoomBloodGlucoseViewController__buildPercentInRangeOverlayContextSectionWithApplicationItems_overlayChartController___block_invoke_2(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] symbolicTraits:2];
    v4 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v5 = objc_alloc(MEMORY[0x1E696AAB0]);
    v6 = *(a1 + 32);
    v24 = *MEMORY[0x1E69DB648];
    v7 = v24;
    v25[0] = v3;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v9 = [v5 initWithString:v6 attributes:v8];

    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v11 = *(a1 + 40);
    v22 = v7;
    v23 = v4;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v13 = [v10 initWithString:v11 attributes:v12];

    v14 = [[HKInfographicContentItem alloc] initWithTitle:v9 description:v13];
    v15 = [HKInfographicViewController alloc];
    v21 = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v17 = [(HKInfographicViewController *)v15 initWithContentItems:v16];

    v18 = HKHealthKitFrameworkBundle();
    v19 = [v18 localizedStringForKey:@"BLOOD_GLUCOSE" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];
    [(HKInfographicViewController *)v17 setTitle:v19];

    v20 = [[HKModalNavigationController alloc] initWithRootViewController:v17];
    [*(a1 + 48) hk_presentModalCardViewController:v20 fullScreen:0 animated:1 completion:0];
  }
}

_HKBloodGlucosePercentInRangeContext *__128__HKOverlayRoomBloodGlucoseViewController__buildPercentInRangeOverlayContextSectionWithApplicationItems_overlayChartController___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) _buildPercentInRangeDisplayTypeWithApplicationItems:*(a1 + 40) classification:a2];
  v5 = [_HKBloodGlucosePercentInRangeContext alloc];
  v6 = *(a1 + 48);
  v7 = [*(a1 + 40) unitController];
  v8 = [*(a1 + 40) displayTypeController];
  v9 = [(_HKBloodGlucosePercentInRangeContext *)v5 initWithBaseDisplayType:v4 classification:a2 overlayChartController:v6 unitController:v7 displayTypeController:v8];

  return v9;
}

- (id)_buildEuglycemicRangeStringWithApplicationItems:(id)items
{
  itemsCopy = items;
  v5 = [(HKOverlayRoomBloodGlucoseViewController *)self primaryDisplayTypeWithApplicationItems:itemsCopy];
  unitController = [itemsCopy unitController];
  v7 = [unitController unitForDisplayType:v5];

  unitController2 = [itemsCopy unitController];
  v9 = [unitController2 localizedDisplayNameForDisplayType:v5];

  v10 = [MEMORY[0x1E696C350] ATTDEuglycemicRangeWithUnit:v7];
  minimum = [v10 minimum];
  [minimum doubleValueForUnit:v7];
  v13 = v12;

  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
  unitController3 = [itemsCopy unitController];
  v16 = HKFormattedStringFromValue(v14, v5, unitController3, 0, 0);

  maximum = [v10 maximum];
  [maximum doubleValueForUnit:v7];
  v19 = v18;

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  unitController4 = [itemsCopy unitController];

  v22 = HKFormattedStringFromValue(v20, v5, unitController4, 0, 0);

  v23 = MEMORY[0x1E696AEC0];
  v24 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v25 = [v24 localizedStringForKey:@"OVERLAY_RANGE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v26 = [v23 stringWithFormat:v25, v16, v22];

  v27 = HKFormatValueAndUnit(v26, v9);

  return v27;
}

- (id)_buildPercentInRangeDisplayTypeWithApplicationItems:(id)items classification:(int64_t)classification
{
  v6 = MEMORY[0x1E696C2E0];
  v7 = *MEMORY[0x1E696BC80];
  itemsCopy = items;
  v9 = [v6 quantityTypeForIdentifier:v7];
  displayTypeController = [itemsCopy displayTypeController];

  v11 = [displayTypeController displayTypeForObjectType:v9];

  v12 = [(HKOverlayRoomBloodGlucoseViewController *)self _buildPercentInRangeStackedBarSeriesForClassification:classification];
  v13 = objc_alloc_init(HKInteractiveChartBloodGlucosePercentInRangeFormatter);
  [(HKInteractiveChartBloodGlucosePercentInRangeFormatter *)v13 setHighlightedClassification:classification];
  v14 = [[HKInteractiveChartDisplayType alloc] initWithGraphSeries:v12 baseDisplayType:v11 valueFormatter:v13 dataTypeCode:15];

  return v14;
}

- (id)_buildPercentInRangeStackedBarSeriesForClassification:(int64_t)classification
{
  v23[4] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(HKStackedBarSeries);
  v6 = objc_alloc_init(HKStrokeStyle);
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  [(HKStrokeStyle *)v6 setStrokeColor:v7];

  [(HKStrokeStyle *)v6 setLineWidth:3.0];
  [(HKStrokeStyle *)v6 setBlendMode:22];
  [(HKBarSeries *)v5 setUnselectedStrokeStyle:v6];
  hk_chartBackgroundColor = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
  v9 = [HKStrokeStyle strokeStyleWithColor:hk_chartBackgroundColor lineWidth:3.0];
  [(HKBarSeries *)v5 setTiledStrokeStyle:v9];

  [(HKBarSeries *)v5 setCornerRadii:1.5, 1.5];
  [(HKStackedBarSeries *)v5 setShouldRoundBottomCorners:1];
  v10 = objc_alloc_init(HKSolidFillStyle);
  hk_stackedBarSeriesUnselectedColor = [MEMORY[0x1E69DC888] hk_stackedBarSeriesUnselectedColor];
  [(HKSolidFillStyle *)v10 setColor:hk_stackedBarSeriesUnselectedColor];

  v12 = objc_alloc_init(HKSolidFillStyle);
  hk_vitalsKeyColor = [MEMORY[0x1E69DC888] hk_vitalsKeyColor];
  [(HKSolidFillStyle *)v12 setColor:hk_vitalsKeyColor];

  v14 = MEMORY[0x1E695DF70];
  v23[0] = v10;
  v23[1] = v10;
  v23[2] = v10;
  v23[3] = v10;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  v16 = [v14 arrayWithArray:v15];

  [v16 setObject:v12 atIndexedSubscript:classification];
  v17 = [MEMORY[0x1E696AD50] indexSetWithIndex:classification];
  if (classification == 1)
  {
    [v16 setObject:v12 atIndexedSubscript:0];
    [v17 addIndex:0];
  }

  [(HKStackedBarSeries *)v5 setUnseparatedSegmentIndices:v17];
  [(HKStackedBarSeries *)v5 setUnselectedFillStyles:v16];
  v18 = objc_alloc_init(HKNumericAxisConfiguration);
  v19 = objc_alloc_init(_HKAxisLabelDimensionBloodGlucosePercentInRange);
  [(HKNumericAxisConfiguration *)v18 setLabelDimension:v19];

  v20 = [HKNumericAxis standardNumericYAxisWithConfigurationOverrides:v18];
  [(HKGraphSeries *)v5 setYAxis:v20];

  v21 = objc_alloc_init(HKCacheBackedChartSeriesDataSource);
  [(HKCacheBackedChartSeriesDataSource *)v21 setChartCache:self->_percentInRangeChartCache];
  [(HKGraphSeries *)v5 setDataSource:v21];

  return v5;
}

+ (id)_buildPercentInRangeChartCacheWithApplicationItems:(id)items
{
  itemsCopy = items;
  v4 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BC80]];
  displayTypeController = [itemsCopy displayTypeController];
  v6 = [displayTypeController displayTypeForObjectType:v4];

  chartDataCacheController = [itemsCopy chartDataCacheController];
  v8 = [chartDataCacheController findCustomCachesForDisplayType:v6];

  v9 = [v8 hk_firstObjectPassingTest:&__block_literal_global_359];
  if (!v9)
  {
    v9 = objc_alloc_init(HKChartCache);
    v10 = [HKBloodGlucosePercentInRangeDataSource alloc];
    healthStore = [itemsCopy healthStore];
    unitController = [itemsCopy unitController];
    v13 = [(HKBloodGlucosePercentInRangeDataSource *)v10 initWithHealthStore:healthStore unitController:unitController];

    [(HKChartCache *)v9 setDataSource:v13];
    v14 = +[HKOutstandingFetchOperationManager sharedOperationManager];
    [(HKChartCache *)v9 setOperationManager:v14];

    chartDataCacheController2 = [itemsCopy chartDataCacheController];
    [chartDataCacheController2 addCustomChartCache:v9 forDisplayType:v6];
  }

  return v9;
}

uint64_t __94__HKOverlayRoomBloodGlucoseViewController__buildPercentInRangeChartCacheWithApplicationItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 dataSource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_buildBloodGlucoseAverageDataSourceWithUnitController:(id)controller displayType:(id)type healthStore:(id)store
{
  controllerCopy = controller;
  typeCopy = type;
  storeCopy = store;
  v11 = [(HKQuantityTypeDataSource *)[HKSingleDailyValueQuantityTypeDataSource alloc] initWithUnitController:controllerCopy options:2 displayType:typeCopy healthStore:storeCopy];

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __121__HKOverlayRoomBloodGlucoseViewController__buildBloodGlucoseAverageDataSourceWithUnitController_displayType_healthStore___block_invoke;
  v20 = &unk_1E81B6288;
  v21 = controllerCopy;
  v22 = typeCopy;
  v12 = typeCopy;
  v13 = controllerCopy;
  [(HKQuantityTypeDataSource *)v11 setUserInfoCreationBlock:&v17];
  v14 = [(HKOverlayRoomBloodGlucoseViewController *)self _buildGranularAverageDataSourceTitleFromTimeScope:v17];
  v15 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v11 named:@"HKOverlayRoomNamedChartCacheDataSource_BloodGlucose" withContextTitleForTimeScope:v14];

  return v15;
}

HKInteractiveChartSinglePointData *__121__HKOverlayRoomBloodGlucoseViewController__buildBloodGlucoseAverageDataSourceWithUnitController_displayType_healthStore___block_invoke(uint64_t a1, void *a2)
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
  v5[2] = __92__HKOverlayRoomBloodGlucoseViewController__buildGranularAverageDataSourceTitleFromTimeScope__block_invoke;
  v5[3] = &unk_1E81B62B0;
  v5[4] = self;
  v5[5] = a2;
  v2 = _Block_copy(v5);
  v3 = _Block_copy(v2);

  return v3;
}

__CFString *__92__HKOverlayRoomBloodGlucoseViewController__buildGranularAverageDataSourceTitleFromTimeScope__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = &stru_1F42FFBE0;
  if (a2 <= 3)
  {
    if (a2 >= 2)
    {
      if (a2 == 2)
      {
        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v6 = v5;
        v7 = @"OVERLAY_AVERAGE_MONTHLY";
      }

      else
      {
        if (a2 != 3)
        {
          goto LABEL_13;
        }

        v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v6 = v5;
        v7 = @"OVERLAY_AVERAGE_WEEKLY";
      }

      goto LABEL_11;
    }
  }

  else
  {
    if ((a2 - 4) < 3)
    {
      v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v6 = v5;
      v7 = @"OVERLAY_AVERAGE_DAILY";
LABEL_11:
      v4 = [v5 localizedStringForKey:v7 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
      goto LABEL_12;
    }

    if ((a2 - 7) >= 2)
    {
      goto LABEL_13;
    }
  }

  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"HKOverlayRoomBloodGlucoseViewController.m" lineNumber:549 description:{@"Unsupported zoom level (%ld)", a2}];
LABEL_12:

LABEL_13:

  return v4;
}

- (id)chartOverlayVersion
{
  selfCopy = self;
  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  healthStore = [applicationItems healthStore];
  LODWORD(selfCopy) = [(HKOverlayRoomBloodGlucoseViewController *)selfCopy _isEnhancedChartingEnabledWithHealthStore:healthStore];

  v5 = &HKChartOverlayVersionEnhancedOverlays;
  if (!selfCopy)
  {
    v5 = HKChartOverlayVersionOverlays;
  }

  v6 = *v5;

  return v6;
}

- (void)_isEnhancedChartingEnabledWithHealthStore:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&dword_1C3942000, a3, OS_LOG_TYPE_ERROR, "[%{public}@]: Error determining enhanced glucose charting availability: %{public}@", &v6, 0x16u);
}

- (void)_initialPillForPreference:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "HKOverlayRoomBloodGlucoseViewController received invalid secondary type: %ld", &v2, 0xCu);
}

@end