@interface MRUViewServiceRoutingViewController
- (MRUViewServiceRoutingViewController)init;
- (MRUViewServiceRoutingViewControllerDelegate)delegate;
- (void)dealloc;
- (void)didSelectListState:(id)state;
- (void)didSelectQuickControl:(id)control;
- (void)endpointsManager:(id)manager defersRoutesReplacement:(id)replacement;
- (void)loadView;
- (void)nowPlayingController:(id)controller didChangeQuickControlItem:(id)item;
- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeArtwork:(id)artwork;
- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeNowPlayingInfo:(id)info;
- (void)routingViewController:(id)controller didSelectRoutingViewItem:(id)item;
- (void)routingViewControllerDidUpdateItems:(id)items;
- (void)setAlertViewController:(id)controller;
- (void)setConfiguration:(id)configuration;
- (void)setOnScreen:(BOOL)screen;
- (void)setRoutingViewController:(id)controller;
- (void)setSelectedNowPlayingController:(id)controller;
- (void)setState:(int64_t)state;
- (void)setStylingProvider:(id)provider;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateCell:(id)cell forIdentifier:(id)identifier;
- (void)updateCellForIdentifier:(id)identifier;
- (void)updateDiscoveryMode;
- (void)updateMoreButtonVisibility;
- (void)updateNowPlayingControllers;
- (void)updateRoutingViewController;
- (void)updateRoutingViewControllerScrollIndicatorInsets;
- (void)updateSelectedViewController;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MRUViewServiceRoutingViewController

- (MRUViewServiceRoutingViewController)init
{
  v6.receiver = self;
  v6.super_class = MRUViewServiceRoutingViewController;
  v2 = [(MRUViewServiceRoutingViewController *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    nowPlayingControllers = v2->_nowPlayingControllers;
    v2->_nowPlayingControllers = dictionary;
  }

  return v2;
}

- (void)dealloc
{
  [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager stopDiscovery];
  v3.receiver = self;
  v3.super_class = MRUViewServiceRoutingViewController;
  [(MRUViewServiceRoutingViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = [MRUViewServiceRoutingView alloc];
  v4 = [(MRUViewServiceRoutingView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(MRUViewServiceRoutingViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v42.receiver = self;
  v42.super_class = MRUViewServiceRoutingViewController;
  [(MRUViewServiceRoutingViewController *)&v42 viewDidLoad];
  stylingProvider = self->_stylingProvider;
  view = [(MRUViewServiceRoutingViewController *)self view];
  [view setStylingProvider:stylingProvider];

  [(MPMediaControlsConfiguration *)self->_configuration preferredWidth];
  v6 = v5;
  view2 = [(MRUViewServiceRoutingViewController *)self view];
  [view2 setPreferredWidth:v6];

  if ([(MPMediaControlsConfiguration *)self->_configuration useGenericDevicesIconInHeader])
  {
    v8 = +[MRUAssetsProvider genericDevices];
  }

  else
  {
    v9 = +[MRUStringsProvider airplayTitle];
    view3 = [(MRUViewServiceRoutingViewController *)self view];
    headerView = [view3 headerView];
    [headerView setTitle:v9];

    if ([(MPMediaControlsConfiguration *)self->_configuration sortByIsVideoRoute])
    {
      +[MRUAssetsProvider airplayVideo];
    }

    else
    {
      +[MRUAssetsProvider airplay];
    }
    v8 = ;
  }

  v12 = v8;
  view4 = [(MRUViewServiceRoutingViewController *)self view];
  headerView2 = [view4 headerView];
  [headerView2 setImage:v12];

  view5 = [(MRURoutingViewController *)self->_routingViewController view];
  view6 = [(MRUViewServiceRoutingViewController *)self view];
  [view6 setContentView:view5];

  [(MRURoutingViewController *)self->_routingViewController setStylingProvider:self->_stylingProvider];
  view7 = [(MRUViewServiceRoutingViewController *)self view];
  footerView = [view7 footerView];
  button = [footerView button];
  [button addTarget:self action:sel_didSelectListState_ forControlEvents:64];

  view8 = [(MRUViewServiceRoutingViewController *)self view];
  tableView = [view8 tableView];
  [tableView setDelegate:self];

  view9 = [(MRUViewServiceRoutingViewController *)self view];
  tableView2 = [view9 tableView];
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  [tableView2 registerClass:v24 forCellReuseIdentifier:v26];

  objc_initWeak(&location, self);
  v27 = objc_alloc(MEMORY[0x1E69DD040]);
  view10 = [(MRUViewServiceRoutingViewController *)self view];
  tableView3 = [view10 tableView];
  v36 = MEMORY[0x1E69E9820];
  v37 = 3221225472;
  v38 = __50__MRUViewServiceRoutingViewController_viewDidLoad__block_invoke;
  v39 = &unk_1E7663D08;
  objc_copyWeak(&v40, &location);
  v30 = [v27 initWithTableView:tableView3 cellProvider:&v36];
  dataSource = self->_dataSource;
  self->_dataSource = v30;

  v32 = [MRUVendorSpecificDeviceManager alloc];
  v33 = [(MPMediaControlsConfiguration *)self->_configuration presentingAppBundleID:v36];
  v34 = [(MRUVendorSpecificDeviceManager *)v32 initWithAppBundleID:v33 serviceIdentifiers:MEMORY[0x1E695E0F0]];
  vendorSpecificManager = self->_vendorSpecificManager;
  self->_vendorSpecificManager = v34;

  [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager startDiscovery];
  [(MRUViewServiceRoutingViewController *)self updateNowPlayingControllers];
  objc_destroyWeak(&v40);
  objc_destroyWeak(&location);
}

id __50__MRUViewServiceRoutingViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 dequeueReusableCellWithIdentifier:v11 forIndexPath:v8];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateCell:v12 forIdentifier:v7];

  return v12;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MRUViewServiceRoutingViewController;
  [(MRUViewServiceRoutingViewController *)&v4 viewWillAppear:appear];
  [(MRUViewServiceRoutingViewController *)self setOnScreen:1];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MRUViewServiceRoutingViewController;
  [(MRUViewServiceRoutingViewController *)&v4 viewWillDisappear:disappear];
  [(MRUViewServiceRoutingViewController *)self setOnScreen:0];
}

- (void)setOnScreen:(BOOL)screen
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_onScreen != screen)
  {
    self->_onScreen = screen;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [(NSMutableDictionary *)self->_nowPlayingControllers allValues];
    v5 = [allValues copy];

    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) updateAutomaticResponseLoading];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(MRUViewServiceRoutingViewController *)self updateDiscoveryMode];
  }
}

