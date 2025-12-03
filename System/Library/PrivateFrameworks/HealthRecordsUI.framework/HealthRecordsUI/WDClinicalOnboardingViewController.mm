@interface WDClinicalOnboardingViewController
- (BOOL)showingMainSpinner;
- (BOOL)showingNoGeoView;
- (BOOL)showingNoLocations;
- (CGSize)preferredContentSize;
- (NSLayoutConstraint)noContentBottomConstraint;
- (NSLayoutConstraint)noContentTopConstraint;
- (UIViewController)dismissalViewController;
- (WDClinicalOnboardingViewController)initWithProfile:(id)profile gatewayProxy:(id)proxy;
- (WDClinicalSampleAccountsLoader)sampleAccountsLoader;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_cacheKeyForSearchQuery:(id)query;
- (id)_changeEnvironmentMenuElements;
- (id)_createNoContentParentView;
- (id)_createNoGeoView;
- (id)_createNoLocationsView;
- (id)_createSpinnerView;
- (id)_emptyMutableOrderedSet;
- (id)_mutableOrderedSetWithSampleAccountsForQuery:(id)query;
- (id)_providerNotFoundExplanationMessage;
- (id)accountSearchResultAtIndexPath:(id)path;
- (id)keyCommands;
- (id)providerSearchResultAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_beginLoadingAlreadyConnectedAccountsIfNecessary;
- (void)_cancelSearch;
- (void)_changeEnvironment:(int64_t)environment;
- (void)_configureDeniedAuthorization;
- (void)_configureLeftNavigationItemAsCancel;
- (void)_configureLocationServices;
- (void)_configureNavigationItems;
- (void)_configureProviderNotFoundView;
- (void)_configureRightNavigationItems;
- (void)_configureSearchController;
- (void)_configureTableViewCells;
- (void)_didFetchResultsForQuery:(id)query searchResultsPage:(id)page error:(id)error;
- (void)_disableLocationAwareness;
- (void)_hideSpinnerView;
- (void)_loadGatewayProxyForDeeplinking:(id)deeplinking;
- (void)_presentError:(id)error;
- (void)_presentInitialResultsIfNecessary;
- (void)_presentLoginForAlreadyConnectedAccount:(id)account;
- (void)_proceedWithAlreadyConnectedAccount:(id)account;
- (void)_requestWhenInUseAuthorizationIfNeeded;
- (void)_resetCacheAndReloadData;
- (void)_resetSearchResults;
- (void)_searchResultsForQuery:(id)query from:(int64_t)from;
- (void)_searchUsingQuery:(id)query;
- (void)_showNoContentView:(id)view;
- (void)_showNoGeoView;
- (void)_showNoLocationsViewIfNeeded;
- (void)_showSpinnerView;
- (void)_suggestNewProviders;
- (void)_updateNoContentViewConstraints;
- (void)_updateTableHeaderViewHeight;
- (void)activateSearch:(id)search;
- (void)didReceiveMemoryWarning;
- (void)dismiss:(id)dismiss;
- (void)loadView;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)reloadData;
- (void)scrollViewDidChangeAdjustedContentInset:(id)inset;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setShowProviderNotFound:(BOOL)found;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)willDismissSearchController:(id)controller;
- (void)willPresentSearchController:(id)controller;
@end

@implementation WDClinicalOnboardingViewController

- (WDClinicalOnboardingViewController)initWithProfile:(id)profile gatewayProxy:(id)proxy
{
  profileCopy = profile;
  proxyCopy = proxy;
  v22.receiver = self;
  v22.super_class = WDClinicalOnboardingViewController;
  v9 = [(HKTableViewController *)&v22 initWithUsingInsetStyling:1];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_profile, profile);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    resultsCache = v10->_resultsCache;
    v10->_resultsCache = v11;

    searchQuery = v10->_searchQuery;
    v10->_searchQuery = &stru_1F4D16E38;

    searchTerms = v10->_searchTerms;
    v10->_searchTerms = MEMORY[0x1E695E0F0];

    v15 = objc_alloc(MEMORY[0x1E69A3F68]);
    healthStore = [profileCopy healthStore];
    v17 = [v15 initWithHealthStore:healthStore];
    providerServiceStore = v10->_providerServiceStore;
    v10->_providerServiceStore = v17;

    objc_storeStrong(&v10->_pendingGatewayProxy, proxy);
    v19 = objc_alloc_init(HRUITableViewSectionConfiguration);
    sectionConfiguration = v10->_sectionConfiguration;
    v10->_sectionConfiguration = v19;
  }

  return v10;
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = WDClinicalOnboardingViewController;
  [(WDClinicalOnboardingViewController *)&v11 loadView];
  v3 = HRLocalizedString(@"HEALTH_RECORDS_ONBOARDING_TITLE");
  [(WDClinicalOnboardingViewController *)self setTitle:v3];

  v4 = *MEMORY[0x1E69A4090];
  v5 = *MEMORY[0x1E69A4090] + 48.0 + 16.0;
  tableView = [(WDClinicalOnboardingViewController *)self tableView];
  [tableView setSeparatorInset:{0.0, v5, 0.0, v4}];

  tableView2 = [(WDClinicalOnboardingViewController *)self tableView];
  [tableView2 setBackgroundView:0];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  tableView3 = [(WDClinicalOnboardingViewController *)self tableView];
  [tableView3 setBackgroundColor:systemBackgroundColor];

  tableView4 = [(WDClinicalOnboardingViewController *)self tableView];
  [tableView4 setKeyboardDismissMode:2];

  [(WDClinicalOnboardingViewController *)self _configureNavigationItems];
  [(WDClinicalOnboardingViewController *)self _configureSearchController];
  [(WDClinicalOnboardingViewController *)self _configureTableViewCells];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = WDClinicalOnboardingViewController;
  [(HKTableViewController *)&v6 viewDidLoad];
  pendingGatewayProxy = [(WDClinicalOnboardingViewController *)self pendingGatewayProxy];

  if (pendingGatewayProxy)
  {
    pendingGatewayProxy2 = [(WDClinicalOnboardingViewController *)self pendingGatewayProxy];
    [(WDClinicalOnboardingViewController *)self _loadGatewayProxyForDeeplinking:pendingGatewayProxy2];
  }

  else
  {
    [(WDClinicalOnboardingViewController *)self _configureLocationServices];
  }

  [(WDClinicalOnboardingViewController *)self setShowProviderNotFound:self->_showProviderNotFound];
  [(WDClinicalOnboardingViewController *)self _beginLoadingAlreadyConnectedAccountsIfNecessary];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__applicationDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];
}

- (CGSize)preferredContentSize
{
  [MEMORY[0x1E69B7CF0] preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)didReceiveMemoryWarning
{
  v3.receiver = self;
  v3.super_class = WDClinicalOnboardingViewController;
  [(WDClinicalOnboardingViewController *)&v3 didReceiveMemoryWarning];
  if ([(WDClinicalOnboardingViewController *)self _isSimulator])
  {
    [(WDClinicalOnboardingViewController *)self setSampleAccountsLoader:0];
  }
}

- (id)_providerNotFoundExplanationMessage
{
  if (self->_showOnlyClinicalSharingCapableProviders)
  {
    HROsloLocalizedString(@"HEALTH_RECORDS_ONBOARDING_NO_LOCATIONS_FOUND_MESSAGE_SHARING", a2);
  }

  else
  {
    HRLocalizedString(@"HEALTH_RECORDS_ONBOARDING_NO_LOCATIONS_FOUND_MESSAGE_CHR");
  }
  v2 = ;

  return v2;
}

- (id)keyCommands
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:*MEMORY[0x1E69DDEA0] modifierFlags:0 action:sel_dismiss_];
  v3 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"f" modifierFlags:0x100000 action:sel_activateSearch_];
  v6[0] = v2;
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

- (void)activateSearch:(id)search
{
  searchBar = [(UISearchController *)self->_searchController searchBar];
  [searchBar becomeFirstResponder];
}

