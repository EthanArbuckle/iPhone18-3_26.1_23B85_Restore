@interface WDElectrocardiogramOverviewViewController
- (BOOL)_isElectrocardiogramRecordingAgeGated;
- (BOOL)_shouldDisplayAboutRowBeforeOnboarding;
- (BOOL)_showUpgradeTileInProminentPosition;
- (BOOL)_userLocaleOnlySupportsECG1;
- (BOOL)shouldShowRecordingRescindedHeader;
- (WDElectrocardiogramOverviewSectionInfo)sectionInfo;
- (WDElectrocardiogramOverviewUserConfigurationRowInfo)userConfigurationRowInfo;
- (WDElectrocardiogramOverviewViewController)initWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5;
- (WDProfile)profile;
- (double)adjustedSafeAreaInsetTop;
- (id)_cellForDataSourcesAndAccess;
- (id)_cellForDescription;
- (id)_cellForFavorites;
- (id)_cellForRegulatoryPane;
- (id)_cellForSampleAtIndex:(int64_t)a3 section:(int64_t)a4;
- (id)_cellWithDisclosureIndicatorAndText:(id)a3 value:(id)a4;
- (id)_dataListViewControllerForSummaryData;
- (id)_dataListViewControllerWithFilterType:(int64_t)a3;
- (id)_electrocardiogramSetupContainerViewWithUpgrade:(BOOL)a3;
- (id)_recordingRescindedHeaderView;
- (id)_sectionHeaderViewWithTitle:(id)a3 identifier:(id)a4;
- (id)_showAllResultsCellForType:(int64_t)a3;
- (id)_showAllResultsForSummarySharingProfile;
- (id)createDataProviderWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)_availabilityStateToShowInSetupTableHeaderView;
- (int64_t)_electrocardiogramRecordingRescindedStatus;
- (int64_t)availabilityState;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (int64_t)widthDesignationFromTraitCollection:(id)a3;
- (void)_recordingRescindedHeaderView;
- (void)_reloadAllSections;
- (void)_reloadElectrocardiogramSetupTableHeaderView;
- (void)_reloadMoreHealthSectionWithAnimation:(BOOL)a3;
- (void)_reloadTableViewAndScrollToTop;
- (void)_removeUpgradeTileNotProminentIfNeeded;
- (void)_showDataSourcesAndAccessController;
- (void)_showUpgradeTileNotProminent;
- (void)_startUpgrade;
- (void)beginOnboardingForOnboardingSetupView:(id)a3;
- (void)dealloc;
- (void)didCompleteOnboarding;
- (void)didTapOnElectrocardiogram:(id)a3;
- (void)electrocardiogramFilterDataProvider:(id)a3 didUpdateCount:(int64_t)a4 type:(int64_t)a5;
- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4;
- (void)showInternalSettings;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateMarginsForWidthDesignation:(int64_t)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)widthDesignationDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation WDElectrocardiogramOverviewViewController

- (WDElectrocardiogramOverviewViewController)initWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5
{
  v67 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v62.receiver = self;
  v62.super_class = WDElectrocardiogramOverviewViewController;
  v11 = [(WDElectrocardiogramOverviewViewController *)&v62 initWithStyle:1];
  v12 = v11;
  if (v11)
  {
    v60 = v9;
    v11->_firstViewDidLayoutSubviews = 1;
    objc_storeStrong(&v11->_displayType, a3);
    v13 = objc_storeWeak(&v12->_profile, v10);
    v59 = a5;
    v12->_mode = a5;
    displayType = v12->_displayType;
    v15 = v13;
    v16 = [(WDElectrocardiogramOverviewViewController *)v12 createDataProviderWithDisplayType:displayType profile:v10 mode:v12->_mode];
    dataProvider = v12->_dataProvider;
    v12->_dataProvider = v16;

    v12->_placeholderCellCount = 3;
    v18 = [[WDElectrocardiogramFilterDataProvider alloc] initWithProfile:v10 delegate:v12];
    filterDataProvider = v12->_filterDataProvider;
    v12->_filterDataProvider = v18;

    v20 = objc_alloc(MEMORY[0x277D13098]);
    v21 = [v10 healthStore];
    v22 = v12->_mode == 0;
    v23 = [(WDElectrocardiogramListDataProvider *)v12->_dataProvider activeECGAlgorithmVersion];
    v24 = [v20 initWithHealthStore:v21 forSinglePlayer:v22 activeAlgorithmVersion:v23];
    educationSection = v12->_educationSection;
    v12->_educationSection = v24;

    v26 = objc_alloc_init(MEMORY[0x277D12870]);
    moreHealthDataProvider = v12->_moreHealthDataProvider;
    v12->_moreHealthDataProvider = v26;

    v28 = HKPreferredRegulatoryDomainProvider();
    v29 = [v28 currentEstimate];
    _HKInitializeLogging();
    v30 = *MEMORY[0x277CCC2D8];
    v31 = *MEMORY[0x277CCC2D8];
    if (v29)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v30;
        v33 = objc_opt_class();
        v34 = v33;
        v35 = [v29 ISOCode];
        *buf = 138543618;
        v64 = v33;
        v65 = 2112;
        v66 = v35;
        _os_log_impl(&dword_251E85000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Region code: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [WDElectrocardiogramOverviewViewController initWithDisplayType:v30 profile:? mode:?];
    }

    v36 = objc_alloc(MEMORY[0x277CCD460]);
    v37 = *MEMORY[0x277CCC010];
    v38 = [v10 healthStore];
    v39 = [v29 ISOCode];
    v40 = [v36 initWithFeatureIdentifier:v37 healthStore:v38 currentCountryCode:v39];
    featureStatusManager = v12->_featureStatusManager;
    v12->_featureStatusManager = v40;

    v12->_displayAboutRowBeforeOnboarding = [(WDElectrocardiogramOverviewViewController *)v12 _shouldDisplayAboutRowBeforeOnboarding];
    v42 = [MEMORY[0x277CCDD30] sharedBehavior];
    LODWORD(v37) = [v42 isAppleInternalInstall];

    if (v37)
    {
      v43 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v12 action:sel_showInternalSettings];
      tripleTapToSettingsRecognizer = v12->_tripleTapToSettingsRecognizer;
      v12->_tripleTapToSettingsRecognizer = v43;
    }

    v45 = [(HKDisplayType *)v12->_displayType localization];
    v46 = [v45 displayName];
    [(WDElectrocardiogramOverviewViewController *)v12 setTitle:v46];

    v47 = v12->_featureStatusManager;
    v61 = 0;
    v48 = [(HKFeatureStatusManager *)v47 featureStatusWithError:&v61];
    v49 = v61;
    featureStatus = v12->_featureStatus;
    v12->_featureStatus = v48;

    v51 = MEMORY[0x277CCC2D8];
    if (!v12->_featureStatus)
    {
      _HKInitializeLogging();
      v52 = *v51;
      if (os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
      {
        [WDElectrocardiogramOverviewViewController initWithDisplayType:v52 profile:v12 mode:v49];
      }
    }

    [(HKFeatureStatusManager *)v12->_featureStatusManager registerObserver:v12];
    _HKInitializeLogging();
    v53 = *v51;
    if (os_log_type_enabled(*v51, OS_LOG_TYPE_DEFAULT))
    {
      v54 = v53;
      v55 = objc_opt_class();
      *buf = 138543618;
      v64 = v55;
      v65 = 1024;
      LODWORD(v66) = v59;
      v56 = v55;
      _os_log_impl(&dword_251E85000, v54, OS_LOG_TYPE_DEFAULT, "[%{public}@] Initialized with mode: %i", buf, 0x12u);
    }

    v9 = v60;
  }

  v57 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)dealloc
{
  [(HKFeatureStatusManager *)self->_featureStatusManager unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = WDElectrocardiogramOverviewViewController;
  [(WDElectrocardiogramOverviewViewController *)&v3 dealloc];
}

- (id)createDataProviderWithDisplayType:(id)a3 profile:(id)a4 mode:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[WDElectrocardiogramListDataProvider alloc] initWithDisplayType:v8 profile:v7 mode:a5];

  [(WDElectrocardiogramListDataProvider *)v9 setRecentSampleLimit:3];

  return v9;
}

