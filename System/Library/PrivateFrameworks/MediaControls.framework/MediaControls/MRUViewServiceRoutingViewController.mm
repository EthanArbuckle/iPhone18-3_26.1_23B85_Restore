@interface MRUViewServiceRoutingViewController
- (MRUViewServiceRoutingViewController)init;
- (MRUViewServiceRoutingViewControllerDelegate)delegate;
- (void)dealloc;
- (void)didSelectListState:(id)a3;
- (void)didSelectQuickControl:(id)a3;
- (void)endpointsManager:(id)a3 defersRoutesReplacement:(id)a4;
- (void)loadView;
- (void)nowPlayingController:(id)a3 didChangeQuickControlItem:(id)a4;
- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeArtwork:(id)a5;
- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeNowPlayingInfo:(id)a5;
- (void)routingViewController:(id)a3 didSelectRoutingViewItem:(id)a4;
- (void)routingViewControllerDidUpdateItems:(id)a3;
- (void)setAlertViewController:(id)a3;
- (void)setConfiguration:(id)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)setRoutingViewController:(id)a3;
- (void)setSelectedNowPlayingController:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setStylingProvider:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forIdentifier:(id)a4;
- (void)updateCellForIdentifier:(id)a3;
- (void)updateDiscoveryMode;
- (void)updateMoreButtonVisibility;
- (void)updateNowPlayingControllers;
- (void)updateRoutingViewController;
- (void)updateRoutingViewControllerScrollIndicatorInsets;
- (void)updateSelectedViewController;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MRUViewServiceRoutingViewController

