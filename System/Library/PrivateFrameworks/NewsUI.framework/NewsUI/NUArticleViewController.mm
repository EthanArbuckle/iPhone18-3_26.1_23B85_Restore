@interface NUArticleViewController
+ (id)_parentOrPresentingViewControllerFor:(id)for;
- (BOOL)becomeFirstResponder;
- (BOOL)isExperimentationEnabled;
- (BOOL)isPreviewingOrShowingHardPaywall;
- (BOOL)resignFirstResponder;
- (BOOL)scrollViewController:(id)controller shouldOccludeAccessibilityElement:(id)element;
- (BOOL)shouldSaveScrollPosition;
- (NSString)contentSizeCategory;
- (NSString)selectedText;
- (NUArticleExperimentationDelegate)experimentationDelegate;
- (NUArticleViewController)initWithArticleDataProvider:(id)provider scrollViewController:(id)controller appStateMonitor:(id)monitor keyCommandManager:(id)manager loadingListeners:(id)listeners headerBlueprintProvider:(id)blueprintProvider debugSettingsProvider:(id)settingsProvider videoPlayerViewControllerManager:(id)self0 articleScrollPositionManager:(id)self1 chromeControl:(id)self2 spotlightManager:(id)self3;
- (NUArticleViewControllerDelegate)delegate;
- (NULoadingDelegate)loadingDelegate;
- (SXAnalyticsReporting)analyticsReporting;
- (UIResponder)responder;
- (double)navigationBarHeightForScrollViewController:(id)controller;
- (double)toolBarHeightForScrollViewController:(id)controller;
- (id)articleMessager;
- (id)currentPresentationAttributes;
- (id)searchWithContext:(id)context;
- (int64_t)preferredStatusBarStyle;
- (void)applicationDidBecomeActive:(id)active;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)articleDidApplyDocumentStyle:(id)style;
- (void)didStartExperimentForDocument:(id)document experimentIdentifier:(id)identifier treatmentGroup:(id)group;
- (void)finalizeArticleLoadingWithContext:(id)context;
- (void)loadArticle;
- (void)nowPlayingDidDisappear:(id)disappear;
- (void)nowPlayingWillDisappear:(id)disappear;
- (void)prepareArticleLoadingWithContext:(id)context;
- (void)reportEvent:(id)event;
- (void)saveScrollPosition:(id)position;
- (void)scrollToAudioPositionAndHideMessageAfterEvent:(id)event;
- (void)scrollViewController:(id)controller didApplyDocumentStyle:(id)style;
- (void)scrollViewControllerDidLayoutContent:(id)content;
- (void)scrollViewControllerDidScroll:(id)scroll;
- (void)scrollViewControllerDidScrollToBottomOfPrimaryContent:(id)content;
- (void)scrollViewControllerDidStopScrolling:(id)scrolling;
- (void)setArticleContext:(id)context;
- (void)setContentScale:(int64_t)scale;
- (void)setContentSizeCategory:(id)category;
- (void)showArticleMessage:(int64_t)message hideAfterEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
- (void)updatePresentationAttributes;
- (void)updateScrollPositionFromContext;
- (void)updateScrollViewControllerWithContentOverlayBlueprint:(id)blueprint topOffset:(double)offset;
- (void)updateScrollViewControllerWithFooterBlueprint:(id)blueprint;
- (void)updateScrollViewControllerWithHeaderBlueprint:(id)blueprint;
- (void)updateTextSelectionForPaywallPresentation;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation NUArticleViewController

