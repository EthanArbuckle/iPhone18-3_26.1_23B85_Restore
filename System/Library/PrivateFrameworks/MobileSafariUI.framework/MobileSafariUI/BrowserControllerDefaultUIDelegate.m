@interface BrowserControllerDefaultUIDelegate
- (BOOL)automationOverlayControllerShouldAllowUserInteraction:(id)a3;
- (BOOL)browserControllerIsFullscreen:(id)a3;
- (BOOL)browserControllerShouldIncreaseTopPaddingForStartPage:(id)a3;
- (BOOL)browserControllerShouldUpdateSnapshotForActiveTab:(id)a3;
- (BrowserControllerDefaultUIDelegate)initWithBrowserController:(id)a3;
- (CGPoint)browserControllerWindowLastTapLocation:(id)a3;
- (CGRect)browserControllerWindowFrame:(id)a3;
- (double)browserControllerCatalogViewPopoverWidth:(id)a3;
- (double)browserControllerStatusBarWidth:(id)a3;
- (id)browserController:(id)a3 tabSnapshotContentProviderForTabDocument:(id)a4;
- (id)browserControllerCatalogViewController:(id)a3;
- (id)browserControllerContentContainerView:(id)a3;
- (id)browserControllerFocusItemContainer:(id)a3;
- (id)browserControllerNavigationBar:(id)a3;
- (id)browserControllerPreferredFocusEnvironments:(id)a3;
- (id)browserControllerTabBarManager:(id)a3;
- (id)browserControllerTabContentContainerView:(id)a3;
- (id)browserControllerTabHoverPreview:(id)a3;
- (id)createTabOverviewForBrowserController:(id)a3;
- (id)sidebarUIProxyForBrowserController:(id)a3;
- (void)_browserController:(id)a3 animateLinkImage:(CGImage *)a4 fromRect:(CGRect)a5 inView:(id)a6 toBarItem:(int64_t)a7 withCompletion:(id)a8;
- (void)_setUpAutomationOverlay;
- (void)_tearDownAutomationOverlay;
- (void)_windowDidResignKeyWindow:(id)a3;
- (void)automationOverlayController:(id)a3 didChangeAllowsUserInteraction:(BOOL)a4;
- (void)automationOverlayControllerDidCancelAutomation:(id)a3;
- (void)automationOverlayControllerDidDisableAutomation:(id)a3;
- (void)browserController:(id)a3 animateSafariIconLinkFromPoint:(CGPoint)a4 inView:(id)a5 withCompletionHandler:(id)a6;
- (void)browserController:(id)a3 didChangeFromFavoritesState:(int64_t)a4;
- (void)browserController:(id)a3 didChangeReaderVisibilityForTabDocument:(id)a4;
- (void)browserController:(id)a3 didDisconnectFromScene:(id)a4;
- (void)browserController:(id)a3 scrollViewDidScroll:(id)a4;
- (void)browserController:(id)a3 setCatalogViewController:(id)a4;
- (void)browserController:(id)a3 updateViewForActiveTabDocument:(id)a4;
- (void)browserController:(id)a3 willConnectToScene:(id)a4 session:(id)a5 options:(id)a6;
- (void)browserControllerContentContainerViewFrameDidChange:(id)a3;
- (void)browserControllerDidEndObfuscating:(id)a3;
- (void)browserControllerLayOutCatalogView:(id)a3;
- (void)browserControllerShouldUpdateUnifiedBarVisibility:(id)a3;
- (void)browserControllerStartPageUpdatePolicyDidChange:(id)a3;
- (void)browserControllerUpdateInactiveAudibleTabs:(id)a3;
- (void)browserControllerWillBeginObfuscating:(id)a3;
- (void)safariWindow:(id)a3 statusBarChangedFromHeight:(double)a4 toHeight:(double)a5;
- (void)updateTabViewPinchRecognizerForBrowserController:(id)a3;
@end

