@interface DBDashboardHomeViewController
- (BOOL)_isACBackEnabled;
- (BOOL)_onTodaysPage;
- (BOOL)_onWidgetsPage;
- (BOOL)_shouldHideTodayView;
- (BOOL)iconCanDisplayBadge:(id)a3;
- (BOOL)iconManager:(id)a3 allowsBadgingForIcon:(id)a4;
- (BOOL)isIconVisible:(id)a3;
- (BOOL)isIconVisibleForIdentifier:(id)a3;
- (CRSWidgetLayoutVehicleDataProviding)widgetLayoutDataProvider;
- (DBDashboardHomeViewController)initWithEnvironment:(id)a3 windowScene:(id)a4 layoutEngine:(id)a5;
- (DBEnvironment)environment;
- (NSArray)allApplicationIcons;
- (UIWindowScene)windowScene;
- (double)_maxWidgetDimmingViewAlpha;
- (double)pageControlPlatterAlphaForPageIndex:(unint64_t)a3;
- (double)widgetDimmingViewAlphaForPageIndex:(unint64_t)a3;
- (id)_iconViewForIndexpath:(id)a3;
- (id)_indexPathForFallbackIcon:(BOOL)a3;
- (id)_linearFocusMovementSequences;
- (id)_preferredFocusedIcon;
- (id)defaultIconStateForIconManager:(id)a3;
- (id)folderController;
- (id)folderController:(id)a3 iconListView:(id)a4 iconDropSessionDidUpdate:(id)a5;
- (id)folderView;
- (id)iconForIdentifier:(id)a3;
- (id)preferredFocusEnvironments;
- (id)visibleIconViewForIdentifier:(id)a3;
- (int64_t)_pageIndexForPageType:(unint64_t)a3;
- (int64_t)_todayLeadingPageIndex;
- (int64_t)_todayPageIndex;
- (int64_t)_widgetsLeadingPageIndex;
- (int64_t)_widgetsPageIndex;
- (int64_t)defaultStartPageIndex;
- (unint64_t)_pageType;
- (void)_cacheIconImagesForCurrentTraitCollection;
- (void)_handleAppLibraryRefresh;
- (void)_handleBackActionSupportACBack:(BOOL)a3;
- (void)_invalidateBadgeForIdentifier:(id)a3;
- (void)_launchAppLink:(id)a3;
- (void)_launchNowPlaying;
- (void)_persistCachedIconImages;
- (void)_resetIconStateIfNecessary;
- (void)_setACBackDisabled:(BOOL)a3 forRequester:(id)a4;
- (void)_setStatusBarOverrideActive:(BOOL)a3;
- (void)_setupIconModelWithRelayout:(BOOL)a3;
- (void)_wheelChangedWithEvent:(id)a3;
- (void)_widgetHomeVCLayoutStateDidChange:(id)a3;
- (void)addPageChangeObserver:(id)a3;
- (void)allApplicationIcons;
- (void)appLinkManager:(id)a3 didAddAppLinks:(id)a4 didRemoveAppLinks:(id)a5;
- (void)applicationController:(id)a3 addedApplications:(id)a4 updatedApplications:(id)a5 removedApplications:(id)a6;
- (void)currentPageIndexDidChange;
- (void)dataStoreMonitor:(id)a3 didUpdateApplication:(id)a4 forKey:(id)a5;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)folderControllerDidEndScrolling:(id)a3;
- (void)folderControllerWillBeginScrolling:(id)a3;
- (void)getApplicationIconInformationForBundleID:(id)a3 drawBorder:(BOOL)a4 completion:(id)a5;
- (void)getIconStateWithCompletion:(id)a3;
- (void)handleEvent:(id)a3;
- (void)iconBadgeController:(id)a3 didUpdateForIdentifiers:(id)a4;
- (void)iconManager:(id)a3 launchIconForIconView:(id)a4;
- (void)iconManager:(id)a3 willUseRootFolderControllerConfiguration:(id)a4;
- (void)invalidate;
- (void)loadView;
- (void)removePageChangeObserver:(id)a3;
- (void)resetIconState;
- (void)restartPageControlTimerIfNecessary;
- (void)rootFolderPageStateProvider:(id)a3 didContinueTransitionToState:(int64_t)a4 progress:(double)a5;
- (void)rootFolderPageStateProvider:(id)a3 didEndTransitionFromState:(int64_t)a4 toState:(int64_t)a5 successfully:(BOOL)a6;
- (void)rootFolderPageStateProvider:(id)a3 willBeginTransitionToState:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6;
- (void)setAccessibilityElementsActive:(BOOL)a3;
- (void)setActive:(BOOL)a3;
- (void)setCurrentPageIndex:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setCurrentPageType:(unint64_t)a3 animated:(BOOL)a4;
- (void)setForeground:(BOOL)a3;
- (void)setIconState:(id)a3;
- (void)setLeadingCustomViewPageHidden:(BOOL)a3 atIndex:(int64_t)a4;
- (void)updateDefaultPageIndex;
- (void)userInterfaceStyleChanged;
- (void)viewDidLoad;
- (void)workspace:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5;
@end

@implementation DBDashboardHomeViewController

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (BOOL)_onWidgetsPage
{
  v2 = self;
  v3 = [(DBDashboardHomeViewController *)self folderController];
  v4 = [v3 currentPageIndex];
  LOBYTE(v2) = v4 == [(DBDashboardHomeViewController *)v2 _widgetsPageIndex];

  return v2;
}

