@interface HKOverlayRoomAudioViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
- (BOOL)_shouldShowUnattenuatedOverlayPill;
- (BOOL)supportsShowAllFilters;
- (HKOverlayRoomAudioViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 identifier:(id)a6 preferredOverlay:(int64_t)a7 audioExposureDeviceDataSource:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10;
- (id)_buildAudioAverageDataSourceWithUnitController:(id)a3 displayType:(id)a4 healthStore:(id)a5 averageOverVisibleRange:(BOOL)a6 attenuated:(BOOL)a7;
- (id)_buildAverageDataSourceTitleFromTimeScope:(BOOL)a3;
- (id)_buildGranularAverageDataSourceTitleFromTimeScope;
- (id)_headphonePredicateForDevices:(id)a3 withName:(id)a4;
- (id)_makeHeadphoneDeviceFiltersUsingContextCreator:(id)a3;
- (id)_unattenuatedBaseDisplayTypeForPrimaryDisplayType:(id)a3 applicationItems:(id)a4;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)primaryDisplayTypeWithApplicationItems:(id)a3;
- (id)showAllFiltersButtonTitle;
- (int64_t)_initialPillForPreference:(int64_t)a3;
- (void)_registerForAudioExposureDeviceUpdates;
- (void)_reloadAudioExposureDevices;
- (void)_setupAudioExposureDataSourceIfNeeded;
- (void)sampleTypeDateRangeController:(id)a3 didUpdateDateRanges:(id)a4;
- (void)viewDidLoad;
@end

@implementation HKOverlayRoomAudioViewController

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

- (HKOverlayRoomAudioViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 identifier:(id)a6 preferredOverlay:(int64_t)a7 audioExposureDeviceDataSource:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10
{
  v15 = a3;
  v16 = a6;
  obj = a8;
  v36 = a8;
  v17 = a9;
  v18 = a10;
  v19 = a4;
  v20 = [HKOverlayRoomTrendContext findInitialDateFromTrendModel:v17];
  v21 = v20;
  v37 = v15;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v15;
  }

  v23 = v22;

  v38.receiver = self;
  v38.super_class = HKOverlayRoomAudioViewController;
  v24 = [(HKOverlayRoomViewController *)&v38 initWithDisplayDate:v23 applicationItems:v19 factorDisplayTypes:v18 mode:a5];

  if (v24)
  {
    if (([v16 isEqualToString:*MEMORY[0x1E696BD08]] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", *MEMORY[0x1E696BD28]) & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", *MEMORY[0x1E696BD10]) & 1) == 0)
    {
      [HKOverlayRoomAudioViewController initWithDisplayDate:a2 applicationItems:v24 mode:v16 identifier:? preferredOverlay:? audioExposureDeviceDataSource:? trendModel:? factorDisplayTypes:?];
    }

    v24->_isShowingUnattenuatedOverlayPill = 0;
    objc_storeStrong(&v24->_quantityTypeIdentifier, a6);
    v24->_preferredOverlay = a7;
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contextDelegates = v24->_contextDelegates;
    v24->_contextDelegates = v25;

    objc_storeStrong(&v24->_audioExposureDevicesDataSource, obj);
    [(HKOverlayRoomAudioViewController *)v24 _setupAudioExposureDataSourceIfNeeded];
    objc_storeStrong(&v24->_trendModel, a9);
    preferredOverlayIndex = v24->_preferredOverlayIndex;
    v24->_preferredOverlayIndex = 0;

    v28 = 0;
    if (a5 != 3)
    {
      v29 = [v17 selectTrendInitially];
      if (a5)
      {
        v30 = a7 == 0;
      }

      else
      {
        v30 = 1;
      }

      v31 = !v30;
      v28 = v31 | v29;
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

- (id)controllerTitleWithApplicationItems:(id)a3
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
    v8 = [(HKOverlayRoomAudioViewController *)self _isHeadphoneAudioExposureRoom];
    v4 = HKHealthKitFrameworkBundle();
    v5 = v4;
    v6 = *MEMORY[0x1E696B910];
    if (v8)
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
  v125[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(HKOverlayRoomAudioViewController *)self primaryDisplayTypeWithApplicationItems:v8];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__HKOverlayRoomAudioViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_2;
  aBlock[3] = &unk_1E81B6178;
  v11 = v9;
  v111 = v11;
  v12 = v8;
  v112 = v12;
  v113 = a3;
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
  v109 = a3;
  v17 = _Block_copy(v105);
  v101[0] = MEMORY[0x1E69E9820];
  v101[1] = 3221225472;
  v101[2] = __108__HKOverlayRoomAudioViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_4;
  v101[3] = &unk_1E81B75A0;
  v18 = v16;
  v102 = v18;
  v19 = v14;
  v103 = v19;
  v104 = a3;
  v93 = _Block_copy(v101);
  v97[0] = MEMORY[0x1E69E9820];
  v97[1] = 3221225472;
  v97[2] = __108__HKOverlayRoomAudioViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_5;
  v97[3] = &unk_1E81B61A0;
  v20 = v18;
  v98 = v20;
  v21 = v19;
  v99 = v21;
  v100 = a3;
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
    v26 = [(HKOverlayRoomAudioViewController *)self trendModel];

    if (v26)
    {
      v27 = [HKOverlayRoomTrendContext alloc];
      v28 = [(HKOverlayRoomAudioViewController *)self trendModel];
      v29 = [(HKOverlayRoomTrendContext *)v27 initWithBaseDisplayType:v15 trendModel:v28 overlayChartController:v20 applicationItems:v21 overlayMode:a3];

      v30 = [(HKOverlayRoomViewController *)self chartController];
      [v30 setTrendAccessibilityDelegate:v29];

      v31 = [(HKOverlayRoomAudioViewController *)self trendModel];
      LODWORD(v28) = [v31 selectTrendInitially];

      if (v28)
      {
        v29 = v29;

        v25 = v29;
      }
    }

    else
    {
      v29 = 0;
    }

    if ((a3 - 1) < 2)
    {
      v91 = v15;
      v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
      preferredOverlayIndex = self->_preferredOverlayIndex;
      self->_preferredOverlayIndex = v38;

      v40 = [HKOverlayContextSectionContainer alloc];
      v123 = v25;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
      v41 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v36, 0, v36);
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

    if (a3 == 3)
    {
      v87 = v20;
      v91 = v15;
      v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v44 = v17[2](v17, self->_quantityTypeIdentifier, 2);
      [(HKOverlayContextSectionContainer *)v36 addObject:v44];

      if ([(HKOverlayRoomAudioViewController *)self _shouldShowUnattenuatedOverlayPill])
      {
        v45 = v17[2](v17, self->_quantityTypeIdentifier, 0);
        [(HKOverlayContextSectionContainer *)v36 addObject:v45];

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
      [(HKOverlayContextSectionContainer *)v36 addObjectsFromArray:v50];

      if (v29)
      {
        [(HKOverlayContextSectionContainer *)v36 addObject:v29];
      }

      v51 = [(HKOverlayContextSectionContainer *)v36 indexOfObject:v25];
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
      v74 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v41, 0, v36);
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

  v23 = [(HKOverlayRoomAudioViewController *)self _isHeadphoneAudioExposureRoom];
  v24 = [(HKOverlayRoomAudioViewController *)self _initialPillForPreference:[(HKOverlayRoomAudioViewController *)self preferredOverlay]];
  if (v23)
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
    v53 = [(HKOverlayRoomAudioViewController *)self trendModel];

    if (v53)
    {
      v54 = [HKOverlayRoomTrendContext alloc];
      v55 = [(HKOverlayRoomAudioViewController *)self trendModel];
      v29 = [(HKOverlayRoomTrendContext *)v54 initWithBaseDisplayType:v15 trendModel:v55 overlayChartController:v20 applicationItems:v21 overlayMode:a3];

      v56 = [(HKOverlayRoomViewController *)self chartController];
      [v56 setTrendAccessibilityDelegate:v29];

      v57 = [(HKOverlayRoomAudioViewController *)self trendModel];
      LODWORD(v55) = [v57 selectTrendInitially];

      if (v55)
      {
        v29 = v29;

        v25 = v29;
      }
    }

    else
    {
      v29 = 0;
    }

    if ((a3 - 1) >= 2)
    {
      if (a3 != 3)
      {
        goto LABEL_34;
      }

      v88 = v20;
      v91 = v15;
      v36 = [MEMORY[0x1E695DF70] array];
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
      v71 = [v70 overlayContextItems];
      v72 = [v71 indexOfObject:v25];

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
      [(HKOverlayContextSectionContainer *)v36 addObject:v70];
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
        [(HKOverlayContextSectionContainer *)v36 addObject:v79];

        v63 = v70;
      }

      v80 = [[HKOverlayContextSectionContainer alloc] initWithContainerTitle:0 overlayContextSections:v36];
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
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
      v41 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v36, 0, v36);
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

  v36 = [[HKOverlayContextSectionContainer alloc] initWithContainerTitle:0 overlayContextSections:v29];
  v114 = v36;
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

- (id)_unattenuatedBaseDisplayTypeForPrimaryDisplayType:(id)a3 applicationItems:(id)a4
{
  v6 = *MEMORY[0x1E696BD08];
  v7 = a4;
  v8 = a3;
  v9 = [v7 healthStore];
  v10 = [v7 unitController];
  v11 = [v8 _audioLevelDataSourceForTypeIdentifier:v6 withHealthStore:v9 attenuatesExposureData:0 unitController:v10];

  v12 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v11 named:@"HKAudioExposureUnattenuatedData" withContextTitleForTimeScope:0];
  v13 = [v8 hk_interactiveChartsFormatterForTimeScope:5];
  v14 = [v8 displayCategory];
  v15 = [v7 unitController];
  v16 = [v7 chartDataCacheController];

  v17 = [v8 hk_standardSeriesForTimeScope:5 displayCategory:v14 unitController:v15 dataCacheController:v16];

  v18 = [(HKOverlayRoomViewController *)self chartController];
  v19 = [v18 displayTypeForGraphSeries:v17 namedDataSource:v12 templateDisplayType:v8 timeScope:5 formatter:v13];

  return v19;
}

- (BOOL)_shouldShowUnattenuatedOverlayPill
{
  v2 = [(HKOverlayRoomViewController *)self applicationItems];
  v3 = [v2 sampleDateRangeController];

  v4 = [v3 dateRangesBySampleType];

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [MEMORY[0x1E696C2E0] quantityTypeForIdentifier:*MEMORY[0x1E696BD10]];
  v6 = [v3 dateRangeForSampleType:v5];
  v7 = [v6 minValue];
  if (!v7)
  {

    goto LABEL_6;
  }

  v8 = v7;
  v9 = [v6 maxValue];

  if (!v9)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_7:

  return v10;
}

- (void)sampleTypeDateRangeController:(id)a3 didUpdateDateRanges:(id)a4
{
  v6.receiver = self;
  v6.super_class = HKOverlayRoomAudioViewController;
  [(HKOverlayRoomViewController *)&v6 sampleTypeDateRangeController:a3 didUpdateDateRanges:a4];
  isShowingUnattenuatedOverlayPill = self->_isShowingUnattenuatedOverlayPill;
  if (isShowingUnattenuatedOverlayPill != [(HKOverlayRoomAudioViewController *)self _shouldShowUnattenuatedOverlayPill])
  {
    [(HKOverlayRoomViewController *)self reloadOverlayContextItems];
  }
}

- (id)_makeHeadphoneDeviceFiltersUsingContextCreator:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v4 = MEMORY[0x1E695DF70];
  v5 = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];
  v6 = [v5 devicesByName];
  v7 = [v4 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];
  v9 = [v8 devicesByName];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
        v16 = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];
        v17 = [v16 devicesByName];
        v18 = [v17 objectForKeyedSubscript:v14];

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
  v29 = v26;
  v23 = v26;
  v24 = [v22 hk_map:v28];

  return v24;
}

