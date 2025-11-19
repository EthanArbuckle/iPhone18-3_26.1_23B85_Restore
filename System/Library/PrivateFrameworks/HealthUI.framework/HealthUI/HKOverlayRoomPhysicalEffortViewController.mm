@interface HKOverlayRoomPhysicalEffortViewController
+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11;
- (BOOL)supportsShowAllFilters;
- (HKOverlayRoomPhysicalEffortViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 identifier:(id)a6 preferredOverlay:(int64_t)a7 trendModel:(id)a8 factorDisplayTypes:(id)a9;
- (id)contextSectionContainersForMode:(int64_t)a3 applicationItems:(id)a4 overlayChartController:(id)a5;
- (id)controllerTitleWithApplicationItems:(id)a3;
- (id)createChartOverlayViewController;
- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5;
- (id)primaryDisplayTypeWithApplicationItems:(id)a3;
- (void)viewDidLoad;
@end

@implementation HKOverlayRoomPhysicalEffortViewController

+ (id)createInteractiveChartViewControllerForTypeIdentifier:(id)a3 chartFactory:(id)a4 applicationItems:(id)a5 displayDate:(id)a6 preferredOverlay:(int64_t)a7 restorationUserActivity:(id)a8 trendModel:(id)a9 factorDisplayTypes:(id)a10 additionalChartOptions:(unint64_t)a11
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a6;
  v20 = a5;
  v21 = a3;
  v22 = [[HKOverlayRoomPhysicalEffortViewController alloc] initWithDisplayDate:v19 applicationItems:v20 mode:1 identifier:v21 preferredOverlay:a7 trendModel:v17 factorDisplayTypes:v16];

  [(HKOverlayRoomViewController *)v22 setRestorationUserActivity:v18];
  [(HKOverlayRoomViewController *)v22 setAdditionalChartOptions:a11];

  return v22;
}

- (HKOverlayRoomPhysicalEffortViewController)initWithDisplayDate:(id)a3 applicationItems:(id)a4 mode:(int64_t)a5 identifier:(id)a6 preferredOverlay:(int64_t)a7 trendModel:(id)a8 factorDisplayTypes:(id)a9
{
  v14 = a3;
  v30 = a6;
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

  v31.receiver = self;
  v31.super_class = HKOverlayRoomPhysicalEffortViewController;
  v22 = [(HKOverlayRoomViewController *)&v31 initWithDisplayDate:v21 applicationItems:v17 factorDisplayTypes:v16 mode:a5];

  if (v22)
  {
    objc_storeStrong(&v22->_quantityTypeIdentifier, a6);
    v22->_preferredOverlay = a7;
    preferredOverlayIndex = v22->_preferredOverlayIndex;
    v22->_preferredOverlayIndex = 0;

    objc_storeStrong(&v22->_trendModel, a8);
    if (a5 == 3)
    {
      v24 = 0;
    }

    else
    {
      v25 = [v15 selectTrendInitially];
      if (a5)
      {
        v26 = a7 == 0;
      }

      else
      {
        v26 = 1;
      }

      v27 = !v26;
      v24 = v27 | v25;
    }

    [(HKOverlayRoomViewController *)v22 setShouldSelectInitialOverlay:v24 & 1, a7, v30];
  }

  return v22;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = HKOverlayRoomPhysicalEffortViewController;
  [(HKOverlayRoomViewController *)&v2 viewDidLoad];
}

- (id)controllerTitleWithApplicationItems:(id)a3
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
  v53[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(HKOverlayRoomPhysicalEffortViewController *)self primaryDisplayTypeWithApplicationItems:v8];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __117__HKOverlayRoomPhysicalEffortViewController_contextSectionContainersForMode_applicationItems_overlayChartController___block_invoke_2;
  aBlock[3] = &unk_1E81B61A0;
  v11 = v9;
  v45 = v11;
  v12 = v8;
  v46 = v12;
  v47 = a3;
  v13 = _Block_copy(aBlock);
  v14 = v13[2]();
  v53[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];

  v16 = [v15 objectAtIndexedSubscript:0];
  v17 = [(HKOverlayRoomPhysicalEffortViewController *)self trendModel];

  v43 = v11;
  if (v17)
  {
    v18 = [HKOverlayRoomTrendContext alloc];
    v19 = [(HKOverlayRoomPhysicalEffortViewController *)self trendModel];
    v20 = [(HKOverlayRoomTrendContext *)v18 initWithBaseDisplayType:v10 trendModel:v19 overlayChartController:v11 applicationItems:v12 overlayMode:a3];

    v21 = [(HKOverlayRoomViewController *)self chartController];
    [v21 setTrendAccessibilityDelegate:v20];

    v22 = [v15 arrayByAddingObject:v20];

    v23 = [(HKOverlayRoomPhysicalEffortViewController *)self trendModel];
    LODWORD(v19) = [v23 selectTrendInitially];

    if (v19)
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

  if ((a3 - 1) >= 2)
  {
    if (a3 != 3)
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
    v3 = [(HKOverlayRoomPhysicalEffortViewController *)self trendModel];
    v4 = [HKOverlayRoomTrendContext findStartingTimeScopeFromTrendModel:v3];

    if (v4 != 8)
    {
      v5 = [(HKOverlayRoomViewController *)self applicationItems];
      v6 = [v5 timeScopeController];
      [v6 setSelectedTimeScope:v4];
    }
  }

  v9.receiver = self;
  v9.super_class = HKOverlayRoomPhysicalEffortViewController;
  v7 = [(HKOverlayRoomViewController *)&v9 createChartOverlayViewController];

  return v7;
}

- (id)createViewControllerForMode:(int64_t)a3 displayDate:(id)a4 applicationItems:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [HKOverlayRoomPhysicalEffortViewController alloc];
  quantityTypeIdentifier = self->_quantityTypeIdentifier;
  preferredOverlay = self->_preferredOverlay;
  v13 = [(HKOverlayRoomPhysicalEffortViewController *)self trendModel];
  v14 = [(HKOverlayRoomViewController *)self factorDisplayTypes];
  v15 = [(HKOverlayRoomPhysicalEffortViewController *)v10 initWithDisplayDate:v9 applicationItems:v8 mode:a3 identifier:quantityTypeIdentifier preferredOverlay:preferredOverlay trendModel:v13 factorDisplayTypes:v14];

  [(HKOverlayRoomViewController *)v15 setAdditionalChartOptions:[(HKOverlayRoomViewController *)self filteredInteractiveChartOptionsForMode:a3]];

  return v15;
}

@end