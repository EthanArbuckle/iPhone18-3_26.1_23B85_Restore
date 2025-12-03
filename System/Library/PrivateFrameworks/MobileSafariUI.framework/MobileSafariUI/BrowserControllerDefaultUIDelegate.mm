@interface BrowserControllerDefaultUIDelegate
- (BOOL)automationOverlayControllerShouldAllowUserInteraction:(id)interaction;
- (BOOL)browserControllerIsFullscreen:(id)fullscreen;
- (BOOL)browserControllerShouldIncreaseTopPaddingForStartPage:(id)page;
- (BOOL)browserControllerShouldUpdateSnapshotForActiveTab:(id)tab;
- (BrowserControllerDefaultUIDelegate)initWithBrowserController:(id)controller;
- (CGPoint)browserControllerWindowLastTapLocation:(id)location;
- (CGRect)browserControllerWindowFrame:(id)frame;
- (double)browserControllerCatalogViewPopoverWidth:(id)width;
- (double)browserControllerStatusBarWidth:(id)width;
- (id)browserController:(id)controller tabSnapshotContentProviderForTabDocument:(id)document;
- (id)browserControllerCatalogViewController:(id)controller;
- (id)browserControllerContentContainerView:(id)view;
- (id)browserControllerFocusItemContainer:(id)container;
- (id)browserControllerNavigationBar:(id)bar;
- (id)browserControllerPreferredFocusEnvironments:(id)environments;
- (id)browserControllerTabBarManager:(id)manager;
- (id)browserControllerTabContentContainerView:(id)view;
- (id)browserControllerTabHoverPreview:(id)preview;
- (id)createTabOverviewForBrowserController:(id)controller;
- (id)sidebarUIProxyForBrowserController:(id)controller;
- (void)_browserController:(id)controller animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item withCompletion:(id)completion;
- (void)_setUpAutomationOverlay;
- (void)_tearDownAutomationOverlay;
- (void)_windowDidResignKeyWindow:(id)window;
- (void)automationOverlayController:(id)controller didChangeAllowsUserInteraction:(BOOL)interaction;
- (void)automationOverlayControllerDidCancelAutomation:(id)automation;
- (void)automationOverlayControllerDidDisableAutomation:(id)automation;
- (void)browserController:(id)controller animateSafariIconLinkFromPoint:(CGPoint)point inView:(id)view withCompletionHandler:(id)handler;
- (void)browserController:(id)controller didChangeFromFavoritesState:(int64_t)state;
- (void)browserController:(id)controller didChangeReaderVisibilityForTabDocument:(id)document;
- (void)browserController:(id)controller didDisconnectFromScene:(id)scene;
- (void)browserController:(id)controller scrollViewDidScroll:(id)scroll;
- (void)browserController:(id)controller setCatalogViewController:(id)viewController;
- (void)browserController:(id)controller updateViewForActiveTabDocument:(id)document;
- (void)browserController:(id)controller willConnectToScene:(id)scene session:(id)session options:(id)options;
- (void)browserControllerContentContainerViewFrameDidChange:(id)change;
- (void)browserControllerDidEndObfuscating:(id)obfuscating;
- (void)browserControllerLayOutCatalogView:(id)view;
- (void)browserControllerShouldUpdateUnifiedBarVisibility:(id)visibility;
- (void)browserControllerStartPageUpdatePolicyDidChange:(id)change;
- (void)browserControllerUpdateInactiveAudibleTabs:(id)tabs;
- (void)browserControllerWillBeginObfuscating:(id)obfuscating;
- (void)safariWindow:(id)window statusBarChangedFromHeight:(double)height toHeight:(double)toHeight;
- (void)updateTabViewPinchRecognizerForBrowserController:(id)controller;
@end

@implementation BrowserControllerDefaultUIDelegate

- (BrowserControllerDefaultUIDelegate)initWithBrowserController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = BrowserControllerDefaultUIDelegate;
  v6 = [(BrowserControllerDefaultUIDelegate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_browserController, controller);
    v8 = v7;
  }

  return v7;
}