- (NUArticleViewController)initWithArticleDataProvider:(id)provider scrollViewController:(id)controller appStateMonitor:(id)monitor keyCommandManager:(id)manager loadingListeners:(id)listeners headerBlueprintProvider:(id)blueprintProvider debugSettingsProvider:(id)settingsProvider videoPlayerViewControllerManager:(id)self0 articleScrollPositionManager:(id)self1 chromeControl:(id)self2 spotlightManager:(id)self3
{
  providerCopy = provider;
  managerCopy = manager;
  controllerCopy = controller;
  monitorCopy = monitor;
  managerCopy2 = manager;
  listenersCopy = listeners;
  blueprintProviderCopy = blueprintProvider;
  blueprintProviderCopy2 = blueprintProvider;
  settingsProviderCopy = settingsProvider;
  controllerManagerCopy = controllerManager;
  positionManagerCopy = positionManager;
  controlCopy = control;
  spotlightManagerCopy = spotlightManager;
  v62.receiver = self;
  v62.super_class = NUArticleViewController;
  v21 = [(NUArticleViewController *)&v62 init];
  if (v21)
  {
    v22 = objc_alloc_init(MEMORY[0x277D31180]);
    articleViewStyler = v21->_articleViewStyler;
    v21->_articleViewStyler = v22;

    v24 = objc_alloc_init(MEMORY[0x277D34758]);
    eventManager = v21->_eventManager;
    v21->_eventManager = v24;

    objc_storeStrong(&v21->_articleDataProvider, provider);
    objc_storeStrong(&v21->_keyCommandManager, managerCopy);
    objc_storeStrong(&v21->_debugSettingsProvider, settingsProvider);
    objc_storeStrong(&v21->_videoPlayerViewControllerManager, controllerManager);
    objc_storeStrong(&v21->_articleScrollPositionManager, positionManager);
    objc_storeStrong(&v21->_chromeControl, control);
    objc_storeStrong(&v21->_spotlightManager, spotlightManager);
    [settingsProviderCopy addObserver:v21];
    objc_storeStrong(&v21->_scrollViewController, controller);
    scrollView = [controllerCopy scrollView];
    scrollView = v21->_scrollView;
    v21->_scrollView = scrollView;

    [(UIScrollView *)v21->_scrollView setAllowsKeyboardScrolling:0];
    [(SXScrollViewController *)v21->_scrollViewController setDelegate:v21];
    [(SXScrollViewController *)v21->_scrollViewController setExperimentationDelegate:v21];
    scrollView2 = [controllerCopy scrollView];
    [managerCopy2 registerScrollView:scrollView2];

    objc_storeStrong(&v21->_loadingListeners, listeners);
    objc_storeStrong(&v21->_documentSectionBlueprintProvider, blueprintProviderCopy);
    v21->_presentationMode = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v21 selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v21 selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v21 selector:sel_nowPlayingWillDisappear_ name:@"NUNowPlayingViewControllerWillDisappearNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v21 selector:sel_nowPlayingDidDisappear_ name:@"NUNowPlayingViewControllerDidDisappearNotification" object:0];

    objc_initWeak(&location, v21);
    v33 = v21->_eventManager;
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __266__NUArticleViewController_initWithArticleDataProvider_scrollViewController_appStateMonitor_keyCommandManager_loadingListeners_headerBlueprintProvider_debugSettingsProvider_videoPlayerViewControllerManager_articleScrollPositionManager_chromeControl_spotlightManager___block_invoke;
    v59[3] = &unk_2799A3CD0;
    objc_copyWeak(&v60, &location);
    [(NFEventManager *)v33 triggerOnEvent:@"appWillEnterForegroundEvent" block:v59];
    v34 = v21->_eventManager;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __266__NUArticleViewController_initWithArticleDataProvider_scrollViewController_appStateMonitor_keyCommandManager_loadingListeners_headerBlueprintProvider_debugSettingsProvider_videoPlayerViewControllerManager_articleScrollPositionManager_chromeControl_spotlightManager___block_invoke_2;
    v57[3] = &unk_2799A3CD0;
    objc_copyWeak(&v58, &location);
    [(NFEventManager *)v34 triggerOnEvent:@"nowPlayingWillDisappearEvent" block:v57];
    v35 = v21->_eventManager;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __266__NUArticleViewController_initWithArticleDataProvider_scrollViewController_appStateMonitor_keyCommandManager_loadingListeners_headerBlueprintProvider_debugSettingsProvider_videoPlayerViewControllerManager_articleScrollPositionManager_chromeControl_spotlightManager___block_invoke_3;
    v55[3] = &unk_2799A3CD0;
    objc_copyWeak(&v56, &location);
    [(NFEventManager *)v35 triggerOnEvent:@"viewWillAppearEvent" block:v55];
    v36 = v21->_eventManager;
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __266__NUArticleViewController_initWithArticleDataProvider_scrollViewController_appStateMonitor_keyCommandManager_loadingListeners_headerBlueprintProvider_debugSettingsProvider_videoPlayerViewControllerManager_articleScrollPositionManager_chromeControl_spotlightManager___block_invoke_4;
    v53[3] = &unk_2799A3CD0;
    objc_copyWeak(&v54, &location);
    [(NFEventManager *)v36 triggerOnEvent:@"viewWillAppearEvent" block:v53];
    v37 = v21->_eventManager;
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __266__NUArticleViewController_initWithArticleDataProvider_scrollViewController_appStateMonitor_keyCommandManager_loadingListeners_headerBlueprintProvider_debugSettingsProvider_videoPlayerViewControllerManager_articleScrollPositionManager_chromeControl_spotlightManager___block_invoke_5;
    v51[3] = &unk_2799A3CD0;
    objc_copyWeak(&v52, &location);
    [(NFEventManager *)v37 triggerOnEvent:@"viewDidDisappearEvent" block:v51];
    objc_destroyWeak(&v52);
    objc_destroyWeak(&v54);
    objc_destroyWeak(&v56);
    objc_destroyWeak(&v58);
    objc_destroyWeak(&v60);
    objc_destroyWeak(&location);
  }

  return v21;
}

void __266__NUArticleViewController_initWithArticleDataProvider_scrollViewController_appStateMonitor_keyCommandManager_loadingListeners_headerBlueprintProvider_debugSettingsProvider_videoPlayerViewControllerManager_articleScrollPositionManager_chromeControl_spotlightManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scrollToAudioPositionAndHideMessageAfterEvent:@"appDidEnterForegroundEvent"];
}

void __266__NUArticleViewController_initWithArticleDataProvider_scrollViewController_appStateMonitor_keyCommandManager_loadingListeners_headerBlueprintProvider_debugSettingsProvider_videoPlayerViewControllerManager_articleScrollPositionManager_chromeControl_spotlightManager___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scrollToAudioPositionAndHideMessageAfterEvent:@"nowPlayingDidDisappearEvent"];
}

void __266__NUArticleViewController_initWithArticleDataProvider_scrollViewController_appStateMonitor_keyCommandManager_loadingListeners_headerBlueprintProvider_debugSettingsProvider_videoPlayerViewControllerManager_articleScrollPositionManager_chromeControl_spotlightManager___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained scrollToAudioPositionAndHideMessageAfterEvent:@"viewDidAppearEvent"];
}

void __266__NUArticleViewController_initWithArticleDataProvider_scrollViewController_appStateMonitor_keyCommandManager_loadingListeners_headerBlueprintProvider_debugSettingsProvider_videoPlayerViewControllerManager_articleScrollPositionManager_chromeControl_spotlightManager___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained articleDataProvider];
  [v1 setRelativePriority:1];
}

void __266__NUArticleViewController_initWithArticleDataProvider_scrollViewController_appStateMonitor_keyCommandManager_loadingListeners_headerBlueprintProvider_debugSettingsProvider_videoPlayerViewControllerManager_articleScrollPositionManager_chromeControl_spotlightManager___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained articleDataProvider];
  [v1 setRelativePriority:0];
}