- (id)folderController
{
  objc_opt_class();
  v3 = [(DBDashboardHomeViewController *)self iconManager];
  v4 = [v3 rootFolderController];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)_widgetsPageIndex
{
  if ([(DBDashboardHomeViewController *)self _widgetsLeadingPageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [(DBDashboardHomeViewController *)self folderController];
  v5 = [v4 pageIndexForLeadingCustomPageIndex:{-[DBDashboardHomeViewController _widgetsLeadingPageIndex](self, "_widgetsLeadingPageIndex")}];

  return v5;
}

- (int64_t)_widgetsLeadingPageIndex
{
  v3 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  if (v3)
  {
    v4 = [(DBDashboardHomeViewController *)self folderController];
    v5 = [v4 leadingCustomViewControllers];
    v6 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    v7 = [v5 indexOfObject:v6];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (BOOL)_onTodaysPage
{
  v2 = self;
  v3 = [(DBDashboardHomeViewController *)self folderController];
  v4 = [v3 currentPageIndex];
  LOBYTE(v2) = v4 == [(DBDashboardHomeViewController *)v2 _todayPageIndex];

  return v2;
}

- (int64_t)_todayPageIndex
{
  if ([(DBDashboardHomeViewController *)self _todayLeadingPageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = [(DBDashboardHomeViewController *)self folderController];
  v5 = [v4 pageIndexForLeadingCustomPageIndex:{-[DBDashboardHomeViewController _todayLeadingPageIndex](self, "_todayLeadingPageIndex")}];

  return v5;
}

- (int64_t)_todayLeadingPageIndex
{
  v3 = [(DBDashboardHomeViewController *)self folderController];
  v4 = [v3 leadingCustomViewControllers];
  v5 = [(DBDashboardHomeViewController *)self todayViewController];
  v6 = [v4 indexOfObject:v5];

  return v6;
}

- (DBDashboardHomeViewController)initWithEnvironment:(id)a3 windowScene:(id)a4 layoutEngine:(id)a5
{
  v63[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v61.receiver = self;
  v61.super_class = DBDashboardHomeViewController;
  v11 = [(DBDashboardHomeViewController *)&v61 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285ADE298];
    pageObservers = v11->_pageObservers;
    v11->_pageObservers = v12;

    v11->_isApplicationPresented = 0;
    v14 = [v8 environmentConfiguration];
    v15 = [v14 iconBadgeController];
    iconBadgeController = v11->_iconBadgeController;
    v11->_iconBadgeController = v15;

    [(DBIconBadgeController *)v11->_iconBadgeController addObserver:v11];
    objc_storeWeak(&v11->_environment, v8);
    objc_storeWeak(&v11->_windowScene, v9);
    objc_storeStrong(&v11->_layoutEngine, a5);
    v17 = [v8 environmentConfiguration];
    v18 = [v17 iconImageCache];
    iconImageCache = v11->_iconImageCache;
    v11->_iconImageCache = v18;

    v20 = [v8 environmentConfiguration];
    [v20 addObserver:v11];

    v21 = [objc_alloc(MEMORY[0x277CF9348]) initForStandByScreen];
    statusBarStyleAssertion = v11->_statusBarStyleAssertion;
    v11->_statusBarStyleAssertion = v21;

    v23 = [DBTodayViewController alloc];
    WeakRetained = objc_loadWeakRetained(&v11->_environment);
    v25 = [(DBTodayViewController *)v23 initWithEnvironment:WeakRetained layoutEngine:v10];
    todayViewController = v11->_todayViewController;
    v11->_todayViewController = v25;

    v27 = objc_loadWeakRetained(&v11->_environment);
    v28 = [v27 environmentConfiguration];
    v29 = [v28 session];
    v30 = [v29 configuration];
    v31 = [v30 lodWidgetsMode];

    if (v31 != 1)
    {
      v32 = [_TtC9DashBoard26DBWidgetHomeViewController alloc];
      v33 = objc_loadWeakRetained(&v11->_environment);
      v34 = [(DBWidgetHomeViewController *)v32 initWithEnvironment:v33 layoutEngine:v10];
      widgetHomeViewController = v11->_widgetHomeViewController;
      v11->_widgetHomeViewController = v34;

      v36 = [MEMORY[0x277CCAB98] defaultCenter];
      [v36 addObserver:v11 selector:sel__widgetHomeVCLayoutStateDidChange_ name:@"DBWidgetHomeVCLayoutStateChangedNotification" object:0];
    }

    v37 = [(DBDashboardHomeViewController *)v11 environment];
    v38 = [v37 environmentConfiguration];
    v39 = [v38 isVehicleDataSession];

    if (v39)
    {
      v40 = [DBAppLinkManager alloc];
      v41 = [(DBDashboardHomeViewController *)v11 environment];
      v42 = [v41 environmentConfiguration];
      v43 = [v42 session];
      v44 = [(DBAppLinkManager *)v40 initWithSession:v43];
      appLinkManager = v11->_appLinkManager;
      v11->_appLinkManager = v44;
    }

    v46 = +[DBApplicationController sharedInstance];
    [v46 addObserver:v11];

    v47 = objc_alloc_init(MEMORY[0x277D0ACA0]);
    dataStoreMonitor = v11->_dataStoreMonitor;
    v11->_dataStoreMonitor = v47;

    [(FBSApplicationDataStoreMonitor *)v11->_dataStoreMonitor addObserver:v11];
    v49 = [DBNowPlayingObserver alloc];
    v50 = [(DBDashboardHomeViewController *)v11 environment];
    v51 = [v50 environmentConfiguration];
    v52 = [(DBNowPlayingObserver *)v49 initWithEnvironmentConfiguration:v51];
    nowPlayingObserver = v11->_nowPlayingObserver;
    v11->_nowPlayingObserver = v52;

    v54 = objc_opt_self();
    v63[0] = v54;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
    v56 = [(DBDashboardHomeViewController *)v11 registerForTraitChanges:v55 withAction:sel_userInterfaceStyleChanged];

    v57 = objc_opt_self();
    v62 = v57;
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
    v59 = [(DBDashboardHomeViewController *)v11 registerForTraitChanges:v58 withTarget:v11 action:sel__cacheIconImagesForCurrentTraitCollection];

    [(DBDashboardHomeViewController *)v11 userInterfaceStyleChanged];
  }

  return v11;
}

- (void)dealloc
{
  [(CRSUIStatusBarStyleAssertion *)self->_statusBarStyleAssertion invalidate];
  statusBarStyleAssertion = self->_statusBarStyleAssertion;
  self->_statusBarStyleAssertion = 0;

  v4.receiver = self;
  v4.super_class = DBDashboardHomeViewController;
  [(DBDashboardHomeViewController *)&v4 dealloc];
}

- (void)iconBadgeController:(id)a3 didUpdateForIdentifiers:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__DBDashboardHomeViewController_iconBadgeController_didUpdateForIdentifiers___block_invoke;
  v7[3] = &unk_278F014B8;
  v8 = v5;
  v9 = self;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t __77__DBDashboardHomeViewController_iconBadgeController_didUpdateForIdentifiers___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __77__DBDashboardHomeViewController_iconBadgeController_didUpdateForIdentifiers___block_invoke_2;
  v3[3] = &unk_278F03908;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __77__DBDashboardHomeViewController_iconBadgeController_didUpdateForIdentifiers___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) iconModel];
  v5 = [v4 leafIconForIdentifier:v3];

  [v5 noteBadgeDidChange];
  v6 = DBLogForCategory(0x10uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"valid";
    if (!v5)
    {
      v7 = @"NOT valid (nil)";
    }

    v8 = 138543618;
    v9 = v3;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_248146000, v6, OS_LOG_TYPE_DEFAULT, "Badge settings updated for %{public}@. The icon is %{public}@", &v8, 0x16u);
  }
}

- (void)_setupIconModelWithRelayout:(BOOL)a3
{
  v79 = a3;
  v82[4] = *MEMORY[0x277D85DE8];
  v4 = [(DBDashboardHomeViewController *)self iconManager];
  v5 = [v4 rootViewController];

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v7 = [WeakRetained environmentConfiguration];

  if (v5)
  {
    [v5 removeFromParentViewController];
    v8 = [v5 view];
    [v8 removeFromSuperview];
  }

  v9 = [(DBDashboardHomeViewController *)self environment];
  v10 = [v9 environmentConfiguration];
  [DBIconView setEnvironmentConfiguration:v10];

  v11 = [(DBDashboardHomeViewController *)self environment];
  v12 = [v11 environmentConfiguration];
  LODWORD(v10) = [v12 isVehicleDataSession];

  if (v10)
  {
    v13 = [(DBDashboardHomeViewController *)self appLinkManager];
    [v13 addObserver:self];
  }

  v14 = [DBIconModelStore alloc];
  v15 = [v7 vehicleID];
  v16 = [(DBIconModelStore *)v14 initWithVehicleId:v15];

  [v7 pointScale];
  [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
  v18 = v17;
  v20 = v19;
  v21 = [_TtC9DashBoard13DBIconManager alloc];
  v22 = objc_loadWeakRetained(&self->_environment);
  v23 = [(DBIconManager *)v21 initWithEnvironment:v22];
  iconManager = self->_iconManager;
  self->_iconManager = v23;

  [(SBHIconManager *)self->_iconManager setDelegate:self];
  v78 = v16;
  v25 = [[_TtC9DashBoard11DBIconModel alloc] initWithStore:v16 carApplicationDataSource:self];
  iconModel = self->_iconModel;
  self->_iconModel = v25;

  [(DBIconModel *)self->_iconModel setIconImageSize:v18, v20];
  v27 = self->_iconModel;
  v28 = objc_loadWeakRetained(&self->_environment);
  [(DBIconModel *)v27 setEnvironment:v28];

  [(SBHIconModel *)self->_iconModel reloadIcons];
  [(SBHIconManager *)self->_iconManager setIconModel:self->_iconModel];
  v80 = v7;
  v29 = [v7 navigationStateProvider];
  [v29 setIconProvider:self];

  [(DBDashboardHomeViewController *)self _persistCachedIconImages];
  v30 = [(DBDashboardHomeViewController *)self iconManager];
  v31 = [v30 rootViewController];

  [(DBDashboardHomeViewController *)self addChildViewController:v31];
  v32 = [(DBDashboardHomeViewController *)self view];
  v33 = [v31 view];
  [v32 addSubview:v33];

  [v31 didMoveToParentViewController:self];
  v34 = [v31 view];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

  v76 = [(DBDashboardHomeViewController *)self view];
  v74 = [v76 leadingAnchor];
  v75 = [v31 view];
  v73 = [v75 leadingAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v82[0] = v72;
  v71 = [(DBDashboardHomeViewController *)self view];
  v69 = [v71 trailingAnchor];
  v70 = [v31 view];
  v68 = [v70 trailingAnchor];
  v67 = [v69 constraintEqualToAnchor:v68];
  v82[1] = v67;
  v66 = [(DBDashboardHomeViewController *)self view];
  v65 = [v66 topAnchor];
  v35 = [v31 view];
  v36 = [v35 topAnchor];
  v37 = [v65 constraintEqualToAnchor:v36];
  v82[2] = v37;
  v38 = [(DBDashboardHomeViewController *)self view];
  v39 = [v38 bottomAnchor];
  v77 = v31;
  v40 = [v31 view];
  v41 = [v40 bottomAnchor];
  v42 = [v39 constraintEqualToAnchor:v41];
  v82[3] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v43];
  v44 = [(DBDashboardHomeViewController *)self folderController];
  v45 = objc_loadWeakRetained(&self->_environment);
  [v44 setEnvironment:v45];

  v46 = [(DBDashboardHomeViewController *)self iconModel];
  v47 = [v46 rootFolder];
  [v44 setFolder:v47];

  v48 = [(DBDashboardHomeViewController *)self layoutEngine];
  [v44 setLayoutEngine:v48];

  [v44 setFolderDelegate:self];
  [v44 addPageStateObserver:self];
  v49 = [(DBDashboardHomeViewController *)self folderView];
  v50 = [v49 pageControl];
  v51 = [(DBDashboardHomeViewController *)self traitCollection];
  [v50 setOverrideUserInterfaceStyle:{objc_msgSend(v51, "userInterfaceStyle")}];

  [(DBDashboardHomeViewController *)self setLeadingCustomViewPageHidden:[(DBDashboardHomeViewController *)self _shouldHideTodayView] atIndex:[(DBDashboardHomeViewController *)self _todayLeadingPageIndex]];
  v52 = [(DBDashboardHomeViewController *)self widgetHomeViewController];

  if (v52)
  {
    v53 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    -[DBDashboardHomeViewController setLeadingCustomViewPageHidden:atIndex:](self, "setLeadingCustomViewPageHidden:atIndex:", [v53 enabled] ^ 1, -[DBDashboardHomeViewController _widgetsLeadingPageIndex](self, "_widgetsLeadingPageIndex"));

    v54 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    [v54 relayout];
  }

  v55 = [(DBDashboardHomeViewController *)self environment];
  v56 = [v55 environmentConfiguration];
  v57 = [v56 vehicle];

  v58 = [v57 finishedWelcome];
  if (v58)
  {
    v59 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v60 = [v59 integerForKey:@"CARStartPageType"];
  }

  else
  {
    v60 = 2;
  }

  v61 = [(DBDashboardHomeViewController *)self _pageIndexForPageType:v60];
  if (v61 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v61 = [(DBDashboardHomeViewController *)self defaultStartPageIndex];
  }

  [(DBDashboardHomeViewController *)self setCurrentPageIndex:v61 animated:0];
  if (v79)
  {
    v62 = [(DBDashboardHomeViewController *)self iconManager];
    [v62 relayout];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.refreshApps", 0, 0, 1u);
  }

  v64 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__DBDashboardHomeViewController__setupIconModelWithRelayout___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(v64, block);

  [(DBDashboardHomeViewController *)self _cacheIconImagesForCurrentTraitCollection];
  [(DBDashboardHomeViewController *)self _resetIconStateIfNecessary];
}

void __61__DBDashboardHomeViewController__setupIconModelWithRelayout___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) iconModel];
  v6 = [v2 analyticsIconRepresentation];

  v3 = [*(a1 + 32) environment];
  v4 = [v3 environmentConfiguration];
  v5 = [v4 analytics];
  [v5 applySessionStartedStorage:v6];
}