- (void)setState:(int64_t)state
{
  view = [(MRUViewServiceRoutingViewController *)self view];
  [view setState:state];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained viewServiceRoutingViewControllerDidChangeSize:self];
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (([(MPMediaControlsConfiguration *)self->_configuration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_configuration, configuration);
    v5 = [[MediaControlsEndpointsManager alloc] initWithConfiguration:configurationCopy];
    endpointsManager = self->_endpointsManager;
    self->_endpointsManager = v5;

    [(MediaControlsEndpointsManager *)self->_endpointsManager setDelegate:self];
    if ([(MPMediaControlsConfiguration *)self->_configuration style]== 3)
    {
      self->_canShowRemoteDevices = 1;
    }

    else
    {
      v7 = MEMORY[0x1E696AAE8];
      presentingAppBundleID = [configurationCopy presentingAppBundleID];
      if ([v7 mru_isSpringBoardBundleIdentifier:presentingAppBundleID])
      {
        self->_canShowRemoteDevices = 1;
      }

      else
      {
        v9 = MEMORY[0x1E696AAE8];
        presentingAppBundleID2 = [configurationCopy presentingAppBundleID];
        self->_canShowRemoteDevices = [v9 mru_isMediaRemoteUIBundleIdentifier:presentingAppBundleID2];
      }
    }

    if ([(MPMediaControlsConfiguration *)self->_configuration style]== 3)
    {
      self->_supportsQueueHandoff = 1;
    }

    else
    {
      v11 = MEMORY[0x1E696AAE8];
      presentingAppBundleID3 = [configurationCopy presentingAppBundleID];
      if ([v11 mru_isSpringBoardBundleIdentifier:presentingAppBundleID3])
      {
        self->_supportsQueueHandoff = 1;
      }

      else
      {
        v13 = MEMORY[0x1E696AAE8];
        presentingAppBundleID4 = [configurationCopy presentingAppBundleID];
        if ([v13 mru_isHomeBundleIdentifier:presentingAppBundleID4])
        {
          self->_supportsQueueHandoff = 1;
        }

        else
        {
          v15 = MEMORY[0x1E696AAE8];
          presentingAppBundleID5 = [configurationCopy presentingAppBundleID];
          if ([v15 mru_isProximityControlBundleIdentifier:presentingAppBundleID5])
          {
            self->_supportsQueueHandoff = 1;
          }

          else
          {
            v17 = MEMORY[0x1E696AAE8];
            presentingAppBundleID6 = [configurationCopy presentingAppBundleID];
            self->_supportsQueueHandoff = [v17 mru_isMediaRemoteUIBundleIdentifier:presentingAppBundleID6];
          }
        }
      }
    }

    [configurationCopy preferredWidth];
    v20 = v19;
    viewIfLoaded = [(MRUViewServiceRoutingViewController *)self viewIfLoaded];
    [viewIfLoaded setPreferredWidth:v20];

    endpointsManager = [(MRUViewServiceRoutingViewController *)self endpointsManager];
    [endpointsManager prewarm];

    [(MRUViewServiceRoutingViewController *)self updateDiscoveryMode];
    [(MRUViewServiceRoutingViewController *)self updateNowPlayingControllers];
    [(MRUViewServiceRoutingViewController *)self updateRoutingViewController];
  }
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v7 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    viewIfLoaded = [(MRUViewServiceRoutingViewController *)self viewIfLoaded];
    [viewIfLoaded setStylingProvider:v7];

    [(MRURoutingViewController *)self->_routingViewController setStylingProvider:v7];
    providerCopy = v7;
  }
}

