@interface DBDashboardHomeViewController
- (BOOL)_isACBackEnabled;
- (BOOL)_onTodaysPage;
- (BOOL)_onWidgetsPage;
- (BOOL)_shouldHideTodayView;
- (BOOL)iconCanDisplayBadge:(id)badge;
- (BOOL)iconManager:(id)manager allowsBadgingForIcon:(id)icon;
- (BOOL)isIconVisible:(id)visible;
- (BOOL)isIconVisibleForIdentifier:(id)identifier;
- (CRSWidgetLayoutVehicleDataProviding)widgetLayoutDataProvider;
- (DBDashboardHomeViewController)initWithEnvironment:(id)environment windowScene:(id)scene layoutEngine:(id)engine;
- (DBEnvironment)environment;
- (NSArray)allApplicationIcons;
- (UIWindowScene)windowScene;
- (double)_maxWidgetDimmingViewAlpha;
- (double)pageControlPlatterAlphaForPageIndex:(unint64_t)index;
- (double)widgetDimmingViewAlphaForPageIndex:(unint64_t)index;
- (id)_iconViewForIndexpath:(id)indexpath;
- (id)_indexPathForFallbackIcon:(BOOL)icon;
- (id)_linearFocusMovementSequences;
- (id)_preferredFocusedIcon;
- (id)defaultIconStateForIconManager:(id)manager;
- (id)folderController;
- (id)folderController:(id)controller iconListView:(id)view iconDropSessionDidUpdate:(id)update;
- (id)folderView;
- (id)iconForIdentifier:(id)identifier;
- (id)preferredFocusEnvironments;
- (id)visibleIconViewForIdentifier:(id)identifier;
- (int64_t)_pageIndexForPageType:(unint64_t)type;
- (int64_t)_todayLeadingPageIndex;
- (int64_t)_todayPageIndex;
- (int64_t)_widgetsLeadingPageIndex;
- (int64_t)_widgetsPageIndex;
- (int64_t)defaultStartPageIndex;
- (unint64_t)_pageType;
- (void)_cacheIconImagesForCurrentTraitCollection;
- (void)_handleAppLibraryRefresh;
- (void)_handleBackActionSupportACBack:(BOOL)back;
- (void)_invalidateBadgeForIdentifier:(id)identifier;
- (void)_launchAppLink:(id)link;
- (void)_launchNowPlaying;
- (void)_persistCachedIconImages;
- (void)_resetIconStateIfNecessary;
- (void)_setACBackDisabled:(BOOL)disabled forRequester:(id)requester;
- (void)_setStatusBarOverrideActive:(BOOL)active;
- (void)_setupIconModelWithRelayout:(BOOL)relayout;
- (void)_wheelChangedWithEvent:(id)event;
- (void)_widgetHomeVCLayoutStateDidChange:(id)change;
- (void)addPageChangeObserver:(id)observer;
- (void)allApplicationIcons;
- (void)appLinkManager:(id)manager didAddAppLinks:(id)links didRemoveAppLinks:(id)appLinks;
- (void)applicationController:(id)controller addedApplications:(id)applications updatedApplications:(id)updatedApplications removedApplications:(id)removedApplications;
- (void)currentPageIndexDidChange;
- (void)dataStoreMonitor:(id)monitor didUpdateApplication:(id)application forKey:(id)key;
- (void)dealloc;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)folderControllerDidEndScrolling:(id)scrolling;
- (void)folderControllerWillBeginScrolling:(id)scrolling;
- (void)getApplicationIconInformationForBundleID:(id)d drawBorder:(BOOL)border completion:(id)completion;
- (void)getIconStateWithCompletion:(id)completion;
- (void)handleEvent:(id)event;
- (void)iconBadgeController:(id)controller didUpdateForIdentifiers:(id)identifiers;
- (void)iconManager:(id)manager launchIconForIconView:(id)view;
- (void)iconManager:(id)manager willUseRootFolderControllerConfiguration:(id)configuration;
- (void)invalidate;
- (void)loadView;
- (void)removePageChangeObserver:(id)observer;
- (void)resetIconState;
- (void)restartPageControlTimerIfNecessary;
- (void)rootFolderPageStateProvider:(id)provider didContinueTransitionToState:(int64_t)state progress:(double)progress;
- (void)rootFolderPageStateProvider:(id)provider didEndTransitionFromState:(int64_t)state toState:(int64_t)toState successfully:(BOOL)successfully;
- (void)rootFolderPageStateProvider:(id)provider willBeginTransitionToState:(int64_t)state animated:(BOOL)animated interactive:(BOOL)interactive;
- (void)setAccessibilityElementsActive:(BOOL)active;
- (void)setActive:(BOOL)active;
- (void)setCurrentPageIndex:(unint64_t)index animated:(BOOL)animated completion:(id)completion;
- (void)setCurrentPageType:(unint64_t)type animated:(BOOL)animated;
- (void)setForeground:(BOOL)foreground;
- (void)setIconState:(id)state;
- (void)setLeadingCustomViewPageHidden:(BOOL)hidden atIndex:(int64_t)index;
- (void)updateDefaultPageIndex;
- (void)userInterfaceStyleChanged;
- (void)viewDidLoad;
- (void)workspace:(id)workspace stateDidChangeFromState:(id)state toState:(id)toState;
@end

@implementation DBDashboardHomeViewController

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (BOOL)_onWidgetsPage
{
  selfCopy = self;
  folderController = [(DBDashboardHomeViewController *)self folderController];
  currentPageIndex = [folderController currentPageIndex];
  LOBYTE(selfCopy) = currentPageIndex == [(DBDashboardHomeViewController *)selfCopy _widgetsPageIndex];

  return selfCopy;
}