- (void)_resetIconStateIfNecessary
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 138477827;
  v5 = v3;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Invalid list models in folder %{private}@ adding back icons.", &v4, 0xCu);
}

- (void)restartPageControlTimerIfNecessary
{
  v3 = [(DBDashboardHomeViewController *)self folderView];
  [v3 restartPageControlTimerIfNecessary];

  if ([(DBDashboardHomeViewController *)self _onWidgetsPage])
  {
    v4 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    [v4 updatePageControlsOffsetAndFlash:1];
  }
}

- (void)_widgetHomeVCLayoutStateDidChange:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __67__DBDashboardHomeViewController__widgetHomeVCLayoutStateDidChange___block_invoke;
  v19 = &unk_278F02300;
  objc_copyWeak(&v20, &location);
  v5 = _Block_copy(&v16);
  v6 = [(DBDashboardHomeViewController *)self widgetHomeViewController:v16];
  if ([v6 enabled])
  {
  }

  else
  {
    v7 = [(DBDashboardHomeViewController *)self _onWidgetsPage];

    if (v7)
    {
      v8 = [(DBDashboardHomeViewController *)self folderController];
      -[DBDashboardHomeViewController setCurrentPageIndex:animated:completion:](self, "setCurrentPageIndex:animated:completion:", [v8 defaultPageIndex], 1, v5);
      goto LABEL_11;
    }
  }

  v9 = [(DBDashboardHomeViewController *)self _widgetsPageIndex];
  v10 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  v11 = [v10 enabled];

  if ((v9 != 0x7FFFFFFFFFFFFFFFLL) != v11)
  {
    v5[2](v5);
  }

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    if ([v8 enabled])
    {
      v12 = [(DBDashboardHomeViewController *)self isApplicationPresented];

      if (!v12)
      {
        [(DBDashboardHomeViewController *)self setCurrentPageIndex:[(DBDashboardHomeViewController *)self _widgetsPageIndex] animated:1 completion:&__block_literal_global_25];
      }

      goto LABEL_12;
    }

LABEL_11:
  }

LABEL_12:
  if ([(DBDashboardHomeViewController *)self _onWidgetsPage])
  {
    [(DBDashboardHomeViewController *)self _maxWidgetDimmingViewAlpha];
    v14 = v13;
    v15 = [(DBDashboardHomeViewController *)self widgetDimmingView];
    [v15 setAlpha:v14];
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __67__DBDashboardHomeViewController__widgetHomeVCLayoutStateDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained widgetHomeViewController];
  [WeakRetained setLeadingCustomViewPageHidden:objc_msgSend(v1 atIndex:{"enabled") ^ 1, objc_msgSend(WeakRetained, "_widgetsLeadingPageIndex")}];
}

- (void)loadView
{
  v3 = [_TtC9DashBoard15DBAnimationView alloc];
  v4 = [(DBAnimationView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(DBDashboardHomeViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = DBDashboardHomeViewController;
  [(DBDashboardHomeViewController *)&v11 viewDidLoad];
  v3 = [(DBDashboardHomeViewController *)self widgetHomeViewController];

  if (v3)
  {
    v4 = [(DBDashboardHomeViewController *)self widgetDimmingView];
    [v4 setHidden:0];

    v5 = [(DBDashboardHomeViewController *)self widgetDimmingView];
    [v5 setAlpha:0.0];
  }

  v6 = [(DBDashboardHomeViewController *)self view];
  [v6 setClipsToBounds:1];

  v7 = [(DBDashboardHomeViewController *)self view];
  v8 = [v7 layer];
  [v8 setHitTestsAsOpaque:1];

  [(DBDashboardHomeViewController *)self _setupIconModelWithRelayout:0];
  v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__backButtonTapped_];
  [v9 setAllowedPressTypes:&unk_285AA4A00];
  v10 = [(DBDashboardHomeViewController *)self view];
  [v10 addGestureRecognizer:v9];
}

- (void)userInterfaceStyleChanged
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(DBDashboardHomeViewController *)self _onWidgetsPage])
  {
    [(DBDashboardHomeViewController *)self _maxWidgetDimmingViewAlpha];
    v4 = v3;
    v5 = [(DBDashboardHomeViewController *)self widgetDimmingView];
    [v5 setAlpha:v4];
  }

  v6 = [(DBDashboardHomeViewController *)self todayViewController];

  if (v6)
  {
    v7 = DBLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(DBDashboardHomeViewController *)self traitCollection];
      v9 = [v8 dbUserInterfaceStyleDescription];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Setting todayViewController userInterfaceStyle to %@", &v12, 0xCu);
    }

    v10 = [(DBDashboardHomeViewController *)self todayViewController];
    v11 = [(DBDashboardHomeViewController *)self traitCollection];
    [v10 setOverrideUserInterfaceStyle:{objc_msgSend(v11, "userInterfaceStyle")}];
  }
}

