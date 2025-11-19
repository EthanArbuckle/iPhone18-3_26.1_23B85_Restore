@interface NUArticleViewController
+ (id)_parentOrPresentingViewControllerFor:(id)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)isExperimentationEnabled;
- (BOOL)isPreviewingOrShowingHardPaywall;
- (BOOL)resignFirstResponder;
- (BOOL)scrollViewController:(id)a3 shouldOccludeAccessibilityElement:(id)a4;
- (BOOL)shouldSaveScrollPosition;
- (NSString)contentSizeCategory;
- (NSString)selectedText;
- (NUArticleExperimentationDelegate)experimentationDelegate;
- (NUArticleViewController)initWithArticleDataProvider:(id)a3 scrollViewController:(id)a4 appStateMonitor:(id)a5 keyCommandManager:(id)a6 loadingListeners:(id)a7 headerBlueprintProvider:(id)a8 debugSettingsProvider:(id)a9 videoPlayerViewControllerManager:(id)a10 articleScrollPositionManager:(id)a11 chromeControl:(id)a12 spotlightManager:(id)a13;
- (NUArticleViewControllerDelegate)delegate;
- (NULoadingDelegate)loadingDelegate;
- (SXAnalyticsReporting)analyticsReporting;
- (UIResponder)responder;
- (double)navigationBarHeightForScrollViewController:(id)a3;
- (double)toolBarHeightForScrollViewController:(id)a3;
- (id)articleMessager;
- (id)currentPresentationAttributes;
- (id)searchWithContext:(id)a3;
- (int64_t)preferredStatusBarStyle;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)articleDidApplyDocumentStyle:(id)a3;
- (void)didStartExperimentForDocument:(id)a3 experimentIdentifier:(id)a4 treatmentGroup:(id)a5;
- (void)finalizeArticleLoadingWithContext:(id)a3;
- (void)loadArticle;
- (void)nowPlayingDidDisappear:(id)a3;
- (void)nowPlayingWillDisappear:(id)a3;
- (void)prepareArticleLoadingWithContext:(id)a3;
- (void)reportEvent:(id)a3;
- (void)saveScrollPosition:(id)a3;
- (void)scrollToAudioPositionAndHideMessageAfterEvent:(id)a3;
- (void)scrollViewController:(id)a3 didApplyDocumentStyle:(id)a4;
- (void)scrollViewControllerDidLayoutContent:(id)a3;
- (void)scrollViewControllerDidScroll:(id)a3;
- (void)scrollViewControllerDidScrollToBottomOfPrimaryContent:(id)a3;
- (void)scrollViewControllerDidStopScrolling:(id)a3;
- (void)setArticleContext:(id)a3;
- (void)setContentScale:(int64_t)a3;
- (void)setContentSizeCategory:(id)a3;
- (void)showArticleMessage:(int64_t)a3 hideAfterEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updatePresentationAttributes;
- (void)updateScrollPositionFromContext;
- (void)updateScrollViewControllerWithContentOverlayBlueprint:(id)a3 topOffset:(double)a4;
- (void)updateScrollViewControllerWithFooterBlueprint:(id)a3;
- (void)updateScrollViewControllerWithHeaderBlueprint:(id)a3;
- (void)updateTextSelectionForPaywallPresentation;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation NUArticleViewController