- (void)browserController:(id)controller willConnectToScene:(id)scene session:(id)session options:(id)options
{
  controllerCopy = controller;
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  window = self->_window;
  if (window)
  {
    [(MobileSafariWindow *)window setWindowScene:sceneCopy];
    [(MobileSafariWindow *)self->_window makeKeyAndVisible];
  }

  else
  {
    v14 = [[MobileSafariWindow alloc] initWithWindowScene:sceneCopy];
    v15 = self->_window;
    self->_window = v14;

    [(MobileSafariWindow *)self->_window setSafariWindowDelegate:self];
    sf_safariAccentColor = [MEMORY[0x277D75348] sf_safariAccentColor];
    [(MobileSafariWindow *)self->_window setTintColor:sf_safariAccentColor];

    [(MobileSafariWindow *)self->_window setOpaque:0];
    layer = [(MobileSafariWindow *)self->_window layer];
    [layer setHitTestsAsOpaque:1];

    rootViewController = [controllerCopy rootViewController];
    if ([MEMORY[0x277D49A08] isSolariumEnabled])
    {
      v19 = [[BrowserSplitViewController alloc] initWithBrowserController:controllerCopy];
      splitViewController = self->_splitViewController;
      self->_splitViewController = v19;

      v21 = self->_splitViewController;
      rootViewController = v21;
    }

    [(MobileSafariWindow *)self->_window setRootViewController:rootViewController];
    [(MobileSafariWindow *)self->_window makeKeyAndVisible];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__windowDidResignKeyWindow_ name:*MEMORY[0x277D77298] object:self->_window];
  }

  if ([(BrowserController *)self->_browserController isControlledByAutomation])
  {
    [(BrowserControllerDefaultUIDelegate *)self _setUpAutomationOverlay];
  }
}

- (void)browserController:(id)controller didDisconnectFromScene:(id)scene
{
  [(MobileSafariWindow *)self->_window setWindowScene:0, scene];
  if ([(BrowserController *)self->_browserController isControlledByAutomation])
  {

    [(BrowserControllerDefaultUIDelegate *)self _tearDownAutomationOverlay];
  }
}

- (void)browserControllerWillBeginObfuscating:(id)obfuscating
{
  if (!self->_obfuscationWindow)
  {
    v5 = [PrivateBrowsingObfuscationWindow showPrivateBrowsingObfuscationWindowForApplicationWindow:self->_window];
    obfuscationWindow = self->_obfuscationWindow;
    self->_obfuscationWindow = v5;
  }
}

- (void)browserControllerDidEndObfuscating:(id)obfuscating
{
  obfuscationWindow = self->_obfuscationWindow;
  if (obfuscationWindow)
  {
    [(PrivateBrowsingObfuscationWindow *)obfuscationWindow setHidden:1];
    v5 = self->_obfuscationWindow;
    self->_obfuscationWindow = 0;
  }
}

- (id)sidebarUIProxyForBrowserController:(id)controller
{
  splitViewController = self->_splitViewController;
  if (splitViewController)
  {
    rootViewController = splitViewController;
  }

  else
  {
    rootViewController = [(BrowserController *)self->_browserController rootViewController];
  }

  return rootViewController;
}