- (void)handleEvent:(id)a3
{
  if ([a3 type] == 1)
  {

    [(DBDashboardHomeViewController *)self _handleBackActionSupportACBack:0];
  }
}

- (void)applicationController:(id)a3 addedApplications:(id)a4 updatedApplications:(id)a5 removedApplications:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = DBLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Application Icons, added: %@, updated: %@, removed: %@", buf, 0x20u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        v19 = [(DBDashboardHomeViewController *)self iconModel];
        v20 = [v18 bundleIdentifier];
        [v19 removeIconForIdentifier:v20];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  [(DBDashboardHomeViewController *)self _handleAppLibraryRefresh];
}

- (NSArray)allApplicationIcons
{
  v3 = objc_opt_new();
  v4 = +[DBApplicationController sharedInstance];
  v5 = [v4 allApplications];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __52__DBDashboardHomeViewController_allApplicationIcons__block_invoke;
  v26 = &unk_278F03930;
  v6 = v4;
  v27 = v6;
  v7 = v3;
  v28 = v7;
  [v5 enumerateObjectsUsingBlock:&v23];

  v8 = objc_alloc_init(_TtC9DashBoard16DBNowPlayingIcon);
  [v7 addObject:{v8, v23, v24, v25, v26}];
  v9 = [(DBDashboardHomeViewController *)self appLinkManager];
  v10 = [v9 appLinkIcons];

  v11 = DBLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(DBDashboardHomeViewController *)v10 allApplicationIcons];
  }

  if (v10)
  {
    [v7 addObjectsFromArray:v10];
  }

  v12 = [(DBDashboardHomeViewController *)self environment];
  v13 = [v12 environmentConfiguration];
  v14 = [v13 isOEMIconVisible];

  if (v14)
  {
    v15 = [_TtC9DashBoard9DBOEMIcon alloc];
    v16 = [(DBDashboardHomeViewController *)self environment];
    v17 = [v16 environmentConfiguration];
    v18 = [v17 session];
    v19 = [v18 configuration];
    v20 = [(DBOEMIcon *)v15 initWithSessionConfiguration:v19];

    [v7 addObject:v20];
  }

  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v7];

  return v21;
}

void __52__DBDashboardHomeViewController_allApplicationIcons__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 appPolicy];
  if ([v4 isCarPlaySupported])
  {
    v5 = [*(a1 + 32) calendarApplication];

    v6 = &off_278EFF240;
    if (v5 != v3)
    {
      v6 = off_278EFF238;
    }

    v7 = [objc_alloc(*v6) initWithApplication:v3 drawBorder:0];
    [*(a1 + 40) addObject:v7];
  }

  else
  {
    v8 = DBLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Skipping app %@", &v9, 0xCu);
    }
  }
}

- (void)workspace:(id)a3 stateDidChangeFromState:(id)a4 toState:(id)a5
{
  v6 = [a3 state];
  v7 = [v6 activeBundleIdentifier];

  v8 = +[DBApplicationController sharedInstance];
  v9 = [v8 applicationWithBundleIdentifier:v7];

  [(DBDashboardHomeViewController *)self setIsApplicationPresented:v9 != 0];
  if ([(DBDashboardHomeViewController *)self isApplicationPresented])
  {
    [(DBDashboardHomeViewController *)self _setStatusBarOverrideActive:0];
    v10 = v19;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v11 = __75__DBDashboardHomeViewController_workspace_stateDidChangeFromState_toState___block_invoke;
  }

  else
  {
    if (![(DBDashboardHomeViewController *)self _onWidgetsPage])
    {
      goto LABEL_12;
    }

    [(DBDashboardHomeViewController *)self _setStatusBarOverrideActive:1];
    v10 = &v17;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v11 = __75__DBDashboardHomeViewController_workspace_stateDidChangeFromState_toState___block_invoke_2;
  }

  v10[2] = v11;
  v10[3] = &unk_278F01580;
  v10[4] = self;
  v12 = _Block_copy(v10);
  if (v12)
  {
    v13 = v12;
    if ([(DBDashboardHomeViewController *)self isApplicationPresented])
    {
      v14 = 0.4;
    }

    else
    {
      v14 = 0.075;
    }

    v15 = [(DBDashboardHomeViewController *)self isApplicationPresented:v17];
    v16 = 0.0;
    if (v15)
    {
      v16 = 0.02;
    }

    [MEMORY[0x277D75D18] animateWithDuration:0 delay:v13 options:&__block_literal_global_303 animations:v14 completion:v16];
  }

LABEL_12:
}

void __75__DBDashboardHomeViewController_workspace_stateDidChangeFromState_toState___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) widgetDimmingView];
  [v1 setAlpha:0.0];
}

void __75__DBDashboardHomeViewController_workspace_stateDidChangeFromState_toState___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _maxWidgetDimmingViewAlpha];
  v3 = v2;
  v4 = [*(a1 + 32) widgetDimmingView];
  [v4 setAlpha:v3];
}

- (void)getIconStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboardHomeViewController *)self iconModel];
  v6 = [v5 exportIconLayoutState];

  v4[2](v4, v6, 0);
}

- (void)setIconState:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hiddenIcons];
  v6 = [v5 bs_map:&__block_literal_global_306];

  v7 = [(DBDashboardHomeViewController *)self iconModel];
  v14[0] = *MEMORY[0x277CF9068];
  v8 = [v4 iconOrder];

  v9 = MEMORY[0x277CBEBF8];
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v14[1] = *MEMORY[0x277CF9060];
  v15[0] = v10;
  if (v6)
  {
    v9 = v6;
  }

  v15[1] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v7 importState:v11];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 postNotificationName:@"CARRefreshAppDockNotification" object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.didChangeIconLayout", 0, 0, 1u);
}

- (void)resetIconState
{
  v2 = [(DBDashboardHomeViewController *)self iconModel];
  [v2 resetCurrentIconState];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.didChangeIconLayout", 0, 0, 1u);
}

- (void)getApplicationIconInformationForBundleID:(id)a3 drawBorder:(BOOL)a4 completion:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = [objc_alloc(MEMORY[0x277CF8FF8]) initWithBundleIdentifier:v7];
  v10 = DBLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v40 = v7;
    _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_INFO, "DHVC: Application icon info requested for %@", buf, 0xCu);
  }

  v11 = [(DBDashboardHomeViewController *)self view];
  v12 = [v11 window];
  v13 = [v12 windowScene];
  v14 = [v13 screen];
  [v14 scale];
  [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = *MEMORY[0x277CF8FD8];
  if ([v7 isEqualToString:*MEMORY[0x277CF8FD8]])
  {
    v24 = [(DBDashboardHomeViewController *)self environment];
    v25 = [v24 environmentConfiguration];
    v26 = [v25 session];
    v27 = [v26 configuration];

    v28 = [(UIImage *)v27 resolvedOEMIconWithIconImageInfo:v16, v18, v20, v22];
    v29 = v28;
  }

  else
  {
    v30 = [(DBDashboardHomeViewController *)self iconImageCache];
    v31 = [(DBDashboardHomeViewController *)self environment];
    v32 = [v31 environmentConfiguration];
    v33 = [v32 vehicleID];
    v27 = [v30 iconImageForBundleIdentifier:v7 inVehicle:v33];

    if ([v7 isEqualToString:*MEMORY[0x277CF8FE0]] || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CF8FC8]) & 1) != 0 || objc_msgSend(v7, "isEqualToString:", v23))
    {
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"LAUNCHER_NAME-%@", v7];
      v35 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
      v36 = [v35 localizedStringForKey:v34 value:&stru_285A57218 table:@"CarPlayApp"];
    }

    else
    {
      v34 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v7 allowPlaceholder:0 error:0];
      v38 = [v34 db_localizedCarName];
      v35 = v38;
      if (v38)
      {
        v36 = v38;
        v35 = v36;
      }

      else
      {
        v36 = [v34 localizedName];
      }
    }

    v29 = v36;

    if (v27)
    {
      v37 = UIImagePNGRepresentation(v27);
      [v9 setIconImageData:v37];

      [(UIImage *)v27 scale];
      [v9 setIconImageScale:?];
    }

    [v9 setLocalizedDisplayName:v29];
    v28 = v9;
  }

  v8[2](v8, v28, 0);
}

