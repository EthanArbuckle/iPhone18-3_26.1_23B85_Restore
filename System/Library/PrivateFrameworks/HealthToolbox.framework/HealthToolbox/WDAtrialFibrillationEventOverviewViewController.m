@interface WDAtrialFibrillationEventOverviewViewController
- (NSArray)sectionsToDisplay;
- (WDAtrialFibrillationEventOverviewViewController)initWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5;
- (double)adjustedSafeAreaInsetTop;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_atrialFibrillationDetectionRescindedHeaderView;
- (id)_atrialFibrillationSetupContainerView;
- (id)_cellForAFibEducationalMaterialInTable:(id)a3 atIndex:(int64_t)a4;
- (id)_cellForAFibEventInTable:(id)a3 atIndexPath:(id)a4;
- (id)_cellForDataSourcesAndAccess;
- (id)_cellForDataTypeDescription;
- (id)_cellForFavorites;
- (id)_cellForIRN2ConsentForm;
- (id)_cellForRegulatory;
- (id)_cellForShowAll;
- (id)_pushDataSourcesAndAccessController;
- (id)_pushShowAllViewController;
- (id)_sectionHeaderViewWithTitle:(id)a3 identifier:(id)a4;
- (id)axidForElementWithString:(id)a3;
- (id)makeInternalSettingsControllerWithHealthStore:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)userConfigurationRowsToDisplay;
- (int64_t)_sectionIndexForSection:(int64_t)a3;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)widthDesignationFromTraitCollection:(id)a3;
- (void)_atrialFibrillationDetectionRescindedHeaderView;
- (void)_getLatestAnalyzedSampleDate;
- (void)_reloadAllData;
- (void)_reloadAtrialFibrillationSetupTableHeaderView;
- (void)_reloadTableViewAndScrollToTop;
- (void)_showInternalSettingsViewController;
- (void)_updateDetectionState;
- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4;
- (void)recomputeTotalSampleCount;
- (void)reloadFeatureStatusSection;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateMarginsForWidthDesignation:(int64_t)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)widthDesignationDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation WDAtrialFibrillationEventOverviewViewController

- (WDAtrialFibrillationEventOverviewViewController)initWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v34.receiver = self;
  v34.super_class = WDAtrialFibrillationEventOverviewViewController;
  v11 = [(WDAtrialFibrillationEventOverviewViewController *)&v34 initWithStyle:1];
  v12 = v11;
  if (v11)
  {
    v11->_firstViewDidLayoutSubviews = 1;
    objc_storeStrong(&v11->_displayType, a3);
    objc_storeStrong(&v12->_profile, a4);
    v12->_mode = a5;
    displayType = v12->_displayType;
    profile = v12->_profile;
    v15 = [(WDProfile *)profile unitController];
    v16 = [(HKDisplayType *)displayType wd_listViewControllerDataProviderWithProfile:profile unitController:v15];
    v17 = 1056;
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
      v17 = [v10 healthStore];
      v22 = [v23 initWithFeatureIdentifier:v24 healthStore:v17];
    }

    objc_storeStrong(&v12->_statusManager, v22);
    if (!mode)
    {
    }

    v25 = objc_alloc(MEMORY[0x277CCD570]);
    v26 = *MEMORY[0x277CCE460];
    v27 = [v10 healthStore];
    v28 = [v25 initWithCategory:0 domainName:v26 healthStore:v27];
    keyValueDomain = v12->_keyValueDomain;
    v12->_keyValueDomain = v28;

    [(WDAtrialFibrillationEventOverviewViewController *)v12 _updateDetectionState];
    v30 = [MEMORY[0x277CCDD30] sharedBehavior];
    LODWORD(v26) = [v30 isAppleInternalInstall];

    if (v26)
    {
      v31 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v12 action:sel__showInternalSettingsViewController];
      tripleTapToSettingsRecognizer = v12->_tripleTapToSettingsRecognizer;
      v12->_tripleTapToSettingsRecognizer = v31;
    }
  }

  return v12;
}

