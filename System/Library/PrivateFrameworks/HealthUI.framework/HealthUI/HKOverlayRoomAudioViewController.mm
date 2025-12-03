@interface HKOverlayRoomAudioViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (BOOL)_shouldShowUnattenuatedOverlayPill;
- (BOOL)supportsShowAllFilters;
- (HKOverlayRoomAudioViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode identifier:(id)identifier preferredOverlay:(int64_t)overlay audioExposureDeviceDataSource:(id)source trendModel:(id)model factorDisplayTypes:(id)self0;
- (id)_buildAudioAverageDataSourceWithUnitController:(id)controller displayType:(id)type healthStore:(id)store averageOverVisibleRange:(BOOL)range attenuated:(BOOL)attenuated;
- (id)_buildAverageDataSourceTitleFromTimeScope:(BOOL)scope;
- (id)_buildGranularAverageDataSourceTitleFromTimeScope;
- (id)_headphonePredicateForDevices:(id)devices withName:(id)name;
- (id)_makeHeadphoneDeviceFiltersUsingContextCreator:(id)creator;
- (id)_unattenuatedBaseDisplayTypeForPrimaryDisplayType:(id)type applicationItems:(id)items;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
- (id)showAllFiltersButtonTitle;
- (int64_t)_initialPillForPreference:(int64_t)preference;
- (void)_registerForAudioExposureDeviceUpdates;
- (void)_reloadAudioExposureDevices;
- (void)_setupAudioExposureDataSourceIfNeeded;
- (void)sampleTypeDateRangeController:(id)controller didUpdateDateRanges:(id)ranges;
- (void)viewDidLoad;
@end

@implementation HKOverlayRoomAudioViewController

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

- (HKOverlayRoomAudioViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode identifier:(id)identifier preferredOverlay:(int64_t)overlay audioExposureDeviceDataSource:(id)source trendModel:(id)model factorDisplayTypes:(id)self0
{
  dateCopy = date;
  identifierCopy = identifier;
  obj = source;
  sourceCopy = source;
  modelCopy = model;
  typesCopy = types;
  itemsCopy = items;
  v20 = [HKOverlayRoomTrendContext findInitialDateFromTrendModel:modelCopy];
  v21 = v20;
  v37 = dateCopy;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = dateCopy;
  }

  v23 = v22;

  v38.receiver = self;
  v38.super_class = HKOverlayRoomAudioViewController;
  v24 = [(HKOverlayRoomViewController *)&v38 initWithDisplayDate:v23 applicationItems:itemsCopy factorDisplayTypes:typesCopy mode:mode];

  if (v24)
  {
    if (([identifierCopy isEqualToString:*MEMORY[0x1E696BD08]] & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x1E696BD28]) & 1) == 0 && (objc_msgSend(identifierCopy, "isEqualToString:", *MEMORY[0x1E696BD10]) & 1) == 0)
    {
      [HKOverlayRoomAudioViewController initWithDisplayDate:a2 applicationItems:v24 mode:identifierCopy identifier:? preferredOverlay:? audioExposureDeviceDataSource:? trendModel:? factorDisplayTypes:?];
    }

    v24->_isShowingUnattenuatedOverlayPill = 0;
    objc_storeStrong(&v24->_quantityTypeIdentifier, identifier);
    v24->_preferredOverlay = overlay;
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contextDelegates = v24->_contextDelegates;
    v24->_contextDelegates = v25;

    objc_storeStrong(&v24->_audioExposureDevicesDataSource, obj);
    [(HKOverlayRoomAudioViewController *)v24 _setupAudioExposureDataSourceIfNeeded];
    objc_storeStrong(&v24->_trendModel, model);
    preferredOverlayIndex = v24->_preferredOverlayIndex;
    v24->_preferredOverlayIndex = 0;

    v28 = 0;
    if (mode != 3)
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

    [(HKOverlayRoomViewController *)v24 setShouldSelectInitialOverlay:v28 & 1, a2];
  }

  return v24;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HKOverlayRoomAudioViewController;
  [(HKOverlayRoomViewController *)&v3 viewDidLoad];
  [(HKOverlayRoomAudioViewController *)self _registerForAudioExposureDeviceUpdates];
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  if ([(HKOverlayRoomAudioViewController *)self _isEnvironmentalAudioExposureRoom])
  {
    v4 = HKHealthKitFrameworkBundle();
    v5 = v4;
    v6 = *MEMORY[0x1E696B910];
    v7 = @"ENVIRONMENTAL_AUDIO_EXPOSURE";
  }

  else
  {
    _isHeadphoneAudioExposureRoom = [(HKOverlayRoomAudioViewController *)self _isHeadphoneAudioExposureRoom];
    v4 = HKHealthKitFrameworkBundle();
    v5 = v4;
    v6 = *MEMORY[0x1E696B910];
    if (_isHeadphoneAudioExposureRoom)
    {
      v7 = @"HEADPHONE_AUDIO_EXPOSURE";
    }

    else
    {
      v7 = @"ENVIRONMENTAL_SOUND_REDUCTION";
    }
  }

  v9 = [v4 localizedStringForKey:v7 value:&stru_1F42FFBE0 table:v6];

  return v9;
}