- (MRUViewServiceRoutingViewController)init
{
  v6.receiver = self;
  v6.super_class = MRUViewServiceRoutingViewController;
  v2 = [(MRUViewServiceRoutingViewController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    nowPlayingControllers = v2->_nowPlayingControllers;
    v2->_nowPlayingControllers = v3;
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
  v4 = [(MRUViewServiceRoutingViewController *)self view];
  [v4 setStylingProvider:stylingProvider];

  [(MPMediaControlsConfiguration *)self->_configuration preferredWidth];
  v6 = v5;
  v7 = [(MRUViewServiceRoutingViewController *)self view];
  [v7 setPreferredWidth:v6];

  if ([(MPMediaControlsConfiguration *)self->_configuration useGenericDevicesIconInHeader])
  {
    v8 = +[MRUAssetsProvider genericDevices];
  }

  else
  {
    v9 = +[MRUStringsProvider airplayTitle];
    v10 = [(MRUViewServiceRoutingViewController *)self view];
    v11 = [v10 headerView];
    [v11 setTitle:v9];

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
  v13 = [(MRUViewServiceRoutingViewController *)self view];
  v14 = [v13 headerView];
  [v14 setImage:v12];

  v15 = [(MRURoutingViewController *)self->_routingViewController view];
  v16 = [(MRUViewServiceRoutingViewController *)self view];
  [v16 setContentView:v15];

  [(MRURoutingViewController *)self->_routingViewController setStylingProvider:self->_stylingProvider];
  v17 = [(MRUViewServiceRoutingViewController *)self view];
  v18 = [v17 footerView];
  v19 = [v18 button];
  [v19 addTarget:self action:sel_didSelectListState_ forControlEvents:64];

  v20 = [(MRUViewServiceRoutingViewController *)self view];
  v21 = [v20 tableView];
  [v21 setDelegate:self];

  v22 = [(MRUViewServiceRoutingViewController *)self view];
  v23 = [v22 tableView];
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  [v23 registerClass:v24 forCellReuseIdentifier:v26];

  objc_initWeak(&location, self);
  v27 = objc_alloc(MEMORY[0x1E69DD040]);
  v28 = [(MRUViewServiceRoutingViewController *)self view];
  v29 = [v28 tableView];
  v36 = MEMORY[0x1E69E9820];
  v37 = 3221225472;
  v38 = __50__MRUViewServiceRoutingViewController_viewDidLoad__block_invoke;
  v39 = &unk_1E7663D08;
  objc_copyWeak(&v40, &location);
  v30 = [v27 initWithTableView:v29 cellProvider:&v36];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRUViewServiceRoutingViewController;
  [(MRUViewServiceRoutingViewController *)&v4 viewWillAppear:a3];
  [(MRUViewServiceRoutingViewController *)self setOnScreen:1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRUViewServiceRoutingViewController;
  [(MRUViewServiceRoutingViewController *)&v4 viewWillDisappear:a3];
  [(MRUViewServiceRoutingViewController *)self setOnScreen:0];
}

- (void)setOnScreen:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_onScreen != a3)
  {
    self->_onScreen = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(NSMutableDictionary *)self->_nowPlayingControllers allValues];
    v5 = [v4 copy];

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

- (void)setState:(int64_t)a3
{
  v5 = [(MRUViewServiceRoutingViewController *)self view];
  [v5 setState:a3];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained viewServiceRoutingViewControllerDidChangeSize:self];
  }
}

- (void)setConfiguration:(id)a3
{
  v23 = a3;
  if (([(MPMediaControlsConfiguration *)self->_configuration isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_configuration, a3);
    v5 = [[MediaControlsEndpointsManager alloc] initWithConfiguration:v23];
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
      v8 = [v23 presentingAppBundleID];
      if ([v7 mru_isSpringBoardBundleIdentifier:v8])
      {
        self->_canShowRemoteDevices = 1;
      }

      else
      {
        v9 = MEMORY[0x1E696AAE8];
        v10 = [v23 presentingAppBundleID];
        self->_canShowRemoteDevices = [v9 mru_isMediaRemoteUIBundleIdentifier:v10];
      }
    }

    if ([(MPMediaControlsConfiguration *)self->_configuration style]== 3)
    {
      self->_supportsQueueHandoff = 1;
    }

    else
    {
      v11 = MEMORY[0x1E696AAE8];
      v12 = [v23 presentingAppBundleID];
      if ([v11 mru_isSpringBoardBundleIdentifier:v12])
      {
        self->_supportsQueueHandoff = 1;
      }

      else
      {
        v13 = MEMORY[0x1E696AAE8];
        v14 = [v23 presentingAppBundleID];
        if ([v13 mru_isHomeBundleIdentifier:v14])
        {
          self->_supportsQueueHandoff = 1;
        }

        else
        {
          v15 = MEMORY[0x1E696AAE8];
          v16 = [v23 presentingAppBundleID];
          if ([v15 mru_isProximityControlBundleIdentifier:v16])
          {
            self->_supportsQueueHandoff = 1;
          }

          else
          {
            v17 = MEMORY[0x1E696AAE8];
            v18 = [v23 presentingAppBundleID];
            self->_supportsQueueHandoff = [v17 mru_isMediaRemoteUIBundleIdentifier:v18];
          }
        }
      }
    }

    [v23 preferredWidth];
    v20 = v19;
    v21 = [(MRUViewServiceRoutingViewController *)self viewIfLoaded];
    [v21 setPreferredWidth:v20];

    v22 = [(MRUViewServiceRoutingViewController *)self endpointsManager];
    [v22 prewarm];

    [(MRUViewServiceRoutingViewController *)self updateDiscoveryMode];
    [(MRUViewServiceRoutingViewController *)self updateNowPlayingControllers];
    [(MRUViewServiceRoutingViewController *)self updateRoutingViewController];
  }
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    v6 = [(MRUViewServiceRoutingViewController *)self viewIfLoaded];
    [v6 setStylingProvider:v7];

    [(MRURoutingViewController *)self->_routingViewController setStylingProvider:v7];
    v5 = v7;
  }
}

- (void)setRoutingViewController:(id)a3
{
  v5 = a3;
  if (self->_routingViewController != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_routingViewController, a3);
    [(MRUViewServiceRoutingViewController *)self addChildViewController:self->_routingViewController];
    if ([(MRUViewServiceRoutingViewController *)self isViewLoaded])
    {
      v6 = [(MRURoutingViewController *)self->_routingViewController view];
      v7 = [(MRUViewServiceRoutingViewController *)self view];
      [v7 setContentView:v6];
    }

    [(MRUViewServiceRoutingViewController *)self updateRoutingViewControllerScrollIndicatorInsets];
    v8 = [(MRUViewServiceRoutingViewController *)self viewIfLoaded];
    v9 = [v8 stylingProvider];
    [(MRURoutingViewController *)self->_routingViewController setStylingProvider:v9];

    [(MRURoutingViewController *)self->_routingViewController didMoveToParentViewController:self];
    v5 = v10;
  }
}