- (void)viewDidLoad
{
  v36[1] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = WDElectrocardiogramOverviewViewController;
  [(HKTableViewController *)&v35 viewDidLoad];
  v3 = [(WDElectrocardiogramOverviewViewController *)self navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  v4 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v5 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [v4 customizeTableView:v5];

  v6 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  LOBYTE(v5) = [v6 cellStyle] == 2;

  if (v5)
  {
    v7 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
    [v7 customEstimatedCellHeight];
    v9 = v8;
    v10 = [(WDElectrocardiogramOverviewViewController *)self tableView];
    [v10 setEstimatedRowHeight:v9];

    v11 = [(WDElectrocardiogramOverviewViewController *)self tableView];
    v12 = *MEMORY[0x277D76F30];
    [v11 setRowHeight:*MEMORY[0x277D76F30]];
  }

  else
  {
    v12 = *MEMORY[0x277D76F30];
  }

  v13 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [v13 setEstimatedSectionHeaderHeight:100.0];

  v14 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [v14 setSectionHeaderHeight:v12];

  v15 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [v15 _setSectionContentInsetFollowsLayoutMargins:1];

  v16 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [v16 _setSectionCornerRadius:*MEMORY[0x277D12798]];

  v17 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [v17 setSelfSizingInvalidation:2];

  v18 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  v19 = objc_opt_class();
  v20 = +[WDHeartRhythmHeaderView defaultReuseIdentifier];
  [v18 registerClass:v19 forHeaderFooterViewReuseIdentifier:v20];

  v21 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  v22 = objc_opt_class();
  v23 = +[WDHeartRhythmSectionHeaderView defaultReuseIdentifier];
  [v21 registerClass:v22 forHeaderFooterViewReuseIdentifier:v23];

  [(WDElectrocardiogramOverviewViewController *)self _reloadElectrocardiogramSetupTableHeaderView];
  objc_initWeak(&location, self);
  v24 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __56__WDElectrocardiogramOverviewViewController_viewDidLoad__block_invoke;
  v32 = &unk_2796E6CF0;
  objc_copyWeak(&v33, &location);
  [v24 startCollectingDataWithUpdateHandler:&v29];

  v25 = [MEMORY[0x277D130C0] sharedManager];
  [v25 trackElectrocardiogramDataTypeViewed];
  v36[0] = objc_opt_class();
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
  v27 = [(WDElectrocardiogramOverviewViewController *)self registerForTraitChanges:v26 withTarget:self action:sel_widthDesignationDidChangeWithTraitEnvironment_previousTraitCollection_];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
  v28 = *MEMORY[0x277D85DE8];
}

void __56__WDElectrocardiogramOverviewViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setPlaceholderCellCount:0];
    v2 = [v3 tableView];
    [v2 reloadData];

    WeakRetained = v3;
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = WDElectrocardiogramOverviewViewController;
  [(WDElectrocardiogramOverviewViewController *)&v6 viewDidLayoutSubviews];
  if ([(WDElectrocardiogramOverviewViewController *)self firstViewDidLayoutSubviews])
  {
    [(WDElectrocardiogramOverviewViewController *)self setFirstViewDidLayoutSubviews:0];
    v3 = [(WDElectrocardiogramOverviewViewController *)self tableView];
    v4 = [v3 tableHeaderView];
    v5 = [(WDElectrocardiogramOverviewViewController *)self tableView];
    [v5 setTableHeaderView:v4];
  }
}

- (void)showInternalSettings
{
  v3 = [WDElectrocardiogramInternalSettingsViewController alloc];
  v4 = [(WDElectrocardiogramOverviewViewController *)self profile];
  v5 = [v4 healthStore];
  v6 = [(WDElectrocardiogramOverviewViewController *)self profile];
  v7 = [v6 dateCache];
  v8 = [(WDElectrocardiogramInternalSettingsViewController *)v3 initWithHealthStore:v5 dateCache:v7];

  [(WDElectrocardiogramOverviewViewController *)self showAdaptively:v8 sender:self];
}

- (double)adjustedSafeAreaInsetTop
{
  v2 = [(WDElectrocardiogramOverviewViewController *)self view];
  [v2 safeAreaInsets];
  v4 = v3;

  return v4;
}

- (void)_reloadTableViewAndScrollToTop
{
  v3 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [(WDElectrocardiogramOverviewViewController *)self adjustedSafeAreaInsetTop];
  [v3 setContentOffset:0 animated:{0.0, -v4}];

  v5 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [v5 reloadData];

  v6 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [v6 layoutIfNeeded];

  v7 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [(WDElectrocardiogramOverviewViewController *)self adjustedSafeAreaInsetTop];
  [v7 setContentOffset:0 animated:{0.0, -v8}];

  v9 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  v10 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [v9 reloadSections:v10 withRowAnimation:5];

  [(WDElectrocardiogramOverviewViewController *)self _reloadElectrocardiogramSetupTableHeaderView];
}