@implementation BrowserControllerDefaultUIDelegate

- (BrowserControllerDefaultUIDelegate)initWithBrowserController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = BrowserControllerDefaultUIDelegate;
  v6 = [(BrowserControllerDefaultUIDelegate *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_browserController, a3);
    v8 = v7;
  }

  return v7;
}

- (void)browserController:(id)a3 willConnectToScene:(id)a4 session:(id)a5 options:(id)a6
{
  v23 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  window = self->_window;
  if (window)
  {
    [(MobileSafariWindow *)window setWindowScene:v10];
    [(MobileSafariWindow *)self->_window makeKeyAndVisible];
  }

  else
  {
    v14 = [[MobileSafariWindow alloc] initWithWindowScene:v10];
    v15 = self->_window;
    self->_window = v14;

    [(MobileSafariWindow *)self->_window setSafariWindowDelegate:self];
    v16 = [MEMORY[0x277D75348] sf_safariAccentColor];
    [(MobileSafariWindow *)self->_window setTintColor:v16];

    [(MobileSafariWindow *)self->_window setOpaque:0];
    v17 = [(MobileSafariWindow *)self->_window layer];
    [v17 setHitTestsAsOpaque:1];

    v18 = [v23 rootViewController];
    if ([MEMORY[0x277D49A08] isSolariumEnabled])
    {
      v19 = [[BrowserSplitViewController alloc] initWithBrowserController:v23];
      splitViewController = self->_splitViewController;
      self->_splitViewController = v19;

      v21 = self->_splitViewController;
      v18 = v21;
    }

    [(MobileSafariWindow *)self->_window setRootViewController:v18];
    [(MobileSafariWindow *)self->_window makeKeyAndVisible];
    v22 = [MEMORY[0x277CCAB98] defaultCenter];
    [v22 addObserver:self selector:sel__windowDidResignKeyWindow_ name:*MEMORY[0x277D77298] object:self->_window];
  }

  if ([(BrowserController *)self->_browserController isControlledByAutomation])
  {
    [(BrowserControllerDefaultUIDelegate *)self _setUpAutomationOverlay];
  }
}

- (void)browserController:(id)a3 didDisconnectFromScene:(id)a4
{
  [(MobileSafariWindow *)self->_window setWindowScene:0, a4];
  if ([(BrowserController *)self->_browserController isControlledByAutomation])
  {

    [(BrowserControllerDefaultUIDelegate *)self _tearDownAutomationOverlay];
  }
}

- (void)browserControllerWillBeginObfuscating:(id)a3
{
  if (!self->_obfuscationWindow)
  {
    v5 = [PrivateBrowsingObfuscationWindow showPrivateBrowsingObfuscationWindowForApplicationWindow:self->_window];
    obfuscationWindow = self->_obfuscationWindow;
    self->_obfuscationWindow = v5;
  }
}

- (void)browserControllerDidEndObfuscating:(id)a3
{
  obfuscationWindow = self->_obfuscationWindow;
  if (obfuscationWindow)
  {
    [(PrivateBrowsingObfuscationWindow *)obfuscationWindow setHidden:1];
    v5 = self->_obfuscationWindow;
    self->_obfuscationWindow = 0;
  }
}

- (id)sidebarUIProxyForBrowserController:(id)a3
{
  splitViewController = self->_splitViewController;
  if (splitViewController)
  {
    v4 = splitViewController;
  }

  else
  {
    v4 = [(BrowserController *)self->_browserController rootViewController];
  }

  return v4;
}

- (CGRect)browserControllerWindowFrame:(id)a3
{
  [(MobileSafariWindow *)self->_window frame];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)browserControllerStatusBarWidth:(id)a3
{
  [(MobileSafariWindow *)self->_window bounds];

  return CGRectGetWidth(*&v3);
}

