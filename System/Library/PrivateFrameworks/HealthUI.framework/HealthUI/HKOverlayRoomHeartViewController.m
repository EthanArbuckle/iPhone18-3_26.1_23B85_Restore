@interface HKOverlayRoomHeartViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
- (HKOverlayRoomHeartViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 preferredOverlay:(int64_t)a6 trendModel:(id)a7 factorDisplayTypes:(id)a8;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)primaryDisplayTypeWithApplicationItems:(id)a3;
- (int64_t)_initialPillForPreference:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation HKOverlayRoomHeartViewController

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

- (HKOverlayRoomHeartViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 preferredOverlay:(int64_t)a6 trendModel:(id)a7 factorDisplayTypes:(id)a8
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

  v29.receiver = self;
  v29.super_class = HKOverlayRoomHeartViewController;
  v22 = [(HKOverlayRoomViewController *)&v29 initWithDisplayDate:v21 applicationItems:v17 factorDisplayTypes:v16 mode:a5];

  if (v22)
  {
    v22->_preferredOverlay = a6;
    preferredOverlayIndex = v22->_preferredOverlayIndex;
    v22->_preferredOverlayIndex = 0;

    objc_storeStrong(&v22->_trendModel, a7);
    if (a5 == 3)
    {
      v24 = 0;
    }

    else
    {
      v25 = [v15 selectTrendInitially];
      if (a5)
      {
        v26 = a6 == 0;
      }

      else
      {
        v26 = 1;
      }

      v27 = !v26;
      v24 = v27 | v25;
    }

    [(HKOverlayRoomViewController *)v22 setShouldSelectInitialOverlay:v24 & 1];
  }

  return v22;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HKOverlayRoomHeartViewController;
  [(HKOverlayRoomViewController *)&v2 viewDidLoad];
}

- (id)controllerTitleWithApplicationItems:(id)a3
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"HEART_RATE" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];

  return v4;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)a3
{
  v3 = MEMORY[0x1E696C2E0];
  v4 = *MEMORY[0x1E696BD30];
  v5 = a3;
  v6 = [v3 quantityTypeForIdentifier:v4];
  v7 = [v5 displayTypeController];

  v8 = [v7 displayTypeForObjectType:v6];

  return v8;
}

- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5
{
  v78[9] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__HKOverlayRoomHeartViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_2;
  aBlock[3] = &unk_1E81B6178;
  v9 = v8;
  v71 = v9;
  v10 = v7;
  v72 = v10;
  v73 = a3;
  v11 = _Block_copy(aBlock);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __108__HKOverlayRoomHeartViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_3;
  v66[3] = &unk_1E81BA540;
  v12 = v9;
  v67 = v12;
  v13 = v10;
  v68 = v13;
  v69 = a3;
  v14 = _Block_copy(v66);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __108__HKOverlayRoomHeartViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_4;
  v62[3] = &unk_1E81B61A0;
  v58 = v12;
  v63 = v58;
  v57 = v13;
  v64 = v57;
  v65 = a3;
  v61 = a3;
  v60 = _Block_copy(v62);
  v53 = v60[2]();
  v78[0] = v53;
  v15 = v11[2](v11, 0, 2);
  v78[1] = v15;
  v16 = v14[2](v14, *MEMORY[0x1E696BD78]);
  v78[2] = v16;
  v56 = v14;
  v17 = v14[2](v14, *MEMORY[0x1E696BE08]);
  v78[3] = v17;
  v18 = v11[2](v11, 2, 32);
  v78[4] = v18;
  v19 = v11[2](v11, 6, 128);
  v78[5] = v19;
  v20 = v11[2](v11, 1, 64);
  v78[6] = v20;
  v21 = v11[2](v11, 3, 0);
  v78[7] = v21;
  v59 = v11;
  v22 = v11[2](v11, 4, 0);
  v78[8] = v22;
  v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:9];

  v23 = self;
  v24 = [(HKOverlayRoomHeartViewController *)self _initialPillForPreference:[(HKOverlayRoomHeartViewController *)self preferredOverlay]];
  if (v24 > 2)
  {
    if (v24 != 3)
    {
      v26 = v58;
      v25 = v59;
      v27 = v57;
      if (v24 == 4)
      {
        v59[2](v59, 2, 32);
        goto LABEL_8;
      }

LABEL_9:
      v28 = v60[2]();
      goto LABEL_10;
    }

    v25 = v59;
    v59[2](v59, 6, 128);
  }

  else
  {
    if (v24 != 1)
    {
      v26 = v58;
      v25 = v59;
      v27 = v57;
      if (v24 == 2)
      {
        v59[2](v59, 3, 0);
        v28 = LABEL_8:;
LABEL_10:
        v29 = v28;
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    v25 = v59;
    v59[2](v59, 4, 0);
  }
  v29 = ;
  v27 = v57;
  v26 = v58;
LABEL_14:
  v30 = [(HKOverlayRoomHeartViewController *)self trendModel];

  if (v30)
  {
    v31 = [(HKOverlayRoomHeartViewController *)self primaryDisplayTypeWithApplicationItems:v27];
    v32 = [HKOverlayRoomTrendContext alloc];
    v33 = [(HKOverlayRoomHeartViewController *)self trendModel];
    v34 = [(HKOverlayRoomTrendContext *)v32 initWithBaseDisplayType:v31 trendModel:v33 overlayChartController:v26 applicationItems:v27 overlayMode:v61];

    v35 = [(HKOverlayRoomViewController *)self chartController];
    [v35 setTrendAccessibilityDelegate:v34];

    v36 = [v55 arrayByAddingObject:v34];

    v37 = [(HKOverlayRoomHeartViewController *)self trendModel];
    v38 = [v37 selectTrendInitially];

    if (v38)
    {
      v39 = v34;

      v29 = v39;
    }

    v23 = self;
  }

  else
  {
    v36 = v55;
  }

  if ((v61 - 1) >= 2)
  {
    if (v61 != 3)
    {
      v48 = MEMORY[0x1E695E0F0];
      goto LABEL_30;
    }

    v49 = [v36 indexOfObject:v29];
    if (v49 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v50 = 0;
    }

    else
    {
      v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v49];
    }

    objc_storeStrong(&v23->_preferredOverlayIndex, v50);
    if (v49 != 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v51 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v43, 0, v36);
    [v43 addObject:v51];

    v44 = [[HKOverlayContextSectionContainer alloc] initWithContainerTitle:0 overlayContextSections:v43];
    v74 = v44;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
  }

  else
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
    preferredOverlayIndex = v23->_preferredOverlayIndex;
    v23->_preferredOverlayIndex = v40;

    v42 = [HKOverlayContextSectionContainer alloc];
    v75 = v29;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
    v44 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v43, 0, v43);
    v76 = v44;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
    v46 = v45 = v36;
    v47 = [(HKOverlayContextSectionContainer *)v42 initWithContainerTitle:0 overlayContextSections:v46];
    v77 = v47;
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];

    v36 = v45;
  }

LABEL_30:

  return v48;
}

HKOverlayRoomViewControllerLastQuantityContext *__108__HKOverlayRoomHeartViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_4(void *a1)
{
  v1 = [[HKOverlayRoomViewControllerLastQuantityContext alloc] initWithOverlayChartController:a1[4] applicationItems:a1[5] mode:a1[6]];

  return v1;
}

- (int64_t)_initialPillForPreference:(int64_t)a3
{
  if (a3 < 0xC && ((0xE0Du >> a3) & 1) != 0)
  {
    return qword_1C3D5D918[a3];
  }

  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEBUG))
  {
    [(HKOverlayRoomHeartViewController *)a3 _initialPillForPreference:v5];
  }

  return 0;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [HKOverlayRoomHeartViewController alloc];
  v11 = [(HKOverlayRoomHeartViewController *)self preferredOverlay];
  v12 = [(HKOverlayRoomHeartViewController *)self trendModel];
  v13 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v14 = [(HKOverlayRoomHeartViewController *)v10 initWithDisplayDate:v9 applicationItems:v8 mode:a3 preferredOverlay:v11 trendModel:v12 factorDisplayTypes:v13];

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
  v9.super_class = HKOverlayRoomHeartViewController;
  v7 = [(HKOverlayRoomViewController *)&v9 createChartOverlayViewController];

  return v7;
}

- (void)_initialPillForPreference:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1C3942000, a2, OS_LOG_TYPE_DEBUG, "HKOverlayRoomHeartViewController received invalid secondary type: %ld", &v2, 0xCu);
}

@end