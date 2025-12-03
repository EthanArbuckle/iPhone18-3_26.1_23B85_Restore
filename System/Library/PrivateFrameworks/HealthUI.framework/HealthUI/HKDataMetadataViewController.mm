@interface HKDataMetadataViewController
- (BOOL)_addSectionIfNonNull:(id)null;
- (CGSize)_adjustedTableViewSize;
- (HKDataMetadataViewController)initWithSample:(id)sample usingInsetStyling:(BOOL)styling profileName:(id)name regulatedFeatureInfoProvider:(id)provider delegate:(id)delegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)accessViewControllerForSample:(id)sample healthStore:(id)store;
- (id)defaultPredicateForSampleType:(id)type;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)viewControllerForSampleType:(id)type subSamplePredicate:(id)predicate title:(id)title;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addWorkoutRouteSection;
- (void)_exportButtonAction:(id)action;
- (void)_fetchRoutesWithSamplesHandler:(id)handler;
- (void)_fetchSubSampleTypes;
- (void)_fetchWorkoutRouteLocations;
- (void)_loadSections;
- (void)_updateSubSampleTypes:(id)types error:(id)error;
- (void)_updateWorkoutRouteSize;
- (void)dealloc;
- (void)finishedAggregateQuery;
- (void)setSample:(id)sample;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HKDataMetadataViewController

- (HKDataMetadataViewController)initWithSample:(id)sample usingInsetStyling:(BOOL)styling profileName:(id)name regulatedFeatureInfoProvider:(id)provider delegate:(id)delegate
{
  stylingCopy = styling;
  sampleCopy = sample;
  nameCopy = name;
  providerCopy = provider;
  delegateCopy = delegate;
  v31.receiver = self;
  v31.super_class = HKDataMetadataViewController;
  v17 = [(HKTableViewController *)&v31 initWithUsingInsetStyling:stylingCopy];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_sample, sample);
    v19 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v20 = [v19 localizedStringForKey:@"DETAILS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    [(HKDataMetadataViewController *)v18 setTitle:v20];

    if (nameCopy)
    {
      v21 = MEMORY[0x1E696AEC0];
      v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v23 = [v22 localizedStringForKey:@"METADATA_TITLE_%@" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-tinker"];
      nameCopy = [v21 localizedStringWithFormat:v23, nameCopy];
      [(HKDataMetadataViewController *)v18 setTitle:nameCopy];
    }

    subSampleTypes = v18->_subSampleTypes;
    v18->_subSampleTypes = MEMORY[0x1E695E0F0];

    objc_storeStrong(&v18->_regulatedFeatureInfoProvider, provider);
    objc_storeStrong(&v18->_delegate, delegate);
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sections = v18->_sections;
    v18->_sections = v26;

    [(HKDataMetadataViewController *)v18 _fetchWorkoutRouteLocations];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v18 selector:sel__localeOrDisplayTypeChange_ name:*MEMORY[0x1E695D8F0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v18 selector:sel__localeOrDisplayTypeChange_ name:@"HKDisplayTypeControllerDisplayTypeStringValuesChangedNotification" object:0];
  }

  return v18;
}

- (void)setSample:(id)sample
{
  objc_storeStrong(&self->_sample, sample);
  [(HKDataMetadataViewController *)self _loadSections];
  tableView = [(HKDataMetadataViewController *)self tableView];
  [tableView reloadData];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695D8F0] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"HKDisplayTypeControllerDisplayTypeStringValuesChangedNotification" object:0];

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
  tableView = [(HKDataMetadataViewController *)self tableView];
  [tableView setAccessibilityIdentifier:v3];

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

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = HKDataMetadataViewController;
  [(HKDataMetadataViewController *)&v6 viewDidAppear:appear];
  if (!self->_sample)
  {
    navigationController = [(HKDataMetadataViewController *)self navigationController];
    v5 = [navigationController popViewControllerAnimated:1];
  }
}