- (NUArticleViewController)initWithArticleDataProvider:(id)a3 scrollViewController:(id)a4 appStateMonitor:(id)a5 keyCommandManager:(id)a6 loadingListeners:(id)a7 headerBlueprintProvider:(id)a8 debugSettingsProvider:(id)a9 videoPlayerViewControllerManager:(id)a10 articleScrollPositionManager:(id)a11 chromeControl:(id)a12 spotlightManager:(id)a13
{
  v47 = a3;
  v18 = a6;
  v49 = a4;
  v19 = a5;
  v50 = a6;
  v46 = a7;
  v40 = a8;
  v45 = a8;
  v20 = a9;
  v44 = a10;
  v43 = a11;
  v42 = a12;
  v41 = a13;
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

    objc_storeStrong(&v21->_articleDataProvider, a3);
    objc_storeStrong(&v21->_keyCommandManager, v18);
    objc_storeStrong(&v21->_debugSettingsProvider, a9);
    objc_storeStrong(&v21->_videoPlayerViewControllerManager, a10);
    objc_storeStrong(&v21->_articleScrollPositionManager, a11);
    objc_storeStrong(&v21->_chromeControl, a12);
    objc_storeStrong(&v21->_spotlightManager, a13);
    [v20 addObserver:v21];
    objc_storeStrong(&v21->_scrollViewController, a4);
    v26 = [v49 scrollView];
    scrollView = v21->_scrollView;
    v21->_scrollView = v26;

    [(UIScrollView *)v21->_scrollView setAllowsKeyboardScrolling:0];
    [(SXScrollViewController *)v21->_scrollViewController setDelegate:v21];
    [(SXScrollViewController *)v21->_scrollViewController setExperimentationDelegate:v21];
    v28 = [v49 scrollView];
    [v50 registerScrollView:v28];

    objc_storeStrong(&v21->_loadingListeners, a7);
    objc_storeStrong(&v21->_documentSectionBlueprintProvider, v40);
    v21->_presentationMode = 1;
    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    [v29 addObserver:v21 selector:sel_applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];

    v30 = [MEMORY[0x277CCAB98] defaultCenter];
    [v30 addObserver:v21 selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];

    v31 = [MEMORY[0x277CCAB98] defaultCenter];
    [v31 addObserver:v21 selector:sel_nowPlayingWillDisappear_ name:@"NUNowPlayingViewControllerWillDisappearNotification" object:0];

    v32 = [MEMORY[0x277CCAB98] defaultCenter];
    [v32 addObserver:v21 selector:sel_nowPlayingDidDisappear_ name:@"NUNowPlayingViewControllerDidDisappearNotification" object:0];

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
  v3 = [(NUArticleViewController *)self view];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [(NUArticleViewController *)self view];
  [v5 setPreservesSuperviewLayoutMargins:1];

  v6 = [(NUArticleViewController *)self scrollViewController];
  [(NUArticleViewController *)self addChildViewController:v6];

  v7 = [(NUArticleViewController *)self view];
  v8 = [(NUArticleViewController *)self scrollViewController];
  v9 = [v8 view];
  [v7 addSubview:v9];

  v10 = [(NUArticleViewController *)self scrollViewController];
  [v10 didMoveToParentViewController:self];

  v11 = [(NUArticleViewController *)self scrollViewController];
  v12 = [v11 scrollView];
  [v12 _setContentInsetAdjustmentBehavior:2];

  v13 = [(NUArticleViewController *)self scrollViewController];
  v14 = [v13 scrollView];
  [v14 _setIndicatorInsetAdjustmentBehavior:1];

  v15 = [(NUArticleViewController *)self scrollViewController];
  v16 = [v15 scrollView];
  [v16 _accessibilitySetOpaqueElementScrollsContentIntoView:1];

  v17 = [(NUArticleViewController *)self loadingDelegate];
  LOBYTE(v16) = objc_opt_respondsToSelector();

  if (v16)
  {
    v18 = [(NUArticleViewController *)self loadingDelegate];
    [v18 loadingWillStart];
  }

  v19 = [(NUArticleViewController *)self loadingDelegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = [(NUArticleViewController *)self loadingDelegate];
    [v21 loadingDidStart];
  }

  objc_initWeak(&location, self);
  v22 = [(NUArticleViewController *)self eventManager];
  v23 = MEMORY[0x277CBEB98];
  v73[0] = @"silexContextDidLoadEvent";
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:1];
  v25 = [v23 setWithArray:v24];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __38__NUArticleViewController_viewDidLoad__block_invoke;
  v67[3] = &unk_2799A3CD0;
  objc_copyWeak(&v68, &location);
  [v22 triggerOnceWhenAllEventsHaveOccurred:v25 block:v67];

  v26 = [(NUArticleViewController *)self eventManager];
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
  [v26 triggerAlwaysWhenAllEventsHaveOccurred:v29 block:v65];

  v30 = [(NUArticleViewController *)self eventManager];
  v31 = MEMORY[0x277CBEB98];
  v71 = @"viewDidDisappearEvent";
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
  v33 = [v31 setWithArray:v32];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __38__NUArticleViewController_viewDidLoad__block_invoke_5;
  v63[3] = &unk_2799A3CD0;
  objc_copyWeak(&v64, &location);
  [v30 triggerAlwaysWhenAllEventsHaveOccurred:v33 block:v63];

  v34 = [(NUArticleViewController *)self documentSectionBlueprintProvider];
  v35 = [v34 observableHeaderBlueprint];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __38__NUArticleViewController_viewDidLoad__block_invoke_7;
  v61[3] = &unk_2799A3CF8;
  objc_copyWeak(&v62, &location);
  v36 = [v35 observe:v61];
  [v36 disposeOn:self];

  v37 = [(NUArticleViewController *)self documentSectionBlueprintProvider];
  v38 = [v37 observableContentOverlayBlueprintData];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __38__NUArticleViewController_viewDidLoad__block_invoke_9;
  v59[3] = &unk_2799A3D20;
  objc_copyWeak(&v60, &location);
  v39 = [v38 observe:v59];
  [v39 disposeOn:self];

  v40 = [(NUArticleViewController *)self documentSectionBlueprintProvider];
  v41 = [v40 observableFooterBlueprint];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __38__NUArticleViewController_viewDidLoad__block_invoke_11;
  v57[3] = &unk_2799A3CF8;
  objc_copyWeak(&v58, &location);
  v42 = [v41 observe:v57];
  [v42 disposeOn:self];

  v43 = [(NUArticleViewController *)self documentSectionBlueprintProvider];
  v44 = [v43 observableHeaderBlueprint];
  v45 = [v44 value];
  [(NUArticleViewController *)self updateScrollViewControllerWithHeaderBlueprint:v45];

  v46 = [(NUArticleViewController *)self documentSectionBlueprintProvider];
  v47 = [v46 observableContentOverlayBlueprintData];
  v48 = [v47 value];
  v49 = [v48 blueprint];
  v50 = [(NUArticleViewController *)self documentSectionBlueprintProvider];
  v51 = [v50 observableContentOverlayBlueprintData];
  v52 = [v51 value];
  [v52 topOffset];
  [(NUArticleViewController *)self updateScrollViewControllerWithContentOverlayBlueprint:v49 topOffset:?];

  v53 = [(NUArticleViewController *)self documentSectionBlueprintProvider];
  v54 = [v53 observableFooterBlueprint];
  v55 = [v54 value];
  [(NUArticleViewController *)self updateScrollViewControllerWithFooterBlueprint:v55];

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
  v3 = [(NUArticleViewController *)self articleDataProvider];
  v4 = [v3 article];
  v5 = [v4 headline];

  if (v5)
  {
    v6 = [(NUArticleViewController *)self scrollView];
    [(UIViewController *)self nu_adjustInsetsForScrollView:v6];
  }
}