- (void)_configureLeftNavigationItemAsCancel
{
  v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_dismiss_];
  navigationItem = [(WDClinicalOnboardingViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v6];

  navigationItem2 = [(WDClinicalOnboardingViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem2 leftBarButtonItem];
  [leftBarButtonItem setAccessibilityIdentifier:@"UIA.Health.ClinicalOnboarding.Navigation.Cancel"];
}

- (void)_configureRightNavigationItems
{
  v18[2] = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696C608] isAppleInternalInstall] && (objc_msgSend(MEMORY[0x1E695E000], "standardUserDefaults"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLForKey:", *MEMORY[0x1E696C8C0]), v3, (v4 & 1) == 0))
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__WDClinicalOnboardingViewController__configureRightNavigationItems__block_invoke;
    v17[3] = &unk_1E83DC980;
    v17[4] = self;
    v5 = [MEMORY[0x1E69DC628] actionWithTitle:@"Suggest New Provider" image:0 identifier:0 handler:v17];
    HKHealthRecordsCurrentEnvironment();
    v6 = HKHealthRecordsNameForEnvironment();
    v7 = MEMORY[0x1E69DCC60];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Environment: %@", v6];
    _changeEnvironmentMenuElements = [(WDClinicalOnboardingViewController *)self _changeEnvironmentMenuElements];
    v10 = [v7 menuWithTitle:v8 children:_changeEnvironmentMenuElements];

    v11 = MEMORY[0x1E69DCC60];
    v18[0] = v5;
    v18[1] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v13 = [v11 menuWithTitle:@"Internal Only Options" children:v12];

    v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:@"Internal" menu:v13];
    navigationItem = [(WDClinicalOnboardingViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v14];
  }

  else
  {
    navigationItem2 = [(WDClinicalOnboardingViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0];
  }
}

- (void)_configureNavigationItems
{
  presentingViewController = [(WDClinicalOnboardingViewController *)self presentingViewController];

  if (presentingViewController)
  {
    presentingViewController2 = [(WDClinicalOnboardingViewController *)self presentingViewController];
    navigationController = [presentingViewController2 navigationController];
    navigationBar = [navigationController navigationBar];
    [navigationBar setAccessibilityIdentifier:@"UIA.Health.ClinicalOnboarding.Navigation"];

    [(WDClinicalOnboardingViewController *)self _configureLeftNavigationItemAsCancel];

    [(WDClinicalOnboardingViewController *)self _configureRightNavigationItems];
  }
}

- (void)_configureSearchController
{
  v3 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
  searchController = self->_searchController;
  self->_searchController = v3;

  [(UISearchController *)self->_searchController setDelegate:self];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  [searchBar setDelegate:self];
  v5 = HRLocalizedString(@"HEALTH_RECORDS_ONBOARDING_SEARCH_PLACEHOLDER");
  [searchBar setPlaceholder:v5];

  searchTextField = [searchBar searchTextField];
  [searchTextField setAccessibilityIdentifier:@"UIA.Health.ClinicalOnboarding.SearchBar.SearchText"];

  [(UISearchController *)self->_searchController setSearchResultsUpdater:self];
  [(UISearchController *)self->_searchController setHidesNavigationBarDuringPresentation:1];
  [(UISearchController *)self->_searchController setObscuresBackgroundDuringPresentation:0];
  v7 = self->_searchController;
  navigationItem = [(WDClinicalOnboardingViewController *)self navigationItem];
  [navigationItem setSearchController:v7];

  navigationItem2 = [(WDClinicalOnboardingViewController *)self navigationItem];
  [navigationItem2 setHidesSearchBarWhenScrolling:0];
}

- (void)_configureTableViewCells
{
  tableView = [(WDClinicalOnboardingViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"AlreadyConnectedCell"];

  tableView2 = [(WDClinicalOnboardingViewController *)self tableView];
  [tableView2 registerClass:objc_opt_class() forCellReuseIdentifier:@"SearchResultCell"];

  tableView3 = [(WDClinicalOnboardingViewController *)self tableView];
  v5 = objc_opt_class();
  v6 = +[HRWDSpinnerTableViewCell defaultReuseIdentifier];
  [tableView3 registerClass:v5 forCellReuseIdentifier:v6];
}

- (void)_loadGatewayProxyForDeeplinking:(id)deeplinking
{
  sectionConfiguration = self->_sectionConfiguration;
  deeplinkingCopy = deeplinking;
  sections = [(HRUITableViewSectionConfiguration *)sectionConfiguration sections];
  if ([sections count])
  {
  }

  else
  {
    showingNoLocations = [(WDClinicalOnboardingViewController *)self showingNoLocations];

    if (!showingNoLocations)
    {
      [(WDClinicalOnboardingViewController *)self _showSpinnerView];
    }
  }

  providerServiceStore = self->_providerServiceStore;
  gatewayID = [deeplinkingCopy gatewayID];
  batchID = [deeplinkingCopy batchID];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__WDClinicalOnboardingViewController__loadGatewayProxyForDeeplinking___block_invoke;
  v11[3] = &unk_1E83DC9F8;
  v11[4] = self;
  [(HKClinicalProviderServiceStore *)providerServiceStore fetchRemoteGatewayWithExternalID:gatewayID batchID:batchID completion:v11];
}

void __70__WDClinicalOnboardingViewController__loadGatewayProxyForDeeplinking___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__WDClinicalOnboardingViewController__loadGatewayProxyForDeeplinking___block_invoke_2;
  block[3] = &unk_1E83DC9D0;
  v10 = v5;
  v11 = v6;
  v12 = *(a1 + 32);
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __70__WDClinicalOnboardingViewController__loadGatewayProxyForDeeplinking___block_invoke_2(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = objc_alloc(MEMORY[0x1E69A3F48]);
    v3 = [*(a1 + 32) title];
    v4 = [*(a1 + 32) subtitle];
    v5 = [*(a1 + 32) informationURL];
    v6 = [*(a1 + 32) brand];
    v18[0] = *(a1 + 32);
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v8 = [v2 initWithExternalID:@"DEEPLINK_FAKEPROVIDEREXTERNALID" title:v3 subtitle:v4 location:0 informationURL:v5 brand:v6 gateways:v7];

    v9 = [WDClinicalProviderDetailsViewController alloc];
    v10 = [*(a1 + 48) profile];
    v11 = [(WDClinicalProviderDetailsViewController *)v9 initWithProfile:v10 provider:v8];

    v12 = [*(a1 + 48) navigationController];
    [v12 pushViewController:v11 animated:1];

    v13 = [*(a1 + 48) navigationController];
    v14 = [v13 transitionCoordinator];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __70__WDClinicalOnboardingViewController__loadGatewayProxyForDeeplinking___block_invoke_396;
    v17[3] = &unk_1E83DC9A8;
    v17[4] = *(a1 + 48);
    [v14 animateAlongsideTransition:0 completion:v17];
  }

  else
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      __70__WDClinicalOnboardingViewController__loadGatewayProxyForDeeplinking___block_invoke_2_cold_1(a1, v15);
    }

    [*(a1 + 48) setShowProviderNotFound:1];
    [*(a1 + 48) setPendingGatewayProxy:0];
  }

  return [*(a1 + 48) _configureLocationServices];
}

- (void)_resetCacheAndReloadData
{
  [(NSMutableDictionary *)self->_resultsCache removeAllObjects];

  [(WDClinicalOnboardingViewController *)self _searchUsingQuery:&stru_1F4D16E38];
}

- (void)reloadData
{
  [(HRUITableViewSectionConfiguration *)self->_sectionConfiguration removeAllSections];
  pendingGatewayProxy = [(WDClinicalOnboardingViewController *)self pendingGatewayProxy];
  if (pendingGatewayProxy || [(WDClinicalOnboardingViewController *)self showingMainSpinner])
  {
    goto LABEL_15;
  }

  if (![(WDClinicalOnboardingViewController *)self hasCompletedAtLeastOneFetch])
  {
    goto LABEL_16;
  }

  if (![(WDClinicalOnboardingViewController *)self hasSearchTerm])
  {
    goto LABEL_7;
  }

  if ([(NSMutableOrderedSet *)self->_alreadySharingSearchResults count])
  {
    v4 = [(HRUITableViewSectionConfiguration *)self->_sectionConfiguration addSectionWithIdentifier:@"AlreadySharing" firstRowReuseIdentifier:0];
    v6 = HROsloLocalizedString(@"HEALTH_RECORDS_ONBOARDING_ALREADY_SHARING", v5);
    [v4 setHeaderString:v6];

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableOrderedSet count](self->_alreadySharingSearchResults, "count")}];
    [v4 setEstimatedNumRows:v7];

LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:
  if ([(NSMutableOrderedSet *)self->_supportedSearchResults count])
  {
    v9 = [(HRUITableViewSectionConfiguration *)self->_sectionConfiguration addSectionWithIdentifier:@"SupportedLocations" firstRowReuseIdentifier:0];
    v10 = v9;
    if (v8)
    {
      v11 = HRLocalizedString(@"HEALTH_RECORDS_ONBOARDING_SEARCH_SUGGESTIONS");
      [v10 setHeaderString:v11];
    }

    else
    {
      [v9 setHeaderString:0];
    }

    _providerNotFoundExplanationMessage = [(WDClinicalOnboardingViewController *)self _providerNotFoundExplanationMessage];
    [v10 setFooterString:_providerNotFoundExplanationMessage];

    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableOrderedSet count](self->_supportedSearchResults, "count")}];
    [v10 setEstimatedNumRows:v13];
  }

  if ([(NSMutableOrderedSet *)self->_unsupportedSearchResults count])
  {
    pendingGatewayProxy = [(HRUITableViewSectionConfiguration *)self->_sectionConfiguration addSectionWithIdentifier:@"UnsupportedLocations" firstRowReuseIdentifier:0];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableOrderedSet count](self->_unsupportedSearchResults, "count")}];
    [pendingGatewayProxy setEstimatedNumRows:v14];

LABEL_15:
  }

LABEL_16:
  tableView = [(WDClinicalOnboardingViewController *)self tableView];
  [tableView reloadData];
}

- (void)setShowProviderNotFound:(BOOL)found
{
  self->_showProviderNotFound = found;
  if ([(WDClinicalOnboardingViewController *)self isViewLoaded])
  {
    if (self->_showProviderNotFound)
    {
      [(WDClinicalOnboardingViewController *)self _configureProviderNotFoundView];
    }

    else
    {
      tableView = [(WDClinicalOnboardingViewController *)self tableView];
      [tableView setTableHeaderView:0];

      [(WDClinicalOnboardingViewController *)self setProviderNotFoundView:0];
    }

    [(WDClinicalOnboardingViewController *)self _updateTableHeaderViewHeight];
  }
}