- (void)viewDidLoad
{
  v73[1] = *MEMORY[0x277D85DE8];
  v70.receiver = self;
  v70.super_class = NUArticleViewController;
  [(NUArticleViewController *)&v70 viewDidLoad];
  view = [(NUArticleViewController *)self view];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [view setBackgroundColor:clearColor];

  view2 = [(NUArticleViewController *)self view];
  [view2 setPreservesSuperviewLayoutMargins:1];

  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  [(NUArticleViewController *)self addChildViewController:scrollViewController];

  view3 = [(NUArticleViewController *)self view];
  scrollViewController2 = [(NUArticleViewController *)self scrollViewController];
  view4 = [scrollViewController2 view];
  [view3 addSubview:view4];

  scrollViewController3 = [(NUArticleViewController *)self scrollViewController];
  [scrollViewController3 didMoveToParentViewController:self];

  scrollViewController4 = [(NUArticleViewController *)self scrollViewController];
  scrollView = [scrollViewController4 scrollView];
  [scrollView _setContentInsetAdjustmentBehavior:2];

  scrollViewController5 = [(NUArticleViewController *)self scrollViewController];
  scrollView2 = [scrollViewController5 scrollView];
  [scrollView2 _setIndicatorInsetAdjustmentBehavior:1];

  scrollViewController6 = [(NUArticleViewController *)self scrollViewController];
  scrollView3 = [scrollViewController6 scrollView];
  [scrollView3 _accessibilitySetOpaqueElementScrollsContentIntoView:1];

  loadingDelegate = [(NUArticleViewController *)self loadingDelegate];
  LOBYTE(scrollView3) = objc_opt_respondsToSelector();

  if (scrollView3)
  {
    loadingDelegate2 = [(NUArticleViewController *)self loadingDelegate];
    [loadingDelegate2 loadingWillStart];
  }

  loadingDelegate3 = [(NUArticleViewController *)self loadingDelegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    loadingDelegate4 = [(NUArticleViewController *)self loadingDelegate];
    [loadingDelegate4 loadingDidStart];
  }

  objc_initWeak(&location, self);
  eventManager = [(NUArticleViewController *)self eventManager];
  v23 = MEMORY[0x277CBEB98];
  v73[0] = @"silexContextDidLoadEvent";
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:1];
  v25 = [v23 setWithArray:v24];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __38__NUArticleViewController_viewDidLoad__block_invoke;
  v67[3] = &unk_2799A3CD0;
  objc_copyWeak(&v68, &location);
  [eventManager triggerOnceWhenAllEventsHaveOccurred:v25 block:v67];

  eventManager2 = [(NUArticleViewController *)self eventManager];
  v27 = MEMORY[0x277CBEB98];
  v72[0] = @"viewDidAppearEvent";
  v72[1] = @"silexContextDidLoadEvent";
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  v29 = [v27 setWithArray:v28];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __38__NUArticleViewController_viewDidLoad__block_invoke_3;
  v65[3] = &unk_2799A3CD0;
  objc_copyWeak(&v66, &location);
  [eventManager2 triggerAlwaysWhenAllEventsHaveOccurred:v29 block:v65];

  eventManager3 = [(NUArticleViewController *)self eventManager];
  v31 = MEMORY[0x277CBEB98];
  v71 = @"viewDidDisappearEvent";
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
  v33 = [v31 setWithArray:v32];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __38__NUArticleViewController_viewDidLoad__block_invoke_5;
  v63[3] = &unk_2799A3CD0;
  objc_copyWeak(&v64, &location);
  [eventManager3 triggerAlwaysWhenAllEventsHaveOccurred:v33 block:v63];

  documentSectionBlueprintProvider = [(NUArticleViewController *)self documentSectionBlueprintProvider];
  observableHeaderBlueprint = [documentSectionBlueprintProvider observableHeaderBlueprint];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __38__NUArticleViewController_viewDidLoad__block_invoke_7;
  v61[3] = &unk_2799A3CF8;
  objc_copyWeak(&v62, &location);
  v36 = [observableHeaderBlueprint observe:v61];
  [v36 disposeOn:self];

  documentSectionBlueprintProvider2 = [(NUArticleViewController *)self documentSectionBlueprintProvider];
  observableContentOverlayBlueprintData = [documentSectionBlueprintProvider2 observableContentOverlayBlueprintData];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __38__NUArticleViewController_viewDidLoad__block_invoke_9;
  v59[3] = &unk_2799A3D20;
  objc_copyWeak(&v60, &location);
  v39 = [observableContentOverlayBlueprintData observe:v59];
  [v39 disposeOn:self];

  documentSectionBlueprintProvider3 = [(NUArticleViewController *)self documentSectionBlueprintProvider];
  observableFooterBlueprint = [documentSectionBlueprintProvider3 observableFooterBlueprint];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __38__NUArticleViewController_viewDidLoad__block_invoke_11;
  v57[3] = &unk_2799A3CF8;
  objc_copyWeak(&v58, &location);
  v42 = [observableFooterBlueprint observe:v57];
  [v42 disposeOn:self];

  documentSectionBlueprintProvider4 = [(NUArticleViewController *)self documentSectionBlueprintProvider];
  observableHeaderBlueprint2 = [documentSectionBlueprintProvider4 observableHeaderBlueprint];
  value = [observableHeaderBlueprint2 value];
  [(NUArticleViewController *)self updateScrollViewControllerWithHeaderBlueprint:value];

  documentSectionBlueprintProvider5 = [(NUArticleViewController *)self documentSectionBlueprintProvider];
  observableContentOverlayBlueprintData2 = [documentSectionBlueprintProvider5 observableContentOverlayBlueprintData];
  value2 = [observableContentOverlayBlueprintData2 value];
  blueprint = [value2 blueprint];
  documentSectionBlueprintProvider6 = [(NUArticleViewController *)self documentSectionBlueprintProvider];
  observableContentOverlayBlueprintData3 = [documentSectionBlueprintProvider6 observableContentOverlayBlueprintData];
  value3 = [observableContentOverlayBlueprintData3 value];
  [value3 topOffset];
  [(NUArticleViewController *)self updateScrollViewControllerWithContentOverlayBlueprint:blueprint topOffset:?];

  documentSectionBlueprintProvider7 = [(NUArticleViewController *)self documentSectionBlueprintProvider];
  observableFooterBlueprint2 = [documentSectionBlueprintProvider7 observableFooterBlueprint];
  value4 = [observableFooterBlueprint2 value];
  [(NUArticleViewController *)self updateScrollViewControllerWithFooterBlueprint:value4];

  [(NUArticleViewController *)self loadArticle];
  objc_destroyWeak(&v58);
  objc_destroyWeak(&v60);
  objc_destroyWeak(&v62);
  objc_destroyWeak(&v64);
  objc_destroyWeak(&v66);
  objc_destroyWeak(&v68);
  objc_destroyWeak(&location);
  v56 = *MEMORY[0x277D85DE8];
}