- (id)makeInternalSettingsControllerWithHealthStore:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x277D75D28]);

  return v3;
}

- (void)_showInternalSettingsViewController
{
  v3 = [(WDProfile *)self->_profile healthStore];
  v4 = [(WDAtrialFibrillationEventOverviewViewController *)self makeInternalSettingsControllerWithHealthStore:v3];

  [(WDAtrialFibrillationEventOverviewViewController *)self showViewController:v4 sender:self];
}

- (void)viewDidLoad
{
  v29[1] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = WDAtrialFibrillationEventOverviewViewController;
  [(HKTableViewController *)&v28 viewDidLoad];
  v3 = [(HKDisplayType *)self->_displayType localization];
  v4 = [v3 displayName];
  [(WDAtrialFibrillationEventOverviewViewController *)self setTitle:v4];

  v5 = [(WDAtrialFibrillationEventOverviewViewController *)self navigationItem];
  [v5 setLargeTitleDisplayMode:2];

  [(HKFeatureStatusManager *)self->_statusManager registerObserver:self];
  v6 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [v6 setEstimatedSectionHeaderHeight:100.0];

  v7 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [v7 setSectionHeaderHeight:*MEMORY[0x277D76F30]];

  v8 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [v8 _setSectionContentInsetFollowsLayoutMargins:1];

  v9 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [v9 _setSectionCornerRadius:*MEMORY[0x277D12798]];

  v10 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v11 = objc_opt_class();
  v12 = +[WDAtrialFibrillationDetectionSetupTableViewCell defaultReuseIdentifier];
  [v10 registerClass:v11 forCellReuseIdentifier:v12];

  v13 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v14 = objc_opt_class();
  v15 = +[WDHeartRhythmHeaderView defaultReuseIdentifier];
  [v13 registerClass:v14 forHeaderFooterViewReuseIdentifier:v15];

  v16 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v17 = objc_opt_class();
  v18 = +[WDHeartRhythmSectionHeaderView defaultReuseIdentifier];
  [v16 registerClass:v17 forHeaderFooterViewReuseIdentifier:v18];

  v19 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [v19 registerClass:objc_opt_class() forCellReuseIdentifier:@"Regulatory"];

  v20 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [v20 registerClass:objc_opt_class() forCellReuseIdentifier:@"DataTypeDescription"];

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
    v3 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    v4 = [v3 tableHeaderView];
    v5 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    [v5 setTableHeaderView:v4];
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

    v8 = [(WDAtrialFibrillationEventOverviewViewController *)self userConfigurationRowsToDisplay];
    v9 = [v8 count];

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

- (int64_t)_sectionIndexForSection:(int64_t)a3
{
  sectionsToDisplay = self->_sectionsToDisplay;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
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
  v2 = [(WDAtrialFibrillationEventOverviewViewController *)self view];
  [v2 safeAreaInsets];
  v4 = v3;

  return v4;
}

- (void)_reloadTableViewAndScrollToTop
{
  v3 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [(WDAtrialFibrillationEventOverviewViewController *)self adjustedSafeAreaInsetTop];
  [v3 setContentOffset:0 animated:{0.0, -v4}];

  v5 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [v5 reloadData];

  v6 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [v6 layoutIfNeeded];

  v7 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [(WDAtrialFibrillationEventOverviewViewController *)self adjustedSafeAreaInsetTop];
  [v7 setContentOffset:0 animated:{0.0, -v8}];

  v9 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v10 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [v9 reloadSections:v10 withRowAnimation:5];

  [(WDAtrialFibrillationEventOverviewViewController *)self _reloadAtrialFibrillationSetupTableHeaderView];
}

- (void)widthDesignationDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [a3 traitCollection];
  v6 = [(WDAtrialFibrillationEventOverviewViewController *)self widthDesignationFromTraitCollection:v5];

  [(WDAtrialFibrillationEventOverviewViewController *)self updateMarginsForWidthDesignation:v6];
}

- (int64_t)widthDesignationFromTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForNSIntegerTrait:objc_opt_class()];

  return v4;
}

