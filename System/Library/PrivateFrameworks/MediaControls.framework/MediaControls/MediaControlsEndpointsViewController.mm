@interface MediaControlsEndpointsViewController
+ (BOOL)_shouldTransitionEarlyOnSystemRoute;
- (AVExternalPlaybackMonitor)externalPlaybackMonitor;
- (BOOL)_isSelectedRouteInRoutes;
- (BOOL)canDismissPresentedContent;
- (BOOL)mediaControlsCollectionViewController:(id)controller canSelectItemAtIndex:(int64_t)index;
- (MediaControlsEndpointsViewController)init;
- (double)preferredExpandedContentHeight;
- (double)preferredItemHeight;
- (double)preferredItemHeightGivenWidth:(double)width;
- (id)mediaControlsCollectionViewController:(id)controller viewControllerForItemAtIndex:(int64_t)index;
- (int64_t)defaultSelectedItemIndexForCollectionViewController:(id)controller;
- (int64_t)numberOfItemsInCollectionViewController:(id)controller;
- (void)_assignRouteViewControllerToSelectedPanelViewController;
- (void)_routeDidChangeNotification:(id)notification;
- (void)_selectActiveSystemRouteIfNeeded;
- (void)_setSelectedRoute:(id)route isUserSelected:(BOOL)selected animated:(BOOL)animated;
- (void)_setupEndpointsManager;
- (void)_setupRoutingViewController;
- (void)_supportedModesForSelectedRoute:(unint64_t *)route selectedMode:(int64_t *)mode;
- (void)_transitionToVisible:(BOOL)visible;
- (void)_transitionToVisibleIfNeeded;
- (void)_updateDiscoveryMode;
- (void)_updateEndpointRouteForOutputDeviceDataSource:(id)source;
- (void)_updateModesForSelectedPlatterViewController;
- (void)_updateSupportedModesForSelectedPlatterViewController;
- (void)dealloc;
- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion;
- (void)endUpdates;
- (void)endpointsManager:(id)manager activeSystemRouteDidChange:(id)change;
- (void)endpointsManager:(id)manager defersRoutesReplacement:(id)replacement;
- (void)mediaControlsCollectionViewController:(id)controller didDisplayViewController:(id)viewController forItemAtIndex:(int64_t)index;
- (void)mediaControlsCollectionViewController:(id)controller didEndDisplayingViewController:(id)viewController forItemAtIndex:(int64_t)index;
- (void)mediaControlsCollectionViewController:(id)controller willDisplayViewController:(id)viewController forItemAtIndex:(int64_t)index;
- (void)mediaControlsCollectionViewController:(id)controller willSelectItemAtIndex:(int64_t)index withReason:(int64_t)reason;
- (void)platterViewController:(id)controller didPickRoute:(id)route;
- (void)platterViewController:(id)controller didToggleRoutingPicker:(BOOL)picker;
- (void)platterViewController:(id)controller willToggleRoutingPicker:(BOOL)picker;
- (void)reloadData;
- (void)setConfiguration:(id)configuration;
- (void)setDisplayMode:(int64_t)mode;
- (void)setExpandModuleBlock:(id)block;
- (void)setOnScreen:(BOOL)screen;
- (void)setRoutingContextUID:(id)d;
- (void)updateContentInsets;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MediaControlsEndpointsViewController

- (MediaControlsEndpointsViewController)init
{
  v5.receiver = self;
  v5.super_class = MediaControlsEndpointsViewController;
  v2 = [(MediaControlsCollectionViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MediaControlsEndpointsViewController *)v2 setShouldPresentUsingViewService:1];
    [(MediaControlsEndpointsViewController *)v3 setDisplayMode:1];
  }

  return v3;
}