- (void)_configureProviderNotFoundView
{
  v3 = [HRProviderNotFoundView alloc];
  v4 = [(HRProviderNotFoundView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(WDClinicalOnboardingViewController *)self setProviderNotFoundView:v4];

  providerNotFoundView = [(WDClinicalOnboardingViewController *)self providerNotFoundView];
  tableView = [(WDClinicalOnboardingViewController *)self tableView];
  [tableView setTableHeaderView:providerNotFoundView];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = WDClinicalOnboardingViewController;
  [(WDClinicalOnboardingViewController *)&v3 viewDidLayoutSubviews];
  [(WDClinicalOnboardingViewController *)self _updateTableHeaderViewHeight];
}

- (void)_updateTableHeaderViewHeight
{
  providerNotFoundView = [(WDClinicalOnboardingViewController *)self providerNotFoundView];

  if (providerNotFoundView)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __66__WDClinicalOnboardingViewController__updateTableHeaderViewHeight__block_invoke;
    v4[3] = &unk_1E83DCA20;
    v4[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v4 animations:0.0];
  }
}

void __66__WDClinicalOnboardingViewController__updateTableHeaderViewHeight__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) providerNotFoundView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = [*(a1 + 32) providerNotFoundView];
  [v9 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v11 = v10;

  v12 = [*(a1 + 32) providerNotFoundView];
  [v12 setFrame:{v4, v6, v8, v11}];
}

- (void)_configureLocationServices
{
  if (!self->_locationManager)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695FBE8]);
    locationManager = self->_locationManager;
    self->_locationManager = v3;

    v5 = self->_locationManager;

    [(CLLocationManager *)v5 setDelegate:self];
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  authorizationStatus = [authorizationCopy authorizationStatus];
  if ((authorizationStatus - 1) < 2)
  {
    [(WDClinicalOnboardingViewController *)self _configureDeniedAuthorization];
  }

  else if ((authorizationStatus - 3) >= 2)
  {
    if (!authorizationStatus)
    {
      [(WDClinicalOnboardingViewController *)self _requestWhenInUseAuthorizationIfNeeded];
    }
  }

  else
  {
    accuracyAuthorization = [authorizationCopy accuracyAuthorization];
    v7 = MEMORY[0x1E6985CB8];
    if (accuracyAuthorization)
    {
      v7 = MEMORY[0x1E6985CB0];
    }

    [authorizationCopy setDesiredAccuracy:*v7];
    _HKInitializeLogging();
    v8 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEBUG))
    {
      [WDClinicalOnboardingViewController locationManagerDidChangeAuthorization:v8];
    }

    [authorizationCopy startUpdatingLocation];
    sections = [(HRUITableViewSectionConfiguration *)self->_sectionConfiguration sections];
    if ([sections count])
    {
    }

    else
    {
      showingNoLocations = [(WDClinicalOnboardingViewController *)self showingNoLocations];

      if (!showingNoLocations)
      {
        [(WDClinicalOnboardingViewController *)self _showSpinnerView];
      }
    }
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  _HKInitializeLogging();
  v8 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEBUG))
  {
    [WDClinicalOnboardingViewController locationManager:v8 didUpdateLocations:?];
  }

  [managerCopy stopUpdatingLocation];
  lastObject = [locationsCopy lastObject];

  location = self->_location;
  self->_location = lastObject;

  locationManager = self->_locationManager;
  self->_locationManager = 0;

  [(WDClinicalOnboardingViewController *)self setLocationEnabled:1];
  [(WDClinicalOnboardingViewController *)self _presentInitialResultsIfNecessary];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  [manager stopUpdatingLocation];
  locationManager = self->_locationManager;
  self->_locationManager = 0;

  if ([errorCopy code] == 1)
  {
    [(WDClinicalOnboardingViewController *)self _configureDeniedAuthorization];
  }

  else
  {
    [(WDClinicalOnboardingViewController *)self _presentInitialResultsIfNecessary];
    code = [errorCopy code];
    _HKInitializeLogging();
    v9 = *MEMORY[0x1E696B948];
    v10 = os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR);
    if (code)
    {
      if (v10)
      {
        [WDClinicalOnboardingViewController locationManager:didFailWithError:];
      }
    }

    else if (v10)
    {
      [WDClinicalOnboardingViewController locationManager:v9 didFailWithError:?];
    }
  }
}

- (void)_requestWhenInUseAuthorizationIfNeeded
{
  if (self->_locationManager)
  {
    viewIfLoaded = [(WDClinicalOnboardingViewController *)self viewIfLoaded];
    window = [viewIfLoaded window];

    if (window)
    {
      locationManager = self->_locationManager;

      [(CLLocationManager *)locationManager requestWhenInUseAuthorization];
    }
  }
}

- (void)_configureDeniedAuthorization
{
  [(WDClinicalOnboardingViewController *)self _disableLocationAwareness];
  [(WDClinicalOnboardingViewController *)self _presentInitialResultsIfNecessary];
  _HKInitializeLogging();
  v3 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
  {
    [(WDClinicalOnboardingViewController *)v3 _configureDeniedAuthorization];
  }
}

- (void)_disableLocationAwareness
{
  location = self->_location;
  self->_location = 0;

  [(WDClinicalOnboardingViewController *)self setLocationEnabled:0];
  resultsCache = [(WDClinicalOnboardingViewController *)self resultsCache];
  [resultsCache setObject:0 forKeyedSubscript:@"DefaultListKey"];
}