- (id)folderController
{
  objc_opt_class();
  iconManager = [(DBDashboardHomeViewController *)self iconManager];
  rootFolderController = [iconManager rootFolderController];
  if (rootFolderController && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = rootFolderController;
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

  folderController = [(DBDashboardHomeViewController *)self folderController];
  v5 = [folderController pageIndexForLeadingCustomPageIndex:{-[DBDashboardHomeViewController _widgetsLeadingPageIndex](self, "_widgetsLeadingPageIndex")}];

  return v5;
}

- (int64_t)_widgetsLeadingPageIndex
{
  widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  if (widgetHomeViewController)
  {
    folderController = [(DBDashboardHomeViewController *)self folderController];
    leadingCustomViewControllers = [folderController leadingCustomViewControllers];
    widgetHomeViewController2 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    v7 = [leadingCustomViewControllers indexOfObject:widgetHomeViewController2];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (BOOL)_onTodaysPage
{
  selfCopy = self;
  folderController = [(DBDashboardHomeViewController *)self folderController];
  currentPageIndex = [folderController currentPageIndex];
  LOBYTE(selfCopy) = currentPageIndex == [(DBDashboardHomeViewController *)selfCopy _todayPageIndex];

  return selfCopy;
}

- (int64_t)_todayPageIndex
{
  if ([(DBDashboardHomeViewController *)self _todayLeadingPageIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  folderController = [(DBDashboardHomeViewController *)self folderController];
  v5 = [folderController pageIndexForLeadingCustomPageIndex:{-[DBDashboardHomeViewController _todayLeadingPageIndex](self, "_todayLeadingPageIndex")}];

  return v5;
}

- (int64_t)_todayLeadingPageIndex
{
  folderController = [(DBDashboardHomeViewController *)self folderController];
  leadingCustomViewControllers = [folderController leadingCustomViewControllers];
  todayViewController = [(DBDashboardHomeViewController *)self todayViewController];
  v6 = [leadingCustomViewControllers indexOfObject:todayViewController];

  return v6;
}

- (DBDashboardHomeViewController)initWithEnvironment:(id)environment windowScene:(id)scene layoutEngine:(id)engine
{
  v63[1] = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  sceneCopy = scene;
  engineCopy = engine;
  v61.receiver = self;
  v61.super_class = DBDashboardHomeViewController;
  v11 = [(DBDashboardHomeViewController *)&v61 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285ADE298];
    pageObservers = v11->_pageObservers;
    v11->_pageObservers = v12;

    v11->_isApplicationPresented = 0;
    environmentConfiguration = [environmentCopy environmentConfiguration];
    iconBadgeController = [environmentConfiguration iconBadgeController];
    iconBadgeController = v11->_iconBadgeController;
    v11->_iconBadgeController = iconBadgeController;

    [(DBIconBadgeController *)v11->_iconBadgeController addObserver:v11];
    objc_storeWeak(&v11->_environment, environmentCopy);
    objc_storeWeak(&v11->_windowScene, sceneCopy);
    objc_storeStrong(&v11->_layoutEngine, engine);
    environmentConfiguration2 = [environmentCopy environmentConfiguration];
    iconImageCache = [environmentConfiguration2 iconImageCache];
    iconImageCache = v11->_iconImageCache;
    v11->_iconImageCache = iconImageCache;

    environmentConfiguration3 = [environmentCopy environmentConfiguration];
    [environmentConfiguration3 addObserver:v11];

    initForStandByScreen = [objc_alloc(MEMORY[0x277CF9348]) initForStandByScreen];
    statusBarStyleAssertion = v11->_statusBarStyleAssertion;
    v11->_statusBarStyleAssertion = initForStandByScreen;

    v23 = [DBTodayViewController alloc];
    WeakRetained = objc_loadWeakRetained(&v11->_environment);
    v25 = [(DBTodayViewController *)v23 initWithEnvironment:WeakRetained layoutEngine:engineCopy];
    todayViewController = v11->_todayViewController;
    v11->_todayViewController = v25;

    v27 = objc_loadWeakRetained(&v11->_environment);
    environmentConfiguration4 = [v27 environmentConfiguration];
    session = [environmentConfiguration4 session];
    configuration = [session configuration];
    lodWidgetsMode = [configuration lodWidgetsMode];

    if (lodWidgetsMode != 1)
    {
      v32 = [_TtC9DashBoard26DBWidgetHomeViewController alloc];
      v33 = objc_loadWeakRetained(&v11->_environment);
      v34 = [(DBWidgetHomeViewController *)v32 initWithEnvironment:v33 layoutEngine:engineCopy];
      widgetHomeViewController = v11->_widgetHomeViewController;
      v11->_widgetHomeViewController = v34;

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v11 selector:sel__widgetHomeVCLayoutStateDidChange_ name:@"DBWidgetHomeVCLayoutStateChangedNotification" object:0];
    }

    environment = [(DBDashboardHomeViewController *)v11 environment];
    environmentConfiguration5 = [environment environmentConfiguration];
    isVehicleDataSession = [environmentConfiguration5 isVehicleDataSession];

    if (isVehicleDataSession)
    {
      v40 = [DBAppLinkManager alloc];
      environment2 = [(DBDashboardHomeViewController *)v11 environment];
      environmentConfiguration6 = [environment2 environmentConfiguration];
      session2 = [environmentConfiguration6 session];
      v44 = [(DBAppLinkManager *)v40 initWithSession:session2];
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
    environment3 = [(DBDashboardHomeViewController *)v11 environment];
    environmentConfiguration7 = [environment3 environmentConfiguration];
    v52 = [(DBNowPlayingObserver *)v49 initWithEnvironmentConfiguration:environmentConfiguration7];
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

- (void)iconBadgeController:(id)controller didUpdateForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__DBDashboardHomeViewController_iconBadgeController_didUpdateForIdentifiers___block_invoke;
  v7[3] = &unk_278F014B8;
  v8 = identifiersCopy;
  selfCopy = self;
  v6 = identifiersCopy;
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

- (void)_setupIconModelWithRelayout:(BOOL)relayout
{
  relayoutCopy = relayout;
  v82[4] = *MEMORY[0x277D85DE8];
  iconManager = [(DBDashboardHomeViewController *)self iconManager];
  rootViewController = [iconManager rootViewController];

  WeakRetained = objc_loadWeakRetained(&self->_environment);
  environmentConfiguration = [WeakRetained environmentConfiguration];

  if (rootViewController)
  {
    [rootViewController removeFromParentViewController];
    view = [rootViewController view];
    [view removeFromSuperview];
  }

  environment = [(DBDashboardHomeViewController *)self environment];
  environmentConfiguration2 = [environment environmentConfiguration];
  [DBIconView setEnvironmentConfiguration:environmentConfiguration2];

  environment2 = [(DBDashboardHomeViewController *)self environment];
  environmentConfiguration3 = [environment2 environmentConfiguration];
  LODWORD(environmentConfiguration2) = [environmentConfiguration3 isVehicleDataSession];

  if (environmentConfiguration2)
  {
    appLinkManager = [(DBDashboardHomeViewController *)self appLinkManager];
    [appLinkManager addObserver:self];
  }

  v14 = [DBIconModelStore alloc];
  vehicleID = [environmentConfiguration vehicleID];
  v16 = [(DBIconModelStore *)v14 initWithVehicleId:vehicleID];

  [environmentConfiguration pointScale];
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
  v80 = environmentConfiguration;
  navigationStateProvider = [environmentConfiguration navigationStateProvider];
  [navigationStateProvider setIconProvider:self];

  [(DBDashboardHomeViewController *)self _persistCachedIconImages];
  iconManager2 = [(DBDashboardHomeViewController *)self iconManager];
  rootViewController2 = [iconManager2 rootViewController];

  [(DBDashboardHomeViewController *)self addChildViewController:rootViewController2];
  view2 = [(DBDashboardHomeViewController *)self view];
  view3 = [rootViewController2 view];
  [view2 addSubview:view3];

  [rootViewController2 didMoveToParentViewController:self];
  view4 = [rootViewController2 view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view5 = [(DBDashboardHomeViewController *)self view];
  leadingAnchor = [view5 leadingAnchor];
  view6 = [rootViewController2 view];
  leadingAnchor2 = [view6 leadingAnchor];
  v72 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v82[0] = v72;
  view7 = [(DBDashboardHomeViewController *)self view];
  trailingAnchor = [view7 trailingAnchor];
  view8 = [rootViewController2 view];
  trailingAnchor2 = [view8 trailingAnchor];
  v67 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v82[1] = v67;
  view9 = [(DBDashboardHomeViewController *)self view];
  topAnchor = [view9 topAnchor];
  view10 = [rootViewController2 view];
  topAnchor2 = [view10 topAnchor];
  v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v82[2] = v37;
  view11 = [(DBDashboardHomeViewController *)self view];
  bottomAnchor = [view11 bottomAnchor];
  v77 = rootViewController2;
  view12 = [rootViewController2 view];
  bottomAnchor2 = [view12 bottomAnchor];
  v42 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v82[3] = v42;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:4];

  [MEMORY[0x277CCAAD0] activateConstraints:v43];
  folderController = [(DBDashboardHomeViewController *)self folderController];
  v45 = objc_loadWeakRetained(&self->_environment);
  [folderController setEnvironment:v45];

  iconModel = [(DBDashboardHomeViewController *)self iconModel];
  rootFolder = [iconModel rootFolder];
  [folderController setFolder:rootFolder];

  layoutEngine = [(DBDashboardHomeViewController *)self layoutEngine];
  [folderController setLayoutEngine:layoutEngine];

  [folderController setFolderDelegate:self];
  [folderController addPageStateObserver:self];
  folderView = [(DBDashboardHomeViewController *)self folderView];
  pageControl = [folderView pageControl];
  traitCollection = [(DBDashboardHomeViewController *)self traitCollection];
  [pageControl setOverrideUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  [(DBDashboardHomeViewController *)self setLeadingCustomViewPageHidden:[(DBDashboardHomeViewController *)self _shouldHideTodayView] atIndex:[(DBDashboardHomeViewController *)self _todayLeadingPageIndex]];
  widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];

  if (widgetHomeViewController)
  {
    widgetHomeViewController2 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    -[DBDashboardHomeViewController setLeadingCustomViewPageHidden:atIndex:](self, "setLeadingCustomViewPageHidden:atIndex:", [widgetHomeViewController2 enabled] ^ 1, -[DBDashboardHomeViewController _widgetsLeadingPageIndex](self, "_widgetsLeadingPageIndex"));

    widgetHomeViewController3 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    [widgetHomeViewController3 relayout];
  }

  environment3 = [(DBDashboardHomeViewController *)self environment];
  environmentConfiguration4 = [environment3 environmentConfiguration];
  vehicle = [environmentConfiguration4 vehicle];

  finishedWelcome = [vehicle finishedWelcome];
  if (finishedWelcome)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v60 = [standardUserDefaults integerForKey:@"CARStartPageType"];
  }

  else
  {
    v60 = 2;
  }

  defaultStartPageIndex = [(DBDashboardHomeViewController *)self _pageIndexForPageType:v60];
  if (defaultStartPageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    defaultStartPageIndex = [(DBDashboardHomeViewController *)self defaultStartPageIndex];
  }

  [(DBDashboardHomeViewController *)self setCurrentPageIndex:defaultStartPageIndex animated:0];
  if (relayoutCopy)
  {
    iconManager3 = [(DBDashboardHomeViewController *)self iconManager];
    [iconManager3 relayout];

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
  v3 = [self description];
  v4 = 138477827;
  v5 = v3;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "Invalid list models in folder %{private}@ adding back icons.", &v4, 0xCu);
}

- (void)restartPageControlTimerIfNecessary
{
  folderView = [(DBDashboardHomeViewController *)self folderView];
  [folderView restartPageControlTimerIfNecessary];

  if ([(DBDashboardHomeViewController *)self _onWidgetsPage])
  {
    widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    [widgetHomeViewController updatePageControlsOffsetAndFlash:1];
  }
}

- (void)_widgetHomeVCLayoutStateDidChange:(id)change
{
  changeCopy = change;
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
    _onWidgetsPage = [(DBDashboardHomeViewController *)self _onWidgetsPage];

    if (_onWidgetsPage)
    {
      folderController = [(DBDashboardHomeViewController *)self folderController];
      -[DBDashboardHomeViewController setCurrentPageIndex:animated:completion:](self, "setCurrentPageIndex:animated:completion:", [folderController defaultPageIndex], 1, v5);
      goto LABEL_11;
    }
  }

  _widgetsPageIndex = [(DBDashboardHomeViewController *)self _widgetsPageIndex];
  widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  enabled = [widgetHomeViewController enabled];

  if ((_widgetsPageIndex != 0x7FFFFFFFFFFFFFFFLL) != enabled)
  {
    v5[2](v5);
  }

  if (_widgetsPageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    folderController = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    if ([folderController enabled])
    {
      isApplicationPresented = [(DBDashboardHomeViewController *)self isApplicationPresented];

      if (!isApplicationPresented)
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
    widgetDimmingView = [(DBDashboardHomeViewController *)self widgetDimmingView];
    [widgetDimmingView setAlpha:v14];
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
  widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];

  if (widgetHomeViewController)
  {
    widgetDimmingView = [(DBDashboardHomeViewController *)self widgetDimmingView];
    [widgetDimmingView setHidden:0];

    widgetDimmingView2 = [(DBDashboardHomeViewController *)self widgetDimmingView];
    [widgetDimmingView2 setAlpha:0.0];
  }

  view = [(DBDashboardHomeViewController *)self view];
  [view setClipsToBounds:1];

  view2 = [(DBDashboardHomeViewController *)self view];
  layer = [view2 layer];
  [layer setHitTestsAsOpaque:1];

  [(DBDashboardHomeViewController *)self _setupIconModelWithRelayout:0];
  v9 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__backButtonTapped_];
  [v9 setAllowedPressTypes:&unk_285AA4A00];
  view3 = [(DBDashboardHomeViewController *)self view];
  [view3 addGestureRecognizer:v9];
}

- (void)userInterfaceStyleChanged
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(DBDashboardHomeViewController *)self _onWidgetsPage])
  {
    [(DBDashboardHomeViewController *)self _maxWidgetDimmingViewAlpha];
    v4 = v3;
    widgetDimmingView = [(DBDashboardHomeViewController *)self widgetDimmingView];
    [widgetDimmingView setAlpha:v4];
  }

  todayViewController = [(DBDashboardHomeViewController *)self todayViewController];

  if (todayViewController)
  {
    v7 = DBLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      traitCollection = [(DBDashboardHomeViewController *)self traitCollection];
      dbUserInterfaceStyleDescription = [traitCollection dbUserInterfaceStyleDescription];
      v12 = 138412290;
      v13 = dbUserInterfaceStyleDescription;
      _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Setting todayViewController userInterfaceStyle to %@", &v12, 0xCu);
    }

    todayViewController2 = [(DBDashboardHomeViewController *)self todayViewController];
    traitCollection2 = [(DBDashboardHomeViewController *)self traitCollection];
    [todayViewController2 setOverrideUserInterfaceStyle:{objc_msgSend(traitCollection2, "userInterfaceStyle")}];
  }
}

