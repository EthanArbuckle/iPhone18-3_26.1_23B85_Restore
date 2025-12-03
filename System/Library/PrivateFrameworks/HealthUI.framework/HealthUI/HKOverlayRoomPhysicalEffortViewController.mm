@interface HKOverlayRoomPhysicalEffortViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1;
- (BOOL)supportsShowAllFilters;
- (HKOverlayRoomPhysicalEffortViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode identifier:(id)identifier preferredOverlay:(int64_t)overlay trendModel:(id)model factorDisplayTypes:(id)types;
- (id)contextSectionContainersForMode:(int64_t)mode applicationItems:(id)items overlayChartController:(id)controller;
- (id)controllerTitleWithApplicationItems:(id)items;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items;
- (id)primaryDisplayTypeWithApplicationItems:(id)items;
- (void)viewDidLoad;
@end

@implementation HKOverlayRoomPhysicalEffortViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)identifier chartFactory:(id)factory applicationItems:(id)items displayDate:(id)date preferredOverlay:(int64_t)overlay restorationUserActivity:(id)activity trendModel:(id)model factorDisplayTypes:(id)self0 additionalChartOptions:(unint64_t)self1
{
  typesCopy = types;
  modelCopy = model;
  activityCopy = activity;
  dateCopy = date;
  itemsCopy = items;
  identifierCopy = identifier;
  v22 = [[HKOverlayRoomPhysicalEffortViewController alloc] initWithDisplayDate:dateCopy applicationItems:itemsCopy mode:1 identifier:identifierCopy preferredOverlay:overlay trendModel:modelCopy factorDisplayTypes:typesCopy];

  [(HKOverlayRoomViewController *)v22 setRestorationUserActivity:activityCopy];
  [(HKOverlayRoomViewController *)v22 setAdditionalChartOptions:options];

  return v22;
}

- (HKOverlayRoomPhysicalEffortViewController)initWithDisplayDate:(id)date applicationItems:(id)items mode:(int64_t)mode identifier:(id)identifier preferredOverlay:(int64_t)overlay trendModel:(id)model factorDisplayTypes:(id)types
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

  v31.receiver = self;
  v31.super_class = HKOverlayRoomPhysicalEffortViewController;
  v22 = [(HKOverlayRoomViewController *)&v31 initWithDisplayDate:v21 applicationItems:itemsCopy factorDisplayTypes:typesCopy mode:mode];

  if (v22)
  {
    objc_storeStrong(&v22->_quantityTypeIdentifier, identifier);
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

    [(HKOverlayRoomViewController *)v22 setShouldSelectInitialOverlay:v24 & 1, overlay, identifierCopy];
  }

  return v22;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HKOverlayRoomPhysicalEffortViewController;
  [(HKOverlayRoomViewController *)&v2 viewDidLoad];
}

- (id)controllerTitleWithApplicationItems:(id)items
{
  v3 = HKHealthKitFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"PHYSICAL_EFFORT" value:&stru_1F42FFBE0 table:*MEMORY[0x1E696B910]];

  return v4;
}