- (void)willPresentSearchController:(id)controller
{
  presentingViewController = [(WDClinicalOnboardingViewController *)self presentingViewController];

  if (presentingViewController)
  {
    navigationItem = [(WDClinicalOnboardingViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    [leftBarButtonItem setHidden:1];
  }
}

- (void)willDismissSearchController:(id)controller
{
  [(WDClinicalOnboardingViewController *)self setSearchQuery:&stru_1F4D16E38];
  [(WDClinicalOnboardingViewController *)self setSearchTerms:MEMORY[0x1E695E0F0]];
  presentingViewController = [(WDClinicalOnboardingViewController *)self presentingViewController];

  if (presentingViewController)
  {
    navigationItem = [(WDClinicalOnboardingViewController *)self navigationItem];
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    [leftBarButtonItem setHidden:0];
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  [(WDClinicalOnboardingViewController *)self _hideNoGeoView];
  searchBar = [controllerCopy searchBar];

  text = [searchBar text];

  if ([text length])
  {
    [(NSTimer *)self->_searchTimer invalidate];
    v7 = dbl_1D139C1D0[[text length] > 6];
    v8 = MEMORY[0x1E695DFF0];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__WDClinicalOnboardingViewController_updateSearchResultsForSearchController___block_invoke;
    v11[3] = &unk_1E83DCA48;
    v11[4] = self;
    v12 = text;
    v9 = [v8 scheduledTimerWithTimeInterval:0 repeats:v11 block:v7];
    searchTimer = self->_searchTimer;
    self->_searchTimer = v9;
  }

  else
  {
    [(WDClinicalOnboardingViewController *)self _cancelSearch];
  }
}

void __77__WDClinicalOnboardingViewController_updateSearchResultsForSearchController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _searchUsingQuery:*(a1 + 40)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__WDClinicalOnboardingViewController_updateSearchResultsForSearchController___block_invoke_2;
  block[3] = &unk_1E83DCA20;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

_BYTE *__77__WDClinicalOnboardingViewController_updateSearchResultsForSearchController___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[1088] == 1)
  {
    return [result setShowProviderNotFound:0];
  }

  return result;
}

- (void)_cancelSearch
{
  [(NSTimer *)self->_searchTimer invalidate];
  searchTimer = self->_searchTimer;
  self->_searchTimer = 0;

  [(WDClinicalOnboardingViewController *)self setAlreadySharingSearchResults:0];
  [(WDClinicalOnboardingViewController *)self setUnsupportedSearchResults:0];
  [(WDClinicalOnboardingViewController *)self setSupportedSearchResults:0];
  searchBar = [(UISearchController *)self->_searchController searchBar];
  text = [searchBar text];
  [(WDClinicalOnboardingViewController *)self _searchUsingQuery:text];
}

- (void)_presentInitialResultsIfNecessary
{
  if (![(WDClinicalOnboardingViewController *)self hasSearchTerm])
  {

    [(WDClinicalOnboardingViewController *)self _searchUsingQuery:&stru_1F4D16E38];
  }
}

- (void)_searchUsingQuery:(id)query
{
  queryCopy = query;
  searchQuery = [(WDClinicalOnboardingViewController *)self searchQuery];
  if ([searchQuery length])
  {
    v5 = 0;
  }

  else
  {
    v5 = [queryCopy length] != 0;
  }

  v6 = [(WDClinicalOnboardingViewController *)self _cacheKeyForSearchQuery:queryCopy];
  [(WDClinicalOnboardingViewController *)self setSearchQuery:queryCopy];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v8 = [queryCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];
  [(WDClinicalOnboardingViewController *)self setSearchTerms:v8];

  [(WDClinicalOnboardingViewController *)self _hideSpinnerView];
  if (-[WDClinicalOnboardingViewController locationEnabled](self, "locationEnabled") || [queryCopy length])
  {
    resultsCache = [(WDClinicalOnboardingViewController *)self resultsCache];
    v10 = [resultsCache objectForKeyedSubscript:v6];

    if (v10)
    {
      v11 = [v10 objectForKeyedSubscript:@"AlreadySharingKey"];
      [(WDClinicalOnboardingViewController *)self setAlreadySharingSearchResults:v11];

      v12 = [v10 objectForKeyedSubscript:@"SupportedKey"];
      [(WDClinicalOnboardingViewController *)self setSupportedSearchResults:v12];

      v13 = [v10 objectForKeyedSubscript:@"UnsupportedKey"];
      [(WDClinicalOnboardingViewController *)self setUnsupportedSearchResults:v13];

      v14 = [v10 objectForKeyedSubscript:@"NextFromKey"];
      -[WDClinicalOnboardingViewController setNextFrom:](self, "setNextFrom:", [v14 integerValue]);

      [(WDClinicalOnboardingViewController *)self setSpinnerIndexPath:0];
      [(WDClinicalOnboardingViewController *)self reloadData];
      [(WDClinicalOnboardingViewController *)self _showNoLocationsViewIfNeeded];
    }

    else
    {
      if (v5)
      {
        [(WDClinicalOnboardingViewController *)self _resetSearchResults];
        [(WDClinicalOnboardingViewController *)self reloadData];
      }

      [(WDClinicalOnboardingViewController *)self setNextFrom:0];
      [(WDClinicalOnboardingViewController *)self _searchResultsForQuery:queryCopy from:0];
    }
  }

  else if ([(WDClinicalOnboardingViewController *)self _isSimulator])
  {
    ++self->_searchesInFlight;
    [(WDClinicalOnboardingViewController *)self _didFetchResultsForQuery:&stru_1F4D16E38 searchResultsPage:0 error:0];
  }

  else
  {
    [(WDClinicalOnboardingViewController *)self _resetSearchResults];
    if (![(UISearchController *)self->_searchController isActive])
    {
      [(WDClinicalOnboardingViewController *)self _showNoGeoView];
    }

    [(WDClinicalOnboardingViewController *)self reloadData];
  }
}

- (void)_searchResultsForQuery:(id)query from:(int64_t)from
{
  queryCopy = query;
  location = self->_location;
  if (location)
  {
    v8 = MEMORY[0x1E696AD98];
    [(CLLocation *)location coordinate];
    v9 = [v8 numberWithDouble:?];
    v10 = MEMORY[0x1E696AD98];
    [(CLLocation *)self->_location coordinate];
    v12 = [v10 numberWithDouble:v11];
  }

  else
  {
    v12 = 0;
    v9 = 0;
  }

  [(HKClinicalProviderServiceStore *)self->_providerServiceStore cancelInFlightSearchQueriesWithCompletion:&__block_literal_global];
  if (![(WDClinicalOnboardingViewController *)self hasSearchResults])
  {
    [(WDClinicalOnboardingViewController *)self _showSpinnerView];
  }

  ++self->_searchesInFlight;
  v13 = [objc_alloc(MEMORY[0x1E69A3F50]) initWithSearchString:queryCopy latitude:v9 longitude:v12 pageOffset:from options:self->_showOnlyClinicalSharingCapableProviders];
  providerServiceStore = self->_providerServiceStore;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__WDClinicalOnboardingViewController__searchResultsForQuery_from___block_invoke_417;
  v16[3] = &unk_1E83DCAB8;
  v16[4] = self;
  v17 = queryCopy;
  v15 = queryCopy;
  [(HKClinicalProviderServiceStore *)providerServiceStore fetchRemoteSearchResultsPageForQuery:v13 completion:v16];
}

void __66__WDClinicalOnboardingViewController__searchResultsForQuery_from___block_invoke(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      __66__WDClinicalOnboardingViewController__searchResultsForQuery_from___block_invoke_cold_1();
    }
  }
}

void __66__WDClinicalOnboardingViewController__searchResultsForQuery_from___block_invoke_417(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__WDClinicalOnboardingViewController__searchResultsForQuery_from___block_invoke_2;
  v10[3] = &unk_1E83DCA90;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v7;
  v12 = v5;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

uint64_t __66__WDClinicalOnboardingViewController__searchResultsForQuery_from___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setHasCompletedAtLeastOneFetch:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _didFetchResultsForQuery:v3 searchResultsPage:v4 error:v5];
}

- (void)_didFetchResultsForQuery:(id)query searchResultsPage:(id)page error:(id)error
{
  v52[4] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  pageCopy = page;
  errorCopy = error;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  --self->_searchesInFlight;
  [(WDClinicalOnboardingViewController *)self _hideSpinnerView];
  if (pageCopy || ([errorCopy hk_isUserCanceledError] & 1) == 0)
  {
    v11 = [(WDClinicalOnboardingViewController *)self _cacheKeyForSearchQuery:queryCopy];
    v12 = pageCopy;
    if ([(WDClinicalOnboardingViewController *)self _isSimulator])
    {
      [(WDClinicalOnboardingViewController *)self setHasCompletedAtLeastOneFetch:1];
      if (pageCopy)
      {
        goto LABEL_7;
      }

      v13 = objc_alloc(MEMORY[0x1E69A3F60]);
      v12 = [v13 initWithSearchResults:MEMORY[0x1E695E0F0] from:0 nextFrom:0 size:0];
    }

    if (!v12)
    {
      resultsCache = [(WDClinicalOnboardingViewController *)self resultsCache];
      [resultsCache removeObjectForKey:v11];

      [(WDClinicalOnboardingViewController *)self _resetSearchResults];
      [(WDClinicalOnboardingViewController *)self setNextFrom:0];
      [(WDClinicalOnboardingViewController *)self setSpinnerIndexPath:0];
      [(WDClinicalOnboardingViewController *)self reloadData];
      [(WDClinicalOnboardingViewController *)self _showNoLocationsViewIfNeeded];
      if (errorCopy)
      {
        [(WDClinicalOnboardingViewController *)self _presentError:errorCopy];
      }

      goto LABEL_26;
    }

LABEL_7:
    v47 = pageCopy;
    resultsCache2 = [(WDClinicalOnboardingViewController *)self resultsCache];
    v45 = v11;
    v15 = [resultsCache2 objectForKeyedSubscript:v11];

    v16 = [v15 objectForKeyedSubscript:@"AlreadySharingKey"];
    if (v16)
    {
      [v15 objectForKeyedSubscript:@"AlreadySharingKey"];
    }

    else
    {
      [(WDClinicalOnboardingViewController *)self _emptyMutableOrderedSet];
    }
    v17 = ;
    [(WDClinicalOnboardingViewController *)self setAlreadySharingSearchResults:v17];

    LODWORD(v17) = [(WDClinicalOnboardingViewController *)self _isSimulator];
    v18 = [v15 objectForKeyedSubscript:@"SupportedKey"];
    v19 = v18;
    if (v17)
    {
      if (!v18)
      {
        _emptyMutableOrderedSet = [(WDClinicalOnboardingViewController *)self _mutableOrderedSetWithSampleAccountsForQuery:queryCopy];
LABEL_18:
        v22 = _emptyMutableOrderedSet;
        [(WDClinicalOnboardingViewController *)self setSupportedSearchResults:_emptyMutableOrderedSet];

        v23 = [v15 objectForKeyedSubscript:@"UnsupportedKey"];
        if (v23)
        {
          [v15 objectForKeyedSubscript:@"UnsupportedKey"];
        }

        else
        {
          [(WDClinicalOnboardingViewController *)self _emptyMutableOrderedSet];
        }
        v24 = ;
        [(WDClinicalOnboardingViewController *)self setUnsupportedSearchResults:v24];

        searchResults = [v12 searchResults];
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __87__WDClinicalOnboardingViewController__didFetchResultsForQuery_searchResultsPage_error___block_invoke;
        v50[3] = &unk_1E83DCAE0;
        v50[4] = self;
        v26 = [searchResults hk_filter:v50];
        v27 = [searchResults hk_filter:&__block_literal_global_422];
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __87__WDClinicalOnboardingViewController__didFetchResultsForQuery_searchResultsPage_error___block_invoke_3;
        v49[3] = &unk_1E83DCAE0;
        v49[4] = self;
        v43 = searchResults;
        v28 = [searchResults hk_filter:v49];
        alreadySharingSearchResults = [(WDClinicalOnboardingViewController *)self alreadySharingSearchResults];
        v42 = v28;
        [alreadySharingSearchResults addObjectsFromArray:v28];

        v48 = queryCopy;
        v46 = errorCopy;
        v44 = v15;
        if (-[NSArray count](self->_alreadyConnectedAccounts, "count") && ![v12 from] && !-[WDClinicalOnboardingViewController hasSearchTerm](self, "hasSearchTerm"))
        {
          v30 = [(NSArray *)self->_alreadyConnectedAccounts arrayByAddingObjectsFromArray:v26];

          v26 = v30;
        }

        supportedSearchResults = [(WDClinicalOnboardingViewController *)self supportedSearchResults];
        [supportedSearchResults addObjectsFromArray:v26];

        unsupportedSearchResults = [(WDClinicalOnboardingViewController *)self unsupportedSearchResults];
        v33 = v27;
        [unsupportedSearchResults addObjectsFromArray:v27];

        -[WDClinicalOnboardingViewController setNextFrom:](self, "setNextFrom:", [v12 nextFrom]);
        v51[0] = @"AlreadySharingKey";
        alreadySharingSearchResults2 = [(WDClinicalOnboardingViewController *)self alreadySharingSearchResults];
        v52[0] = alreadySharingSearchResults2;
        v51[1] = @"SupportedKey";
        supportedSearchResults2 = [(WDClinicalOnboardingViewController *)self supportedSearchResults];
        v52[1] = supportedSearchResults2;
        v51[2] = @"UnsupportedKey";
        unsupportedSearchResults2 = [(WDClinicalOnboardingViewController *)self unsupportedSearchResults];
        v52[2] = unsupportedSearchResults2;
        v51[3] = @"NextFromKey";
        v37 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v12, "nextFrom")}];
        v52[3] = v37;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:4];
        v39 = v38 = v12;
        resultsCache3 = [(WDClinicalOnboardingViewController *)self resultsCache];
        v11 = v45;
        [resultsCache3 setObject:v39 forKeyedSubscript:v45];

        [(WDClinicalOnboardingViewController *)self setSpinnerIndexPath:0];
        [(WDClinicalOnboardingViewController *)self reloadData];
        [(WDClinicalOnboardingViewController *)self _showNoLocationsViewIfNeeded];

        pageCopy = v47;
        queryCopy = v48;
        errorCopy = v46;