- (void)setRoutingViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_routingViewController != controllerCopy)
  {
    v10 = controllerCopy;
    objc_storeStrong(&self->_routingViewController, controller);
    [(MRUViewServiceRoutingViewController *)self addChildViewController:self->_routingViewController];
    if ([(MRUViewServiceRoutingViewController *)self isViewLoaded])
    {
      view = [(MRURoutingViewController *)self->_routingViewController view];
      view2 = [(MRUViewServiceRoutingViewController *)self view];
      [view2 setContentView:view];
    }

    [(MRUViewServiceRoutingViewController *)self updateRoutingViewControllerScrollIndicatorInsets];
    viewIfLoaded = [(MRUViewServiceRoutingViewController *)self viewIfLoaded];
    stylingProvider = [viewIfLoaded stylingProvider];
    [(MRURoutingViewController *)self->_routingViewController setStylingProvider:stylingProvider];

    [(MRURoutingViewController *)self->_routingViewController didMoveToParentViewController:self];
    controllerCopy = v10;
  }
}

- (void)setSelectedNowPlayingController:(id)controller
{
  controllerCopy = controller;
  if (self->_selectedNowPlayingController != controllerCopy)
  {
    v11 = controllerCopy;
    objc_storeStrong(&self->_selectedNowPlayingController, controller);
    endpointController = [(MRUNowPlayingController *)v11 endpointController];
    route = [endpointController route];
    [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setEndpointRoute:route];

    endpointController2 = [(MRUNowPlayingController *)v11 endpointController];
    route2 = [endpointController2 route];
    [(MRURoutingViewController *)self->_routingViewController setEndpointRoute:route2];

    viewIfLoaded = [(MRUViewServiceRoutingViewController *)self viewIfLoaded];
    [viewIfLoaded setNeedsLayout];

    controllerCopy = v11;
  }
}

- (void)setAlertViewController:(id)controller
{
  controllerCopy = controller;
  alertViewController = self->_alertViewController;
  if (alertViewController != controllerCopy)
  {
    v7 = alertViewController;
    objc_storeStrong(&self->_alertViewController, controller);
    [(UIViewController *)v7 willMoveToParentViewController:0];
    if (controllerCopy)
    {
      [(MRUViewServiceRoutingViewController *)self addChildViewController:controllerCopy];
      view = [(UIViewController *)controllerCopy view];
      view2 = [(MRUViewServiceRoutingViewController *)self view];
      [view2 setAlertView:view];

      view3 = [(MRUViewServiceRoutingViewController *)self view];
      [view3 layoutIfNeeded];
    }

    else
    {
      view3 = [(MRUViewServiceRoutingViewController *)self view];
      [view3 setAlertView:0];
    }

    v11 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__MRUViewServiceRoutingViewController_setAlertViewController___block_invoke;
    v17[3] = &unk_1E7663D30;
    v18 = v7;
    selfCopy = self;
    v20 = controllerCopy;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__MRUViewServiceRoutingViewController_setAlertViewController___block_invoke_2;
    v13[3] = &unk_1E7663D58;
    v14 = v18;
    v15 = v20;
    selfCopy2 = self;
    v12 = v18;
    [v11 mru_animateUsingType:0 animations:v17 completion:v13];
  }
}

void __62__MRUViewServiceRoutingViewController_setAlertViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setAlpha:0.0];

  v3 = *(a1 + 48) != 0;
  v4 = [*(a1 + 40) view];
  [v4 setShowAlertView:v3];

  v5 = [*(a1 + 40) view];
  [v5 layoutIfNeeded];

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 1016));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained viewServiceRoutingViewControllerDidChangeSize:*(a1 + 40)];
  }
}

