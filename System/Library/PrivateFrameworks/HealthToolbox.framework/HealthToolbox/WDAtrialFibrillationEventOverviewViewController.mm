@interface WDAtrialFibrillationEventOverviewViewController
- (NSArray)sectionsToDisplay;
- (WDAtrialFibrillationEventOverviewViewController)initWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode;
- (double)adjustedSafeAreaInsetTop;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_atrialFibrillationDetectionRescindedHeaderView;
- (id)_atrialFibrillationSetupContainerView;
- (id)_cellForAFibEducationalMaterialInTable:(id)table atIndex:(int64_t)index;
- (id)_cellForAFibEventInTable:(id)table atIndexPath:(id)path;
- (id)_cellForDataSourcesAndAccess;
- (id)_cellForDataTypeDescription;
- (id)_cellForFavorites;
- (id)_cellForIRN2ConsentForm;
- (id)_cellForRegulatory;
- (id)_cellForShowAll;
- (id)_pushDataSourcesAndAccessController;
- (id)_pushShowAllViewController;
- (id)_sectionHeaderViewWithTitle:(id)title identifier:(id)identifier;
- (id)axidForElementWithString:(id)string;
- (id)makeInternalSettingsControllerWithHealthStore:(id)store;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)userConfigurationRowsToDisplay;
- (int64_t)_sectionIndexForSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)widthDesignationFromTraitCollection:(id)collection;
- (void)_atrialFibrillationDetectionRescindedHeaderView;
- (void)_getLatestAnalyzedSampleDate;
- (void)_reloadAllData;
- (void)_reloadAtrialFibrillationSetupTableHeaderView;
- (void)_reloadTableViewAndScrollToTop;
- (void)_showInternalSettingsViewController;
- (void)_updateDetectionState;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
- (void)recomputeTotalSampleCount;
- (void)reloadFeatureStatusSection;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateMarginsForWidthDesignation:(int64_t)designation;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)widthDesignationDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection;
@end

@implementation WDAtrialFibrillationEventOverviewViewController

- (WDAtrialFibrillationEventOverviewViewController)initWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode
{
  typeCopy = type;
  profileCopy = profile;
  v34.receiver = self;
  v34.super_class = WDAtrialFibrillationEventOverviewViewController;
  v11 = [(WDAtrialFibrillationEventOverviewViewController *)&v34 initWithStyle:1];
  v12 = v11;
  if (v11)
  {
    v11->_firstViewDidLayoutSubviews = 1;
    objc_storeStrong(&v11->_displayType, type);
    objc_storeStrong(&v12->_profile, profile);
    v12->_mode = mode;
    displayType = v12->_displayType;
    profile = v12->_profile;
    unitController = [(WDProfile *)profile unitController];
    v16 = [(HKDisplayType *)displayType wd_listViewControllerDataProviderWithProfile:profile unitController:unitController];
    healthStore = 1056;
    dataProvider = v12->_dataProvider;
    v12->_dataProvider = v16;

    [(WDDataListViewControllerDataProvider *)v12->_dataProvider setHasDetailViewController:[(WDAtrialFibrillationEventOverviewViewController *)v12 _hasDetailViewController]];
    v19 = [objc_alloc(MEMORY[0x277D13088]) initForSinglePlayer:v12->_mode == 0];
    metaDataSection = v12->_metaDataSection;
    v12->_metaDataSection = v19;

    mode = v12->_mode;
    if (mode)
    {
      v22 = 0;
    }

    else
    {
      v23 = objc_alloc(MEMORY[0x277CCD460]);
      v24 = *MEMORY[0x277CCC070];
      healthStore = [profileCopy healthStore];
      v22 = [v23 initWithFeatureIdentifier:v24 healthStore:healthStore];
    }

    objc_storeStrong(&v12->_statusManager, v22);
    if (!mode)
    {
    }

    v25 = objc_alloc(MEMORY[0x277CCD570]);
    v26 = *MEMORY[0x277CCE460];
    healthStore2 = [profileCopy healthStore];
    v28 = [v25 initWithCategory:0 domainName:v26 healthStore:healthStore2];
    keyValueDomain = v12->_keyValueDomain;
    v12->_keyValueDomain = v28;

    [(WDAtrialFibrillationEventOverviewViewController *)v12 _updateDetectionState];
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    LODWORD(v26) = [mEMORY[0x277CCDD30] isAppleInternalInstall];

    if (v26)
    {
      v31 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v12 action:sel__showInternalSettingsViewController];
      tripleTapToSettingsRecognizer = v12->_tripleTapToSettingsRecognizer;
      v12->_tripleTapToSettingsRecognizer = v31;
    }
  }

  return v12;
}

- (id)makeInternalSettingsControllerWithHealthStore:(id)store
{
  v3 = objc_alloc_init(MEMORY[0x277D75D28]);

  return v3;
}

- (void)_showInternalSettingsViewController
{
  healthStore = [(WDProfile *)self->_profile healthStore];
  v4 = [(WDAtrialFibrillationEventOverviewViewController *)self makeInternalSettingsControllerWithHealthStore:healthStore];

  [(WDAtrialFibrillationEventOverviewViewController *)self showViewController:v4 sender:self];
}

