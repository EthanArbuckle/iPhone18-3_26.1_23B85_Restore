@interface HKDataMetadataViewController
- (BOOL)_addSectionIfNonNull:(id)a3;
- (CGSize)_adjustedTableViewSize;
- (HKDataMetadataViewController)initWithSample:(id)a3 usingInsetStyling:(BOOL)a4 profileName:(id)a5 regulatedFeatureInfoProvider:(id)a6 delegate:(id)a7;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)accessViewControllerForSample:(id)a3 healthStore:(id)a4;
- (id)defaultPredicateForSampleType:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)viewControllerForSampleType:(id)a3 subSamplePredicate:(id)a4 title:(id)a5;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_addWorkoutRouteSection;
- (void)_exportButtonAction:(id)a3;
- (void)_fetchRoutesWithSamplesHandler:(id)a3;
- (void)_fetchSubSampleTypes;
- (void)_fetchWorkoutRouteLocations;
- (void)_loadSections;
- (void)_updateSubSampleTypes:(id)a3 error:(id)a4;
- (void)_updateWorkoutRouteSize;
- (void)dealloc;
- (void)finishedAggregateQuery;
- (void)setSample:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HKDataMetadataViewController

- (HKDataMetadataViewController)initWithSample:(id)a3 usingInsetStyling:(BOOL)a4 profileName:(id)a5 regulatedFeatureInfoProvider:(id)a6 delegate:(id)a7
{
  v10 = a4;
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v31.receiver = self;
  v31.super_class = HKDataMetadataViewController;
  v17 = [(HKTableViewController *)&v31 initWithUsingInsetStyling:v10];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sample, a3);
    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v20 = [v19 localizedStringForKey:@"DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(HKDataMetadataViewController *)v18 setTitle:v20];

    if (v14)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v23 = [v22 localizedStringForKey:@"METADATA_TITLE_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
      v24 = [v21 localizedStringWithFormat:v23, v14];
      [(HKDataMetadataViewController *)v18 setTitle:v24];
    }

    subSampleTypes = v18->_subSampleTypes;
    v18->_subSampleTypes = MEMORY[0x1E695E0F0];

    objc_storeStrong(&v18->_regulatedFeatureInfoProvider, a6);
    objc_storeStrong(&v18->_delegate, a7);
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sections = v18->_sections;
    v18->_sections = v26;

    [(HKDataMetadataViewController *)v18 _fetchWorkoutRouteLocations];
    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v18 selector:sel__localeOrDisplayTypeChange_ name:*MEMORY[0x1E695D8F0] object:0];

    v29 = [MEMORY[0x1E696AD88] defaultCenter];
    [v29 addObserver:v18 selector:sel__localeOrDisplayTypeChange_ name:@"HKDisplayTypeControllerDisplayTypeStringValuesChangedNotification" object:0];
  }

  return v18;
}

- (void)setSample:(id)a3
{
  objc_storeStrong(&self->_sample, a3);
  [(HKDataMetadataViewController *)self _loadSections];
  v4 = [(HKDataMetadataViewController *)self tableView];
  [v4 reloadData];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:@"HKDisplayTypeControllerDisplayTypeStringValuesChangedNotification" object:0];

  v5.receiver = self;
  v5.super_class = HKDataMetadataViewController;
  [(HKDataMetadataViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = HKDataMetadataViewController;
  [(HKTableViewController *)&v10 viewDidLoad];
  [(HKDataMetadataViewController *)self _fetchSubSampleTypes];
  [(HKDataMetadataViewController *)self _loadSections];
  v3 = HKUIJoinStringsForAutomationIdentifier(&unk_1F4381AC8);
  v4 = [(HKDataMetadataViewController *)self tableView];
  [v4 setAccessibilityIdentifier:v3];

  objc_initWeak(&location, self);
  v11[0] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__HKDataMetadataViewController_viewDidLoad__block_invoke;
  v7[3] = &unk_1E81BA988;
  objc_copyWeak(&v8, &location);
  v6 = [(HKDataMetadataViewController *)self registerForTraitChanges:v5 withHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __43__HKDataMetadataViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateWorkoutRouteSize];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = HKDataMetadataViewController;
  [(HKDataMetadataViewController *)&v6 viewDidAppear:a3];
  if (!self->_sample)
  {
    v4 = [(HKDataMetadataViewController *)self navigationController];
    v5 = [v4 popViewControllerAnimated:1];
  }
}

- (BOOL)_addSectionIfNonNull:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_sections addObject:a3];
  }

  return a3 != 0;
}