uint64_t __62__MRUViewServiceRoutingViewController_setAlertViewController___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 didMoveToParentViewController:v4];
}

- (void)didSelectListState:(id)state
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__MRUViewServiceRoutingViewController_didSelectListState___block_invoke;
  v3[3] = &unk_1E7663898;
  v3[4] = self;
  [MEMORY[0x1E69DD250] mru_animateUsingType:0 animations:v3];
}

void __58__MRUViewServiceRoutingViewController_didSelectListState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setState:1];
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
}

- (void)didSelectQuickControl:(id)control
{
  nowPlayingControllers = self->_nowPlayingControllers;
  identifier = [control identifier];
  v5 = [(NSMutableDictionary *)nowPlayingControllers objectForKeyedSubscript:identifier];
  quickControlItem = [v5 quickControlItem];
  mainAction = [quickControlItem mainAction];

  v7 = mainAction;
  if (mainAction)
  {
    (*(mainAction + 16))(mainAction);
    v7 = mainAction;
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v8 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
  v9 = [(NSMutableDictionary *)self->_nowPlayingControllers objectForKeyedSubscript:v8];
  endpointController = [v9 endpointController];

  route = [endpointController route];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__MRUViewServiceRoutingViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v13[3] = &unk_1E7663D80;
  objc_copyWeak(&v16, &location);
  v12 = route;
  v14 = v12;
  selfCopy = self;
  [endpointController connectAllowingAuthenticationWithCompletion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __73__MRUViewServiceRoutingViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a2)
  {
    v4 = [objc_alloc(MEMORY[0x1E69B0AE0]) initWithName:@"tableView:didSelectRowAtIndexPath:" requestID:0 reason:@"User selected active system endpoint" userInitiated:1];
    v5 = [WeakRetained endpointsManager];
    [v5 setActiveSystemRoute:*(a1 + 32) requestDetails:v4];

    v6 = [WeakRetained delegate];
    [v6 viewServiceRoutingViewControllerDidDismiss:*(a1 + 40)];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E69B14C8]);
    v7 = +[MRUStringsProvider airPlayErrorTitle];
    [v4 setAlertHeader:v7];

    v8 = [*(a1 + 32) routeName];
    v9 = [MRUStringsProvider airPlayConnectionErrorMessage:v8];
    [v4 setAlertMessage:v9];

    v10 = +[MRUStringsProvider ok];
    [v4 setDefaultButtonTitle:v10];

    [v4 setShowAsTopmost:1];
    [v4 setForceModalAlertAppearance:1];
    [v4 setShowOnLockscreen:1];
    [v4 setDismissOverlaysOnLockscreen:0];
    v6 = [objc_alloc(MEMORY[0x1E69B14C0]) initWithOptions:v4];
    [v6 presentWithCompletion:0];
  }
}

- (void)endpointsManager:(id)manager defersRoutesReplacement:(id)replacement
{
  v5 = _Block_copy(replacement);
  replaceRoutes = self->_replaceRoutes;
  self->_replaceRoutes = v5;

  [(MRUViewServiceRoutingViewController *)self updateNowPlayingControllers];
}

- (void)nowPlayingController:(id)controller endpointController:(id)endpointController didChangeRoute:(id)route
{
  identifier = [controller identifier];
  [(MRUViewServiceRoutingViewController *)self updateCellForIdentifier:identifier];
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeArtwork:(id)artwork
{
  identifier = [controller identifier];
  [(MRUViewServiceRoutingViewController *)self updateCellForIdentifier:identifier];
}

- (void)nowPlayingController:(id)controller metadataController:(id)metadataController didChangeNowPlayingInfo:(id)info
{
  identifier = [controller identifier];
  [(MRUViewServiceRoutingViewController *)self updateCellForIdentifier:identifier];
}

- (void)nowPlayingController:(id)controller didChangeQuickControlItem:(id)item
{
  identifier = [controller identifier];
  [(MRUViewServiceRoutingViewController *)self updateCellForIdentifier:identifier];
}

- (void)routingViewController:(id)controller didSelectRoutingViewItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  actionIdentifier = [itemCopy actionIdentifier];
  v9 = [actionIdentifier isEqualToString:*MEMORY[0x1E696F8A8]];

  if (!v9)
  {
    if ([itemCopy type] == 6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      vendorSpecificCustomRowIdentifier = [itemCopy vendorSpecificCustomRowIdentifier];
      [WeakRetained viewServiceRoutingViewControllerDidDismiss:self withCustomRowTapped:vendorSpecificCustomRowIdentifier];
    }

    else
    {
      mainRoute = [itemCopy mainRoute];
      isGroupSession = [mainRoute isGroupSession];

      if (!isGroupSession)
      {
        goto LABEL_8;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained viewServiceRoutingViewControllerDidDismiss:self];
    }

    goto LABEL_8;
  }

  objc_initWeak(&location, self);
  objc_copyWeak(&v14, &location);
  SBSRequestPasscodeUnlockAlertUI();
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
LABEL_8:
}