- (BOOL)supportsShowAllFilters
{
  if ([(HKOverlayRoomAudioViewController *)self _isHeadphoneAudioExposureRoom]|| [(HKOverlayRoomAudioViewController *)self _isEnvironmentalAudioExposureRoom]|| (v3 = [(HKOverlayRoomViewController *)self healthFactorsEnabled]))
  {
    v5.receiver = self;
    v5.super_class = HKOverlayRoomAudioViewController;
    LOBYTE(v3) = [(HKOverlayRoomViewController *)&v5 supportsShowAllFilters];
  }

  return v3;
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
  v125[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  v10 = [(HKOverlayRoomAudioViewController *)self primaryDisplayTypeWithApplicationItems:itemsCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__HKOverlayRoomAudioViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_2;
  aBlock[3] = &unk_1E81B6178;
  v11 = controllerCopy;
  v111 = v11;
  v12 = itemsCopy;
  v112 = v12;
  modeCopy = mode;
  v13 = _Block_copy(aBlock);
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __108__HKOverlayRoomAudioViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_3;
  v105[3] = &unk_1E81B7578;
  v105[4] = self;
  v14 = v12;
  v106 = v14;
  v15 = v10;
  v107 = v15;
  v16 = v11;
  v108 = v16;
  modeCopy2 = mode;
  v17 = _Block_copy(v105);
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __108__HKOverlayRoomAudioViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_4;
  v101[3] = &unk_1E81B75A0;
  v18 = v16;
  v102 = v18;
  v19 = v14;
  v103 = v19;
  modeCopy3 = mode;
  v93 = _Block_copy(v101);
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __108__HKOverlayRoomAudioViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_5;
  v97[3] = &unk_1E81B61A0;
  v20 = v18;
  v98 = v20;
  v21 = v19;
  v99 = v21;
  modeCopy4 = mode;
  v22 = _Block_copy(v97);
  v94 = v22;
  v92 = v21;
  if ([(HKOverlayRoomAudioViewController *)self _isEnvironmentalAudioExposureRoom])
  {
    if ([(HKOverlayRoomAudioViewController *)self _initialPillForPreference:[(HKOverlayRoomAudioViewController *)self preferredOverlay]]== 1)
    {
      v13[2](v13, 5, 0);
    }

    else
    {
      v17[2](v17, self->_quantityTypeIdentifier, 2);
    }
    v25 = ;
    trendModel = [(HKOverlayRoomAudioViewController *)self trendModel];

    if (trendModel)
    {
      v27 = [HKOverlayRoomTrendContext alloc];
      trendModel2 = [(HKOverlayRoomAudioViewController *)self trendModel];
      v29 = [(HKOverlayRoomTrendContext *)v27 initWithBaseDisplayType:v15 trendModel:trendModel2 overlayChartController:v20 applicationItems:v21 overlayMode:mode];

      chartController = [(HKOverlayRoomViewController *)self chartController];
      [chartController setTrendAccessibilityDelegate:v29];

      trendModel3 = [(HKOverlayRoomAudioViewController *)self trendModel];
      LODWORD(trendModel2) = [trendModel3 selectTrendInitially];

      if (trendModel2)
      {
        v29 = v29;

        v25 = v29;
      }
    }

    else
    {
      v29 = 0;
    }

    if ((mode - 1) < 2)
    {
      v91 = v15;
      v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
      preferredOverlayIndex = self->_preferredOverlayIndex;
      self->_preferredOverlayIndex = v38;

      v40 = [HKOverlayContextSectionContainer alloc];
      v123 = v25;
      array = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
      v41 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(array, 0, array);
      v124 = v41;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
      v43 = [(HKOverlayContextSectionContainer *)v40 initWithContainerTitle:0 overlayContextSections:v42];
      v125[0] = v43;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:1];

LABEL_39:
LABEL_47:

      v15 = v91;
      goto LABEL_48;
    }

    if (mode == 3)
    {
      v87 = v20;
      v91 = v15;
      array = objc_alloc_init(MEMORY[0x1E695DF70]);
      v44 = v17[2](v17, self->_quantityTypeIdentifier, 2);
      [(HKOverlayContextSectionContainer *)array addObject:v44];

      if ([(HKOverlayRoomAudioViewController *)self _shouldShowUnattenuatedOverlayPill])
      {
        v45 = v17[2](v17, self->_quantityTypeIdentifier, 0);
        [(HKOverlayContextSectionContainer *)array addObject:v45];

        self->_isShowingUnattenuatedOverlayPill = 1;
      }

      v46 = v17[2](v17, self->_quantityTypeIdentifier, 1);
      v122[0] = v46;
      v47 = v94[2]();
      v122[1] = v47;
      v48 = v13[2](v13, 0, 2);
      v122[2] = v48;
      v89 = v13;
      v49 = v13[2](v13, 5, 0);
      v122[3] = v49;
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:4];
      [(HKOverlayContextSectionContainer *)array addObjectsFromArray:v50];

      if (v29)
      {
        [(HKOverlayContextSectionContainer *)array addObject:v29];
      }

      v51 = [(HKOverlayContextSectionContainer *)array indexOfObject:v25];
      if (v51 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v52 = 0;
      }

      else
      {
        v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v51];
      }

      v13 = v89;
      objc_storeStrong(&self->_preferredOverlayIndex, v52);
      if (v51 != 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v74 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v41, 0, array);
      [v41 addObject:v74];

      v42 = [[HKOverlayContextSectionContainer alloc] initWithContainerTitle:0 overlayContextSections:v41];
      v121 = v42;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v121 count:1];
      v20 = v87;
      goto LABEL_39;
    }