- (void)iconManager:(id)a3 willUseRootFolderControllerConfiguration:(id)a4
{
  v14 = a4;
  v5 = objc_alloc(MEMORY[0x277D760A8]);
  v6 = [MEMORY[0x277D75348] whiteColor];
  v7 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
  v8 = [v5 initWithStyle:0 primaryColor:v6 secondaryColor:v7 shadowColor:0];

  [v14 setLegibilitySettings:v8];
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [(DBDashboardHomeViewController *)self widgetHomeViewController];

  if (v10)
  {
    v11 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    [v9 addObject:v11];
  }

  v12 = [(DBDashboardHomeViewController *)self todayViewController];
  [v9 addObject:v12];

  v13 = [v9 copy];
  [v14 setLeadingCustomViewControllers:v13];
}

- (void)iconManager:(id)a3 launchIconForIconView:(id)a4
{
  v20 = a4;
  v5 = [v20 icon];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(DBDashboardHomeViewController *)self environment];
    v7 = [v6 environmentConfiguration];
    v8 = [v7 session];
    [v8 requestCarUI];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(DBDashboardHomeViewController *)self _launchNowPlaying];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        v9 = v5;
        if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        [(DBDashboardHomeViewController *)self _launchAppLink:v10];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v11 = [v20 icon];
          if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }

          v13 = +[DBApplicationController sharedInstance];
          v14 = [v12 applicationBundleID];
          v15 = [v13 applicationWithBundleIdentifier:v14];

          v16 = objc_alloc_init(DBActivationSettings);
          [(DBActivationSettings *)v16 setLaunchSource:3];
          v17 = [DBApplicationLaunchInfo launchInfoForApplication:v15 withActivationSettings:v16];
          v18 = [(DBDashboardHomeViewController *)self environment];
          v19 = [DBEvent eventWithType:4 context:v17];
          [v18 handleEvent:v19];
        }
      }
    }
  }
}

- (BOOL)iconManager:(id)a3 allowsBadgingForIcon:(id)a4
{
  v5 = a4;
  if ([v5 isLeafIcon])
  {
    v6 = v5;
    v7 = +[DBApplicationController sharedInstance];
    v8 = [v6 leafIdentifier];
    v9 = [v7 applicationWithBundleIdentifier:v8];

    v10 = [v9 appPolicy];
    if ([v10 badgesAppIcon])
    {
      v11 = [(DBDashboardHomeViewController *)self iconBadgeController];
      v12 = [v6 leafIdentifier];
      v13 = [v11 notificationsEnabledForIdentifier:v12];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (id)defaultIconStateForIconManager:(id)a3
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"DefaultIconState_CarDisplay" withExtension:@"plist"];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4];

  return v5;
}

- (id)folderView
{
  v2 = [(DBDashboardHomeViewController *)self folderController];
  v3 = [v2 contentView];

  return v3;
}

- (void)rootFolderPageStateProvider:(id)a3 willBeginTransitionToState:(int64_t)a4 animated:(BOOL)a5 interactive:(BOOL)a6
{
  v7 = a3;
  v8 = [(DBDashboardHomeViewController *)self folderView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [(DBDashboardHomeViewController *)self folderView];
    [v10 setPageControlHidden:0 animated:1];
  }

  v11 = [(DBDashboardHomeViewController *)self folderController];
  v12 = [v11 minimumPageIndex];
  v13 = [v7 destinationPageOffset];

  v14 = v13 + v12;
  v15 = [(DBDashboardHomeViewController *)self _widgetsPageIndex];
  v16 = [(DBDashboardHomeViewController *)self _todayPageIndex];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL && v14 == v15)
  {
    v17 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    [v17 setForeground:1];
  }

  if (v16 != 0x7FFFFFFFFFFFFFFFLL && v14 == v16)
  {
    v18 = [(DBDashboardHomeViewController *)self todayViewController];
    [v18 setForeground:1];
  }
}

- (void)rootFolderPageStateProvider:(id)a3 didContinueTransitionToState:(int64_t)a4 progress:(double)a5
{
  v30 = a3;
  v8 = [(DBDashboardHomeViewController *)self folderController];
  v9 = [v8 minimumPageIndex];
  v10 = [v30 destinationPageOffset];

  v11 = [(DBDashboardHomeViewController *)self _widgetsPageIndex];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v11;
    if (v10 + v9 == v11)
    {
      v13 = 0.0;
      if (a5 >= 0.0)
      {
        v13 = a5;
      }

      if (v13 <= 1.0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 1.0;
      }
    }

    else
    {
      v15 = [(DBDashboardHomeViewController *)self folderController];
      v16 = [v15 currentPageIndex];

      if (v16 != v12)
      {
LABEL_15:
        v21 = [(DBDashboardHomeViewController *)self widgetDimmingView];
        [v21 alpha];
        v23 = v22;
        [(DBDashboardHomeViewController *)self _maxWidgetDimmingViewAlpha];
        [(DBDashboardHomeViewController *)self _setStatusBarOverrideActive:v23 > v24 * 0.5];

        goto LABEL_16;
      }

      v17 = 0.0;
      if (a5 >= 0.0)
      {
        v17 = a5;
      }

      if (v17 > 1.0)
      {
        v17 = 1.0;
      }

      v14 = 1.0 - v17;
    }

    [(DBDashboardHomeViewController *)self _maxWidgetDimmingViewAlpha];
    v19 = v14 * v18;
    v20 = [(DBDashboardHomeViewController *)self widgetDimmingView];
    [v20 setAlpha:v19];

    goto LABEL_15;
  }

LABEL_16:
  if (a4 == 2)
  {
    v25 = [v30 pageState];
    v26 = 3.0;
    if (v25 != 2)
    {
      v26 = a5 * 3.0;
    }

    if (v26 < 0.0)
    {
      v26 = 0.0;
    }

    if (v26 <= 1.0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 1.0;
    }
  }

  else
  {
    v28 = a5 * 3.0;
    if (a5 * 3.0 < 0.0)
    {
      v28 = 0.0;
    }

    if (v28 > 1.0)
    {
      v28 = 1.0;
    }

    v27 = 1.0 - v28;
  }

  v29 = [(DBDashboardHomeViewController *)self folderView];
  [v29 setPageControlPlatterAlpha:v27];
}

- (void)rootFolderPageStateProvider:(id)a3 didEndTransitionFromState:(int64_t)a4 toState:(int64_t)a5 successfully:(BOOL)a6
{
  v6 = [(DBDashboardHomeViewController *)self folderView:a3];
  [v6 restartPageControlTimerIfNecessary];
}

- (CRSWidgetLayoutVehicleDataProviding)widgetLayoutDataProvider
{
  v2 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  v3 = [v2 widgetLayoutDataProvider];

  return v3;
}

- (id)visibleIconViewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboardHomeViewController *)self iconModel];
  v6 = [v5 leafIconForIdentifier:v4];

  v7 = [(DBDashboardHomeViewController *)self folderController];
  if ([v7 isDisplayingIcon:v6])
  {
    v8 = [v7 iconViewForIcon:v6 location:*MEMORY[0x277D666D0]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addPageChangeObserver:(id)a3
{
  v5 = a3;
  v4 = [(DBDashboardHomeViewController *)self pageObservers];
  [v4 addObserver:v5];

  [v5 homeViewController:self didChangeToPageType:{-[DBDashboardHomeViewController _pageType](self, "_pageType")}];
}

- (void)removePageChangeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboardHomeViewController *)self pageObservers];
  [v5 unregisterObserver:v4];
}