- (void)featureStatusProviding:(id)a3 didUpdateFeatureStatus:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    *buf = 138543362;
    v14 = objc_opt_class();
    v8 = v14;
    _os_log_impl(&dword_251E85000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did update feature status.", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__WDElectrocardiogramOverviewViewController_featureStatusProviding_didUpdateFeatureStatus___block_invoke;
  v11[3] = &unk_2796E6BD8;
  v11[4] = self;
  v12 = v5;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __91__WDElectrocardiogramOverviewViewController_featureStatusProviding_didUpdateFeatureStatus___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) availabilityStateCache];

  if (v2)
  {
    [*(a1 + 32) setAvailabilityStateCache:0];
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      *v10 = 138543362;
      *&v10[4] = objc_opt_class();
      v6 = *&v10[4];
      _os_log_impl(&dword_251E85000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Availabilility cache invalidated.", v10, 0xCu);
    }
  }

  v7 = [*(a1 + 32) featureStatus];
  v8 = [v7 isEqual:*(a1 + 40)];

  if ((v8 & 1) == 0)
  {
    [*(a1 + 32) setFeatureStatus:*(a1 + 40)];
    [*(a1 + 32) _reloadTableViewAndScrollToTop];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)widthDesignationDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  v5 = [a3 traitCollection];
  v6 = [(WDElectrocardiogramOverviewViewController *)self widthDesignationFromTraitCollection:v5];

  [(WDElectrocardiogramOverviewViewController *)self updateMarginsForWidthDesignation:v6];
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
  v12 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [v12 setDirectionalLayoutMargins:{v5, v7, v9, v11}];
}

- (void)_startUpgrade
{
  v3 = objc_alloc(MEMORY[0x277D130A0]);
  v4 = [(WDElectrocardiogramOverviewViewController *)self profile];
  v5 = [v4 healthStore];
  v6 = [(WDElectrocardiogramOverviewViewController *)self profile];
  v7 = [v6 dateCache];
  LOBYTE(v11) = 1;
  v8 = [v3 initWithOnboardingType:1 isFirstTimeOnboarding:0 healthStore:v5 dateCache:v7 provenance:2 delegate:self isSampleInteractive:v11];
  [(WDElectrocardiogramOverviewViewController *)self setOnboardingManager:v8];

  v9 = [(WDElectrocardiogramOverviewViewController *)self onboardingManager];
  v12 = [v9 onboardingNavigationController];

  [v12 setModalInPresentation:1];
  v10 = [(WDElectrocardiogramOverviewViewController *)self navigationController];
  [v10 presentViewController:v12 animated:1 completion:0];
}

- (WDElectrocardiogramOverviewSectionInfo)sectionInfo
{
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  v5 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v6 = [v5 numberOfSections];

  v7 = [(WDElectrocardiogramOverviewViewController *)self placeholderCellCount];
  v8 = [(WDElectrocardiogramOverviewViewController *)self moreHealthDataProvider];
  v9 = [v8 count];

  v10 = [(WDElectrocardiogramOverviewViewController *)self filterDataProvider];

  mode = self->_mode;
  if (mode)
  {
    if (v6)
    {
      v12 = 0;
    }

    else
    {
      v12 = v7 <= 0;
    }

    v13 = !v12;
    if (v12)
    {
      v14 = -1;
    }

    else
    {
      v14 = 0;
    }

    v15 = 1;
    if (v13)
    {
      v15 = 2;
    }

    v16 = mode == 1;
    if (mode == 1)
    {
      v17 = v15;
    }

    else
    {
      v17 = v13;
    }

    if (!v16)
    {
      v13 = -1;
    }

    retstr->var0 = v14;
    retstr->var1 = v13;
    v18 = v17 + 2;
    retstr->var2 = v17;
    retstr->var3 = v17 + 1;
    v19 = v17 + 3;
    v20 = v9 <= 0;
    if (v9 <= 0)
    {
      v21 = v18;
    }

    else
    {
      v21 = v19;
    }

    if (v20)
    {
      v22 = -1;
    }

    else
    {
      v22 = v18;
    }

    retstr->var4 = v22;
    retstr->var5 = -1;
    result = [(WDElectrocardiogramOverviewViewController *)self userConfigurationRowInfo];
    if (v48 <= 0)
    {
      v24 = v21;
    }

    else
    {
      v24 = v21 + 1;
    }

    if (v48 <= 0)
    {
      v25 = -1;
    }

    else
    {
      v25 = v21;
    }

    goto LABEL_89;
  }

  result = [(WDElectrocardiogramOverviewViewController *)self availabilityState];
  if (result > 1)
  {
    if (result == 2)
    {
      v39 = v6 != 0;
      if (v6)
      {
        v40 = 0;
      }

      else
      {
        v40 = -1;
      }

      v41 = 1;
      if (v6)
      {
        v41 = 2;
      }

      if (!v10)
      {
        v41 = v6 != 0;
        v39 = -1;
      }

      retstr->var0 = v40;
      retstr->var1 = v39;
      retstr->var2 = -1;
      retstr->var3 = v41;
      v42 = v9 <= 0;
      if (v9 <= 0)
      {
        v30 = v41 + 1;
      }

      else
      {
        v30 = v41 + 2;
      }

      if (v42)
      {
        v43 = -1;
      }

      else
      {
        v43 = v41 + 1;
      }

      retstr->var4 = v43;
      retstr->var5 = v30;
      result = [(WDElectrocardiogramOverviewViewController *)self userConfigurationRowInfo];
      v32 = v45;
      goto LABEL_83;
    }

    if (result != 3)
    {
      return result;
    }
  }

  else if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v26 = v6 != 0;
    if (v6)
    {
      v27 = 0;
    }

    else
    {
      v27 = -1;
    }

    v28 = 1;
    if (v6)
    {
      v28 = 2;
    }

    if (!v10)
    {
      v28 = v6 != 0;
      v26 = -1;
    }

    retstr->var0 = v27;
    retstr->var1 = v26;
    retstr->var2 = -1;
    retstr->var3 = v28;
    v29 = v9 <= 0;
    if (v9 <= 0)
    {
      v30 = v28 + 1;
    }

    else
    {
      v30 = v28 + 2;
    }

    if (v29)
    {
      v31 = -1;
    }

    else
    {
      v31 = v28 + 1;
    }

    retstr->var4 = v31;
    retstr->var5 = v30;
    result = [(WDElectrocardiogramOverviewViewController *)self userConfigurationRowInfo];
    v32 = v46;
    goto LABEL_83;
  }

  if (v6)
  {
    v33 = 0;
  }

  else
  {
    v33 = v7 <= 0;
  }

  v34 = !v33;
  if (v33)
  {
    v35 = -1;
  }

  else
  {
    v35 = 0;
  }

  v36 = 1;
  if (v34)
  {
    v36 = 2;
  }

  if (!v10)
  {
    v36 = v34;
    v34 = -1;
  }

  retstr->var0 = v35;
  retstr->var1 = v34;
  retstr->var2 = v36;
  retstr->var3 = v36 + 1;
  v37 = v9 <= 0;
  if (v9 <= 0)
  {
    v30 = v36 + 2;
  }

  else
  {
    v30 = v36 + 3;
  }

  if (v37)
  {
    v38 = -1;
  }

  else
  {
    v38 = v36 + 2;
  }

  retstr->var4 = v38;
  retstr->var5 = v30;
  result = [(WDElectrocardiogramOverviewViewController *)self userConfigurationRowInfo];
  v32 = v47;