LABEL_34:
    v37 = MEMORY[0x1E695E0F0];
    goto LABEL_49;
  }

  _isHeadphoneAudioExposureRoom = [(HKOverlayRoomAudioViewController *)self _isHeadphoneAudioExposureRoom];
  v24 = [(HKOverlayRoomAudioViewController *)self _initialPillForPreference:[(HKOverlayRoomAudioViewController *)self preferredOverlay]];
  if (_isHeadphoneAudioExposureRoom)
  {
    if (v24 == 2)
    {
      v13[2](v13, 7, 0);
    }

    else
    {
      v17[2](v17, self->_quantityTypeIdentifier, 0);
    }
    v25 = ;
    trendModel4 = [(HKOverlayRoomAudioViewController *)self trendModel];

    if (trendModel4)
    {
      v54 = [HKOverlayRoomTrendContext alloc];
      trendModel5 = [(HKOverlayRoomAudioViewController *)self trendModel];
      v29 = [(HKOverlayRoomTrendContext *)v54 initWithBaseDisplayType:v15 trendModel:trendModel5 overlayChartController:v20 applicationItems:v21 overlayMode:mode];

      chartController2 = [(HKOverlayRoomViewController *)self chartController];
      [chartController2 setTrendAccessibilityDelegate:v29];

      trendModel6 = [(HKOverlayRoomAudioViewController *)self trendModel];
      LODWORD(trendModel5) = [trendModel6 selectTrendInitially];

      if (trendModel5)
      {
        v29 = v29;

        v25 = v29;
      }
    }

    else
    {
      v29 = 0;
    }

    if ((mode - 1) >= 2)
    {
      if (mode != 3)
      {
        goto LABEL_34;
      }

      v88 = v20;
      v91 = v15;
      array = [MEMORY[0x1E695DF70] array];
      v84 = MEMORY[0x1E695DF70];
      v85 = v17[2](v17, self->_quantityTypeIdentifier, 0);
      v117[0] = v85;
      v83 = v13[2](v13, 7, 0);
      v117[1] = v83;
      v64 = v17[2](v17, self->_quantityTypeIdentifier, 1);
      v117[2] = v64;
      v65 = v94[2]();
      v117[3] = v65;
      v90 = v13;
      v66 = v13[2](v13, 0, 2);
      v117[4] = v66;
      v67 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:5];
      v68 = [v84 arrayWithArray:v67];

      if (v29)
      {
        v69 = [v68 addObject:v29];
      }

      v86 = v68;
      v70 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v69, 0, v68);
      overlayContextItems = [v70 overlayContextItems];
      v72 = [overlayContextItems indexOfObject:v25];

      if (v72 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v73 = 0;
      }

      else
      {
        v73 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v72];
      }

      v13 = v90;
      objc_storeStrong(&self->_preferredOverlayIndex, v73);
      if (v72 != 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      v63 = v70;
      [(HKOverlayContextSectionContainer *)array addObject:v70];
      v95[0] = MEMORY[0x1E69E9820];
      v95[1] = 3221225472;
      v95[2] = __108__HKOverlayRoomAudioViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_6;
      v95[3] = &unk_1E81B75C8;
      v96 = v93;
      v75 = [(HKOverlayRoomAudioViewController *)self _makeHeadphoneDeviceFiltersUsingContextCreator:v95];
      v20 = v88;
      if ([v75 count])
      {
        v76 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
        v77 = [v76 localizedStringForKey:@"AUDIO_OVERLAY_HEADPHONES_FILTER_SECTION" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

        v79 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v78, v77, v75);
        [(HKOverlayContextSectionContainer *)array addObject:v79];

        v63 = v70;
      }

      v80 = [[HKOverlayContextSectionContainer alloc] initWithContainerTitle:0 overlayContextSections:array];
      v116 = v80;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v116 count:1];
      v37 = v81 = v75;

      v62 = v96;
      v41 = v86;
    }

    else
    {
      v91 = v15;
      v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
      v59 = self->_preferredOverlayIndex;
      self->_preferredOverlayIndex = v58;

      v60 = [HKOverlayContextSectionContainer alloc];
      v118 = v25;
      array = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
      v41 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(array, 0, array);
      v119 = v41;
      v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v119 count:1];
      v62 = [(HKOverlayContextSectionContainer *)v60 initWithContainerTitle:0 overlayContextSections:v61];
      v120 = v62;
      v63 = v61;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v120 count:1];
    }

    goto LABEL_47;
  }

  v25 = (v22[2])(v22);
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
  v33 = self->_preferredOverlayIndex;
  self->_preferredOverlayIndex = v32;

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v115 = v25;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:1];
  v35 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v34, 0, v34);
  [(HKOverlayRoomTrendContext *)v29 addObject:v35];

  array = [[HKOverlayContextSectionContainer alloc] initWithContainerTitle:0 overlayContextSections:v29];
  v114 = array;
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v114 count:1];
LABEL_48:

