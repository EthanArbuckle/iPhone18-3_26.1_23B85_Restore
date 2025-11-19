@interface HKWorkoutRouteViewController
- (HKWorkoutRouteViewController)initWithLocationReadings:(id)a3 title:(id)a4 sharingEnabled:(BOOL)a5 shareText:(id)a6 excludedActivityTypes:(id)a7;
- (id)activityViewControllerLinkPresentationMetadata:(id)a3;
- (void)_internalDebuggingOnly_fetchUnsmoothedRoutesFromDatabase;
- (void)_internalDebuggingOnly_toggleUnsmoothedLocations:(id)a3;
- (void)_shareButtonPressed:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation HKWorkoutRouteViewController

- (HKWorkoutRouteViewController)initWithLocationReadings:(id)a3 title:(id)a4 sharingEnabled:(BOOL)a5 shareText:(id)a6 excludedActivityTypes:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = HKWorkoutRouteViewController;
  v17 = [(HKWorkoutRouteViewController *)&v21 init];
  if (v17)
  {
    v18 = [v13 workout];
    workout = v17->_workout;
    v17->_workout = v18;

    objc_storeStrong(&v17->_locationReadings, a3);
    v17->_sharingEnabled = a5;
    objc_storeStrong(&v17->_shareText, a6);
    objc_storeStrong(&v17->_excludedActivityTypes, a7);
    [(HKWorkoutRouteViewController *)v17 setTitle:v14];
  }

  return v17;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = HKWorkoutRouteViewController;
  [(HKWorkoutRouteViewController *)&v22 viewDidLoad];
  v3 = objc_alloc_init(HKRouteView);
  routeView = self->_routeView;
  self->_routeView = v3;

  if (self->_locationReadings)
  {
    [(HKRouteView *)self->_routeView setLocationReadings:?];
  }

  v5 = [(HKWorkoutRouteViewController *)self view];
  [v5 addSubview:self->_routeView];

  v6 = self->_routeView;
  v7 = [(HKWorkoutRouteViewController *)self view];
  [(UIView *)v6 hk_alignConstraintsWithView:v7];

  v8 = [(HKRouteView *)self->_routeView toggleMapTypeButton];
  [v8 addTarget:self action:sel__toggleRouteViewMapType_ forControlEvents:64];

  if (self->_sharingEnabled)
  {
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel__shareButtonPressed_];
    v10 = [(HKWorkoutRouteViewController *)self navigationItem];
    [v10 setRightBarButtonItem:v9];
  }

  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__internalDebuggingOnly_toggleUnsmoothedLocations_];
    [v11 setNumberOfTapsRequired:4];
    [v11 setNumberOfTouchesRequired:2];
    v12 = [(HKWorkoutRouteViewController *)self navigationController];
    v13 = [v12 navigationBar];
    [v13 addGestureRecognizer:v11];
  }

  v14 = [(HKWorkoutRouteViewController *)self routeView];
  v15 = [(HKWorkoutRouteViewController *)self routeView];
  v16 = [v15 toggleMapTypeButton];
  [v14 bringSubviewToFront:v16];

  v17 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  [v17 configureWithDefaultBackground];
  v18 = [(HKWorkoutRouteViewController *)self navigationItem];
  [v18 setScrollEdgeAppearance:v17];

  v19 = [(HKWorkoutRouteViewController *)self navigationItem];
  [v19 setStandardAppearance:v17];

  v20 = [(HKWorkoutRouteViewController *)self navigationItem];
  [v20 setCompactAppearance:v17];

  v21 = [(HKWorkoutRouteViewController *)self navigationItem];
  [v21 setCompactScrollEdgeAppearance:v17];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = HKWorkoutRouteViewController;
  [(HKWorkoutRouteViewController *)&v8 viewWillAppear:a3];
  v4 = objc_alloc_init(MEMORY[0x1E69DCFF8]);
  [v4 configureWithDefaultBackground];
  v5 = [(HKWorkoutRouteViewController *)self tabBarController];
  v6 = [v5 tabBar];
  v7 = [v6 selectedItem];

  [v7 setStandardAppearance:v4];
  [v7 setScrollEdgeAppearance:v4];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = HKWorkoutRouteViewController;
  [(HKWorkoutRouteViewController *)&v7 viewWillDisappear:a3];
  v4 = [(HKWorkoutRouteViewController *)self tabBarController];
  v5 = [v4 tabBar];
  v6 = [v5 selectedItem];

  [v6 setStandardAppearance:0];
  [v6 setScrollEdgeAppearance:0];
}

- (void)_internalDebuggingOnly_toggleUnsmoothedLocations:(id)a3
{
  _HKInitializeLogging();
  v4 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1C3942000, v4, OS_LOG_TYPE_DEFAULT, "[routes] Apple internal: toggle unsmoothed locations.", v11, 2u);
  }

  showUnsmoothedRoute = self->_showUnsmoothedRoute;
  self->_showUnsmoothedRoute = !showUnsmoothedRoute;
  if (showUnsmoothedRoute)
  {
    routeView = self->_routeView;
    locationReadings = self->_locationReadings;
  }

  else
  {
    locationReadings = self->_unsmoothedLocationReadings;
    if (!locationReadings)
    {
      [(HKWorkoutRouteViewController *)self _internalDebuggingOnly_fetchUnsmoothedRoutesFromDatabase];
      goto LABEL_8;
    }

    routeView = self->_routeView;
  }

  [(HKRouteView *)routeView setLocationReadings:locationReadings];