LABEL_83:
  v44 = v32 <= 0;
  if (v32 <= 0)
  {
    v24 = v30 + 1;
  }

  else
  {
    v24 = v30 + 2;
  }

  if (v44)
  {
    v25 = -1;
  }

  else
  {
    v25 = v30 + 1;
  }

LABEL_89:
  retstr->var6 = v25;
  retstr->var7 = v24;
  return result;
}

- (WDElectrocardiogramOverviewUserConfigurationRowInfo)userConfigurationRowInfo
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  var0 = self[45].var0;
  if (var0 == 1)
  {
    v6 = -1;
  }

  else
  {
    if (var0 == 2)
    {
      return self;
    }

    v5 = self;
    self = [(WDElectrocardiogramOverviewUserConfigurationRowInfo *)self availabilityState];
    if (self > 1)
    {
      if (self == 2)
      {
        retstr->var1 = 0;
        v6 = -1;
        var0 = 1;
        goto LABEL_17;
      }

      if (self != 3)
      {
        return self;
      }
    }

    else if (self)
    {
      if (self != 1)
      {
        return self;
      }

      retstr->var1 = 0;
      var0 = 1;
      if (BYTE1(v5[43].var2))
      {
        v6 = 1;
      }

      else
      {
        v6 = -1;
      }

      if (BYTE1(v5[43].var2))
      {
        var0 = 2;
      }

      goto LABEL_17;
    }

    retstr->var1 = 0;
    var0 = 2;
    v6 = 1;
  }

LABEL_17:
  retstr->var0 = v6;
  retstr->var2 = var0;
  return self;
}

- (int64_t)availabilityState
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 hk_keyExists:@"WDCinnamonOnboardingStateOverrideKey"];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v6 = [v5 integerForKey:@"WDCinnamonOnboardingStateOverrideKey"];
LABEL_5:
    v8 = v6;
    goto LABEL_6;
  }

  v7 = [(WDElectrocardiogramOverviewViewController *)self availabilityStateCache];

  if (v7)
  {
    v5 = [(WDElectrocardiogramOverviewViewController *)self availabilityStateCache];
    v6 = [v5 integerValue];
    goto LABEL_5;
  }

  v8 = [(WDElectrocardiogramOverviewViewController *)self featureStatus];

  if (!v8)
  {
    return v8;
  }

  v10 = [(WDElectrocardiogramOverviewViewController *)self featureStatus];
  v8 = HKElectrocardiogramOverviewAvailabilityState(v10);

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
  [(WDElectrocardiogramOverviewViewController *)self setAvailabilityStateCache:v5];
LABEL_6:

  return v8;
}

- (BOOL)shouldShowRecordingRescindedHeader
{
  if ([(WDElectrocardiogramOverviewViewController *)self availabilityState]== 2)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [(WDElectrocardiogramOverviewViewController *)self _electrocardiogramRecordingRescindedStatus];
    if (v3)
    {
      LOBYTE(v3) = [(WDElectrocardiogramOverviewViewController *)self mode]== 0;
    }
  }

  return v3;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  [(WDElectrocardiogramOverviewViewController *)self sectionInfo];
  if (a4)
  {
    return 0;
  }

  v6 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v7 = [v6 numberOfObjectsForSection:0];

  if ([(WDElectrocardiogramOverviewViewController *)self mode]== 2 && v7 > 5)
  {
    return 6;
  }

  v9 = [(WDElectrocardiogramOverviewViewController *)self placeholderCellCount];
  if (v9 <= v7)
  {
    return v7;
  }

  else
  {
    return v9;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(WDElectrocardiogramOverviewViewController *)self sectionInfo];
  if (![v7 section])
  {
    if (-[WDElectrocardiogramOverviewViewController mode](self, "mode") == 2 && [v7 row] == 5)
    {
      v8 = [(WDElectrocardiogramOverviewViewController *)self _showAllResultsForSummarySharingProfile];
    }

    else
    {
      v8 = -[WDElectrocardiogramOverviewViewController _cellForSampleAtIndex:section:](self, "_cellForSampleAtIndex:section:", [v7 row], objc_msgSend(v7, "section"));
    }

    goto LABEL_9;
  }

  if (![v7 section])
  {
    if (!self->_mode)
    {
      v12 = [(WDElectrocardiogramOverviewViewController *)self availabilityState];
      if ((v12 - 1) < 2 || v12 != 3 && v12)
      {
        v10 = [WDElectrocardiogramFilterDataProvider cellTitleForType:0];
        v11 = [(WDElectrocardiogramOverviewViewController *)self _cellWithDisclosureIndicatorAndText:v10 value:0];
        goto LABEL_20;
      }
    }

    v8 = -[WDElectrocardiogramOverviewViewController _showAllResultsCellForType:](self, "_showAllResultsCellForType:", -[WDElectrocardiogramOverviewViewController _filterTypeForDataSectionRow:](self, "_filterTypeForDataSectionRow:", [v7 row]));
    goto LABEL_9;
  }

  if ([v7 section])
  {
    if ([v7 section])
    {
      if (![v7 section])
      {
        v10 = [(WDElectrocardiogramOverviewViewController *)self moreHealthDataProvider];
        v11 = [v10 cellForRow:objc_msgSend(v7 tableView:{"row"), v6}];
        goto LABEL_20;
      }

      if ([v7 section])
      {
        if (![v7 section])
        {
          [(WDElectrocardiogramOverviewViewController *)self userConfigurationRowInfo];
          if (![v7 row])
          {
            v8 = [(WDElectrocardiogramOverviewViewController *)self _cellForDataSourcesAndAccess];
            goto LABEL_9;
          }

          if (![v7 row])
          {
            v8 = [(WDElectrocardiogramOverviewViewController *)self _cellForRegulatoryPane];
            goto LABEL_9;
          }
        }

        v8 = objc_alloc_init(MEMORY[0x277D75B48]);
        goto LABEL_9;
      }

      v8 = [(WDElectrocardiogramOverviewViewController *)self _cellForFavorites];
    }

    else
    {
      v8 = [(WDElectrocardiogramOverviewViewController *)self _cellForDescription];
    }

LABEL_9:
    v9 = v8;
    goto LABEL_21;
  }

  v10 = [(WDElectrocardiogramOverviewViewController *)self educationSection];
  v11 = [v10 cellForIndex:objc_msgSend(v7 tableView:{"row"), v6}];