- (void)_loadSections
{
  v33 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_sections removeAllObjects];
  v3 = [(HKDataMetadataViewControllerDelegate *)self->_delegate healthStore];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(HKDataMetadataViewControllerDelegate *)self->_delegate displayTypeController];
  }

  else
  {
    v4 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [(HKDataMetadataViewControllerDelegate *)self->_delegate unitController];
  }

  else
  {
    v5 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [(HKDataMetadataViewControllerDelegate *)self->_delegate prependedSectionsForSample:self->_sample];
    v7 = v6;
    if (v6)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v8)
      {
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v7);
            }

            [(HKDataMetadataViewController *)self _addSectionIfNonNull:*(*(&v28 + 1) + 8 * i)];
          }

          v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v8);
      }
    }
  }

  v11 = [[HKDataMetadataReportSection alloc] initWithSample:self->_sample healthStore:v3];
  [(HKDataMetadataViewController *)self _addSectionIfNonNull:v11];

  v12 = [[HKDataMetadataReportAccessSection alloc] initWithSample:self->_sample healthStore:v3 delegate:self];
  [(HKDataMetadataViewController *)self _addSectionIfNonNull:v12];

  if (objc_opt_respondsToSelector())
  {
    v13 = [(HKDataMetadataViewControllerDelegate *)self->_delegate detailSectionForSample:self->_sample];
  }

  else
  {
    v13 = [[HKDataMetadataDetailSection alloc] initWithSample:self->_sample displayTypeController:v4 unitController:v5];
  }

  v14 = v13;
  [(HKDataMetadataViewController *)self _addSectionIfNonNull:v13];

  if (objc_opt_respondsToSelector())
  {
    v15 = [(HKDataMetadataViewControllerDelegate *)self->_delegate deviceSectionForSample:self->_sample];
  }

  else
  {
    v15 = [[HKDataMetadataDeviceSection alloc] initWithSample:self->_sample regulatedFeatureInfoProvider:self->_regulatedFeatureInfoProvider];
  }

  v16 = v15;
  [(HKDataMetadataViewController *)self _addSectionIfNonNull:v15];

  v17 = [[HKDataMetadataViewAllQuantitySeriesSection alloc] initWithSample:self->_sample delegate:self->_delegate];
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __45__HKDataMetadataViewController__loadSections__block_invoke;
  v25[3] = &unk_1E81BA9B0;
  objc_copyWeak(&v26, &location);
  [(HKDataMetadataViewAllQuantitySeriesSection *)v17 setReloadMetaDataVC:v25];
  [(HKDataMetadataViewController *)self _addSectionIfNonNull:v17];
  v18 = [[HKDataMetadataSubsampleSection alloc] initWithSample:self->_sample workoutActivity:0 subSampleTypes:self->_subSampleTypes showOnlyExertion:0 healthStore:v3 displayTypeController:v4 unitController:v5 subsampleDelegate:self];
  [(HKDataMetadataViewController *)self _addSectionIfNonNull:v18];

  v19 = [[HKDataMetadataAudiogramFrequenciesSection alloc] initWithSample:self->_sample leftEar:1 unitController:v5];
  [(HKDataMetadataViewController *)self _addSectionIfNonNull:v19];

  v20 = [[HKDataMetadataAudiogramFrequenciesSection alloc] initWithSample:self->_sample leftEar:0 unitController:v5];
  [(HKDataMetadataViewController *)self _addSectionIfNonNull:v20];

  [(HKDataMetadataViewController *)self _addWorkoutRouteSection];
  sections = self->_sections;
  v22 = [(HKSample *)self->_sample hk_additionalMetadataSectionsWithHealthStore:v3 displayTypeController:v4 unitController:v5 subsampleDelegate:self];
  [(NSMutableArray *)sections addObjectsFromArray:v22];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(HKDataMetadataViewControllerDelegate *)self->_delegate shareDocumentUsingSample:self->_sample])
  {
    v23 = [(HKDataMetadataViewController *)self navigationItem];
    v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel__exportButtonAction_];
    [v23 setRightBarButtonItem:v24];
  }

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __45__HKDataMetadataViewController__loadSections__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__HKDataMetadataViewController__loadSections__block_invoke_2;
  v5[3] = &unk_1E81B6F28;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __45__HKDataMetadataViewController__loadSections__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSample:v1];
}

