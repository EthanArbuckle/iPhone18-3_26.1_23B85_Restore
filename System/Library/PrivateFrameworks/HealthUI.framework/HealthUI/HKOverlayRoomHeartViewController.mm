@interface HKOverlayRoomHeartViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (HKOverlayRoomHeartViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode preferredOverlay:(int64_t)overlay trendModel:(id)model factorDisplayTypes:(id)types;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
- (int64_t)_initialPillForPreference:(int64_t)preference;
- (void)viewDidLoad;
@end

@implementation HKOverlayRoomHeartViewController

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

- (HKOverlayRoomHeartViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode preferredOverlay:(int64_t)overlay trendModel:(id)model factorDisplayTypes:(id)types
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

  v29.receiver = self;
  v29.super_class = HKOverlayRoomHeartViewController;
  v22 = [(HKOverlayRoomViewController *)&v29 initWithDisplayDate:v21 applicationItems:itemsCopy factorDisplayTypes:typesCopy mode:mode];

  if (v22)
  {
    v22->_preferredOverlay = overlay;
    preferredOverlayIndex = v22->_preferredOverlayIndex;
    v22->_preferredOverlayIndex = 0;

    objc_storeStrong(&v22->_trendModel, model);
    if (mode == 3)
    {
      v24 = 0;
    }

    else
    {
      selectTrendInitially = [modelCopy selectTrendInitially];
      if (mode)
      {
        v26 = overlay == 0;
      }

      else
      {
        v26 = 1;
      }

      v27 = !v26;
      v24 = v27 | selectTrendInitially;
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

- (id)controllerTitleWithApplicationItems:(id)items
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"HEART_RATE" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];

  return v4;
}

- (id)primaryDisplayTypeWithApplicationItems:(id)items
{
  v3 = MEMORY[0x1E696C2E0];
  v4 = *MEMORY[0x1E696BD30];
  itemsCopy = items;
  v6 = [v3 quantityTypeForIdentifier:v4];
  displayTypeController = [itemsCopy displayTypeController];

  v8 = [displayTypeController displayTypeForObjectType:v6];

  return v8;
}

- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller
{
  v78[9] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __108__HKOverlayRoomHeartViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_2;
  aBlock[3] = &unk_1E81B6178;
  v9 = controllerCopy;
  v71 = v9;
  v10 = itemsCopy;
  v72 = v10;
  modeCopy = mode;
  v11 = _Block_copy(aBlock);
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __108__HKOverlayRoomHeartViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_3;
  v66[3] = &unk_1E81BA540;
  v12 = v9;
  v67 = v12;
  v13 = v10;
  v68 = v13;
  modeCopy2 = mode;
  v14 = _Block_copy(v66);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __108__HKOverlayRoomHeartViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_4;
  v62[3] = &unk_1E81B61A0;
  v58 = v12;
  v63 = v58;
  v57 = v13;
  v64 = v57;
  modeCopy3 = mode;
  modeCopy4 = mode;
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

  selfCopy2 = self;
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
  trendModel = [(HKOverlayRoomHeartViewController *)self trendModel];

  if (trendModel)
  {
    v31 = [(HKOverlayRoomHeartViewController *)self primaryDisplayTypeWithApplicationItems:v27];
    v32 = [HKOverlayRoomTrendContext alloc];
    trendModel2 = [(HKOverlayRoomHeartViewController *)self trendModel];
    v34 = [(HKOverlayRoomTrendContext *)v32 initWithBaseDisplayType:v31 trendModel:trendModel2 overlayChartController:v26 applicationItems:v27 overlayMode:modeCopy4];

    chartController = [(HKOverlayRoomViewController *)self chartController];
    [chartController setTrendAccessibilityDelegate:v34];

    v36 = [v55 arrayByAddingObject:v34];

    trendModel3 = [(HKOverlayRoomHeartViewController *)self trendModel];
    selectTrendInitially = [trendModel3 selectTrendInitially];

    if (selectTrendInitially)
    {
      v39 = v34;

      v29 = v39;
    }

    selfCopy2 = self;
  }

  else
  {
    v36 = v55;
  }

  if ((modeCopy4 - 1) >= 2)
  {
    if (modeCopy4 != 3)
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

    objc_storeStrong(&selfCopy2->_preferredOverlayIndex, v50);
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
    preferredOverlayIndex = selfCopy2->_preferredOverlayIndex;
    selfCopy2->_preferredOverlayIndex = v40;

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

- (int64_t)_initialPillForPreference:(int64_t)preference
{
  if (preference < 0xC && ((0xE0Du >> preference) & 1) != 0)
  {
    return qword_1C3D5D918[preference];
  }

  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_DEBUG))
  {
    [(HKOverlayRoomHeartViewController *)preference _initialPillForPreference:v5];
  }

  return 0;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  itemsCopy = items;
  dateCopy = date;
  v10 = [HKOverlayRoomHeartViewController alloc];
  preferredOverlay = [(HKOverlayRoomHeartViewController *)self preferredOverlay];
  trendModel = [(HKOverlayRoomHeartViewController *)self trendModel];
  factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v14 = [(HKOverlayRoomHeartViewController *)v10 initWithDisplayDate:dateCopy applicationItems:itemsCopy mode:mode preferredOverlay:preferredOverlay trendModel:trendModel factorDisplayTypes:factorDisplayTypes];

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
  v9.super_class = HKOverlayRoomHeartViewController;
  createChartOverlayViewController = [(HKOverlayRoomViewController *)&v9 createChartOverlayViewController];

  return createChartOverlayViewController;
}

- (void)_initialPillForPreference:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_1C3942000, a2, OS_LOG_TYPE_DEBUG, "HKOverlayRoomHeartViewController received invalid secondary type: %ld", &v2, 0xCu);
}

@end