- (void)setForeground:(BOOL)a3
{
  v3 = a3;
  if ([(DBDashboardHomeViewController *)self _onTodaysPage])
  {
    v5 = [(DBDashboardHomeViewController *)self todayViewController];
    [v5 setForeground:v3];
  }
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  v4 = [(DBDashboardHomeViewController *)self todayViewController];
  [v4 setActive:v3];
}

- (void)setAccessibilityElementsActive:(BOOL)a3
{
  v3 = a3;
  v4 = [(DBDashboardHomeViewController *)self view];
  [v4 setAccessibilityElementsHidden:!v3];
}

- (BOOL)isIconVisibleForIdentifier:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(DBDashboardHomeViewController *)self iconModel];
  v6 = [v5 leafIconForIdentifier:v4];

  v7 = v6;
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v9 = [(DBDashboardHomeViewController *)self isIconVisible:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)iconForIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(DBDashboardHomeViewController *)self iconModel];
    v6 = [v5 leafIconForIdentifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)iconCanDisplayBadge:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboardHomeViewController *)self iconManager];
  LOBYTE(self) = [(DBDashboardHomeViewController *)self iconManager:v5 allowsBadgingForIcon:v4];

  return self;
}

- (BOOL)isIconVisible:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboardHomeViewController *)self iconModel];
  v6 = [v5 isIconVisible:v4];

  return v6;
}

- (void)_cacheIconImagesForCurrentTraitCollection
{
  v3 = [(DBDashboardHomeViewController *)self iconManager];

  if (v3)
  {
    v5 = [(DBDashboardHomeViewController *)self iconManager];
    v4 = [(DBDashboardHomeViewController *)self traitCollection];
    [v5 precacheImagesForRootIconsWithTraitCollection:v4];
  }
}

- (void)_setStatusBarOverrideActive:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(DBDashboardHomeViewController *)self statusBarStyleAssertion];
  v6 = [v5 isValid];

  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CBEC28];
    if (v3)
    {
      v9 = MEMORY[0x277CBEC38];
    }

    else
    {
      v9 = MEMORY[0x277CBEC28];
    }

    if (v6)
    {
      v8 = MEMORY[0x277CBEC38];
    }

    v16 = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Setting status bar override: %{public}@ (previously: %{public}@)", &v16, 0x16u);
  }

  if (v6 != v3)
  {
    v10 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    v11 = [MEMORY[0x277CF0B70] settingsWithDuration:v10 timingFunction:0.2];
    v12 = [(DBDashboardHomeViewController *)self statusBarStyleAssertion];
    v13 = v12;
    if (v3)
    {
      [v12 acquireWithAnimationSettings:v11];
      v14 = 2;
    }

    else
    {
      [v12 relinquishWithAnimationSettings:v11];
      v14 = 0;
    }

    v15 = [(DBDashboardHomeViewController *)self folderController];
    [v15 setOverrideUserInterfaceStyle:v14];
  }
}

- (void)updateDefaultPageIndex
{
  v3 = [(DBDashboardHomeViewController *)self folderController];
  [v3 setDefaultPageIndex:{-[DBDashboardHomeViewController defaultStartPageIndex](self, "defaultStartPageIndex")}];
}

- (int64_t)defaultStartPageIndex
{
  result = [(DBDashboardHomeViewController *)self _todayPageIndex];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [(DBDashboardHomeViewController *)self folderController];
    v5 = [v4 minimumPageIndex];

    return v5;
  }

  return result;
}

- (double)_maxWidgetDimmingViewAlpha
{
  v3 = 0.0;
  if (![(DBDashboardHomeViewController *)self isApplicationPresented])
  {
    v4 = [(DBDashboardHomeViewController *)self traitCollection];
    v3 = dbl_24839BE90[[v4 userInterfaceStyle] == 2];

    v5 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    if (![v5 showWallpaper])
    {
      v3 = 1.0;
    }
  }

  return v3;
}

- (BOOL)_shouldHideTodayView
{
  if (![DBTodayViewController isEnabledAndSupportedForIconProvider:self])
  {
    return 1;
  }

  v3 = [(DBDashboardHomeViewController *)self layoutEngine];
  v4 = [v3 hasEmbeddedSecondaryContentArea];

  return v4;
}

- (void)setLeadingCustomViewPageHidden:(BOOL)a3 atIndex:(int64_t)a4
{
  v5 = a3;
  v7 = [(DBDashboardHomeViewController *)self folderController];
  [v7 setLeadingCustomViewPageHidden:v5 atIndex:a4];

  [(DBDashboardHomeViewController *)self updateDefaultPageIndex];
}

- (void)currentPageIndexDidChange
{
  v3 = [(DBDashboardHomeViewController *)self folderController];
  v4 = [v3 currentPageIndex];

  v5 = [(DBDashboardHomeViewController *)self folderController];
  v6 = [v5 iconListViewIndexForPageIndex:v4];

  v7 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
  v29 = [v7 focusedItem];

  [(DBDashboardHomeViewController *)self widgetDimmingViewAlphaForPageIndex:v4];
  v9 = v8;
  v10 = [(DBDashboardHomeViewController *)self widgetDimmingView];
  [v10 setAlpha:v9];

  [(DBDashboardHomeViewController *)self pageControlPlatterAlphaForPageIndex:v4];
  v12 = v11;
  v13 = [(DBDashboardHomeViewController *)self folderView];
  [v13 setPageControlPlatterAlpha:v12];

  if ([(DBDashboardHomeViewController *)self _onWidgetsPage])
  {
    v14 = [(DBDashboardHomeViewController *)self isApplicationPresented]^ 1;
  }

  else
  {
    v14 = 0;
  }

  [(DBDashboardHomeViewController *)self _setStatusBarOverrideActive:v14];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [(DBDashboardHomeViewController *)self folderController];
    v15 = [v19 iconListViewAtIndex:v6];

    if (!self->_lastFocusedIndex)
    {
      v20 = [(DBDashboardHomeViewController *)self _indexPathForFallbackIcon:0];
      lastFocusedIndex = self->_lastFocusedIndex;
      self->_lastFocusedIndex = v20;
    }

    objc_opt_class();
    v22 = v29;
    if (v22 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      if ([v15 containsView:v22])
      {
        goto LABEL_20;
      }
    }

    else
    {

      v22 = 0;
    }

    v23 = [MEMORY[0x277CCAA70] indexPathWithIconIndex:0 listIndex:v6];
    v24 = self->_lastFocusedIndex;
    self->_lastFocusedIndex = v23;

    [(DBDashboardHomeViewController *)self setNeedsFocusUpdate];
LABEL_20:

    goto LABEL_21;
  }

  objc_opt_class();
  v15 = v29;
  if (!v15 || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v15 = 0;
LABEL_17:
    [(DBDashboardHomeViewController *)self setNeedsFocusUpdate];
    goto LABEL_21;
  }

  if ([(DBDashboardHomeViewController *)self _onTodaysPage])
  {
    v16 = [(DBDashboardHomeViewController *)self todayViewController];
    v17 = [v16 view];
    v18 = [v17 containsView:v15];

    if ((v18 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_21:

  v25 = [(DBDashboardHomeViewController *)self pageObservers];
  [v25 homeViewController:self didChangeToPageType:{-[DBDashboardHomeViewController _pageType](self, "_pageType")}];

  v26 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v26 setInteger:-[DBDashboardHomeViewController _pageType](self forKey:{"_pageType"), @"CARStartPageType"}];

  v27 = [(DBDashboardHomeViewController *)self todayViewController];
  [v27 setForeground:{-[DBDashboardHomeViewController _onTodaysPage](self, "_onTodaysPage")}];

  v28 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  [v28 setForeground:{-[DBDashboardHomeViewController _onWidgetsPage](self, "_onWidgetsPage")}];
}

- (void)setCurrentPageType:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(DBDashboardHomeViewController *)self _pageIndexForPageType:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(DBDashboardHomeViewController *)self defaultStartPageIndex];
  }

  [(DBDashboardHomeViewController *)self setCurrentPageIndex:v6 animated:v4];
}