- (void)updateMarginsForWidthDesignation:(int64_t)a3
{
  HKCollectionViewLayoutDefaultLayoutMarginsForWidthDesignation();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [v12 setDirectionalLayoutMargins:{v5, v7, v9, v11}];
}

- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4
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
  v2 = a1;
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
  v6 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  [v6 reloadData];

  [(WDAtrialFibrillationEventOverviewViewController *)self _reloadAtrialFibrillationSetupTableHeaderView];
}

- (void)recomputeTotalSampleCount
{
  v3 = [MEMORY[0x277CCD0C0] atrialFibrillationEventType];
  v4 = objc_alloc(MEMORY[0x277CCD8B0]);
  v5 = [MEMORY[0x277CBEB98] setWithObject:v3];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __76__WDAtrialFibrillationEventOverviewViewController_recomputeTotalSampleCount__block_invoke;
  v12 = &unk_2796E6D68;
  v13 = self;
  v14 = v3;
  v6 = v3;
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
  v3 = [(WDAtrialFibrillationEventOverviewViewController *)self keyValueDomain];
  v4 = *MEMORY[0x277CCE4A0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__WDAtrialFibrillationEventOverviewViewController__getLatestAnalyzedSampleDate__block_invoke;
  v5[3] = &unk_2796E6D90;
  v5[4] = self;
  [v3 dateForKey:v4 completion:v5];
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
  v4 = [MEMORY[0x277D12898] reuseIdentifier];
  v5 = [v3 initWithStyle:0 reuseIdentifier:v4];

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
  v6 = [v3 textLabel];
  [v6 setText:v5];

  [v3 setAccessoryType:1];
  v7 = [(WDAtrialFibrillationEventOverviewViewController *)self axidForElementWithString:@"DataSourcesAndAccess"];
  [v3 setAccessibilityIdentifier:v7];

  return v3;
}

- (id)_cellForShowAll
{
  v3 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v4 = [v3 dequeueReusableCellWithIdentifier:@"ShowAllCell"];

  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"ShowAllCell"];
  }

  v5 = WDBundle();
  v6 = [v5 localizedStringForKey:@"SHOW_ALL_DATA" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v7 = [v4 textLabel];
  [v7 setText:v6];

  [v4 setAccessoryType:1];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_totalSampleCount];
  v9 = HKLocalizedStringForNumberWithTemplate();

  v10 = [v4 detailTextLabel];
  [v10 setText:v9];

  v11 = [(WDAtrialFibrillationEventOverviewViewController *)self axidForElementWithString:@"All Data"];
  [v4 setAccessibilityIdentifier:v11];

  return v4;
}

- (id)_cellForRegulatory
{
  v3 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v4 = [v3 dequeueReusableCellWithIdentifier:@"Regulatory"];

  v5 = WDBundle();
  v6 = [v5 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_REGULATORY_LABEL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
  v7 = [v4 textLabel];
  [v7 setText:v6];

  [v4 setAccessoryType:1];
  v8 = [v4 textLabel];
  [v8 setNumberOfLines:0];

  v9 = [(WDAtrialFibrillationEventOverviewViewController *)self axidForElementWithString:@"About"];
  [v4 setAccessibilityIdentifier:v9];

  return v4;
}

- (id)_cellForDataTypeDescription
{
  v3 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v4 = [v3 dequeueReusableCellWithIdentifier:@"DataTypeDescription"];

  v5 = ([(WDAtrialFibrillationEventOverviewViewController *)self detectionState]== 6 || [(WDAtrialFibrillationEventOverviewViewController *)self detectionState]== 7) && self->_mode == 0;
  [v4 setFeatureAvailable:v5];
  v6 = [(WDAtrialFibrillationEventOverviewViewController *)self axidForElementWithString:@"AboutIRNDescription"];
  [v4 setAccessibilityIdentifier:v6];

  return v4;
}

- (id)_cellForAFibEventInTable:(id)a3 atIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(WDAtrialFibrillationEventOverviewViewController *)self dataProvider];
  v7 = [v6 objectAtIndex:objc_msgSend(v5 forSection:{"row"), 0}];

  v8 = [(WDAtrialFibrillationEventOverviewViewController *)self dataProvider];
  v9 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v10 = [v8 customCellForObject:v7 indexPath:v5 tableView:v9];

  return v10;
}