LABEL_20:
  v9 = v11;

LABEL_21:

  return v9;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  [(WDElectrocardiogramOverviewViewController *)self sectionInfo:a3];
  if (a4)
  {
    v12 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCDD30] sharedBehavior];
    v6 = [v5 features];
    v7 = [v6 isPinnedInBrowse];

    v8 = WDBundle();
    v9 = v8;
    if (v7)
    {
      v10 = @"PINNED_SECTION_BROWSE_FOOTER";
    }

    else
    {
      v10 = @"PINNED_SECTION_SUMMARY_FOOTER";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v12 = HKConditionallyRedactedHeartRhythmString();
  }

  return v12;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (!a4 && [(WDElectrocardiogramOverviewViewController *)self shouldShowRecordingRescindedHeader])
  {
    v7 = [(WDElectrocardiogramOverviewViewController *)self _recordingRescindedHeaderView];
    goto LABEL_12;
  }

  [(WDElectrocardiogramOverviewViewController *)self sectionInfo];
  if (v14 == a4)
  {
    if ([(WDElectrocardiogramOverviewViewController *)self mode]== 2)
    {
      v8 = @"RecentResults";
      v9 = @"RECENT_RESULTS_TITLE";
LABEL_10:
      v10 = WDBundle();
      v11 = [v10 localizedStringForKey:v9 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
      v12 = HKConditionallyRedactedHeartRhythmString();
      v7 = [(WDElectrocardiogramOverviewViewController *)self _sectionHeaderViewWithTitle:v12 identifier:v8];

      goto LABEL_12;
    }
  }

  else if (!a4)
  {
    v8 = @"ECGResultsSection";
    v9 = @"MORE_SECTION_TITLE";
    goto LABEL_10;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (id)_sectionHeaderViewWithTitle:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  v9 = +[WDHeartRhythmSectionHeaderView defaultReuseIdentifier];
  v10 = [v8 dequeueReusableHeaderFooterViewWithIdentifier:v9];

  [v10 setTitleText:v7];
  v11 = [@"Overview" stringByAppendingFormat:@".SectionHeader.%@", v6];

  v12 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:v11];
  [v10 setAccessibilityIdentifier:v12];

  return v10;
}