- (void)viewDidLoad
{
  v29[1] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = WDAtrialFibrillationEventOverviewViewController;
  [(HKTableViewController *)&v28 viewDidLoad];
  localization = [(HKDisplayType *)self->_displayType localization];
  displayName = [localization displayName];
  [(WDAtrialFibrillationEventOverviewViewController *)self setTitle:displayName];

  navigationItem = [(WDAtrialFibrillationEventOverviewViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  [(HKFeatureStatusManager *)self->_statusManager registerObserver:self];
  tableView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [tableView setEstimatedSectionHeaderHeight:100.0];

  tableView2 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [tableView2 setSectionHeaderHeight:*MEMORY[0x277D76F30]];

  tableView3 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [tableView3 _setSectionContentInsetFollowsLayoutMargins:1];

  tableView4 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [tableView4 _setSectionCornerRadius:*MEMORY[0x277D12798]];

  tableView5 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v11 = objc_opt_class();
  v12 = +[WDAtrialFibrillationDetectionSetupTableViewCell defaultReuseIdentifier];
  [tableView5 registerClass:v11 forCellReuseIdentifier:v12];

  tableView6 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v14 = objc_opt_class();
  v15 = +[WDHeartRhythmHeaderView defaultReuseIdentifier];
  [tableView6 registerClass:v14 forHeaderFooterViewReuseIdentifier:v15];

  tableView7 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v17 = objc_opt_class();
  v18 = +[WDHeartRhythmSectionHeaderView defaultReuseIdentifier];
  [tableView7 registerClass:v17 forHeaderFooterViewReuseIdentifier:v18];

  tableView8 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [tableView8 registerClass:objc_opt_class() forCellReuseIdentifier:@"Regulatory"];

  tableView9 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [tableView9 registerClass:objc_opt_class() forCellReuseIdentifier:@"DataTypeDescription"];

  v29[0] = objc_opt_class();
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v22 = [(WDAtrialFibrillationEventOverviewViewController *)self registerForTraitChanges:v21 withTarget:self action:sel_widthDesignationDidChangeWithTraitEnvironment_previousTraitCollection_];

  objc_initWeak(&location, self);
  dataProvider = self->_dataProvider;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __62__WDAtrialFibrillationEventOverviewViewController_viewDidLoad__block_invoke;
  v25[3] = &unk_2796E6CF0;
  objc_copyWeak(&v26, &location);
  [(WDDataListViewControllerDataProvider *)dataProvider startCollectingDataWithUpdateHandler:v25];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
  v24 = *MEMORY[0x277D85DE8];
}

void __62__WDAtrialFibrillationEventOverviewViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__WDAtrialFibrillationEventOverviewViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_2796E6CF0;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __62__WDAtrialFibrillationEventOverviewViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadAllData];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = WDAtrialFibrillationEventOverviewViewController;
  [(WDAtrialFibrillationEventOverviewViewController *)&v6 viewDidLayoutSubviews];
  if ([(WDAtrialFibrillationEventOverviewViewController *)self firstViewDidLayoutSubviews])
  {
    [(WDAtrialFibrillationEventOverviewViewController *)self setFirstViewDidLayoutSubviews:0];
    tableView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    tableHeaderView = [tableView tableHeaderView];
    tableView2 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    [tableView2 setTableHeaderView:tableHeaderView];
  }
}

- (NSArray)sectionsToDisplay
{
  sectionsToDisplay = self->_sectionsToDisplay;
  if (sectionsToDisplay)
  {
    v3 = sectionsToDisplay;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = v5;
    if (self->_detectionState != 5)
    {
      [v5 addObject:&unk_28642DAC8];
      [v6 addObject:&unk_28642DAE0];
    }

    featureStatus = self->_featureStatus;
    if (featureStatus && ([(HKFeatureStatus *)featureStatus isOnboardingRecordPresent]& 1) != 0 || self->_mode)
    {
      [v6 addObject:&unk_28642DAF8];
    }

    [v6 addObject:&unk_28642DB10];
    if (!self->_mode)
    {
      [v6 addObject:&unk_28642DB28];
    }

    userConfigurationRowsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self userConfigurationRowsToDisplay];
    v9 = [userConfigurationRowsToDisplay count];

    if (v9)
    {
      [v6 addObject:&unk_28642DB40];
    }

    [v6 addObject:&unk_28642DB58];
    v10 = [v6 copy];
    v11 = self->_sectionsToDisplay;
    self->_sectionsToDisplay = v10;

    v3 = self->_sectionsToDisplay;
  }

  return v3;
}

- (int64_t)_sectionIndexForSection:(int64_t)section
{
  sectionsToDisplay = self->_sectionsToDisplay;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:section];
  v5 = [(NSArray *)sectionsToDisplay indexOfObject:v4];

  return v5;
}

- (id)userConfigurationRowsToDisplay
{
  mode = self->_mode;
  v3 = &unk_28642DE40;
  if (mode == 1)
  {
    v3 = &unk_28642DE58;
  }

  if (mode == 2)
  {
    return MEMORY[0x277CBEBF8];
  }

  else
  {
    return v3;
  }
}

- (double)adjustedSafeAreaInsetTop
{
  view = [(WDAtrialFibrillationEventOverviewViewController *)self view];
  [view safeAreaInsets];
  v4 = v3;

  return v4;
}