- (void)setSelectedNowPlayingController:(id)a3
{
  v5 = a3;
  if (self->_selectedNowPlayingController != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_selectedNowPlayingController, a3);
    v6 = [(MRUNowPlayingController *)v11 endpointController];
    v7 = [v6 route];
    [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setEndpointRoute:v7];

    v8 = [(MRUNowPlayingController *)v11 endpointController];
    v9 = [v8 route];
    [(MRURoutingViewController *)self->_routingViewController setEndpointRoute:v9];

    v10 = [(MRUViewServiceRoutingViewController *)self viewIfLoaded];
    [v10 setNeedsLayout];

    v5 = v11;
  }
}

- (void)setAlertViewController:(id)a3
{
  v5 = a3;
  alertViewController = self->_alertViewController;
  if (alertViewController != v5)
  {
    v7 = alertViewController;
    objc_storeStrong(&self->_alertViewController, a3);
    [(UIViewController *)v7 willMoveToParentViewController:0];
    if (v5)
    {
      [(MRUViewServiceRoutingViewController *)self addChildViewController:v5];
      v8 = [(UIViewController *)v5 view];
      v9 = [(MRUViewServiceRoutingViewController *)self view];
      [v9 setAlertView:v8];

      v10 = [(MRUViewServiceRoutingViewController *)self view];
      [v10 layoutIfNeeded];
    }

    else
    {
      v10 = [(MRUViewServiceRoutingViewController *)self view];
      [v10 setAlertView:0];
    }

    v11 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__MRUViewServiceRoutingViewController_setAlertViewController___block_invoke;
    v17[3] = &unk_1E7663D30;
    v18 = v7;
    v19 = self;
    v20 = v5;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__MRUViewServiceRoutingViewController_setAlertViewController___block_invoke_2;
    v13[3] = &unk_1E7663D58;
    v14 = v18;
    v15 = v20;
    v16 = self;
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

- (void)didSelectListState:(id)a3
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

- (void)didSelectQuickControl:(id)a3
{
  nowPlayingControllers = self->_nowPlayingControllers;
  v4 = [a3 identifier];
  v5 = [(NSMutableDictionary *)nowPlayingControllers objectForKeyedSubscript:v4];
  v6 = [v5 quickControlItem];
  v8 = [v6 mainAction];

  v7 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8);
    v7 = v8;
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = [(UITableViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v7];
  v9 = [(NSMutableDictionary *)self->_nowPlayingControllers objectForKeyedSubscript:v8];
  v10 = [v9 endpointController];

  v11 = [v10 route];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__MRUViewServiceRoutingViewController_tableView_didSelectRowAtIndexPath___block_invoke;
  v13[3] = &unk_1E7663D80;
  objc_copyWeak(&v16, &location);
  v12 = v11;
  v14 = v12;
  v15 = self;
  [v10 connectAllowingAuthenticationWithCompletion:v13];

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

- (void)endpointsManager:(id)a3 defersRoutesReplacement:(id)a4
{
  v5 = _Block_copy(a4);
  replaceRoutes = self->_replaceRoutes;
  self->_replaceRoutes = v5;

  [(MRUViewServiceRoutingViewController *)self updateNowPlayingControllers];
}

- (void)nowPlayingController:(id)a3 endpointController:(id)a4 didChangeRoute:(id)a5
{
  v6 = [a3 identifier];
  [(MRUViewServiceRoutingViewController *)self updateCellForIdentifier:v6];
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeArtwork:(id)a5
{
  v6 = [a3 identifier];
  [(MRUViewServiceRoutingViewController *)self updateCellForIdentifier:v6];
}

- (void)nowPlayingController:(id)a3 metadataController:(id)a4 didChangeNowPlayingInfo:(id)a5
{
  v6 = [a3 identifier];
  [(MRUViewServiceRoutingViewController *)self updateCellForIdentifier:v6];
}

- (void)nowPlayingController:(id)a3 didChangeQuickControlItem:(id)a4
{
  v5 = [a3 identifier];
  [(MRUViewServiceRoutingViewController *)self updateCellForIdentifier:v5];
}

- (void)routingViewController:(id)a3 didSelectRoutingViewItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 actionIdentifier];
  v9 = [v8 isEqualToString:*MEMORY[0x1E696F8A8]];

  if (!v9)
  {
    if ([v7 type] == 6)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v11 = [v7 vendorSpecificCustomRowIdentifier];
      [WeakRetained viewServiceRoutingViewControllerDidDismiss:self withCustomRowTapped:v11];
    }

    else
    {
      v12 = [v7 mainRoute];
      v13 = [v12 isGroupSession];

      if (!v13)
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

- (void)routingViewControllerDidUpdateItems:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = [(MRUViewServiceRoutingViewController *)self view];
  if ([v4 state])
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
  v7 = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

  v9 = MEMORY[0x1E695DFA8];
  v10 = [(NSMutableDictionary *)self->_nowPlayingControllers allKeys];
  v33 = [v9 setWithArray:v10];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = [(MediaControlsEndpointsManager *)self->_endpointsManager routes];
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
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
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v34 + 1) + 8 * i);
        v18 = [v17 routeUID];
        if (v18)
        {
          [v8 addObject:v18];
          [v33 removeObject:v18];
          v19 = [(NSMutableDictionary *)self->_nowPlayingControllers objectForKeyedSubscript:v18];

          if (v19)
          {
            goto LABEL_14;
          }

          v20 = [(MediaControlsEndpointsManager *)self->_endpointsManager endpointControllerForRoute:v17];
          v21 = [[MRUEndpointController alloc] initWithEndpointController:v20];
          v22 = [[MRUNowPlayingController alloc] initWithEndpointController:v21];
          [(MRUNowPlayingController *)v22 addObserver:self];
          [(NSMutableDictionary *)self->_nowPlayingControllers setObject:v22 forKeyedSubscript:v18];

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

      v14 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v14);
  }

  nowPlayingControllers = self->_nowPlayingControllers;
  v25 = [v33 allObjects];
  [(NSMutableDictionary *)nowPlayingControllers removeObjectsForKeys:v25];

  v26 = objc_alloc_init(MEMORY[0x1E69955A0]);
  [v26 appendSectionsWithIdentifiers:&unk_1F148B310];
  [v26 appendItemsWithIdentifiers:v8];
  [(UITableViewDiffableDataSource *)self->_dataSource applySnapshot:v26 animatingDifferences:1];
  [(MRUViewServiceRoutingViewController *)self updateSelectedViewController];
  [(MRUViewServiceRoutingViewController *)self updateMoreButtonVisibility];
  v27 = [(NSMutableDictionary *)self->_nowPlayingControllers allValues];
  [(MRURoutingViewController *)self->_routingViewController setNowPlayingControllers:v27];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v29 = [(MRUViewServiceRoutingViewController *)self view];
  if ([v29 state] == 1)
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
      v5 = [(MRUViewServiceRoutingViewController *)self canShowMoreButton];
      v6 = [(MRUViewServiceRoutingViewController *)self view];
      [v6 setFooterVisible:v5];
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

  v9 = [(MRUNowPlayingController *)self->_selectedNowPlayingController endpointController];
  v10 = [v9 route];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setEndpointRoute:v10];

  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setDetachesRoutesToGroup:1];
  v11 = [(MPMediaControlsConfiguration *)self->_configuration routingContextUID];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setRoutingContextUID:v11];

  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setInitiator:*MEMORY[0x1E698A718]];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setSupportsQueueHandoff:self->_supportsQueueHandoff];
  v12 = [(MPMediaControlsConfiguration *)self->_configuration presentingAppBundleID];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setPresentingAppBundleID:v12];

  v13 = [(MPMediaControlsConfiguration *)self->_configuration nowPlayingAppBundleID];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setNowPlayingAppBundleID:v13];

  v14 = [(MPMediaControlsConfiguration *)self->_configuration visibleMediaApps];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setVisibleMediaApps:v14];

  v15 = [(MPMediaControlsConfiguration *)self->_configuration donatingAppBundleID];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setDonatingAppBundleID:v15];

  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setDonatingAppEligible:[(MPMediaControlsConfiguration *)self->_configuration isDonatingAppEligible]];
  v16 = [(MPMediaControlsConfiguration *)self->_configuration style];
  if (v16 <= 5 && ((0x2Fu >> v16) & 1) != 0)
  {
    [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setSupportsMultipleSelection:(0xDu >> v16) & 1];
    [(MPAVRoutingDataSource *)self->_outputDeviceRoutingDataSource setFilterMode:0];
  }

  v17 = [objc_alloc(MEMORY[0x1E6970490]) initWithDataSource:self->_outputDeviceRoutingDataSource name:v6];
  v18 = [(MPMediaControlsConfiguration *)self->_configuration presentingAppBundleID];
  [v17 setPresentedBundleID:v18];

  [v17 setPlaybackDataSource:self->_endpointsManager];
  [v17 setFetchAvailableRoutesSynchronously:1];
  vendorSpecificManager = self->_vendorSpecificManager;
  v20 = [v17 availableRoutes];
  [(MRUVendorSpecificDeviceManager *)vendorSpecificManager resolverAddNativeRoutes:v20];

  [v17 setFetchAvailableRoutesSynchronously:0];
  v21 = [[MRURoutingViewController alloc] initWithRoutingController:v17];
  [(MRUViewServiceRoutingViewController *)self setRoutingViewController:v21];

  [(MRURoutingViewController *)self->_routingViewController setPresentingAppProcessIdentifier:[(MPMediaControlsConfiguration *)self->_configuration presentingAppProcessIdentifier]];
  v22 = [(MPMediaControlsConfiguration *)self->_configuration presentingAppBundleID];
  [(MRURoutingViewController *)self->_routingViewController setPresentingAppBundleID:v22];

  v23 = [(MPMediaControlsConfiguration *)self->_configuration presentingAppBundleID];
  [(MRUOutputDeviceRoutingDataSource *)self->_outputDeviceRoutingDataSource setPresentingAppBundleID:v23];

  v24 = [(MPMediaControlsConfiguration *)self->_configuration nowPlayingAppBundleID];
  [(MRURoutingViewController *)self->_routingViewController setNowPlayingAppBundleID:v24];

  v25 = [(MPMediaControlsConfiguration *)self->_configuration visibleMediaApps];
  [(MRURoutingViewController *)self->_routingViewController setVisibleMediaApps:v25];

  v26 = [(MPMediaControlsConfiguration *)self->_configuration donatingAppBundleID];
  [(MRURoutingViewController *)self->_routingViewController setDonatingAppBundleID:v26];

  [(MRURoutingViewController *)self->_routingViewController setDonatingAppEligible:[(MPMediaControlsConfiguration *)self->_configuration isDonatingAppEligible]];
  [(MRURoutingViewController *)self->_routingViewController setVendorSpecificManager:self->_vendorSpecificManager];
  v27 = [(MRUNowPlayingController *)self->_selectedNowPlayingController endpointController];
  v28 = [v27 route];
  [(MRURoutingViewController *)self->_routingViewController setEndpointRoute:v28];

  [(MRURoutingViewController *)self->_routingViewController setDelegate:self];
  [(MRURoutingViewController *)self->_routingViewController setSortByIsVideoRoute:[(MPMediaControlsConfiguration *)self->_configuration sortByIsVideoRoute]];
  [(MRURoutingViewController *)self->_routingViewController setShowMetadataForEndpointRoute:1];
  [(MRURoutingViewController *)self->_routingViewController setContentEdgeInsets:0.0, 24.0, 0.0, 24.0];
  v29 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [(MPMediaControlsConfiguration *)self->_configuration customRows];
    *buf = 138412290;
    v33 = v30;
    _os_log_impl(&dword_1A20FC000, v29, OS_LOG_TYPE_DEFAULT, "config customRows: %@", buf, 0xCu);
  }

  v31 = [(MPMediaControlsConfiguration *)self->_configuration customRows];
  [(MRURoutingViewController *)self->_routingViewController setCustomRows:v31];
}