- (BOOL)supportsShowAllFilters
{
  if ([(HKOverlayRoomViewController *)self controllerMode]== 3)
  {
    return 0;
  }

  return [(HKOverlayRoomViewController *)self healthFactorsEnabled];
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
  v53[1] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  controllerCopy = controller;
  v10 = [(HKOverlayRoomPhysicalEffortViewController *)self primaryDisplayTypeWithApplicationItems:itemsCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__HKOverlayRoomPhysicalEffortViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_2;
  aBlock[3] = &unk_1E81B61A0;
  v11 = controllerCopy;
  v45 = v11;
  v12 = itemsCopy;
  v46 = v12;
  modeCopy = mode;
  v13 = _Block_copy(aBlock);
  v14 = v13[2]();
  v53[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];

  v16 = [v15 objectAtIndexedSubscript:0];
  trendModel = [(HKOverlayRoomPhysicalEffortViewController *)self trendModel];

  v43 = v11;
  if (trendModel)
  {
    v18 = [HKOverlayRoomTrendContext alloc];
    trendModel2 = [(HKOverlayRoomPhysicalEffortViewController *)self trendModel];
    v20 = [(HKOverlayRoomTrendContext *)v18 initWithBaseDisplayType:v10 trendModel:trendModel2 overlayChartController:v11 applicationItems:v12 overlayMode:mode];

    chartController = [(HKOverlayRoomViewController *)self chartController];
    [chartController setTrendAccessibilityDelegate:v20];

    v22 = [v15 arrayByAddingObject:v20];

    trendModel3 = [(HKOverlayRoomPhysicalEffortViewController *)self trendModel];
    LODWORD(trendModel2) = [trendModel3 selectTrendInitially];

    if (trendModel2)
    {
      v20 = v20;

      v15 = v22;
      v16 = v20;
    }

    else
    {
      v15 = v22;
    }
  }

  else
  {
    v20 = 0;
  }

  if ((mode - 1) >= 2)
  {
    if (mode != 3)
    {
      v36 = MEMORY[0x1E695E0F0];
      goto LABEL_17;
    }

    v38 = [v15 indexOfObject:v16];
    if (v38 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v39 = 0;
    }

    else
    {
      v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v38];
    }

    objc_storeStrong(&self->_preferredOverlayIndex, v39);
    if (v38 != 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    v40 = [HKOverlayContextSectionContainer alloc];
    v37 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v40, 0, v15);
    v48 = v37;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
    v27 = [(HKOverlayContextSectionContainer *)v40 initWithContainerTitle:0 overlayContextSections:v26];
    v49 = v27;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  }

  else
  {
    preferredOverlayIndex = self->_preferredOverlayIndex;
    self->_preferredOverlayIndex = &unk_1F43847E0;

    v25 = [HKOverlayContextSectionContainer alloc];
    v50 = v16;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
    v26 = __115__HKOverlayRoomBloodGlucoseViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke(v42, 0, v42);
    v51 = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
    v28 = [(HKOverlayContextSectionContainer *)v25 initWithContainerTitle:0 overlayContextSections:v27];
    v29 = v15;
    v30 = v20;
    v31 = v13;
    v32 = v16;
    v33 = v12;
    v34 = v10;
    v35 = v28;
    v52 = v28;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];

    v10 = v34;
    v12 = v33;
    v16 = v32;
    v13 = v31;
    v20 = v30;
    v15 = v29;
    v37 = v42;
  }

LABEL_17:

  return v36;
}

HKOverlayRoomViewControllerLastQuantityContext *__117__HKOverlayRoomPhysicalEffortViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_2(void *a1)
{
  v1 = [[HKOverlayRoomViewControllerLastQuantityContext alloc] initWithOverlayChartController:a1[4] applicationItems:a1[5] mode:a1[6]];

  return v1;
}

- (id)createChartOverlayViewController
{
  if ([(HKOverlayRoomViewController *)self controllerMode]!= 3)
  {
    trendModel = [(HKOverlayRoomPhysicalEffortViewController *)self trendModel];
    v4 = [HKOverlayRoomTrendContext findStartingTimeScopeFromTrendModel:trendModel];

    if (v4 != 8)
    {
      applicationItems = [(HKOverlayRoomViewController *)self applicationItems];
      timeScopeController = [applicationItems timeScopeController];
      [timeScopeController setSelectedTimeScope:v4];
    }
  }

  v9.receiver = self;
  v9.super_class = HKOverlayRoomPhysicalEffortViewController;
  createChartOverlayViewController = [(HKOverlayRoomViewController *)&v9 createChartOverlayViewController];

  return createChartOverlayViewController;
}

- (id)createViewControllerForMode:(int64_t)mode displayDate:(id)date applicationItems:(id)items
{
  itemsCopy = items;
  dateCopy = date;
  v10 = [HKOverlayRoomPhysicalEffortViewController alloc];
  quantityTypeIdentifier = self->_quantityTypeIdentifier;
  preferredOverlay = self->_preferredOverlay;
  trendModel = [(HKOverlayRoomPhysicalEffortViewController *)self trendModel];
  factorDisplayTypes = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v15 = [(HKOverlayRoomPhysicalEffortViewController *)v10 initWithDisplayDate:dateCopy applicationItems:itemsCopy mode:mode identifier:quantityTypeIdentifier preferredOverlay:preferredOverlay trendModel:trendModel factorDisplayTypes:factorDisplayTypes];

  [(HKOverlayRoomViewController *)v15 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:mode]];

  return v15;
}

@end