- (id)_cellForAFibEducationalMaterialInTable:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = [(WDAtrialFibrillationEventOverviewViewController *)self metaDataSection];
  v8 = [v7 cellForIndex:a4 tableView:v6];

  return v8;
}

- (id)_cellForIRN2ConsentForm
{
  v2 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"iConsent"];
  v3 = [v2 textLabel];
  [v3 setText:@"IRN 2.0 Carry Consent (Internal Only)"];

  v4 = [v2 textLabel];
  [v4 setNumberOfLines:0];

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
    v6 = [(WDProfile *)profile unitController];
    v3 = [(HKDisplayType *)displayType wd_listViewControllerDataProviderWithProfile:profile unitController:v6];

    [(WDDataListViewControllerDataProvider *)v3 setHasDetailViewController:[(WDAtrialFibrillationEventOverviewViewController *)self _hasDetailViewController]];
  }

  v7 = [[WDDataListViewController alloc] initWithDisplayType:self->_displayType profile:self->_profile dataProvider:v3 usingInsetStyling:1];
  v8 = [(WDDataListViewController *)v7 tableView];
  [v8 _setSectionContentInsetFollowsLayoutMargins:1];

  v9 = *MEMORY[0x277D12798];
  v10 = [(WDDataListViewController *)v7 tableView];
  [v10 _setSectionCornerRadius:v9];

  [(WDAtrialFibrillationEventOverviewViewController *)self showAdaptively:v7 sender:self];

  return v7;
}

- (id)_pushDataSourcesAndAccessController
{
  v3 = [MEMORY[0x277D12828] categoryWithID:{-[HKDisplayType categoryIdentifier](self->_displayType, "categoryIdentifier")}];
  v4 = [WDDisplayTypeDataSourcesTableViewController alloc];
  displayType = self->_displayType;
  v6 = [(WDProfile *)self->_profile sourceOrderController];
  v7 = [(WDDisplayTypeDataSourcesTableViewController *)v4 initWithDisplayType:displayType displayCategory:v3 sourceOrderController:v6 profile:self->_profile];

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
    v4 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    [v4 reloadSections:v5 withRowAnimation:100];
  }
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v4 = [v3 count];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v7 = [v6 objectAtIndexedSubscript:a4];
  v8 = [v7 integerValue];

  result = 1;
  if (v8 > 3)
  {
    switch(v8)
    {
      case 4:
        return result;
      case 5:
        v12 = [(WDAtrialFibrillationEventOverviewViewController *)self userConfigurationRowsToDisplay];
        break;
      case 6:
        v12 = [(WDAtrialFibrillationEventOverviewViewController *)self featureStatusCells];
        break;
      default:
        return 0;
    }

    v10 = v12;
    v11 = [v12 count];
    goto LABEL_16;
  }

  if ((v8 - 1) < 2)
  {
    return result;
  }

  if (v8)
  {
    if (v8 == 3)
    {
      v10 = [(WDAtrialFibrillationEventOverviewViewController *)self metaDataSection];
      v11 = [v10 numberOfRowsInSection];
LABEL_16:
      v13 = v11;

      return v13;
    }

    return 0;
  }

  return [(WDAtrialFibrillationEventOverviewViewController *)self visibleSampleCount];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "section")}];
  v10 = [v9 integerValue];

  if (v10 <= 2)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = [(WDAtrialFibrillationEventOverviewViewController *)self _cellForShowAll];
      }

      else
      {
        if (v10 != 2)
        {
          goto LABEL_18;
        }

        v11 = [(WDAtrialFibrillationEventOverviewViewController *)self _cellForDataTypeDescription];
      }
    }

    else
    {
      v11 = [(WDAtrialFibrillationEventOverviewViewController *)self _cellForAFibEventInTable:v6 atIndexPath:v7];
    }
  }

  else
  {
    if (v10 <= 4)
    {
      if (v10 == 3)
      {
        -[WDAtrialFibrillationEventOverviewViewController _cellForAFibEducationalMaterialInTable:atIndex:](self, "_cellForAFibEducationalMaterialInTable:atIndex:", v6, [v7 row]);
      }

      else
      {
        [(WDAtrialFibrillationEventOverviewViewController *)self _cellForFavorites];
      }
      v11 = ;
      goto LABEL_22;
    }

    if (v10 != 5)
    {
      if (v10 == 6)
      {
        v12 = [(WDAtrialFibrillationEventOverviewViewController *)self featureStatusCells];
        v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
LABEL_19:
        v18 = v13;

        goto LABEL_23;
      }

LABEL_18:
      v17 = objc_opt_class();
      v12 = NSStringFromClass(v17);
      v13 = HKErrorTableViewCell();
      goto LABEL_19;
    }

    v14 = [(WDAtrialFibrillationEventOverviewViewController *)self userConfigurationRowsToDisplay];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];
    v16 = [v15 integerValue];

    if (v16 == 1)
    {
      v11 = [(WDAtrialFibrillationEventOverviewViewController *)self _cellForRegulatory];
    }

    else
    {
      if (v16)
      {
        goto LABEL_18;
      }

      v11 = [(WDAtrialFibrillationEventOverviewViewController *)self _cellForDataSourcesAndAccess];
    }
  }