- (void)setCurrentPageIndex:(unint64_t)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v10 = [(DBDashboardHomeViewController *)self folderController];
  v11 = v10;
  if (IsReduceMotionEnabled || !v5)
  {
    [v10 setCurrentPageIndex:a3];

    [(DBDashboardHomeViewController *)self setNeedsFocusUpdate];
    [(DBDashboardHomeViewController *)self currentPageIndexDidChange];
    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__DBDashboardHomeViewController_setCurrentPageIndex_animated_completion___block_invoke;
    v12[3] = &unk_278F02D40;
    v12[4] = self;
    v13 = v8;
    [v11 setCurrentPageIndex:a3 animated:1 completion:v12];
  }
}

uint64_t __73__DBDashboardHomeViewController_setCurrentPageIndex_animated_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNeedsFocusUpdate];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (double)widgetDimmingViewAlphaForPageIndex:(unint64_t)a3
{
  if ([(DBDashboardHomeViewController *)self _widgetsPageIndex]!= a3)
  {
    return 0.0;
  }

  [(DBDashboardHomeViewController *)self _maxWidgetDimmingViewAlpha];
  return result;
}

- (double)pageControlPlatterAlphaForPageIndex:(unint64_t)a3
{
  v5 = [(DBDashboardHomeViewController *)self _todayPageIndex];
  result = 1.0;
  if (v5 != a3)
  {
    v7 = [(DBDashboardHomeViewController *)self _widgetsPageIndex];
    result = 0.0;
    if (v7 == a3)
    {
      return 1.0;
    }
  }

  return result;
}

- (void)_persistCachedIconImages
{
  v3 = [(DBDashboardHomeViewController *)self environment];
  v4 = [v3 environmentConfiguration];
  v22 = [v4 vehicleID];

  v5 = [(DBDashboardHomeViewController *)self environment];
  v6 = [v5 environmentConfiguration];
  [v6 pointScale];
  [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(DBDashboardHomeViewController *)self environment];
  v16 = [v15 environmentConfiguration];
  v17 = [v16 session];
  v18 = [v17 configuration];

  v19 = [v18 resolvedOEMIconWithIconImageInfo:{v8, v10, v12, v14}];
  v20 = [v19 iconImage];
  v21 = [(DBDashboardHomeViewController *)self iconImageCache];
  [v21 setIconImage:v20 forBundleIdentifier:*MEMORY[0x277CF8FD8] inVehicle:v22];
}

- (void)_launchNowPlaying
{
  v3 = [(DBDashboardHomeViewController *)self nowPlayingObserver];
  v4 = [v3 nowPlayingLaunchInfo];

  if (v4)
  {
    v5 = [(DBDashboardHomeViewController *)self environment];
    v6 = [DBEvent eventWithType:4 context:v4];
    [v5 handleEvent:v6];
  }

  else
  {
    v5 = DBLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_248146000, v5, OS_LOG_TYPE_DEFAULT, "No available now playing app to launch from Now Playing.", v7, 2u);
    }
  }
}

- (void)_launchAppLink:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboardHomeViewController *)self iconModel];
  v6 = [v4 leafIdentifier];

  v7 = [v5 leafIconForIdentifier:v6];

  objc_opt_class();
  v8 = [v7 activeDataSource];
  if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 appLink];
  v11 = [(DBDashboardHomeViewController *)self appLinkManager];
  v12 = [v11 launchInfoForAppLink:v10];

  if (v12)
  {
    v13 = [(DBDashboardHomeViewController *)self environment];
    v14 = [DBEvent eventWithType:4 context:v12];
    [v13 handleEvent:v14];
  }

  else
  {
    v15 = [v10 contentURLAction];

    if (v15)
    {
      v13 = [(DBDashboardHomeViewController *)self appLinkManager];
      [v13 presentAppLink:v10];
    }

    else
    {
      v13 = DBLogForCategory(0x1CuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(DBDashboardHomeViewController *)v10 _launchAppLink:v13];
      }
    }
  }
}

- (void)_handleAppLibraryRefresh
{
  v3 = [(DBDashboardHomeViewController *)self iconModel];
  [v3 reloadIcons];

  v4 = [(DBDashboardHomeViewController *)self iconManager];
  [v4 relayout];

  [(DBDashboardHomeViewController *)self setLeadingCustomViewPageHidden:[(DBDashboardHomeViewController *)self _shouldHideTodayView] atIndex:[(DBDashboardHomeViewController *)self _todayLeadingPageIndex]];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.refreshApps", 0, 0, 1u);
}

- (id)_indexPathForFallbackIcon:(BOOL)a3
{
  v3 = a3;
  v4 = [(DBDashboardHomeViewController *)self folderController];
  v5 = [v4 currentIconListView];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 visibleIcons];
    v8 = [v4 folder];
    if (v3)
    {
      [v7 lastObject];
    }

    else
    {
      [v7 firstObject];
    }
    v10 = ;
    v9 = [v8 indexPathForIcon:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_invalidateBadgeForIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBDashboardHomeViewController *)self iconModel];
  v6 = [v5 leafIconForIdentifier:v4];

  objc_opt_class();
  v7 = [v6 activeDataSource];
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  [v8 invalidateBadgeValue];
  [v6 noteBadgeDidChange];
  v9 = DBLogForCategory(0x10uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"valid";
    if (!v6)
    {
      v10 = @"NOT valid (nil)";
    }

    v11 = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&dword_248146000, v9, OS_LOG_TYPE_DEFAULT, "Invalidated badge for %{public}@. The icon is %{public}@", &v11, 0x16u);
  }
}

- (unint64_t)_pageType
{
  if ([(DBDashboardHomeViewController *)self _onWidgetsPage])
  {
    return 3;
  }

  if ([(DBDashboardHomeViewController *)self _onTodaysPage])
  {
    return 1;
  }

  return 2;
}

- (int64_t)_pageIndexForPageType:(unint64_t)a3
{
  if (a3 >= 2)
  {
    if (a3 == 3)
    {

      return [(DBDashboardHomeViewController *)self _widgetsPageIndex];
    }

    else
    {
      v5 = [(DBDashboardHomeViewController *)self folderController];
      v6 = [v5 firstIconPageIndex];

      return v6;
    }
  }

  else
  {

    return [(DBDashboardHomeViewController *)self _todayPageIndex];
  }
}

- (id)_preferredFocusedIcon
{
  v3 = self->_lastFocusedIndex;
  if (v3 || ([(DBDashboardHomeViewController *)self _indexPathForFallbackIcon:0], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [(DBDashboardHomeViewController *)self _iconViewForIndexpath:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)preferredFocusEnvironments
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(DBDashboardHomeViewController *)self _onWidgetsPage])
  {
    v4 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    if (!v4)
    {
      [DBDashboardHomeViewController preferredFocusEnvironments];
    }

    v5 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  }

  else
  {
    if (![(DBDashboardHomeViewController *)self _onTodaysPage])
    {
      goto LABEL_7;
    }

    v5 = [(DBDashboardHomeViewController *)self todayViewController];
  }

  v6 = v5;
  [v3 addObject:v5];

LABEL_7:
  v7 = [(DBDashboardHomeViewController *)self _preferredFocusedIcon];
  if (v7)
  {
    [v3 addObject:v7];
  }

  if ([v3 count])
  {
    v8 = v3;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = DBDashboardHomeViewController;
    v8 = [(DBDashboardHomeViewController *)&v11 preferredFocusEnvironments];
  }

  v9 = v8;

  return v9;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v13 = a3;
  v5 = [v13 nextFocusedView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v13 nextFocusedView];
    v8 = [v7 icon];
    v9 = [(DBDashboardHomeViewController *)self folderController];
    v10 = [v9 folder];
    v11 = [v10 indexPathForIcon:v8];
    lastFocusedIndex = self->_lastFocusedIndex;
    self->_lastFocusedIndex = v11;
  }
}