LABEL_26:

        goto LABEL_27;
      }
    }

    else if (!v18)
    {
      _emptyMutableOrderedSet = [(WDClinicalOnboardingViewController *)self _emptyMutableOrderedSet];
      goto LABEL_18;
    }

    _emptyMutableOrderedSet = [v15 objectForKeyedSubscript:@"SupportedKey"];
    goto LABEL_18;
  }

LABEL_27:
}

uint64_t __87__WDClinicalOnboardingViewController__didFetchResultsForQuery_searchResultsPage_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isSupported])
  {
    v4 = *(*(a1 + 32) + 1128);
    v5 = [v3 brand];
    if ([v4 containsObject:v5])
    {
      v6 = 0;
    }

    else
    {
      v7 = *(*(a1 + 32) + 1120);
      v8 = [v3 brand];
      v6 = [v7 containsObject:v8] ^ 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __87__WDClinicalOnboardingViewController__didFetchResultsForQuery_searchResultsPage_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 1128);
  v3 = [a2 brand];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_cacheKeyForSearchQuery:(id)query
{
  queryCopy = query;
  if ([(__CFString *)queryCopy length])
  {
    v4 = queryCopy;
  }

  else
  {
    v4 = @"DefaultListKey";
  }

  v5 = v4;

  return v4;
}

- (void)_resetSearchResults
{
  _emptyMutableOrderedSet = [(WDClinicalOnboardingViewController *)self _emptyMutableOrderedSet];
  [(WDClinicalOnboardingViewController *)self setAlreadySharingSearchResults:_emptyMutableOrderedSet];

  _emptyMutableOrderedSet2 = [(WDClinicalOnboardingViewController *)self _emptyMutableOrderedSet];
  [(WDClinicalOnboardingViewController *)self setSupportedSearchResults:_emptyMutableOrderedSet2];

  _emptyMutableOrderedSet3 = [(WDClinicalOnboardingViewController *)self _emptyMutableOrderedSet];
  [(WDClinicalOnboardingViewController *)self setUnsupportedSearchResults:_emptyMutableOrderedSet3];
}

- (id)_emptyMutableOrderedSet
{
  v2 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:50];

  return v2;
}

- (id)_mutableOrderedSetWithSampleAccountsForQuery:(id)query
{
  queryCopy = query;
  _emptyMutableOrderedSet = [(WDClinicalOnboardingViewController *)self _emptyMutableOrderedSet];
  v6 = [queryCopy length];

  if (!v6)
  {
    sampleAccountsLoader = [(WDClinicalOnboardingViewController *)self sampleAccountsLoader];
    sampleAccountsAsSearchResults = [sampleAccountsLoader sampleAccountsAsSearchResults];

    [_emptyMutableOrderedSet addObjectsFromArray:sampleAccountsAsSearchResults];
  }

  return _emptyMutableOrderedSet;
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)inset
{
  insetCopy = inset;
  tableView = [(WDClinicalOnboardingViewController *)self tableView];

  if (tableView == insetCopy)
  {

    [(WDClinicalOnboardingViewController *)self _updateNoContentViewConstraints];
  }
}

- (void)_updateNoContentViewConstraints
{
  tableView = [(WDClinicalOnboardingViewController *)self tableView];
  [tableView adjustedContentInset];
  v5 = v4;
  tableView2 = [(WDClinicalOnboardingViewController *)self tableView];
  [tableView2 safeAreaInsets];
  v8 = v5 - v7;
  WeakRetained = objc_loadWeakRetained(&self->_noContentTopConstraint);
  [WeakRetained setConstant:v8];

  tableView3 = [(WDClinicalOnboardingViewController *)self tableView];
  [tableView3 adjustedContentInset];
  v11 = v10;
  tableView4 = [(WDClinicalOnboardingViewController *)self tableView];
  [tableView4 safeAreaInsets];
  v14 = -(v11 - v13);
  v15 = objc_loadWeakRetained(&self->_noContentBottomConstraint);
  [v15 setConstant:v14];
}

- (id)_createNoContentParentView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setPreservesSuperviewLayoutMargins:1];
  [v2 setClipsToBounds:1];

  return v2;
}

- (void)_showNoContentView:(id)view
{
  v61[6] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  subviews = [(UIView *)self->_noContentParentView subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  if (viewCopy)
  {
    if (self->_noContentParentView)
    {
      [(WDClinicalOnboardingViewController *)self setNoContentParentView:?];
    }

    else
    {
      _createNoContentParentView = [(WDClinicalOnboardingViewController *)self _createNoContentParentView];
      [(WDClinicalOnboardingViewController *)self setNoContentParentView:_createNoContentParentView];
    }

    [(UIView *)self->_noContentParentView addSubview:viewCopy];
    topAnchor = [viewCopy topAnchor];
    safeAreaLayoutGuide = [(UIView *)self->_noContentParentView safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v10 = [topAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];

    v59 = v10;
    [(WDClinicalOnboardingViewController *)self setNoContentTopConstraint:v10];
    bottomAnchor = [viewCopy bottomAnchor];
    safeAreaLayoutGuide2 = [(UIView *)self->_noContentParentView safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide2 bottomAnchor];
    v14 = [bottomAnchor constraintLessThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];

    [v10 priority];
    *&v16 = v15 + -1.0;
    [v14 setPriority:v16];
    [(WDClinicalOnboardingViewController *)self setNoContentBottomConstraint:v14];
    [(WDClinicalOnboardingViewController *)self _updateNoContentViewConstraints];
    v45 = MEMORY[0x1E696ACD8];
    widthAnchor = [viewCopy widthAnchor];
    widthAnchor2 = [(UIView *)self->_noContentParentView widthAnchor];
    v51 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v61[0] = v51;
    centerXAnchor = [viewCopy centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_noContentParentView centerXAnchor];
    v17 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v61[1] = v17;
    leadingAnchor = [viewCopy leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_noContentParentView leadingAnchor];
    v20 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    v61[2] = v20;
    v58 = viewCopy;
    trailingAnchor = [viewCopy trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_noContentParentView trailingAnchor];
    v23 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    v61[3] = v23;
    v61[4] = v59;
    v57 = v14;
    v61[5] = v14;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:6];
    [v45 activateConstraints:v24];

    superview = [(UIView *)self->_noContentParentView superview];

    if (!superview)
    {
      tableView = [(WDClinicalOnboardingViewController *)self tableView];
      [tableView addSubview:self->_noContentParentView];

      v41 = MEMORY[0x1E696ACD8];
      widthAnchor3 = [(UIView *)self->_noContentParentView widthAnchor];
      tableView2 = [(WDClinicalOnboardingViewController *)self tableView];
      widthAnchor4 = [tableView2 widthAnchor];
      v50 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
      v60[0] = v50;
      topAnchor3 = [(UIView *)self->_noContentParentView topAnchor];
      tableView3 = [(WDClinicalOnboardingViewController *)self tableView];
      safeAreaLayoutGuide3 = [tableView3 safeAreaLayoutGuide];
      topAnchor4 = [safeAreaLayoutGuide3 topAnchor];
      v42 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v60[1] = v42;
      bottomAnchor3 = [(UIView *)self->_noContentParentView bottomAnchor];
      tableView4 = [(WDClinicalOnboardingViewController *)self tableView];
      safeAreaLayoutGuide4 = [tableView4 safeAreaLayoutGuide];
      bottomAnchor4 = [safeAreaLayoutGuide4 bottomAnchor];
      v27 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v60[2] = v27;
      leadingAnchor3 = [(UIView *)self->_noContentParentView leadingAnchor];
      tableView5 = [(WDClinicalOnboardingViewController *)self tableView];
      leadingAnchor4 = [tableView5 leadingAnchor];
      v31 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v60[3] = v31;
      trailingAnchor3 = [(UIView *)self->_noContentParentView trailingAnchor];
      tableView6 = [(WDClinicalOnboardingViewController *)self tableView];
      trailingAnchor4 = [tableView6 trailingAnchor];
      v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v60[4] = v35;
      v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:5];
      [v41 activateConstraints:v36];
    }

    viewCopy = v58;
  }

  else
  {
    [(UIView *)self->_noContentParentView removeFromSuperview];
  }
}