void __86__MRUViewServiceRoutingViewController_routingViewController_didSelectRoutingViewItem___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2)
  {
    v4 = [MEMORY[0x1E69CDFD0] instantiateViewController];
    [v4 setFlags:1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __86__MRUViewServiceRoutingViewController_routingViewController_didSelectRoutingViewItem___block_invoke_2;
    v6[3] = &unk_1E7663DA8;
    v5 = WeakRetained;
    v7 = v5;
    [v4 setCompletion:v6];
    [v5 setAlertViewController:v4];
  }
}

void __86__MRUViewServiceRoutingViewController_routingViewController_didSelectRoutingViewItem___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MCLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = [v5 mediaRouteIdentifier];
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "%@ ShareAudio dismissed: RouteID %@, Error %@", &v10, 0x20u);
  }

  [*(a1 + 32) setAlertViewController:0];
}

- (void)routingViewControllerDidUpdateItems:(id)items
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  view = [(MRUViewServiceRoutingViewController *)self view];
  if ([view state])
  {
  }

  else
  {
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      [WeakRetained viewServiceRoutingViewControllerDidChangeSize:self];
    }
  }
}

- (void)updateNowPlayingControllers
{
  v43 = *MEMORY[0x1E69E9840];
  replaceRoutes = self->_replaceRoutes;
  if (replaceRoutes)
  {
    v4 = replaceRoutes[2](replaceRoutes, a2);
    v5 = self->_replaceRoutes;
    self->_replaceRoutes = 0;
  }

  v6 = MEMORY[0x1E695DF70];
  routes = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(routes, "count")}];

  v9 = MEMORY[0x1E695DFA8];
  allKeys = [(NSMutableDictionary *)self->_nowPlayingControllers allKeys];
  v33 = [v9 setWithArray:allKeys];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  routes2 = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
  v12 = [routes2 countByEnumeratingWithState:&v34 objects:v42 count:16];
  v32 = v8;
  if (v12)
  {
    v14 = v12;
    v15 = *v35;
    *&v13 = 138412546;
    v31 = v13;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(routes2);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        routeUID = [v17 routeUID];
        if (routeUID)
        {
          [v8 addObject:routeUID];
          [v33 removeObject:routeUID];
          v19 = [(NSMutableDictionary *)self->_nowPlayingControllers objectForKeyedSubscript:routeUID];

          if (v19)
          {
            goto LABEL_14;
          }

          v20 = [(MediaControlsEndpointsManager *)self->_endpointsManager endpointControllerForRoute:v17];
          v21 = [[MRUEndpointController alloc] initWithEndpointController:v20];
          v22 = [[MRUNowPlayingController alloc] initWithEndpointController:v21];
          [(MRUNowPlayingController *)v22 addObserver:self];
          [(NSMutableDictionary *)self->_nowPlayingControllers setObject:v22 forKeyedSubscript:routeUID];

          v8 = v32;
        }

        else
        {
          v20 = MCLogCategoryDefault();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            *buf = v31;
            v39 = v23;
            v40 = 2112;
            v41 = v17;
            _os_log_impl(&dword_1A20FC000, v20, OS_LOG_TYPE_ERROR, "%@ ignoring endpoint route with no routeUID: %@", buf, 0x16u);
          }
        }

LABEL_14:
      }

      v14 = [routes2 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v14);
  }

  nowPlayingControllers = self->_nowPlayingControllers;
  allObjects = [v33 allObjects];
  [(NSMutableDictionary *)nowPlayingControllers removeObjectsForKeys:allObjects];

  v26 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v26 appendSectionsWithIdentifiers:&unk_1F148B310];
  [v26 appendItemsWithIdentifiers:v8];
  [(UITableViewDiffableDataSource *)self->_dataSource applySnapshot:v26 animatingDifferences:1];
  [(MRUViewServiceRoutingViewController *)self updateSelectedViewController];
  [(MRUViewServiceRoutingViewController *)self updateMoreButtonVisibility];
  allValues = [(NSMutableDictionary *)self->_nowPlayingControllers allValues];
  [(MRURoutingViewController *)self->_routingViewController setNowPlayingControllers:allValues];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  view = [(MRUViewServiceRoutingViewController *)self view];
  if ([view state] == 1)
  {
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      [WeakRetained viewServiceRoutingViewControllerDidChangeSize:self];
    }
  }

  else
  {
  }
}