- (CGPoint)browserControllerWindowLastTapLocation:(id)a3
{
  [(MobileSafariWindow *)self->_window lastTapLocation];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)browserController:(id)a3 scrollViewDidScroll:(id)a4
{
  browserController = self->_browserController;
  v5 = a4;
  v6 = [(BrowserController *)browserController rootViewController];
  [v6 scrollViewDidScroll:v5];
}

- (id)browserControllerContentContainerView:(id)a3
{
  v3 = [(BrowserController *)self->_browserController rootViewController];
  v4 = [v3 contentContainerView];

  return v4;
}

- (id)browserControllerTabContentContainerView:(id)a3
{
  v3 = [(BrowserController *)self->_browserController rootViewController];
  v4 = [v3 contentContainerView];

  return v4;
}

- (void)updateTabViewPinchRecognizerForBrowserController:(id)a3
{
  v3 = [(BrowserController *)self->_browserController rootViewController];
  [v3 updateTabViewPinchRecognizer];
}

- (id)browserControllerCatalogViewController:(id)a3
{
  v3 = [(BrowserController *)self->_browserController rootViewController];
  v4 = [v3 catalogViewController];

  return v4;
}

- (void)browserController:(id)a3 setCatalogViewController:(id)a4
{
  browserController = self->_browserController;
  v5 = a4;
  v6 = [(BrowserController *)browserController rootViewController];
  [v6 setCatalogViewController:v5];
}

- (void)browserControllerLayOutCatalogView:(id)a3
{
  v3 = [(BrowserController *)self->_browserController rootViewController];
  [v3 layOutCatalogView];
}

- (double)browserControllerCatalogViewPopoverWidth:(id)a3
{
  v3 = [(BrowserController *)self->_browserController rootViewController];
  v4 = [v3 contentContainerView];
  [v4 bounds];
  Width = CGRectGetWidth(v9);
  [v3 horizontalMarginForCatalogViewInPopover];
  v7 = Width - v6;

  return v7;
}

- (id)browserControllerNavigationBar:(id)a3
{
  v3 = [(BrowserController *)self->_browserController rootViewController];
  v4 = [v3 topBar];

  return v4;
}

- (BOOL)browserControllerShouldUpdateSnapshotForActiveTab:(id)a3
{
  v3 = [(BrowserController *)self->_browserController tabCollectionViewProvider];
  v4 = [v3 tabThumbnailCollectionView];
  v5 = [v4 presentationState] == 1 || objc_msgSend(v4, "presentationState") == 2;

  return v5;
}

- (id)browserController:(id)a3 tabSnapshotContentProviderForTabDocument:(id)a4
{
  v5 = a4;
  v6 = [a3 rootViewController];
  v7 = [v6 snapshotContentProviderForTab:v5];

  return v7;
}

- (void)browserControllerContentContainerViewFrameDidChange:(id)a3
{
  v3 = [(BrowserController *)self->_browserController rootViewController];
  [v3 updateViewsAfterContentContainerViewBoundsChange];
}

- (void)browserControllerStartPageUpdatePolicyDidChange:(id)a3
{
  v4 = [(BrowserController *)self->_browserController rootViewController];
  v3 = [v4 catalogViewController];
  [v3 startPageUpdatePolicyDidChange];
}

- (BOOL)browserControllerShouldIncreaseTopPaddingForStartPage:(id)a3
{
  v4 = [(BrowserController *)self->_browserController rootViewController];
  v5 = [v4 capsuleCollectionViewLayout];

  if (v5 && [v5 integerValue] == 2)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(BrowserController *)self->_browserController rootViewController];
    if ([v7 usingUnifiedBar])
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

- (void)browserController:(id)a3 updateViewForActiveTabDocument:(id)a4
{
  v5 = a4;
  v6 = [a3 rootViewController];
  [v6 updateViewForTabDocument:v5];
}

- (id)browserControllerTabBarManager:(id)a3
{
  v3 = [a3 rootViewController];
  v4 = [v3 tabBarManager];

  return v4;
}