- (void)updateSelectedViewController
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(MPMediaControlsConfiguration *)self->_configuration routeUID];
  v4 = [v3 length];

  if (v4)
  {
    nowPlayingControllers = self->_nowPlayingControllers;
    v6 = [(MPMediaControlsConfiguration *)self->_configuration routeUID];
    v7 = [(NSMutableDictionary *)nowPlayingControllers objectForKeyedSubscript:v6];

    if (!v7)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v8 = [(NSMutableDictionary *)self->_nowPlayingControllers allValues];
      v7 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        v9 = *v23;
        while (2)
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(v8);
            }

            v11 = *(*(&v22 + 1) + 8 * i);
            v12 = [v11 endpointController];
            v13 = [(MPMediaControlsConfiguration *)self->_configuration routeUID];
            v14 = [v12 containsOutputDeviceWithRouteUID:v13];

            if (v14)
            {
              v7 = v11;
              goto LABEL_18;
            }
          }

          v7 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
      v15 = [(MediaControlsEndpointsManager *)self->_endpointsManager activeSystemRoute];
      v16 = [v15 canModifyGroupMembership];

      if ((v16 & 1) == 0)
      {
        [(MRUViewServiceRoutingViewController *)self setState:1];
        v21 = [(MRUViewServiceRoutingViewController *)self view];
        [v21 layoutIfNeeded];

        v7 = 0;
        goto LABEL_20;
      }

      v17 = self->_nowPlayingControllers;
      v18 = [(MediaControlsEndpointsManager *)self->_endpointsManager activeSystemRoute];
    }

    else
    {
      v17 = self->_nowPlayingControllers;
      v18 = [MEMORY[0x1E6970490] systemRoute];
    }

    v19 = v18;
    v20 = [v18 routeUID];
    v7 = [(NSMutableDictionary *)v17 objectForKeyedSubscript:v20];
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
    v9 = [(MRUViewServiceRoutingViewController *)self view];
    [v9 cornerRadius];
    [(MRURoutingViewController *)self->_routingViewController setScrollIndicatorInsets:0.0, 0.0, v8, 0.0];
  }
}