- (BOOL)showingNoLocations
{
  superview = [(_UIContentUnavailableView *)self->_noLocationsView superview];
  v3 = superview != 0;

  return v3;
}

- (id)_createNoLocationsView
{
  v3 = objc_alloc(MEMORY[0x1E69DD418]);
  v4 = HRLocalizedString(@"HEALTH_RECORDS_ONBOARDING_NO_LOCATIONS_FOUND");
  v5 = [v3 initWithFrame:v4 title:0 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  _providerNotFoundExplanationMessage = [(WDClinicalOnboardingViewController *)self _providerNotFoundExplanationMessage];
  [v5 setMessage:_providerNotFoundExplanationMessage];

  LODWORD(v7) = 1148846080;
  [v5 setContentCompressionResistancePriority:1 forAxis:v7];

  return v5;
}

- (void)_showNoLocationsViewIfNeeded
{
  if ([(WDClinicalOnboardingViewController *)self hasSearchResults])
  {

    [(WDClinicalOnboardingViewController *)self _hideNoLocationsView];
  }

  else
  {
    superview = [(_UIContentUnavailableView *)self->_noLocationsView superview];

    if (!superview)
    {
      if (self->_noLocationsView)
      {
        [(WDClinicalOnboardingViewController *)self setNoLocationsView:?];
      }

      else
      {
        _createNoLocationsView = [(WDClinicalOnboardingViewController *)self _createNoLocationsView];
        [(WDClinicalOnboardingViewController *)self setNoLocationsView:_createNoLocationsView];
      }

      noLocationsView = self->_noLocationsView;

      [(WDClinicalOnboardingViewController *)self _showNoContentView:noLocationsView];
    }
  }
}

- (BOOL)showingMainSpinner
{
  superview = [(HRWDSpinnerView *)self->_spinnerView superview];
  v3 = superview != 0;

  return v3;
}

- (id)_createSpinnerView
{
  v2 = objc_alloc_init(HRWDSpinnerView);
  [(HRWDSpinnerView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = HRLocalizedString(@"LOADING_NO_ELLIPSIS");
  [(HRWDSpinnerView *)v2 setMessageWhileSpinning:v3];

  v4 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD80] variant:1024];
  [(HRWDSpinnerView *)v2 setMessageFont:v4];

  return v2;
}

- (void)_showSpinnerView
{
  superview = [(HRWDSpinnerView *)self->_spinnerView superview];

  if (!superview)
  {
    if (self->_spinnerView)
    {
      [(WDClinicalOnboardingViewController *)self setSpinnerView:?];
    }

    else
    {
      _createSpinnerView = [(WDClinicalOnboardingViewController *)self _createSpinnerView];
      [(WDClinicalOnboardingViewController *)self setSpinnerView:_createSpinnerView];
    }

    [(WDClinicalOnboardingViewController *)self _showNoContentView:self->_spinnerView];
    spinnerView = self->_spinnerView;

    [(HRWDSpinnerView *)spinnerView startSpinner];
  }
}

- (void)_hideSpinnerView
{
  [(HRWDSpinnerView *)self->_spinnerView stopSpinner];

  [(WDClinicalOnboardingViewController *)self _showNoContentView:0];
}

- (BOOL)showingNoGeoView
{
  superview = [(WDClinicalOnboardingNoGeoView *)self->_noGeoView superview];
  v3 = superview != 0;

  return v3;
}

- (id)_createNoGeoView
{
  v2 = objc_alloc_init(WDClinicalOnboardingNoGeoView);
  [(WDClinicalOnboardingNoGeoView *)v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

- (void)_showNoGeoView
{
  superview = [(WDClinicalOnboardingNoGeoView *)self->_noGeoView superview];

  if (!superview)
  {
    if (self->_noGeoView)
    {
      [(WDClinicalOnboardingViewController *)self setNoGeoView:?];
    }

    else
    {
      _createNoGeoView = [(WDClinicalOnboardingViewController *)self _createNoGeoView];
      [(WDClinicalOnboardingViewController *)self setNoGeoView:_createNoGeoView];
    }

    noGeoView = self->_noGeoView;

    [(WDClinicalOnboardingViewController *)self _showNoContentView:noGeoView];
  }
}

- (WDClinicalSampleAccountsLoader)sampleAccountsLoader
{
  sampleAccountsLoader = self->_sampleAccountsLoader;
  if (!sampleAccountsLoader)
  {
    v4 = [[WDClinicalSampleAccountsLoader alloc] initWithProfile:self->_profile];
    [(WDClinicalOnboardingViewController *)self setSampleAccountsLoader:v4];

    sampleAccountsLoader = self->_sampleAccountsLoader;
  }

  return sampleAccountsLoader;
}

- (void)_beginLoadingAlreadyConnectedAccountsIfNecessary
{
  selfCopy = self;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __86__WDClinicalOnboardingViewController__beginLoadingAlreadyConnectedAccountsIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__WDClinicalOnboardingViewController__beginLoadingAlreadyConnectedAccountsIfNecessary__block_invoke_2;
  block[3] = &unk_1E83DCB88;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __86__WDClinicalOnboardingViewController__beginLoadingAlreadyConnectedAccountsIfNecessary__block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  objc_copyWeak(&to, (a1 + 48));
  if (*(a1 + 32))
  {
    _HKInitializeLogging();
    v2 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = HKSensitiveLogItem();
      *buf = 138543618;
      v23 = v5;
      v24 = 2114;
      v25 = v6;
      _os_log_error_impl(&dword_1D101F000, v2, OS_LOG_TYPE_ERROR, "%{public}@: failed fetching all accounts: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEBUG))
    {
      v8 = v7;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = objc_loadWeakRetained((a1 + 48));
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        __86__WDClinicalOnboardingViewController__beginLoadingAlreadyConnectedAccountsIfNecessary__block_invoke_2_cold_1(v11, buf, v8, v9);
      }
    }

    v12 = [*(a1 + 40) hk_filter:&__block_literal_global_443];
    v2 = [v12 sortedArrayUsingComparator:&__block_literal_global_447];

    v13 = objc_loadWeakRetained(&to);
    [v13 setAlreadyConnectedAccounts:v2];

    v14 = [v2 hk_mapToSet:&__block_literal_global_450];
    v15 = objc_loadWeakRetained(&to);
    [v15 setAlreadyConnectedBrands:v14];

    v16 = [*(a1 + 40) hk_filter:&__block_literal_global_452];
    v17 = [v16 hk_map:&__block_literal_global_454];

    v18 = [MEMORY[0x1E695DFD8] setWithArray:v17];
    v19 = objc_loadWeakRetained(&to);
    [v19 setAlreadySharingBrands:v18];

    v20 = objc_loadWeakRetained(&to);
    [v20 reloadData];
  }

  objc_destroyWeak(&to);
}

uint64_t __86__WDClinicalOnboardingViewController__beginLoadingAlreadyConnectedAccountsIfNecessary__block_invoke_2_444(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 title];
  v6 = [v4 title];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_presentLoginForAlreadyConnectedAccount:(id)account
{
  accountCopy = account;
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEBUG))
  {
    [(WDClinicalOnboardingViewController *)v5 _presentLoginForAlreadyConnectedAccount:accountCopy];
  }

  objc_initWeak(&location, self);
  clinicalSourcesDataProvider = [(HRProfile *)self->_profile clinicalSourcesDataProvider];
  profile = self->_profile;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__WDClinicalOnboardingViewController__presentLoginForAlreadyConnectedAccount___block_invoke;
  v9[3] = &unk_1E83DCBD8;
  v8 = accountCopy;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  [clinicalSourcesDataProvider beginReloginSessionForAccount:v8 fromViewController:self profile:profile loginCancelledHandler:0 errorHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __78__WDClinicalOnboardingViewController__presentLoginForAlreadyConnectedAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HRViewControllerFactory shared];
  v5 = [*(a1 + 32) gateway];
  v7 = [v4 makeFailedToOnboardAccountAlertControllerToGateway:v5 error:v3];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentViewController:v7 animated:1 completion:0];
}

- (void)_proceedWithAlreadyConnectedAccount:(id)account
{
  v13[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEBUG))
  {
    [(WDClinicalOnboardingViewController *)v5 _proceedWithAlreadyConnectedAccount:?];
  }

  v6 = +[_TtC15HealthRecordsUI39OAuthCompletionNotificationUserInfoKeys account];
  v12 = v6;
  v13[0] = accountCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v8 = MEMORY[0x1E696AD80];
  oAuthCompletionNotification = [MEMORY[0x1E696AD80] OAuthCompletionNotification];
  v10 = [v8 notificationWithName:oAuthCompletionNotification object:self userInfo:v7];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotification:v10];
}