LABEL_22:
  v18 = v11;
LABEL_23:

  return v18;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4 || self->_detectionState)
  {
    v7 = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
    v8 = [v7 objectAtIndexedSubscript:a4];
    v9 = [v8 integerValue];

    v10 = 0;
    if (v9 > 1)
    {
      switch(v9)
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

    if (v9)
    {
      if (v9 != 1)
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
      v10 = 0;
      goto LABEL_17;
    }

    v11 = WDBundle();
    v12 = [v11 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_NOTIFICATIONS_SECTION_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
    v13 = @"NotificationsSection";
LABEL_16:
    v10 = [(WDAtrialFibrillationEventOverviewViewController *)self _sectionHeaderViewWithTitle:v12 identifier:v13];

    goto LABEL_17;
  }

  v10 = [(WDAtrialFibrillationEventOverviewViewController *)self _atrialFibrillationDetectionRescindedHeaderView];
LABEL_17:

  return v10;
}

- (id)_sectionHeaderViewWithTitle:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v9 = +[WDHeartRhythmSectionHeaderView defaultReuseIdentifier];
  v10 = [v8 dequeueReusableHeaderFooterViewWithIdentifier:v9];

  [v10 setTitleText:v7];
  v11 = [(WDAtrialFibrillationEventOverviewViewController *)self axidForElementWithString:@"SectionHeader."];
  v12 = [v11 stringByAppendingString:v6];

  [v10 setAccessibilityIdentifier:v12];

  return v10;
}