- (CGRect)browserControllerWindowFrame:(id)frame
{
  [(MobileSafariWindow *)self->_window frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)browserControllerStatusBarWidth:(id)width
{
  [(MobileSafariWindow *)self->_window bounds];

  return CGRectGetWidth(*&v3);
}

- (CGPoint)browserControllerWindowLastTapLocation:(id)location
{
  [(MobileSafariWindow *)self->_window lastTapLocation];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)browserController:(id)controller scrollViewDidScroll:(id)scroll
{
  browserController = self->_browserController;
  scrollCopy = scroll;
  rootViewController = [(BrowserController *)browserController rootViewController];
  [rootViewController scrollViewDidScroll:scrollCopy];
}

- (id)browserControllerContentContainerView:(id)view
{
  rootViewController = [(BrowserController *)self->_browserController rootViewController];
  contentContainerView = [rootViewController contentContainerView];

  return contentContainerView;
}

- (id)browserControllerTabContentContainerView:(id)view
{
  rootViewController = [(BrowserController *)self->_browserController rootViewController];
  contentContainerView = [rootViewController contentContainerView];

  return contentContainerView;
}

- (void)updateTabViewPinchRecognizerForBrowserController:(id)controller
{
  rootViewController = [(BrowserController *)self->_browserController rootViewController];
  [rootViewController updateTabViewPinchRecognizer];
}

- (id)browserControllerCatalogViewController:(id)controller
{
  rootViewController = [(BrowserController *)self->_browserController rootViewController];
  catalogViewController = [rootViewController catalogViewController];

  return catalogViewController;
}

- (void)browserController:(id)controller setCatalogViewController:(id)viewController
{
  browserController = self->_browserController;
  viewControllerCopy = viewController;
  rootViewController = [(BrowserController *)browserController rootViewController];
  [rootViewController setCatalogViewController:viewControllerCopy];
}

- (void)browserControllerLayOutCatalogView:(id)view
{
  rootViewController = [(BrowserController *)self->_browserController rootViewController];
  [rootViewController layOutCatalogView];
}

- (double)browserControllerCatalogViewPopoverWidth:(id)width
{
  rootViewController = [(BrowserController *)self->_browserController rootViewController];
  contentContainerView = [rootViewController contentContainerView];
  [contentContainerView bounds];
  Width = CGRectGetWidth(v9);
  [rootViewController horizontalMarginForCatalogViewInPopover];
  v7 = Width - v6;

  return v7;
}

- (id)browserControllerNavigationBar:(id)bar
{
  rootViewController = [(BrowserController *)self->_browserController rootViewController];
  topBar = [rootViewController topBar];

  return topBar;
}

- (BOOL)browserControllerShouldUpdateSnapshotForActiveTab:(id)tab
{
  tabCollectionViewProvider = [(BrowserController *)self->_browserController tabCollectionViewProvider];
  tabThumbnailCollectionView = [tabCollectionViewProvider tabThumbnailCollectionView];
  v5 = [tabThumbnailCollectionView presentationState] == 1 || objc_msgSend(tabThumbnailCollectionView, "presentationState") == 2;

  return v5;
}

- (id)browserController:(id)controller tabSnapshotContentProviderForTabDocument:(id)document
{
  documentCopy = document;
  rootViewController = [controller rootViewController];
  v7 = [rootViewController snapshotContentProviderForTab:documentCopy];

  return v7;
}

- (void)browserControllerContentContainerViewFrameDidChange:(id)change
{
  rootViewController = [(BrowserController *)self->_browserController rootViewController];
  [rootViewController updateViewsAfterContentContainerViewBoundsChange];
}

- (void)browserControllerStartPageUpdatePolicyDidChange:(id)change
{
  rootViewController = [(BrowserController *)self->_browserController rootViewController];
  catalogViewController = [rootViewController catalogViewController];
  [catalogViewController startPageUpdatePolicyDidChange];
}

- (BOOL)browserControllerShouldIncreaseTopPaddingForStartPage:(id)page
{
  rootViewController = [(BrowserController *)self->_browserController rootViewController];
  capsuleCollectionViewLayout = [rootViewController capsuleCollectionViewLayout];

  if (capsuleCollectionViewLayout && [capsuleCollectionViewLayout integerValue] == 2)
  {
    v6 = 1;
  }

  else
  {
    rootViewController2 = [(BrowserController *)self->_browserController rootViewController];
    if ([rootViewController2 usingUnifiedBar])
    {
      v6 = [(BrowserController *)self->_browserController tabBarDisplayMode]== 2;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)browserController:(id)controller updateViewForActiveTabDocument:(id)document
{
  documentCopy = document;
  rootViewController = [controller rootViewController];
  [rootViewController updateViewForTabDocument:documentCopy];
}

- (id)browserControllerTabBarManager:(id)manager
{
  rootViewController = [manager rootViewController];
  tabBarManager = [rootViewController tabBarManager];

  return tabBarManager;
}

- (id)browserControllerTabHoverPreview:(id)preview
{
  rootViewController = [preview rootViewController];
  tabHoverPreview = [rootViewController tabHoverPreview];

  return tabHoverPreview;
}

- (void)browserControllerShouldUpdateUnifiedBarVisibility:(id)visibility
{
  rootViewController = [visibility rootViewController];
  [rootViewController updateUnifiedBarVisibility];
}

- (id)browserControllerFocusItemContainer:(id)container
{
  rootViewController = [container rootViewController];
  view = [rootViewController view];

  return view;
}

- (id)browserControllerPreferredFocusEnvironments:(id)environments
{
  v6[1] = *MEMORY[0x277D85DE8];
  rootViewController = [environments rootViewController];
  v6[0] = rootViewController;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)browserControllerUpdateInactiveAudibleTabs:(id)tabs
{
  tabController = [tabs tabController];
  activeTabDocument = [tabController activeTabDocument];
  [activeTabDocument updateGlobalMediaStateIcon];
}

- (id)createTabOverviewForBrowserController:(id)controller
{
  rootViewController = [controller rootViewController];
  setUpTabSwitcherViewController = [rootViewController setUpTabSwitcherViewController];

  return setUpTabSwitcherViewController;
}

- (void)browserController:(id)controller didChangeFromFavoritesState:(int64_t)state
{
  rootViewController = [controller rootViewController];
  [rootViewController browserControllerDidChangeFavoritesState];
}

- (void)browserController:(id)controller didChangeReaderVisibilityForTabDocument:(id)document
{
  rootViewController = [controller rootViewController];
  [rootViewController updateCapsuleMinimizationStyle];
}

- (BOOL)browserControllerIsFullscreen:(id)fullscreen
{
  fullscreenCopy = fullscreen;
  splitViewController = self->_splitViewController;
  if (splitViewController)
  {
    rootViewController = splitViewController;
  }

  else
  {
    rootViewController = [(BrowserController *)self->_browserController rootViewController];
  }

  v7 = rootViewController;
  view = [(BrowserSplitViewController *)rootViewController view];
  if ([view _sf_isFullScreenWidth])
  {
    _sf_isFullScreenHeight = [view _sf_isFullScreenHeight];
  }

  else
  {
    _sf_isFullScreenHeight = 0;
  }

  return _sf_isFullScreenHeight;
}

- (void)safariWindow:(id)window statusBarChangedFromHeight:(double)height toHeight:(double)toHeight
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    heightCopy = height;
    v15 = 2048;
    toHeightCopy = toHeight;
    _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Status bar height changed from %.f to %.f", buf, 0x16u);
  }

  tabController = [(BrowserController *)self->_browserController tabController];
  activeTabDocument = [tabController activeTabDocument];
  webViewIsFullscreen = [activeTabDocument webViewIsFullscreen];

  if (webViewIsFullscreen)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __87__BrowserControllerDefaultUIDelegate_safariWindow_statusBarChangedFromHeight_toHeight___block_invoke;
    v12[3] = &unk_2781D4D40;
    v12[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v12];
  }

  else
  {
    [(BrowserController *)self->_browserController statusBarHeightChanged];
  }
}