- (void)updateMoreButtonVisibility
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(MRUViewServiceRoutingViewController *)self isViewLoaded])
  {
    if (self->_onScreen && (-[MRUViewServiceRoutingViewController view](self, "view"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 state], v3, v4 == 1))
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __65__MRUViewServiceRoutingViewController_updateMoreButtonVisibility__block_invoke;
      v11[3] = &unk_1E7663898;
      v11[4] = self;
      [MEMORY[0x1E69DD250] mru_animateUsingType:0 animations:v11];
    }

    else
    {
      canShowMoreButton = [(MRUViewServiceRoutingViewController *)self canShowMoreButton];
      view = [(MRUViewServiceRoutingViewController *)self view];
      [view setFooterVisible:canShowMoreButton];
    }

    [(MRUViewServiceRoutingViewController *)self updateRoutingViewControllerScrollIndicatorInsets];
    v7 = MCLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      configuration = self->_configuration;
      v10 = [(NSMutableDictionary *)self->_nowPlayingControllers count];
      *buf = 138543874;
      v13 = v8;
      v14 = 2114;
      v15 = configuration;
      v16 = 2048;
      v17 = v10;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ can control other devices, configuration: %{public}@ | endpoint #: %lu", buf, 0x20u);
    }
  }
}

void __65__MRUViewServiceRoutingViewController_updateMoreButtonVisibility__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) canShowMoreButton];
  v3 = [*(a1 + 32) view];
  [v3 setFooterVisible:v2];

  v4 = [*(a1 + 32) view];
  [v4 layoutIfNeeded];
}

- (void)updateDiscoveryMode
{
  if (self->_onScreen)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  [(MediaControlsEndpointsManager *)self->_endpointsManager setDiscoveryMode:v3];
  routingViewController = self->_routingViewController;

  [(MRURoutingViewController *)routingViewController setDiscoveryMode:v3];
}