LABEL_49:

  return v37;
}

id __108__HKOverlayRoomAudioViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3 == 2)
  {
    v18 = *(a1 + 32);
    v19 = [*(a1 + 40) unitController];
    v20 = *(a1 + 48);
    v21 = [*(a1 + 40) healthStore];
    v10 = [v18 _buildAudioAverageDataSourceWithUnitController:v19 displayType:v20 healthStore:v21 averageOverVisibleRange:1 attenuated:1];

    v11 = [[_HKAudioVisibleRangeQuantityContextDelegate alloc] initWithCustomDataSource:v10 primaryDisplayType:*(a1 + 48)];
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v10 = [*(a1 + 32) primaryDisplayTypeWithApplicationItems:*(a1 + 40)];
    v13 = *(a1 + 32);
    v14 = [*(a1 + 40) unitController];
    v15 = [*(a1 + 40) healthStore];
    v16 = [v13 _buildAudioAverageDataSourceWithUnitController:v14 displayType:v10 healthStore:v15 averageOverVisibleRange:0 attenuated:1];

    v11 = [[_HKAudioStandardQuantityContextDelegate alloc] initWithCustomDataSource:v16 primaryDisplayType:v10];
    v12 = 0;
    v17 = 0;
    goto LABEL_10;
  }

  if (a3)
  {
    v17 = 0;
    v11 = 0;
    v12 = 0;
    goto LABEL_13;
  }

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) unitController];
  v8 = *(a1 + 48);
  v9 = [*(a1 + 40) healthStore];
  v10 = [v6 _buildAudioAverageDataSourceWithUnitController:v7 displayType:v8 healthStore:v9 averageOverVisibleRange:1 attenuated:0];

  v11 = [[_HKAudioVisibleRangeQuantityContextDelegate alloc] initWithCustomDataSource:v10 primaryDisplayType:*(a1 + 48)];
  if (![*(a1 + 32) _isEnvironmentalAudioExposureRoom])
  {
    goto LABEL_8;
  }

  v12 = [*(a1 + 32) _unattenuatedBaseDisplayTypeForPrimaryDisplayType:*(a1 + 48) applicationItems:*(a1 + 40)];