- (void)_windowDidResignKeyWindow:(id)window
{
  tabController = [(BrowserController *)self->_browserController tabController];
  activeTabDocument = [tabController activeTabDocument];
  webViewIsFullscreen = [activeTabDocument webViewIsFullscreen];

  if (webViewIsFullscreen)
  {
    browserController = self->_browserController;

    [(BrowserController *)browserController cancelFavorites];
  }
}

- (void)_setUpAutomationOverlay
{
  v3 = [AutomationOverlayWindow alloc];
  windowScene = [(MobileSafariWindow *)self->_window windowScene];
  v5 = [(AutomationOverlayWindow *)v3 initWithWindowScene:windowScene];
  windowForAutomationOverlay = self->_windowForAutomationOverlay;
  self->_windowForAutomationOverlay = v5;

  v7 = [[AutomationOverlayViewController alloc] initWithDelegate:self];
  [(AutomationOverlayWindow *)self->_windowForAutomationOverlay setRootViewController:v7];
  [(AutomationOverlayWindow *)self->_windowForAutomationOverlay setAutomationWindowDelegate:v7];
  [(AutomationOverlayWindow *)self->_windowForAutomationOverlay makeKeyAndVisible];
}

- (void)_tearDownAutomationOverlay
{
  [(AutomationOverlayWindow *)self->_windowForAutomationOverlay setHidden:1];
  windowForAutomationOverlay = self->_windowForAutomationOverlay;
  self->_windowForAutomationOverlay = 0;
}