- (void)_exportButtonAction:(id)a3
{
  v19[11] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKDataMetadataViewControllerDelegate *)self->_delegate healthStore];
  v6 = [(HKSample *)self->_sample dataForSharingWithHealthStore:v5];
  if (v6)
  {
    v7 = *MEMORY[0x1E69CDAD8];
    v19[0] = *MEMORY[0x1E69CDAC0];
    v19[1] = v7;
    v8 = *MEMORY[0x1E69CDAF0];
    v19[2] = *MEMORY[0x1E69CDAE8];
    v19[3] = v8;
    v9 = *MEMORY[0x1E69CDAF8];
    v19[4] = *MEMORY[0x1E69CDA80];
    v19[5] = v9;
    v10 = *MEMORY[0x1E69CDAC8];
    v19[6] = *MEMORY[0x1E69CDA70];
    v19[7] = v10;
    v11 = *MEMORY[0x1E69CDAD0];
    v19[8] = *MEMORY[0x1E69CDAE0];
    v19[9] = v11;
    v19[10] = @"com.apple.Health.ShareExtension";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:11];
    v13 = objc_alloc(MEMORY[0x1E69CD9F8]);
    v18 = v6;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v15 = [v13 initWithActivityItems:v14 applicationActivities:0];

    v16 = [v15 popoverPresentationController];
    [v16 setSourceItem:v4];

    [v15 setExcludedActivityTypes:v12];
    v17 = [(HKDataMetadataViewController *)self navigationController];
    [v17 presentViewController:v15 animated:1 completion:0];
  }
}

- (void)_fetchSubSampleTypes
{
  v3 = [(HKDataMetadataViewControllerDelegate *)self->_delegate healthStore];
  sample = self->_sample;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__HKDataMetadataViewController__fetchSubSampleTypes__block_invoke;
  v5[3] = &unk_1E81B9F48;
  v5[4] = self;
  [(HKSample *)sample fetchSubSampleTypesWithHealthStore:v3 completion:v5];
}

void __52__HKDataMetadataViewController__fetchSubSampleTypes__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__HKDataMetadataViewController__fetchSubSampleTypes__block_invoke_2;
    block[3] = &unk_1E81B5A10;
    block[4] = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_updateSubSampleTypes:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    objc_storeStrong(&self->_subSampleTypes, a3);
    [(HKDataMetadataViewController *)self _loadSections];
  }

  else if (v8)
  {
    v10 = [v8 hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v11 = HKLogWellnessDashboard();
    v12 = v11;
    if (v10)
    {
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);

      if (!v13)
      {
        goto LABEL_11;
      }

      v12 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [HKDataMetadataViewController _updateSubSampleTypes:v9 error:v12];
      }
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HKDataMetadataViewController _updateSubSampleTypes:v9 error:v12];
    }
  }

LABEL_11:
}

- (CGSize)_adjustedTableViewSize
{
  v3 = [(HKDataMetadataViewController *)self tableView];
  [v3 frame];
  v5 = v4;
  v6 = [(HKDataMetadataViewController *)self tableView];
  [v6 _marginWidth];
  v8 = v5 + v7 * -2.0;

  v9 = [(HKDataMetadataViewController *)self tableView];
  [v9 frame];
  v11 = v10;

  v12 = fmax(v8, 0.0);
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_updateWorkoutRouteSize
{
  [(HKDataMetadataViewController *)self _adjustedTableViewSize];
  workoutRouteSection = self->_workoutRouteSection;

  [(HKDataMetadataWorkoutRouteSection *)workoutRouteSection setTableViewSize:?];
}

- (void)_addWorkoutRouteSection
{
  if (self->_workoutRouteSection)
  {

    [(HKDataMetadataViewController *)self _addSectionIfNonNull:?];
  }

  else
  {
    [(HKDataMetadataViewController *)self _adjustedTableViewSize];
    v5 = [[HKDataMetadataWorkoutRouteSection alloc] initWithLocationReadings:self->_locationReadings tableViewSize:v3, v4];
    workoutRouteSection = self->_workoutRouteSection;
    self->_workoutRouteSection = v5;

    if ([(HKDataMetadataViewController *)self _addSectionIfNonNull:self->_workoutRouteSection])
    {
      v7 = [(HKDataMetadataViewController *)self tableView];
      [v7 reloadData];
    }
  }
}

- (void)_fetchWorkoutRouteLocations
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __59__HKDataMetadataViewController__fetchWorkoutRouteLocations__block_invoke;
    v3[3] = &unk_1E81BA9D8;
    objc_copyWeak(&v4, &location);
    [(HKDataMetadataViewController *)self _fetchRoutesWithSamplesHandler:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __59__HKDataMetadataViewController__fetchWorkoutRouteLocations__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x1E696B9A8];
  if (os_log_type_enabled(*MEMORY[0x1E696B9A8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained sample];
    v8 = [v7 UUID];
    *buf = 138412290;
    v13 = v8;
    _os_log_impl(&dword_1C3942000, v5, OS_LOG_TYPE_DEFAULT, "[routes] Finished fetching data for workout %@", buf, 0xCu);
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 setLocationReadings:v3];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__HKDataMetadataViewController__fetchWorkoutRouteLocations__block_invoke_361;
  block[3] = &unk_1E81B5738;
  objc_copyWeak(&v11, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v11);
}

void __59__HKDataMetadataViewController__fetchWorkoutRouteLocations__block_invoke_361(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _loadSections];
}