- (void)handleEvent:(id)event
{
  if ([event type] == 1)
  {

    [(DBDashboardHomeViewController *)self _handleBackActionSupportACBack:0];
  }
}

- (void)applicationController:(id)controller addedApplications:(id)applications updatedApplications:(id)updatedApplications removedApplications:(id)removedApplications
{
  v32 = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  updatedApplicationsCopy = updatedApplications;
  removedApplicationsCopy = removedApplications;
  v12 = DBLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v27 = applicationsCopy;
    v28 = 2112;
    v29 = updatedApplicationsCopy;
    v30 = 2112;
    v31 = removedApplicationsCopy;
    _os_log_impl(&dword_248146000, v12, OS_LOG_TYPE_DEFAULT, "Application Icons, added: %@, updated: %@, removed: %@", buf, 0x20u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = removedApplicationsCopy;
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
        iconModel = [(DBDashboardHomeViewController *)self iconModel];
        bundleIdentifier = [v18 bundleIdentifier];
        [iconModel removeIconForIdentifier:bundleIdentifier];

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
  allApplications = [v4 allApplications];
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __52__DBDashboardHomeViewController_allApplicationIcons__block_invoke;
  v26 = &unk_278F03930;
  v6 = v4;
  v27 = v6;
  v7 = v3;
  v28 = v7;
  [allApplications enumerateObjectsUsingBlock:&v23];

  v8 = objc_alloc_init(_TtC9DashBoard16DBNowPlayingIcon);
  [v7 addObject:{v8, v23, v24, v25, v26}];
  appLinkManager = [(DBDashboardHomeViewController *)self appLinkManager];
  appLinkIcons = [appLinkManager appLinkIcons];

  v11 = DBLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(DBDashboardHomeViewController *)appLinkIcons allApplicationIcons];
  }

  if (appLinkIcons)
  {
    [v7 addObjectsFromArray:appLinkIcons];
  }

  environment = [(DBDashboardHomeViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  isOEMIconVisible = [environmentConfiguration isOEMIconVisible];

  if (isOEMIconVisible)
  {
    v15 = [_TtC9DashBoard9DBOEMIcon alloc];
    environment2 = [(DBDashboardHomeViewController *)self environment];
    environmentConfiguration2 = [environment2 environmentConfiguration];
    session = [environmentConfiguration2 session];
    configuration = [session configuration];
    v20 = [(DBOEMIcon *)v15 initWithSessionConfiguration:configuration];

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

- (void)workspace:(id)workspace stateDidChangeFromState:(id)state toState:(id)toState
{
  state = [workspace state];
  activeBundleIdentifier = [state activeBundleIdentifier];

  v8 = +[DBApplicationController sharedInstance];
  v9 = [v8 applicationWithBundleIdentifier:activeBundleIdentifier];

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

- (void)getIconStateWithCompletion:(id)completion
{
  completionCopy = completion;
  iconModel = [(DBDashboardHomeViewController *)self iconModel];
  exportIconLayoutState = [iconModel exportIconLayoutState];

  completionCopy[2](completionCopy, exportIconLayoutState, 0);
}

- (void)setIconState:(id)state
{
  v15[2] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  hiddenIcons = [stateCopy hiddenIcons];
  v6 = [hiddenIcons bs_map:&__block_literal_global_306];

  iconModel = [(DBDashboardHomeViewController *)self iconModel];
  v14[0] = *MEMORY[0x277CF9068];
  iconOrder = [stateCopy iconOrder];

  v9 = MEMORY[0x277CBEBF8];
  if (iconOrder)
  {
    v10 = iconOrder;
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
  [iconModel importState:v11];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"CARRefreshAppDockNotification" object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.didChangeIconLayout", 0, 0, 1u);
}

- (void)resetIconState
{
  iconModel = [(DBDashboardHomeViewController *)self iconModel];
  [iconModel resetCurrentIconState];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.didChangeIconLayout", 0, 0, 1u);
}

- (void)getApplicationIconInformationForBundleID:(id)d drawBorder:(BOOL)border completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  v9 = [objc_alloc(MEMORY[0x277CF8FF8]) initWithBundleIdentifier:dCopy];
  v10 = DBLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v40 = dCopy;
    _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_INFO, "DHVC: Application icon info requested for %@", buf, 0xCu);
  }

  view = [(DBDashboardHomeViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];
  [screen scale];
  [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = *MEMORY[0x277CF8FD8];
  if ([dCopy isEqualToString:*MEMORY[0x277CF8FD8]])
  {
    environment = [(DBDashboardHomeViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    session = [environmentConfiguration session];
    configuration = [session configuration];

    v28 = [(UIImage *)configuration resolvedOEMIconWithIconImageInfo:v16, v18, v20, v22];
    v29 = v28;
  }

  else
  {
    iconImageCache = [(DBDashboardHomeViewController *)self iconImageCache];
    environment2 = [(DBDashboardHomeViewController *)self environment];
    environmentConfiguration2 = [environment2 environmentConfiguration];
    vehicleID = [environmentConfiguration2 vehicleID];
    configuration = [iconImageCache iconImageForBundleIdentifier:dCopy inVehicle:vehicleID];

    if ([dCopy isEqualToString:*MEMORY[0x277CF8FE0]] || (objc_msgSend(dCopy, "isEqualToString:", *MEMORY[0x277CF8FC8]) & 1) != 0 || objc_msgSend(dCopy, "isEqualToString:", v23))
    {
      dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"LAUNCHER_NAME-%@", dCopy];
      v35 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
      localizedName = [v35 localizedStringForKey:dCopy value:&stru_285A57218 table:@"CarPlayApp"];
    }

    else
    {
      dCopy = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:0];
      db_localizedCarName = [dCopy db_localizedCarName];
      v35 = db_localizedCarName;
      if (db_localizedCarName)
      {
        localizedName = db_localizedCarName;
        v35 = localizedName;
      }

      else
      {
        localizedName = [dCopy localizedName];
      }
    }

    v29 = localizedName;

    if (configuration)
    {
      v37 = UIImagePNGRepresentation(configuration);
      [v9 setIconImageData:v37];

      [(UIImage *)configuration scale];
      [v9 setIconImageScale:?];
    }

    [v9 setLocalizedDisplayName:v29];
    v28 = v9;
  }

  completionCopy[2](completionCopy, v28, 0);
}

- (void)iconManager:(id)manager willUseRootFolderControllerConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = objc_alloc(MEMORY[0x277D760A8]);
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v7 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.3];
  v8 = [v5 initWithStyle:0 primaryColor:whiteColor secondaryColor:v7 shadowColor:0];

  [configurationCopy setLegibilitySettings:v8];
  array = [MEMORY[0x277CBEB18] array];
  widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];

  if (widgetHomeViewController)
  {
    widgetHomeViewController2 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    [array addObject:widgetHomeViewController2];
  }

  todayViewController = [(DBDashboardHomeViewController *)self todayViewController];
  [array addObject:todayViewController];

  v13 = [array copy];
  [configurationCopy setLeadingCustomViewControllers:v13];
}

- (void)iconManager:(id)manager launchIconForIconView:(id)view
{
  viewCopy = view;
  icon = [viewCopy icon];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    environment = [(DBDashboardHomeViewController *)self environment];
    environmentConfiguration = [environment environmentConfiguration];
    session = [environmentConfiguration session];
    [session requestCarUI];
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
        v9 = icon;
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
          icon2 = [viewCopy icon];
          if (icon2 && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v12 = icon2;
          }

          else
          {
            v12 = 0;
          }

          v13 = +[DBApplicationController sharedInstance];
          applicationBundleID = [v12 applicationBundleID];
          v15 = [v13 applicationWithBundleIdentifier:applicationBundleID];

          v16 = objc_alloc_init(DBActivationSettings);
          [(DBActivationSettings *)v16 setLaunchSource:3];
          v17 = [DBApplicationLaunchInfo launchInfoForApplication:v15 withActivationSettings:v16];
          environment2 = [(DBDashboardHomeViewController *)self environment];
          v19 = [DBEvent eventWithType:4 context:v17];
          [environment2 handleEvent:v19];
        }
      }
    }
  }
}