- (id)_linearFocusMovementSequences
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(DBDashboardHomeViewController *)self widgetHomeViewController];

  if (v4)
  {
    v5 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    [v5 loadViewIfNeeded];

    v6 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    v7 = [v6 linearFocusItems];
    [v3 addObjectsFromArray:v7];
  }

  v8 = [(DBDashboardHomeViewController *)self todayViewController];

  if (v8)
  {
    v9 = [(DBDashboardHomeViewController *)self todayViewController];
    [v9 loadViewIfNeeded];

    v10 = [(DBDashboardHomeViewController *)self todayViewController];
    v11 = [v10 linearFocusItems];
    [v3 addObjectsFromArray:v11];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [(DBDashboardHomeViewController *)self folderController];
  v13 = [v12 iconListViews];

  v14 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = [v18 icons];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __62__DBDashboardHomeViewController__linearFocusMovementSequences__block_invoke;
        v23[3] = &unk_278F03978;
        v23[4] = v18;
        v24 = v3;
        [v19 enumerateObjectsUsingBlock:v23];
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v15);
  }

  v20 = [objc_alloc(MEMORY[0x277D75F88]) initWithItems:v3 loops:0 restrictEnteringSequence:1];
  v29 = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];

  return v21;
}

uint64_t __62__DBDashboardHomeViewController__linearFocusMovementSequences__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) displayedIconViewForIcon:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 40) addObject:v3];
    v4 = v6;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)_iconViewForIndexpath:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DBDashboardHomeViewController *)self folderController];
  v6 = [v5 folder];

  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v4 description];
    v13 = [v6 description];
    v14 = 136315907;
    v15 = "[DBDashboardHomeViewController _iconViewForIndexpath:]";
    v16 = 2112;
    v17 = self;
    v18 = 2112;
    v19 = v12;
    v20 = 2113;
    v21 = v13;
    _os_log_debug_impl(&dword_248146000, v7, OS_LOG_TYPE_DEBUG, "%s %@: Searching for iconView with indexPath %@ in folder %{private}@", &v14, 0x2Au);
  }

  v8 = [v6 iconAtIndexPath:v4];
  v9 = [(DBDashboardHomeViewController *)self folderController];
  v10 = [v9 iconViewForIcon:v8 location:*MEMORY[0x277D666D0]];

  return v10;
}

- (void)_wheelChangedWithEvent:(id)a3
{
  v4 = a3;
  v5 = [(DBDashboardHomeViewController *)self folderController];
  v6 = [v5 isScrolling];

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = DBDashboardHomeViewController;
    [(DBDashboardHomeViewController *)&v7 _wheelChangedWithEvent:v4];
  }
}

- (void)dataStoreMonitor:(id)a3 didUpdateApplication:(id)a4 forKey:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = +[_TtC9DashBoard20DBLeafIconDataSource kDBSBApplicationBadgeKey];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    v11 = DBLogForCategory(0x10uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "Data store updated badge value for %{public}@", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__DBDashboardHomeViewController_dataStoreMonitor_didUpdateApplication_forKey___block_invoke;
    v12[3] = &unk_278F014B8;
    v12[4] = self;
    v13 = v7;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

- (void)_handleBackActionSupportACBack:(BOOL)a3
{
  v3 = a3;
  v18 = [(DBDashboardHomeViewController *)self folderController];
  v5 = [v18 isScrolling];
  v6 = v18;
  if ((v5 & 1) == 0)
  {
    v7 = [v18 currentPageIndex];
    v8 = [v18 defaultPageIndex];
    if (v7 == v8)
    {
      v8 = v7;
      if (v3 && (-[DBDashboardHomeViewController environment](self, "environment"), v9 = objc_claimAutoreleasedReturnValue(), [v9 environmentConfiguration], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isACBackSupported"), v10, v9, v11))
      {
        if ([(DBDashboardHomeViewController *)self _isACBackEnabled])
        {
          v12 = [(DBDashboardHomeViewController *)self environment];
          v13 = [v12 environmentConfiguration];
          v14 = [v13 session];
          v15 = [MEMORY[0x277CBEBC0] URLWithString:@"oem:back"];
          [v14 requestCarUIForURL:v15];
        }
      }

      else if (v7 != [v18 firstIconPageIndex])
      {
        v8 = [v18 firstIconPageIndex];
      }
    }

    v16 = [(DBDashboardHomeViewController *)self folderController];
    v17 = [v16 currentPageIndex];

    v6 = v18;
    if (v8 != v17)
    {
      v5 = [(DBDashboardHomeViewController *)self setCurrentPageIndex:v8 animated:1];
      v6 = v18;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (BOOL)_isACBackEnabled
{
  v2 = [(DBDashboardHomeViewController *)self acBackDisabledReasons];
  v3 = [v2 count] == 0;

  return v3;
}

- (void)_setACBackDisabled:(BOOL)a3 forRequester:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(DBDashboardHomeViewController *)self acBackDisabledReasons];
  v9 = v7;
  if (v4)
  {

    if (!v9)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(DBDashboardHomeViewController *)self setAcBackDisabledReasons:v8];
    }

    v9 = [(DBDashboardHomeViewController *)self acBackDisabledReasons];
    [v9 addObject:v6];
  }

  else
  {
    [v7 removeObject:v6];
  }
}

- (void)folderControllerWillBeginScrolling:(id)a3
{
  v4 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  [v4 beginCancelingTouches];

  [(DBDashboardHomeViewController *)self _setACBackDisabled:1 forRequester:@"Scrolling"];
}

- (void)folderControllerDidEndScrolling:(id)a3
{
  v4 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  [v4 endCancelingTouches];

  [(DBDashboardHomeViewController *)self currentPageIndexDidChange];
  v5 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__DBDashboardHomeViewController_folderControllerDidEndScrolling___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

- (id)folderController:(id)a3 iconListView:(id)a4 iconDropSessionDidUpdate:(id)a5
{
  v5 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:0];

  return v5;
}

- (void)invalidate
{
  v3 = [(DBDashboardHomeViewController *)self dataStoreMonitor];
  [v3 removeObserver:self];

  v4 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  [v4 invalidate];

  v5 = [(DBDashboardHomeViewController *)self todayViewController];
  [v5 invalidate];

  v6 = +[DBApplicationController sharedInstance];
  [v6 removeObserver:self];

  +[DBIconDropShadowProvider invalidate];
  [DBIconView setEnvironmentConfiguration:0];
  v7 = [(DBDashboardHomeViewController *)self environment];
  v8 = [v7 environmentConfiguration];

  [v8 removeObserver:self];
}

- (void)appLinkManager:(id)a3 didAddAppLinks:(id)a4 didRemoveAppLinks:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v27 = a4;
  v7 = a5;
  v28 = self;
  v8 = [(DBDashboardHomeViewController *)self iconModel];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        v15 = DBLogForCategory(0x1CuLL);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v14 appLink];
          *buf = 136315394;
          v39 = "[DBDashboardHomeViewController appLinkManager:didAddAppLinks:didRemoveAppLinks:]";
          v40 = 2112;
          v41 = v18;
          _os_log_debug_impl(&dword_248146000, v15, OS_LOG_TYPE_DEBUG, "%s: Received removing %@", buf, 0x16u);
        }

        v16 = [v14 appLink];
        v17 = [v16 identifier];
        [v8 removeIconForIdentifier:v17];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v11);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = v27;
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      v23 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v29 + 1) + 8 * v23);
        v25 = DBLogForCategory(0x1CuLL);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = [v24 appLink];
          *buf = 136315394;
          v39 = "[DBDashboardHomeViewController appLinkManager:didAddAppLinks:didRemoveAppLinks:]";
          v40 = 2112;
          v41 = v26;
          _os_log_debug_impl(&dword_248146000, v25, OS_LOG_TYPE_DEBUG, "%s: Received adding %@", buf, 0x16u);
        }

        [v8 addIcon:v24];
        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v21);
  }

  [(DBDashboardHomeViewController *)v28 _handleAppLibraryRefresh];
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (void)allApplicationIcons
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138412802;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a1;
  _os_log_debug_impl(&dword_248146000, a3, OS_LOG_TYPE_DEBUG, "Adding %@ AppLink icons to %@\n%@", &v8, 0x20u);
}

- (void)_launchAppLink:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Unknown appLink activation: %@", &v2, 0xCu);
}

@end