void __38__NUArticleViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v2 = WeakRetained;
    v3 = [v2 loadingDelegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [v2 loadingDelegate];
      [v5 loadingWillFinishWithError:0];
    }

    v6 = [v2 loadingDelegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [v2 loadingDelegate];
      [v8 loadingDidFinishWithError:0];
    }

    WeakRetained = v9;
  }
}

void __38__NUArticleViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained articleDataProvider];
    [v2 prefetchAssets];

    WeakRetained = v3;
  }
}

void __38__NUArticleViewController_viewDidLoad__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained articleDataProvider];
    [v2 cancelAssetPrefetch];

    WeakRetained = v3;
  }
}

void __38__NUArticleViewController_viewDidLoad__block_invoke_7(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained updateScrollViewControllerWithHeaderBlueprint:v5];
  }
}

void __38__NUArticleViewController_viewDidLoad__block_invoke_9(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = [v7 blueprint];
    [v7 topOffset];
    [v5 updateScrollViewControllerWithContentOverlayBlueprint:v6 topOffset:?];
  }
}

void __38__NUArticleViewController_viewDidLoad__block_invoke_11(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained updateScrollViewControllerWithFooterBlueprint:v5];
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v7.receiver = self;
  v7.super_class = NUArticleViewController;
  [(NUArticleViewController *)&v7 viewSafeAreaInsetsDidChange];
  articleDataProvider = [(NUArticleViewController *)self articleDataProvider];
  article = [articleDataProvider article];
  headline = [article headline];

  if (headline)
  {
    scrollView = [(NUArticleViewController *)self scrollView];
    [(UIViewController *)self nu_adjustInsetsForScrollView:scrollView];
  }
}

- (void)loadArticle
{
  objc_initWeak(&location, self);
  articleDataProvider = [(NUArticleViewController *)self articleDataProvider];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__NUArticleViewController_loadArticle__block_invoke;
  v4[3] = &unk_2799A3D70;
  objc_copyWeak(&v5, &location);
  [articleDataProvider loadContextWithCompletionBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __38__NUArticleViewController_loadArticle__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = [v12 articleDataProvider];
    v14 = [v13 article];
    v15 = [v14 headline];

    if (v15)
    {
      [v12 prepareArticleLoadingWithContext:v7];
      v16 = [v12 scrollView];
      [v12 nu_adjustInsetsForScrollView:v16];
    }

    if (!v7 || v9)
    {
      v22 = [v12 loadingDelegate];
      v23 = objc_opt_respondsToSelector();

      if (v23)
      {
        v24 = [v12 loadingDelegate];
        [v24 loadingWillFinishWithError:v9];
      }

      v25 = [v12 loadingDelegate];
      v26 = objc_opt_respondsToSelector();

      if (v26)
      {
        v27 = [v12 loadingDelegate];
        [v27 loadingDidFinishWithError:v9];
      }
    }

    else
    {
      v17 = [v12 articleDataProvider];
      v18 = [v17 article];
      v19 = [v18 headline];
      v20 = [v19 videoURL];

      if ([v12 shouldAutoPlayVideo] && v20)
      {
        v21 = [v12 videoPlayerViewControllerManager];
        [v21 configureAutoplayForVideoWithURL:v20 analyticsRouter:0];

        [v12 setShouldAutoPlayVideo:0];
      }

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __38__NUArticleViewController_loadArticle__block_invoke_3;
      v28[3] = &unk_2799A3D48;
      objc_copyWeak(&v30, (a1 + 32));
      v29 = v7;
      [v8 registerFontsWithCompletion:v28];

      objc_destroyWeak(&v30);
    }
  }
}

void __38__NUArticleViewController_loadArticle__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained finalizeArticleLoadingWithContext:*(a1 + 32)];
}

- (void)prepareArticleLoadingWithContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  loadingListeners = [(NUArticleViewController *)self loadingListeners];
  v6 = [loadingListeners countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(loadingListeners);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          articleDataProvider = [(NUArticleViewController *)self articleDataProvider];
          article = [articleDataProvider article];
          [v10 willLoadArticle:article withContext:contextCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [loadingListeners countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)finalizeArticleLoadingWithContext:(id)context
{
  v59 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  loadingListeners = [(NUArticleViewController *)self loadingListeners];
  v6 = [loadingListeners countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v52;
    do
    {
      v9 = 0;
      do
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(loadingListeners);
        }

        v10 = *(*(&v51 + 1) + 8 * v9);
        articleDataProvider = [(NUArticleViewController *)self articleDataProvider];
        article = [articleDataProvider article];
        [v10 didLoadArticle:article withContext:contextCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [loadingListeners countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v7);
  }

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __61__NUArticleViewController_finalizeArticleLoadingWithContext___block_invoke;
  v50[3] = &unk_2799A3D98;
  v50[4] = self;
  v13 = __61__NUArticleViewController_finalizeArticleLoadingWithContext___block_invoke(v50);
  if (v13)
  {
    [(NUArticleViewController *)self setPresentationMode:0];
  }

  v14 = NUArticleLoadLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    articleDataProvider2 = [(NUArticleViewController *)self articleDataProvider];
    articleID = [articleDataProvider2 articleID];
    *buf = 138543362;
    v57 = articleID;
    _os_log_impl(&dword_25C2D6000, v14, OS_LOG_TYPE_DEFAULT, "Article did finish loading, starting layout, articleID=%{public}@", buf, 0xCu);
  }

  v17 = CACurrentMediaTime();
  articleDataProvider3 = [(NUArticleViewController *)self articleDataProvider];
  articleID2 = [articleDataProvider3 articleID];

  eventManager = [(NUArticleViewController *)self eventManager];
  v21 = MEMORY[0x277CBEB98];
  v55 = @"silexContextDidLoadEvent";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  v23 = [v21 setWithArray:v22];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __61__NUArticleViewController_finalizeArticleLoadingWithContext___block_invoke_364;
  v47[3] = &unk_2799A3DC0;
  v24 = articleID2;
  v48 = v24;
  v49 = v17;
  [eventManager triggerOnceWhenAllEventsHaveOccurred:v23 block:v47];

  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  [scrollViewController loadContext:contextCopy analyticsReporting:self];

  [(NUArticleViewController *)self updatePresentationAttributes];
  if (v13)
  {
    scrollViewController2 = [(NUArticleViewController *)self scrollViewController];
    [scrollViewController2 updateScrollPosition:v13 animated:0];

    [(NUArticleViewController *)self setDidRestoreScrollPosition:1];
  }

  articleDataProvider4 = [(NUArticleViewController *)self articleDataProvider];
  article2 = [articleDataProvider4 article];
  headline = [article2 headline];

  articleDataProvider5 = [(NUArticleViewController *)self articleDataProvider];
  article3 = [articleDataProvider5 article];
  headline2 = [article3 headline];
  role = [headline2 role];

  if (role == 3)
  {
    scrollViewController3 = [(NUArticleViewController *)self scrollViewController];
    scrollView = [scrollViewController3 scrollView];
    [scrollView setAccessibilityLabel:0];
  }

  else
  {
    scrollViewController3 = [headline title];
    sourceName = [headline sourceName];
    v37 = [sourceName length];

    if (v37)
    {
      v38 = MEMORY[0x277CCACA8];
      sourceName2 = [headline sourceName];
      title = [headline title];
      v41 = [v38 stringWithFormat:@"%@, %@", sourceName2, title];

      scrollViewController3 = v41;
    }

    scrollView = [(NUArticleViewController *)self scrollViewController];
    v35ScrollView = [scrollView scrollView];
    [v35ScrollView setAccessibilityLabel:scrollViewController3];
  }

  v43 = *MEMORY[0x277D76488];
  scrollViewController4 = [(NUArticleViewController *)self scrollViewController];
  scrollView2 = [scrollViewController4 scrollView];
  UIAccessibilityPostNotification(v43, scrollView2);

  v46 = *MEMORY[0x277D85DE8];
}

id __61__NUArticleViewController_finalizeArticleLoadingWithContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) articleDataProvider];
  v3 = [v2 article];
  v4 = [v3 headline];

  if (v4)
  {
    v5 = v4;
    v6 = [*(a1 + 32) articleScrollPositionManager];
    v7 = [v6 scrollPositionForHeadline:v5];

    if (v7)
    {
      v8 = [v7 position];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __61__NUArticleViewController_finalizeArticleLoadingWithContext___block_invoke_364(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = NUArticleLoadLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = CACurrentMediaTime() - *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(&dword_25C2D6000, v2, OS_LOG_TYPE_DEFAULT, "Article did finish initial layout, articleID=%{public}@, duration=%f", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)articleDidApplyDocumentStyle:(id)style
{
  v19 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  loadingListeners = [(NUArticleViewController *)self loadingListeners];
  v6 = [loadingListeners countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(loadingListeners);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          articleDataProvider = [(NUArticleViewController *)self articleDataProvider];
          article = [articleDataProvider article];
          [v10 loadedArticle:article didApplyDocumentStyle:styleCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [loadingListeners countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)becomeFirstResponder
{
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  [scrollViewController becomeFirstResponder];

  v5.receiver = self;
  v5.super_class = NUArticleViewController;
  return [(NUArticleViewController *)&v5 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  [scrollViewController resignFirstResponder];

  v5.receiver = self;
  v5.super_class = NUArticleViewController;
  return [(NUArticleViewController *)&v5 resignFirstResponder];
}

- (UIResponder)responder
{
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  responder = [scrollViewController responder];

  return responder;
}

- (void)applicationWillEnterForeground:(id)foreground
{
  eventManager = [(NUArticleViewController *)self eventManager];
  [eventManager fireEvent:@"appWillEnterForegroundEvent"];
}

- (void)applicationDidBecomeActive:(id)active
{
  eventManager = [(NUArticleViewController *)self eventManager];
  [eventManager fireEvent:@"appDidEnterForegroundEvent"];
}

- (void)nowPlayingWillDisappear:(id)disappear
{
  eventManager = [(NUArticleViewController *)self eventManager];
  [eventManager fireEvent:@"nowPlayingWillDisappearEvent"];
}

- (void)nowPlayingDidDisappear:(id)disappear
{
  eventManager = [(NUArticleViewController *)self eventManager];
  [eventManager fireEvent:@"nowPlayingDidDisappearEvent"];
}

- (void)viewDidLayoutSubviews
{
  v26.receiver = self;
  v26.super_class = NUArticleViewController;
  [(NUArticleViewController *)&v26 viewDidLayoutSubviews];
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  presentationAttributes = [scrollViewController presentationAttributes];
  [presentationAttributes canvasSize];
  v6 = v5;
  v8 = v7;
  view = [(NUArticleViewController *)self view];
  [view bounds];
  v11 = v10;
  v13 = v12;

  if (v6 != v11 || v8 != v13)
  {
    [(NUArticleViewController *)self updatePresentationAttributes];
  }

  view2 = [(NUArticleViewController *)self view];
  [view2 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  scrollViewController2 = [(NUArticleViewController *)self scrollViewController];
  view3 = [scrollViewController2 view];
  [view3 setFrame:{v17, v19, v21, v23}];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = NUArticleViewController;
  [(NUArticleViewController *)&v8 traitCollectionDidChange:change];
  articleDataProvider = [(NUArticleViewController *)self articleDataProvider];
  article = [articleDataProvider article];
  headline = [article headline];

  if (headline)
  {
    scrollView = [(NUArticleViewController *)self scrollView];
    [(UIViewController *)self nu_adjustInsetsForScrollView:scrollView];
  }
}

- (int64_t)preferredStatusBarStyle
{
  articleViewStyler = [(NUArticleViewController *)self articleViewStyler];
  value = [articleViewStyler value];
  if (value)
  {
    articleViewStyler2 = [(NUArticleViewController *)self articleViewStyler];
    value2 = [articleViewStyler2 value];
    statusBarStyle = [value2 statusBarStyle];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NUArticleViewController;
    statusBarStyle = [(NUArticleViewController *)&v9 preferredStatusBarStyle];
  }

  return statusBarStyle;
}

- (void)scrollViewControllerDidLayoutContent:(id)content
{
  eventManager = [(NUArticleViewController *)self eventManager];
  [eventManager fireEvent:@"silexContextDidLoadEvent"];

  [(NUArticleViewController *)self setPresentationMode:0];
  [(NUArticleViewController *)self updatePresentationAttributes];

  [(NUArticleViewController *)self updateTextSelectionForPaywallPresentation];
}

- (void)scrollViewController:(id)controller didApplyDocumentStyle:(id)style
{
  styleCopy = style;
  v5 = [NUArticleViewStyler alloc];
  backgroundColor = [styleCopy backgroundColor];
  whiteColor = backgroundColor;
  if (!backgroundColor)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
  }

  topBackgroundColor = [styleCopy topBackgroundColor];
  if (topBackgroundColor)
  {
    v9 = [(NUArticleViewStyler *)v5 initWithBackgroundColor:whiteColor topBackgroundColor:topBackgroundColor];
  }

  else
  {
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    v9 = [(NUArticleViewStyler *)v5 initWithBackgroundColor:whiteColor topBackgroundColor:whiteColor2];
  }

  if (!backgroundColor)
  {
  }

  articleViewStyler = [(NUArticleViewController *)self articleViewStyler];
  [articleViewStyler next:v9];

  [(NUArticleViewController *)self articleDidApplyDocumentStyle:styleCopy];
}

- (double)navigationBarHeightForScrollViewController:(id)controller
{
  navigationController = [(NUArticleViewController *)self navigationController];
  isNavigationBarHidden = [navigationController isNavigationBarHidden];

  if (isNavigationBarHidden)
  {
    return 0.0;
  }

  navigationController2 = [(NUArticleViewController *)self navigationController];
  navigationBar = [navigationController2 navigationBar];
  [navigationBar frame];
  MaxY = CGRectGetMaxY(v10);

  return MaxY;
}

- (double)toolBarHeightForScrollViewController:(id)controller
{
  navigationController = [(NUArticleViewController *)self navigationController];
  isToolbarHidden = [navigationController isToolbarHidden];

  v6 = 0.0;
  if ((isToolbarHidden & 1) == 0)
  {
    navigationController2 = [(NUArticleViewController *)self navigationController];
    toolbar = [navigationController2 toolbar];
    [toolbar frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v21.origin.x = v10;
    v21.origin.y = v12;
    v21.size.width = v14;
    v21.size.height = v16;
    if (!CGRectIsNull(v21))
    {
      v22.origin.x = v10;
      v22.origin.y = v12;
      v22.size.width = v14;
      v22.size.height = v16;
      if (!CGRectIsEmpty(v22))
      {
        view = [(NUArticleViewController *)self view];
        [view bounds];
        Height = CGRectGetHeight(v23);
        v24.origin.x = v10;
        v24.origin.y = v12;
        v24.size.width = v14;
        v24.size.height = v16;
        v19 = Height - CGRectGetMinY(v24);

        return fmax(v19, 0.0);
      }
    }
  }

  return v6;
}

- (void)scrollViewControllerDidScroll:(id)scroll
{
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  scrollView = [scrollViewController scrollView];
  isTracking = [scrollView isTracking];

  if (isTracking)
  {
    manualScrollingStartDate = [(NUArticleViewController *)self manualScrollingStartDate];
    v9 = manualScrollingStartDate;
    if (manualScrollingStartDate)
    {
      [(NUArticleViewController *)self setManualScrollingStartDate:manualScrollingStartDate];
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      [(NUArticleViewController *)self setManualScrollingStartDate:date];
    }
  }
}

- (void)scrollViewControllerDidScrollToBottomOfPrimaryContent:(id)content
{
  delegate = [(NUArticleViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(NUArticleViewController *)self delegate];
    [delegate2 articleViewControllerDidScrollToBottomOfPrimaryContent:self];
  }
}

- (void)scrollViewControllerDidStopScrolling:(id)scrolling
{
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  context = [scrollViewController context];

  if (context)
  {
    scrollViewController2 = [(NUArticleViewController *)self scrollViewController];
    scrollPosition = [scrollViewController2 scrollPosition];

    if (scrollPosition)
    {
      delegate = [(NUArticleViewController *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        delegate2 = [(NUArticleViewController *)self delegate];
        [delegate2 articleViewController:self didScrollToPosition:scrollPosition];
      }

      if ([(NUArticleViewController *)self shouldSaveScrollPosition])
      {
        [(NUArticleViewController *)self saveScrollPosition:scrollPosition];
      }
    }

    MEMORY[0x2821F96F8]();
  }
}

- (void)reportEvent:(id)event
{
  eventCopy = event;
  analyticsReporting = [(NUArticleViewController *)self analyticsReporting];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    analyticsReporting2 = [(NUArticleViewController *)self analyticsReporting];
    [analyticsReporting2 reportEvent:eventCopy];
  }
}

- (void)didStartExperimentForDocument:(id)document experimentIdentifier:(id)identifier treatmentGroup:(id)group
{
  documentCopy = document;
  identifierCopy = identifier;
  groupCopy = group;
  experimentationDelegate = [(NUArticleViewController *)self experimentationDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    experimentationDelegate2 = [(NUArticleViewController *)self experimentationDelegate];
    identifier = [documentCopy identifier];
    [experimentationDelegate2 didStartExperimentForArticleID:identifier experimentIdentifier:identifierCopy treatmentGroup:groupCopy];
  }
}

- (BOOL)isExperimentationEnabled
{
  experimentationDelegate = [(NUArticleViewController *)self experimentationDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  experimentationDelegate2 = [(NUArticleViewController *)self experimentationDelegate];
  isExperimentationEnabled = [experimentationDelegate2 isExperimentationEnabled];

  return isExperimentationEnabled;
}

- (void)setArticleContext:(id)context
{
  contextCopy = context;
  if (self->_articleContext != contextCopy)
  {
    v6 = contextCopy;
    objc_storeStrong(&self->_articleContext, context);
    [(NUArticleViewController *)self setShouldAutoPlayVideo:[(NUArticleContext *)v6 shouldAutoPlayVideo]];
    contextCopy = v6;
  }
}

- (void)setContentSizeCategory:(id)category
{
  objc_storeStrong(&self->_contentSizeCategory, category);
  currentPresentationAttributes = [(NUArticleViewController *)self currentPresentationAttributes];
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  [scrollViewController updatePresentationWithAttributes:currentPresentationAttributes];
}

- (NSString)contentSizeCategory
{
  contentSizeCategory = self->_contentSizeCategory;
  if (contentSizeCategory)
  {
    preferredContentSizeCategory = contentSizeCategory;
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  }

  return preferredContentSizeCategory;
}

- (NSString)selectedText
{
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  selectedText = [scrollViewController selectedText];

  return selectedText;
}

- (void)setContentScale:(int64_t)scale
{
  self->_contentScale = scale;
  currentPresentationAttributes = [(NUArticleViewController *)self currentPresentationAttributes];
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  [scrollViewController updatePresentationWithAttributes:currentPresentationAttributes];
}

- (void)updateScrollViewControllerWithHeaderBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  [scrollViewController applyHeaderBlueprint:blueprintCopy];
}

- (void)updateScrollViewControllerWithContentOverlayBlueprint:(id)blueprint topOffset:(double)offset
{
  blueprintCopy = blueprint;
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  [scrollViewController applyContentOverlayBlueprint:blueprintCopy topOffset:offset];

  [(NUArticleViewController *)self updateTextSelectionForPaywallPresentation];
}

- (void)updateScrollViewControllerWithFooterBlueprint:(id)blueprint
{
  blueprintCopy = blueprint;
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  [scrollViewController applyFooterBlueprint:blueprintCopy];
}

- (void)updatePresentationAttributes
{
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  currentPresentationAttributes = [(NUArticleViewController *)self currentPresentationAttributes];
  [scrollViewController updatePresentationWithAttributes:currentPresentationAttributes];
}

- (id)currentPresentationAttributes
{
  v3 = objc_opt_new();
  view = [(NUArticleViewController *)self view];
  [view bounds];
  [v3 setCanvasSize:{v5, v6}];

  contentSizeCategory = [(NUArticleViewController *)self contentSizeCategory];
  [v3 setContentSizeCategory:contentSizeCategory];

  v8 = [(NUArticleViewController *)self contentScale]- 1;
  v9 = 1.0;
  if (v8 <= 0xA)
  {
    v9 = dbl_25C311D10[v8];
  }

  [v3 setContentScaleFactor:v9];
  debugSettingsProvider = [(NUArticleViewController *)self debugSettingsProvider];
  [v3 setEnableViewportDebugging:{objc_msgSend(debugSettingsProvider, "viewportDebuggingEnabled")}];

  debugSettingsProvider2 = [(NUArticleViewController *)self debugSettingsProvider];
  [v3 setTestingConditionEnabled:{objc_msgSend(debugSettingsProvider2, "testingConditionEnabled")}];

  [v3 setPresentationMode:{-[NUArticleViewController presentationMode](self, "presentationMode")}];
  [v3 setUseTransparentToolbar:0];

  return v3;
}

- (void)updateScrollPositionFromContext
{
  articleContext = [(NUArticleViewController *)self articleContext];
  scrollPosition = [articleContext scrollPosition];

  if (scrollPosition)
  {
    [(NUArticleViewController *)self setPresentationMode:0];
    [(NUArticleViewController *)self updatePresentationAttributes];
    scrollViewController = [(NUArticleViewController *)self scrollViewController];
    articleContext2 = [(NUArticleViewController *)self articleContext];
    scrollPosition2 = [articleContext2 scrollPosition];
    [scrollViewController updateScrollPosition:scrollPosition2 animated:0];

    [(NUArticleViewController *)self setDidRestoreScrollPosition:1];
    articleContext3 = [(NUArticleViewController *)self articleContext];
    scrollPosition3 = [articleContext3 scrollPosition];
    [(NUArticleViewController *)self saveScrollPosition:scrollPosition3];

    [(NUArticleViewController *)self setArticleContext:0];
  }
}

- (BOOL)shouldSaveScrollPosition
{
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  context = [scrollViewController context];

  if (!context)
  {
    return 0;
  }

  if ([(NUArticleViewController *)self didRestoreScrollPosition])
  {
    return 1;
  }

  manualScrollingStartDate = [(NUArticleViewController *)self manualScrollingStartDate];
  if (!manualScrollingStartDate)
  {
    return 0;
  }

  v6 = manualScrollingStartDate;
  date = [MEMORY[0x277CBEAA8] date];
  manualScrollingStartDate2 = [(NUArticleViewController *)self manualScrollingStartDate];
  [date timeIntervalSinceDate:manualScrollingStartDate2];
  v10 = v9;

  return v10 > 10.0;
}

- (void)saveScrollPosition:(id)position
{
  positionCopy = position;
  articleDataProvider = [(NUArticleViewController *)self articleDataProvider];
  article = [articleDataProvider article];
  headline = [article headline];

  if (headline)
  {
    v7 = headline;
    articleScrollPositionManager = [(NUArticleViewController *)self articleScrollPositionManager];
    [articleScrollPositionManager setPosition:positionCopy headline:v7];
  }
}

- (void)scrollToAudioPositionAndHideMessageAfterEvent:(id)event
{
  eventCopy = event;
  articleDataProvider = [(NUArticleViewController *)self articleDataProvider];
  article = [articleDataProvider article];
  headline = [article headline];

  if (headline)
  {
    v7 = headline;
    articleScrollPositionManager = [(NUArticleViewController *)self articleScrollPositionManager];
    v9 = [articleScrollPositionManager scrollPositionForHeadline:v7];

    if (v9)
    {
      v10 = v9;
      if ([v10 source] == 1)
      {
        scrollViewController = [(NUArticleViewController *)self scrollViewController];
        position = [v10 position];
        [scrollViewController updateScrollPosition:position animated:0];

        [(NUArticleViewController *)self setDidRestoreScrollPosition:1];
        [(NUArticleViewController *)self showArticleMessage:0 hideAfterEvent:eventCopy];
      }
    }
  }
}

- (void)showArticleMessage:(int64_t)message hideAfterEvent:(id)event
{
  eventCopy = event;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__0;
  v11[4] = __Block_byref_object_dispose__0;
  articleMessager = [(NUArticleViewController *)self articleMessager];
  v12 = [articleMessager showMessage:message];

  if (eventCopy)
  {
    eventManager = [(NUArticleViewController *)self eventManager];
    v9 = [MEMORY[0x277CBEB98] setWithObject:eventCopy];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__NUArticleViewController_showArticleMessage_hideAfterEvent___block_invoke;
    v10[3] = &unk_2799A3DE8;
    v10[4] = v11;
    [eventManager triggerOnceWhenAnyEventHasOccurred:v9 block:v10];
  }

  _Block_object_dispose(v11, 8);
}

void __61__NUArticleViewController_showArticleMessage_hideAfterEvent___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (id)articleMessager
{
  v3 = _UISolariumFeatureFlagEnabled();
  navigationController = [(NUArticleViewController *)self navigationController];
  topViewController = [navigationController topViewController];
  v6 = topViewController;
  if (v3)
  {
    v7 = FCProtocolCast();
  }

  else
  {
    navigationItem = [topViewController navigationItem];
    _bottomPalette = [navigationItem _bottomPalette];
    contentView = [_bottomPalette contentView];
    v7 = FCProtocolCast();
  }

  return v7;
}

+ (id)_parentOrPresentingViewControllerFor:(id)for
{
  forCopy = for;
  parentViewController = [forCopy parentViewController];
  if (!parentViewController)
  {
    parentViewController = [forCopy presentingViewController];
  }

  return parentViewController;
}

- (BOOL)scrollViewController:(id)controller shouldOccludeAccessibilityElement:(id)element
{
  elementCopy = element;
  v6 = [NUArticleViewController _parentOrPresentingViewControllerFor:self];
  if (v6)
  {
    v7 = v6;
    while ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v8 = [NUArticleViewController _parentOrPresentingViewControllerFor:v7];

      v7 = v8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v9 = [v7 shouldOccludeAccessibilityElement:elementCopy];
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

  return v9;
}

- (BOOL)isPreviewingOrShowingHardPaywall
{
  v2 = [NUArticleViewController _parentOrPresentingViewControllerFor:self];
  if (v2)
  {
    while (![v2 conformsToProtocol:&unk_286E4D1D0])
    {
      v3 = [NUArticleViewController _parentOrPresentingViewControllerFor:v2];

      v2 = v3;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    if ([v2 isPreviewing])
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = [v2 isShowingHardPaywall];
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

LABEL_9:

  return v3;
}

- (void)updateTextSelectionForPaywallPresentation
{
  isPreviewingOrShowingHardPaywall = [(NUArticleViewController *)self isPreviewingOrShowingHardPaywall];
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  [scrollViewController setTextSelectionEnabled:!isPreviewingOrShowingHardPaywall];
}

- (id)searchWithContext:(id)context
{
  contextCopy = context;
  scrollViewController = [(NUArticleViewController *)self scrollViewController];
  v6 = [scrollViewController searchWithContext:contextCopy];

  return v6;
}

- (NULoadingDelegate)loadingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_loadingDelegate);

  return WeakRetained;
}

- (NUArticleViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SXAnalyticsReporting)analyticsReporting
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsReporting);

  return WeakRetained;
}

- (NUArticleExperimentationDelegate)experimentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_experimentationDelegate);

  return WeakRetained;
}

@end