- (void)loadArticle
{
  objc_initWeak(&location, self);
  v3 = [(NUArticleViewController *)self articleDataProvider];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__NUArticleViewController_loadArticle__block_invoke;
  v4[3] = &unk_2799A3D70;
  objc_copyWeak(&v5, &location);
  [v3 loadContextWithCompletionBlock:v4];

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

- (void)prepareArticleLoadingWithContext:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NUArticleViewController *)self loadingListeners];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(NUArticleViewController *)self articleDataProvider];
          v12 = [v11 article];
          [v10 willLoadArticle:v12 withContext:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)finalizeArticleLoadingWithContext:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = [(NUArticleViewController *)self loadingListeners];
  v6 = [v5 countByEnumeratingWithState:&v51 objects:v58 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v51 + 1) + 8 * v9);
        v11 = [(NUArticleViewController *)self articleDataProvider];
        v12 = [v11 article];
        [v10 didLoadArticle:v12 withContext:v4];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v51 objects:v58 count:16];
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
    v15 = [(NUArticleViewController *)self articleDataProvider];
    v16 = [v15 articleID];
    *buf = 138543362;
    v57 = v16;
    _os_log_impl(&dword_25C2D6000, v14, OS_LOG_TYPE_DEFAULT, "Article did finish loading, starting layout, articleID=%{public}@", buf, 0xCu);
  }

  v17 = CACurrentMediaTime();
  v18 = [(NUArticleViewController *)self articleDataProvider];
  v19 = [v18 articleID];

  v20 = [(NUArticleViewController *)self eventManager];
  v21 = MEMORY[0x277CBEB98];
  v55 = @"silexContextDidLoadEvent";
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  v23 = [v21 setWithArray:v22];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __61__NUArticleViewController_finalizeArticleLoadingWithContext___block_invoke_364;
  v47[3] = &unk_2799A3DC0;
  v24 = v19;
  v48 = v24;
  v49 = v17;
  [v20 triggerOnceWhenAllEventsHaveOccurred:v23 block:v47];

  v25 = [(NUArticleViewController *)self scrollViewController];
  [v25 loadContext:v4 analyticsReporting:self];

  [(NUArticleViewController *)self updatePresentationAttributes];
  if (v13)
  {
    v26 = [(NUArticleViewController *)self scrollViewController];
    [v26 updateScrollPosition:v13 animated:0];

    [(NUArticleViewController *)self setDidRestoreScrollPosition:1];
  }

  v27 = [(NUArticleViewController *)self articleDataProvider];
  v28 = [v27 article];
  v29 = [v28 headline];

  v30 = [(NUArticleViewController *)self articleDataProvider];
  v31 = [v30 article];
  v32 = [v31 headline];
  v33 = [v32 role];

  if (v33 == 3)
  {
    v34 = [(NUArticleViewController *)self scrollViewController];
    v35 = [v34 scrollView];
    [v35 setAccessibilityLabel:0];
  }

  else
  {
    v34 = [v29 title];
    v36 = [v29 sourceName];
    v37 = [v36 length];

    if (v37)
    {
      v38 = MEMORY[0x277CCACA8];
      v39 = [v29 sourceName];
      v40 = [v29 title];
      v41 = [v38 stringWithFormat:@"%@, %@", v39, v40];

      v34 = v41;
    }

    v35 = [(NUArticleViewController *)self scrollViewController];
    v42 = [v35 scrollView];
    [v42 setAccessibilityLabel:v34];
  }

  v43 = *MEMORY[0x277D76488];
  v44 = [(NUArticleViewController *)self scrollViewController];
  v45 = [v44 scrollView];
  UIAccessibilityPostNotification(v43, v45);

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