- (BOOL)automationOverlayControllerShouldAllowUserInteraction:(id)interaction
{
  v3 = +[Application sharedApplication];
  automationController = [v3 automationController];
  automationSession = [automationController automationSession];

  if (automationSession)
  {
    isSimulatingUserInteraction = [automationSession isSimulatingUserInteraction];
  }

  else
  {
    isSimulatingUserInteraction = 0;
  }

  return isSimulatingUserInteraction;
}

- (void)browserController:(id)controller animateSafariIconLinkFromPoint:(CGPoint)point inView:(id)view withCompletionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  handlerCopy = handler;
  controllerCopy = controller;
  if (objc_opt_respondsToSelector() & 1) != 0 && ([viewCopy wantsSmallLinkIcon])
  {
    v13 = SFSmallSafariIconLinkImage();
  }

  else
  {
    v13 = _SFSafariIconLinkImage();
  }

  v14 = v13;
  [v13 size];
  -[BrowserControllerDefaultUIDelegate _browserController:animateLinkImage:fromRect:inView:toBarItem:withCompletion:](self, "_browserController:animateLinkImage:fromRect:inView:toBarItem:withCompletion:", controllerCopy, [v14 CGImage], viewCopy, 3, handlerCopy, floor(x - v15 * 0.5), floor(y - v16 * 0.5), v15, v16);
}

- (void)_browserController:(id)controller animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item withCompletion:(id)completion
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  controllerCopy = controller;
  viewCopy = view;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__BrowserControllerDefaultUIDelegate__browserController_animateLinkImage_fromRect_inView_toBarItem_withCompletion___block_invoke;
  aBlock[3] = &unk_2781D4D90;
  v18 = completionCopy;
  v51 = v18;
  v19 = _Block_copy(aBlock);
  [controllerCopy showBars];
  rootViewController = [controllerCopy rootViewController];
  if (item != 3 || ([controllerCopy sidebarUIProxy], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isShowingSidebar"), v21, !v22))
  {
    CGImageRetain(image);
    objc_initWeak(&location, controllerCopy);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __115__BrowserControllerDefaultUIDelegate__browserController_animateLinkImage_fromRect_inView_toBarItem_withCompletion___block_invoke_3;
    v42[3] = &unk_2781D8598;
    objc_copyWeak(v45, &location);
    v45[1] = item;
    v45[2] = image;
    v45[3] = *&x;
    v45[4] = *&y;
    v45[5] = *&width;
    v45[6] = *&height;
    v43 = viewCopy;
    v44 = v19;
    v34 = _Block_copy(v42);
    tabBarManager = [controllerCopy tabBarManager];
    inlineTabBar = [tabBarManager inlineTabBar];
    if (inlineTabBar)
    {
      dynamicBarAnimator = [rootViewController dynamicBarAnimator];
      isInSteadyState = [dynamicBarAnimator isInSteadyState];

      if ((isInSteadyState & 1) == 0)
      {
        [controllerCopy setAnimationPendingDynamicBarAnimatorSteadyState:v34];
LABEL_9:

        objc_destroyWeak(v45);
        objc_destroyWeak(&location);
        goto LABEL_10;
      }
    }

    else
    {
    }

    view = [rootViewController view];
    [view layoutIfNeeded];

    v34[2](v34);
    goto LABEL_9;
  }

  sidebarUIProxy = [controllerCopy sidebarUIProxy];
  leadingSidebarButtonItem = [sidebarUIProxy leadingSidebarButtonItem];
  customView = [leadingSidebarButtonItem customView];

  [controllerCopy beginIgnoringUserInteraction:@"animateLinkImage"];
  v26 = MEMORY[0x277D75D18];
  [customView bounds];
  v40 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __115__BrowserControllerDefaultUIDelegate__browserController_animateLinkImage_fromRect_inView_toBarItem_withCompletion___block_invoke_2;
  v47[3] = &unk_2781D5D28;
  v49 = v19;
  v48 = controllerCopy;
  [v26 _sf_animateLinkImage:image withAnimation:1 fromRect:viewCopy inView:customView toRect:0 inView:v47 afterImageDisappearsBlock:x afterDestinationLayerBouncesBlock:{y, width, height, v40, v29, v31, v33}];

LABEL_10:
}

uint64_t __115__BrowserControllerDefaultUIDelegate__browserController_animateLinkImage_fromRect_inView_toBarItem_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __115__BrowserControllerDefaultUIDelegate__browserController_animateLinkImage_fromRect_inView_toBarItem_withCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 endIgnoringUserInteraction:@"animateLinkImage"];
}