- (void)dismiss:(id)dismiss
{
  dismissalViewController = [(WDClinicalOnboardingViewController *)self dismissalViewController];

  if (dismissalViewController)
  {
    [(WDClinicalOnboardingViewController *)self dismissalViewController];
  }

  else
  {
    [(WDClinicalOnboardingViewController *)self navigationController];
  }
  v5 = ;
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)_presentError:(id)error
{
  errorCopy = error;
  _HKInitializeLogging();
  v5 = *MEMORY[0x1E696B948];
  if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
  {
    [WDClinicalOnboardingViewController _presentError:v5];
  }

  v6 = HRLocalizedString(@"HEALTH_RECORDS_PROVIDER_SERVICE_ERROR_TITLE");
  v7 = HRLocalizedString(@"HEALTH_RECORDS_PROVIDER_SERVICE_ERROR_ONBOARDING_SEARCH");
  domain = [errorCopy domain];
  v9 = [domain isEqualToString:*MEMORY[0x1E696A978]];

  if (v9)
  {
    code = [errorCopy code];
    if (code == -1009)
    {
      v11 = @"HEALTH_RECORDS_ERROR_NO_CONNECTION_TO_INTERNET";
      goto LABEL_9;
    }

    if (code == -1003 && [MEMORY[0x1E696C608] isAppleInternalInstall])
    {
      v11 = @"HEALTH_RECORDS_ERROR_REQUIRES_INTERNAL_NETWORK";
LABEL_9:
      v12 = HRLocalizedString(v11);

      v7 = v12;
    }
  }

  presentedViewController = [(WDClinicalOnboardingViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    v14 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v6 message:v7 preferredStyle:1];
    v15 = MEMORY[0x1E69DC648];
    v16 = HBXLocalizedString(@"OK");
    v17 = [v15 actionWithTitle:v16 style:0 handler:0];

    [v14 addAction:v17];
    [(WDClinicalOnboardingViewController *)self presentViewController:v14 animated:1 completion:0];
  }
}

- (void)_suggestNewProviders
{
  v5 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Suggest New Providers" message:@"Let the team know which healthcare providers you would like to see supported by filing a Radar." preferredStyle:1];
  v3 = [MEMORY[0x1E69DC648] actionWithTitle:@"Cancel" style:1 handler:0];
  v4 = [MEMORY[0x1E69DC648] actionWithTitle:@"File Radar" style:0 handler:&__block_literal_global_492];
  [v5 addAction:v4];
  [v5 addAction:v3];
  [(WDClinicalOnboardingViewController *)self presentViewController:v5 animated:1 completion:0];
}

void __58__WDClinicalOnboardingViewController__suggestNewProviders__block_invoke()
{
  v1 = [MEMORY[0x1E695DFF8] hk_tapToHealthRadarURLForComponent:938492 title:@"[HealthcareProviderSuggestion] " description:@"It would be great to also see support for these healthcare providers:\n1. " classification:9 reproducibility:6 keywords:0 autoDiagnostics:0 attachments:0];
  v0 = [MEMORY[0x1E6963608] defaultWorkspace];
  [v0 openURL:v1 configuration:0 completionHandler:&__block_literal_global_503];
}

void __58__WDClinicalOnboardingViewController__suggestNewProviders__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (!a2)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      __58__WDClinicalOnboardingViewController__suggestNewProviders__block_invoke_2_cold_1();
    }
  }
}

- (id)_changeEnvironmentMenuElements
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = HKHealthRecordsEnvironmentsLogicallySorted();
  for (i = 0; i != 112; i += 8)
  {
    v6 = *(v4 + i);
    v7 = HKHealthRecordsNameForEnvironment();
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__WDClinicalOnboardingViewController__changeEnvironmentMenuElements__block_invoke;
    v11[3] = &unk_1E83DCC40;
    v11[4] = self;
    v11[5] = v6;
    v8 = [MEMORY[0x1E69DC628] actionWithTitle:v7 image:0 identifier:0 handler:v11];
    [v3 addObject:v8];
  }

  v9 = [v3 copy];

  return v9;
}

- (void)_changeEnvironment:(int64_t)environment
{
  if ([MEMORY[0x1E696C608] isAppleInternalInstall])
  {
    objc_initWeak(&location, self);
    providerServiceStore = self->_providerServiceStore;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__WDClinicalOnboardingViewController__changeEnvironment___block_invoke;
    v6[3] = &unk_1E83DCC90;
    objc_copyWeak(v7, &location);
    v7[1] = environment;
    [(HKClinicalProviderServiceStore *)providerServiceStore setHealthRecordsEnvironment:environment completion:v6];
    objc_destroyWeak(v7);
    objc_destroyWeak(&location);
  }
}

void __57__WDClinicalOnboardingViewController__changeEnvironment___block_invoke(uint64_t a1, char a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x1E696B948];
  v7 = *MEMORY[0x1E696B948];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v6;
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v10 = objc_opt_class();
      v11 = v10;
      v12 = HKHealthRecordsNameForEnvironment();
      *buf = 138543618;
      v20 = v10;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_1D101F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ did update environment to %{public}@", buf, 0x16u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__WDClinicalOnboardingViewController__changeEnvironment___block_invoke_505;
    block[3] = &unk_1E83DCC68;
    objc_copyWeak(&v18, (a1 + 32));
    v13 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v14 = dispatch_time(0, 1000000000);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__WDClinicalOnboardingViewController__changeEnvironment___block_invoke_2;
    v15[3] = &unk_1E83DCC68;
    objc_copyWeak(&v16, (a1 + 32));
    dispatch_after(v14, v13, v15);

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __57__WDClinicalOnboardingViewController__changeEnvironment___block_invoke_cold_1(a1, v6);
  }
}

void __57__WDClinicalOnboardingViewController__changeEnvironment___block_invoke_505(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureRightNavigationItems];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _showSpinnerView];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 reloadData];
}

void __57__WDClinicalOnboardingViewController__changeEnvironment___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetCacheAndReloadData];
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  sections = [(HRUITableViewSectionConfiguration *)self->_sectionConfiguration sections];
  v6 = [sections objectAtIndexedSubscript:section];

  headerString = [v6 headerString];
  v8 = [headerString length];

  if (v8)
  {
    v9 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    v9 = 10.0;
  }

  return v9;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sections = [(HRUITableViewSectionConfiguration *)self->_sectionConfiguration sections];
  v6 = [sections objectAtIndexedSubscript:section];
  headerString = [v6 headerString];

  return headerString;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  spinnerIndexPath = self->_spinnerIndexPath;
  if (spinnerIndexPath && [(NSIndexPath *)spinnerIndexPath section]== section)
  {
    footerString = 0;
  }

  else
  {
    sections = [(HRUITableViewSectionConfiguration *)self->_sectionConfiguration sections];
    v10 = [sections objectAtIndexedSubscript:section];
    footerString = [v10 footerString];
  }

  return footerString;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  sections = [(HRUITableViewSectionConfiguration *)self->_sectionConfiguration sections];
  v4 = [sections count];

  return v4;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  sections = [(HRUITableViewSectionConfiguration *)self->_sectionConfiguration sections];
  v7 = [sections objectAtIndexedSubscript:section];

  identifier = [v7 identifier];
  if (![identifier isEqualToString:@"SupportedLocations"])
  {

    goto LABEL_5;
  }

  couldFetchAdditionalResults = [(WDClinicalOnboardingViewController *)self couldFetchAdditionalResults];

  if (!couldFetchAdditionalResults)
  {
LABEL_5:
    estimatedNumRows = [v7 estimatedNumRows];
    integerValue = [estimatedNumRows integerValue];
    goto LABEL_6;
  }

  v10 = MEMORY[0x1E696AC88];
  estimatedNumRows2 = [v7 estimatedNumRows];
  v12 = [v10 indexPathForRow:objc_msgSend(estimatedNumRows2 inSection:{"integerValue"), section}];
  [(WDClinicalOnboardingViewController *)self setSpinnerIndexPath:v12];

  estimatedNumRows = [v7 estimatedNumRows];
  integerValue = [estimatedNumRows integerValue] + 1;
LABEL_6:

  return integerValue;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v5 = MEMORY[0x1E69DC888];
  cellCopy = cell;
  secondarySystemBackgroundColor = [v5 secondarySystemBackgroundColor];
  [cellCopy setBackgroundColor:secondarySystemBackgroundColor];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  spinnerIndexPath = [(WDClinicalOnboardingViewController *)self spinnerIndexPath];
  v9 = [pathCopy isEqual:spinnerIndexPath];

  if (v9)
  {
    v10 = +[HRWDSpinnerTableViewCell defaultReuseIdentifier];
    v11 = [viewCopy dequeueReusableCellWithIdentifier:v10 forIndexPath:pathCopy];
  }

  else
  {
    v10 = [(WDClinicalOnboardingViewController *)self accountSearchResultAtIndexPath:pathCopy];
    if (v10)
    {
      v11 = [viewCopy dequeueReusableCellWithIdentifier:@"AlreadyConnectedCell" forIndexPath:pathCopy];
      [v11 setSelectionStyle:3];
      [v11 setAccessoryType:1];
      clinicalSourcesDataProvider = [(HRProfile *)self->_profile clinicalSourcesDataProvider];
      [v11 setBrandable:v10 dataProvider:clinicalSourcesDataProvider];
    }

    else
    {
      v13 = [(WDClinicalOnboardingViewController *)self providerSearchResultAtIndexPath:pathCopy];
      if (!v13)
      {
        _HKInitializeLogging();
        v14 = *MEMORY[0x1E696B948];
        if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
        {
          [WDClinicalOnboardingViewController tableView:v14 cellForRowAtIndexPath:?];
        }
      }

      v11 = [viewCopy dequeueReusableCellWithIdentifier:@"SearchResultCell" forIndexPath:pathCopy];
      clinicalSourcesDataProvider2 = [(HRProfile *)self->_profile clinicalSourcesDataProvider];
      [v11 setSearchResult:v13 dataProvider:clinicalSourcesDataProvider2 searchTerms:self->_searchTerms];

      [v11 setSelectionStyle:3];
    }
  }

  return v11;
}