- (int64_t)_initialPillForPreference:(int64_t)a3
{
  result = 0;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      return 2;
    }

    if (a3 == 11)
    {
      return result;
    }
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    if (a3 == 1)
    {
      return 1;
    }
  }

  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEBUG))
  {
    [(HKOverlayRoomAudioViewController *)a3 _initialPillForPreference:v5];
  }

  return 0;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [HKOverlayRoomAudioViewController alloc];
  v11 = [(HKOverlayRoomAudioViewController *)self quantityTypeIdentifier];
  v12 = [(HKOverlayRoomAudioViewController *)self preferredOverlay];
  v13 = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];
  v14 = [(HKOverlayRoomAudioViewController *)self trendModel];
  v15 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v16 = [(HKOverlayRoomAudioViewController *)v10 initWithDisplayDate:v9 applicationItems:v8 mode:a3 identifier:v11 preferredOverlay:v12 audioExposureDeviceDataSource:v13 trendModel:v14 factorDisplayTypes:v15];

  [(HKOverlayRoomViewController *)v16 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:a3]];

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
      v5 = [(HKOverlayRoomViewController *)self applicationItems];
      v6 = [v5 timeScopeController];
      [v6 setSelectedTimeScope:v4];
    }
  }

  v9.receiver = self;
  v9.super_class = HKOverlayRoomAudioViewController;
  v7 = [(HKOverlayRoomViewController *)&v9 createChartOverlayViewController];

  return v7;
}