- (id)browserControllerTabHoverPreview:(id)a3
{
  v3 = [a3 rootViewController];
  v4 = [v3 tabHoverPreview];

  return v4;
}

- (void)browserControllerShouldUpdateUnifiedBarVisibility:(id)a3
{
  v3 = [a3 rootViewController];
  [v3 updateUnifiedBarVisibility];
}

- (id)browserControllerFocusItemContainer:(id)a3
{
  v3 = [a3 rootViewController];
  v4 = [v3 view];

  return v4;
}

- (id)browserControllerPreferredFocusEnvironments:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = [a3 rootViewController];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

- (void)browserControllerUpdateInactiveAudibleTabs:(id)a3
{
  v4 = [a3 tabController];
  v3 = [v4 activeTabDocument];
  [v3 updateGlobalMediaStateIcon];
}

- (id)createTabOverviewForBrowserController:(id)a3
{
  v3 = [a3 rootViewController];
  v4 = [v3 setUpTabSwitcherViewController];

  return v4;
}

- (void)browserController:(id)a3 didChangeFromFavoritesState:(int64_t)a4
{
  v4 = [a3 rootViewController];
  [v4 browserControllerDidChangeFavoritesState];
}

- (void)browserController:(id)a3 didChangeReaderVisibilityForTabDocument:(id)a4
{
  v4 = [a3 rootViewController];
  [v4 updateCapsuleMinimizationStyle];
}

- (BOOL)browserControllerIsFullscreen:(id)a3
{
  v4 = a3;
  splitViewController = self->_splitViewController;
  if (splitViewController)
  {
    v6 = splitViewController;
  }

  else
  {
    v6 = [(BrowserController *)self->_browserController rootViewController];
  }

  v7 = v6;
  v8 = [(BrowserSplitViewController *)v6 view];
  if ([v8 _sf_isFullScreenWidth])
  {
    v9 = [v8 _sf_isFullScreenHeight];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)safariWindow:(id)a3 statusBarChangedFromHeight:(double)a4 toHeight:(double)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = WBS_LOG_CHANNEL_PREFIXUserInteraction();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v14 = a4;
    v15 = 2048;
    v16 = a5;
    _os_log_impl(&dword_215819000, v8, OS_LOG_TYPE_DEFAULT, "Status bar height changed from %.f to %.f", buf, 0x16u);
  }

  v9 = [(BrowserController *)self->_browserController tabController];
  v10 = [v9 activeTabDocument];
  v11 = [v10 webViewIsFullscreen];

  if (v11)
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

- (void)_windowDidResignKeyWindow:(id)a3
{
  v4 = [(BrowserController *)self->_browserController tabController];
  v5 = [v4 activeTabDocument];
  v6 = [v5 webViewIsFullscreen];

  if (v6)
  {
    browserController = self->_browserController;

    [(BrowserController *)browserController cancelFavorites];
  }
}

- (void)_setUpAutomationOverlay
{
  v3 = [AutomationOverlayWindow alloc];
  v4 = [(MobileSafariWindow *)self->_window windowScene];
  v5 = [(AutomationOverlayWindow *)v3 initWithWindowScene:v4];
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

- (BOOL)automationOverlayControllerShouldAllowUserInteraction:(id)a3
{
  v3 = +[Application sharedApplication];
  v4 = [v3 automationController];
  v5 = [v4 automationSession];

  if (v5)
  {
    v6 = [v5 isSimulatingUserInteraction];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)browserController:(id)a3 animateSafariIconLinkFromPoint:(CGPoint)a4 inView:(id)a5 withCompletionHandler:(id)a6
{
  y = a4.y;
  x = a4.x;
  v17 = a5;
  v11 = a6;
  v12 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v17 wantsSmallLinkIcon])
  {
    v13 = SFSmallSafariIconLinkImage();
  }

  else
  {
    v13 = _SFSafariIconLinkImage();
  }

  v14 = v13;
  [v13 size];
  -[BrowserControllerDefaultUIDelegate _browserController:animateLinkImage:fromRect:inView:toBarItem:withCompletion:](self, "_browserController:animateLinkImage:fromRect:inView:toBarItem:withCompletion:", v12, [v14 CGImage], v17, 3, v11, floor(x - v15 * 0.5), floor(y - v16 * 0.5), v15, v16);
}