- (void)dealloc
{
  [(MediaControlsCollectionViewController *)self setDelegate:0];
  [(MediaControlsEndpointsManager *)self->_endpointsManager setDelegate:0];
  v3.receiver = self;
  v3.super_class = MediaControlsEndpointsViewController;
  [(MediaControlsEndpointsViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MediaControlsEndpointsViewController;
  [(MediaControlsCollectionViewController *)&v3 viewDidLoad];
  [(MediaControlsCollectionViewController *)self setDataSource:self];
  [(MediaControlsCollectionViewController *)self setDelegate:self];
  [(MediaControlsEndpointsViewController *)self reloadData];
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = MediaControlsEndpointsViewController;
  [(MediaControlsCollectionViewController *)&v15 viewWillAppear:appear];
  [(MediaControlsEndpointsViewController *)self setDismissing:0];
  [(MediaControlsEndpointsViewController *)self setOnScreen:1];
  view = [(MediaControlsEndpointsViewController *)self view];
  window = [view window];

  if (window)
  {
    configuration = [(MediaControlsEndpointsViewController *)self configuration];
    style = [configuration style];

    if (style)
    {
      configuration2 = [(MediaControlsEndpointsViewController *)self configuration];
      presentingAppBundleID = [configuration2 presentingAppBundleID];
      v10 = [presentingAppBundleID isEqualToString:@"com.apple.Music"];

      if (v10)
      {
        v11 = 2;
      }

      else
      {
        configuration3 = [(MediaControlsEndpointsViewController *)self configuration];
        presentingAppBundleID2 = [configuration3 presentingAppBundleID];
        v14 = [presentingAppBundleID2 isEqualToString:@"com.apple.springboard"];

        if (v14)
        {
          v11 = 4;
        }

        else
        {
          v11 = 3;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    [MediaControlsAnalytics postAnalyticKind:v11];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = MediaControlsEndpointsViewController;
  [(MediaControlsCollectionViewController *)&v5 viewWillDisappear:?];
  [(MPAVRoutingViewController *)self->_routingViewController viewWillDisappear:disappearCopy];
  [(MediaControlsEndpointsViewController *)self setDismissing:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = MediaControlsEndpointsViewController;
  [(MediaControlsCollectionViewController *)&v6 viewDidDisappear:?];
  [(MediaControlsEndpointsViewController *)self stopPrewarming];
  [(MediaControlsEndpointsViewController *)self setDismissing:0];
  [(MediaControlsEndpointsViewController *)self setOnScreen:0];
  routingViewController = [(MediaControlsEndpointsViewController *)self routingViewController];
  [routingViewController viewDidDisappear:disappearCopy];
}

- (void)viewDidLayoutSubviews
{
  if (self->_configuration)
  {
    v2.receiver = self;
    v2.super_class = MediaControlsEndpointsViewController;
    [(MediaControlsCollectionViewController *)&v2 viewDidLayoutSubviews];
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(MPMediaControlsConfiguration *)self->_configuration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_configuration, configuration);
    routingContextUID = [(MPMediaControlsConfiguration *)self->_configuration routingContextUID];
    [(MediaControlsEndpointsViewController *)self setRoutingContextUID:routingContextUID];

    [(MediaControlsEndpointsViewController *)self _setupEndpointsManager];
    [(MediaControlsEndpointsViewController *)self _setupRoutingViewController];
  }
}

- (void)setExpandModuleBlock:(id)block
{
  if (self->_expandModuleBlock != block)
  {
    v4 = _Block_copy(block);
    expandModuleBlock = self->_expandModuleBlock;
    self->_expandModuleBlock = v4;

    viewControllerForSelectedItem = [(MediaControlsCollectionViewController *)self viewControllerForSelectedItem];
    [viewControllerForSelectedItem setExpandModuleBlock:self->_expandModuleBlock];
  }
}

- (double)preferredExpandedContentHeight
{
  view = [(MediaControlsEndpointsViewController *)self view];
  window = [view window];
  [window bounds];
  Height = CGRectGetHeight(v6);

  return Height;
}

- (BOOL)canDismissPresentedContent
{
  presentedViewController = [(MediaControlsEndpointsViewController *)self presentedViewController];
  v3 = presentedViewController != 0;

  return v3;
}

- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  presentedViewController = [(MediaControlsEndpointsViewController *)self presentedViewController];
  v8PresentedViewController = [presentedViewController presentedViewController];
  [v8PresentedViewController dismissViewControllerAnimated:animatedCopy completion:0];

  [presentedViewController dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (void)platterViewController:(id)controller didToggleRoutingPicker:(BOOL)picker
{
  routingViewController = self->_routingViewController;
  if (picker)
  {
    [(MPAVRoutingViewController *)routingViewController setDiscoveryModeOverride:&unk_1F148B100];
  }

  else
  {
    [(MPAVRoutingViewController *)routingViewController resetDisplayedRoutes];
  }
}

- (void)platterViewController:(id)controller willToggleRoutingPicker:(BOOL)picker
{
  if (picker)
  {
    [(MPAVRoutingViewController *)self->_routingViewController resetScrollPosition];
  }
}

- (void)platterViewController:(id)controller didPickRoute:(id)route
{
  controllerCopy = controller;
  style = [(MPMediaControlsConfiguration *)self->_configuration style];
  if (style == 4)
  {
    [(MediaControlsCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
    mEMORY[0x1E69AED10] = [MEMORY[0x1E69AED10] sharedAVSystemController];
    configuration = [(MediaControlsEndpointsViewController *)self configuration];
    presentingAppBundleID = [configuration presentingAppBundleID];
    [mEMORY[0x1E69AED10] setAttribute:presentingAppBundleID forKey:*MEMORY[0x1E69AE9E8] error:0];
  }

  else if (style == 1)
  {
    [(MediaControlsCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  endpointController = [controllerCopy endpointController];
  route = [endpointController route];
  if ([route isDeviceRoute])
  {
    v11 = 7;
  }

  else
  {
    v11 = 8;
  }

  [MediaControlsAnalytics postAnalyticKind:v11];
}

- (void)setRoutingContextUID:(id)d
{
  dCopy = d;
  if (![(NSString *)self->_routingContextUID isEqualToString:?])
  {
    v4 = [dCopy copy];
    routingContextUID = self->_routingContextUID;
    self->_routingContextUID = v4;

    if (self->_routingContextUID)
    {
      [(MPAVOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setRoutingContextUID:?];
    }
  }
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    self->_onScreen = screen;
    [(MediaControlsEndpointsViewController *)self _updateDiscoveryMode];
  }
}

- (AVExternalPlaybackMonitor)externalPlaybackMonitor
{
  externalPlaybackMonitor = self->_externalPlaybackMonitor;
  if (!externalPlaybackMonitor)
  {
    longFormVideoExternalPlaybackMonitor = [MEMORY[0x1E6987F98] longFormVideoExternalPlaybackMonitor];
    v5 = self->_externalPlaybackMonitor;
    self->_externalPlaybackMonitor = longFormVideoExternalPlaybackMonitor;

    externalPlaybackMonitor = self->_externalPlaybackMonitor;
  }

  return externalPlaybackMonitor;
}

- (void)updateContentInsets
{
  configuration = [(MediaControlsEndpointsViewController *)self configuration];
  style = [configuration style];

  if (style)
  {
    v13.receiver = self;
    v13.super_class = MediaControlsEndpointsViewController;
    [(MediaControlsCollectionViewController *)&v13 updateContentInsets];
  }

  else if (-[MediaControlsCollectionViewController displayMode](self, "displayMode") == 1 && ([MEMORY[0x1E69DC938] currentDevice], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, v6 == 1))
  {
    CCUIExpandedModuleEdgeInsets();
    v8 = v7;
    CCUIExpandedModuleEdgeInsets();
    v10 = v9;
    scrollView = [(MediaControlsCollectionViewController *)self scrollView];
    [scrollView setAlwaysBounceVertical:1];

    scrollView2 = [(MediaControlsCollectionViewController *)self scrollView];
    [scrollView2 setContentInset:{v8, 0.0, v10, 0.0}];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = MediaControlsEndpointsViewController;
    [(MediaControlsCollectionViewController *)&v14 updateContentInsets];
  }
}

- (void)setDisplayMode:(int64_t)mode
{
  v10.receiver = self;
  v10.super_class = MediaControlsEndpointsViewController;
  [(MediaControlsCollectionViewController *)&v10 setDisplayMode:?];
  [(MediaControlsEndpointsViewController *)self _updateDiscoveryMode];
  if (mode == 1)
  {
    configuration = [(MediaControlsEndpointsViewController *)self configuration];
    style = [configuration style];

    if (!style)
    {
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v9 = [bundleIdentifier isEqualToString:@"com.apple.springboard"];

      if (v9)
      {
        [MediaControlsAnalytics postAnalyticKind:1];
      }
    }
  }
}

- (void)reloadData
{
  v3.receiver = self;
  v3.super_class = MediaControlsEndpointsViewController;
  [(MediaControlsCollectionViewController *)&v3 reloadData];
  [(MediaControlsEndpointsViewController *)self _transitionToVisibleIfNeeded];
}

- (void)_transitionToVisible:(BOOL)visible
{
  visibleCopy = visible;
  v24 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__MediaControlsEndpointsViewController__transitionToVisible___block_invoke;
  aBlock[3] = &unk_1E7663F38;
  aBlock[4] = self;
  visibleCopy2 = visible;
  v5 = _Block_copy(aBlock);
  if ([(MediaControlsEndpointsViewController *)self _isReadyForAppearanceTransition]|| !visibleCopy)
  {
    v5[2](v5);
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    visibleViewControllers = [(MediaControlsCollectionViewController *)self visibleViewControllers];
    v7 = [visibleViewControllers countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(visibleViewControllers);
          }

          view = [*(*(&v17 + 1) + 8 * v10) view];
          [view setHidden:1];

          ++v10;
        }

        while (v8 != v10);
        v8 = [visibleViewControllers countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v8);
    }

    self->_shouldTransitionToVisibleWhenReady = 1;
    objc_initWeak(&location, self);
    v12 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__MediaControlsEndpointsViewController__transitionToVisible___block_invoke_2;
    block[3] = &unk_1E7663F60;
    objc_copyWeak(&v15, &location);
    v14 = v5;
    dispatch_after(v12, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

id __61__MediaControlsEndpointsViewController__transitionToVisible___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) visibleViewControllers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) view];
        [v7 setHidden:0];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  *(*(a1 + 32) + 1235) = 0;
  *(*(a1 + 32) + 1236) = *(a1 + 40);
  v9.receiver = *(a1 + 32);
  v9.super_class = MediaControlsEndpointsViewController;
  return objc_msgSendSuper2(&v9, sel__transitionToVisible_);
}

void __61__MediaControlsEndpointsViewController__transitionToVisible___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[1235] == 1)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (double)preferredItemHeight
{
  CCUIDefaultExpandedContentModuleWidth();

  [(MediaControlsEndpointsViewController *)self preferredItemHeightGivenWidth:?];
  return result;
}

- (double)preferredItemHeightGivenWidth:(double)width
{
  traitCollection = [(MediaControlsEndpointsViewController *)self traitCollection];
  [traitCollection displayScale];

  UIRoundToScale();
  v7 = v6;
  UIRoundToScale();
  v9 = v8;
  UIRoundToScale();
  v11 = v10;
  UIRoundToScale();
  v13 = v12;
  style = [(MPMediaControlsConfiguration *)self->_configuration style];
  if (style > 6)
  {
    return 0.0;
  }

  if (((1 << style) & 0x2F) != 0)
  {
    return v11 + v7 + v9 + v13;
  }

  routes = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
  v17 = -[MediaControlsCollectionViewController viewControllerForItemAtIndex:](self, "viewControllerForItemAtIndex:", [routes indexOfObject:self->_selectedRoute]);

  if ([v17 style] == 5)
  {
    if (v17)
    {
      effectiveHeaderView = [v17 effectiveHeaderView];
      [effectiveHeaderView sizeThatFits:{width, 1.79769313e308}];
      v9 = v19;
    }

    else
    {
      UIRoundToScale();
      v9 = v20;
    }

    UIRoundToScale();
    v11 = v21;
    UIRoundToScale();
    v13 = v22;
  }

  v15 = v11 + v7 + v9 + v13;

  return v15;
}

- (int64_t)numberOfItemsInCollectionViewController:(id)controller
{
  routes = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
  v4 = [routes count];

  return v4;
}

- (id)mediaControlsCollectionViewController:(id)controller viewControllerForItemAtIndex:(int64_t)index
{
  v5 = [controller dequeueReusableViewControllerForItemAtIndex:index];
  if (!v5)
  {
    style = [(MPMediaControlsConfiguration *)self->_configuration style];
    if (style <= 3)
    {
      if (style >= 4)
      {
        goto LABEL_6;
      }

      goto LABEL_4;
    }

    switch(style)
    {
      case 4:
        v7 = [[MRPlatterViewController alloc] initWithStyle:5];
        goto LABEL_5;
      case 6:
        externalPlaybackMonitor = [(MediaControlsEndpointsViewController *)self externalPlaybackMonitor];
        isAirPlayVideoActive = [externalPlaybackMonitor isAirPlayVideoActive];

        v11 = MCLogCategoryRouting();
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (isAirPlayVideoActive)
        {
          if (v12)
          {
            *buf = 0;
            _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "Present local transport control picker because AirPlay video is active", buf, 2u);
          }

          v13 = [(MPMediaControlsConfiguration *)self->_configuration copy];
          [v13 setStyle:5];
          [v13 setInitatorStyle:6];
          [(MediaControlsEndpointsViewController *)self setConfiguration:v13];
          v14 = [[MRPlatterViewController alloc] initWithNibName:0 bundle:0];
        }

        else
        {
          if (v12)
          {
            *v15 = 0;
            _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "Present video picker because because AirPlay video is inactive", v15, 2u);
          }

          v13 = [(MPMediaControlsConfiguration *)self->_configuration copy];
          [v13 setStyle:4];
          [v13 setInitatorStyle:6];
          [(MediaControlsEndpointsViewController *)self setConfiguration:v13];
          v14 = [[MRPlatterViewController alloc] initWithStyle:5];
        }

        v5 = v14;

        break;
      case 5:
LABEL_4:
        v7 = [[MRPlatterViewController alloc] initWithNibName:0 bundle:0];
LABEL_5:
        v5 = v7;
        break;
    }
  }

LABEL_6:

  return v5;
}

- (int64_t)defaultSelectedItemIndexForCollectionViewController:(id)controller
{
  routes = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
  v5 = [routes indexOfObject:self->_selectedRoute];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    routes2 = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
    v7 = [routes2 count];

    if (v7)
    {
      return 0;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v5;
}

- (void)mediaControlsCollectionViewController:(id)controller willDisplayViewController:(id)viewController forItemAtIndex:(int64_t)index
{
  viewControllerCopy = viewController;
  configuration = [(MediaControlsEndpointsViewController *)self configuration];
  style = [configuration style];
  if (style > 8)
  {
    v9 = @"MediaControls-<Unknown>";
  }

  else
  {
    v9 = off_1E7663FF8[style];
  }

  [viewControllerCopy setLabel:v9];

  expandModuleBlock = [(MediaControlsEndpointsViewController *)self expandModuleBlock];
  [viewControllerCopy setExpandModuleBlock:expandModuleBlock];

  routes = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];

  if (routes)
  {
    routes2 = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
    v13 = [routes2 objectAtIndex:index];

    v14 = [(MediaControlsEndpointsManager *)self->_endpointsManager endpointControllerForRoute:v13];
    [v14 setAllowsAutomaticResponseLoading:1];
    [viewControllerCopy setEndpointController:v14];
  }

  [viewControllerCopy setDelegate:self];
  if ([(MediaControlsCollectionViewController *)self selectedItemIndex]== index)
  {
    [(MediaControlsEndpointsViewController *)self _assignRouteViewControllerToSelectedPanelViewController];
    [(MediaControlsEndpointsViewController *)self _updateSupportedModesForSelectedPlatterViewController];
  }
}

- (void)mediaControlsCollectionViewController:(id)controller didDisplayViewController:(id)viewController forItemAtIndex:(int64_t)index
{
  view = [viewController view];
  [view setHidden:self->_shouldTransitionToVisibleWhenReady];
}

- (void)mediaControlsCollectionViewController:(id)controller didEndDisplayingViewController:(id)viewController forItemAtIndex:(int64_t)index
{
  viewControllerCopy = viewController;
  if ([(MediaControlsCollectionViewController *)self selectedItemIndex]== index)
  {
    self->_lastSelectedModeForActivePlatterViewController = [viewControllerCopy selectedMode];
  }

  endpointController = [viewControllerCopy endpointController];
  [endpointController setAllowsAutomaticResponseLoading:0];
}

- (BOOL)mediaControlsCollectionViewController:(id)controller canSelectItemAtIndex:(int64_t)index
{
  style = [(MPMediaControlsConfiguration *)self->_configuration style];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"WHADoNotExpandOnSelection", @"com.apple.Music", 0);
  if (style)
  {
    v8 = AppBooleanValue == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (index != 0x7FFFFFFFFFFFFFFFLL)
    {
      return 1;
    }
  }

  else
  {
    routes = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
    v11 = [routes objectAtIndex:index];

    [MEMORY[0x1E6970490] setActiveRoute:v11 reason:@"Analytics: User selected" completion:0];
  }

  dismissalBlock = [(MediaControlsCollectionViewController *)self dismissalBlock];

  if (dismissalBlock)
  {
    dismissalBlock2 = [(MediaControlsCollectionViewController *)self dismissalBlock];
    dismissalBlock2[2](dismissalBlock2, 0);
  }

  else
  {
    [(MediaControlsCollectionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  return 0;
}

- (void)mediaControlsCollectionViewController:(id)controller willSelectItemAtIndex:(int64_t)index withReason:(int64_t)reason
{
  v27 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (index != 0x7FFFFFFFFFFFFFFFLL)
  {
    routes = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
    v10 = [routes objectAtIndex:index];

    v11 = [(MediaControlsEndpointsManager *)self->_endpointsManager endpointControllerForRoute:v10];
    if (!reason)
    {
      v12 = MCLogCategoryRouting();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        routeName = [v10 routeName];
        *buf = 138543362;
        v26 = routeName;
        _os_log_impl(&dword_1A20FC000, v12, OS_LOG_TYPE_DEFAULT, "User selected platter: %{public}@", buf, 0xCu);
      }

      [MediaControlsAnalytics postAnalyticKind:6];
    }

    [(MediaControlsEndpointsViewController *)self _setSelectedRoute:v10 isUserSelected:reason == 0 animated:reason == 0];
    objc_initWeak(buf, self);
    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __111__MediaControlsEndpointsViewController_mediaControlsCollectionViewController_willSelectItemAtIndex_withReason___block_invoke;
    block[3] = &unk_1E7663F88;
    objc_copyWeak(v24, buf);
    v15 = v10;
    v23 = v15;
    v24[1] = reason;
    dispatch_group_notify(v14, MEMORY[0x1E69E96A0], block);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __111__MediaControlsEndpointsViewController_mediaControlsCollectionViewController_willSelectItemAtIndex_withReason___block_invoke_2;
    v18[3] = &unk_1E7663D80;
    objc_copyWeak(&v21, buf);
    v16 = v15;
    v19 = v16;
    v17 = v14;
    v20 = v17;
    [v11 connectAllowingAuthenticationWithCompletion:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(v24);

    objc_destroyWeak(buf);
  }
}

void __111__MediaControlsEndpointsViewController_mediaControlsCollectionViewController_willSelectItemAtIndex_withReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained[159] isEqual:*(a1 + 32)] && !*(a1 + 48))
  {
    v2 = [objc_alloc(MEMORY[0x1E69B0AE0]) initWithName:@"mediaControlsCollectionViewController:willSelectItemAtIndex:withReason:" requestID:0 reason:@"Analytics: User selected" userInitiated:1];
    [WeakRetained[157] setActiveSystemRoute:*(a1 + 32) requestDetails:v2];
    [WeakRetained didSelectEndpoint:*(a1 + 32)];
  }
}

uint64_t __111__MediaControlsEndpointsViewController_mediaControlsCollectionViewController_willSelectItemAtIndex_withReason___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v16 = WeakRetained;
    if ([*(a1 + 32) isEqual:WeakRetained[159]])
    {
      if ((a2 & 1) == 0)
      {
        v5 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
        v6 = [v5 mediaControls_localizedStringForKey:@"AIRPLAY_ERROR_TITLE" inTable:@"MediaControls" expectedFormat:0];
        v7 = MEMORY[0x1E696AEC0];
        v8 = [v5 mediaControls_localizedStringForKey:@"AIRPLAY_CONNECTION_ERROR_MESSAGE" inTable:@"MediaControls" expectedFormat:@"%@"];
        v9 = [*(a1 + 32) routeName];
        v10 = [v7 stringWithFormat:v8, v9];

        v11 = [v5 mediaControls_localizedStringForKey:@"OK_BUTTON_TITLE" inTable:@"MediaControls" expectedFormat:0];
        v12 = objc_alloc_init(MEMORY[0x1E69B14C8]);
        v13 = [objc_alloc(MEMORY[0x1E69B14C0]) initWithOptions:v12];
        [v12 setAlertHeader:v6];
        [v12 setAlertMessage:v10];
        [v12 setDefaultButtonTitle:v11];
        [v13 presentWithCompletion:0];
        v14 = [v16[157] activeSystemRoute];
        [v16 _setSelectedRoute:v14 isUserSelected:1 animated:1];
      }

      dispatch_group_leave(*(a1 + 40));
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (void)endpointsManager:(id)manager activeSystemRouteDidChange:(id)change
{
  v12 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  self->_didRetrieveActiveSystemRouteOnce = 1;
  self->_shouldReselectActiveSystemRoute = 1;
  v6 = MCLogCategoryRouting();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    presentingAppBundleID = [(MPMediaControlsConfiguration *)self->_configuration presentingAppBundleID];
    v8 = 138543618;
    v9 = changeCopy;
    v10 = 2114;
    v11 = presentingAppBundleID;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "activeSystemRouteDidChange %{public}@ : %{public}@", &v8, 0x16u);
  }

  [(MediaControlsEndpointsViewController *)self _selectActiveSystemRouteIfNeeded];
  [(MediaControlsEndpointsViewController *)self _updateEndpointRouteForOutputDeviceDataSource:changeCopy];
  [(MediaControlsEndpointsViewController *)self _transitionToVisibleIfNeeded];
}

- (void)endpointsManager:(id)manager defersRoutesReplacement:(id)replacement
{
  replacementCopy = replacement;
  if (([(MediaControlsEndpointsViewController *)self isViewLoaded]& 1) != 0)
  {
    if (self->_shouldTransitionToVisibleWhenReady || !self->_onScreen)
    {
      v7 = replacementCopy[2](replacementCopy);
      if (v7)
      {
        [(MediaControlsEndpointsViewController *)self reloadData];
        [(MediaControlsEndpointsViewController *)self _selectActiveSystemRouteIfNeeded];
      }
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __81__MediaControlsEndpointsViewController_endpointsManager_defersRoutesReplacement___block_invoke;
      v9[3] = &unk_1E7663FD8;
      v9[4] = self;
      v10 = replacementCopy;
      [(MediaControlsCollectionViewController *)self performBatchUpdates:v9];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__MediaControlsEndpointsViewController_endpointsManager_defersRoutesReplacement___block_invoke_3;
    block[3] = &unk_1E7663898;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v6 = (replacementCopy[2])(replacementCopy);
  }
}

void __81__MediaControlsEndpointsViewController_endpointsManager_defersRoutesReplacement___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = (*(*(a1 + 40) + 16))();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [v2 insertedItemIndexPaths];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) insertItemAtIndex:{objc_msgSend(*(*(&v27 + 1) + 8 * v7++), "row")}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v5);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v2 deletedItemIndexPaths];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(a1 + 32) deleteItemAtIndex:{objc_msgSend(*(*(&v23 + 1) + 8 * v12++), "row")}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [v2 updatedItemIndexPaths];
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(a1 + 32) reloadItemAtIndex:{objc_msgSend(*(*(&v19 + 1) + 8 * v17++), "row")}];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v15);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__MediaControlsEndpointsViewController_endpointsManager_defersRoutesReplacement___block_invoke_2;
  v18[3] = &unk_1E7663FB0;
  v18[4] = *(a1 + 32);
  [v2 enumerateItemMovesWithBlock:v18];
  [*(a1 + 32) _selectActiveSystemRouteIfNeeded];
}