- (void)_fetchRoutesWithSamplesHandler:(id)a3
{
  v4 = a3;
  v5 = [HKLocationFetcher alloc];
  v6 = [(HKDataMetadataViewControllerDelegate *)self->_delegate healthStore];
  v7 = [(HKLocationFetcher *)v5 initWithHealthStore:v6];
  locationFetcher = self->_locationFetcher;
  self->_locationFetcher = v7;

  v9 = [(HKDataMetadataViewController *)self locationFetcher];
  [v9 fetchLocationsFromWorkout:self->_sample applyThreshold:0 withSamplesHandler:v4];
}

- (void)finishedAggregateQuery
{
  v2 = [(HKDataMetadataViewController *)self tableView];
  [v2 reloadData];
}

- (id)defaultPredicateForSampleType:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(HKDataMetadataViewControllerDelegate *)self->_delegate defaultPredicateForSampleType:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)viewControllerForSampleType:(id)a3 subSamplePredicate:(id)a4 title:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(HKDataMetadataViewControllerDelegate *)self->_delegate viewControllerForSampleType:v8 subSamplePredicate:v9 title:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)accessViewControllerForSample:(id)a3 healthStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(HKDataMetadataViewControllerDelegate *)self->_delegate accessViewControllerForSample:v6 healthStore:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 sectionTitle];

  return v5;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 sectionFooter];

  return v5;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v4 = [(HKDataMetadataViewController *)self tableView:a3 titleForHeaderInSection:a4];
  if (v4)
  {
    v5 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    v5 = 0.5;
  }

  return v5;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  sections = self->_sections;
  v6 = a3;
  v7 = [(NSMutableArray *)sections objectAtIndex:a4];
  v8 = [v7 sectionFooterViewInTableView:v6];

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:a4];
  v5 = [v4 numberOfRowsInSection];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v6 section]);
  v9 = [v6 row];

  v10 = [v8 cellForIndex:v9 tableView:v7];

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectRowAtIndexPath:v6 animated:1];
  v9 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [v6 section]);
  v7 = [v6 row];

  v8 = [(HKDataMetadataViewController *)self navigationController];
  [v9 selectCellForIndex:v7 navigationController:v8 animated:1];
}

- (void)viewControllerWillEnterAdaptiveModal
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x1E69DC708]);
  v4 = MEMORY[0x1E69DC628];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __68__HKDataMetadataViewController_viewControllerWillEnterAdaptiveModal__block_invoke;
  v11 = &unk_1E81B6A10;
  objc_copyWeak(&v12, &location);
  v5 = [v4 actionWithHandler:&v8];
  v6 = [v3 initWithBarButtonSystemItem:0 primaryAction:{v5, v8, v9, v10, v11}];

  v7 = [(HKDataMetadataViewController *)self navigationItem];
  [v7 setLeftBarButtonItem:v6];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __68__HKDataMetadataViewController_viewControllerWillEnterAdaptiveModal__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  v2 = [(HKDataMetadataViewController *)self navigationItem];
  [v2 setLeftBarButtonItem:0];
}

- (void)_updateSubSampleTypes:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Error from subsample sample type query: %{public}@", &v2, 0xCu);
}

- (void)_updateSubSampleTypes:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1C3942000, a2, OS_LOG_TYPE_DEBUG, "Error from subsample sample type query: %{public}@", &v2, 0xCu);
}

@end