- (void)articleDidApplyDocumentStyle:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(NUArticleViewController *)self loadingListeners];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(NUArticleViewController *)self articleDataProvider];
          v12 = [v11 article];
          [v10 loadedArticle:v12 didApplyDocumentStyle:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)becomeFirstResponder
{
  v3 = [(NUArticleViewController *)self scrollViewController];
  [v3 becomeFirstResponder];

  v5.receiver = self;
  v5.super_class = NUArticleViewController;
  return [(NUArticleViewController *)&v5 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v3 = [(NUArticleViewController *)self scrollViewController];
  [v3 resignFirstResponder];

  v5.receiver = self;
  v5.super_class = NUArticleViewController;
  return [(NUArticleViewController *)&v5 resignFirstResponder];
}

- (UIResponder)responder
{
  v2 = [(NUArticleViewController *)self scrollViewController];
  v3 = [v2 responder];

  return v3;
}

- (void)applicationWillEnterForeground:(id)a3
{
  v3 = [(NUArticleViewController *)self eventManager];
  [v3 fireEvent:@"appWillEnterForegroundEvent"];
}

- (void)applicationDidBecomeActive:(id)a3
{
  v3 = [(NUArticleViewController *)self eventManager];
  [v3 fireEvent:@"appDidEnterForegroundEvent"];
}

- (void)nowPlayingWillDisappear:(id)a3
{
  v3 = [(NUArticleViewController *)self eventManager];
  [v3 fireEvent:@"nowPlayingWillDisappearEvent"];
}

- (void)nowPlayingDidDisappear:(id)a3
{
  v3 = [(NUArticleViewController *)self eventManager];
  [v3 fireEvent:@"nowPlayingDidDisappearEvent"];
}

- (void)viewDidLayoutSubviews
{
  v26.receiver = self;
  v26.super_class = NUArticleViewController;
  [(NUArticleViewController *)&v26 viewDidLayoutSubviews];
  v3 = [(NUArticleViewController *)self scrollViewController];
  v4 = [v3 presentationAttributes];
  [v4 canvasSize];
  v6 = v5;
  v8 = v7;
  v9 = [(NUArticleViewController *)self view];
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  if (v6 != v11 || v8 != v13)
  {
    [(NUArticleViewController *)self updatePresentationAttributes];
  }

  v15 = [(NUArticleViewController *)self view];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(NUArticleViewController *)self scrollViewController];
  v25 = [v24 view];
  [v25 setFrame:{v17, v19, v21, v23}];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = NUArticleViewController;
  [(NUArticleViewController *)&v8 traitCollectionDidChange:a3];
  v4 = [(NUArticleViewController *)self articleDataProvider];
  v5 = [v4 article];
  v6 = [v5 headline];

  if (v6)
  {
    v7 = [(NUArticleViewController *)self scrollView];
    [(UIViewController *)self nu_adjustInsetsForScrollView:v7];
  }
}