LABEL_9:
  v17 = 16;
LABEL_10:

  if (v11)
  {
    v22 = [*(a1 + 32) contextDelegates];
    [v22 addObject:v11];
  }

LABEL_13:
  v23 = [HKOverlayRoomViewControllerIntegratedContext quantityContextWithIdentifier:v5 overlayChartController:*(a1 + 56) applicationItems:*(a1 + 40) optionalDelegate:v11 seriesOptions:v17 mode:*(a1 + 64) optionalBaseDisplayType:v12];

  return v23;
}

HKOverlayRoomViewControllerLastQuantityContext *__108__HKOverlayRoomAudioViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_5(void *a1)
{
  v1 = [[HKOverlayRoomViewControllerLastQuantityContext alloc] initWithOverlayChartController:a1[4] applicationItems:a1[5] mode:a1[6] attenuated:1];

  return v1;
}

- (id)_unattenuatedBaseDisplayTypeForPrimaryDisplayType:(id)type applicationItems:(id)items
{
  v6 = *MEMORY[0x1E696BD08];
  itemsCopy = items;
  typeCopy = type;
  healthStore = [itemsCopy healthStore];
  unitController = [itemsCopy unitController];
  v11 = [typeCopy _audioLevelDataSourceForTypeIdentifier:v6 withHealthStore:healthStore attenuatesExposureData:0 unitController:unitController];

  v12 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v11 named:@"HKAudioExposureUnattenuatedData" withContextTitleForTimeScope:0];
  v13 = [typeCopy hk_interactiveChartsFormatterForTimeScope:5];
  displayCategory = [typeCopy displayCategory];
  unitController2 = [itemsCopy unitController];
  chartDataCacheController = [itemsCopy chartDataCacheController];

  v17 = [typeCopy hk_standardSeriesForTimeScope:5 displayCategory:displayCategory unitController:unitController2 dataCacheController:chartDataCacheController];

  chartController = [(HKOverlayRoomViewController *)self chartController];
  v19 = [chartController displayTypeForGraphSeries:v17 namedDataSource:v12 templateDisplayType:typeCopy timeScope:5 formatter:v13];

  return v19;
}