- (id)providerSearchResultAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(HRUITableViewSectionConfiguration *)self->_sectionConfiguration sections];
  v6 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  identifier = [v6 identifier];
  if (identifier == @"SupportedLocations" || (v8 = identifier, [v6 identifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"SupportedLocations"), v9, v8, (v10 & 1) != 0))
  {
    v11 = &OBJC_IVAR___WDClinicalOnboardingViewController__supportedSearchResults;
LABEL_10:
    v20 = *(&self->super.super.super.super.super.isa + *v11);
    goto LABEL_11;
  }

  identifier2 = [v6 identifier];
  if (identifier2 == @"AlreadySharing" || (v13 = identifier2, [v6 identifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"AlreadySharing"), v14, v13, (v15 & 1) != 0))
  {
    v11 = &OBJC_IVAR___WDClinicalOnboardingViewController__alreadySharingSearchResults;
    goto LABEL_10;
  }

  identifier3 = [v6 identifier];
  if (identifier3 == @"UnsupportedLocations" || (v17 = identifier3, [v6 identifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"UnsupportedLocations"), v18, v17, v19))
  {
    v11 = &OBJC_IVAR___WDClinicalOnboardingViewController__unsupportedSearchResults;
    goto LABEL_10;
  }

  v20 = 0;
LABEL_11:
  v21 = [pathCopy row];
  if (v21 >= [v20 count])
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      [WDClinicalOnboardingViewController providerSearchResultAtIndexPath:];
    }

    v23 = 0;
  }

  else
  {
    v22 = [v20 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (id)accountSearchResultAtIndexPath:(id)path
{
  pathCopy = path;
  sections = [(HRUITableViewSectionConfiguration *)self->_sectionConfiguration sections];
  v6 = [sections objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];

  identifier = [v6 identifier];
  if (identifier == @"SupportedLocations" || (v8 = identifier, [v6 identifier], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", @"SupportedLocations"), v9, v8, (v10 & 1) != 0))
  {
    v11 = &OBJC_IVAR___WDClinicalOnboardingViewController__supportedSearchResults;
LABEL_7:
    v16 = *(&self->super.super.super.super.super.isa + *v11);
    goto LABEL_8;
  }

  identifier2 = [v6 identifier];
  if (identifier2 == @"UnsupportedLocations" || (v13 = identifier2, [v6 identifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"UnsupportedLocations"), v14, v13, v15))
  {
    v11 = &OBJC_IVAR___WDClinicalOnboardingViewController__unsupportedSearchResults;
    goto LABEL_7;
  }

  v16 = 0;
LABEL_8:
  v17 = [pathCopy row];
  if (v17 >= [v16 count])
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
    {
      [WDClinicalOnboardingViewController providerSearchResultAtIndexPath:];
    }

    v19 = 0;
  }

  else
  {
    v18 = [v16 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  v6 = v5;
  [scrollCopy frame];
  v8 = v6 + v7;
  [scrollCopy contentSize];
  v10 = v9;

  if (v8 >= v10 - (*MEMORY[0x1E69DE3D8] + *MEMORY[0x1E69DE3D8]) && [(WDClinicalOnboardingViewController *)self couldFetchAdditionalResults]&& ![(WDClinicalOnboardingViewController *)self searchInFlight])
  {
    searchQuery = [(WDClinicalOnboardingViewController *)self searchQuery];
    [(WDClinicalOnboardingViewController *)self _searchResultsForQuery:searchQuery from:[(WDClinicalOnboardingViewController *)self nextFrom]];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(WDClinicalOnboardingViewController *)self accountSearchResultAtIndexPath:pathCopy];
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B948];
    if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEBUG))
    {
      [(WDClinicalOnboardingViewController *)v7 tableView:v6 didSelectRowAtIndexPath:?];
    }

    if ([v6 needsLoginToEnableClinicalSharing])
    {
      [(WDClinicalOnboardingViewController *)self _presentLoginForAlreadyConnectedAccount:v6];
      tableView = [(WDClinicalOnboardingViewController *)self tableView];
      [tableView deselectRowAtIndexPath:pathCopy animated:1];
    }

    else
    {
      [(WDClinicalOnboardingViewController *)self _proceedWithAlreadyConnectedAccount:v6];
    }
  }

  else
  {
    v9 = [(WDClinicalOnboardingViewController *)self providerSearchResultAtIndexPath:pathCopy];
    if (v9)
    {
      if ([(WDClinicalOnboardingViewController *)self _isSimulator])
      {
        sampleAccountsLoader = [(WDClinicalOnboardingViewController *)self sampleAccountsLoader];
        [(HRProfile *)self->_profile setClinicalSampleAccountsLoader:sampleAccountsLoader];
      }

      _HKInitializeLogging();
      v11 = *MEMORY[0x1E696B948];
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_DEBUG))
      {
        [WDClinicalOnboardingViewController tableView:v11 didSelectRowAtIndexPath:?];
      }

      v12 = [[WDClinicalProviderDetailsViewController alloc] initWithProfile:self->_profile searchResult:v9];
      [(WDClinicalOnboardingViewController *)self showViewController:v12 sender:self];
    }

    else
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x1E696B948];
      if (os_log_type_enabled(*MEMORY[0x1E696B948], OS_LOG_TYPE_ERROR))
      {
        [WDClinicalOnboardingViewController tableView:v13 didSelectRowAtIndexPath:?];
      }
    }
  }
}

- (NSLayoutConstraint)noContentTopConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_noContentTopConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)noContentBottomConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_noContentBottomConstraint);

  return WeakRetained;
}

- (UIViewController)dismissalViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_dismissalViewController);

  return WeakRetained;
}

void __70__WDClinicalOnboardingViewController__loadGatewayProxyForDeeplinking___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  OUTLINED_FUNCTION_5();
  v4 = HKSensitiveLogItem();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9(&dword_1D101F000, v5, v6, "Failed to fetch remote gateway, error: %@", v7, v8, v9, v10, v11);
}

- (void)locationManagerDidChangeAuthorization:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_5();
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_3(&dword_1D101F000, v5, v6, "%{public}@ requesting current location", v7, v8, v9, v10, v11);
}

- (void)locationManager:(void *)a1 didUpdateLocations:.cold.1(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_5();
  objc_opt_class();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_3(&dword_1D101F000, v5, v6, "%{public}@ received current location", v7, v8, v9, v10, v11);
}

void __86__WDClinicalOnboardingViewController__beginLoadingAlreadyConnectedAccountsIfNecessary__block_invoke_2_cold_1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1D101F000, log, OS_LOG_TYPE_DEBUG, "%{public}@: successfully fetched all accounts", buf, 0xCu);
}

- (void)_presentLoginForAlreadyConnectedAccount:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a3 identifier];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x16u);
}

- (void)_proceedWithAlreadyConnectedAccount:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a1;
  OUTLINED_FUNCTION_8();
  v5 = objc_opt_class();
  NSStringFromClass(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_5() identifier];
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(&dword_1D101F000, v2, OS_LOG_TYPE_DEBUG, "%{public}@: proceeding with account %{public}@", v7, 0x16u);
}

- (void)_presentError:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9(&dword_1D101F000, v4, v5, "onboarding search error: %{public}@", v6, v7, v8, v9, v10);
}

void __57__WDClinicalOnboardingViewController__changeEnvironment___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4(&dword_1D101F000, v7, v8, "%{public}@ failed to update environment: %{public}@", v9, v10, v11, v12, v13);
}

- (void)tableView:(void *)a1 cellForRowAtIndexPath:.cold.1(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_8();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1D101F000, v5, v6, "%{public}@ neither an account nor a provider search result at index path %{public}@, attempting to continue", v7, v8, v9, v10, v11);
}

- (void)tableView:(void *)a3 didSelectRowAtIndexPath:.cold.1(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = objc_opt_class();
  NSStringFromClass(v6);
  objc_claimAutoreleasedReturnValue();
  v12 = [OUTLINED_FUNCTION_8() identifier];
  [a3 needsLoginToEnableClinicalSharing];
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x1Cu);
}

- (void)tableView:(void *)a1 didSelectRowAtIndexPath:.cold.2(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_5();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1D101F000, v5, v6, "%{public}@: showing provider details view controller", v7, v8, v9, v10, v11);
}

- (void)tableView:(void *)a1 didSelectRowAtIndexPath:.cold.3(void *a1)
{
  v2 = a1;
  OUTLINED_FUNCTION_8();
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1D101F000, v5, v6, "%{public}@: tappable search result at %{public}@ is nil", v7, v8, v9, v10, v11);
}

@end