- (int64_t)preferredStatusBarStyle
{
  v3 = [(NUArticleViewController *)self articleViewStyler];
  v4 = [v3 value];
  if (v4)
  {
    v5 = [(NUArticleViewController *)self articleViewStyler];
    v6 = [v5 value];
    v7 = [v6 statusBarStyle];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NUArticleViewController;
    v7 = [(NUArticleViewController *)&v9 preferredStatusBarStyle];
  }

  return v7;
}

- (void)scrollViewControllerDidLayoutContent:(id)a3
{
  v4 = [(NUArticleViewController *)self eventManager];
  [v4 fireEvent:@"silexContextDidLoadEvent"];

  [(NUArticleViewController *)self setPresentationMode:0];
  [(NUArticleViewController *)self updatePresentationAttributes];

  [(NUArticleViewController *)self updateTextSelectionForPaywallPresentation];
}

- (void)scrollViewController:(id)a3 didApplyDocumentStyle:(id)a4
{
  v12 = a4;
  v5 = [NUArticleViewStyler alloc];
  v6 = [v12 backgroundColor];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277D75348] whiteColor];
  }

  v8 = [v12 topBackgroundColor];
  if (v8)
  {
    v9 = [(NUArticleViewStyler *)v5 initWithBackgroundColor:v7 topBackgroundColor:v8];
  }

  else
  {
    v10 = [MEMORY[0x277D75348] whiteColor];
    v9 = [(NUArticleViewStyler *)v5 initWithBackgroundColor:v7 topBackgroundColor:v10];
  }

  if (!v6)
  {
  }

  v11 = [(NUArticleViewController *)self articleViewStyler];
  [v11 next:v9];

  [(NUArticleViewController *)self articleDidApplyDocumentStyle:v12];
}