- (BOOL)_shouldShowUnattenuatedOverlayPill
{
  applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
  sampleDateRangeController = [applicationItems sampleDateRangeController];

  dateRangesBySampleType = [sampleDateRangeController dateRangesBySampleType];

  if (!dateRangesBySampleType)
  {
    goto LABEL_6;
  }

  v5 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BD10]];
  v6 = [sampleDateRangeController dateRangeForSampleType:v5];
  minValue = [v6 minValue];
  if (!minValue)
  {

    goto LABEL_6;
  }

  v8 = minValue;
  maxValue = [v6 maxValue];

  if (!maxValue)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_7:

  return v10;
}

- (void)sampleTypeDateRangeController:(id)controller didUpdateDateRanges:(id)ranges
{
  v6.receiver = self;
  v6.super_class = HKOverlayRoomAudioViewController;
  [(HKOverlayRoomViewController *)&v6 sampleTypeDateRangeController:controller didUpdateDateRanges:ranges];
  isShowingUnattenuatedOverlayPill = self->_isShowingUnattenuatedOverlayPill;
  if (isShowingUnattenuatedOverlayPill != [(HKOverlayRoomAudioViewController *)self _shouldShowUnattenuatedOverlayPill])
  {
    [(HKOverlayRoomViewController *)self reloadOverlayContextItems];
  }
}

- (id)_makeHeadphoneDeviceFiltersUsingContextCreator:(id)creator
{
  v36 = *MEMORY[0x1E69E9840];
  creatorCopy = creator;
  v4 = MEMORY[0x1E695DF70];
  audioExposureDevicesDataSource = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];
  devicesByName = [audioExposureDevicesDataSource devicesByName];
  v7 = [v4 arrayWithCapacity:{objc_msgSend(devicesByName, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  audioExposureDevicesDataSource2 = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];
  devicesByName2 = [audioExposureDevicesDataSource2 devicesByName];

  obj = devicesByName2;
  v10 = [devicesByName2 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        audioExposureDevicesDataSource3 = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];
        devicesByName3 = [audioExposureDevicesDataSource3 devicesByName];
        v18 = [devicesByName3 objectForKeyedSubscript:v14];

        v19 = [(HKOverlayRoomAudioViewController *)self _headphonePredicateForDevices:v18 withName:v14];
        [v7 addObject:v19];

        objc_autoreleasePoolPop(v15);
      }

      v11 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v20 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"localizedNameKey" ascending:1 selector:sel_localizedStandardCompare_];
  v34 = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v22 = [v7 sortedArrayUsingDescriptors:v21];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __83__HKOverlayRoomAudioViewController__makeHeadphoneDeviceFiltersUsingContextCreator___block_invoke;
  v28[3] = &unk_1E81B75F0;
  v29 = creatorCopy;
  v23 = creatorCopy;
  v24 = [v22 hk_map:v28];

  return v24;
}

- (int64_t)_initialPillForPreference:(int64_t)preference
{
  result = 0;
  if (preference > 3)
  {
    if (preference == 4)
    {
      return 2;
    }

    if (preference == 11)
    {
      return result;
    }
  }

  else
  {
    if (!preference)
    {
      return result;
    }

    if (preference == 1)
    {
      return 1;
    }
  }

  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEBUG))
  {
    [(HKOverlayRoomAudioViewController *)preference _initialPillForPreference:v5];
  }

  return 0;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  itemsCopy = items;
  dateCopy = date;
  v10 = [HKOverlayRoomAudioViewController alloc];
  quantityTypeIdentifier = [(HKOverlayRoomAudioViewController *)self quantityTypeIdentifier];
  preferredOverlay = [(HKOverlayRoomAudioViewController *)self preferredOverlay];
  audioExposureDevicesDataSource = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];
  trendModel = [(HKOverlayRoomAudioViewController *)self trendModel];
  factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v16 = [(HKOverlayRoomAudioViewController *)v10 initWithDisplayDate:dateCopy applicationItems:itemsCopy mode:mode identifier:quantityTypeIdentifier preferredOverlay:preferredOverlay audioExposureDeviceDataSource:audioExposureDevicesDataSource trendModel:trendModel factorDisplayTypes:factorDisplayTypes];

  [(HKOverlayRoomViewController *)v16 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:mode]];

  return v16;
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
  v9.super_class = HKOverlayRoomAudioViewController;
  createChartOverlayViewController = [(HKOverlayRoomViewController *)&v9 createChartOverlayViewController];

  return createChartOverlayViewController;
}