- (id)_recordingRescindedHeaderView
{
  v3 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  v4 = +[WDHeartRhythmHeaderView defaultReuseIdentifier];
  v5 = [v3 dequeueReusableHeaderFooterViewWithIdentifier:v4];

  v6 = [(WDElectrocardiogramOverviewViewController *)self _electrocardiogramRecordingRescindedStatus];
  if (v6 == 2)
  {
    v14 = WDBundle();
    v15 = [v14 localizedStringForKey:@"ELECTROCARDIOGRAM_RECORDING_SEED_EXPIRED_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v16 = HKConditionallyRedactedHeartRhythmString();
    [v5 setTitleText:v16];

    v10 = WDBundle();
    v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_RECORDING_SEED_EXPIRED_LEARN_MORE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v17 = HKConditionallyRedactedHeartRhythmString();
    v18 = MEMORY[0x277CBEBC0];
    v19 = WDBundle();
    v20 = [v19 localizedStringForKey:@"ELECTROCARDIOGRAM_RECORDING_SEED_EXPIRED_URL" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v21 = HKConditionallyRedactedHeartRhythmString();
    v22 = [v18 URLWithString:v21];
    [v5 setBodyText:0 URLText:v17 URL:v22];

    goto LABEL_5;
  }

  if (v6 == 1)
  {
    v7 = WDBundle();
    v8 = [v7 localizedStringForKey:@"ELECTROCARDIOGRAM_RECORDING_DISABLED_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v9 = HKConditionallyRedactedHeartRhythmString();
    [v5 setTitleText:v9];

    v10 = WDBundle();
    v11 = [v10 localizedStringForKey:@"ELECTROCARDIOGRAM_RECORDING_DISABLED_LEARN_MORE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
    v12 = HKConditionallyRedactedHeartRhythmString();
    v13 = [MEMORY[0x277CBEBC0] URLWithString:*MEMORY[0x277CCBD08]];
    [v5 setBodyText:0 URLText:v12 URL:v13];

LABEL_5:
    goto LABEL_8;
  }

  _HKInitializeLogging();
  v23 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
  {
    [(WDElectrocardiogramOverviewViewController *)v23 _recordingRescindedHeaderView];
  }

LABEL_8:

  return v5;
}

- (int64_t)_electrocardiogramRecordingRescindedStatus
{
  v3 = [(WDElectrocardiogramOverviewViewController *)self featureStatus];

  if (v3)
  {
    v4 = [(WDElectrocardiogramOverviewViewController *)self featureStatus];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v6 = [v5 unsatisfiedRequirementIdentifiers];

    if ([v6 containsObject:*MEMORY[0x277CCBFD0]])
    {
      v3 = 2;
    }

    else
    {
      v3 = [v6 containsObject:*MEMORY[0x277CCBF30]];
    }
  }

  return v3;
}

- (BOOL)_isElectrocardiogramRecordingAgeGated
{
  v3 = [(WDElectrocardiogramOverviewViewController *)self featureStatus];

  if (!v3)
  {
    return 0;
  }

  v4 = [(WDElectrocardiogramOverviewViewController *)self featureStatus];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  v6 = [v5 unsatisfiedRequirementIdentifiers];

  LOBYTE(v4) = [v6 containsObject:*MEMORY[0x277CCBF70]];
  return v4;
}

- (int64_t)_availabilityStateToShowInSetupTableHeaderView
{
  if (self->_mode)
  {
    return 0;
  }

  v4 = [(WDElectrocardiogramOverviewViewController *)self availabilityState];
  v5 = [(WDElectrocardiogramOverviewViewController *)self _electrocardiogramRecordingRescindedStatus];
  v6 = [(WDElectrocardiogramOverviewViewController *)self _isElectrocardiogramRecordingAgeGated];
  if (v4 == 3)
  {
    if (v5 != 0 || v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v7 = 1;
    if (v5 != 0 || v6)
    {
      v7 = 2;
    }

    if (v4 != 1)
    {
      v7 = 0;
    }

    if (v4 == 2)
    {
      return 2;
    }

    else
    {
      return v7;
    }
  }
}

- (void)_reloadElectrocardiogramSetupTableHeaderView
{
  v3 = [(WDElectrocardiogramOverviewViewController *)self _availabilityStateToShowInSetupTableHeaderView];
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 != 1)
      {
        return;
      }

      [(WDElectrocardiogramOverviewViewController *)self _removeUpgradeTileNotProminentIfNeeded];
      v4 = self;
      v5 = 0;
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (v3 != 3)
  {
    if (v3 != 2)
    {
      return;
    }

LABEL_7:
    [(WDElectrocardiogramOverviewViewController *)self _removeUpgradeTileNotProminentIfNeeded];
    v6 = objc_alloc(MEMORY[0x277D75D18]);
    v12 = [(WDElectrocardiogramOverviewViewController *)self tableView];
    [v12 bounds];
    v7 = [v6 initWithFrame:{0.0, 0.0}];
    v8 = [(WDElectrocardiogramOverviewViewController *)self tableView];
    [v8 setTableHeaderView:v7];

    goto LABEL_8;
  }

  if ([(WDElectrocardiogramOverviewViewController *)self _showUpgradeTileInProminentPosition])
  {
    v4 = self;
    v5 = 1;
LABEL_14:

    [(WDElectrocardiogramOverviewViewController *)v4 _setTableHeaderViewWithUpgradeView:v5];
    return;
  }

  [(WDElectrocardiogramOverviewViewController *)self _showUpgradeTileNotProminent];
  v9 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [v9 bounds];
  Width = CGRectGetWidth(v14);

  v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, Width, 2.22507386e-308}];
  v11 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [v11 setTableHeaderView:v12];

LABEL_8:
}

- (void)_showUpgradeTileNotProminent
{
  v5 = [(WDElectrocardiogramOverviewViewController *)self _electrocardiogramSetupContainerViewWithUpgrade:1];
  v3 = [objc_alloc(MEMORY[0x277D12878]) initWithView:v5 identifier:@"UpgradeTileNotProminentIdentifier"];
  v4 = [(WDElectrocardiogramOverviewViewController *)self moreHealthDataProvider];
  [v4 addItem:v3];
}

- (void)_removeUpgradeTileNotProminentIfNeeded
{
  v3 = [(WDElectrocardiogramOverviewViewController *)self moreHealthDataProvider];
  [v3 removeItemWithIdentifier:@"UpgradeTileNotProminentIdentifier"];

  [(WDElectrocardiogramOverviewViewController *)self _reloadMoreHealthSectionWithAnimation:0];
}

- (void)_reloadMoreHealthSectionWithAnimation:(BOOL)a3
{
  v3 = a3;
  [(WDElectrocardiogramOverviewViewController *)self sectionInfo:0];
  v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:?];
  if (v3)
  {
    v6 = 100;
  }

  else
  {
    v6 = 5;
  }

  v7 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [v7 reloadSections:v5 withRowAnimation:v6];
}

- (BOOL)_showUpgradeTileInProminentPosition
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(WDElectrocardiogramOverviewViewController *)self _userLocaleOnlySupportsECG1])
  {
    _HKInitializeLogging();
    v3 = *MEMORY[0x277CCC2D8];
    v4 = os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v4)
    {
      v9 = 138543362;
      v10 = self;
      _os_log_impl(&dword_251E85000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: ECG1 only country. Demote upgrade ad.", &v9, 0xCu);
      result = 0;
    }
  }

  else
  {
    v6 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    v7 = [v6 BOOLForKey:@"PromimentUpgradeTileDismissed"];

    result = v7 ^ 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_userLocaleOnlySupportsECG1
{
  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v3 = MEMORY[0x277CCD530];
  v4 = [v2 countryCode];
  LOBYTE(v3) = [v3 isECG1SupportedOnlyForCountryCode:v4];

  return v3;
}

- (void)_reloadAllSections
{
  v3 = [WDElectrocardiogramFilterDataProvider alloc];
  v4 = [(WDElectrocardiogramOverviewViewController *)self profile];
  v5 = [(WDElectrocardiogramFilterDataProvider *)v3 initWithProfile:v4 delegate:self];
  [(WDElectrocardiogramOverviewViewController *)self setFilterDataProvider:v5];

  v6 = objc_alloc(MEMORY[0x277D13098]);
  v7 = [(WDElectrocardiogramOverviewViewController *)self profile];
  v8 = [v7 healthStore];
  v9 = self->_mode == 0;
  v10 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v11 = [v10 activeECGAlgorithmVersion];
  v12 = [v6 initWithHealthStore:v8 forSinglePlayer:v9 activeAlgorithmVersion:v11];
  [(WDElectrocardiogramOverviewViewController *)self setEducationSection:v12];

  v13 = [(WDElectrocardiogramOverviewViewController *)self filterDataProvider];
  [v13 start];

  v14 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [v14 reloadData];
}

- (id)_electrocardiogramSetupContainerViewWithUpgrade:(BOOL)a3
{
  v3 = a3;
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = off_2796E6010;
  if (!v3)
  {
    v11 = off_2796E6008;
  }

  v12 = [objc_alloc(*v11) initWithFrame:{v6, v7, v8, v9}];
  [v12 setDelegate:self];
  [v10 addSubview:v12];
  [v12 hk_alignConstraintsWithView:v10];

  return v10;
}

- (id)_cellForSampleAtIndex:(int64_t)a3 section:(int64_t)a4
{
  v7 = [MEMORY[0x277CCAA70] indexPathForRow:? inSection:?];
  v8 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v9 = [v8 numberOfObjectsForSection:a4];

  v10 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v11 = v10;
  if (v9 <= a3)
  {
    v13 = [(WDElectrocardiogramOverviewViewController *)self tableView];
    v15 = [v11 placeholderCellAtIndexPath:v7 tableView:v13];
  }

  else
  {
    v12 = [v10 objectAtIndex:a3 forSection:a4];

    v13 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
    v14 = [(WDElectrocardiogramOverviewViewController *)self tableView];
    v15 = [v13 customCellForObject:v12 indexPath:v7 tableView:v14];

    v11 = v12;
  }

  return v15;
}

- (id)_showAllResultsCellForType:(int64_t)a3
{
  v5 = [WDElectrocardiogramFilterDataProvider cellTitleForType:?];
  [(WDElectrocardiogramOverviewViewController *)self sectionInfo];
  if (v10 == -1)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(WDElectrocardiogramOverviewViewController *)self filterDataProvider];
    v7 = [v6 displayStringCountForType:a3];
  }

  v8 = [(WDElectrocardiogramOverviewViewController *)self _cellWithDisclosureIndicatorAndText:v5 value:v7];

  return v8;
}

- (id)_showAllResultsForSummarySharingProfile
{
  v3 = [WDElectrocardiogramFilterDataProvider cellTitleForType:0];
  v4 = HKIntegerFormatter();
  v5 = MEMORY[0x277CCABB0];
  v6 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v7 = [v6 samples];
  v8 = [v5 numberWithInteger:{objc_msgSend(v7, "count")}];
  v9 = [v4 stringFromNumber:v8];

  v10 = [(WDElectrocardiogramOverviewViewController *)self _cellWithDisclosureIndicatorAndText:v3 value:v9];

  return v10;
}