uint64_t __81__MediaControlsEndpointsViewController_endpointsManager_defersRoutesReplacement___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 row];
  v7 = [v5 row];

  return [v4 moveItemAtIndex:v6 toIndex:v7];
}

void __81__MediaControlsEndpointsViewController_endpointsManager_defersRoutesReplacement___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[157] activeSystemRoute];
  [v1 _updateEndpointRouteForOutputDeviceDataSource:v2];
}

- (BOOL)_isSelectedRouteInRoutes
{
  selfCopy = self;
  routes = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
  LOBYTE(selfCopy) = [routes indexOfObject:selfCopy->_selectedRoute] != 0x7FFFFFFFFFFFFFFFLL;

  return selfCopy;
}

- (void)_updateDiscoveryMode
{
  if (self->_onScreen && [(MediaControlsCollectionViewController *)self displayMode]== 1 || self->_prewarming)
  {
    onScreen = 3;
  }

  else
  {
    onScreen = self->_onScreen;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInteger:onScreen];
  [(MPAVRoutingViewController *)self->_routingViewController setDiscoveryModeOverride:v4];

  endpointsManager = self->_endpointsManager;

  [(MediaControlsEndpointsManager *)endpointsManager setDiscoveryMode:onScreen];
}

- (void)_assignRouteViewControllerToSelectedPanelViewController
{
  routes = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
  v11 = -[MediaControlsCollectionViewController viewControllerForItemAtIndex:](self, "viewControllerForItemAtIndex:", [routes indexOfObject:self->_selectedRoute]);

  parentViewController = [(MPAVRoutingViewController *)self->_routingViewController parentViewController];
  v5 = parentViewController;
  if (parentViewController)
  {
    routingViewController = [parentViewController routingViewController];
    [routingViewController willMoveToParentViewController:0];
    [v5 setRoutingViewController:0];
    [routingViewController endAppearanceTransition];
  }

  routingViewController2 = [v11 routingViewController];
  if (!v11 || routingViewController2 == self->_routingViewController)
  {
    routingViewController3 = routingViewController2;
  }

  else
  {
    routingViewController3 = [v11 routingViewController];

    [routingViewController3 willMoveToParentViewController:0];
    [v11 setRoutingViewController:0];
    [routingViewController3 endAppearanceTransition];
    [v11 addChildViewController:self->_routingViewController];
    [v11 setRoutingViewController:self->_routingViewController];
    [(MPAVRoutingViewController *)self->_routingViewController didMoveToParentViewController:v11];
    style = [(MPMediaControlsConfiguration *)self->_configuration style];
    if ([v11 selectedMode] == 1 || style != 0)
    {
      [(MPAVRoutingViewController *)self->_routingViewController setDiscoveryModeOverride:&unk_1F148B100];
    }
  }
}