- (void)_reloadTableViewAndScrollToTop
{
  tableView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [(WDAtrialFibrillationEventOverviewViewController *)self adjustedSafeAreaInsetTop];
  [tableView setContentOffset:0 animated:{0.0, -v4}];

  tableView2 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [tableView2 reloadData];

  tableView3 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [tableView3 layoutIfNeeded];

  tableView4 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [(WDAtrialFibrillationEventOverviewViewController *)self adjustedSafeAreaInsetTop];
  [tableView4 setContentOffset:0 animated:{0.0, -v8}];

  tableView5 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v10 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [tableView5 reloadSections:v10 withRowAnimation:5];

  [(WDAtrialFibrillationEventOverviewViewController *)self _reloadAtrialFibrillationSetupTableHeaderView];
}

- (void)widthDesignationDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection
{
  traitCollection = [environment traitCollection];
  v6 = [(WDAtrialFibrillationEventOverviewViewController *)self widthDesignationFromTraitCollection:traitCollection];

  [(WDAtrialFibrillationEventOverviewViewController *)self updateMarginsForWidthDesignation:v6];
}

- (int64_t)widthDesignationFromTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = [collectionCopy valueForNSIntegerTrait:objc_opt_class()];

  return v4;
}

- (void)updateMarginsForWidthDesignation:(int64_t)designation
{
  HKCollectionViewLayoutDefaultLayoutMarginsForWidthDesignation();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  tableView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [tableView setDirectionalLayoutMargins:{v5, v7, v9, v11}];
}

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 138543362;
    v11 = objc_opt_class();
    v7 = v11;
    _os_log_impl(&dword_251E85000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Received update for IRN feature status", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__WDAtrialFibrillationEventOverviewViewController_featureStatusProviding_didUpdateFeatureStatus___block_invoke;
  block[3] = &unk_2796E6D18;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateDetectionState
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v3 = OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  OUTLINED_FUNCTION_1(&dword_251E85000, v5, v6, "[%{public}@]: Error retrieving feature status for IRN; reporting 'unavailable': %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_reloadAllData
{
  v3 = [(WDDataListViewControllerDataProvider *)self->_dataProvider numberOfObjectsForSection:0];
  if (v3 >= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  [(WDAtrialFibrillationEventOverviewViewController *)self setVisibleSampleCount:v4];
  [(WDAtrialFibrillationEventOverviewViewController *)self recomputeTotalSampleCount];
  detectionState = self->_detectionState;
  [(WDAtrialFibrillationEventOverviewViewController *)self _updateDetectionState];
  if (detectionState != self->_detectionState)
  {
    [(WDAtrialFibrillationEventOverviewViewController *)self setSectionsToDisplay:0];
  }

  [(WDAtrialFibrillationEventOverviewViewController *)self _getLatestAnalyzedSampleDate];
  tableView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [tableView reloadData];

  [(WDAtrialFibrillationEventOverviewViewController *)self _reloadAtrialFibrillationSetupTableHeaderView];
}

- (void)recomputeTotalSampleCount
{
  atrialFibrillationEventType = [MEMORY[0x277CCD0C0] atrialFibrillationEventType];
  v4 = objc_alloc(MEMORY[0x277CCD8B0]);
  v5 = [MEMORY[0x277CBEB98] setWithObject:atrialFibrillationEventType];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __76__WDAtrialFibrillationEventOverviewViewController_recomputeTotalSampleCount__block_invoke;
  v12 = &unk_2796E6D68;
  selfCopy = self;
  v14 = atrialFibrillationEventType;
  v6 = atrialFibrillationEventType;
  v7 = [v4 initWithSampleTypes:v5 predicate:0 resultsHandler:&v9];

  v8 = [(WDProfile *)self->_profile healthStore:v9];
  [v8 executeQuery:v7];
}

void __76__WDAtrialFibrillationEventOverviewViewController_recomputeTotalSampleCount__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  if (a3)
  {
    v7 = [a3 objectForKeyedSubscript:*(a1 + 40)];
    v8 = [v7 integerValue];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __76__WDAtrialFibrillationEventOverviewViewController_recomputeTotalSampleCount__block_invoke_360;
    v10[3] = &unk_2796E6D40;
    v10[4] = *(a1 + 32);
    v10[5] = v8;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __76__WDAtrialFibrillationEventOverviewViewController_recomputeTotalSampleCount__block_invoke_cold_1(a1, v9);
    }
  }
}

void __76__WDAtrialFibrillationEventOverviewViewController_recomputeTotalSampleCount__block_invoke_360(uint64_t a1)
{
  [*(a1 + 32) setTotalSampleCount:*(a1 + 40)];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

- (void)_getLatestAnalyzedSampleDate
{
  keyValueDomain = [(WDAtrialFibrillationEventOverviewViewController *)self keyValueDomain];
  v4 = *MEMORY[0x277CCE4A0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__WDAtrialFibrillationEventOverviewViewController__getLatestAnalyzedSampleDate__block_invoke;
  v5[3] = &unk_2796E6D90;
  v5[4] = self;
  [keyValueDomain dateForKey:v4 completion:v5];
}

void __79__WDAtrialFibrillationEventOverviewViewController__getLatestAnalyzedSampleDate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      __79__WDAtrialFibrillationEventOverviewViewController__getLatestAnalyzedSampleDate__block_invoke_cold_1(a1, v7);
    }
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __79__WDAtrialFibrillationEventOverviewViewController__getLatestAnalyzedSampleDate__block_invoke_362;
    v8[3] = &unk_2796E6BD8;
    v8[4] = *(a1 + 32);
    v9 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v8);
  }
}