- (id)_cellForFavorites
{
  v3 = objc_alloc(MEMORY[0x277D12898]);
  v4 = [MEMORY[0x277D12898] reuseIdentifier];
  v5 = [v3 initWithStyle:0 reuseIdentifier:v4];

  [v5 setFavorited:{-[WDElectrocardiogramOverviewViewController isPinned](self, "isPinned")}];

  return v5;
}

- (id)_cellForDataSourcesAndAccess
{
  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v4 = [v3 localizedStringForKey:@"SHARE_DATA_TITLE" value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v5 = [(WDElectrocardiogramOverviewViewController *)self _cellWithDisclosureIndicatorAndText:v4 value:0];

  return v5;
}

- (id)_cellForRegulatoryPane
{
  v3 = WDBundle();
  v4 = [v3 localizedStringForKey:@"REGULATORY_PANE_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
  v5 = HKConditionallyRedactedHeartRhythmString();
  v6 = [(WDElectrocardiogramOverviewViewController *)self _cellWithDisclosureIndicatorAndText:v5 value:0];

  return v6;
}

- (id)_cellForDescription
{
  v3 = [WDDisplayTypeDescriptionTableViewCell alloc];
  v4 = [(WDElectrocardiogramOverviewViewController *)self displayType];
  v5 = +[WDDisplayTypeDescriptionTableViewCell defaultReuseIdentifier];
  v6 = [(WDDisplayTypeDescriptionTableViewCell *)v3 initWithDisplayType:v4 showAttributionText:0 reuseIdentifier:v5];

  [(WDDisplayTypeDescriptionTableViewCell *)v6 setSelectionStyle:0];
  v7 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:@"AboutEcgDescription"];
  [(WDDisplayTypeDescriptionTableViewCell *)v6 setAccessibilityIdentifier:v7];

  return v6;
}

- (id)_cellWithDisclosureIndicatorAndText:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  v9 = [v8 dequeueReusableCellWithIdentifier:@"_Value1CellIdentifier"];

  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"_Value1CellIdentifier"];
  }

  v10 = [v9 textLabel];
  [v10 setText:v7];

  v11 = [v9 textLabel];
  [v11 setNumberOfLines:0];

  v12 = [v9 detailTextLabel];
  [v12 setText:v6];

  [v9 setAccessoryType:1];
  v13 = [@"Overview" stringByAppendingFormat:@".Cell.%@", v7];

  v14 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:v13];
  [v9 setAccessibilityIdentifier:v14];

  return v9;
}

- (void)electrocardiogramFilterDataProvider:(id)a3 didUpdateCount:(int64_t)a4 type:(int64_t)a5
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __101__WDElectrocardiogramOverviewViewController_electrocardiogramFilterDataProvider_didUpdateCount_type___block_invoke;
  v5[3] = &unk_2796E6D40;
  v5[4] = self;
  v5[5] = a5;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __101__WDElectrocardiogramOverviewViewController_electrocardiogramFilterDataProvider_didUpdateCount_type___block_invoke(uint64_t a1)
{
  v9 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 sectionInfo];
  }

  v3 = [MEMORY[0x277CCAA70] indexPathForRow:*(a1 + 40) inSection:{0, v9}];
  v4 = [*(a1 + 32) tableView];
  v5 = [v4 cellForRowAtIndexPath:v3];

  if (v5)
  {
    v6 = [*(a1 + 32) filterDataProvider];
    v7 = [v6 displayStringCountForType:*(a1 + 40)];
    v8 = [v5 detailTextLabel];
    [v8 setText:v7];
  }
}