- (void)_setupAudioExposureDataSourceIfNeeded
{
  if ([(HKOverlayRoomAudioViewController *)self _isAudioExposureDevicesSupported])
  {
    audioExposureDevicesDataSource = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];

    if (!audioExposureDevicesDataSource)
    {
      v4 = [HKAudioExposureDevicesDataSource alloc];
      applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
      healthStore = [applicationItems healthStore];
      v7 = [(HKAudioExposureDevicesDataSource *)v4 initWithDeviceType:0 healthStore:healthStore];

      [(HKAudioExposureDevicesDataSource *)v7 startQuery];
      [(HKOverlayRoomAudioViewController *)self setAudioExposureDevicesDataSource:v7];
    }
  }
}

- (void)_registerForAudioExposureDeviceUpdates
{
  if ([(HKOverlayRoomAudioViewController *)self _isAudioExposureDevicesSupported])
  {
    audioExposureDevicesDataSource = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];

    if (audioExposureDevicesDataSource)
    {
      audioExposureDevicesDataSource2 = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];
      [audioExposureDevicesDataSource2 addObserver:self];
    }
  }
}

- (void)_reloadAudioExposureDevices
{
  if ([(HKOverlayRoomAudioViewController *)self _isAudioExposureDevicesSupported])
  {
    audioExposureDevicesDataSource = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];
    v4 = audioExposureDevicesDataSource;
    if (audioExposureDevicesDataSource && (v6 = audioExposureDevicesDataSource, audioExposureDevicesDataSource = [(HKOverlayRoomAudioViewController *)self isViewLoaded], v4 = v6, (audioExposureDevicesDataSource & 1) != 0))
    {
      controllerMode = [(HKOverlayRoomViewController *)self controllerMode];

      if (controllerMode == 3)
      {

        [(HKOverlayRoomViewController *)self reloadOverlayContextItems];
      }
    }

    else
    {

      MEMORY[0x1EEE66BB8](audioExposureDevicesDataSource, v4);
    }
  }
}

- (id)_headphonePredicateForDevices:(id)devices withName:(id)name
{
  v5 = MEMORY[0x1E696C378];
  nameCopy = name;
  v7 = [v5 predicateForObjectsFromDevices:devices];
  v8 = [[HKInteractiveChartOverlayPredicate alloc] initWithPredicate:v7 name:nameCopy];

  return v8;
}

- (id)_buildAudioAverageDataSourceWithUnitController:(id)controller displayType:(id)type healthStore:(id)store averageOverVisibleRange:(BOOL)range attenuated:(BOOL)attenuated
{
  attenuatedCopy = attenuated;
  rangeCopy = range;
  controllerCopy = controller;
  typeCopy = type;
  storeCopy = store;
  if (attenuatedCopy)
  {
    v15 = _HKStatisticsOptionAttenuateSamples() | 0x42;
    v16 = @"HKOverlayRoomNamedChartCacheDataSource_AttenuatedLEQ";
  }

  else
  {
    v16 = @"HKOverlayRoomNamedChartCacheDataSource_LEQ";
    v15 = 66;
  }

  v17 = [[HKQuantityTypeDataSource alloc] initWithUnitController:controllerCopy options:v15 displayType:typeCopy healthStore:storeCopy];
  _userInfoCreationBlockForLEQ = [(HKOverlayRoomAudioViewController *)self _userInfoCreationBlockForLEQ];
  [(HKQuantityTypeDataSource *)v17 setUserInfoCreationBlock:_userInfoCreationBlockForLEQ];

  if (rangeCopy)
  {
    [(HKOverlayRoomAudioViewController *)self _buildAverageDataSourceTitleFromTimeScope:attenuatedCopy];
  }

  else
  {
    [(HKOverlayRoomAudioViewController *)self _buildGranularAverageDataSourceTitleFromTimeScope];
  }
  v19 = ;
  v20 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v17 named:v16 withContextTitleForTimeScope:v19];

  return v20;
}