- (id)_atrialFibrillationDetectionRescindedHeaderView
{
  v3 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
  v4 = +[WDHeartRhythmHeaderView defaultReuseIdentifier];
  v5 = [v3 dequeueReusableHeaderFooterViewWithIdentifier:v4];

  featureStatus = self->_featureStatus;
  if (featureStatus)
  {
    v7 = [(HKFeatureStatus *)featureStatus objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBFD0]];
    v9 = [v8 BOOLValue];

    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBF30]];
    v11 = [v10 BOOLValue];

    if (v9)
    {
      if (v11)
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

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v6 = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v7 = [v6 objectAtIndexedSubscript:a4];
  v8 = [v7 integerValue];

  if (v8 == 4)
  {
    v16 = [MEMORY[0x277CCDD30] sharedBehavior];
    v17 = [v16 features];
    v18 = [v17 isPinnedInBrowse];

    v19 = WDBundle();
    v11 = v19;
    if (v18)
    {
      v20 = @"ATRIAL_FIBRILLATION_DETECTION_PINNED_BROWSE_FOOTER";
    }

    else
    {
      v20 = @"ATRIAL_FIBRILLATION_DETECTION_PINNED_SUMMARY_FOOTER";
    }

    goto LABEL_10;
  }

  if (v8 != 1 || self->_detectionState != 6)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v9 = [(WDAtrialFibrillationEventOverviewViewController *)self latestAnalyzedSampleDate];

  if (!v9)
  {
    v19 = WDBundle();
    v11 = v19;
    v20 = @"ATRIAL_FIBRILLATION_DETECTION_ENABLED_NO_SAMPLES";
LABEL_10:
    v15 = [v19 localizedStringForKey:v20 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
    goto LABEL_11;
  }

  v10 = [(WDAtrialFibrillationEventOverviewViewController *)self latestAnalyzedSampleDate];
  v11 = HKLocalizedStringForDateAndTemplate();

  v12 = MEMORY[0x277CCACA8];
  v13 = WDBundle();
  v14 = [v13 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_LAST_SAMPLE_%@" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
  v15 = [v12 stringWithFormat:v14, v11];

LABEL_11:
LABEL_12:

  return v15;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v6 = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v7 = [v6 objectAtIndexedSubscript:a4];
  v8 = [v7 integerValue];

  if (v8 == 1)
  {
    v9 = 0;
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
      v14 = [MEMORY[0x277D128A8] defaultReuseIdentifier];
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
          v14 = [v11 URLWithString:v13];

          v15 = WDBundle();
          v16 = [v15 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_UNAVAILABLE_ON_ACTIVE_WATCH" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];

          v17 = WDBundle();
          v18 = v17;
          v19 = @"ATRIAL_FIBRILLATION_DETECTION_UNAVAILABLE_LEARN_MORE";
          goto LABEL_13;
        }

LABEL_12:
        v14 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=com.apple.HeartRateSettings"];
        v20 = WDBundle();
        v16 = [v20 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETECTION_AVAILABLE_OFF" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];

        v17 = WDBundle();
        v18 = v17;
        v19 = @"ATRIAL_FIBRILLATION_DETECTION_AVAILABLE_OFF_LINK";
LABEL_13:
        v21 = [v17 localizedStringForKey:v19 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];

        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v16, v21];
        v23 = objc_alloc(MEMORY[0x277D128A8]);
        v24 = [MEMORY[0x277D128A8] defaultReuseIdentifier];
        v25 = [v22 rangeOfString:v21];
        v9 = [v23 initWithReuseIdentifier:v24 fullText:v22 linkRange:v25 link:{v26, v14}];

LABEL_17:
        goto LABEL_18;
      }

      v27 = objc_alloc(MEMORY[0x277D128A8]);
      v14 = [MEMORY[0x277D128A8] defaultReuseIdentifier];
      v28 = WDBundle();
      v16 = v28;
      v29 = @"ATRIAL_FIBRILLATION_DETECTION_UNAVAILABLE_ON_ACTIVE_WATCH";
    }

    v30 = [v28 localizedStringForKey:v29 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Antimony"];
    v31 = objc_alloc_init(MEMORY[0x277CBEBC0]);
    v9 = [v27 initWithReuseIdentifier:v14 bodyText:v30 linkText:&stru_28641D9B8 link:v31];

    goto LABEL_17;
  }

  if (v8 == 6)
  {
    v9 = [(WDAtrialFibrillationEventOverviewViewController *)self featureStatusFooterView];
  }

  else
  {
    v9 = 0;
  }

LABEL_18:

  return v9;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x277D75348] clearColor];
    [v8 setSeparatorColor:v10];
  }

  v11 = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v9, "section")}];
  v13 = [v12 integerValue];

  if (v13 == 3)
  {
    v14 = [(WDAtrialFibrillationEventOverviewViewController *)self metaDataSection];
    [v14 willDisplayCell:v8 forIndex:objc_msgSend(v9 tableView:{"row"), v15}];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v19 = a3;
  v6 = a4;
  [v19 deselectRowAtIndexPath:v6 animated:1];
  v7 = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];
  v9 = [v8 integerValue];

  if (v9 > 3)
  {
    if (v9 != 4)
    {
      if (v9 == 5)
      {
        v15 = [(WDAtrialFibrillationEventOverviewViewController *)self userConfigurationRowsToDisplay];
        v16 = [v15 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
        v17 = [v16 integerValue];

        if (v17 == 1)
        {
          [(WDAtrialFibrillationEventOverviewViewController *)self didSelectRegulatoryRow];
        }

        else if (!v17)
        {
          v18 = [(WDAtrialFibrillationEventOverviewViewController *)self _pushDataSourcesAndAccessController];
        }
      }

      else if (v9 == 6)
      {
        [(WDAtrialFibrillationEventOverviewViewController *)self featureStatusCellTappedAtIndexPath:v6];
      }

      goto LABEL_19;
    }

    v10 = [v19 cellForRowAtIndexPath:v6];
    [v10 setFavorited:{objc_msgSend(v10, "isFavorited") ^ 1}];
    -[WDAtrialFibrillationEventOverviewViewController setPinned:](self, "setPinned:", [v10 isFavorited]);
LABEL_13:

    goto LABEL_19;
  }

  if (!v9)
  {
    v13 = [(WDAtrialFibrillationEventOverviewViewController *)self dataProvider];
    v10 = [v13 viewControllerForItemAtIndexPath:v6];

    if (v10)
    {
      [(WDAtrialFibrillationEventOverviewViewController *)self showAdaptively:v10 sender:self];
    }

    goto LABEL_13;
  }

  if (v9 != 1)
  {
    if (v9 != 3)
    {
      goto LABEL_19;
    }

    v10 = [(WDAtrialFibrillationEventOverviewViewController *)self metaDataSection];
    v11 = [v6 row];
    v12 = [(WDAtrialFibrillationEventOverviewViewController *)self navigationController];
    [v10 selectCellForIndex:v11 navigationController:v12 animated:1];

    goto LABEL_13;
  }

  v14 = [(WDAtrialFibrillationEventOverviewViewController *)self _pushShowAllViewController];
LABEL_19:
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 integerValue];

  result = *MEMORY[0x277D76F30];
  if (!v7)
  {
    return 2.22507386e-308;
  }

  return result;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = [(WDAtrialFibrillationEventOverviewViewController *)self sectionsToDisplay];
  v6 = [v5 objectAtIndexedSubscript:a4];
  v7 = [v6 integerValue];

  result = *MEMORY[0x277D76F30];
  if (v7 == 6)
  {
    return 2.22507386e-308;
  }

  return result;
}