- (BOOL)_addSectionIfNonNull:(id)null
{
  if (null)
  {
    [(NSMutableArray *)self->_sections addObject:null];
  }

  return null != 0;
}

- (void)_loadSections
{
  v33 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_sections removeAllObjects];
  healthStore = [(HKDataMetadataViewControllerDelegate *)self->_delegate healthStore];
  if (objc_opt_respondsToSelector())
  {
    displayTypeController = [(HKDataMetadataViewControllerDelegate *)self->_delegate displayTypeController];
  }

  else
  {
    displayTypeController = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    unitController = [(HKDataMetadataViewControllerDelegate *)self->_delegate unitController];
  }

  else
  {
    unitController = 0;
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

  v11 = [[HKDataMetadataReportSection alloc] initWithSample:self->_sample healthStore:healthStore];
  [(HKDataMetadataViewController *)self _addSectionIfNonNull:v11];

  v12 = [[HKDataMetadataReportAccessSection alloc] initWithSample:self->_sample healthStore:healthStore delegate:self];
  [(HKDataMetadataViewController *)self _addSectionIfNonNull:v12];

  if (objc_opt_respondsToSelector())
  {
    v13 = [(HKDataMetadataViewControllerDelegate *)self->_delegate detailSectionForSample:self->_sample];
  }

  else
  {
    v13 = [[HKDataMetadataDetailSection alloc] initWithSample:self->_sample displayTypeController:displayTypeController unitController:unitController];
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
  v18 = [[HKDataMetadataSubsampleSection alloc] initWithSample:self->_sample workoutActivity:0 subSampleTypes:self->_subSampleTypes showOnlyExertion:0 healthStore:healthStore displayTypeController:displayTypeController unitController:unitController subsampleDelegate:self];
  [(HKDataMetadataViewController *)self _addSectionIfNonNull:v18];

  v19 = [[HKDataMetadataAudiogramFrequenciesSection alloc] initWithSample:self->_sample leftEar:1 unitController:unitController];
  [(HKDataMetadataViewController *)self _addSectionIfNonNull:v19];

  v20 = [[HKDataMetadataAudiogramFrequenciesSection alloc] initWithSample:self->_sample leftEar:0 unitController:unitController];
  [(HKDataMetadataViewController *)self _addSectionIfNonNull:v20];

  [(HKDataMetadataViewController *)self _addWorkoutRouteSection];
  sections = self->_sections;
  v22 = [(HKSample *)self->_sample hk_additionalMetadataSectionsWithHealthStore:healthStore displayTypeController:displayTypeController unitController:unitController subsampleDelegate:self];
  [(NSMutableArray *)sections addObjectsFromArray:v22];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(HKDataMetadataViewControllerDelegate *)self->_delegate shareDocumentUsingSample:self->_sample])
  {
    navigationItem = [(HKDataMetadataViewController *)self navigationItem];
    v24 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel__exportButtonAction_];
    [navigationItem setRightBarButtonItem:v24];
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

- (void)_exportButtonAction:(id)action
{
  v19[11] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  healthStore = [(HKDataMetadataViewControllerDelegate *)self->_delegate healthStore];
  v6 = [(HKSample *)self->_sample dataForSharingWithHealthStore:healthStore];
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

    popoverPresentationController = [v15 popoverPresentationController];
    [popoverPresentationController setSourceItem:actionCopy];

    [v15 setExcludedActivityTypes:v12];
    navigationController = [(HKDataMetadataViewController *)self navigationController];
    [navigationController presentViewController:v15 animated:1 completion:0];
  }
}

