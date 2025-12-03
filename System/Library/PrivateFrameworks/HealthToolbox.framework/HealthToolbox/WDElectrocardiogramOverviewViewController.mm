@interface WDElectrocardiogramOverviewViewController
- (BOOL)_isElectrocardiogramRecordingAgeGated;
- (BOOL)_shouldDisplayAboutRowBeforeOnboarding;
- (BOOL)_showUpgradeTileInProminentPosition;
- (BOOL)_userLocaleOnlySupportsECG1;
- (BOOL)shouldShowRecordingRescindedHeader;
- (WDElectrocardiogramOverviewSectionInfo)sectionInfo;
- (WDElectrocardiogramOverviewUserConfigurationRowInfo)userConfigurationRowInfo;
- (WDElectrocardiogramOverviewViewController)initWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode;
- (WDProfile)profile;
- (double)adjustedSafeAreaInsetTop;
- (id)_cellForDataSourcesAndAccess;
- (id)_cellForDescription;
- (id)_cellForFavorites;
- (id)_cellForRegulatoryPane;
- (id)_cellForSampleAtIndex:(int64_t)index section:(int64_t)section;
- (id)_cellWithDisclosureIndicatorAndText:(id)text value:(id)value;
- (id)_dataListViewControllerForSummaryData;
- (id)_dataListViewControllerWithFilterType:(int64_t)type;
- (id)_electrocardiogramSetupContainerViewWithUpgrade:(BOOL)upgrade;
- (id)_recordingRescindedHeaderView;
- (id)_sectionHeaderViewWithTitle:(id)title identifier:(id)identifier;
- (id)_showAllResultsCellForType:(int64_t)type;
- (id)_showAllResultsForSummarySharingProfile;
- (id)createDataProviderWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)_availabilityStateToShowInSetupTableHeaderView;
- (int64_t)_electrocardiogramRecordingRescindedStatus;
- (int64_t)availabilityState;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (int64_t)widthDesignationFromTraitCollection:(id)collection;
- (void)_recordingRescindedHeaderView;
- (void)_reloadAllSections;
- (void)_reloadElectrocardiogramSetupTableHeaderView;
- (void)_reloadMoreHealthSectionWithAnimation:(BOOL)animation;
- (void)_reloadTableViewAndScrollToTop;
- (void)_removeUpgradeTileNotProminentIfNeeded;
- (void)_showDataSourcesAndAccessController;
- (void)_showUpgradeTileNotProminent;
- (void)_startUpgrade;
- (void)beginOnboardingForOnboardingSetupView:(id)view;
- (void)dealloc;
- (void)didCompleteOnboarding;
- (void)didTapOnElectrocardiogram:(id)electrocardiogram;
- (void)electrocardiogramFilterDataProvider:(id)provider didUpdateCount:(int64_t)count type:(int64_t)type;
- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status;
- (void)showInternalSettings;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)updateMarginsForWidthDesignation:(int64_t)designation;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)widthDesignationDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection;
@end

@implementation WDElectrocardiogramOverviewViewController

- (WDElectrocardiogramOverviewViewController)initWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode
{
  v67 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  profileCopy = profile;
  v62.receiver = self;
  v62.super_class = WDElectrocardiogramOverviewViewController;
  v11 = [(WDElectrocardiogramOverviewViewController *)&v62 initWithStyle:1];
  v12 = v11;
  if (v11)
  {
    v60 = typeCopy;
    v11->_firstViewDidLayoutSubviews = 1;
    objc_storeStrong(&v11->_displayType, type);
    v13 = objc_storeWeak(&v12->_profile, profileCopy);
    modeCopy = mode;
    v12->_mode = mode;
    displayType = v12->_displayType;
    v15 = v13;
    v16 = [(WDElectrocardiogramOverviewViewController *)v12 createDataProviderWithDisplayType:displayType profile:profileCopy mode:v12->_mode];
    dataProvider = v12->_dataProvider;
    v12->_dataProvider = v16;

    v12->_placeholderCellCount = 3;
    v18 = [[WDElectrocardiogramFilterDataProvider alloc] initWithProfile:profileCopy delegate:v12];
    filterDataProvider = v12->_filterDataProvider;
    v12->_filterDataProvider = v18;

    v20 = objc_alloc(MEMORY[0x277D13098]);
    healthStore = [profileCopy healthStore];
    v22 = v12->_mode == 0;
    activeECGAlgorithmVersion = [(WDElectrocardiogramListDataProvider *)v12->_dataProvider activeECGAlgorithmVersion];
    v24 = [v20 initWithHealthStore:healthStore forSinglePlayer:v22 activeAlgorithmVersion:activeECGAlgorithmVersion];
    educationSection = v12->_educationSection;
    v12->_educationSection = v24;

    v26 = objc_alloc_init(MEMORY[0x277D12870]);
    moreHealthDataProvider = v12->_moreHealthDataProvider;
    v12->_moreHealthDataProvider = v26;

    v28 = HKPreferredRegulatoryDomainProvider();
    currentEstimate = [v28 currentEstimate];
    _HKInitializeLogging();
    v30 = *MEMORY[0x277CCC2D8];
    v31 = *MEMORY[0x277CCC2D8];
    if (currentEstimate)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v30;
        v33 = objc_opt_class();
        v34 = v33;
        iSOCode = [currentEstimate ISOCode];
        *buf = 138543618;
        v64 = v33;
        v65 = 2112;
        v66 = iSOCode;
        _os_log_impl(&dword_251E85000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Region code: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [WDElectrocardiogramOverviewViewController initWithDisplayType:v30 profile:? mode:?];
    }

    v36 = objc_alloc(MEMORY[0x277CCD460]);
    v37 = *MEMORY[0x277CCC010];
    healthStore2 = [profileCopy healthStore];
    iSOCode2 = [currentEstimate ISOCode];
    v40 = [v36 initWithFeatureIdentifier:v37 healthStore:healthStore2 currentCountryCode:iSOCode2];
    featureStatusManager = v12->_featureStatusManager;
    v12->_featureStatusManager = v40;

    v12->_displayAboutRowBeforeOnboarding = [(WDElectrocardiogramOverviewViewController *)v12 _shouldDisplayAboutRowBeforeOnboarding];
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    LODWORD(v37) = [mEMORY[0x277CCDD30] isAppleInternalInstall];

    if (v37)
    {
      v43 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v12 action:sel_showInternalSettings];
      tripleTapToSettingsRecognizer = v12->_tripleTapToSettingsRecognizer;
      v12->_tripleTapToSettingsRecognizer = v43;
    }

    localization = [(HKDisplayType *)v12->_displayType localization];
    displayName = [localization displayName];
    [(WDElectrocardiogramOverviewViewController *)v12 setTitle:displayName];

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
      LODWORD(v66) = modeCopy;
      v56 = v55;
      _os_log_impl(&dword_251E85000, v54, OS_LOG_TYPE_DEFAULT, "[%{public}@] Initialized with mode: %i", buf, 0x12u);
    }

    typeCopy = v60;
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