- (void)updateCellForIdentifier:(id)a3
{
  dataSource = self->_dataSource;
  v5 = a3;
  v9 = [(UITableViewDiffableDataSource *)dataSource indexPathForItemIdentifier:v5];
  v6 = [(MRUViewServiceRoutingViewController *)self view];
  v7 = [v6 tableView];
  v8 = [v7 cellForRowAtIndexPath:v9];

  [(MRUViewServiceRoutingViewController *)self updateCell:v8 forIdentifier:v5];
}

- (void)updateCell:(id)a3 forIdentifier:(id)a4
{
  nowPlayingControllers = self->_nowPlayingControllers;
  v6 = a3;
  v34 = [(NSMutableDictionary *)nowPlayingControllers objectForKeyedSubscript:a4];
  v7 = [v34 endpointController];
  v32 = [v7 route];

  v8 = [v34 metadataController];
  v9 = [v8 artwork];

  v10 = [v34 metadataController];
  v11 = [v10 nowPlayingInfo];

  v12 = [v34 quickControlItem];
  v13 = [v6 cellContentView];
  v14 = [v13 artworkView];

  v15 = [v6 cellContentView];
  v16 = [v15 headerView];

  v17 = [v6 cellContentView];
  v18 = [v17 headerView];
  v19 = [v18 labelView];

  [v14 setArtwork:v9];
  v20 = MEMORY[0x1E69DCAB8];
  v21 = [v34 deviceSymbolName];
  v22 = [v20 _systemImageNamed:v21];
  [v14 setPlaceholderImage:v22];

  [v19 setRoute:v32];
  v23 = [v11 stringForComponents:59];
  [v19 setTitle:v23];

  v24 = [v11 placeholder];
  [v19 setPlaceholder:v24];

  [v19 setShowPlaceholder:{objc_msgSend(v11, "showPlaceholder")}];
  v25 = [v34 identifier];
  v26 = [v16 transportButton];
  [v26 setIdentifier:v25];

  [v16 setShowTransportButton:{objc_msgSend(v12, "isEnabled")}];
  v27 = [v16 transportButton];
  v28 = [v12 asset];
  [v27 setAsset:v28];

  v29 = [v16 transportButton];
  [v29 addTarget:self action:sel_didSelectQuickControl_ forControlEvents:64];

  v30 = [(MRUViewServiceRoutingViewController *)self view];
  v31 = [v30 stylingProvider];
  [v6 setStylingProvider:v31];

  [v6 setContentEdgeInsets:{24.0, 24.0, 24.0, 24.0}];
}

- (MRUViewServiceRoutingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end