- (void)_fetchSubSampleTypes
{
  healthStore = [(HKDataMetadataViewControllerDelegate *)self->_delegate healthStore];
  sample = self->_sample;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__HKDataMetadataViewController__fetchSubSampleTypes__block_invoke;
  v5[3] = &unk_1E81B9F48;
  v5[4] = self;
  [(HKSample *)sample fetchSubSampleTypesWithHealthStore:healthStore completion:v5];
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

- (void)_updateSubSampleTypes:(id)types error:(id)error
{
  typesCopy = types;
  errorCopy = error;
  v9 = errorCopy;
  if (typesCopy)
  {
    objc_storeStrong(&self->_subSampleTypes, types);
    [(HKDataMetadataViewController *)self _loadSections];
  }

  else if (errorCopy)
  {
    hk_isDatabaseAccessibilityError = [errorCopy hk_isDatabaseAccessibilityError];
    _HKInitializeLogging();
    v11 = HKLogWellnessDashboard();
    v12 = v11;
    if (hk_isDatabaseAccessibilityError)
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
  tableView = [(HKDataMetadataViewController *)self tableView];
  [tableView frame];
  v5 = v4;
  tableView2 = [(HKDataMetadataViewController *)self tableView];
  [tableView2 _marginWidth];
  v8 = v5 + v7 * -2.0;

  tableView3 = [(HKDataMetadataViewController *)self tableView];
  [tableView3 frame];
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
      tableView = [(HKDataMetadataViewController *)self tableView];
      [tableView reloadData];
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

- (void)_fetchRoutesWithSamplesHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [HKLocationFetcher alloc];
  healthStore = [(HKDataMetadataViewControllerDelegate *)self->_delegate healthStore];
  v7 = [(HKLocationFetcher *)v5 initWithHealthStore:healthStore];
  locationFetcher = self->_locationFetcher;
  self->_locationFetcher = v7;

  locationFetcher = [(HKDataMetadataViewController *)self locationFetcher];
  [locationFetcher fetchLocationsFromWorkout:self->_sample applyThreshold:0 withSamplesHandler:handlerCopy];
}

- (void)finishedAggregateQuery
{
  tableView = [(HKDataMetadataViewController *)self tableView];
  [tableView reloadData];
}

- (id)defaultPredicateForSampleType:(id)type
{
  typeCopy = type;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(HKDataMetadataViewControllerDelegate *)self->_delegate defaultPredicateForSampleType:typeCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)viewControllerForSampleType:(id)type subSamplePredicate:(id)predicate title:(id)title
{
  typeCopy = type;
  predicateCopy = predicate;
  titleCopy = title;
  if (objc_opt_respondsToSelector())
  {
    v11 = [(HKDataMetadataViewControllerDelegate *)self->_delegate viewControllerForSampleType:typeCopy subSamplePredicate:predicateCopy title:titleCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)accessViewControllerForSample:(id)sample healthStore:(id)store
{
  sampleCopy = sample;
  storeCopy = store;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(HKDataMetadataViewControllerDelegate *)self->_delegate accessViewControllerForSample:sampleCopy healthStore:storeCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:section];
  sectionTitle = [v4 sectionTitle];

  return sectionTitle;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:section];
  sectionFooter = [v4 sectionFooter];

  return sectionFooter;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(HKDataMetadataViewController *)self tableView:view titleForHeaderInSection:section];
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

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  sections = self->_sections;
  viewCopy = view;
  v7 = [(NSMutableArray *)sections objectAtIndex:section];
  v8 = [v7 sectionFooterViewInTableView:viewCopy];

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_sections objectAtIndex:section];
  numberOfRowsInSection = [v4 numberOfRowsInSection];

  return numberOfRowsInSection;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [pathCopy section]);
  v9 = [pathCopy row];

  v10 = [v8 cellForIndex:v9 tableView:viewCopy];

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v9 = -[NSMutableArray objectAtIndex:](self->_sections, "objectAtIndex:", [pathCopy section]);
  v7 = [pathCopy row];

  navigationController = [(HKDataMetadataViewController *)self navigationController];
  [v9 selectCellForIndex:v7 navigationController:navigationController animated:1];
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

  navigationItem = [(HKDataMetadataViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

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
  navigationItem = [(HKDataMetadataViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:0];
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