- (BOOL)iconManager:(id)manager allowsBadgingForIcon:(id)icon
{
  iconCopy = icon;
  if ([iconCopy isLeafIcon])
  {
    v6 = iconCopy;
    v7 = +[DBApplicationController sharedInstance];
    leafIdentifier = [v6 leafIdentifier];
    v9 = [v7 applicationWithBundleIdentifier:leafIdentifier];

    appPolicy = [v9 appPolicy];
    if ([appPolicy badgesAppIcon])
    {
      iconBadgeController = [(DBDashboardHomeViewController *)self iconBadgeController];
      leafIdentifier2 = [v6 leafIdentifier];
      v13 = [iconBadgeController notificationsEnabledForIdentifier:leafIdentifier2];
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

- (id)defaultIconStateForIconManager:(id)manager
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 URLForResource:@"DefaultIconState_CarDisplay" withExtension:@"plist"];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4];

  return v5;
}

- (id)folderView
{
  folderController = [(DBDashboardHomeViewController *)self folderController];
  contentView = [folderController contentView];

  return contentView;
}

- (void)rootFolderPageStateProvider:(id)provider willBeginTransitionToState:(int64_t)state animated:(BOOL)animated interactive:(BOOL)interactive
{
  providerCopy = provider;
  folderView = [(DBDashboardHomeViewController *)self folderView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    folderView2 = [(DBDashboardHomeViewController *)self folderView];
    [folderView2 setPageControlHidden:0 animated:1];
  }

  folderController = [(DBDashboardHomeViewController *)self folderController];
  minimumPageIndex = [folderController minimumPageIndex];
  destinationPageOffset = [providerCopy destinationPageOffset];

  v14 = destinationPageOffset + minimumPageIndex;
  _widgetsPageIndex = [(DBDashboardHomeViewController *)self _widgetsPageIndex];
  _todayPageIndex = [(DBDashboardHomeViewController *)self _todayPageIndex];
  if (_widgetsPageIndex != 0x7FFFFFFFFFFFFFFFLL && v14 == _widgetsPageIndex)
  {
    widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    [widgetHomeViewController setForeground:1];
  }

  if (_todayPageIndex != 0x7FFFFFFFFFFFFFFFLL && v14 == _todayPageIndex)
  {
    todayViewController = [(DBDashboardHomeViewController *)self todayViewController];
    [todayViewController setForeground:1];
  }
}