- (double)navigationBarHeightForScrollViewController:(id)a3
{
  v4 = [(NUArticleViewController *)self navigationController];
  v5 = [v4 isNavigationBarHidden];

  if (v5)
  {
    return 0.0;
  }

  v7 = [(NUArticleViewController *)self navigationController];
  v8 = [v7 navigationBar];
  [v8 frame];
  MaxY = CGRectGetMaxY(v10);

  return MaxY;
}

- (double)toolBarHeightForScrollViewController:(id)a3
{
  v4 = [(NUArticleViewController *)self navigationController];
  v5 = [v4 isToolbarHidden];

  v6 = 0.0;
  if ((v5 & 1) == 0)
  {
    v7 = [(NUArticleViewController *)self navigationController];
    v8 = [v7 toolbar];
    [v8 frame];
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
        v17 = [(NUArticleViewController *)self view];
        [v17 bounds];
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

- (void)scrollViewControllerDidScroll:(id)a3
{
  v4 = [(NUArticleViewController *)self scrollViewController];
  v5 = [v4 scrollView];
  v6 = [v5 isTracking];

  if (v6)
  {
    v7 = [(NUArticleViewController *)self manualScrollingStartDate];
    v9 = v7;
    if (v7)
    {
      [(NUArticleViewController *)self setManualScrollingStartDate:v7];
    }

    else
    {
      v8 = [MEMORY[0x277CBEAA8] date];
      [(NUArticleViewController *)self setManualScrollingStartDate:v8];
    }
  }
}

- (void)scrollViewControllerDidScrollToBottomOfPrimaryContent:(id)a3
{
  v4 = [(NUArticleViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NUArticleViewController *)self delegate];
    [v6 articleViewControllerDidScrollToBottomOfPrimaryContent:self];
  }
}

- (void)scrollViewControllerDidStopScrolling:(id)a3
{
  v4 = [(NUArticleViewController *)self scrollViewController];
  v5 = [v4 context];

  if (v5)
  {
    v6 = [(NUArticleViewController *)self scrollViewController];
    v10 = [v6 scrollPosition];

    if (v10)
    {
      v7 = [(NUArticleViewController *)self delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = [(NUArticleViewController *)self delegate];
        [v9 articleViewController:self didScrollToPosition:v10];
      }

      if ([(NUArticleViewController *)self shouldSaveScrollPosition])
      {
        [(NUArticleViewController *)self saveScrollPosition:v10];
      }
    }

    MEMORY[0x2821F96F8]();
  }
}

- (void)reportEvent:(id)a3
{
  v7 = a3;
  v4 = [(NUArticleViewController *)self analyticsReporting];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NUArticleViewController *)self analyticsReporting];
    [v6 reportEvent:v7];
  }
}

- (void)didStartExperimentForDocument:(id)a3 experimentIdentifier:(id)a4 treatmentGroup:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NUArticleViewController *)self experimentationDelegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(NUArticleViewController *)self experimentationDelegate];
    v13 = [v14 identifier];
    [v12 didStartExperimentForArticleID:v13 experimentIdentifier:v8 treatmentGroup:v9];
  }
}

- (BOOL)isExperimentationEnabled
{
  v3 = [(NUArticleViewController *)self experimentationDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(NUArticleViewController *)self experimentationDelegate];
  v6 = [v5 isExperimentationEnabled];

  return v6;
}

- (void)setArticleContext:(id)a3
{
  v5 = a3;
  if (self->_articleContext != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_articleContext, a3);
    [(NUArticleViewController *)self setShouldAutoPlayVideo:[(NUArticleContext *)v6 shouldAutoPlayVideo]];
    v5 = v6;
  }
}