LABEL_8:
  v8 = [(HKWorkoutRouteViewController *)self routeView];
  v9 = [(HKWorkoutRouteViewController *)self routeView];
  v10 = [v9 toggleMapTypeButton];
  [v8 bringSubviewToFront:v10];
}

- (void)_internalDebuggingOnly_fetchUnsmoothedRoutesFromDatabase
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (!self->_healthStore)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696C1C0]);
    healthStore = self->_healthStore;
    self->_healthStore = v3;
  }

  v5 = MEMORY[0x1E696C378];
  v6 = [(HKWorkout *)self->_workout UUID];
  v7 = [v6 UUIDString];
  v16[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v9 = [v5 predicateForObjectsWithMetadataKey:*MEMORY[0x1E696C768] allowedValues:v8];

  v10 = [MEMORY[0x1E696C3D0] dataTypeWithCode:102];
  objc_initWeak(&location, self);
  v11 = objc_alloc(MEMORY[0x1E696C3C8]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88__HKWorkoutRouteViewController__internalDebuggingOnly_fetchUnsmoothedRoutesFromDatabase__block_invoke;
  v13[3] = &unk_1E81B9EF8;
  objc_copyWeak(&v14, &location);
  v13[4] = self;
  v12 = [v11 initWithSampleType:v10 predicate:v9 limit:0 sortDescriptors:0 resultsHandler:v13];
  [(HKHealthStore *)self->_healthStore executeQuery:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __88__HKWorkoutRouteViewController__internalDebuggingOnly_fetchUnsmoothedRoutesFromDatabase__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 || ![v8 count])
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x1E696B9A8];
    if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&dword_1C3942000, v10, OS_LOG_TYPE_DEFAULT, "[routes] No unsmoothed series, error: %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E696C680]);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v13 = [WeakRetained healthStore];
    v14 = [v11 initWithHealthStore:v13];

    [v14 setWorkoutRoutes:v8];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __88__HKWorkoutRouteViewController__internalDebuggingOnly_fetchUnsmoothedRoutesFromDatabase__block_invoke_492;
    v15[3] = &unk_1E81B9ED0;
    v15[4] = *(a1 + 32);
    objc_copyWeak(&v16, (a1 + 40));
    [v14 fetchAllLocationsWithCompletion:v15];
    objc_destroyWeak(&v16);
  }
}

void __88__HKWorkoutRouteViewController__internalDebuggingOnly_fetchUnsmoothedRoutesFromDatabase__block_invoke_492(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HKLocationReadings alloc] initWithLocations:v3 workout:*(*(a1 + 32) + 1000) isSmoothed:0];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setUnsmoothedLocationReadings:v4];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__HKWorkoutRouteViewController__internalDebuggingOnly_fetchUnsmoothedRoutesFromDatabase__block_invoke_2;
  v7[3] = &unk_1E81B6F28;
  objc_copyWeak(&v9, (a1 + 40));
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v9);
}

void __88__HKWorkoutRouteViewController__internalDebuggingOnly_fetchUnsmoothedRoutesFromDatabase__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained routeView];
  [v2 setLocationReadings:*(a1 + 32)];
}

- (void)_shareButtonPressed:(id)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKRouteView *)self->_routeView routeImageForSharing];
  v6 = v5;
  if (self->_shareText)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69CD9F8]);
    v12[0] = self;
    v12[1] = v6;
    v12[2] = self->_shareText;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
    v10 = [v8 initWithActivityItems:v9 applicationActivities:0];

    v11 = [v10 popoverPresentationController];
    [v11 setSourceItem:v4];

    [v10 setExcludedActivityTypes:self->_excludedActivityTypes];
    [(HKWorkoutRouteViewController *)self presentViewController:v10 animated:1 completion:0];
  }
}

- (void)viewWillLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = HKWorkoutRouteViewController;
  [(HKWorkoutRouteViewController *)&v10 viewWillLayoutSubviews];
  v3 = [(HKWorkoutRouteViewController *)self navigationController];
  v4 = [v3 navigationBar];
  [v4 frame];
  MaxY = CGRectGetMaxY(v11);

  v6 = [(HKWorkoutRouteViewController *)self view];
  [v6 bounds];
  v8 = v7 + -45.0 + -12.0;

  v9 = [(HKRouteView *)self->_routeView toggleMapTypeButton];
  [v9 setFrame:{v8, MaxY + 12.0, 45.0, 45.0}];
}

- (id)activityViewControllerLinkPresentationMetadata:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  v5 = [(HKRouteView *)self->_routeView routeImageForSharing];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696EC68]);
    v7 = UIImagePNGRepresentation(v5);
    v8 = [v6 initWithData:v7 MIMEType:@"image/png"];
    [v4 setImage:v8];
  }

  return v4;
}

@end