- (void)rootFolderPageStateProvider:(id)provider didContinueTransitionToState:(int64_t)state progress:(double)progress
{
  providerCopy = provider;
  folderController = [(DBDashboardHomeViewController *)self folderController];
  minimumPageIndex = [folderController minimumPageIndex];
  destinationPageOffset = [providerCopy destinationPageOffset];

  _widgetsPageIndex = [(DBDashboardHomeViewController *)self _widgetsPageIndex];
  if (_widgetsPageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = _widgetsPageIndex;
    if (destinationPageOffset + minimumPageIndex == _widgetsPageIndex)
    {
      progressCopy = 0.0;
      if (progress >= 0.0)
      {
        progressCopy = progress;
      }

      if (progressCopy <= 1.0)
      {
        v14 = progressCopy;
      }

      else
      {
        v14 = 1.0;
      }
    }

    else
    {
      folderController2 = [(DBDashboardHomeViewController *)self folderController];
      currentPageIndex = [folderController2 currentPageIndex];

      if (currentPageIndex != v12)
      {
LABEL_15:
        widgetDimmingView = [(DBDashboardHomeViewController *)self widgetDimmingView];
        [widgetDimmingView alpha];
        v23 = v22;
        [(DBDashboardHomeViewController *)self _maxWidgetDimmingViewAlpha];
        [(DBDashboardHomeViewController *)self _setStatusBarOverrideActive:v23 > v24 * 0.5];

        goto LABEL_16;
      }

      progressCopy2 = 0.0;
      if (progress >= 0.0)
      {
        progressCopy2 = progress;
      }

      if (progressCopy2 > 1.0)
      {
        progressCopy2 = 1.0;
      }

      v14 = 1.0 - progressCopy2;
    }

    [(DBDashboardHomeViewController *)self _maxWidgetDimmingViewAlpha];
    v19 = v14 * v18;
    widgetDimmingView2 = [(DBDashboardHomeViewController *)self widgetDimmingView];
    [widgetDimmingView2 setAlpha:v19];

    goto LABEL_15;
  }

LABEL_16:
  if (state == 2)
  {
    pageState = [providerCopy pageState];
    v26 = 3.0;
    if (pageState != 2)
    {
      v26 = progress * 3.0;
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
    v28 = progress * 3.0;
    if (progress * 3.0 < 0.0)
    {
      v28 = 0.0;
    }

    if (v28 > 1.0)
    {
      v28 = 1.0;
    }

    v27 = 1.0 - v28;
  }

  folderView = [(DBDashboardHomeViewController *)self folderView];
  [folderView setPageControlPlatterAlpha:v27];
}

- (void)rootFolderPageStateProvider:(id)provider didEndTransitionFromState:(int64_t)state toState:(int64_t)toState successfully:(BOOL)successfully
{
  v6 = [(DBDashboardHomeViewController *)self folderView:provider];
  [v6 restartPageControlTimerIfNecessary];
}

- (CRSWidgetLayoutVehicleDataProviding)widgetLayoutDataProvider
{
  widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  widgetLayoutDataProvider = [widgetHomeViewController widgetLayoutDataProvider];

  return widgetLayoutDataProvider;
}

- (id)visibleIconViewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  iconModel = [(DBDashboardHomeViewController *)self iconModel];
  v6 = [iconModel leafIconForIdentifier:identifierCopy];

  folderController = [(DBDashboardHomeViewController *)self folderController];
  if ([folderController isDisplayingIcon:v6])
  {
    v8 = [folderController iconViewForIcon:v6 location:*MEMORY[0x277D666D0]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)addPageChangeObserver:(id)observer
{
  observerCopy = observer;
  pageObservers = [(DBDashboardHomeViewController *)self pageObservers];
  [pageObservers addObserver:observerCopy];

  [observerCopy homeViewController:self didChangeToPageType:{-[DBDashboardHomeViewController _pageType](self, "_pageType")}];
}

- (void)removePageChangeObserver:(id)observer
{
  observerCopy = observer;
  pageObservers = [(DBDashboardHomeViewController *)self pageObservers];
  [pageObservers unregisterObserver:observerCopy];
}

- (void)setForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  if ([(DBDashboardHomeViewController *)self _onTodaysPage])
  {
    todayViewController = [(DBDashboardHomeViewController *)self todayViewController];
    [todayViewController setForeground:foregroundCopy];
  }
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  todayViewController = [(DBDashboardHomeViewController *)self todayViewController];
  [todayViewController setActive:activeCopy];
}

- (void)setAccessibilityElementsActive:(BOOL)active
{
  activeCopy = active;
  view = [(DBDashboardHomeViewController *)self view];
  [view setAccessibilityElementsHidden:!activeCopy];
}

- (BOOL)isIconVisibleForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_opt_class();
  iconModel = [(DBDashboardHomeViewController *)self iconModel];
  v6 = [iconModel leafIconForIdentifier:identifierCopy];

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

- (id)iconForIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    iconModel = [(DBDashboardHomeViewController *)self iconModel];
    v6 = [iconModel leafIconForIdentifier:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)iconCanDisplayBadge:(id)badge
{
  badgeCopy = badge;
  iconManager = [(DBDashboardHomeViewController *)self iconManager];
  LOBYTE(self) = [(DBDashboardHomeViewController *)self iconManager:iconManager allowsBadgingForIcon:badgeCopy];

  return self;
}

- (BOOL)isIconVisible:(id)visible
{
  visibleCopy = visible;
  iconModel = [(DBDashboardHomeViewController *)self iconModel];
  v6 = [iconModel isIconVisible:visibleCopy];

  return v6;
}

- (void)_cacheIconImagesForCurrentTraitCollection
{
  iconManager = [(DBDashboardHomeViewController *)self iconManager];

  if (iconManager)
  {
    iconManager2 = [(DBDashboardHomeViewController *)self iconManager];
    traitCollection = [(DBDashboardHomeViewController *)self traitCollection];
    [iconManager2 precacheImagesForRootIconsWithTraitCollection:traitCollection];
  }
}

- (void)_setStatusBarOverrideActive:(BOOL)active
{
  activeCopy = active;
  v20 = *MEMORY[0x277D85DE8];
  statusBarStyleAssertion = [(DBDashboardHomeViewController *)self statusBarStyleAssertion];
  isValid = [statusBarStyleAssertion isValid];

  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CBEC28];
    if (activeCopy)
    {
      v9 = MEMORY[0x277CBEC38];
    }

    else
    {
      v9 = MEMORY[0x277CBEC28];
    }

    if (isValid)
    {
      v8 = MEMORY[0x277CBEC38];
    }

    v16 = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_248146000, v7, OS_LOG_TYPE_DEFAULT, "Setting status bar override: %{public}@ (previously: %{public}@)", &v16, 0x16u);
  }

  if (isValid != activeCopy)
  {
    v10 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
    v11 = [MEMORY[0x277CF0B70] settingsWithDuration:v10 timingFunction:0.2];
    statusBarStyleAssertion2 = [(DBDashboardHomeViewController *)self statusBarStyleAssertion];
    v13 = statusBarStyleAssertion2;
    if (activeCopy)
    {
      [statusBarStyleAssertion2 acquireWithAnimationSettings:v11];
      v14 = 2;
    }

    else
    {
      [statusBarStyleAssertion2 relinquishWithAnimationSettings:v11];
      v14 = 0;
    }

    folderController = [(DBDashboardHomeViewController *)self folderController];
    [folderController setOverrideUserInterfaceStyle:v14];
  }
}