- (id)_buildAverageDataSourceTitleFromTimeScope:(BOOL)scope
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__HKOverlayRoomAudioViewController__buildAverageDataSourceTitleFromTimeScope___block_invoke;
  v6[3] = &unk_1E81B7618;
  v6[4] = self;
  scopeCopy = scope;
  v3 = _Block_copy(v6);
  v4 = _Block_copy(v3);

  return v4;
}

id __78__HKOverlayRoomAudioViewController__buildAverageDataSourceTitleFromTimeScope___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _isEnvironmentalAudioExposureRoom] && objc_msgSend(*(a1 + 32), "_shouldShowUnattenuatedOverlayPill") && *(a1 + 40) != 1)
  {
    v2 = @"OVERLAY_AVERAGE_AUDIO_EXPOSURE_WITHOUT_ATTENUATION";
  }

  else
  {
    v2 = @"OVERLAY_AVERAGE_AUDIO_EXPOSURE";
  }

  v3 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:v2 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

  return v4;
}

- (id)_buildGranularAverageDataSourceTitleFromTimeScope
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__HKOverlayRoomAudioViewController__buildGranularAverageDataSourceTitleFromTimeScope__block_invoke;
  v5[3] = &unk_1E81B62B0;
  v5[4] = self;
  v5[5] = a2;
  v2 = _Block_copy(v5);
  v3 = _Block_copy(v2);

  return v3;
}

__CFString *__85__HKOverlayRoomAudioViewController__buildGranularAverageDataSourceTitleFromTimeScope__block_invoke(uint64_t a1, uint64_t a2)
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
  [v6 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"HKOverlayRoomAudioViewController.m" lineNumber:707 description:{@"Unsupported zoom level (%ld)", a2}];
LABEL_17:

LABEL_18:

  return v4;
}

HKInteractiveChartAudioData *__64__HKOverlayRoomAudioViewController__userInfoCreationBlockForLEQ__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696C510];
  v3 = a2;
  v4 = [v2 decibelAWeightedSoundPressureLevelUnit];
  v5 = [v3 averageQuantity];
  [v5 doubleValueForUnit:v4];
  v7 = v6;

  v8 = [v3 durationQuantity];

  if (v8)
  {
    v9 = [MEMORY[0x1E696C510] secondUnit];
    [v8 doubleValueForUnit:v9];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = objc_alloc_init(HKInteractiveChartAudioData);
  [(HKInteractiveChartAudioData *)v12 setAverageLEQ:v7];
  [(HKInteractiveChartAudioData *)v12 setDuration:v11];
  [(HKInteractiveChartAudioData *)v12 setOverviewData:0];

  return v12;
}

- (void)initWithDisplayDate:(uint64_t)a3 applicationItems:mode:identifier:preferredOverlay:audioExposureDeviceDataSource:trendModel:factorDisplayTypes:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HKOverlayRoomAudioViewController.m" lineNumber:108 description:{@"Invalid audio type identifier passed into audio room: %@", a3}];
}

- (void)_initialPillForPreference:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1C3942000, a2, OS_LOG_TYPE_DEBUG, "HKOverlayRoomAudioViewController received invalid secondary type: %ld", &v2, 0xCu);
}

@end