void __79__WDAtrialFibrillationEventOverviewViewController__getLatestAnalyzedSampleDate__block_invoke_362(uint64_t a1)
{
  [*(a1 + 32) setLatestAnalyzedSampleDate:*(a1 + 40)];
  v2 = [*(a1 + 32) tableView];
  [v2 reloadData];
}

- (id)_cellForFavorites
{
  v3 = objc_alloc(MEMORY[0x277D12898]);
  reuseIdentifier = [MEMORY[0x277D12898] reuseIdentifier];
  v5 = [v3 initWithStyle:0 reuseIdentifier:reuseIdentifier];

  [v5 setFavorited:{-[WDAtrialFibrillationEventOverviewViewController isPinned](self, "isPinned")}];
  v6 = [(WDAtrialFibrillationEventOverviewViewController *)self axidForElementWithString:@"AddToFavorites"];
  [v5 setAccessibilityIdentifier:v6];

  return v5;
}

- (id)_cellForDataSourcesAndAccess
{
  v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"DataSourcesAndAccessCellIdentifier"];
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v5 = [v4 localizedStringForKey:@"SHARE_DATA_TITLE" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  textLabel = [v3 textLabel];
  [textLabel setText:v5];

  [v3 setAccessoryType:1];
  v7 = [(WDAtrialFibrillationEventOverviewViewController *)self axidForElementWithString:@"DataSourcesAndAccess"];
  [v3 setAccessibilityIdentifier:v7];

  return v3;
}

- (id)_cellForShowAll
{
  tableView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v4 = [tableView dequeueReusableCellWithIdentifier:@"ShowAllCell"];

  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"ShowAllCell"];
  }

  v5 = WDBundle();
  v6 = [v5 localizedStringForKey:@"SHOW_ALL_DATA" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  textLabel = [v4 textLabel];
  [textLabel setText:v6];

  [v4 setAccessoryType:1];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_totalSampleCount];
  v9 = HKLocalizedStringForNumberWithTemplate();

  detailTextLabel = [v4 detailTextLabel];
  [detailTextLabel setText:v9];

  v11 = [(WDAtrialFibrillationEventOverviewViewController *)self axidForElementWithString:@"All Data"];
  [v4 setAccessibilityIdentifier:v11];

  return v4;
}

- (id)_cellForRegulatory
{
  tableView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v4 = [tableView dequeueReusableCellWithIdentifier:@"Regulatory"];

  v5 = WDBundle();
  v6 = [v5 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_REGULATORY_LABEL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
  textLabel = [v4 textLabel];
  [textLabel setText:v6];

  [v4 setAccessoryType:1];
  textLabel2 = [v4 textLabel];
  [textLabel2 setNumberOfLines:0];

  v9 = [(WDAtrialFibrillationEventOverviewViewController *)self axidForElementWithString:@"About"];
  [v4 setAccessibilityIdentifier:v9];

  return v4;
}

- (id)_cellForDataTypeDescription
{
  tableView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v4 = [tableView dequeueReusableCellWithIdentifier:@"DataTypeDescription"];

  v5 = ([(WDAtrialFibrillationEventOverviewViewController *)self detectionState]== 6 || [(WDAtrialFibrillationEventOverviewViewController *)self detectionState]== 7) && self->_mode == 0;
  [v4 setFeatureAvailable:v5];
  v6 = [(WDAtrialFibrillationEventOverviewViewController *)self axidForElementWithString:@"AboutIRNDescription"];
  [v4 setAccessibilityIdentifier:v6];

  return v4;
}

- (id)_cellForAFibEventInTable:(id)table atIndexPath:(id)path
{
  pathCopy = path;
  dataProvider = [(WDAtrialFibrillationEventOverviewViewController *)self dataProvider];
  v7 = [dataProvider objectAtIndex:objc_msgSend(pathCopy forSection:{"row"), 0}];

  dataProvider2 = [(WDAtrialFibrillationEventOverviewViewController *)self dataProvider];
  tableView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v10 = [dataProvider2 customCellForObject:v7 indexPath:pathCopy tableView:tableView];

  return v10;
}

- (id)_cellForAFibEducationalMaterialInTable:(id)table atIndex:(int64_t)index
{
  tableCopy = table;
  metaDataSection = [(WDAtrialFibrillationEventOverviewViewController *)self metaDataSection];
  v8 = [metaDataSection cellForIndex:index tableView:tableCopy];

  return v8;
}

- (id)_cellForIRN2ConsentForm
{
  v2 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"iConsent"];
  textLabel = [v2 textLabel];
  [textLabel setText:@"IRN 2.0 Carry Consent (Internal Only)"];

  textLabel2 = [v2 textLabel];
  [textLabel2 setNumberOfLines:0];

  return v2;
}