- (void)updateDefaultPageIndex
{
  folderController = [(DBDashboardHomeViewController *)self folderController];
  [folderController setDefaultPageIndex:{-[DBDashboardHomeViewController defaultStartPageIndex](self, "defaultStartPageIndex")}];
}

- (int64_t)defaultStartPageIndex
{
  result = [(DBDashboardHomeViewController *)self _todayPageIndex];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    folderController = [(DBDashboardHomeViewController *)self folderController];
    minimumPageIndex = [folderController minimumPageIndex];

    return minimumPageIndex;
  }

  return result;
}

- (double)_maxWidgetDimmingViewAlpha
{
  v3 = 0.0;
  if (![(DBDashboardHomeViewController *)self isApplicationPresented])
  {
    traitCollection = [(DBDashboardHomeViewController *)self traitCollection];
    v3 = dbl_24839BE90[[traitCollection userInterfaceStyle] == 2];

    widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    if (![widgetHomeViewController showWallpaper])
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

  layoutEngine = [(DBDashboardHomeViewController *)self layoutEngine];
  hasEmbeddedSecondaryContentArea = [layoutEngine hasEmbeddedSecondaryContentArea];

  return hasEmbeddedSecondaryContentArea;
}

- (void)setLeadingCustomViewPageHidden:(BOOL)hidden atIndex:(int64_t)index
{
  hiddenCopy = hidden;
  folderController = [(DBDashboardHomeViewController *)self folderController];
  [folderController setLeadingCustomViewPageHidden:hiddenCopy atIndex:index];

  [(DBDashboardHomeViewController *)self updateDefaultPageIndex];
}

- (void)currentPageIndexDidChange
{
  folderController = [(DBDashboardHomeViewController *)self folderController];
  currentPageIndex = [folderController currentPageIndex];

  folderController2 = [(DBDashboardHomeViewController *)self folderController];
  v6 = [folderController2 iconListViewIndexForPageIndex:currentPageIndex];

  v7 = [MEMORY[0x277D75518] focusSystemForEnvironment:self];
  focusedItem = [v7 focusedItem];

  [(DBDashboardHomeViewController *)self widgetDimmingViewAlphaForPageIndex:currentPageIndex];
  v9 = v8;
  widgetDimmingView = [(DBDashboardHomeViewController *)self widgetDimmingView];
  [widgetDimmingView setAlpha:v9];

  [(DBDashboardHomeViewController *)self pageControlPlatterAlphaForPageIndex:currentPageIndex];
  v12 = v11;
  folderView = [(DBDashboardHomeViewController *)self folderView];
  [folderView setPageControlPlatterAlpha:v12];

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
    folderController3 = [(DBDashboardHomeViewController *)self folderController];
    v15 = [folderController3 iconListViewAtIndex:v6];

    if (!self->_lastFocusedIndex)
    {
      v20 = [(DBDashboardHomeViewController *)self _indexPathForFallbackIcon:0];
      lastFocusedIndex = self->_lastFocusedIndex;
      self->_lastFocusedIndex = v20;
    }

    objc_opt_class();
    v22 = focusedItem;
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
  v15 = focusedItem;
  if (!v15 || (objc_opt_isKindOfClass() & 1) == 0)
  {

    v15 = 0;
LABEL_17:
    [(DBDashboardHomeViewController *)self setNeedsFocusUpdate];
    goto LABEL_21;
  }

  if ([(DBDashboardHomeViewController *)self _onTodaysPage])
  {
    todayViewController = [(DBDashboardHomeViewController *)self todayViewController];
    view = [todayViewController view];
    v18 = [view containsView:v15];

    if ((v18 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_21:

  pageObservers = [(DBDashboardHomeViewController *)self pageObservers];
  [pageObservers homeViewController:self didChangeToPageType:{-[DBDashboardHomeViewController _pageType](self, "_pageType")}];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setInteger:-[DBDashboardHomeViewController _pageType](self forKey:{"_pageType"), @"CARStartPageType"}];

  todayViewController2 = [(DBDashboardHomeViewController *)self todayViewController];
  [todayViewController2 setForeground:{-[DBDashboardHomeViewController _onTodaysPage](self, "_onTodaysPage")}];

  widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  [widgetHomeViewController setForeground:{-[DBDashboardHomeViewController _onWidgetsPage](self, "_onWidgetsPage")}];
}

- (void)setCurrentPageType:(unint64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  defaultStartPageIndex = [(DBDashboardHomeViewController *)self _pageIndexForPageType:type];
  if (defaultStartPageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    defaultStartPageIndex = [(DBDashboardHomeViewController *)self defaultStartPageIndex];
  }

  [(DBDashboardHomeViewController *)self setCurrentPageIndex:defaultStartPageIndex animated:animatedCopy];
}

- (void)setCurrentPageIndex:(unint64_t)index animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  folderController = [(DBDashboardHomeViewController *)self folderController];
  v11 = folderController;
  if (IsReduceMotionEnabled || !animatedCopy)
  {
    [folderController setCurrentPageIndex:index];

    [(DBDashboardHomeViewController *)self setNeedsFocusUpdate];
    [(DBDashboardHomeViewController *)self currentPageIndexDidChange];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__DBDashboardHomeViewController_setCurrentPageIndex_animated_completion___block_invoke;
    v12[3] = &unk_278F02D40;
    v12[4] = self;
    v13 = completionCopy;
    [v11 setCurrentPageIndex:index animated:1 completion:v12];
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

- (double)widgetDimmingViewAlphaForPageIndex:(unint64_t)index
{
  if ([(DBDashboardHomeViewController *)self _widgetsPageIndex]!= index)
  {
    return 0.0;
  }

  [(DBDashboardHomeViewController *)self _maxWidgetDimmingViewAlpha];
  return result;
}

- (double)pageControlPlatterAlphaForPageIndex:(unint64_t)index
{
  _todayPageIndex = [(DBDashboardHomeViewController *)self _todayPageIndex];
  result = 1.0;
  if (_todayPageIndex != index)
  {
    _widgetsPageIndex = [(DBDashboardHomeViewController *)self _widgetsPageIndex];
    result = 0.0;
    if (_widgetsPageIndex == index)
    {
      return 1.0;
    }
  }

  return result;
}

- (void)_persistCachedIconImages
{
  environment = [(DBDashboardHomeViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];
  vehicleID = [environmentConfiguration vehicleID];

  environment2 = [(DBDashboardHomeViewController *)self environment];
  environmentConfiguration2 = [environment2 environmentConfiguration];
  [environmentConfiguration2 pointScale];
  [_TtC9DashBoard11DBIconImage iconImageInfoForScale:?];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  environment3 = [(DBDashboardHomeViewController *)self environment];
  environmentConfiguration3 = [environment3 environmentConfiguration];
  session = [environmentConfiguration3 session];
  configuration = [session configuration];

  v19 = [configuration resolvedOEMIconWithIconImageInfo:{v8, v10, v12, v14}];
  iconImage = [v19 iconImage];
  iconImageCache = [(DBDashboardHomeViewController *)self iconImageCache];
  [iconImageCache setIconImage:iconImage forBundleIdentifier:*MEMORY[0x277CF8FD8] inVehicle:vehicleID];
}

- (void)_launchNowPlaying
{
  nowPlayingObserver = [(DBDashboardHomeViewController *)self nowPlayingObserver];
  nowPlayingLaunchInfo = [nowPlayingObserver nowPlayingLaunchInfo];

  if (nowPlayingLaunchInfo)
  {
    environment = [(DBDashboardHomeViewController *)self environment];
    v6 = [DBEvent eventWithType:4 context:nowPlayingLaunchInfo];
    [environment handleEvent:v6];
  }

  else
  {
    environment = DBLogForCategory(0);
    if (os_log_type_enabled(environment, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_248146000, environment, OS_LOG_TYPE_DEFAULT, "No available now playing app to launch from Now Playing.", v7, 2u);
    }
  }
}

- (void)_launchAppLink:(id)link
{
  linkCopy = link;
  iconModel = [(DBDashboardHomeViewController *)self iconModel];
  leafIdentifier = [linkCopy leafIdentifier];

  v7 = [iconModel leafIconForIdentifier:leafIdentifier];

  objc_opt_class();
  activeDataSource = [v7 activeDataSource];
  if (activeDataSource && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = activeDataSource;
  }

  else
  {
    v9 = 0;
  }

  appLink = [v9 appLink];
  appLinkManager = [(DBDashboardHomeViewController *)self appLinkManager];
  v12 = [appLinkManager launchInfoForAppLink:appLink];

  if (v12)
  {
    environment = [(DBDashboardHomeViewController *)self environment];
    v14 = [DBEvent eventWithType:4 context:v12];
    [environment handleEvent:v14];
  }

  else
  {
    contentURLAction = [appLink contentURLAction];

    if (contentURLAction)
    {
      environment = [(DBDashboardHomeViewController *)self appLinkManager];
      [environment presentAppLink:appLink];
    }

    else
    {
      environment = DBLogForCategory(0x1CuLL);
      if (os_log_type_enabled(environment, OS_LOG_TYPE_ERROR))
      {
        [(DBDashboardHomeViewController *)appLink _launchAppLink:environment];
      }
    }
  }
}

- (void)_handleAppLibraryRefresh
{
  iconModel = [(DBDashboardHomeViewController *)self iconModel];
  [iconModel reloadIcons];

  iconManager = [(DBDashboardHomeViewController *)self iconManager];
  [iconManager relayout];

  [(DBDashboardHomeViewController *)self setLeadingCustomViewPageHidden:[(DBDashboardHomeViewController *)self _shouldHideTodayView] atIndex:[(DBDashboardHomeViewController *)self _todayLeadingPageIndex]];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.CarPlay.internal.refreshApps", 0, 0, 1u);
}

- (id)_indexPathForFallbackIcon:(BOOL)icon
{
  iconCopy = icon;
  folderController = [(DBDashboardHomeViewController *)self folderController];
  currentIconListView = [folderController currentIconListView];
  v6 = currentIconListView;
  if (currentIconListView)
  {
    visibleIcons = [currentIconListView visibleIcons];
    folder = [folderController folder];
    if (iconCopy)
    {
      [visibleIcons lastObject];
    }

    else
    {
      [visibleIcons firstObject];
    }
    v10 = ;
    v9 = [folder indexPathForIcon:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_invalidateBadgeForIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  iconModel = [(DBDashboardHomeViewController *)self iconModel];
  v6 = [iconModel leafIconForIdentifier:identifierCopy];

  objc_opt_class();
  activeDataSource = [v6 activeDataSource];
  if (activeDataSource && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = activeDataSource;
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
    v12 = identifierCopy;
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

- (int64_t)_pageIndexForPageType:(unint64_t)type
{
  if (type >= 2)
  {
    if (type == 3)
    {

      return [(DBDashboardHomeViewController *)self _widgetsPageIndex];
    }

    else
    {
      folderController = [(DBDashboardHomeViewController *)self folderController];
      firstIconPageIndex = [folderController firstIconPageIndex];

      return firstIconPageIndex;
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
    widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    if (!widgetHomeViewController)
    {
      [DBDashboardHomeViewController preferredFocusEnvironments];
    }

    widgetHomeViewController2 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  }

  else
  {
    if (![(DBDashboardHomeViewController *)self _onTodaysPage])
    {
      goto LABEL_7;
    }

    widgetHomeViewController2 = [(DBDashboardHomeViewController *)self todayViewController];
  }

  v6 = widgetHomeViewController2;
  [v3 addObject:widgetHomeViewController2];

LABEL_7:
  _preferredFocusedIcon = [(DBDashboardHomeViewController *)self _preferredFocusedIcon];
  if (_preferredFocusedIcon)
  {
    [v3 addObject:_preferredFocusedIcon];
  }

  if ([v3 count])
  {
    preferredFocusEnvironments = v3;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = DBDashboardHomeViewController;
    preferredFocusEnvironments = [(DBDashboardHomeViewController *)&v11 preferredFocusEnvironments];
  }

  v9 = preferredFocusEnvironments;

  return v9;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  nextFocusedView = [contextCopy nextFocusedView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    nextFocusedView2 = [contextCopy nextFocusedView];
    icon = [nextFocusedView2 icon];
    folderController = [(DBDashboardHomeViewController *)self folderController];
    folder = [folderController folder];
    v11 = [folder indexPathForIcon:icon];
    lastFocusedIndex = self->_lastFocusedIndex;
    self->_lastFocusedIndex = v11;
  }
}

- (id)_linearFocusMovementSequences
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];

  if (widgetHomeViewController)
  {
    widgetHomeViewController2 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    [widgetHomeViewController2 loadViewIfNeeded];

    widgetHomeViewController3 = [(DBDashboardHomeViewController *)self widgetHomeViewController];
    linearFocusItems = [widgetHomeViewController3 linearFocusItems];
    [v3 addObjectsFromArray:linearFocusItems];
  }

  todayViewController = [(DBDashboardHomeViewController *)self todayViewController];

  if (todayViewController)
  {
    todayViewController2 = [(DBDashboardHomeViewController *)self todayViewController];
    [todayViewController2 loadViewIfNeeded];

    todayViewController3 = [(DBDashboardHomeViewController *)self todayViewController];
    linearFocusItems2 = [todayViewController3 linearFocusItems];
    [v3 addObjectsFromArray:linearFocusItems2];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  folderController = [(DBDashboardHomeViewController *)self folderController];
  iconListViews = [folderController iconListViews];

  v14 = [iconListViews countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(iconListViews);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        icons = [v18 icons];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __62__DBDashboardHomeViewController__linearFocusMovementSequences__block_invoke;
        v23[3] = &unk_278F03978;
        v23[4] = v18;
        v24 = v3;
        [icons enumerateObjectsUsingBlock:v23];
      }

      v15 = [iconListViews countByEnumeratingWithState:&v25 objects:v30 count:16];
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

- (id)_iconViewForIndexpath:(id)indexpath
{
  v22 = *MEMORY[0x277D85DE8];
  indexpathCopy = indexpath;
  folderController = [(DBDashboardHomeViewController *)self folderController];
  folder = [folderController folder];

  v7 = DBLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = [indexpathCopy description];
    v13 = [folder description];
    v14 = 136315907;
    v15 = "[DBDashboardHomeViewController _iconViewForIndexpath:]";
    v16 = 2112;
    selfCopy = self;
    v18 = 2112;
    v19 = v12;
    v20 = 2113;
    v21 = v13;
    _os_log_debug_impl(&dword_248146000, v7, OS_LOG_TYPE_DEBUG, "%s %@: Searching for iconView with indexPath %@ in folder %{private}@", &v14, 0x2Au);
  }

  v8 = [folder iconAtIndexPath:indexpathCopy];
  folderController2 = [(DBDashboardHomeViewController *)self folderController];
  v10 = [folderController2 iconViewForIcon:v8 location:*MEMORY[0x277D666D0]];

  return v10;
}

- (void)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  folderController = [(DBDashboardHomeViewController *)self folderController];
  isScrolling = [folderController isScrolling];

  if ((isScrolling & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = DBDashboardHomeViewController;
    [(DBDashboardHomeViewController *)&v7 _wheelChangedWithEvent:eventCopy];
  }
}

- (void)dataStoreMonitor:(id)monitor didUpdateApplication:(id)application forKey:(id)key
{
  v16 = *MEMORY[0x277D85DE8];
  applicationCopy = application;
  keyCopy = key;
  v9 = +[_TtC9DashBoard20DBLeafIconDataSource kDBSBApplicationBadgeKey];
  v10 = [keyCopy isEqualToString:v9];

  if (v10)
  {
    v11 = DBLogForCategory(0x10uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = applicationCopy;
      _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "Data store updated badge value for %{public}@", buf, 0xCu);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__DBDashboardHomeViewController_dataStoreMonitor_didUpdateApplication_forKey___block_invoke;
    v12[3] = &unk_278F014B8;
    v12[4] = self;
    v13 = applicationCopy;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

- (void)_handleBackActionSupportACBack:(BOOL)back
{
  backCopy = back;
  folderController = [(DBDashboardHomeViewController *)self folderController];
  isScrolling = [folderController isScrolling];
  v6 = folderController;
  if ((isScrolling & 1) == 0)
  {
    currentPageIndex = [folderController currentPageIndex];
    defaultPageIndex = [folderController defaultPageIndex];
    if (currentPageIndex == defaultPageIndex)
    {
      defaultPageIndex = currentPageIndex;
      if (backCopy && (-[DBDashboardHomeViewController environment](self, "environment"), v9 = objc_claimAutoreleasedReturnValue(), [v9 environmentConfiguration], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isACBackSupported"), v10, v9, v11))
      {
        if ([(DBDashboardHomeViewController *)self _isACBackEnabled])
        {
          environment = [(DBDashboardHomeViewController *)self environment];
          environmentConfiguration = [environment environmentConfiguration];
          session = [environmentConfiguration session];
          v15 = [MEMORY[0x277CBEBC0] URLWithString:@"oem:back"];
          [session requestCarUIForURL:v15];
        }
      }

      else if (currentPageIndex != [folderController firstIconPageIndex])
      {
        defaultPageIndex = [folderController firstIconPageIndex];
      }
    }

    folderController2 = [(DBDashboardHomeViewController *)self folderController];
    currentPageIndex2 = [folderController2 currentPageIndex];

    v6 = folderController;
    if (defaultPageIndex != currentPageIndex2)
    {
      isScrolling = [(DBDashboardHomeViewController *)self setCurrentPageIndex:defaultPageIndex animated:1];
      v6 = folderController;
    }
  }

  MEMORY[0x2821F96F8](isScrolling, v6);
}

- (BOOL)_isACBackEnabled
{
  acBackDisabledReasons = [(DBDashboardHomeViewController *)self acBackDisabledReasons];
  v3 = [acBackDisabledReasons count] == 0;

  return v3;
}

- (void)_setACBackDisabled:(BOOL)disabled forRequester:(id)requester
{
  disabledCopy = disabled;
  requesterCopy = requester;
  acBackDisabledReasons = [(DBDashboardHomeViewController *)self acBackDisabledReasons];
  acBackDisabledReasons2 = acBackDisabledReasons;
  if (disabledCopy)
  {

    if (!acBackDisabledReasons2)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [(DBDashboardHomeViewController *)self setAcBackDisabledReasons:v8];
    }

    acBackDisabledReasons2 = [(DBDashboardHomeViewController *)self acBackDisabledReasons];
    [acBackDisabledReasons2 addObject:requesterCopy];
  }

  else
  {
    [acBackDisabledReasons removeObject:requesterCopy];
  }
}

- (void)folderControllerWillBeginScrolling:(id)scrolling
{
  widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  [widgetHomeViewController beginCancelingTouches];

  [(DBDashboardHomeViewController *)self _setACBackDisabled:1 forRequester:@"Scrolling"];
}

- (void)folderControllerDidEndScrolling:(id)scrolling
{
  widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  [widgetHomeViewController endCancelingTouches];

  [(DBDashboardHomeViewController *)self currentPageIndexDidChange];
  v5 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__DBDashboardHomeViewController_folderControllerDidEndScrolling___block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

- (id)folderController:(id)controller iconListView:(id)view iconDropSessionDidUpdate:(id)update
{
  v5 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:0];

  return v5;
}

- (void)invalidate
{
  dataStoreMonitor = [(DBDashboardHomeViewController *)self dataStoreMonitor];
  [dataStoreMonitor removeObserver:self];

  widgetHomeViewController = [(DBDashboardHomeViewController *)self widgetHomeViewController];
  [widgetHomeViewController invalidate];

  todayViewController = [(DBDashboardHomeViewController *)self todayViewController];
  [todayViewController invalidate];

  v6 = +[DBApplicationController sharedInstance];
  [v6 removeObserver:self];

  +[DBIconDropShadowProvider invalidate];
  [DBIconView setEnvironmentConfiguration:0];
  environment = [(DBDashboardHomeViewController *)self environment];
  environmentConfiguration = [environment environmentConfiguration];

  [environmentConfiguration removeObserver:self];
}

- (void)appLinkManager:(id)manager didAddAppLinks:(id)links didRemoveAppLinks:(id)appLinks
{
  v43 = *MEMORY[0x277D85DE8];
  linksCopy = links;
  appLinksCopy = appLinks;
  selfCopy = self;
  iconModel = [(DBDashboardHomeViewController *)self iconModel];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = appLinksCopy;
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
          appLink = [v14 appLink];
          *buf = 136315394;
          v39 = "[DBDashboardHomeViewController appLinkManager:didAddAppLinks:didRemoveAppLinks:]";
          v40 = 2112;
          v41 = appLink;
          _os_log_debug_impl(&dword_248146000, v15, OS_LOG_TYPE_DEBUG, "%s: Received removing %@", buf, 0x16u);
        }

        appLink2 = [v14 appLink];
        identifier = [appLink2 identifier];
        [iconModel removeIconForIdentifier:identifier];

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
  v19 = linksCopy;
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
          appLink3 = [v24 appLink];
          *buf = 136315394;
          v39 = "[DBDashboardHomeViewController appLinkManager:didAddAppLinks:didRemoveAppLinks:]";
          v40 = 2112;
          v41 = appLink3;
          _os_log_debug_impl(&dword_248146000, v25, OS_LOG_TYPE_DEBUG, "%s: Received adding %@", buf, 0x16u);
        }

        [iconModel addIcon:v24];
        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v21);
  }

  [(DBDashboardHomeViewController *)selfCopy _handleAppLibraryRefresh];
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (void)allApplicationIcons
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "count")}];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138412802;
  v9 = v5;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  selfCopy = self;
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