- (void)setContentSizeCategory:(id)a3
{
  objc_storeStrong(&self->_contentSizeCategory, a3);
  v5 = [(NUArticleViewController *)self currentPresentationAttributes];
  v4 = [(NUArticleViewController *)self scrollViewController];
  [v4 updatePresentationWithAttributes:v5];
}

- (NSString)contentSizeCategory
{
  contentSizeCategory = self->_contentSizeCategory;
  if (contentSizeCategory)
  {
    v3 = contentSizeCategory;
  }

  else
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v3 = [v4 preferredContentSizeCategory];
  }

  return v3;
}

- (NSString)selectedText
{
  v2 = [(NUArticleViewController *)self scrollViewController];
  v3 = [v2 selectedText];

  return v3;
}

- (void)setContentScale:(int64_t)a3
{
  self->_contentScale = a3;
  v5 = [(NUArticleViewController *)self currentPresentationAttributes];
  v4 = [(NUArticleViewController *)self scrollViewController];
  [v4 updatePresentationWithAttributes:v5];
}

- (void)updateScrollViewControllerWithHeaderBlueprint:(id)a3
{
  v4 = a3;
  v5 = [(NUArticleViewController *)self scrollViewController];
  [v5 applyHeaderBlueprint:v4];
}

- (void)updateScrollViewControllerWithContentOverlayBlueprint:(id)a3 topOffset:(double)a4
{
  v6 = a3;
  v7 = [(NUArticleViewController *)self scrollViewController];
  [v7 applyContentOverlayBlueprint:v6 topOffset:a4];

  [(NUArticleViewController *)self updateTextSelectionForPaywallPresentation];
}

- (void)updateScrollViewControllerWithFooterBlueprint:(id)a3
{
  v4 = a3;
  v5 = [(NUArticleViewController *)self scrollViewController];
  [v5 applyFooterBlueprint:v4];
}

- (void)updatePresentationAttributes
{
  v4 = [(NUArticleViewController *)self scrollViewController];
  v3 = [(NUArticleViewController *)self currentPresentationAttributes];
  [v4 updatePresentationWithAttributes:v3];
}

- (id)currentPresentationAttributes
{
  v3 = objc_opt_new();
  v4 = [(NUArticleViewController *)self view];
  [v4 bounds];
  [v3 setCanvasSize:{v5, v6}];

  v7 = [(NUArticleViewController *)self contentSizeCategory];
  [v3 setContentSizeCategory:v7];

  v8 = [(NUArticleViewController *)self contentScale]- 1;
  v9 = 1.0;
  if (v8 <= 0xA)
  {
    v9 = dbl_25C311D10[v8];
  }

  [v3 setContentScaleFactor:v9];
  v10 = [(NUArticleViewController *)self debugSettingsProvider];
  [v3 setEnableViewportDebugging:{objc_msgSend(v10, "viewportDebuggingEnabled")}];

  v11 = [(NUArticleViewController *)self debugSettingsProvider];
  [v3 setTestingConditionEnabled:{objc_msgSend(v11, "testingConditionEnabled")}];

  [v3 setPresentationMode:{-[NUArticleViewController presentationMode](self, "presentationMode")}];
  [v3 setUseTransparentToolbar:0];

  return v3;
}

- (void)updateScrollPositionFromContext
{
  v3 = [(NUArticleViewController *)self articleContext];
  v4 = [v3 scrollPosition];

  if (v4)
  {
    [(NUArticleViewController *)self setPresentationMode:0];
    [(NUArticleViewController *)self updatePresentationAttributes];
    v5 = [(NUArticleViewController *)self scrollViewController];
    v6 = [(NUArticleViewController *)self articleContext];
    v7 = [v6 scrollPosition];
    [v5 updateScrollPosition:v7 animated:0];

    [(NUArticleViewController *)self setDidRestoreScrollPosition:1];
    v8 = [(NUArticleViewController *)self articleContext];
    v9 = [v8 scrollPosition];
    [(NUArticleViewController *)self saveScrollPosition:v9];

    [(NUArticleViewController *)self setArticleContext:0];
  }
}