- (id)_pushShowAllViewController
{
  if (self->_mode == 2)
  {
    v3 = self->_dataProvider;
  }

  else
  {
    displayType = self->_displayType;
    profile = self->_profile;
    unitController = [(WDProfile *)profile unitController];
    v3 = [(HKDisplayType *)displayType wd_listViewControllerDataProviderWithProfile:profile unitController:unitController];

    [(WDDataListViewControllerDataProvider *)v3 setHasDetailViewController:[(WDAtrialFibrillationEventOverviewViewController *)self _hasDetailViewController]];
  }

  v7 = [[WDDataListViewController alloc] initWithDisplayType:self->_displayType profile:self->_profile dataProvider:v3 usingInsetStyling:1];
  tableView = [(WDDataListViewController *)v7 tableView];
  [tableView _setSectionContentInsetFollowsLayoutMargins:1];

  v9 = *MEMORY[0x277D12798];
  tableView2 = [(WDDataListViewController *)v7 tableView];
  [tableView2 _setSectionCornerRadius:v9];

  [(WDAtrialFibrillationEventOverviewViewController *)self showAdaptively:v7 sender:self];

  return v7;
}

- (id)_pushDataSourcesAndAccessController
{
  v3 = [MEMORY[0x277D12828] categoryWithID:{-[HKDisplayType categoryIdentifier](self->_displayType, "categoryIdentifier")}];
  v4 = [WDDisplayTypeDataSourcesTableViewController alloc];
  displayType = self->_displayType;
  sourceOrderController = [(WDProfile *)self->_profile sourceOrderController];
  v7 = [(WDDisplayTypeDataSourcesTableViewController *)v4 initWithDisplayType:displayType displayCategory:v3 sourceOrderController:sourceOrderController profile:self->_profile];

  [(WDDisplayTypeDataSourcesTableViewController *)v7 setShouldInsetSectionContentForDataSourceDataList:1];
  [(WDAtrialFibrillationEventOverviewViewController *)self showAdaptively:v7 sender:self];

  return v7;
}