- (id)axidForElementWithString:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a3;
  v5 = [v3 healthAccessibilityIdentifier:2 suffix:@"Overview"];
  v6 = [v5 stringByAppendingFormat:@".%@", v4];

  return v6;
}

- (void)_reloadAtrialFibrillationSetupTableHeaderView
{
  if (self->_detectionState == 5)
  {
    v19 = [(WDAtrialFibrillationEventOverviewViewController *)self _atrialFibrillationSetupContainerView];
    v3 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    [v3 setTableHeaderView:v19];

    v4 = [v19 widthAnchor];
    v5 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    v6 = [v5 widthAnchor];
    v7 = [v4 constraintEqualToAnchor:v6];
    [v7 setActive:1];

    v8 = [v19 centerXAnchor];
    v9 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    v10 = [v9 centerXAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [v19 topAnchor];
    v13 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    v14 = [v13 topAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    v17 = [v16 tableHeaderView];
    [v17 layoutIfNeeded];
  }

  else
  {
    v18 = objc_alloc(MEMORY[0x277D75D18]);
    v19 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    [v19 bounds];
    v16 = [v18 initWithFrame:{0.0, 0.0}];
    v17 = [(WDAtrialFibrillationEventOverviewViewController *)self tableView];
    [v17 setTableHeaderView:v16];
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
  v1 = a1;
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_2(&dword_251E85000, v3, v4, "[%{public}@]: Asked to configure rescinded header view, but no feature status is present", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

@end