- (BOOL)shouldSaveScrollPosition
{
  v3 = [(NUArticleViewController *)self scrollViewController];
  v4 = [v3 context];

  if (!v4)
  {
    return 0;
  }

  if ([(NUArticleViewController *)self didRestoreScrollPosition])
  {
    return 1;
  }

  v5 = [(NUArticleViewController *)self manualScrollingStartDate];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [(NUArticleViewController *)self manualScrollingStartDate];
  [v7 timeIntervalSinceDate:v8];
  v10 = v9;

  return v10 > 10.0;
}

- (void)saveScrollPosition:(id)a3
{
  v9 = a3;
  v4 = [(NUArticleViewController *)self articleDataProvider];
  v5 = [v4 article];
  v6 = [v5 headline];

  if (v6)
  {
    v7 = v6;
    v8 = [(NUArticleViewController *)self articleScrollPositionManager];
    [v8 setPosition:v9 headline:v7];
  }
}

- (void)scrollToAudioPositionAndHideMessageAfterEvent:(id)a3
{
  v13 = a3;
  v4 = [(NUArticleViewController *)self articleDataProvider];
  v5 = [v4 article];
  v6 = [v5 headline];

  if (v6)
  {
    v7 = v6;
    v8 = [(NUArticleViewController *)self articleScrollPositionManager];
    v9 = [v8 scrollPositionForHeadline:v7];

    if (v9)
    {
      v10 = v9;
      if ([v10 source] == 1)
      {
        v11 = [(NUArticleViewController *)self scrollViewController];
        v12 = [v10 position];
        [v11 updateScrollPosition:v12 animated:0];

        [(NUArticleViewController *)self setDidRestoreScrollPosition:1];
        [(NUArticleViewController *)self showArticleMessage:0 hideAfterEvent:v13];
      }
    }
  }
}

- (void)showArticleMessage:(int64_t)a3 hideAfterEvent:(id)a4
{
  v6 = a4;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__0;
  v11[4] = __Block_byref_object_dispose__0;
  v7 = [(NUArticleViewController *)self articleMessager];
  v12 = [v7 showMessage:a3];

  if (v6)
  {
    v8 = [(NUArticleViewController *)self eventManager];
    v9 = [MEMORY[0x277CBEB98] setWithObject:v6];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__NUArticleViewController_showArticleMessage_hideAfterEvent___block_invoke;
    v10[3] = &unk_2799A3DE8;
    v10[4] = v11;
    [v8 triggerOnceWhenAnyEventHasOccurred:v9 block:v10];
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
  v4 = [(NUArticleViewController *)self navigationController];
  v5 = [v4 topViewController];
  v6 = v5;
  if (v3)
  {
    v7 = FCProtocolCast();
  }

  else
  {
    v8 = [v5 navigationItem];
    v9 = [v8 _bottomPalette];
    v10 = [v9 contentView];
    v7 = FCProtocolCast();
  }

  return v7;
}

+ (id)_parentOrPresentingViewControllerFor:(id)a3
{
  v3 = a3;
  v4 = [v3 parentViewController];
  if (!v4)
  {
    v4 = [v3 presentingViewController];
  }

  return v4;
}

- (BOOL)scrollViewController:(id)a3 shouldOccludeAccessibilityElement:(id)a4
{
  v5 = a4;
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

    v9 = [v7 shouldOccludeAccessibilityElement:v5];
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
  v3 = [(NUArticleViewController *)self isPreviewingOrShowingHardPaywall];
  v4 = [(NUArticleViewController *)self scrollViewController];
  [v4 setTextSelectionEnabled:!v3];
}

- (id)searchWithContext:(id)a3
{
  v4 = a3;
  v5 = [(NUArticleViewController *)self scrollViewController];
  v6 = [v5 searchWithContext:v4];

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