- (void)reloadFeatureStatusSection
{
  v3 = [(WDAtrialFibrillationEventOverviewViewController *)self _sectionIndexForSection:6];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:v3];
    tableView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    [tableView reloadSections:v5 withRowAnimation:100];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sectionsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v4 = [sectionsToDisplay count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sectionsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v7 = [sectionsToDisplay objectAtIndexedSubscript:section];
  integerValue = [v7 integerValue];

  result = 1;
  if (integerValue > 3)
  {
    switch(integerValue)
    {
      case 4:
        return result;
      case 5:
        userConfigurationRowsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self userConfigurationRowsToDisplay];
        break;
      case 6:
        userConfigurationRowsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self featureStatusCells];
        break;
      default:
        return 0;
    }

    metaDataSection = userConfigurationRowsToDisplay;
    numberOfRowsInSection = [userConfigurationRowsToDisplay count];
    goto LABEL_16;
  }

  if ((integerValue - 1) < 2)
  {
    return result;
  }

  if (integerValue)
  {
    if (integerValue == 3)
    {
      metaDataSection = [(WDAtrialFibrillationEventOverviewViewController *)self metaDataSection];
      numberOfRowsInSection = [metaDataSection numberOfRowsInSection];
LABEL_16:
      v13 = numberOfRowsInSection;

      return v13;
    }

    return 0;
  }

  return [(WDAtrialFibrillationEventOverviewViewController *)self visibleSampleCount];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  sectionsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v9 = [sectionsToDisplay objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  integerValue = [v9 integerValue];

  if (integerValue <= 2)
  {
    if (integerValue)
    {
      if (integerValue == 1)
      {
        _cellForShowAll = [(WDAtrialFibrillationEventOverviewViewController *)self _cellForShowAll];
      }

      else
      {
        if (integerValue != 2)
        {
          goto LABEL_18;
        }

        _cellForShowAll = [(WDAtrialFibrillationEventOverviewViewController *)self _cellForDataTypeDescription];
      }
    }

    else
    {
      _cellForShowAll = [(WDAtrialFibrillationEventOverviewViewController *)self _cellForAFibEventInTable:viewCopy atIndexPath:pathCopy];
    }
  }

  else
  {
    if (integerValue <= 4)
    {
      if (integerValue == 3)
      {
        -[WDAtrialFibrillationEventOverviewViewController _cellForAFibEducationalMaterialInTable:atIndex:](self, "_cellForAFibEducationalMaterialInTable:atIndex:", viewCopy, [pathCopy row]);
      }

      else
      {
        [(WDAtrialFibrillationEventOverviewViewController *)self _cellForFavorites];
      }
      _cellForShowAll = ;
      goto LABEL_22;
    }

    if (integerValue != 5)
    {
      if (integerValue == 6)
      {
        featureStatusCells = [(WDAtrialFibrillationEventOverviewViewController *)self featureStatusCells];
        v13 = [featureStatusCells objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
LABEL_19:
        v18 = v13;

        goto LABEL_23;
      }

LABEL_18:
      v17 = objc_opt_class();
      featureStatusCells = NSStringFromClass(v17);
      v13 = HKErrorTableViewCell();
      goto LABEL_19;
    }

    userConfigurationRowsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self userConfigurationRowsToDisplay];
    v15 = [userConfigurationRowsToDisplay objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    integerValue2 = [v15 integerValue];

    if (integerValue2 == 1)
    {
      _cellForShowAll = [(WDAtrialFibrillationEventOverviewViewController *)self _cellForRegulatory];
    }

    else
    {
      if (integerValue2)
      {
        goto LABEL_18;
      }

      _cellForShowAll = [(WDAtrialFibrillationEventOverviewViewController *)self _cellForDataSourcesAndAccess];
    }
  }

LABEL_22:
  v18 = _cellForShowAll;
LABEL_23:

  return v18;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section || self->_detectionState)
  {
    sectionsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
    v8 = [sectionsToDisplay objectAtIndexedSubscript:section];
    integerValue = [v8 integerValue];

    _atrialFibrillationDetectionRescindedHeaderView = 0;
    if (integerValue > 1)
    {
      switch(integerValue)
      {
        case 2:
          v11 = WDBundle();
          v12 = [v11 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_ABOUT_SECTION_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
          v13 = @"AboutSection";
          break;
        case 3:
          v11 = WDBundle();
          v12 = [v11 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_EDUCATION_SECTION_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
          v13 = @"EducationSection";
          break;
        case 4:
          v11 = WDBundle();
          v12 = [v11 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_OPTIONS_SECTION_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
          v13 = @"OptionsSection";
          break;
        default:
          goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (integerValue)
    {
      if (integerValue != 1)
      {
        goto LABEL_17;
      }

      if ([(WDAtrialFibrillationEventOverviewViewController *)self visibleSampleCount])
      {
        goto LABEL_11;
      }
    }

    else if ([(WDAtrialFibrillationEventOverviewViewController *)self visibleSampleCount]< 1)
    {
LABEL_11:
      _atrialFibrillationDetectionRescindedHeaderView = 0;
      goto LABEL_17;
    }

    v11 = WDBundle();
    v12 = [v11 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_NOTIFICATIONS_SECTION_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
    v13 = @"NotificationsSection";
LABEL_16:
    _atrialFibrillationDetectionRescindedHeaderView = [(WDAtrialFibrillationEventOverviewViewController *)self _sectionHeaderViewWithTitle:v12 identifier:v13];

    goto LABEL_17;
  }

  _atrialFibrillationDetectionRescindedHeaderView = [(WDAtrialFibrillationEventOverviewViewController *)self _atrialFibrillationDetectionRescindedHeaderView];
LABEL_17:

  return _atrialFibrillationDetectionRescindedHeaderView;
}

- (id)_sectionHeaderViewWithTitle:(id)title identifier:(id)identifier
{
  identifierCopy = identifier;
  titleCopy = title;
  tableView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v9 = +[WDHeartRhythmSectionHeaderView defaultReuseIdentifier];
  v10 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:v9];

  [v10 setTitleText:titleCopy];
  v11 = [(WDAtrialFibrillationEventOverviewViewController *)self axidForElementWithString:@"SectionHeader."];
  v12 = [v11 stringByAppendingString:identifierCopy];

  [v10 setAccessibilityIdentifier:v12];

  return v10;
}

- (id)_atrialFibrillationDetectionRescindedHeaderView
{
  tableView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v4 = +[WDHeartRhythmHeaderView defaultReuseIdentifier];
  v5 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:v4];

  featureStatus = self->_featureStatus;
  if (featureStatus)
  {
    v7 = [(HKFeatureStatus *)featureStatus objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBFD0]];
    bOOLValue = [v8 BOOLValue];

    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBF30]];
    bOOLValue2 = [v10 BOOLValue];

    if (bOOLValue)
    {
      if (bOOLValue2)
      {
        _HKInitializeLogging();
        v12 = *MEMORY[0x277CCC2D8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_FAULT))
        {
          [(WDAtrialFibrillationEventOverviewViewController *)v12 _atrialFibrillationDetectionRescindedHeaderView];
        }

        goto LABEL_11;
      }

      v22 = WDBundle();
      v23 = [v22 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_DISABLED_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
      [v5 setTitleText:v23];

      v16 = WDBundle();
      v24 = [v16 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_DISABLED_LEARN_MORE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
      v25 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277CCB818]];
      [v5 setBodyText:0 URLText:v24 URL:v25];
    }

    else
    {
      v14 = WDBundle();
      v15 = [v14 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_SEED_EXPIRED_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
      [v5 setTitleText:v15];

      v16 = WDBundle();
      v17 = [v16 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_SEED_EXPIRED_LEARN_MORE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
      v18 = MEMORY[0x277CBEBC0];
      v19 = WDBundle();
      v20 = [v19 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_SEED_EXPIRED_URL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
      v21 = [v18 URLWithString:v20];
      [v5 setBodyText:0 URLText:v17 URL:v21];
    }

LABEL_11:
    goto LABEL_12;
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_FAULT))
  {
    [(WDAtrialFibrillationEventOverviewViewController *)v13 _atrialFibrillationDetectionRescindedHeaderView];
  }

LABEL_12:

  return v5;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  sectionsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v7 = [sectionsToDisplay objectAtIndexedSubscript:section];
  integerValue = [v7 integerValue];

  if (integerValue == 4)
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    features = [mEMORY[0x277CCDD30] features];
    isPinnedInBrowse = [features isPinnedInBrowse];

    v19 = WDBundle();
    v11 = v19;
    if (isPinnedInBrowse)
    {
      v20 = @"ATRIAL_FIBRILLATION_DETECTION_PINNED_BROWSE_FOOTER";
    }

    else
    {
      v20 = @"ATRIAL_FIBRILLATION_DETECTION_PINNED_SUMMARY_FOOTER";
    }

    goto LABEL_10;
  }

  if (integerValue != 1 || self->_detectionState != 6)
  {
    v15 = 0;
    goto LABEL_12;
  }

  latestAnalyzedSampleDate = [(WDAtrialFibrillationEventOverviewViewController *)self latestAnalyzedSampleDate];

  if (!latestAnalyzedSampleDate)
  {
    v19 = WDBundle();
    v11 = v19;
    v20 = @"ATRIAL_FIBRILLATION_DETECTION_ENABLED_NO_SAMPLES";
LABEL_10:
    v15 = [v19 localizedStringForKey:v20 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
    goto LABEL_11;
  }

  latestAnalyzedSampleDate2 = [(WDAtrialFibrillationEventOverviewViewController *)self latestAnalyzedSampleDate];
  v11 = HKLocalizedStringForDateAndTemplate();

  v12 = MEMORY[0x277CCACA8];
  v13 = WDBundle();
  v14 = [v13 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_LAST_SAMPLE_%@" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
  v15 = [v12 stringWithFormat:v14, v11];

LABEL_11:
LABEL_12:

  return v15;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  sectionsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v7 = [sectionsToDisplay objectAtIndexedSubscript:section];
  integerValue = [v7 integerValue];

  if (integerValue == 1)
  {
    featureStatusFooterView = 0;
    detectionState = self->_detectionState;
    if (detectionState <= 3)
    {
      if (detectionState != 1)
      {
        if (detectionState != 2)
        {
          goto LABEL_18;
        }

        goto LABEL_12;
      }

      v27 = objc_alloc(MEMORY[0x277D128A8]);
      defaultReuseIdentifier = [MEMORY[0x277D128A8] defaultReuseIdentifier];
      v28 = WDBundle();
      v16 = v28;
      v29 = @"ATRIAL_FIBRILLATION_DETECTION_HEART_AGE_GATED";
    }

    else
    {
      if (detectionState != 11)
      {
        if (detectionState != 7)
        {
          if (detectionState != 4)
          {
            goto LABEL_18;
          }

          v11 = MEMORY[0x277CBEBC0];
          v12 = WDBundle();
          v13 = [v12 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_UNAVAILABLE_LEARN_MORE_URL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
          defaultReuseIdentifier = [v11 URLWithString:v13];

          v15 = WDBundle();
          v16 = [v15 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_UNAVAILABLE_ON_ACTIVE_WATCH" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];

          v17 = WDBundle();
          v18 = v17;
          v19 = @"ATRIAL_FIBRILLATION_DETECTION_UNAVAILABLE_LEARN_MORE";
          goto LABEL_13;
        }

LABEL_12:
        defaultReuseIdentifier = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=com.apple.HeartRateSettings"];
        v20 = WDBundle();
        v16 = [v20 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_AVAILABLE_OFF" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];

        v17 = WDBundle();
        v18 = v17;
        v19 = @"ATRIAL_FIBRILLATION_DETECTION_AVAILABLE_OFF_LINK";
LABEL_13:
        v21 = [v17 localizedStringForKey:v19 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];

        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v16, v21];
        v23 = objc_alloc(MEMORY[0x277D128A8]);
        defaultReuseIdentifier2 = [MEMORY[0x277D128A8] defaultReuseIdentifier];
        v25 = [v22 rangeOfString:v21];
        featureStatusFooterView = [v23 initWithReuseIdentifier:defaultReuseIdentifier2 fullText:v22 linkRange:v25 link:{v26, defaultReuseIdentifier}];

LABEL_17:
        goto LABEL_18;
      }

      v27 = objc_alloc(MEMORY[0x277D128A8]);
      defaultReuseIdentifier = [MEMORY[0x277D128A8] defaultReuseIdentifier];
      v28 = WDBundle();
      v16 = v28;
      v29 = @"ATRIAL_FIBRILLATION_DETECTION_UNAVAILABLE_ON_ACTIVE_WATCH";
    }

    v30 = [v28 localizedStringForKey:v29 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
    v31 = objc_alloc_init(MEMORY[0x277CBEBC0]);
    featureStatusFooterView = [v27 initWithReuseIdentifier:defaultReuseIdentifier bodyText:v30 linkText:&stru_28641D9B8 link:v31];

    goto LABEL_17;
  }

  if (integerValue == 6)
  {
    featureStatusFooterView = [(WDAtrialFibrillationEventOverviewViewController *)self featureStatusFooterView];
  }

  else
  {
    featureStatusFooterView = 0;
  }

LABEL_18:

  return featureStatusFooterView;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [cellCopy setSeparatorColor:clearColor];
  }

  sectionsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v12 = [sectionsToDisplay objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  integerValue = [v12 integerValue];

  if (integerValue == 3)
  {
    metaDataSection = [(WDAtrialFibrillationEventOverviewViewController *)self metaDataSection];
    [metaDataSection willDisplayCell:cellCopy forIndex:objc_msgSend(pathCopy tableView:{"row"), viewCopy}];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  sectionsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v8 = [sectionsToDisplay objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
  integerValue = [v8 integerValue];

  if (integerValue > 3)
  {
    if (integerValue != 4)
    {
      if (integerValue == 5)
      {
        userConfigurationRowsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self userConfigurationRowsToDisplay];
        v16 = [userConfigurationRowsToDisplay objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
        integerValue2 = [v16 integerValue];

        if (integerValue2 == 1)
        {
          [(WDAtrialFibrillationEventOverviewViewController *)self didSelectRegulatoryRow];
        }

        else if (!integerValue2)
        {
          _pushDataSourcesAndAccessController = [(WDAtrialFibrillationEventOverviewViewController *)self _pushDataSourcesAndAccessController];
        }
      }

      else if (integerValue == 6)
      {
        [(WDAtrialFibrillationEventOverviewViewController *)self featureStatusCellTappedAtIndexPath:pathCopy];
      }

      goto LABEL_19;
    }

    metaDataSection = [viewCopy cellForRowAtIndexPath:pathCopy];
    [metaDataSection setFavorited:{objc_msgSend(metaDataSection, "isFavorited") ^ 1}];
    -[WDAtrialFibrillationEventOverviewViewController setPinned:](self, "setPinned:", [metaDataSection isFavorited]);
LABEL_13:

    goto LABEL_19;
  }

  if (!integerValue)
  {
    dataProvider = [(WDAtrialFibrillationEventOverviewViewController *)self dataProvider];
    metaDataSection = [dataProvider viewControllerForItemAtIndexPath:pathCopy];

    if (metaDataSection)
    {
      [(WDAtrialFibrillationEventOverviewViewController *)self showAdaptively:metaDataSection sender:self];
    }

    goto LABEL_13;
  }

  if (integerValue != 1)
  {
    if (integerValue != 3)
    {
      goto LABEL_19;
    }

    metaDataSection = [(WDAtrialFibrillationEventOverviewViewController *)self metaDataSection];
    v11 = [pathCopy row];
    navigationController = [(WDAtrialFibrillationEventOverviewViewController *)self navigationController];
    [metaDataSection selectCellForIndex:v11 navigationController:navigationController animated:1];

    goto LABEL_13;
  }

  _pushShowAllViewController = [(WDAtrialFibrillationEventOverviewViewController *)self _pushShowAllViewController];
LABEL_19:
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  sectionsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v6 = [sectionsToDisplay objectAtIndexedSubscript:section];
  integerValue = [v6 integerValue];

  result = *MEMORY[0x277D76F30];
  if (!integerValue)
  {
    return 2.22507386e-308;
  }

  return result;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  sectionsToDisplay = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v6 = [sectionsToDisplay objectAtIndexedSubscript:section];
  integerValue = [v6 integerValue];

  result = *MEMORY[0x277D76F30];
  if (integerValue == 6)
  {
    return 2.22507386e-308;
  }

  return result;
}

- (id)axidForElementWithString:(id)string
{
  v3 = MEMORY[0x277CCACA8];
  stringCopy = string;
  v5 = [v3 healthAccessibilityIdentifier:2 suffix:@"Overview"];
  stringCopy = [v5 stringByAppendingFormat:@".%@", stringCopy];

  return stringCopy;
}

- (void)_reloadAtrialFibrillationSetupTableHeaderView
{
  if (self->_detectionState == 5)
  {
    _atrialFibrillationSetupContainerView = [(WDAtrialFibrillationEventOverviewViewController *)self _atrialFibrillationSetupContainerView];
    tableView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    [tableView setTableHeaderView:_atrialFibrillationSetupContainerView];

    widthAnchor = [_atrialFibrillationSetupContainerView widthAnchor];
    tableView2 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    widthAnchor2 = [tableView2 widthAnchor];
    v7 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v7 setActive:1];

    centerXAnchor = [_atrialFibrillationSetupContainerView centerXAnchor];
    tableView3 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    centerXAnchor2 = [tableView3 centerXAnchor];
    v11 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v11 setActive:1];

    topAnchor = [_atrialFibrillationSetupContainerView topAnchor];
    tableView4 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    topAnchor2 = [tableView4 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v15 setActive:1];

    tableView5 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    tableHeaderView = [tableView5 tableHeaderView];
    [tableHeaderView layoutIfNeeded];
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x277D75D18]);
    _atrialFibrillationSetupContainerView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    [_atrialFibrillationSetupContainerView bounds];
    tableView5 = [v18 initWithFrame:{0.0, 0.0}];
    tableHeaderView = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    [tableHeaderView setTableHeaderView:tableView5];
  }
}

- (id)_atrialFibrillationSetupContainerView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [(HKOnboardingSetupView *)[WDAtrialFibrillationDetectionSetupView alloc] initWithFrame:v4, v5, v6, v7];
  [(HKOnboardingSetupView *)v9 setDelegate:self];
  [v8 addSubview:v9];
  [(WDAtrialFibrillationDetectionSetupView *)v9 hk_alignConstraintsWithView:v8];

  return v8;
}

void __76__WDAtrialFibrillationEventOverviewViewController_recomputeTotalSampleCount__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  OUTLINED_FUNCTION_1(&dword_251E85000, v7, v8, "%{public}@: Error counting heart event samples: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

void __79__WDAtrialFibrillationEventOverviewViewController__getLatestAnalyzedSampleDate__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  OUTLINED_FUNCTION_1(&dword_251E85000, v7, v8, "%{public}@: Error loading latest analyzed sample time: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_atrialFibrillationDetectionRescindedHeaderView
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_2(&dword_251E85000, v3, v4, "[%{public}@]: Asked to configure rescinded header view, but no feature status is present", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

@end