- (id)createDataProviderWithDisplayType:(id)type profile:(id)profile mode:(int64_t)mode
{
  profileCopy = profile;
  typeCopy = type;
  v9 = [[WDElectrocardiogramListDataProvider alloc] initWithDisplayType:typeCopy profile:profileCopy mode:mode];

  [(WDElectrocardiogramListDataProvider *)v9 setRecentSampleLimit:3];

  return v9;
}

- (void)viewDidLoad
{
  v36[1] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = WDElectrocardiogramOverviewViewController;
  [(HKTableViewController *)&v35 viewDidLoad];
  navigationItem = [(WDElectrocardiogramOverviewViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  dataProvider = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  tableView = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [dataProvider customizeTableView:tableView];

  dataProvider2 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  LOBYTE(tableView) = [dataProvider2 cellStyle] == 2;

  if (tableView)
  {
    dataProvider3 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
    [dataProvider3 customEstimatedCellHeight];
    v9 = v8;
    tableView2 = [(WDElectrocardiogramOverviewViewController *)self tableView];
    [tableView2 setEstimatedRowHeight:v9];

    tableView3 = [(WDElectrocardiogramOverviewViewController *)self tableView];
    v12 = *MEMORY[0x277D76F30];
    [tableView3 setRowHeight:*MEMORY[0x277D76F30]];
  }

  else
  {
    v12 = *MEMORY[0x277D76F30];
  }

  tableView4 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [tableView4 setEstimatedSectionHeaderHeight:100.0];

  tableView5 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [tableView5 setSectionHeaderHeight:v12];

  tableView6 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [tableView6 _setSectionContentInsetFollowsLayoutMargins:1];

  tableView7 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [tableView7 _setSectionCornerRadius:*MEMORY[0x277D12798]];

  tableView8 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [tableView8 setSelfSizingInvalidation:2];

  tableView9 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  v19 = objc_opt_class();
  v20 = +[WDHeartRhythmHeaderView defaultReuseIdentifier];
  [tableView9 registerClass:v19 forHeaderFooterViewReuseIdentifier:v20];

  tableView10 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  v22 = objc_opt_class();
  v23 = +[WDHeartRhythmSectionHeaderView defaultReuseIdentifier];
  [tableView10 registerClass:v22 forHeaderFooterViewReuseIdentifier:v23];

  [(WDElectrocardiogramOverviewViewController *)self _reloadElectrocardiogramSetupTableHeaderView];
  objc_initWeak(&location, self);
  dataProvider4 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __56__WDElectrocardiogramOverviewViewController_viewDidLoad__block_invoke;
  v32 = &unk_2796E6CF0;
  objc_copyWeak(&v33, &location);
  [dataProvider4 startCollectingDataWithUpdateHandler:&v29];

  mEMORY[0x277D130C0] = [MEMORY[0x277D130C0] sharedManager];
  [mEMORY[0x277D130C0] trackElectrocardiogramDataTypeViewed];
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
    tableView = [(WDElectrocardiogramOverviewViewController *)self tableView];
    tableHeaderView = [tableView tableHeaderView];
    tableView2 = [(WDElectrocardiogramOverviewViewController *)self tableView];
    [tableView2 setTableHeaderView:tableHeaderView];
  }
}

- (void)showInternalSettings
{
  v3 = [WDElectrocardiogramInternalSettingsViewController alloc];
  profile = [(WDElectrocardiogramOverviewViewController *)self profile];
  healthStore = [profile healthStore];
  profile2 = [(WDElectrocardiogramOverviewViewController *)self profile];
  dateCache = [profile2 dateCache];
  v8 = [(WDElectrocardiogramInternalSettingsViewController *)v3 initWithHealthStore:healthStore dateCache:dateCache];

  [(WDElectrocardiogramOverviewViewController *)self showAdaptively:v8 sender:self];
}

- (double)adjustedSafeAreaInsetTop
{
  view = [(WDElectrocardiogramOverviewViewController *)self view];
  [view safeAreaInsets];
  v4 = v3;

  return v4;
}

- (void)_reloadTableViewAndScrollToTop
{
  tableView = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [(WDElectrocardiogramOverviewViewController *)self adjustedSafeAreaInsetTop];
  [tableView setContentOffset:0 animated:{0.0, -v4}];

  tableView2 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [tableView2 reloadData];

  tableView3 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [tableView3 layoutIfNeeded];

  tableView4 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [(WDElectrocardiogramOverviewViewController *)self adjustedSafeAreaInsetTop];
  [tableView4 setContentOffset:0 animated:{0.0, -v8}];

  tableView5 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  v10 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  [tableView5 reloadSections:v10 withRowAnimation:5];

  [(WDElectrocardiogramOverviewViewController *)self _reloadElectrocardiogramSetupTableHeaderView];
}

- (void)featureStatusProviding:(id)providing didUpdateFeatureStatus:(id)status
{
  v15 = *MEMORY[0x277D85DE8];
  statusCopy = status;
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
  v12 = statusCopy;
  v9 = statusCopy;
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

- (void)widthDesignationDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection
{
  traitCollection = [environment traitCollection];
  v6 = [(WDElectrocardiogramOverviewViewController *)self widthDesignationFromTraitCollection:traitCollection];

  [(WDElectrocardiogramOverviewViewController *)self updateMarginsForWidthDesignation:v6];
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
  tableView = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [tableView setDirectionalLayoutMargins:{v5, v7, v9, v11}];
}

- (void)_startUpgrade
{
  v3 = objc_alloc(MEMORY[0x277D130A0]);
  profile = [(WDElectrocardiogramOverviewViewController *)self profile];
  healthStore = [profile healthStore];
  profile2 = [(WDElectrocardiogramOverviewViewController *)self profile];
  dateCache = [profile2 dateCache];
  LOBYTE(v11) = 1;
  v8 = [v3 initWithOnboardingType:1 isFirstTimeOnboarding:0 healthStore:healthStore dateCache:dateCache provenance:2 delegate:self isSampleInteractive:v11];
  [(WDElectrocardiogramOverviewViewController *)self setOnboardingManager:v8];

  onboardingManager = [(WDElectrocardiogramOverviewViewController *)self onboardingManager];
  onboardingNavigationController = [onboardingManager onboardingNavigationController];

  [onboardingNavigationController setModalInPresentation:1];
  navigationController = [(WDElectrocardiogramOverviewViewController *)self navigationController];
  [navigationController presentViewController:onboardingNavigationController animated:1 completion:0];
}

- (WDElectrocardiogramOverviewSectionInfo)sectionInfo
{
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  dataProvider = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  numberOfSections = [dataProvider numberOfSections];

  placeholderCellCount = [(WDElectrocardiogramOverviewViewController *)self placeholderCellCount];
  moreHealthDataProvider = [(WDElectrocardiogramOverviewViewController *)self moreHealthDataProvider];
  v9 = [moreHealthDataProvider count];

  filterDataProvider = [(WDElectrocardiogramOverviewViewController *)self filterDataProvider];

  mode = self->_mode;
  if (mode)
  {
    if (numberOfSections)
    {
      v12 = 0;
    }

    else
    {
      v12 = placeholderCellCount <= 0;
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
      v39 = numberOfSections != 0;
      if (numberOfSections)
      {
        v40 = 0;
      }

      else
      {
        v40 = -1;
      }

      v41 = 1;
      if (numberOfSections)
      {
        v41 = 2;
      }

      if (!filterDataProvider)
      {
        v41 = numberOfSections != 0;
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

    v26 = numberOfSections != 0;
    if (numberOfSections)
    {
      v27 = 0;
    }

    else
    {
      v27 = -1;
    }

    v28 = 1;
    if (numberOfSections)
    {
      v28 = 2;
    }

    if (!filterDataProvider)
    {
      v28 = numberOfSections != 0;
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

  if (numberOfSections)
  {
    v33 = 0;
  }

  else
  {
    v33 = placeholderCellCount <= 0;
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

  if (!filterDataProvider)
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

    selfCopy = self;
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
      if (BYTE1(selfCopy[43].var2))
      {
        v6 = 1;
      }

      else
      {
        v6 = -1;
      }

      if (BYTE1(selfCopy[43].var2))
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
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults hk_keyExists:@"WDCinnamonOnboardingStateOverrideKey"];

  if (v4)
  {
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    integerValue = [standardUserDefaults2 integerForKey:@"WDCinnamonOnboardingStateOverrideKey"];
LABEL_5:
    featureStatus = integerValue;
    goto LABEL_6;
  }

  availabilityStateCache = [(WDElectrocardiogramOverviewViewController *)self availabilityStateCache];

  if (availabilityStateCache)
  {
    standardUserDefaults2 = [(WDElectrocardiogramOverviewViewController *)self availabilityStateCache];
    integerValue = [standardUserDefaults2 integerValue];
    goto LABEL_5;
  }

  featureStatus = [(WDElectrocardiogramOverviewViewController *)self featureStatus];

  if (!featureStatus)
  {
    return featureStatus;
  }

  featureStatus2 = [(WDElectrocardiogramOverviewViewController *)self featureStatus];
  featureStatus = HKElectrocardiogramOverviewAvailabilityState(featureStatus2);

  standardUserDefaults2 = [MEMORY[0x277CCABB0] numberWithInteger:featureStatus];
  [(WDElectrocardiogramOverviewViewController *)self setAvailabilityStateCache:standardUserDefaults2];
LABEL_6:

  return featureStatus;
}

- (BOOL)shouldShowRecordingRescindedHeader
{
  if ([(WDElectrocardiogramOverviewViewController *)self availabilityState]== 2)
  {
    LOBYTE(_electrocardiogramRecordingRescindedStatus) = 0;
  }

  else
  {
    _electrocardiogramRecordingRescindedStatus = [(WDElectrocardiogramOverviewViewController *)self _electrocardiogramRecordingRescindedStatus];
    if (_electrocardiogramRecordingRescindedStatus)
    {
      LOBYTE(_electrocardiogramRecordingRescindedStatus) = [(WDElectrocardiogramOverviewViewController *)self mode]== 0;
    }
  }

  return _electrocardiogramRecordingRescindedStatus;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  [(WDElectrocardiogramOverviewViewController *)self sectionInfo];
  if (section)
  {
    return 0;
  }

  dataProvider = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v7 = [dataProvider numberOfObjectsForSection:0];

  if ([(WDElectrocardiogramOverviewViewController *)self mode]== 2 && v7 > 5)
  {
    return 6;
  }

  placeholderCellCount = [(WDElectrocardiogramOverviewViewController *)self placeholderCellCount];
  if (placeholderCellCount <= v7)
  {
    return v7;
  }

  else
  {
    return placeholderCellCount;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [(WDElectrocardiogramOverviewViewController *)self sectionInfo];
  if (![pathCopy section])
  {
    if (-[WDElectrocardiogramOverviewViewController mode](self, "mode") == 2 && [pathCopy row] == 5)
    {
      _showAllResultsForSummarySharingProfile = [(WDElectrocardiogramOverviewViewController *)self _showAllResultsForSummarySharingProfile];
    }

    else
    {
      _showAllResultsForSummarySharingProfile = -[WDElectrocardiogramOverviewViewController _cellForSampleAtIndex:section:](self, "_cellForSampleAtIndex:section:", [pathCopy row], objc_msgSend(pathCopy, "section"));
    }

    goto LABEL_9;
  }

  if (![pathCopy section])
  {
    if (!self->_mode)
    {
      availabilityState = [(WDElectrocardiogramOverviewViewController *)self availabilityState];
      if ((availabilityState - 1) < 2 || availabilityState != 3 && availabilityState)
      {
        moreHealthDataProvider = [WDElectrocardiogramFilterDataProvider cellTitleForType:0];
        v11 = [(WDElectrocardiogramOverviewViewController *)self _cellWithDisclosureIndicatorAndText:moreHealthDataProvider value:0];
        goto LABEL_20;
      }
    }

    _showAllResultsForSummarySharingProfile = -[WDElectrocardiogramOverviewViewController _showAllResultsCellForType:](self, "_showAllResultsCellForType:", -[WDElectrocardiogramOverviewViewController _filterTypeForDataSectionRow:](self, "_filterTypeForDataSectionRow:", [pathCopy row]));
    goto LABEL_9;
  }

  if ([pathCopy section])
  {
    if ([pathCopy section])
    {
      if (![pathCopy section])
      {
        moreHealthDataProvider = [(WDElectrocardiogramOverviewViewController *)self moreHealthDataProvider];
        v11 = [moreHealthDataProvider cellForRow:objc_msgSend(pathCopy tableView:{"row"), viewCopy}];
        goto LABEL_20;
      }

      if ([pathCopy section])
      {
        if (![pathCopy section])
        {
          [(WDElectrocardiogramOverviewViewController *)self userConfigurationRowInfo];
          if (![pathCopy row])
          {
            _showAllResultsForSummarySharingProfile = [(WDElectrocardiogramOverviewViewController *)self _cellForDataSourcesAndAccess];
            goto LABEL_9;
          }

          if (![pathCopy row])
          {
            _showAllResultsForSummarySharingProfile = [(WDElectrocardiogramOverviewViewController *)self _cellForRegulatoryPane];
            goto LABEL_9;
          }
        }

        _showAllResultsForSummarySharingProfile = objc_alloc_init(MEMORY[0x277D75B48]);
        goto LABEL_9;
      }

      _showAllResultsForSummarySharingProfile = [(WDElectrocardiogramOverviewViewController *)self _cellForFavorites];
    }

    else
    {
      _showAllResultsForSummarySharingProfile = [(WDElectrocardiogramOverviewViewController *)self _cellForDescription];
    }

LABEL_9:
    v9 = _showAllResultsForSummarySharingProfile;
    goto LABEL_21;
  }

  moreHealthDataProvider = [(WDElectrocardiogramOverviewViewController *)self educationSection];
  v11 = [moreHealthDataProvider cellForIndex:objc_msgSend(pathCopy tableView:{"row"), viewCopy}];
LABEL_20:
  v9 = v11;

LABEL_21:

  return v9;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  [(WDElectrocardiogramOverviewViewController *)self sectionInfo:view];
  if (section)
  {
    v12 = 0;
  }

  else
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    features = [mEMORY[0x277CCDD30] features];
    isPinnedInBrowse = [features isPinnedInBrowse];

    v8 = WDBundle();
    v9 = v8;
    if (isPinnedInBrowse)
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

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (!section && [(WDElectrocardiogramOverviewViewController *)self shouldShowRecordingRescindedHeader])
  {
    _recordingRescindedHeaderView = [(WDElectrocardiogramOverviewViewController *)self _recordingRescindedHeaderView];
    goto LABEL_12;
  }

  [(WDElectrocardiogramOverviewViewController *)self sectionInfo];
  if (v14 == section)
  {
    if ([(WDElectrocardiogramOverviewViewController *)self mode]== 2)
    {
      v8 = @"RecentResults";
      v9 = @"RECENT_RESULTS_TITLE";
LABEL_10:
      v10 = WDBundle();
      v11 = [v10 localizedStringForKey:v9 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
      v12 = HKConditionallyRedactedHeartRhythmString();
      _recordingRescindedHeaderView = [(WDElectrocardiogramOverviewViewController *)self _sectionHeaderViewWithTitle:v12 identifier:v8];

      goto LABEL_12;
    }
  }

  else if (!section)
  {
    v8 = @"ECGResultsSection";
    v9 = @"MORE_SECTION_TITLE";
    goto LABEL_10;
  }

  _recordingRescindedHeaderView = 0;
LABEL_12:

  return _recordingRescindedHeaderView;
}

- (id)_sectionHeaderViewWithTitle:(id)title identifier:(id)identifier
{
  identifierCopy = identifier;
  titleCopy = title;
  tableView = [(WDElectrocardiogramOverviewViewController *)self tableView];
  v9 = +[WDHeartRhythmSectionHeaderView defaultReuseIdentifier];
  v10 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:v9];

  [v10 setTitleText:titleCopy];
  identifierCopy = [@"Overview" stringByAppendingFormat:@".SectionHeader.%@", identifierCopy];

  v12 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:identifierCopy];
  [v10 setAccessibilityIdentifier:v12];

  return v10;
}

- (id)_recordingRescindedHeaderView
{
  tableView = [(WDElectrocardiogramOverviewViewController *)self tableView];
  v4 = +[WDHeartRhythmHeaderView defaultReuseIdentifier];
  v5 = [tableView dequeueReusableHeaderFooterViewWithIdentifier:v4];

  _electrocardiogramRecordingRescindedStatus = [(WDElectrocardiogramOverviewViewController *)self _electrocardiogramRecordingRescindedStatus];
  if (_electrocardiogramRecordingRescindedStatus == 2)
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

  if (_electrocardiogramRecordingRescindedStatus == 1)
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
  featureStatus = [(WDElectrocardiogramOverviewViewController *)self featureStatus];

  if (featureStatus)
  {
    featureStatus2 = [(WDElectrocardiogramOverviewViewController *)self featureStatus];
    v5 = [featureStatus2 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    unsatisfiedRequirementIdentifiers = [v5 unsatisfiedRequirementIdentifiers];

    if ([unsatisfiedRequirementIdentifiers containsObject:*MEMORY[0x277CCBFD0]])
    {
      featureStatus = 2;
    }

    else
    {
      featureStatus = [unsatisfiedRequirementIdentifiers containsObject:*MEMORY[0x277CCBF30]];
    }
  }

  return featureStatus;
}

- (BOOL)_isElectrocardiogramRecordingAgeGated
{
  featureStatus = [(WDElectrocardiogramOverviewViewController *)self featureStatus];

  if (!featureStatus)
  {
    return 0;
  }

  featureStatus2 = [(WDElectrocardiogramOverviewViewController *)self featureStatus];
  v5 = [featureStatus2 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
  unsatisfiedRequirementIdentifiers = [v5 unsatisfiedRequirementIdentifiers];

  LOBYTE(featureStatus2) = [unsatisfiedRequirementIdentifiers containsObject:*MEMORY[0x277CCBF70]];
  return featureStatus2;
}

- (int64_t)_availabilityStateToShowInSetupTableHeaderView
{
  if (self->_mode)
  {
    return 0;
  }

  availabilityState = [(WDElectrocardiogramOverviewViewController *)self availabilityState];
  _electrocardiogramRecordingRescindedStatus = [(WDElectrocardiogramOverviewViewController *)self _electrocardiogramRecordingRescindedStatus];
  _isElectrocardiogramRecordingAgeGated = [(WDElectrocardiogramOverviewViewController *)self _isElectrocardiogramRecordingAgeGated];
  if (availabilityState == 3)
  {
    if (_electrocardiogramRecordingRescindedStatus != 0 || _isElectrocardiogramRecordingAgeGated)
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
    if (_electrocardiogramRecordingRescindedStatus != 0 || _isElectrocardiogramRecordingAgeGated)
    {
      v7 = 2;
    }

    if (availabilityState != 1)
    {
      v7 = 0;
    }

    if (availabilityState == 2)
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
  _availabilityStateToShowInSetupTableHeaderView = [(WDElectrocardiogramOverviewViewController *)self _availabilityStateToShowInSetupTableHeaderView];
  if (_availabilityStateToShowInSetupTableHeaderView <= 1)
  {
    if (_availabilityStateToShowInSetupTableHeaderView)
    {
      if (_availabilityStateToShowInSetupTableHeaderView != 1)
      {
        return;
      }

      [(WDElectrocardiogramOverviewViewController *)self _removeUpgradeTileNotProminentIfNeeded];
      selfCopy2 = self;
      v5 = 0;
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (_availabilityStateToShowInSetupTableHeaderView != 3)
  {
    if (_availabilityStateToShowInSetupTableHeaderView != 2)
    {
      return;
    }

LABEL_7:
    [(WDElectrocardiogramOverviewViewController *)self _removeUpgradeTileNotProminentIfNeeded];
    v6 = objc_alloc(MEMORY[0x277D75D18]);
    tableView = [(WDElectrocardiogramOverviewViewController *)self tableView];
    [tableView bounds];
    v7 = [v6 initWithFrame:{0.0, 0.0}];
    tableView2 = [(WDElectrocardiogramOverviewViewController *)self tableView];
    [tableView2 setTableHeaderView:v7];

    goto LABEL_8;
  }

  if ([(WDElectrocardiogramOverviewViewController *)self _showUpgradeTileInProminentPosition])
  {
    selfCopy2 = self;
    v5 = 1;
LABEL_14:

    [(WDElectrocardiogramOverviewViewController *)selfCopy2 _setTableHeaderViewWithUpgradeView:v5];
    return;
  }

  [(WDElectrocardiogramOverviewViewController *)self _showUpgradeTileNotProminent];
  tableView3 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [tableView3 bounds];
  Width = CGRectGetWidth(v14);

  tableView = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, Width, 2.22507386e-308}];
  tableView4 = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [tableView4 setTableHeaderView:tableView];

LABEL_8:
}

- (void)_showUpgradeTileNotProminent
{
  v5 = [(WDElectrocardiogramOverviewViewController *)self _electrocardiogramSetupContainerViewWithUpgrade:1];
  v3 = [objc_alloc(MEMORY[0x277D12878]) initWithView:v5 identifier:@"UpgradeTileNotProminentIdentifier"];
  moreHealthDataProvider = [(WDElectrocardiogramOverviewViewController *)self moreHealthDataProvider];
  [moreHealthDataProvider addItem:v3];
}

- (void)_removeUpgradeTileNotProminentIfNeeded
{
  moreHealthDataProvider = [(WDElectrocardiogramOverviewViewController *)self moreHealthDataProvider];
  [moreHealthDataProvider removeItemWithIdentifier:@"UpgradeTileNotProminentIdentifier"];

  [(WDElectrocardiogramOverviewViewController *)self _reloadMoreHealthSectionWithAnimation:0];
}

- (void)_reloadMoreHealthSectionWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  [(WDElectrocardiogramOverviewViewController *)self sectionInfo:0];
  v5 = [MEMORY[0x277CCAA78] indexSetWithIndex:?];
  if (animationCopy)
  {
    v6 = 100;
  }

  else
  {
    v6 = 5;
  }

  tableView = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [tableView reloadSections:v5 withRowAnimation:v6];
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
      selfCopy = self;
      _os_log_impl(&dword_251E85000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: ECG1 only country. Demote upgrade ad.", &v9, 0xCu);
      result = 0;
    }
  }

  else
  {
    hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    v7 = [hk_heartRhythmDefaults BOOLForKey:@"PromimentUpgradeTileDismissed"];

    result = v7 ^ 1;
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_userLocaleOnlySupportsECG1
{
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v3 = MEMORY[0x277CCD530];
  countryCode = [autoupdatingCurrentLocale countryCode];
  LOBYTE(v3) = [v3 isECG1SupportedOnlyForCountryCode:countryCode];

  return v3;
}

- (void)_reloadAllSections
{
  v3 = [WDElectrocardiogramFilterDataProvider alloc];
  profile = [(WDElectrocardiogramOverviewViewController *)self profile];
  v5 = [(WDElectrocardiogramFilterDataProvider *)v3 initWithProfile:profile delegate:self];
  [(WDElectrocardiogramOverviewViewController *)self setFilterDataProvider:v5];

  v6 = objc_alloc(MEMORY[0x277D13098]);
  profile2 = [(WDElectrocardiogramOverviewViewController *)self profile];
  healthStore = [profile2 healthStore];
  v9 = self->_mode == 0;
  dataProvider = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  activeECGAlgorithmVersion = [dataProvider activeECGAlgorithmVersion];
  v12 = [v6 initWithHealthStore:healthStore forSinglePlayer:v9 activeAlgorithmVersion:activeECGAlgorithmVersion];
  [(WDElectrocardiogramOverviewViewController *)self setEducationSection:v12];

  filterDataProvider = [(WDElectrocardiogramOverviewViewController *)self filterDataProvider];
  [filterDataProvider start];

  tableView = [(WDElectrocardiogramOverviewViewController *)self tableView];
  [tableView reloadData];
}

- (id)_electrocardiogramSetupContainerViewWithUpgrade:(BOOL)upgrade
{
  upgradeCopy = upgrade;
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = off_2796E6010;
  if (!upgradeCopy)
  {
    v11 = off_2796E6008;
  }

  v12 = [objc_alloc(*v11) initWithFrame:{v6, v7, v8, v9}];
  [v12 setDelegate:self];
  [v10 addSubview:v12];
  [v12 hk_alignConstraintsWithView:v10];

  return v10;
}

- (id)_cellForSampleAtIndex:(int64_t)index section:(int64_t)section
{
  v7 = [MEMORY[0x277CCAA70] indexPathForRow:? inSection:?];
  dataProvider = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v9 = [dataProvider numberOfObjectsForSection:section];

  dataProvider2 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v11 = dataProvider2;
  if (v9 <= index)
  {
    tableView = [(WDElectrocardiogramOverviewViewController *)self tableView];
    v15 = [v11 placeholderCellAtIndexPath:v7 tableView:tableView];
  }

  else
  {
    v12 = [dataProvider2 objectAtIndex:index forSection:section];

    tableView = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
    tableView2 = [(WDElectrocardiogramOverviewViewController *)self tableView];
    v15 = [tableView customCellForObject:v12 indexPath:v7 tableView:tableView2];

    v11 = v12;
  }

  return v15;
}

- (id)_showAllResultsCellForType:(int64_t)type
{
  v5 = [WDElectrocardiogramFilterDataProvider cellTitleForType:?];
  [(WDElectrocardiogramOverviewViewController *)self sectionInfo];
  if (v10 == -1)
  {
    v7 = 0;
  }

  else
  {
    filterDataProvider = [(WDElectrocardiogramOverviewViewController *)self filterDataProvider];
    v7 = [filterDataProvider displayStringCountForType:type];
  }

  v8 = [(WDElectrocardiogramOverviewViewController *)self _cellWithDisclosureIndicatorAndText:v5 value:v7];

  return v8;
}

- (id)_showAllResultsForSummarySharingProfile
{
  v3 = [WDElectrocardiogramFilterDataProvider cellTitleForType:0];
  v4 = HKIntegerFormatter();
  v5 = MEMORY[0x277CCABB0];
  dataProvider = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  samples = [dataProvider samples];
  v8 = [v5 numberWithInteger:{objc_msgSend(samples, "count")}];
  v9 = [v4 stringFromNumber:v8];

  v10 = [(WDElectrocardiogramOverviewViewController *)self _cellWithDisclosureIndicatorAndText:v3 value:v9];

  return v10;
}

- (id)_cellForFavorites
{
  v3 = objc_alloc(MEMORY[0x277D12898]);
  reuseIdentifier = [MEMORY[0x277D12898] reuseIdentifier];
  v5 = [v3 initWithStyle:0 reuseIdentifier:reuseIdentifier];

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
  displayType = [(WDElectrocardiogramOverviewViewController *)self displayType];
  v5 = +[WDDisplayTypeDescriptionTableViewCell defaultReuseIdentifier];
  v6 = [(WDDisplayTypeDescriptionTableViewCell *)v3 initWithDisplayType:displayType showAttributionText:0 reuseIdentifier:v5];

  [(WDDisplayTypeDescriptionTableViewCell *)v6 setSelectionStyle:0];
  v7 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:@"AboutEcgDescription"];
  [(WDDisplayTypeDescriptionTableViewCell *)v6 setAccessibilityIdentifier:v7];

  return v6;
}

- (id)_cellWithDisclosureIndicatorAndText:(id)text value:(id)value
{
  valueCopy = value;
  textCopy = text;
  tableView = [(WDElectrocardiogramOverviewViewController *)self tableView];
  v9 = [tableView dequeueReusableCellWithIdentifier:@"_Value1CellIdentifier"];

  if (!v9)
  {
    v9 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"_Value1CellIdentifier"];
  }

  textLabel = [v9 textLabel];
  [textLabel setText:textCopy];

  textLabel2 = [v9 textLabel];
  [textLabel2 setNumberOfLines:0];

  detailTextLabel = [v9 detailTextLabel];
  [detailTextLabel setText:valueCopy];

  [v9 setAccessoryType:1];
  textCopy = [@"Overview" stringByAppendingFormat:@".Cell.%@", textCopy];

  v14 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:textCopy];
  [v9 setAccessibilityIdentifier:v14];

  return v9;
}

- (void)electrocardiogramFilterDataProvider:(id)provider didUpdateCount:(int64_t)count type:(int64_t)type
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __101__WDElectrocardiogramOverviewViewController_electrocardiogramFilterDataProvider_didUpdateCount_type___block_invoke;
  v5[3] = &unk_2796E6D40;
  v5[4] = self;
  v5[5] = type;
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

- (void)beginOnboardingForOnboardingSetupView:(id)view
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

  availabilityState = [(WDElectrocardiogramOverviewViewController *)self availabilityState];
  if (availabilityState == 3)
  {
    hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
    [hk_heartRhythmDefaults setBool:1 forKey:@"PromimentUpgradeTileDismissed"];

    [(WDElectrocardiogramOverviewViewController *)self _startUpgrade];
  }

  else if (availabilityState == 1)
  {
    [(WDElectrocardiogramOverviewViewController *)self _startOnboardingForFirstTime:1];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)didTapOnElectrocardiogram:(id)electrocardiogram
{
  electrocardiogramCopy = electrocardiogram;
  [(WDElectrocardiogramOverviewViewController *)self _reloadAllSections];
  onboardingManager = [(WDElectrocardiogramOverviewViewController *)self onboardingManager];
  [onboardingManager dismissOnboarding];

  v6 = [WDElectrocardiogramDataMetadataViewController alloc];
  dataProvider = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v8 = [(WDElectrocardiogramDataMetadataViewController *)v6 initWithSample:electrocardiogramCopy delegate:dataProvider mode:0 activeAlgorithmVersion:0];

  [(WDElectrocardiogramOverviewViewController *)self showAdaptively:v8 sender:self];
}

- (void)didCompleteOnboarding
{
  [(WDElectrocardiogramOverviewViewController *)self _reloadAllSections];

  [(WDElectrocardiogramOverviewViewController *)self setOnboardingManager:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  [(WDElectrocardiogramOverviewViewController *)self sectionInfo];
  if ([pathCopy section])
  {
    if (![pathCopy section])
    {
      _dataListViewControllerForSummaryData = -[WDElectrocardiogramOverviewViewController _dataListViewControllerWithFilterType:](self, "_dataListViewControllerWithFilterType:", -[WDElectrocardiogramOverviewViewController _filterTypeForDataSectionRow:](self, "_filterTypeForDataSectionRow:", [pathCopy row]));
      goto LABEL_7;
    }

    if (![pathCopy section])
    {
      educationSection = [(WDElectrocardiogramOverviewViewController *)self educationSection];
      v16 = [pathCopy row];
      navigationController = [(WDElectrocardiogramOverviewViewController *)self navigationController];
      [educationSection selectCellForIndex:v16 navigationController:navigationController animated:1];

      goto LABEL_12;
    }

    if (![pathCopy section])
    {
      goto LABEL_13;
    }

    if (![pathCopy section])
    {
      educationSection = [viewCopy cellForRowAtIndexPath:pathCopy];
      [educationSection setFavorited:{objc_msgSend(educationSection, "isFavorited") ^ 1}];
      -[WDElectrocardiogramOverviewViewController setPinned:](self, "setPinned:", [educationSection isFavorited]);
      goto LABEL_12;
    }

    if (![pathCopy section])
    {
      [(WDElectrocardiogramOverviewViewController *)self userConfigurationRowInfo];
      if ([pathCopy row])
      {
        if (![pathCopy row])
        {
          hk_heartRhythmDefaults = [MEMORY[0x277CBEBD0] hk_heartRhythmDefaults];
          hk_hfeModeEnabled = [hk_heartRhythmDefaults hk_hfeModeEnabled];

          if ((hk_hfeModeEnabled & 1) == 0)
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
    if (-[WDElectrocardiogramOverviewViewController mode](self, "mode") == 2 && [pathCopy row] == 5)
    {
      _dataListViewControllerForSummaryData = [(WDElectrocardiogramOverviewViewController *)self _dataListViewControllerForSummaryData];
LABEL_7:
      educationSection = _dataListViewControllerForSummaryData;
      [(WDElectrocardiogramOverviewViewController *)self showAdaptively:_dataListViewControllerForSummaryData sender:self];
LABEL_12:

      goto LABEL_13;
    }

    v10 = [pathCopy row];
    dataProvider = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
    v12 = [dataProvider numberOfObjectsForSection:{objc_msgSend(pathCopy, "section")}];

    if (v10 < v12)
    {
      dataProvider2 = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
      v14 = [MEMORY[0x277CCAA70] indexPathForRow:objc_msgSend(pathCopy inSection:{"row"), objc_msgSend(pathCopy, "section")}];
      v15 = [dataProvider2 viewControllerForItemAtIndexPath:v14];

      [(WDElectrocardiogramOverviewViewController *)self showAdaptively:v15 sender:self];
    }
  }

LABEL_13:
}

- (id)_dataListViewControllerWithFilterType:(int64_t)type
{
  v5 = [WDElectrocardiogramListDataProvider alloc];
  displayType = [(WDElectrocardiogramOverviewViewController *)self displayType];
  profile = [(WDElectrocardiogramOverviewViewController *)self profile];
  v8 = [(WDElectrocardiogramListDataProvider *)v5 initWithDisplayType:displayType profile:profile mode:[(WDElectrocardiogramOverviewViewController *)self mode]];

  v9 = [WDElectrocardiogramDataListViewController alloc];
  displayType2 = [(WDElectrocardiogramOverviewViewController *)self displayType];
  profile2 = [(WDElectrocardiogramOverviewViewController *)self profile];
  v12 = [(WDElectrocardiogramDataListViewController *)v9 initWithDisplayType:displayType2 profile:profile2 dataProvider:v8 usingInsetStyling:1 mode:[(WDElectrocardiogramOverviewViewController *)self mode]];

  filterDataProvider = [(WDElectrocardiogramOverviewViewController *)self filterDataProvider];
  v14 = [filterDataProvider electrocardiogramPredicateForType:type];
  dataProvider = [(WDDataListViewController *)v12 dataProvider];
  [dataProvider setDefaultQueryPredicate:v14];

  v16 = [WDElectrocardiogramFilterDataProvider viewControllerTitleForType:type];
  [(WDElectrocardiogramDataListViewController *)v12 setTitle:v16];

  tableView = [(WDElectrocardiogramDataListViewController *)v12 tableView];
  [tableView _setSectionContentInsetFollowsLayoutMargins:1];

  return v12;
}

- (id)_dataListViewControllerForSummaryData
{
  v3 = [WDElectrocardiogramDataListViewController alloc];
  displayType = [(WDElectrocardiogramOverviewViewController *)self displayType];
  profile = [(WDElectrocardiogramOverviewViewController *)self profile];
  dataProvider = [(WDElectrocardiogramOverviewViewController *)self dataProvider];
  v7 = [(WDElectrocardiogramDataListViewController *)v3 initWithDisplayType:displayType profile:profile dataProvider:dataProvider usingInsetStyling:1 mode:[(WDElectrocardiogramOverviewViewController *)self mode]];

  v8 = [WDElectrocardiogramFilterDataProvider viewControllerTitleForType:0];
  [(WDElectrocardiogramDataListViewController *)v7 setTitle:v8];

  tableView = [(WDElectrocardiogramDataListViewController *)v7 tableView];
  [tableView _setSectionContentInsetFollowsLayoutMargins:1];

  return v7;
}

- (void)_showDataSourcesAndAccessController
{
  v9 = [MEMORY[0x277D12828] categoryWithID:{-[HKDisplayType categoryIdentifier](self->_displayType, "categoryIdentifier")}];
  v3 = [WDDisplayTypeDataSourcesTableViewController alloc];
  displayType = self->_displayType;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  sourceOrderController = [WeakRetained sourceOrderController];
  v7 = objc_loadWeakRetained(&self->_profile);
  v8 = [(WDDisplayTypeDataSourcesTableViewController *)v3 initWithDisplayType:displayType displayCategory:v9 sourceOrderController:sourceOrderController profile:v7];

  [(WDDisplayTypeDataSourcesTableViewController *)v8 setShouldInsetSectionContentForDataSourceDataList:1];
  [(WDElectrocardiogramOverviewViewController *)self showAdaptively:v8 sender:self];
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

  [(WDElectrocardiogramOverviewViewController *)self sectionInfo:0];
  if (![pathCopy section])
  {
    educationSection = [(WDElectrocardiogramOverviewViewController *)self educationSection];
    [educationSection willDisplayCell:cellCopy forIndex:objc_msgSend(pathCopy tableView:{"row"), viewCopy}];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  if (!changeCopy)
  {
    goto LABEL_3;
  }

  traitCollection = [(WDElectrocardiogramOverviewViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v7 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

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
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v4 = autoupdatingCurrentLocale;
  if (autoupdatingCurrentLocale)
  {
    countryCode = [autoupdatingCurrentLocale countryCode];
    v6 = [v2 containsObject:countryCode];
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
  selfCopy = self;
  v2 = NSStringFromHKFeatureAvailabilityRescindedStatus();
  v4 = 136446466;
  v5 = "[WDElectrocardiogramOverviewViewController _recordingRescindedHeaderView]";
  v6 = 2114;
  v7 = v2;
  _os_log_error_impl(&dword_251E85000, selfCopy, OS_LOG_TYPE_ERROR, "[%{public}s]: Could not configure rescinded header view for state %{public}@", &v4, 0x16u);

  v3 = *MEMORY[0x277D85DE8];
}

@end