- (void)updateRoutingViewController
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@(devices)", v5];

  v7 = objc_alloc_init(MRUOutputDeviceRoutingDataSource);
  outputDeviceRoutingDataSource = self->_outputDeviceRoutingDataSource;
  self->_outputDeviceRoutingDataSource = v7;

  endpointController = [(MRUNowPlayingController *)self->_selectedNowPlayingController endpointController];
  route = [endpointController route];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setEndpointRoute:route];

  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setDetachesRoutesToGroup:1];
  routingContextUID = [(MPMediaControlsConfiguration *)self->_configuration routingContextUID];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setRoutingContextUID:routingContextUID];

  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setInitiator:*MEMORY[0x1E698A718]];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setSupportsQueueHandoff:self->_supportsQueueHandoff];
  presentingAppBundleID = [(MPMediaControlsConfiguration *)self->_configuration presentingAppBundleID];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setPresentingAppBundleID:presentingAppBundleID];

  nowPlayingAppBundleID = [(MPMediaControlsConfiguration *)self->_configuration nowPlayingAppBundleID];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setNowPlayingAppBundleID:nowPlayingAppBundleID];

  visibleMediaApps = [(MPMediaControlsConfiguration *)self->_configuration visibleMediaApps];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setVisibleMediaApps:visibleMediaApps];

  donatingAppBundleID = [(MPMediaControlsConfiguration *)self->_configuration donatingAppBundleID];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setDonatingAppBundleID:donatingAppBundleID];

  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setDonatingAppEligible:[(MPMediaControlsConfiguration *)self->_configuration isDonatingAppEligible]];
  style = [(MPMediaControlsConfiguration *)self->_configuration style];
  if (style <= 5 && ((0x2Fu >> style) & 1) != 0)
  {
    [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setSupportsMultipleSelection:(0xDu >> style) & 1];
    [(MPAVRoutingDataSource *)self->_outputDeviceRoutingDataSource setFilterMode:0];
  }

  v17 = [objc_alloc(MEMORY[0x1E6970490]) initWithDataSource:self->_outputDeviceRoutingDataSource name:v6];
  presentingAppBundleID2 = [(MPMediaControlsConfiguration *)self->_configuration presentingAppBundleID];
  [v17 setPresentedBundleID:presentingAppBundleID2];

  [v17 setPlaybackDataSource:self->_endpointsManager];
  [v17 setFetchAvailableRoutesSynchronously:1];
  vendorSpecificManager = self->_vendorSpecificManager;
  availableRoutes = [v17 availableRoutes];
  [(MRUVendorSpecificDeviceManager *)vendorSpecificManager resolverAddNativeRoutes:availableRoutes];

  [v17 setFetchAvailableRoutesSynchronously:0];
  v21 = [[MRURoutingViewController alloc] initWithRoutingController:v17];
  [(MRUViewServiceRoutingViewController *)self setRoutingViewController:v21];

  [(MRURoutingViewController *)self->_routingViewController setPresentingAppProcessIdentifier:[(MPMediaControlsConfiguration *)self->_configuration presentingAppProcessIdentifier]];
  presentingAppBundleID3 = [(MPMediaControlsConfiguration *)self->_configuration presentingAppBundleID];
  [(MRURoutingViewController *)self->_routingViewController setPresentingAppBundleID:presentingAppBundleID3];

  presentingAppBundleID4 = [(MPMediaControlsConfiguration *)self->_configuration presentingAppBundleID];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setPresentingAppBundleID:presentingAppBundleID4];

  nowPlayingAppBundleID2 = [(MPMediaControlsConfiguration *)self->_configuration nowPlayingAppBundleID];
  [(MRURoutingViewController *)self->_routingViewController setNowPlayingAppBundleID:nowPlayingAppBundleID2];

  visibleMediaApps2 = [(MPMediaControlsConfiguration *)self->_configuration visibleMediaApps];
  [(MRURoutingViewController *)self->_routingViewController setVisibleMediaApps:visibleMediaApps2];

  donatingAppBundleID2 = [(MPMediaControlsConfiguration *)self->_configuration donatingAppBundleID];
  [(MRURoutingViewController *)self->_routingViewController setDonatingAppBundleID:donatingAppBundleID2];

  [(MRURoutingViewController *)self->_routingViewController setDonatingAppEligible:[(MPMediaControlsConfiguration *)self->_configuration isDonatingAppEligible]];
  [(MRURoutingViewController *)self->_routingViewController setVendorSpecificManager:self->_vendorSpecificManager];
  endpointController2 = [(MRUNowPlayingController *)self->_selectedNowPlayingController endpointController];
  route2 = [endpointController2 route];
  [(MRURoutingViewController *)self->_routingViewController setEndpointRoute:route2];

  [(MRURoutingViewController *)self->_routingViewController setDelegate:self];
  [(MRURoutingViewController *)self->_routingViewController setSortByIsVideoRoute:[(MPMediaControlsConfiguration *)self->_configuration sortByIsVideoRoute]];
  [(MRURoutingViewController *)self->_routingViewController setShowMetadataForEndpointRoute:1];
  [(MRURoutingViewController *)self->_routingViewController setContentEdgeInsets:0.0, 24.0, 0.0, 24.0];
  v29 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    customRows = [(MPMediaControlsConfiguration *)self->_configuration customRows];
    *buf = 138412290;
    v33 = customRows;
    _os_log_impl(&dword_1A20FC000, v29, OS_LOG_TYPE_DEFAULT, "config customRows: %@", buf, 0xCu);
  }

  customRows2 = [(MPMediaControlsConfiguration *)self->_configuration customRows];
  [(MRURoutingViewController *)self->_routingViewController setCustomRows:customRows2];
}

- (void)updateSelectedViewController
{
  v27 = *MEMORY[0x1E69E9840];
  routeUID = [(MPMediaControlsConfiguration *)self->_configuration routeUID];
  v4 = [routeUID length];

  if (v4)
  {
    nowPlayingControllers = self->_nowPlayingControllers;
    routeUID2 = [(MPMediaControlsConfiguration *)self->_configuration routeUID];
    v7 = [(NSMutableDictionary *)nowPlayingControllers objectForKeyedSubscript:routeUID2];

    if (!v7)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      allValues = [(NSMutableDictionary *)self->_nowPlayingControllers allValues];
      v7 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        v9 = *v23;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(allValues);
            }

            v11 = *(*(&v22 + 1) + 8 * i);
            endpointController = [v11 endpointController];
            routeUID3 = [(MPMediaControlsConfiguration *)self->_configuration routeUID];
            v14 = [endpointController containsOutputDeviceWithRouteUID:routeUID3];

            if (v14)
            {
              v7 = v11;
              goto LABEL_18;
            }
          }

          v7 = [allValues countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }
  }

  else
  {
    if (self->_canShowRemoteDevices)
    {
      activeSystemRoute = [(MediaControlsEndpointsManager *)self->_endpointsManager activeSystemRoute];
      canModifyGroupMembership = [activeSystemRoute canModifyGroupMembership];

      if ((canModifyGroupMembership & 1) == 0)
      {
        [(MRUViewServiceRoutingViewController *)self setState:1];
        view = [(MRUViewServiceRoutingViewController *)self view];
        [view layoutIfNeeded];

        v7 = 0;
        goto LABEL_20;
      }

      v17 = self->_nowPlayingControllers;
      activeSystemRoute2 = [(MediaControlsEndpointsManager *)self->_endpointsManager activeSystemRoute];
    }

    else
    {
      v17 = self->_nowPlayingControllers;
      activeSystemRoute2 = [MEMORY[0x1E6970490] systemRoute];
    }

    v19 = activeSystemRoute2;
    routeUID4 = [activeSystemRoute2 routeUID];
    v7 = [(NSMutableDictionary *)v17 objectForKeyedSubscript:routeUID4];
  }