- (void)_browserController:(id)a3 animateLinkImage:(CGImage *)a4 fromRect:(CGRect)a5 inView:(id)a6 toBarItem:(int64_t)a7 withCompletion:(id)a8
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = a3;
  v41 = a6;
  v17 = a8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__BrowserControllerDefaultUIDelegate__browserController_animateLinkImage_fromRect_inView_toBarItem_withCompletion___block_invoke;
  aBlock[3] = &unk_2781D4D90;
  v18 = v17;
  v51 = v18;
  v19 = _Block_copy(aBlock);
  [v16 showBars];
  v20 = [v16 rootViewController];
  if (a7 != 3 || ([v16 sidebarUIProxy], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isShowingSidebar"), v21, !v22))
  {
    CGImageRetain(a4);
    objc_initWeak(&location, v16);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __115__BrowserControllerDefaultUIDelegate__browserController_animateLinkImage_fromRect_inView_toBarItem_withCompletion___block_invoke_3;
    v42[3] = &unk_2781D8598;
    objc_copyWeak(v45, &location);
    v45[1] = a7;
    v45[2] = a4;
    v45[3] = *&x;
    v45[4] = *&y;
    v45[5] = *&width;
    v45[6] = *&height;
    v43 = v41;
    v44 = v19;
    v34 = _Block_copy(v42);
    v35 = [v16 tabBarManager];
    v36 = [v35 inlineTabBar];
    if (v36)
    {
      v37 = [v20 dynamicBarAnimator];
      v38 = [v37 isInSteadyState];

      if ((v38 & 1) == 0)
      {
        [v16 setAnimationPendingDynamicBarAnimatorSteadyState:v34];
LABEL_9:

        objc_destroyWeak(v45);
        objc_destroyWeak(&location);
        goto LABEL_10;
      }
    }

    else
    {
    }

    v39 = [v20 view];
    [v39 layoutIfNeeded];

    v34[2](v34);
    goto LABEL_9;
  }

  v23 = [v16 sidebarUIProxy];
  v24 = [v23 leadingSidebarButtonItem];
  v25 = [v24 customView];

  [v16 beginIgnoringUserInteraction:@"animateLinkImage"];
  v26 = MEMORY[0x277D75D18];
  [v25 bounds];
  v40 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __115__BrowserControllerDefaultUIDelegate__browserController_animateLinkImage_fromRect_inView_toBarItem_withCompletion___block_invoke_2;
  v47[3] = &unk_2781D5D28;
  v49 = v19;
  v48 = v16;
  [v26 _sf_animateLinkImage:a4 withAnimation:1 fromRect:v41 inView:v25 toRect:0 inView:v47 afterImageDisappearsBlock:x afterDestinationLayerBouncesBlock:{y, width, height, v40, v29, v31, v33}];

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

- (void)automationOverlayController:(id)a3 didChangeAllowsUserInteraction:(BOOL)a4
{
  windowForAutomationOverlay = self->_windowForAutomationOverlay;
  if (a4)
  {
    [windowForAutomationOverlay setHidden:1];
    windowForAutomationOverlay = self->_window;
  }

  [windowForAutomationOverlay makeKeyAndVisible];
}

- (void)automationOverlayControllerDidDisableAutomation:(id)a3
{
  v4 = +[Application sharedApplication];
  v3 = [v4 automationController];
  [v3 setAllowsRemoteAutomation:0];
}

- (void)automationOverlayControllerDidCancelAutomation:(id)a3
{
  v4 = +[Application sharedApplication];
  v3 = [v4 automationController];
  [v3 terminateSession];
}

@end