- (void)_updateEndpointRouteForOutputDeviceDataSource:(id)source
{
  sourceCopy = source;
  if (!sourceCopy || (v4 = [sourceCopy isDeviceRoute], sourceCopy, (v4 & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(MPAVOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setEndpointRoute:sourceCopy];
    endpointRoute = [(MPAVOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource endpointRoute];
    [(MPAVRoutingViewController *)self->_routingViewController setEndpointRoute:endpointRoute];
  }
}

- (void)_supportedModesForSelectedRoute:(unint64_t *)route selectedMode:(int64_t *)mode
{
  if ([(MPAVEndpointRoute *)self->_selectedRoute canModifyGroupMembership])
  {
    if (([(MPAVEndpointRoute *)self->_selectedRoute supportsGrouping]& 1) != 0)
    {
      isDeviceRoute = 1;
    }

    else
    {
      isDeviceRoute = [(MPAVEndpointRoute *)self->_selectedRoute isDeviceRoute];
    }
  }

  else
  {
    isDeviceRoute = 0;
  }

  configuration = [(MediaControlsEndpointsViewController *)self configuration];
  style = [configuration style];

  if (style > 3)
  {
    v11 = 2;
    lastSelectedModeForActivePlatterViewController = 1;
    v12 = 3;
    if (!isDeviceRoute)
    {
      v12 = 1;
    }

    if (style != 5)
    {
      v12 = 0;
    }

    if (style != 4)
    {
      lastSelectedModeForActivePlatterViewController = 0;
      v11 = v12;
    }
  }

  else if ((style - 1) >= 3)
  {
    if (style)
    {
      lastSelectedModeForActivePlatterViewController = 0;
      v11 = 0;
    }

    else
    {
      displayMode = [(MediaControlsCollectionViewController *)self displayMode];
      if (isDeviceRoute)
      {
        v11 = 3;
      }

      else
      {
        v11 = 1;
      }

      if (displayMode)
      {
        lastSelectedModeForActivePlatterViewController = self->_lastSelectedModeForActivePlatterViewController;
      }

      else
      {
        lastSelectedModeForActivePlatterViewController = 0;
      }
    }
  }

  else
  {
    lastSelectedModeForActivePlatterViewController = isDeviceRoute;
    v11 = 1;
    if (isDeviceRoute)
    {
      v11 = 2;
    }
  }

  if (route)
  {
    *route = v11;
  }

  if (mode)
  {
    *mode = lastSelectedModeForActivePlatterViewController;
  }
}

- (void)_updateModesForSelectedPlatterViewController
{
  viewControllerForSelectedItem = [(MediaControlsCollectionViewController *)self viewControllerForSelectedItem];
  if (viewControllerForSelectedItem)
  {
    v4 = 0;
    v5 = 0;
    [(MediaControlsEndpointsViewController *)self _supportedModesForSelectedRoute:&v5 selectedMode:&v4];
    [viewControllerForSelectedItem setSupportedModes:v5];
    [viewControllerForSelectedItem setSelectedMode:v4];
  }
}

- (void)_updateSupportedModesForSelectedPlatterViewController
{
  viewControllerForSelectedItem = [(MediaControlsCollectionViewController *)self viewControllerForSelectedItem];
  if (viewControllerForSelectedItem)
  {
    v4 = 0;
    [(MediaControlsEndpointsViewController *)self _supportedModesForSelectedRoute:&v4 selectedMode:0];
    [viewControllerForSelectedItem setSupportedModes:v4];
  }
}

- (void)_setupEndpointsManager
{
  if (self->_configuration)
  {
    v3 = [[MediaControlsEndpointsManager alloc] initWithConfiguration:self->_configuration];
    endpointsManager = self->_endpointsManager;
    self->_endpointsManager = v3;

    [(MediaControlsEndpointsManager *)self->_endpointsManager setDelegate:self];
    [(MediaControlsEndpointsViewController *)self _updateDiscoveryMode];
    [(MediaControlsEndpointsViewController *)self reloadData];
    activeSystemRoute = [(MediaControlsEndpointsManager *)self->_endpointsManager activeSystemRoute];
    [(MediaControlsEndpointsViewController *)self _setSelectedRoute:activeSystemRoute isUserSelected:0 animated:0];
  }
}

- (void)_setupRoutingViewController
{
  if (!self->_configuration)
  {
    return;
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v17 = [v3 stringWithFormat:@"%@(devices)", v5];

  v6 = objc_alloc_init(MEMORY[0x1E6970478]);
  outputDeviceRoutingDataSource = self->_outputDeviceRoutingDataSource;
  self->_outputDeviceRoutingDataSource = v6;

  if (self->_routingContextUID)
  {
    [(MPAVOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setRoutingContextUID:?];
  }

  style = [(MPMediaControlsConfiguration *)self->_configuration style];
  v9 = 0;
  v10 = 0;
  if (style > 3)
  {
    if (style != 4)
    {
      if (style == 5)
      {
        goto LABEL_17;
      }

      if (style != 6)
      {
        goto LABEL_18;
      }
    }

    v10 = 0;
    v9 = 2;
    goto LABEL_17;
  }

  if ((style - 2) < 2 || style == 0)
  {
    v9 = 0;
    v10 = 1;
  }

  else if (style != 1)
  {
    goto LABEL_18;
  }

LABEL_17:
  [(MPAVOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setSupportsMultipleSelection:v10];
  [(MPAVOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setFilterMode:v9];
LABEL_18:
  initatorStyle = [(MPMediaControlsConfiguration *)self->_configuration initatorStyle];
  if (initatorStyle <= 7 && ((0xDDu >> initatorStyle) & 1) != 0)
  {
    [(MPAVOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setInitiator:**(&unk_1E7664040 + initatorStyle)];
  }

  v13 = [objc_alloc(MEMORY[0x1E6970490]) initWithDataSource:self->_outputDeviceRoutingDataSource name:v17];
  presentingAppBundleID = [(MPMediaControlsConfiguration *)self->_configuration presentingAppBundleID];
  [v13 setPresentedBundleID:presentingAppBundleID];

  v15 = [(MPAVRoutingViewController *)[MediaControlsRoutingViewController alloc] initWithStyle:3 routingController:v13];
  routingViewController = self->_routingViewController;
  self->_routingViewController = &v15->super;

  [(MPAVRoutingViewController *)self->_routingViewController setSortByIsVideoRoute:[(MPMediaControlsConfiguration *)self->_configuration sortByIsVideoRoute]];
  [v13 setPlaybackDataSource:self->_endpointsManager];
  [(MediaControlsEndpointsViewController *)self _assignRouteViewControllerToSelectedPanelViewController];
}

- (void)endUpdates
{
  [(MediaControlsEndpointsManager *)self->_endpointsManager setDelegate:0];
  routingViewController = self->_routingViewController;

  [(MPAVRoutingViewController *)routingViewController _endUpdates];
}

- (void)_setSelectedRoute:(id)route isUserSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  routeCopy = route;
  if (([(MPAVEndpointRoute *)self->_selectedRoute isEqual:?]& 1) != 0)
  {
    goto LABEL_20;
  }

  v9 = MEMORY[0x1E696F860];
  if (self->_selectedRoute)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*v9 object:self->_selectedRoute];
  }

  objc_storeStrong(&self->_selectedRoute, route);
  if (self->_selectedRoute)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__routeDidChangeNotification_ name:*v9 object:self->_selectedRoute];
  }

  if (animatedCopy)
  {
    if (self->_didTransitionToVisible)
    {
      goto LABEL_13;
    }

    configuration = [(MediaControlsEndpointsViewController *)self configuration];
    v13 = [configuration style] == 0;

    if (selected)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 0;
    if (selected)
    {
LABEL_13:
      v14 = [(MediaControlsCollectionViewController *)self selectedItemIndex]!= 0x7FFFFFFFFFFFFFFFLL;
      v15 = !self->_shouldTransitionToVisibleWhenReady;
      goto LABEL_14;
    }
  }

  if (v13)
  {
    goto LABEL_13;
  }

  v14 = 0;
  v15 = 0;
LABEL_14:
  if (routeCopy)
  {
    routes = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
    -[MediaControlsCollectionViewController setSelectedItemIndex:animated:shouldScroll:](self, "setSelectedItemIndex:animated:shouldScroll:", [routes indexOfObject:routeCopy], v14, v15);
  }

  [(MediaControlsEndpointsViewController *)self _updateEndpointRouteForOutputDeviceDataSource:?];
  _tableView = [(MPAVRoutingViewController *)self->_routingViewController _tableView];
  [_tableView reloadData];

  [(MediaControlsEndpointsViewController *)self _assignRouteViewControllerToSelectedPanelViewController];
  [(MediaControlsEndpointsViewController *)self _updateModesForSelectedPlatterViewController];
  if (!selected)
  {
    routes2 = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
    activeSystemRoute = [(MediaControlsEndpointsManager *)self->_endpointsManager activeSystemRoute];
    v20 = [routes2 containsObject:activeSystemRoute];

    if ((v20 & 1) == 0)
    {
      self->_shouldReselectActiveSystemRoute = 1;
    }
  }

  [(MediaControlsEndpointsViewController *)self _transitionToVisibleIfNeeded];
LABEL_20:
}

- (void)_routeDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__MediaControlsEndpointsViewController__routeDidChangeNotification___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_selectActiveSystemRouteIfNeeded
{
  resolvedActiveSystemRoute = [(MediaControlsEndpointsManager *)self->_endpointsManager resolvedActiveSystemRoute];
  v4 = resolvedActiveSystemRoute;
  if (self->_shouldReselectActiveSystemRoute)
  {
    v7 = resolvedActiveSystemRoute;
    routes = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
    v6 = [routes containsObject:v7];

    v4 = v7;
    if (v6)
    {
      resolvedActiveSystemRoute = [(MediaControlsEndpointsViewController *)self setSelectedRoute:v7];
      v4 = v7;
      self->_shouldReselectActiveSystemRoute = 0;
      self->_didRetrieveActiveSystemRouteOnce = 1;
    }
  }

  MEMORY[0x1EEE66BB8](resolvedActiveSystemRoute, v4);
}

- (void)_transitionToVisibleIfNeeded
{
  if (self->_shouldTransitionToVisibleWhenReady)
  {
    [(MediaControlsEndpointsViewController *)self _transitionToVisible:1];
  }
}

+ (BOOL)_shouldTransitionEarlyOnSystemRoute
{
  if (_shouldTransitionEarlyOnSystemRoute_onceToken != -1)
  {
    +[MediaControlsEndpointsViewController _shouldTransitionEarlyOnSystemRoute];
  }

  return _shouldTransitionEarlyOnSystemRoute___shouldTransitionEarlyOnSystemRoute;
}

void __75__MediaControlsEndpointsViewController__shouldTransitionEarlyOnSystemRoute__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  memset(&v5, 0, 512);
  uname(&v5);
  v0 = [MEMORY[0x1E696AEC0] stringWithCString:v5.machine encoding:4];
  v1 = [MEMORY[0x1E696AB08] letterCharacterSet];
  v2 = [v0 stringByTrimmingCharactersInSet:v1];

  v3 = [v2 integerValue];
  if (([v0 hasPrefix:@"iPhone"] & 1) == 0)
  {
    if ([v0 hasPrefix:@"iPad"])
    {
      v4 = 4;
      goto LABEL_5;
    }

    if (![v0 hasPrefix:@"iPod"])
    {
      goto LABEL_6;
    }
  }

  v4 = 7;
LABEL_5:
  _shouldTransitionEarlyOnSystemRoute___shouldTransitionEarlyOnSystemRoute = v3 - 1 < v4;
LABEL_6:
}

@end