LABEL_20:
  [(MRUViewServiceRoutingViewController *)self setSelectedNowPlayingController:v7];
}

- (void)updateRoutingViewControllerScrollIndicatorInsets
{
  if ([(MRUViewServiceRoutingViewController *)self canShowMoreButton])
  {
    v3 = *MEMORY[0x1E69DDCE0];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
    routingViewController = self->_routingViewController;
    v6 = *(MEMORY[0x1E69DDCE0] + 16);
    v7 = *(MEMORY[0x1E69DDCE0] + 24);

    [(MRURoutingViewController *)routingViewController setScrollIndicatorInsets:v3, v4, v6, v7];
  }

  else
  {
    view = [(MRUViewServiceRoutingViewController *)self view];
    [view cornerRadius];
    [(MRURoutingViewController *)self->_routingViewController setScrollIndicatorInsets:0.0, 0.0, v8, 0.0];
  }
}

- (void)updateCellForIdentifier:(id)identifier
{
  dataSource = self->_dataSource;
  identifierCopy = identifier;
  v9 = [(UITableViewDiffableDataSource *)dataSource indexPathForItemIdentifier:identifierCopy];
  view = [(MRUViewServiceRoutingViewController *)self view];
  tableView = [view tableView];
  v8 = [tableView cellForRowAtIndexPath:v9];

  [(MRUViewServiceRoutingViewController *)self updateCell:v8 forIdentifier:identifierCopy];
}

- (void)updateCell:(id)cell forIdentifier:(id)identifier
{
  nowPlayingControllers = self->_nowPlayingControllers;
  cellCopy = cell;
  v34 = [(NSMutableDictionary *)nowPlayingControllers objectForKeyedSubscript:identifier];
  endpointController = [v34 endpointController];
  route = [endpointController route];

  metadataController = [v34 metadataController];
  artwork = [metadataController artwork];

  metadataController2 = [v34 metadataController];
  nowPlayingInfo = [metadataController2 nowPlayingInfo];

  quickControlItem = [v34 quickControlItem];
  cellContentView = [cellCopy cellContentView];
  artworkView = [cellContentView artworkView];

  cellContentView2 = [cellCopy cellContentView];
  headerView = [cellContentView2 headerView];

  cellContentView3 = [cellCopy cellContentView];
  headerView2 = [cellContentView3 headerView];
  labelView = [headerView2 labelView];

  [artworkView setArtwork:artwork];
  v20 = MEMORY[0x1E69DCAB8];
  deviceSymbolName = [v34 deviceSymbolName];
  v22 = [v20 _systemImageNamed:deviceSymbolName];
  [artworkView setPlaceholderImage:v22];

  [labelView setRoute:route];
  v23 = [nowPlayingInfo stringForComponents:59];
  [labelView setTitle:v23];

  placeholder = [nowPlayingInfo placeholder];
  [labelView setPlaceholder:placeholder];

  [labelView setShowPlaceholder:{objc_msgSend(nowPlayingInfo, "showPlaceholder")}];
  identifier = [v34 identifier];
  transportButton = [headerView transportButton];
  [transportButton setIdentifier:identifier];

  [headerView setShowTransportButton:{objc_msgSend(quickControlItem, "isEnabled")}];
  transportButton2 = [headerView transportButton];
  asset = [quickControlItem asset];
  [transportButton2 setAsset:asset];

  transportButton3 = [headerView transportButton];
  [transportButton3 addTarget:self action:sel_didSelectQuickControl_ forControlEvents:64];

  view = [(MRUViewServiceRoutingViewController *)self view];
  stylingProvider = [view stylingProvider];
  [cellCopy setStylingProvider:stylingProvider];

  [cellCopy setContentEdgeInsets:{24.0, 24.0, 24.0, 24.0}];
}

- (MRUViewServiceRoutingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end