- (void)_setupAudioExposureDataSourceIfNeeded
{
  if ([(HKOverlayRoomAudioViewController *)self _isAudioExposureDevicesSupported])
  {
    v3 = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];

    if (!v3)
    {
      v4 = [HKAudioExposureDevicesDataSource alloc];
      v5 = [(HKOverlayRoomViewController *)self applicationItems];
      v6 = [v5 healthStore];
      v7 = [(HKAudioExposureDevicesDataSource *)v4 initWithDeviceType:0 healthStore:v6];

      [(HKAudioExposureDevicesDataSource *)v7 startQuery];
      [(HKOverlayRoomAudioViewController *)self setAudioExposureDevicesDataSource:v7];
    }
  }
}

- (void)_registerForAudioExposureDeviceUpdates
{
  if ([(HKOverlayRoomAudioViewController *)self _isAudioExposureDevicesSupported])
  {
    v3 = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];

    if (v3)
    {
      v4 = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];
      [v4 addObserver:self];
    }
  }
}

- (void)_reloadAudioExposureDevices
{
  if ([(HKOverlayRoomAudioViewController *)self _isAudioExposureDevicesSupported])
  {
    v3 = [(HKOverlayRoomAudioViewController *)self audioExposureDevicesDataSource];
    v4 = v3;
    if (v3 && (v6 = v3, v3 = [(HKOverlayRoomAudioViewController *)self isViewLoaded], v4 = v6, (v3 & 1) != 0))
    {
      v5 = [(HKOverlayRoomViewController *)self controllerMode];

      if (v5 == 3)
      {

        [(HKOverlayRoomViewController *)self reloadOverlayContextItems];
      }
    }

    else
    {

      MEMORY[0x1EEE66BB8](v3, v4);
    }
  }
}

- (id)_headphonePredicateForDevices:(id)a3 withName:(id)a4
{
  v5 = MEMORY[0x1E696C378];
  v6 = a4;
  v7 = [v5 predicateForObjectsFromDevices:a3];
  v8 = [[HKInteractiveChartOverlayPredicate alloc] initWithPredicate:v7 name:v6];

  return v8;
}

- (id)_buildAudioAverageDataSourceWithUnitController:(id)a3 displayType:(id)a4 healthStore:(id)a5 averageOverVisibleRange:(BOOL)a6 attenuated:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v7)
  {
    v15 = _HKStatisticsOptionAttenuateSamples() | 0x42;
    v16 = @"HKOverlayRoomNamedChartCacheDataSource_AttenuatedLEQ";
  }

  else
  {
    v16 = @"HKOverlayRoomNamedChartCacheDataSource_LEQ";
    v15 = 66;
  }

  v17 = [[HKQuantityTypeDataSource alloc] initWithUnitController:v12 options:v15 displayType:v13 healthStore:v14];
  v18 = [(HKOverlayRoomAudioViewController *)self _userInfoCreationBlockForLEQ];
  [(HKQuantityTypeDataSource *)v17 setUserInfoCreationBlock:v18];

  if (v8)
  {
    [(HKOverlayRoomAudioViewController *)self _buildAverageDataSourceTitleFromTimeScope:v7];
  }

  else
  {
    [(HKOverlayRoomAudioViewController *)self _buildGranularAverageDataSourceTitleFromTimeScope];
  }
  v19 = ;
  v20 = [[HKInteractiveChartOverlayNamedDataSource alloc] initWithDataSource:v17 named:v16 withContextTitleForTimeScope:v19];

  return v20;
}

- (id)_buildAverageDataSourceTitleFromTimeScope:(BOOL)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__HKOverlayRoomAudioViewController__buildAverageDataSourceTitleFromTimeScope___block_invoke;
  v6[3] = &unk_1E81B7618;
  v6[4] = self;
  v7 = a3;
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