void __115__BrowserControllerDefaultUIDelegate__browserController_animateLinkImage_fromRect_inView_toBarItem_withCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained barManager];
    v5 = *(a1 + 56);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __115__BrowserControllerDefaultUIDelegate__browserController_animateLinkImage_fromRect_inView_toBarItem_withCompletion___block_invoke_4;
    v9[3] = &unk_2781D8570;
    v6 = v3;
    v7 = *(a1 + 64);
    v10 = v6;
    v13 = v7;
    v8 = *(a1 + 88);
    v14 = *(a1 + 72);
    v15 = v8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v4 performWithRegistrationContainingItem:v5 block:v9];

    CGImageRelease(*(a1 + 64));
  }
}

void __115__BrowserControllerDefaultUIDelegate__browserController_animateLinkImage_fromRect_inView_toBarItem_withCompletion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) beginIgnoringUserInteraction:@"animateLinkImage"];
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __115__BrowserControllerDefaultUIDelegate__browserController_animateLinkImage_fromRect_inView_toBarItem_withCompletion___block_invoke_5;
    v9[3] = &unk_2781D5D28;
    v8 = *(a1 + 56);
    v11 = *(a1 + 48);
    v10 = *(a1 + 32);
    [v6 animateLinkImage:v8 fromRect:v7 inView:a2 toBarItem:v9 afterDestinationLayerBouncesBlock:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  }
}

uint64_t __115__BrowserControllerDefaultUIDelegate__browserController_animateLinkImage_fromRect_inView_toBarItem_withCompletion___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 endIgnoringUserInteraction:@"animateLinkImage"];
}

- (void)automationOverlayController:(id)controller didChangeAllowsUserInteraction:(BOOL)interaction
{
  windowForAutomationOverlay = self->_windowForAutomationOverlay;
  if (interaction)
  {
    [windowForAutomationOverlay setHidden:1];
    windowForAutomationOverlay = self->_window;
  }

  [windowForAutomationOverlay makeKeyAndVisible];
}

- (void)automationOverlayControllerDidDisableAutomation:(id)automation
{
  v4 = +[Application sharedApplication];
  automationController = [v4 automationController];
  [automationController setAllowsRemoteAutomation:0];
}

- (void)automationOverlayControllerDidCancelAutomation:(id)automation
{
  v4 = +[Application sharedApplication];
  automationController = [v4 automationController];
  [automationController terminateSession];
}

@end