- (void)beginOnboardingForOnboardingSetupView:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "[WDElectrocardiogramOverviewViewController beginOnboardingForOnboardingSetupView:]";
    _os_log_impl(&dword_251E85000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}s]: Install of ECG app will be triggered after a location check in onboarding", &v8, 0xCu);
  }

  v5 = [(WDElectrocardiogramOverviewViewController *)self availabilityState];
  if (v5 == 3)
  {
    v6 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    [v6 setBool:1 forKey:@"PromimentUpgradeTileDismissed"];

    [(WDElectrocardiogramOverviewViewController *)self _startUpgrade];
  }

  else if (v5 == 1)
  {
    [(WDElectrocardiogramOverviewViewController *)self _startOnboardingForFirstTime:1];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didTapOnElectrocardiogram:(id)a3
{
  v4 = a3;
  [(WDElectrocardiogramOverviewViewController *)self _reloadAllSections];
  v5 = [(WDElectrocardiogramOverviewViewController *)self onboardingManager];
  [v5 dismissOnboarding];

  v6 = [WDElectrocardiogramDataMetadataViewController alloc];
  v7 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v8 = [(WDElectrocardiogramDataMetadataViewController *)v6 initWithSample:v4 delegate:v7 mode:0 activeAlgorithmVersion:0];

  [(WDElectrocardiogramOverviewViewController *)self showAdaptively:v8 sender:self];
}

- (void)didCompleteOnboarding
{
  [(WDElectrocardiogramOverviewViewController *)self _reloadAllSections];

  [(WDElectrocardiogramOverviewViewController *)self setOnboardingManager:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  [(WDElectrocardiogramOverviewViewController *)self sectionInfo];
  if ([v7 section])
  {
    if (![v7 section])
    {
      v8 = -[WDElectrocardiogramOverviewViewController _dataListViewControllerWithFilterType:](self, "_dataListViewControllerWithFilterType:", -[WDElectrocardiogramOverviewViewController _filterTypeForDataSectionRow:](self, "_filterTypeForDataSectionRow:", [v7 row]));
      goto LABEL_7;
    }

    if (![v7 section])
    {
      v9 = [(WDElectrocardiogramOverviewViewController *)self educationSection];
      v16 = [v7 row];
      v17 = [(WDElectrocardiogramOverviewViewController *)self navigationController];
      [v9 selectCellForIndex:v16 navigationController:v17 animated:1];

      goto LABEL_12;
    }

    if (![v7 section])
    {
      goto LABEL_13;
    }

    if (![v7 section])
    {
      v9 = [v6 cellForRowAtIndexPath:v7];
      [v9 setFavorited:{objc_msgSend(v9, "isFavorited") ^ 1}];
      -[WDElectrocardiogramOverviewViewController setPinned:](self, "setPinned:", [v9 isFavorited]);
      goto LABEL_12;
    }

    if (![v7 section])
    {
      [(WDElectrocardiogramOverviewViewController *)self userConfigurationRowInfo];
      if ([v7 row])
      {
        if (![v7 row])
        {
          v18 = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
          v19 = [v18 hk_hfeModeEnabled];

          if ((v19 & 1) == 0)
          {
            [(WDElectrocardiogramOverviewViewController *)self didSelectRegulatoryRow];
          }
        }
      }

      else
      {
        [(WDElectrocardiogramOverviewViewController *)self _showDataSourcesAndAccessController];
      }
    }
  }

  else
  {
    if (-[WDElectrocardiogramOverviewViewController mode](self, "mode") == 2 && [v7 row] == 5)
    {
      v8 = [(WDElectrocardiogramOverviewViewController *)self _dataListViewControllerForSummaryData];
LABEL_7:
      v9 = v8;
      [(WDElectrocardiogramOverviewViewController *)self showAdaptively:v8 sender:self];
LABEL_12:

      goto LABEL_13;
    }

    v10 = [v7 row];
    v11 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
    v12 = [v11 numberOfObjectsForSection:{objc_msgSend(v7, "section")}];

    if (v10 < v12)
    {
      v13 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
      v14 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(v7 inSection:{"row"), objc_msgSend(v7, "section")}];
      v15 = [v13 viewControllerForItemAtIndexPath:v14];

      [(WDElectrocardiogramOverviewViewController *)self showAdaptively:v15 sender:self];
    }
  }

LABEL_13:
}

- (id)_dataListViewControllerWithFilterType:(int64_t)a3
{
  v5 = [WDElectrocardiogramListDataProvider alloc];
  v6 = [(WDElectrocardiogramOverviewViewController *)self displayType];
  v7 = [(WDElectrocardiogramOverviewViewController *)self profile];
  v8 = [(WDElectrocardiogramListDataProvider *)v5 initWithDisplayType:v6 profile:v7 mode:[(WDElectrocardiogramOverviewViewController *)self mode]];

  v9 = [WDElectrocardiogramDataListViewController alloc];
  v10 = [(WDElectrocardiogramOverviewViewController *)self displayType];
  v11 = [(WDElectrocardiogramOverviewViewController *)self profile];
  v12 = [(WDElectrocardiogramDataListViewController *)v9 initWithDisplayType:v10 profile:v11 dataProvider:v8 usingInsetStyling:1 mode:[(WDElectrocardiogramOverviewViewController *)self mode]];

  v13 = [(WDElectrocardiogramOverviewViewController *)self filterDataProvider];
  v14 = [v13 electrocardiogramPredicateForType:a3];
  v15 = [(WDDataListViewController *)v12 dataProvider];
  [v15 setDefaultQueryPredicate:v14];

  v16 = [WDElectrocardiogramFilterDataProvider viewControllerTitleForType:a3];
  [(WDElectrocardiogramDataListViewController *)v12 setTitle:v16];

  v17 = [(WDElectrocardiogramDataListViewController *)v12 tableView];
  [v17 _setSectionContentInsetFollowsLayoutMargins:1];

  return v12;
}

- (id)_dataListViewControllerForSummaryData
{
  v3 = [WDElectrocardiogramDataListViewController alloc];
  v4 = [(WDElectrocardiogramOverviewViewController *)self displayType];
  v5 = [(WDElectrocardiogramOverviewViewController *)self profile];
  v6 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v7 = [(WDElectrocardiogramDataListViewController *)v3 initWithDisplayType:v4 profile:v5 dataProvider:v6 usingInsetStyling:1 mode:[(WDElectrocardiogramOverviewViewController *)self mode]];

  v8 = [WDElectrocardiogramFilterDataProvider viewControllerTitleForType:0];
  [(WDElectrocardiogramDataListViewController *)v7 setTitle:v8];

  v9 = [(WDElectrocardiogramDataListViewController *)v7 tableView];
  [v9 _setSectionContentInsetFollowsLayoutMargins:1];

  return v7;
}

- (void)_showDataSourcesAndAccessController
{
  v9 = [MEMORY[0x277D12828] categoryWithID:{-[HKDisplayType categoryIdentifier](self->_displayType, "categoryIdentifier")}];
  v3 = [WDDisplayTypeDataSourcesTableViewController alloc];
  displayType = self->_displayType;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained sourceOrderController];
  v7 = objc_loadWeakRetained(&self->_profile);
  v8 = [(WDDisplayTypeDataSourcesTableViewController *)v3 initWithDisplayType:displayType displayCategory:v9 sourceOrderController:v6 profile:v7];

  [(WDDisplayTypeDataSourcesTableViewController *)v8 setShouldInsetSectionContentForDataSourceDataList:1];
  [(WDElectrocardiogramOverviewViewController *)self showAdaptively:v8 sender:self];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MEMORY[0x277D75348] clearColor];
    [v9 setSeparatorColor:v11];
  }

  [(WDElectrocardiogramOverviewViewController *)self sectionInfo:0];
  if (![v10 section])
  {
    v12 = [(WDElectrocardiogramOverviewViewController *)self educationSection];
    [v12 willDisplayCell:v9 forIndex:objc_msgSend(v10 tableView:{"row"), v8}];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    goto LABEL_3;
  }

  v4 = [(WDElectrocardiogramOverviewViewController *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = [v8 preferredContentSizeCategory];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
LABEL_3:
    [(WDElectrocardiogramOverviewViewController *)self _reloadElectrocardiogramSetupTableHeaderView];
  }
}

- (BOOL)_shouldDisplayAboutRowBeforeOnboarding
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = *MEMORY[0x277CCBBB8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v3 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 countryCode];
    v6 = [v2 containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (WDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)initWithDisplayType:(void *)a1 profile:mode:.cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v4 = 138543362;
  v5 = objc_opt_class();
  v2 = v5;
  _os_log_error_impl(&dword_251E85000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get country code", &v4, 0xCu);

  v3 = *MEMORY[0x277D85DE8];
}

- (void)initWithDisplayType:(void *)a1 profile:(uint64_t)a2 mode:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v7 = 138543618;
  v8 = objc_opt_class();
  v9 = 2112;
  v10 = a3;
  v5 = v8;
  _os_log_error_impl(&dword_251E85000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to get feature status with error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_recordingRescindedHeaderView
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = NSStringFromHKFeatureAvailabilityRescindedStatus();
  v4 = 136446466;
  v5 = "[WDElectrocardiogramOverviewViewController _recordingRescindedHeaderView]";
  v6 = 2114;
  v7 = v2;
  _os_log_error_impl(&dword_251E85000, v1, OS_LOG_TYPE_ERROR, "[%{public}s]: Could not configure rescinded header view for state %{public}@", &v4, 0x16u);

  v3 = *MEMORY[0x277D85DE8];
}

@end