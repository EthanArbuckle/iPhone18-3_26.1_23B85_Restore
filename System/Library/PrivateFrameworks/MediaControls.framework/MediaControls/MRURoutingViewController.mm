@interface MRURoutingViewController
- (BOOL)_operationRequiresOptimisticState:(int64_t)a3 routes:(id)a4;
- (BOOL)_shouldShowShowMoreButton;
- (BOOL)_wouldEndGroupSessionForViewItem:(id)a3 operation:(int64_t)a4 pickedRoutes:(id)a5;
- (BOOL)_wouldShareAudioForPickedRoute:(id)a3 operation:(int64_t)a4 pickedRoutes:(id)a5;
- (BOOL)canUseUncoalescedResults;
- (BOOL)handleSelectedRoutingViewItem:(id)a3 operation:(int64_t)a4;
- (BOOL)hasCarKitRoute;
- (BOOL)isInCarPlay;
- (BOOL)isInVehicle;
- (BOOL)isVendorSpecificGroupStatusRecorded:(id)a3;
- (BOOL)routesContainAirPlayGroupableRoute:(id)a3;
- (BOOL)routesContainMultipleBuiltIn:(id)a3;
- (BOOL)routesContainSplitterCapableRoute:(id)a3;
- (BOOL)shouldSuppressNativeRoutesStatusDisplay;
- (BOOL)tableView:(id)a3 shouldHaveFullLengthBottomSeparatorForSection:(int64_t)a4;
- (BOOL)wasVendorSpecificGroupDisplayedAsExpanded:(id)a3;
- (MRURoutingViewController)init;
- (MRURoutingViewController)initWithRoutingController:(id)a3;
- (MRURoutingViewControllerDelegate)delegate;
- (UIEdgeInsets)contentEdgeInsets;
- (UIEdgeInsets)scrollIndicatorInsets;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_airPlayRoutesInRoutes:(id)a3;
- (id)_createRoutingViewItemsForUpdate:(id)a3;
- (id)_createSectionedCollection:(id)a3 withPickedRoutes:(id)a4;
- (id)_displayAsPickedRoutesInRoutes:(id)a3;
- (id)_displayableRoutesInRoutes:(id)a3;
- (id)_fullStateDumpObject;
- (id)_mergeRoutes:(id)a3 withCoalescedResult:(id)a4;
- (id)_recommendedRoutesFromRoutes:(id)a3;
- (id)_stateDumpObject;
- (id)endpointGroupUID;
- (id)groupUIDForRoute:(id)a3;
- (id)symbolNameForVendorSpecificRoute:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)subtitleAccessoryForItem:(id)a3 nowPlayingInfo:(id)a4;
- (void)_applyUpdate:(id)a3;
- (void)_collapseAllGroups;
- (void)_collapseAllGroupsAfterDelay;
- (void)_configureVolumeForUpdate:(id)a3 volumeCapableRoutes:(id *)a4 volumeController:(id *)a5;
- (void)_createUpdateWithRefreshOnly:(BOOL)a3 completion:(id)a4;
- (void)_displayEndGroupSessionWithCompletion:(id)a3;
- (void)_displayGroupSessionAlertWithTitle:(id)a3 body:(id)a4 confirmTitle:(id)a5 cancelTitle:(id)a6 completion:(id)a7;
- (void)_displayShareAudioDisabledAlertForReason:(id)a3;
- (void)_enqueueUpdate:(id)a3;
- (void)_refreshDisplayedRoutes;
- (void)_reloadDisplayedRoutes;
- (void)_setNeedsDisplayedRoutesUpdate;
- (void)_setNeedsRouteDiscoveryModeUpdate;
- (void)_setupUpdateTimerIfNecessary;
- (void)_updateDisplayedRoutes;
- (void)_updateGroupSessionDiscovery;
- (void)applyVendorSpecificGroupExpandedRecord:(id)a3;
- (void)clearVendorSpecificGroupExpandedRecordFor:(id)a3;
- (void)dealloc;
- (void)didReceiveInteraction:(id)a3;
- (void)ensureVendorSpecificGroupTreeIsVisible:(id)a3;
- (void)fetchAvailableRoutesWithCompletionHandler:(id)a3;
- (void)groupSession:(id)a3 didInvalidateWithError:(id)a4;
- (void)groupSessionDidConnect:(id)a3;
- (void)groupSessionDiscovery:(id)a3 activeSessionDidChange:(id)a4;
- (void)groupSessionDiscovery:(id)a3 discoveredSessionsDidChange:(id)a4;
- (void)handleGroupSessionJoinWithPickedRoute:(id)a3;
- (void)hearingAidConnectionDidChange;
- (void)loadView;
- (void)playingSessionsDidChangeNotification:(id)a3;
- (void)resetDisplayedRoutes;
- (void)routingCellDidTapToExpand:(id)a3;
- (void)routingController:(id)a3 shouldHijackRoute:(id)a4 alertStyle:(int64_t)a5 busyRouteName:(id)a6 presentingAppName:(id)a7 completion:(id)a8;
- (void)routingControllerAvailableRoutesDidChange:(id)a3;
- (void)selectRoutes:(id)a3 operation:(int64_t)a4 routingViewItem:(id)a5;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)setContentEdgeInsets:(UIEdgeInsets)a3;
- (void)setCustomRows:(id)a3;
- (void)setDiscoveryMode:(int64_t)a3;
- (void)setEndpointRoute:(id)a3;
- (void)setGroupSessionDiscovery:(id)a3;
- (void)setNowPlayingControllers:(id)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)setOptimisticUpdate:(id)a3;
- (void)setPresentingAppBundleID:(id)a3;
- (void)setRoutingController:(id)a3;
- (void)setScrollIndicatorInsets:(UIEdgeInsets)a3;
- (void)setStylingProvider:(id)a3;
- (void)setVendorSpecificManager:(id)a3;
- (void)setVolumeGroupCoordinator:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateCell:(id)a3 forIndexPath:(id)a4;
- (void)updateExpandedGroups;
- (void)updateHeaderView:(id)a3 forSection:(int64_t)a4;
- (void)updateMetadata;
- (void)updateMetadataForNowPlayingController:(id)a3;
- (void)updateNowPlayingControllersForRoutes:(id)a3;
- (void)updateSubtitle;
- (void)updateVendorSpecificCell:(id)a3 forIndexPath:(id)a4;
- (void)updateVendorSpecificCustomRowCell:(id)a3 forIndexPath:(id)a4;
- (void)updateVendorSpecificGroupExpandedRecordFor:(id)a3;
- (void)updateVendorSpecificSpeakerGroupCell:(id)a3 forIndexPath:(id)a4;
- (void)updateVendorSpecificSubRouteCell:(id)a3 forIndexPath:(id)a4;
- (void)vendorSpecificCellDidTapToExpand:(id)a3;
- (void)vendorSpecificManager:(id)a3 deviceNowPlayingInfoDidChange:(id)a4;
- (void)vendorSpecificManager:(id)a3 deviceStateDidChange:(id)a4;
- (void)vendorSpecificManagerDeviceListDidChange:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MRURoutingViewController

- (MRURoutingViewController)init
{
  v3 = objc_alloc(MEMORY[0x1E6970490]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithName:v5];

  v7 = [(MRURoutingViewController *)self initWithRoutingController:v6];
  return v7;
}

- (MRURoutingViewController)initWithRoutingController:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = MRURoutingViewController;
  v6 = [(MRURoutingViewController *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routingController, a3);
    [(MPAVRoutingController *)v7->_routingController setDelegate:v7];
    v7->_discoveryMode = 0;
    v8 = [MEMORY[0x1E695DFA8] set];
    expandedGroupUIDs = v7->_expandedGroupUIDs;
    v7->_expandedGroupUIDs = v8;

    v10 = [MEMORY[0x1E695DFA8] set];
    expandedItemUIDs = v7->_expandedItemUIDs;
    v7->_expandedItemUIDs = v10;

    v12 = [MEMORY[0x1E695DFA8] set];
    expandedRouteUIDs = v7->_expandedRouteUIDs;
    v7->_expandedRouteUIDs = v12;

    v14 = [MEMORY[0x1E695DFA8] set];
    collapsedVendorSpecificGroupUIDs = v7->_collapsedVendorSpecificGroupUIDs;
    v7->_collapsedVendorSpecificGroupUIDs = v14;

    v16 = [MEMORY[0x1E695DFA8] set];
    expandedVendorSpecificGroupUIDs = v7->_expandedVendorSpecificGroupUIDs;
    v7->_expandedVendorSpecificGroupUIDs = v16;

    v18 = [MEMORY[0x1E695DF90] dictionary];
    vendorSpecificGroupDisplayedSubroutes = v7->_vendorSpecificGroupDisplayedSubroutes;
    v7->_vendorSpecificGroupDisplayedSubroutes = v18;

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __54__MRURoutingViewController_initWithRoutingController___block_invoke;
    v26[3] = &unk_1E7664C58;
    v20 = v7;
    v27 = v20;
    v20->_stateHandle = __54__MRURoutingViewController_initWithRoutingController___block_invoke(v26);
    v21 = [MEMORY[0x1E695DF70] array];
    staticCustomRowItems = v20->_staticCustomRowItems;
    v20->_staticCustomRowItems = v21;

    v20->_didExpandVendorSpecificSpeakerGroup = 0;
    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 addObserver:v20 selector:sel_routeRecommenderDidUpdateRecommendations_ name:MRURouteRecommenderDidUpdateRecommendationsNotification object:0];

    v24 = +[MRURouteRecommender sharedInstance];
    [v24 updateRecommendations];
  }

  return v7;
}

uint64_t __54__MRURoutingViewController_initWithRoutingController___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p", objc_opt_class(), *(a1 + 32)];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__MRURoutingViewController_initWithRoutingController___block_invoke_2;
  v5[3] = &unk_1E7664C30;
  objc_copyWeak(&v6, &location);
  v3 = MCLogAddStateHandlerWithName(v2, v5);
  objc_destroyWeak(&v6);

  objc_destroyWeak(&location);
  return v3;
}

id __54__MRURoutingViewController_initWithRoutingController___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v3 = WeakRetained;
    if (WeakRetained)
    {
      v4 = [WeakRetained _fullStateDumpObject];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRoutingController:(id)a3
{
  v4 = a3;
  [(MPAVRoutingController *)self->_routingController setDelegate:0];
  routingController = self->_routingController;
  self->_routingController = v4;
  v6 = v4;

  [(MPAVRoutingController *)self->_routingController setDelegate:self];
  [(MRURoutingViewController *)self _setNeedsRouteDiscoveryModeUpdate];
  [(MRURoutingViewController *)self _setNeedsDisplayedRoutesUpdate];
  [(MRURoutingViewController *)self updateMetadata];
  [(MRURoutingViewController *)self updateSubtitle];
  v8 = [(MRURoutingViewController *)self view];
  v7 = [v8 tableView];
  [v7 reloadData];
}

- (void)dealloc
{
  os_state_remove_handler();
  notify_cancel(self->_airPlayPasswordAlertDidAppearToken);
  notify_cancel(self->_airPlayPasswordAlertDidCancelToken);
  [(MPWeakTimer *)self->_updateTimer invalidate];
  [(MPWeakTimer *)self->_subtitleUpdateTimer invalidate];
  [(NSTimer *)self->_collapseTimer invalidate];
  v3.receiver = self;
  v3.super_class = MRURoutingViewController;
  [(MRURoutingViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(MRURoutingView);
  [(MRURoutingViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v46.receiver = self;
  v46.super_class = MRURoutingViewController;
  [(MRURoutingViewController *)&v46 viewDidLoad];
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  v7 = [(MRURoutingViewController *)self view];
  [v7 setContentEdgeInsets:{top, left, bottom, right}];

  v8 = self->_scrollIndicatorInsets.top;
  v9 = self->_scrollIndicatorInsets.left;
  v10 = self->_scrollIndicatorInsets.bottom;
  v11 = self->_scrollIndicatorInsets.right;
  v12 = [(MRURoutingViewController *)self view];
  v13 = [v12 tableView];
  [v13 setScrollIndicatorInsets:{v8, v9, v10, v11}];

  v14 = [(MRURoutingViewController *)self view];
  v15 = [v14 tableView];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [v15 registerClass:v16 forHeaderFooterViewReuseIdentifier:v18];

  v19 = [(MRURoutingViewController *)self view];
  v20 = [v19 tableView];
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  [v20 registerClass:v21 forHeaderFooterViewReuseIdentifier:v23];

  v24 = [(MRURoutingViewController *)self view];
  v25 = [v24 tableView];
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = NSStringFromClass(v27);
  [v25 registerClass:v26 forCellReuseIdentifier:v28];

  v29 = [(MRURoutingViewController *)self view];
  v30 = [v29 tableView];
  [v30 setDataSource:self];

  v31 = [(MRURoutingViewController *)self view];
  v32 = [v31 tableView];
  [v32 setDelegate:self];

  [(MRURoutingViewController *)self _updateGroupSessionDiscovery];
  v33 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MRURoutingViewController_viewDidLoad__block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(v33, block);

  v34 = objc_alloc_init(MEMORY[0x1E6993960]);
  carPlaySessionStatus = self->_carPlaySessionStatus;
  self->_carPlaySessionStatus = v34;

  [(CARSessionStatus *)self->_carPlaySessionStatus addSessionObserver:self];
  v36 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  percentageFormatter = self->_percentageFormatter;
  self->_percentageFormatter = v36;

  [(NSNumberFormatter *)self->_percentageFormatter setNumberStyle:3];
  [(NSNumberFormatter *)self->_percentageFormatter setUsesSignificantDigits:0];
  [(NSNumberFormatter *)self->_percentageFormatter setUsesGroupingSeparator:0];
  v38 = [[MediaControlsInteractionRecognizer alloc] initWithTarget:self action:sel_didReceiveInteraction_];
  [(MediaControlsInteractionRecognizer *)v38 setCancelsTouchesInView:0];
  v39 = [(MRURoutingViewController *)self view];
  [v39 addGestureRecognizer:v38];

  [(MediaControlsInteractionRecognizer *)v38 setDelegate:self];
  objc_initWeak(&location, self);
  v40 = MEMORY[0x1E69E96A0];
  v41 = MEMORY[0x1E69E96A0];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __39__MRURoutingViewController_viewDidLoad__block_invoke_2;
  handler[3] = &unk_1E76649F0;
  objc_copyWeak(&v43, &location);
  notify_register_dispatch("com.apple.mediaplayer.airPlayPasswordAlertDidCancel", &self->_airPlayPasswordAlertDidCancelToken, v40, handler);

  self->_didLastPickNativeRoute = 0;
  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);
}

void __39__MRURoutingViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = MEMORY[0x1E69AECC8];
  v6[0] = *MEMORY[0x1E69AECC8];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v2 setAttribute:v4 forKey:*MEMORY[0x1E69AECD8] error:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel_playingSessionsDidChangeNotification_ name:*v3 object:0];
}

void __39__MRURoutingViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained routingController];
    [v2 clearCachedRoutes];

    [v3 _setNeedsDisplayedRoutesUpdate];
    WeakRetained = v3;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRURoutingViewController;
  [(MRURoutingViewController *)&v4 viewWillAppear:a3];
  [(MRURoutingViewController *)self setOnScreen:1];
  [(MRURoutingViewController *)self playingSessionsDidChangeNotification:0];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MRURoutingViewController;
  [(MRURoutingViewController *)&v4 viewWillDisappear:a3];
  [(MRURoutingViewController *)self setOnScreen:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MRURoutingViewController;
  [(MRURoutingViewController *)&v5 viewDidDisappear:a3];
  [(MPWeakTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;

  [(NSTimer *)self->_collapseTimer invalidate];
  [(MRURoutingViewController *)self _collapseAllGroups];
  [(MRURoutingViewController *)self resetDisplayedRoutes];
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = MRURoutingViewController;
  [(MRURoutingViewController *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (!self->_onScreen)
  {
    [(MPWeakTimer *)self->_updateTimer invalidate];
    updateTimer = self->_updateTimer;
    self->_updateTimer = 0;
  }
}

- (void)setDiscoveryMode:(int64_t)a3
{
  if (self->_discoveryMode != a3)
  {
    self->_discoveryMode = a3;
    [(MRURoutingViewController *)self _setNeedsRouteDiscoveryModeUpdate];
  }
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    self->_onScreen = a3;
    [(MRURoutingViewController *)self _setNeedsRouteDiscoveryModeUpdate];
    [(MRURoutingViewController *)self _setNeedsDisplayedRoutesUpdate];
    [(MRURoutingViewController *)self updateMetadata];
    [(MRURoutingViewController *)self updateSubtitle];
    if (self->_onScreen)
    {
      v5 = [(MRURoutingViewController *)self view];
      v4 = [v5 tableView];
      [v4 reloadData];
    }
  }
}

- (void)setVolumeGroupCoordinator:(id)a3
{
  v5 = a3;
  volumeGroupCoordinator = self->_volumeGroupCoordinator;
  v8 = v5;
  if (volumeGroupCoordinator != v5)
  {
    [(MRUVolumeGroupCoordinator *)volumeGroupCoordinator setVolumeControllers:0];
    objc_storeStrong(&self->_volumeGroupCoordinator, a3);
    outputDeviceVolumeControllers = self->_outputDeviceVolumeControllers;
    self->_outputDeviceVolumeControllers = 0;
  }

  [(MRURoutingViewController *)self _reloadDisplayedRoutes];
}

- (void)setNowPlayingControllers:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_nowPlayingControllers, a3);
  v25 = self;
  v6 = [(NSArray *)self->_cachedDisplayableAvailableRoutes mutableCopy];
  v7 = MEMORY[0x1E695DFA8];
  v8 = [v6 msv_compactMap:&__block_literal_global_27];
  v9 = [v7 setWithArray:v8];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v28 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v28)
  {
    v27 = *v36;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v10;
        v11 = [*(*(&v35 + 1) + 8 * v10) endpointController];
        v12 = [v11 route];
        v13 = [v12 endpointObject];

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = v13;
        v14 = [v13 outputDevices];
        v15 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v32;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v32 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v31 + 1) + 8 * i);
              v20 = [v19 uid];
              v21 = [v9 containsObject:v20];

              if ((v21 & 1) == 0)
              {
                v22 = objc_alloc(MEMORY[0x1E6970470]);
                v39 = v19;
                v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
                v24 = [v22 initWithOutputDevices:v23];
                [v6 addObject:v24];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v16);
        }

        v10 = v30 + 1;
      }

      while (v30 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v28);
  }

  [(MRURoutingViewController *)v25 updateNowPlayingControllersForRoutes:v6];
  [(MRURoutingViewController *)v25 updateMetadata];
}

- (void)setPresentingAppBundleID:(id)a3
{
  v8 = a3;
  v5 = self->_presentingAppBundleID;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_presentingAppBundleID, a3);
      [(MRURoutingViewController *)self _updateGroupSessionDiscovery];
    }
  }
}

- (void)setGroupSessionDiscovery:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (self->_groupSessionDiscovery != v5 && ([(MRGroupSessionDiscovery *)v5 isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_groupSessionDiscovery, a3);
    v7 = MCLogCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_groupSessionDiscovery != 0;
      presentingAppBundleID = self->_presentingAppBundleID;
      v10[0] = 67109378;
      v10[1] = v8;
      v11 = 2114;
      v12 = presentingAppBundleID;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] GroupSession discovery enabled: %{BOOL}u. PresentingBundle: %{public}@", v10, 0x12u);
    }

    [(MRURoutingViewController *)self _updateDisplayedRoutes];
  }
}

- (BOOL)isInCarPlay
{
  v2 = [(CARSessionStatus *)self->_carPlaySessionStatus currentSession];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasCarKitRoute
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(MPAVRoutingController *)self->_routingController availableRoutes];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) routeSubtype] == 19)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isInVehicle
{
  if ([(MRURoutingViewController *)self isInCarPlay])
  {
    return 1;
  }

  return [(MRURoutingViewController *)self hasCarKitRoute];
}

- (BOOL)canUseUncoalescedResults
{
  v2 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager devices];
  v3 = [v2 count] == 0;

  return v3;
}

- (BOOL)shouldSuppressNativeRoutesStatusDisplay
{
  v3 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager activatedDeviceIDs];

  if (v3 && !self->_presentingAppHasActiveAVSession)
  {
    v5 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager activatedDeviceIDs];
    if ([v5 count])
    {
      v4 = !self->_didLastPickNativeRoute;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

- (void)resetDisplayedRoutes
{
  self->_hasUserSelections = 0;
  self->_didSelectShowMore = 0;
  [(MRURoutingViewController *)self _updateDisplayedRoutes];
}

- (void)setStylingProvider:(id)a3
{
  objc_storeStrong(&self->_stylingProvider, a3);

  [(MRURoutingViewController *)self _setNeedsDisplayedRoutesUpdate];
}

- (void)setContentEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  self->_contentEdgeInsets = a3;
  v8 = [(MRURoutingViewController *)self viewIfLoaded];
  [v8 setContentEdgeInsets:{top, left, bottom, right}];

  [(MRURoutingViewController *)self _reloadDisplayedRoutes];
}

- (void)setScrollIndicatorInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  self->_scrollIndicatorInsets = a3;
  v8 = [(MRURoutingViewController *)self view];
  v7 = [v8 tableView];
  [v7 setScrollIndicatorInsets:{top, left, bottom, right}];
}

- (void)setVendorSpecificManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_vendorSpecificManager, a3);
    [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager setDelegate:self];
    v6 = [(MRURoutingViewController *)self view];
    v7 = [v6 tableView];
    [v7 reloadData];

    v5 = v8;
  }
}

- (void)setCustomRows:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_customRows, a3);
  v39 = self;
  if (!self->_staticCustomRowItems)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    staticCustomRowItems = self->_staticCustomRowItems;
    self->_staticCustomRowItems = v6;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = v5;
  v41 = [v8 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v41)
  {
    v10 = *v43;
    v11 = 0x1E69A8000uLL;
    *&v9 = 138412546;
    v36 = v9;
    v37 = *v43;
    v38 = v8;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = [v13 type];
        v15 = *(v11 + 2624);
        v16 = [v14 identifier];
        v17 = [v15 symbolForTypeIdentifier:v16 error:0];

        if (v17)
        {
          v18 = [MEMORY[0x1E69DCEB0] mainScreen];
          [v18 scale];
          v20 = [v17 imageForSize:20.0 scale:{20.0, v19}];

          v21 = [MEMORY[0x1E69DCAB8] imageWithCGImage:{objc_msgSend(v20, "CGImage")}];
          v22 = [v21 imageWithRenderingMode:2];

          if (v22)
          {
            v40 = v22;
            v23 = [v14 localizedDescription];

            if (v23)
            {
              v24 = [v14 localizedDescription];
              v25 = [v13 titleOverride];
              if (v25)
              {
                v26 = v25;
                v27 = [v13 titleOverride];
                v28 = [v27 isEqualToString:&stru_1F1445548];

                if ((v28 & 1) == 0)
                {
                  v29 = [v13 titleOverride];

                  v24 = v29;
                }
              }

              v30 = MCLogCategoryDeviceAccess();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = [v13 identifier];
                *buf = v36;
                v47 = v24;
                v48 = 2112;
                v49 = v31;
                _os_log_impl(&dword_1A20FC000, v30, OS_LOG_TYPE_DEFAULT, "MRURoutingViewController - Adding Custom Row with title: %@, identifier: %@", buf, 0x16u);
              }

              v32 = v39->_staticCustomRowItems;
              v33 = MEMORY[0x1E6970498];
              v34 = [v13 identifier];
              v35 = [v33 itemWithVendorSpecificCustomRowTitle:v24 icon:v40 identifier:v34];
              [(NSMutableArray *)v32 addObject:v35];

              v10 = v37;
              v8 = v38;
              v11 = 0x1E69A8000;
            }
          }
        }
      }

      v41 = [v8 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v41);
  }
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (!a4)
  {
    return 0.0;
  }

  v4 = +[MRUFeatureFlagProvider isNewControlsEnabled];
  result = *MEMORY[0x1E69DE3D0];
  if (v4)
  {
    return 4.5;
  }

  return result;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v5 = [MEMORY[0x1E69DB878] mru_routingTitleFont];
  [v5 lineHeight];

  v6 = [MEMORY[0x1E69DB878] mru_routingSubtitleFont];
  [v6 lineHeight];

  v7 = [(MRURoutingViewController *)self traitCollection];
  [v7 displayScale];
  UIRoundToScale();
  v9 = v8;

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  [v10 setAccessibilityIdentifier:0];
  v11 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:v6];
  v12 = [v11 type];
  if (v12 > 5)
  {
    if (v12 == 6)
    {
      [v10 setIsVendorSpecific:1];
      [(MRURoutingViewController *)self updateVendorSpecificCustomRowCell:v10 forIndexPath:v6];
      goto LABEL_11;
    }

    if (v12 == 7)
    {
      [v10 setIsVendorSpecific:1];
      [(MRURoutingViewController *)self updateVendorSpecificSpeakerGroupCell:v10 forIndexPath:v6];
      goto LABEL_11;
    }
  }

  else
  {
    if ((v12 - 3) < 2)
    {
      [v10 setIsVendorSpecific:1];
      [(MRURoutingViewController *)self updateVendorSpecificCell:v10 forIndexPath:v6];
      goto LABEL_11;
    }

    if (v12 == 5)
    {
      [v10 setIsVendorSpecific:1];
      [(MRURoutingViewController *)self updateVendorSpecificSubRouteCell:v10 forIndexPath:v6];
      goto LABEL_11;
    }
  }

  [v10 setIsVendorSpecific:0];
  [(MRURoutingViewController *)self updateCell:v10 forIndexPath:v6];
LABEL_11:

  return v10;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    if (+[MRUFeatureFlagProvider isNewControlsEnabled])
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v8];

      [v9 setStylingProvider:self->_stylingProvider];
    }

    else
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v9 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:v11];

      [(MRURoutingViewController *)self updateHeaderView:v9 forSection:a4];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v91 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 deselectRowAtIndexPath:v7 animated:1];
  v8 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:v7];
  v9 = [v8 mainRoute];
  if (([(MPAVRoutingController *)self->_routingController routeIsPendingPick:v9]& 1) != 0)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = [v9 isPicked] ^ 1;
  }

  v11 = [(MPAVRoutingController *)self->_routingController routeIsPendingPick:v9];
  if (v11)
  {
    LOBYTE(v11) = [v9 isPicked];
  }

  v12 = v10 | v11;
  if ((v10 | v11))
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v74 = [v6 cellForRowAtIndexPath:v7];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v12)
  {
    if (isKindOfClass)
    {
      [v9 connect];
      v15 = v74;
      v16 = [v74 routingAccessoryView];
      WeakRetained = v16;
      v18 = 2;
LABEL_14:
      [v16 setState:v18];
LABEL_15:

      goto LABEL_16;
    }
  }

  else
  {
    if (isKindOfClass)
    {
      [v9 disconnect];
      v15 = v74;
      v16 = [v74 routingAccessoryView];
      WeakRetained = v16;
      v18 = 0;
      goto LABEL_14;
    }

    if ([v9 isHearingDeviceRoute])
    {
      +[MRUVirtualHearingAidRoute disconnect];
      v15 = v74;
      goto LABEL_16;
    }
  }

  v78 = self;
  v19 = [v8 type];
  v20 = 1;
  if (v19 > 3)
  {
    if (v19 > 5)
    {
      if (v19 == 6)
      {
        v24 = MCLogCategoryDeviceAccess();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v53 = "selected vendor specific custom row";
LABEL_75:
          _os_log_impl(&dword_1A20FC000, v24, OS_LOG_TYPE_DEFAULT, v53, buf, 2u);
        }

LABEL_76:

        goto LABEL_96;
      }

      if (v19 != 7)
      {
        goto LABEL_96;
      }

      v72 = v6;
      v73 = v9;
      v71 = v7;
      v30 = MCLogCategoryDeviceAccess();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A20FC000, v30, OS_LOG_TYPE_DEFAULT, "selected vendor specific speaker group", buf, 2u);
      }

      v31 = self;
      self->_hasUserSelections = 1;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v70 = v8;
      obj = [v8 routes];
      v32 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v84;
        v75 = *v84;
        do
        {
          v35 = 0;
          v76 = v33;
          do
          {
            if (*v84 != v34)
            {
              objc_enumerationMutation(obj);
            }

            v36 = *(*(&v83 + 1) + 8 * v35);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v37 = MCLogCategoryDeviceAccess();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v90 = v36;
                _os_log_impl(&dword_1A20FC000, v37, OS_LOG_TYPE_DEFAULT, "Error: VS speaker group contains bad class object: %@", buf, 0xCu);
              }
            }

            v38 = v36;
            if ([v38 isGroup])
            {
              v81 = 0u;
              v82 = 0u;
              v79 = 0u;
              v80 = 0u;
              v39 = [v38 subroutes];
              v40 = [v39 countByEnumeratingWithState:&v79 objects:v87 count:16];
              if (v40)
              {
                v41 = v40;
                v42 = *v80;
                while (2)
                {
                  for (i = 0; i != v41; ++i)
                  {
                    if (*v80 != v42)
                    {
                      objc_enumerationMutation(v39);
                    }

                    v44 = *(*(&v79 + 1) + 8 * i);
                    cachedActivatedVendorSpecificDeviceIDs = v31->_cachedActivatedVendorSpecificDeviceIDs;
                    v46 = [v44 routeUID];
                    LODWORD(cachedActivatedVendorSpecificDeviceIDs) = [(NSArray *)cachedActivatedVendorSpecificDeviceIDs containsObject:v46];

                    if (cachedActivatedVendorSpecificDeviceIDs)
                    {
                      v31 = v78;
                      vendorSpecificManager = v78->_vendorSpecificManager;
                      v49 = [v44 device];
                      [(MRUVendorSpecificDeviceManager *)vendorSpecificManager setDevice:v49 picked:1];

                      goto LABEL_59;
                    }

                    v31 = v78;
                  }

                  v41 = [v39 countByEnumeratingWithState:&v79 objects:v87 count:16];
                  if (v41)
                  {
                    continue;
                  }

                  break;
                }

LABEL_59:
                v34 = v75;
                v33 = v76;
              }
            }

            else
            {
              v47 = v31->_vendorSpecificManager;
              v39 = [v38 device];
              [(MRUVendorSpecificDeviceManager *)v47 setDevice:v39 picked:1];
            }

            ++v35;
          }

          while (v35 != v33);
          v33 = [obj countByEnumeratingWithState:&v83 objects:v88 count:16];
        }

        while (v33);
      }

      v20 = 1;
      v7 = v71;
      v6 = v72;
      v8 = v70;
    }

    else
    {
      if (v19 != 4)
      {
        v25 = MCLogCategoryDeviceAccess();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A20FC000, v25, OS_LOG_TYPE_DEFAULT, "selected vendor specific sub route", buf, 2u);
        }

        self->_hasUserSelections = 1;
        v26 = v9;
        [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager resolverSetLastSelectedRoute:v26];
        v27 = [v26 isAirPlayRoute];
        v28 = MCLogCategoryDeviceAccess();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        if (v27)
        {
          if (v29)
          {
            *buf = 0;
            _os_log_impl(&dword_1A20FC000, v28, OS_LOG_TYPE_DEFAULT, "sub route is AirPlay", buf, 2u);
          }

          v20 = [(MRURoutingViewController *)self handleSelectedRoutingViewItem:v8 operation:v13];
        }

        else
        {
          if (v29)
          {
            *buf = 0;
            _os_log_impl(&dword_1A20FC000, v28, OS_LOG_TYPE_DEFAULT, "sub route is not AirPlay", buf, 2u);
          }

          self->_didLastPickNativeRoute = 0;
          v68 = [v26 device];
          v20 = 1;
          [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager setDevice:v68 picked:1];
        }

        goto LABEL_96;
      }

      v52 = MCLogCategoryDeviceAccess();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A20FC000, v52, OS_LOG_TYPE_DEFAULT, "selected vendor specific group", buf, 2u);
      }

      if ([v74 showChevronExpanded])
      {
        [v74 setShowChevronExpanded:{objc_msgSend(v74, "showChevronExpanded") ^ 1}];
        [(MRURoutingViewController *)self vendorSpecificCellDidTapToExpand:v74];
        v20 = 1;
        goto LABEL_96;
      }

      v58 = v8;
      v73 = v9;
      v59 = v9;
      v60 = [v59 routeUID];
      mostRecentlyInteractedVendorSpecificGroupRouteID = self->_mostRecentlyInteractedVendorSpecificGroupRouteID;
      self->_mostRecentlyInteractedVendorSpecificGroupRouteID = v60;

      vendorSpecificGroupDisplayedSubroutes = self->_vendorSpecificGroupDisplayedSubroutes;
      v63 = [v59 routeUID];
      v64 = [(NSMutableDictionary *)vendorSpecificGroupDisplayedSubroutes objectForKeyedSubscript:v63];

      if (v64)
      {
        self->_hasUserSelections = 1;
        [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager resolverSetLastSelectedRoute:v64];
        v65 = [v64 isAirPlayRoute];
        v66 = MCLogCategoryDeviceAccess();
        v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
        if (v65)
        {
          if (v67)
          {
            *buf = 0;
            _os_log_impl(&dword_1A20FC000, v66, OS_LOG_TYPE_DEFAULT, "group row tap -- act on AirPlay subroute", buf, 2u);
          }

          v20 = [(MRURoutingViewController *)self handleSelectedRoutingViewItem:v58 operation:v13];
        }

        else
        {
          if (v67)
          {
            *buf = 0;
            _os_log_impl(&dword_1A20FC000, v66, OS_LOG_TYPE_DEFAULT, "group row tap -- act on Vendor Specific subroute", buf, 2u);
          }

          self->_didLastPickNativeRoute = 0;
          v69 = [v64 device];
          v20 = 1;
          [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager setDevice:v69 picked:1];
        }
      }

      else
      {
        [v74 setShowChevronExpanded:{objc_msgSend(v74, "showChevronExpanded") ^ 1}];
        [(MRURoutingViewController *)self vendorSpecificCellDidTapToExpand:v74];
        v20 = 1;
      }

      v8 = v58;
    }

    v9 = v73;
    goto LABEL_96;
  }

  if (v19 < 2)
  {
    v50 = [v8 isPickable];
    v24 = MCLogCategoryDeviceAccess();
    v51 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v50)
    {
      if (v51)
      {
        *buf = 0;
        _os_log_impl(&dword_1A20FC000, v24, OS_LOG_TYPE_DEFAULT, "selected native routes", buf, 2u);
      }

      v20 = [(MRURoutingViewController *)self handleSelectedRoutingViewItem:v8 operation:v13];
      goto LABEL_96;
    }

    if (v51)
    {
      *buf = 0;
      v53 = "selected unpickable native route";
      goto LABEL_75;
    }

    goto LABEL_76;
  }

  if (v19 == 2)
  {
    v54 = MCLogCategoryDefault();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = [v8 actionIdentifier];
      *buf = 138543362;
      v90 = v55;
      _os_log_impl(&dword_1A20FC000, v54, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] RCS user selected: %{public}@", buf, 0xCu);
    }

    v56 = [v8 actionIdentifier];
    v57 = [v56 isEqualToString:@"Show more"];

    if (v57)
    {
      [(MRURoutingViewController *)self showMoreAction];
    }
  }

  else if (v19 == 3)
  {
    v21 = MCLogCategoryDeviceAccess();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A20FC000, v21, OS_LOG_TYPE_DEFAULT, "selected vendor specific route", buf, 2u);
    }

    self->_hasUserSelections = 1;
    self->_didLastPickNativeRoute = 0;
    v22 = self->_vendorSpecificManager;
    v23 = v9;
    [(MRUVendorSpecificDeviceManager *)v22 resolverSetLastSelectedRoute:v23];
    v24 = [v23 device];

    [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager setDevice:v24 picked:1];
    goto LABEL_76;
  }

LABEL_96:
  v15 = v74;
  if (v8 && v20)
  {
    WeakRetained = objc_loadWeakRetained(&v78->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained routingViewController:v78 didSelectRoutingViewItem:v8];
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (BOOL)tableView:(id)a3 shouldHaveFullLengthBottomSeparatorForSection:(int64_t)a4
{
  v5 = a3;
  v6 = +[MRUFeatureFlagProvider isNewControlsEnabled](MRUFeatureFlagProvider, "isNewControlsEnabled") || [v5 numberOfSections] - 1 == a4;

  return v6;
}

- (void)vendorSpecificManagerDeviceListDidChange:(id)a3
{
  v4 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "DA device list did change - vendorSpecificManagerDeviceListDidChange", v5, 2u);
  }

  [(MRURoutingViewController *)self _refreshDisplayedRoutes];
}

- (void)vendorSpecificManager:(id)a3 deviceStateDidChange:(id)a4
{
  v5 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "DA - deviceStateDidChange", v6, 2u);
  }

  [(MRURoutingViewController *)self _updateDisplayedRoutes];
}

- (void)vendorSpecificManager:(id)a3 deviceNowPlayingInfoDidChange:(id)a4
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MRURoutingViewController *)self view];
  v7 = [v6 tableView];
  v8 = [v7 indexPathsForVisibleRows];

  v9 = self;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v8;
  v41 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v41)
  {
    v39 = self;
    v40 = *v43;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        v12 = [(MPSectionedCollection *)v9->_routingViewItems safeItemAtIndexPath:v11];
        if ([v12 type] == 5)
        {
          v13 = [v12 mainRoute];
          v14 = [v13 device];
          v15 = [v14 identifier];
          [v5 identifier];
          v17 = v16 = v5;
          v18 = [v15 isEqualToString:v17];

          if (!v18)
          {
            v5 = v16;
LABEL_23:

            goto LABEL_24;
          }

          v19 = [(MRURoutingViewController *)v9 view];
          v20 = [v19 tableView];
          v21 = [v20 cellForRowAtIndexPath:v11];

          v22 = [v16 mediaPlaybackState];
          v23 = [v21 subtitleStateController];
          v5 = v16;
          goto LABEL_18;
        }

        if ([v12 type] == 3 || objc_msgSend(v12, "type") == 4)
        {
          v13 = [v12 mainRoute];
          if ([v13 isGroup])
          {
            v24 = [v13 preferredSubroute];
            v25 = [v24 device];
            v26 = [v25 identifier];
            [v5 identifier];
            v28 = v27 = v5;
            v29 = [v26 isEqualToString:v28];

            v5 = v27;
            if ((v29 & 1) == 0)
            {
LABEL_22:
              v9 = v39;
              goto LABEL_23;
            }
          }

          else
          {
            v30 = [v13 device];
            v31 = [v30 identifier];
            v32 = [v5 identifier];
            v33 = [v31 isEqualToString:v32];

            if (!v33)
            {
              goto LABEL_22;
            }
          }

          v34 = [(MRURoutingViewController *)v39 view];
          v35 = [v34 tableView];
          v21 = [v35 cellForRowAtIndexPath:v11];

          if (!v21)
          {
            goto LABEL_22;
          }

          v22 = [v5 mediaPlaybackState];
          v23 = [v21 subtitleStateController];
          v9 = v39;
LABEL_18:
          v36 = [v5 nowPlayingSubtitle];
          if (v22 == 2)
          {
            v37 = 2;
          }

          else
          {
            v37 = 1;
          }

          [v23 setText:v36 forState:3 accessory:v37];

          goto LABEL_23;
        }

LABEL_24:
      }

      v41 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v41);
  }
}

- (void)vendorSpecificCellDidTapToExpand:(id)a3
{
  v4 = a3;
  v5 = [(MRURoutingViewController *)self view];
  v6 = [v5 tableView];
  obj = [v6 indexPathForCell:v4];

  v7 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:obj];
  v8 = [v7 mainRoute];

  v9 = [v8 routeUID];
  mostRecentlyInteractedVendorSpecificGroupRouteID = self->_mostRecentlyInteractedVendorSpecificGroupRouteID;
  self->_mostRecentlyInteractedVendorSpecificGroupRouteID = v9;

  [v8 setExpanded:{objc_msgSend(v4, "showChevronExpanded")}];
  [(MRURoutingViewController *)self updateVendorSpecificGroupExpandedRecordFor:v8];
  LODWORD(v7) = [v4 showChevronExpanded];

  if (v7)
  {
    objc_storeStrong(&self->_vendorSpecificGroupThatWasJustExpanded, obj);
  }

  [(MRURoutingViewController *)self _refreshDisplayedRoutes];
}

- (void)routingControllerAvailableRoutesDidChange:(id)a3
{
  updatesSincePresentation = self->_updatesSincePresentation;
  self->_updatesSincePresentation = updatesSincePresentation + 1;
  if (updatesSincePresentation > 4)
  {
    [(MRURoutingViewController *)self _setNeedsDisplayedRoutesUpdate];
  }

  else
  {
    [(MRURoutingViewController *)self _updateDisplayedRoutes];
  }
}

- (void)routingController:(id)a3 shouldHijackRoute:(id)a4 alertStyle:(int64_t)a5 busyRouteName:(id)a6 presentingAppName:(id)a7 completion:(id)a8
{
  v34 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v32 = v15;
  v33 = v14;
  v30 = v16;
  if (!a5)
  {
    if ([v14 isTVRoute])
    {
      v18 = +[MRUStringsProvider routingHijackTVTitle];
      +[MRUStringsProvider routingHijackTVMessage];
    }

    else
    {
      v18 = +[MRUStringsProvider routingHijackSpeakerTitle];
      +[MRUStringsProvider routingHijackSpeakerMessage];
    }
    v19 = ;
    goto LABEL_9;
  }

  if (a5 == 1)
  {
    v18 = [MRUStringsProvider routingHijackLocalTitle:v15, v16, v15, v14, v34];
    v19 = [MRUStringsProvider routingHijackLocalMessagePresentingApp:v16 busyRouteName:v15];
LABEL_9:
    v20 = v19;
    goto LABEL_10;
  }

  v20 = 0;
  v18 = 0;
LABEL_10:
  v21 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v18 message:v20 preferredStyle:{1, v30}];
  v22 = MEMORY[0x1E69DC648];
  v23 = +[MRUStringsProvider routingHijackCancelTitle];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __118__MRURoutingViewController_routingController_shouldHijackRoute_alertStyle_busyRouteName_presentingAppName_completion___block_invoke;
  v37[3] = &unk_1E7664CA0;
  v24 = v17;
  v38 = v24;
  v25 = [v22 actionWithTitle:v23 style:1 handler:v37];
  [v21 addAction:v25];

  v26 = MEMORY[0x1E69DC648];
  v27 = +[MRUStringsProvider routingHijackConfirmTitle];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __118__MRURoutingViewController_routingController_shouldHijackRoute_alertStyle_busyRouteName_presentingAppName_completion___block_invoke_2;
  v35[3] = &unk_1E7664CA0;
  v36 = v24;
  v28 = v24;
  v29 = [v26 actionWithTitle:v27 style:0 handler:v35];
  [v21 addAction:v29];

  [(MRURoutingViewController *)self showViewController:v21 sender:self];
}

- (void)routingCellDidTapToExpand:(id)a3
{
  v17 = a3;
  v4 = [(MRURoutingViewController *)self view];
  v5 = [v4 tableView];
  v6 = [v5 indexPathForCell:v17];

  v7 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:v6];
  LODWORD(v5) = [v7 isExpandable];
  v8 = [v7 type];
  if (v5)
  {
    if (v8 == 1)
    {
      v9 = [v7 mainRoute];
      v10 = [(MRURoutingViewController *)self groupUIDForRoute:v9];

      [(NSMutableSet *)self->_expandedGroupUIDs addObject:v10];
    }

    else
    {
      expandedRouteUIDs = self->_expandedRouteUIDs;
      v12 = [v7 mainRoute];
      v13 = [v12 routeUID];
      v14 = [(NSMutableSet *)expandedRouteUIDs containsObject:v13];

      v15 = self->_expandedRouteUIDs;
      v10 = [v7 mainRoute];
      v16 = [v10 routeUID];
      if (v14)
      {
        [(NSMutableSet *)v15 removeObject:v16];
      }

      else
      {
        [(NSMutableSet *)v15 addObject:v16];
      }
    }

    goto LABEL_13;
  }

  if (v8 == 4)
  {
    [(MRURoutingViewController *)self vendorSpecificCellDidTapToExpand:v17];
    goto LABEL_14;
  }

  if ([v7 type] == 7)
  {
    self->_didExpandVendorSpecificSpeakerGroup = 1;
    self->_hasUserSelections = 0;
LABEL_13:
    [(MRURoutingViewController *)self _updateDisplayedRoutes];
  }

LABEL_14:
}

- (void)sessionDidConnect:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = [(MRURoutingViewController *)self isInCarPlay];
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_INFO, "[MRURoutingViewController] CarPlay connected: %{BOOL}u", v5, 8u);
  }

  [(MRURoutingViewController *)self _refreshDisplayedRoutes];
}

- (void)sessionDidDisconnect:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5[0] = 67109120;
    v5[1] = [(MRURoutingViewController *)self isInCarPlay];
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_INFO, "[MRURoutingViewController] CarPlay disconnected: %{BOOL}u", v5, 8u);
  }

  [(MRURoutingViewController *)self _refreshDisplayedRoutes];
}

- (void)playingSessionsDidChangeNotification:(id)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MRURoutingViewController_playingSessionsDidChangeNotification___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(v4, block);
}

void __65__MRURoutingViewController_playingSessionsDidChangeNotification___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69AED10] sharedAVSystemController];
  v3 = [v2 attributeForKey:*MEMORY[0x1E69AEB08]];

  if (v3)
  {
    v4 = MCLogCategoryDeviceAccess();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v3;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "sessions: %@", buf, 0xCu);
    }

    v5 = MCLogCategoryDeviceAccess();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 1172);
      *buf = 67109120;
      LODWORD(v23) = v6;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "presentingAppPID: %d", buf, 8u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      v11 = MEMORY[0x1E69AEB20];
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v17 + 1) + 8 * v12) objectForKeyedSubscript:{*v11, v15}];
          v14 = *(*(a1 + 32) + 1172);
          if (v14 == [v13 intValue])
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __65__MRURoutingViewController_playingSessionsDidChangeNotification___block_invoke_196;
            block[3] = &unk_1E7663898;
            block[4] = *(a1 + 32);
            dispatch_async(MEMORY[0x1E69E96A0], block);
          }

          ++v12;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v3 = v15;
  }
}

- (void)setEndpointRoute:(id)a3
{
  v5 = a3;
  if (self->_endpointRoute != v5)
  {
    objc_storeStrong(&self->_endpointRoute, a3);
    msv_dispatch_on_main_queue();
  }
}

void __45__MRURoutingViewController_setEndpointRoute___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1280);
  *(v2 + 1280) = 0;

  v4 = objc_alloc_init(MRURoutingViewControllerUpdate);
  [(MRURoutingViewControllerUpdate *)v4 setShouldReload:1];
  *(*(a1 + 32) + 1145) = 0;
  [*(a1 + 32) _enqueueUpdate:v4];
}

- (BOOL)_operationRequiresOptimisticState:(int64_t)a3 routes:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 count] > 1;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v8)
  {

LABEL_12:
    v14 = (a3 == 2) & v6;
    goto LABEL_13;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v17;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v16 + 1) + 8 * i);
      v10 |= [v13 isDeviceRoute];
      v6 &= [v13 isSmartAudio];
    }

    v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v9);

  if (((a3 == 1) & v10) != 1 || [v7 count] != 1)
  {
    goto LABEL_12;
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)updateVendorSpecificSubRouteCell:(id)a3 forIndexPath:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412290;
    v31 = v7;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "updateVendorSpecificSubRouteCell forIndexPath: %@", &v30, 0xCu);
  }

  v9 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:v7];
  v10 = [v9 mainRoute];
  v11 = [v10 protocolIcon];
  [v6 setProtocolIcon:v11];

  v12 = [v10 protocolName];
  [v6 setProtocolName:v12];

  v13 = [v10 protocolIcon];
  [v6 setIconImage:v13];

  v14 = [v10 protocolName];
  [v6 setTitle:v14];

  [v6 setIndentationLevel:1];
  if ([v10 isAirPlayRoute])
  {
    v15 = [v10 underlyingNativeRoute];
    if ([v10 supportsAirPlayGrouping])
    {
      v16 = [(MRURoutingViewController *)self routesContainAirPlayGroupableRoute:self->_cachedDisplayAsPickedRoutes];
    }

    else
    {
      v16 = 0;
    }

    v20 = [(NSArray *)self->_cachedDisplayAsPickedRoutes containsObject:v15];
    v21 = [(NSArray *)self->_cachedPendingPickedRoutes containsObject:v15];
    v22 = [v6 routingAccessoryView];
    v23 = v22;
    if (v21)
    {
      v24 = 2;
    }

    else if (v20)
    {
      if (v16)
      {
        v24 = 4;
      }

      else
      {
        v24 = 3;
      }
    }

    else
    {
      v24 = v16;
    }

    [v22 setState:v24];
  }

  else
  {
    v15 = [v10 device];
    v17 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager isGroupingAvailableForDevice:v15];
    v18 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager latestStateForDevice:v15];
    v19 = 2;
    if (v18 != 10 && v18 != 30)
    {
      if (v18 == 20)
      {
        if (v17)
        {
          v19 = 4;
        }

        else
        {
          v19 = 3;
        }
      }

      else
      {
        v19 = v17;
      }
    }

    v25 = [v6 routingAccessoryView];
    [v25 setState:v19];

    v26 = [v15 mediaPlaybackState];
    v23 = [v6 subtitleStateController];
    v27 = [v15 nowPlayingSubtitle];
    if (v26 == 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    [v23 setText:v27 forState:3 accessory:v28];
  }

  [(MRURoutingViewController *)self contentEdgeInsets];
  [v6 setContentEdgeInsets:?];
  v29 = [(MRURoutingViewController *)self stylingProvider];
  [v6 setStylingProvider:v29];
}

- (void)updateVendorSpecificCell:(id)a3 forIndexPath:(id)a4
{
  v140 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v139 = v7;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "updateVendorSpecificCell forIndexPath: %@", buf, 0xCu);
  }

  v9 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:v7];
  v10 = [v9 mainRoute];
  v11 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 routeName];
    *buf = 138412290;
    v139 = v12;
    _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "updateVendorSpecificCell device: %@", buf, 0xCu);
  }

  v13 = [v10 device];
  if ([v10 isGroup])
  {
    [v6 setEnabled:1];
    [v6 setShowChevron:1];
    expandedVendorSpecificGroupUIDs = self->_expandedVendorSpecificGroupUIDs;
    v15 = [v10 routeUID];
    [v6 setShowChevronExpanded:{-[NSMutableSet containsObject:](expandedVendorSpecificGroupUIDs, "containsObject:", v15)}];

    v16 = MEMORY[0x1E69DCAB8];
    v17 = [(MRURoutingViewController *)self symbolNameForVendorSpecificRoute:v10];
    v18 = [v16 systemImageNamed:v17];
    [v6 setIconImage:v18];

    v19 = [v10 routeName];
    v111 = v9;
    v113 = v7;
    v109 = v13;
    if (v19 && (v20 = v19, [v10 routeName], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", &stru_1F1445548), v21, v20, (v22 & 1) == 0))
    {
      v30 = [v10 routeName];
      [v6 setTitle:v30];
    }

    else
    {
      [v6 setTitle:{@"Unknown Device", v13, v9, v7}];
    }

    v31 = [v10 subroutes];
    v132[0] = MEMORY[0x1E69E9820];
    v132[1] = 3221225472;
    v132[2] = __66__MRURoutingViewController_updateVendorSpecificCell_forIndexPath___block_invoke;
    v132[3] = &unk_1E7664CC8;
    v116 = v6;
    v133 = v116;
    v134 = self;
    v118 = [v31 msv_compactMap:v132];

    v32 = [v10 subroutes];
    v131[0] = MEMORY[0x1E69E9820];
    v131[1] = 3221225472;
    v131[2] = __66__MRURoutingViewController_updateVendorSpecificCell_forIndexPath___block_invoke_2;
    v131[3] = &unk_1E7664CF0;
    v131[4] = self;
    v117 = [v32 msv_compactMap:v131];

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v115 = v10;
    v33 = [v10 subroutes];
    v34 = [v33 countByEnumeratingWithState:&v127 objects:v137 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v128;
      while (2)
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v128 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v127 + 1) + 8 * i);
          if ([v38 isAirPlayRoute])
          {
            if ([(MRURoutingViewController *)self routesContainAirPlayGroupableRoute:self->_cachedDisplayAsPickedRoutes])
            {
              goto LABEL_25;
            }
          }

          else
          {
            vendorSpecificManager = self->_vendorSpecificManager;
            v40 = [v38 device];
            LOBYTE(vendorSpecificManager) = [(MRUVendorSpecificDeviceManager *)vendorSpecificManager isGroupingAvailableForDevice:v40];

            if (vendorSpecificManager)
            {
LABEL_25:
              v10 = v115;
              [v115 setTempPreferredSubrouteOverride:v38];

              v41 = 1;
              goto LABEL_26;
            }
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v127 objects:v137 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    v10 = v115;
    [v115 setTempPreferredSubrouteOverride:0];
    v41 = 0;
LABEL_26:
    v42 = v118;
    v43 = v117;
    if ([v118 count])
    {
      if ([v118 count] == 1)
      {
        v44 = [v118 firstObject];
        v45 = 3;
        goto LABEL_73;
      }

      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v52 = v118;
      v53 = [v52 countByEnumeratingWithState:&v119 objects:v135 count:16];
      if (v53)
      {
        v54 = v53;
        v44 = 0;
        v55 = *v120;
        do
        {
          for (j = 0; j != v54; ++j)
          {
            if (*v120 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = *(*(&v119 + 1) + 8 * j);
            if (([v57 isAirPlayRoute] & 1) == 0)
            {
              v58 = v57;

              v44 = v58;
            }
          }

          v54 = [v52 countByEnumeratingWithState:&v119 objects:v135 count:16];
        }

        while (v54);
      }

      else
      {
        v44 = 0;
      }

      v45 = 3;
    }

    else
    {
      if (![v117 count])
      {
        v67 = [v10 preferredSubroute];

        if (v67)
        {
          v44 = [v10 preferredSubroute];
          v45 = 1;
        }

        else
        {
          v45 = 0;
          v44 = 0;
        }

LABEL_73:
        vendorSpecificGroupDisplayedSubroutes = self->_vendorSpecificGroupDisplayedSubroutes;
        v76 = [v10 routeUID];
        [(NSMutableDictionary *)vendorSpecificGroupDisplayedSubroutes setObject:v44 forKeyedSubscript:v76];

        if (!v44)
        {
          goto LABEL_108;
        }

        v77 = [v44 protocolIcon];
        [v116 setProtocolIcon:v77];

        v78 = [v44 protocolName];
        [v116 setProtocolName:v78];

        if ([v116 showChevronExpanded])
        {
          goto LABEL_108;
        }

        v79 = [v44 isAirPlayRoute];
        v80 = [v116 subtitleStateController];
        v81 = [v116 protocolName];
        if (v79)
        {
          [v80 setText:v81 forState:6];
        }

        else
        {
          v82 = [v116 protocolIcon];
          [v80 setText:v81 icon:v82 forState:6];
        }

        if (v45 > 1)
        {
          if (v45 == 2)
          {
            v85 = [v116 routingAccessoryView];
            [v85 setState:2];
LABEL_94:

            v83 = v116;
            goto LABEL_95;
          }

          if (v41)
          {
            v86 = 4;
          }

          else
          {
            v86 = 3;
          }

          v87 = [v116 routingAccessoryView];
          [v87 setState:v86];

          if ([v44 isAirPlayRoute])
          {
            v85 = [v44 underlyingNativeRoute];
            if ([(NSArray *)self->_cachedVolumeCapableRoutes containsObject:v85])
            {
              outputDeviceVolumeControllers = self->_outputDeviceVolumeControllers;
              v89 = [v85 routeUID];
              v90 = [(NSDictionary *)outputDeviceVolumeControllers objectForKeyedSubscript:v89];
              [v116 setVolumeController:v90];
            }

            goto LABEL_94;
          }
        }

        else
        {
          v83 = v116;
          if (!v45 || ([v116 routingAccessoryView], v84 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v84, "setState:", v41), v84, (objc_msgSend(v44, "isAirPlayRoute") & 1) != 0))
          {
LABEL_95:
            objc_opt_class();
            v42 = v118;
            if (objc_opt_isKindOfClass())
            {
              v96 = v10;
              [v96 setHearingAidDelegate:self];
              if ([v96 isConnecting])
              {
                v97 = [v83 routingAccessoryView];
                [v97 setState:2];
              }
            }

            if ([v44 isAirPlayRoute])
            {
              v98 = [v44 underlyingNativeRoute];
              if (![(NSArray *)self->_cachedVolumeCapableRoutes containsObject:v98])
              {
LABEL_107:

                v43 = v117;
LABEL_108:

                v64 = v133;
                v9 = v112;
                v7 = v114;
                v13 = v110;
                goto LABEL_109;
              }

              v99 = self->_outputDeviceVolumeControllers;
              v100 = [v98 routeUID];
              v101 = [(NSDictionary *)v99 objectForKeyedSubscript:v100];
              [v116 setVolumeController:v101];
            }

            else
            {
              v102 = [v83 subtitleStateController];
              v103 = [v83 protocolName];
              v104 = [v83 protocolIcon];
              [v102 setText:v103 icon:v104 forState:6];

              v105 = [v44 device];
              v106 = [v105 mediaPlaybackState];

              v98 = [v83 subtitleStateController];
              v100 = [v44 device];
              v101 = [v100 nowPlayingSubtitle];
              if (v106 == 2)
              {
                v107 = 2;
              }

              else
              {
                v107 = 1;
              }

              [v98 setText:v101 forState:3 accessory:v107];
            }

            goto LABEL_107;
          }
        }

        v91 = [v44 device];
        v92 = [v91 mediaPlaybackState];

        v85 = [v116 subtitleStateController];
        v93 = [v44 device];
        v94 = [v93 nowPlayingSubtitle];
        if (v92 == 2)
        {
          v95 = 2;
        }

        else
        {
          v95 = 1;
        }

        [v85 setText:v94 forState:3 accessory:v95];

        goto LABEL_94;
      }

      if ([v117 count] == 1)
      {
        v44 = [v117 firstObject];
        v45 = 2;
        goto LABEL_73;
      }

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v68 = v117;
      v69 = [v68 countByEnumeratingWithState:&v123 objects:v136 count:16];
      if (v69)
      {
        v70 = v69;
        v44 = 0;
        v71 = *v124;
        do
        {
          for (k = 0; k != v70; ++k)
          {
            if (*v124 != v71)
            {
              objc_enumerationMutation(v68);
            }

            v73 = *(*(&v123 + 1) + 8 * k);
            if (([v73 isAirPlayRoute] & 1) == 0)
            {
              v74 = v73;

              v44 = v74;
            }
          }

          v70 = [v68 countByEnumeratingWithState:&v123 objects:v136 count:16];
        }

        while (v70);
      }

      else
      {
        v44 = 0;
      }

      v45 = 2;
    }

    v10 = v115;
    v43 = v117;
    v42 = v118;
    goto LABEL_73;
  }

  [v6 setShowChevron:0];
  v23 = MEMORY[0x1E69DCAB8];
  v24 = [(MRURoutingViewController *)self symbolNameForVendorSpecificRoute:v10];
  v25 = [v23 systemImageNamed:v24];
  [v6 setIconImage:v25];

  v26 = [v10 routeName];
  if (v26 && (v27 = v26, [v10 routeName], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqualToString:", &stru_1F1445548), v28, v27, (v29 & 1) == 0))
  {
    v46 = [v10 routeName];
    [v6 setTitle:v46];
  }

  else
  {
    [v6 setTitle:@"Unknown Device"];
  }

  v47 = [v10 protocolIcon];
  [v6 setProtocolIcon:v47];

  v48 = [v10 protocolName];
  [v6 setProtocolName:v48];

  v49 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager isGroupingAvailableForDevice:v13];
  v50 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager latestStateForDevice:v13];
  v51 = 2;
  if (v50 != 10 && v50 != 30)
  {
    if (v50 == 20)
    {
      if (v49)
      {
        v51 = 4;
      }

      else
      {
        v51 = 3;
      }
    }

    else
    {
      v51 = v49;
    }
  }

  v59 = [v6 routingAccessoryView];
  [v59 setState:v51];

  v60 = [v6 subtitleStateController];
  v61 = [v6 protocolName];
  v62 = [v6 protocolIcon];
  [v60 setText:v61 icon:v62 forState:6];

  v63 = [v13 mediaPlaybackState];
  v64 = [v6 subtitleStateController];
  v65 = [v13 nowPlayingSubtitle];
  if (v63 == 2)
  {
    v66 = 2;
  }

  else
  {
    v66 = 1;
  }

  [v64 setText:v65 forState:3 accessory:v66];

LABEL_109:
  [v6 setDelegate:self];
  [(MRURoutingViewController *)self contentEdgeInsets];
  [v6 setContentEdgeInsets:?];
  v108 = [(MRURoutingViewController *)self stylingProvider];
  [v6 setStylingProvider:v108];
}

id __66__MRURoutingViewController_updateVendorSpecificCell_forIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAirPlayRoute])
  {
    v4 = [v3 underlyingNativeRoute];
    v5 = [v4 isMacRoute];

    if (v5)
    {
      v6 = MEMORY[0x1E6970490];
      v7 = [v3 underlyingNativeRoute];
      v8 = [v6 _symbolImageForRoute:v7];
      [*(a1 + 32) setIconImage:v8];
    }

    v9 = *(*(a1 + 40) + 1056);
    v10 = [v3 underlyingNativeRoute];
    LOBYTE(v9) = [v9 containsObject:v10];

    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = *(*(a1 + 40) + 1104);
    v13 = [v3 routeUID];
    LODWORD(v12) = [v12 containsObject:v13];

    if (!v12)
    {
LABEL_5:
      v11 = 0;
      goto LABEL_8;
    }
  }

  v11 = v3;
LABEL_8:

  return v11;
}

id __66__MRURoutingViewController_updateVendorSpecificCell_forIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 isAirPlayRoute];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = *(v5 + 1048);
    v7 = [v3 underlyingNativeRoute];
    LOBYTE(v6) = [v6 containsObject:v7];

    if ((v6 & 1) == 0)
    {
LABEL_3:
      v8 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = *(v5 + 1112);
    v10 = [v3 routeUID];
    LODWORD(v9) = [v9 containsObject:v10];

    if (!v9)
    {
      goto LABEL_3;
    }
  }

  v8 = v3;
LABEL_6:

  return v8;
}

- (void)updateVendorSpecificCustomRowCell:(id)a3 forIndexPath:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "updateVendorSpecificCustomRowCell forIndexPath: %@", &v13, 0xCu);
  }

  v9 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:v6];
  v10 = [v9 image];
  [v7 setIconImage:v10];

  v11 = [v9 localizedTitle];
  [v7 setTitle:v11];

  [(MRURoutingViewController *)self contentEdgeInsets];
  [v7 setContentEdgeInsets:?];
  v12 = [(MRURoutingViewController *)self stylingProvider];
  [v7 setStylingProvider:v12];
}

- (void)updateVendorSpecificSpeakerGroupCell:(id)a3 forIndexPath:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v6;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "updateVendorSpecificSpeakerGroupCell forIndexPath: %@", &v19, 0xCu);
  }

  v9 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:v6];
  [v7 setEnabled:1];
  [v7 setShowChevron:1];
  [v7 setShowChevronExpanded:self->_didExpandVendorSpecificSpeakerGroup];
  v10 = [v9 leader];
  v11 = MEMORY[0x1E69DCAB8];
  v12 = [(MRURoutingViewController *)self symbolNameForVendorSpecificRoute:v10];
  v13 = [v11 systemImageNamed:v12];
  [v7 setIconImage:v13];

  [v7 setDelegate:self];
  v14 = [v9 localizedTitle];
  [v7 setTitle:v14];

  v15 = [v7 subtitleStateController];
  v16 = [v9 localizedSubtitle];
  [v15 setText:v16 forState:4];

  v17 = [v7 routingAccessoryView];
  [v17 setState:4];

  [(MRURoutingViewController *)self contentEdgeInsets];
  [v7 setContentEdgeInsets:?];
  v18 = [(MRURoutingViewController *)self stylingProvider];
  [v7 setStylingProvider:v18];
}

- (void)updateCell:(id)a3 forIndexPath:(id)a4
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:a4];
  v8 = [v7 mainRoute];
  v9 = [v8 routeUID];
  v10 = [v7 image];
  if (v10)
  {

LABEL_3:
    v11 = [v7 image];
    goto LABEL_4;
  }

  v33 = [v7 mainRoute];

  if (!v33)
  {
    goto LABEL_3;
  }

  v34 = [v7 type];
  v35 = MEMORY[0x1E6970490];
  if (v34 == 1)
  {
    v12 = [v7 routes];
    v36 = [v35 _symbolImageForRoutes:v12];
    [v6 setIconImage:v36];

    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E6970490] _symbolImageForRoute:v8];
LABEL_4:
  v12 = v11;
  [v6 setIconImage:v11];
LABEL_5:

  if (!-[MRURoutingViewController routesContainMultipleBuiltIn:](self, "routesContainMultipleBuiltIn:", self->_cachedDisplayableAvailableRoutes) && ([v8 routeSubtype] == 1 || objc_msgSend(v8, "routeSubtype") == 3))
  {
    v13 = MSVCopyLocalizedModelName();
  }

  else
  {
    v13 = [v7 localizedTitle];
  }

  v14 = v13;
  [v6 setTitle:v13];

  v15 = [v6 subtitleStateController];
  v16 = [v8 routingBatteryTextWithFormatter:self->_percentageFormatter];
  [v15 setText:v16 forState:1];

  v17 = [v6 subtitleStateController];
  v18 = [v8 routingPairedDeviceText];
  [v17 setText:v18 forState:2];

  v19 = [v6 subtitleStateController];
  v20 = [v7 localizedSubtitle];
  [v19 setText:v20 forState:4];

  if (v9)
  {
    v21 = [(NSDictionary *)self->_indexedNowPlayingControllers objectForKeyedSubscript:v9];
    v22 = [v21 metadataController];
    v23 = [v22 nowPlayingInfo];

    v24 = [(MRURoutingViewController *)self subtitleAccessoryForItem:v7 nowPlayingInfo:v23];
    v25 = [v6 subtitleStateController];
    v26 = [v23 stringForComponents:59];
    [v25 setText:v26 forState:3 accessory:v24];
  }

  v27 = [v7 mainRoute];
  v72 = v9;
  if (v27)
  {
    v28 = v27;
    v29 = [MEMORY[0x1E69B0B28] currentSettings];
    v30 = [v29 addDebugBadgeToRecommendedRoutes];

    if (v30)
    {
      v31 = [v7 mainRoute];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = [v31 outputDevice];
      }

      else
      {
        v32 = 0;
      }

      v70 = v31;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = v32;
      }

      else
      {
        v37 = 0;
      }

      v38 = v37;
      v39 = [v38 recommendation];
      v40 = [v39 reason];
      v41 = v40;
      v42 = @"(no reason provided)";
      if (v40)
      {
        v42 = v40;
      }

      v43 = v42;

      v44 = [v38 recommendation];
      v45 = [v44 sortingHint];

      if (v45)
      {
        v46 = MEMORY[0x1E696AEC0];
        v47 = [v38 recommendation];
        v48 = [v47 sortingHint];
        v49 = [v46 stringWithFormat:@"Hint: %@, %@", v48, v43];

        v43 = v49;
      }

      v50 = [v6 subtitleStateController];
      [v50 setText:v43 forState:5];
    }
  }

  v51 = [v7 mainRoute];
  v52 = [v51 routeUID];
  [v6 setAccessibilityIdentifier:v52];

  if ([v8 isSplitterCapable])
  {
    v53 = [(MRURoutingViewController *)self routesContainSplitterCapableRoute:self->_cachedDisplayAsPickedRoutes];
LABEL_32:
    v54 = v53;
    goto LABEL_34;
  }

  if ([v8 supportsAirPlayGrouping])
  {
    v53 = [(MRURoutingViewController *)self routesContainAirPlayGroupableRoute:self->_cachedDisplayAsPickedRoutes];
    goto LABEL_32;
  }

  v54 = 0;
LABEL_34:
  v71 = [v7 type];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v55 = [v7 routes];
  v56 = [v55 countByEnumeratingWithState:&v73 objects:v77 count:16];
  if (!v56)
  {

    if (![(MRURoutingViewController *)self shouldSuppressNativeRoutesStatusDisplay])
    {
      goto LABEL_50;
    }

LABEL_45:
    v64 = [v6 routingAccessoryView];
    [v64 setState:0];
    v65 = v72;
LABEL_55:

    goto LABEL_56;
  }

  v57 = v56;
  v68 = v54;
  v69 = v6;
  v58 = 0;
  v59 = 0;
  v60 = *v74;
  do
  {
    for (i = 0; i != v57; ++i)
    {
      if (*v74 != v60)
      {
        objc_enumerationMutation(v55);
      }

      v62 = *(*(&v73 + 1) + 8 * i);
      v59 |= [(NSArray *)self->_cachedDisplayAsPickedRoutes containsObject:v62];
      v58 |= [(NSArray *)self->_cachedPendingPickedRoutes containsObject:v62];
    }

    v57 = [v55 countByEnumeratingWithState:&v73 objects:v77 count:16];
  }

  while (v57);

  v6 = v69;
  v54 = v68;
  if ([(MRURoutingViewController *)self shouldSuppressNativeRoutesStatusDisplay])
  {
    goto LABEL_45;
  }

  if (v58)
  {
    v63 = 2;
    goto LABEL_51;
  }

  if ((v59 & 1) == 0)
  {
LABEL_50:
    v63 = v54;
    goto LABEL_51;
  }

  if (v68)
  {
    v63 = 4;
  }

  else
  {
    v63 = 3;
  }

LABEL_51:
  v65 = v72;
  v66 = [v6 routingAccessoryView];
  [v66 setState:v63];

  if ([(NSArray *)self->_cachedVolumeCapableRoutes containsObject:v8]&& v72 && v71 != 1)
  {
    v64 = [(NSDictionary *)self->_outputDeviceVolumeControllers objectForKey:v72];
    [v6 setVolumeController:v64];
    goto LABEL_55;
  }

LABEL_56:
  [v6 setDelegate:self];
  [v6 setShowChevron:{objc_msgSend(v7, "isExpandable")}];
  [v6 setShowChevronExpanded:{-[NSMutableSet containsObject:](self->_expandedRouteUIDs, "containsObject:", v65)}];
  [v6 setIndentationLevel:{objc_msgSend(v7, "nestedLevel")}];
  [v6 setEnabled:{objc_msgSend(v7, "enabled")}];
  [(MRURoutingViewController *)self contentEdgeInsets];
  [v6 setContentEdgeInsets:?];
  v67 = [(MRURoutingViewController *)self stylingProvider];
  [v6 setStylingProvider:v67];
}

- (void)updateHeaderView:(id)a3 forSection:(int64_t)a4
{
  routingViewItems = self->_routingViewItems;
  v7 = a3;
  v8 = [(MPSectionedCollection *)routingViewItems sectionAtIndex:a4];
  [v7 setTitle:v8];

  [(MRURoutingViewController *)self contentEdgeInsets];
  [v7 setContentEdgeInsets:?];
  v9 = [(MRURoutingViewController *)self stylingProvider];
  [v7 setStylingProvider:v9];
}

- (void)updateNowPlayingControllersForRoutes:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v41;
    v28 = *v41;
    do
    {
      v8 = 0;
      v29 = v6;
      do
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v40 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v31 = v8;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = self->_nowPlayingControllers;
          v10 = [(NSArray *)v34 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v37;
            v32 = v9;
            while (2)
            {
              v13 = 0;
              v33 = v11;
              do
              {
                if (*v37 != v12)
                {
                  objc_enumerationMutation(v34);
                }

                v14 = *(*(&v36 + 1) + 8 * v13);
                v15 = [v14 identifier];
                v16 = [v14 endpointController];
                v17 = [v9 routeUID];
                if ([v16 containsOutputDeviceWithRouteUID:v17] && (objc_msgSend(v9, "routeUID"), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v19 = v18;
                  v20 = v12;
                  [(MRURoutingViewController *)self endpointRoute];
                  v22 = v21 = self;
                  v23 = [v22 routeUID];
                  if (![v23 isEqualToString:v15])
                  {

                    self = v21;
                    v9 = v32;
LABEL_22:
                    v24 = [v9 routeUID];
                    [v27 setObject:v14 forKeyedSubscript:v24];

                    [v14 addObserver:self];
                    goto LABEL_23;
                  }

                  showMetadataForEndpointRoute = v21->_showMetadataForEndpointRoute;

                  self = v21;
                  v12 = v20;
                  v9 = v32;
                  v11 = v33;
                  if (showMetadataForEndpointRoute)
                  {
                    goto LABEL_22;
                  }
                }

                else
                {
                }

                ++v13;
              }

              while (v11 != v13);
              v11 = [(NSArray *)v34 countByEnumeratingWithState:&v36 objects:v44 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

LABEL_23:

          v7 = v28;
          v6 = v29;
          v8 = v31;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v6);
  }

  v25 = [v27 copy];
  indexedNowPlayingControllers = self->_indexedNowPlayingControllers;
  self->_indexedNowPlayingControllers = v25;
}

- (void)updateMetadata
{
  v42 = *MEMORY[0x1E69E9840];
  if (self->_onScreen)
  {
    v2 = self;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v3 = [(MRURoutingViewController *)self view];
    v4 = [v3 tableView];
    v5 = [v4 indexPathsForVisibleRows];

    obj = v5;
    v6 = [v5 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v38;
      v9 = &OBJC_IVAR___MediaControlsPresentationController__presentingView;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v38 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v37 + 1) + 8 * i);
          v12 = [*(&v2->super.super.super.isa + v9[304]) safeItemAtIndexPath:v11];
          v13 = [v12 type];
          v14 = [v12 type];
          v15 = [v12 type];
          v16 = [v12 type];
          if (v13 != 3 && v14 != 4 && v15 != 5 && v16 != 6)
          {
            indexedNowPlayingControllers = v2->_indexedNowPlayingControllers;
            v21 = [v12 mainRoute];
            v22 = [v21 routeUID];
            v36 = [(NSDictionary *)indexedNowPlayingControllers objectForKeyedSubscript:v22];

            v23 = [(MRURoutingViewController *)v2 view];
            v24 = [v23 tableView];
            v35 = [v24 cellForRowAtIndexPath:v11];

            v25 = [v36 metadataController];
            v26 = [v25 nowPlayingInfo];

            v27 = [(MRURoutingViewController *)v2 subtitleAccessoryForItem:v12 nowPlayingInfo:v26];
            [v35 subtitleStateController];
            v28 = v2;
            v29 = v9;
            v31 = v30 = v8;
            [v26 stringForComponents:59];
            v33 = v32 = v7;
            [v31 setText:v33 forState:3 accessory:v27];

            v7 = v32;
            v8 = v30;
            v9 = v29;
            v2 = v28;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v7);
    }
  }
}

- (void)updateMetadataForNowPlayingController:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MRURoutingViewController *)self view];
  v6 = [v5 tableView];
  v7 = [v6 indexPathsForVisibleRows];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v7;
  v31 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v31)
  {
    v9 = *v33;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v8);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [(MPSectionedCollection *)self->_routingViewItems safeItemAtIndexPath:v11, v30];
        v13 = [v12 mainRoute];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          indexedNowPlayingControllers = self->_indexedNowPlayingControllers;
          v16 = [v12 mainRoute];
          v17 = [v16 routeUID];
          v18 = [(NSDictionary *)indexedNowPlayingControllers objectForKeyedSubscript:v17];

          if (v18 == v4)
          {
            v19 = [(MRURoutingViewController *)self view];
            v20 = [v19 tableView];
            v30 = [v20 cellForRowAtIndexPath:v11];

            v21 = [v4 metadataController];
            v22 = [v21 nowPlayingInfo];

            v23 = [(MRURoutingViewController *)self subtitleAccessoryForItem:v12 nowPlayingInfo:v22];
            v24 = [v30 subtitleStateController];
            [v22 stringForComponents:59];
            v25 = self;
            v26 = v9;
            v27 = v8;
            v29 = v28 = v4;
            [v24 setText:v29 forState:3 accessory:v23];

            v4 = v28;
            v8 = v27;
            v9 = v26;
            self = v25;
          }
        }
      }

      v31 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v31);
  }
}

- (void)updateSubtitle
{
  onScreen = self->_onScreen;
  subtitleUpdateTimer = self->_subtitleUpdateTimer;
  if (onScreen)
  {
    if (!subtitleUpdateTimer)
    {
      v5 = objc_alloc(MEMORY[0x1E6970A50]);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __42__MRURoutingViewController_updateSubtitle__block_invoke;
      v9[3] = &unk_1E7663898;
      v9[4] = self;
      v6 = [v5 initWithInterval:MEMORY[0x1E69E96A0] queue:v9 block:0.24 * 2.0 + 4.0];
      v7 = self->_subtitleUpdateTimer;
      self->_subtitleUpdateTimer = v6;
    }
  }

  else
  {
    [(MPWeakTimer *)subtitleUpdateTimer invalidate];
    v8 = self->_subtitleUpdateTimer;
    self->_subtitleUpdateTimer = 0;
  }
}

void __42__MRURoutingViewController_updateSubtitle__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) view];
  v3 = [v2 tableView];
  v4 = [v3 indexPathsForVisibleRows];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [*(a1 + 32) view];
        v11 = [v10 tableView];
        v12 = [v11 cellForRowAtIndexPath:v9];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v12 transitionToNextVisibleStateWithDuration:0.24];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (int64_t)subtitleAccessoryForItem:(id)a3 nowPlayingInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 type];
  if (v7 == 1)
  {
    if ([v6 isPlaying])
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else if (v7)
  {
    v9 = 0;
  }

  else if ([v6 isPlaying])
  {
    v8 = [v5 mainRoute];
    if ([v8 isProxyGroupPlayer])
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_wouldShareAudioForPickedRoute:(id)a3 operation:(int64_t)a4 pickedRoutes:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 firstObject];
  if (a4 == 1 && [v8 count] == 1 && objc_msgSend(v7, "supportsGrouping"))
  {
    v10 = [v9 supportsGrouping];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_wouldEndGroupSessionForViewItem:(id)a3 operation:(int64_t)a4 pickedRoutes:(id)a5
{
  v7 = a5;
  v8 = [a3 routes];
  v9 = [v7 mutableCopy];
  switch(a4)
  {
    case 0:
      goto LABEL_9;
    case 1:
      v16 = [v7 firstObject];
      if ([v16 supportsGrouping])
      {
        v17 = [v8 firstObject];
        v18 = [v17 supportsGrouping];

        if (v18)
        {
          v19 = [v7 arrayByAddingObjectsFromArray:v8];
          break;
        }
      }

      else
      {
      }

LABEL_9:
      v20 = [v8 mutableCopy];

      v9 = v20;
      break;
    case 2:
      v10 = MEMORY[0x1E695DFD8];
      v11 = [v8 msv_map:&__block_literal_global_214];
      v12 = [v10 setWithArray:v11];

      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __84__MRURoutingViewController__wouldEndGroupSessionForViewItem_operation_pickedRoutes___block_invoke_2;
      v24[3] = &unk_1E7664D38;
      v25 = v12;
      v13 = v12;
      v14 = [v9 msv_filter:v24];
      v15 = [v14 mutableCopy];

      v9 = v15;
      break;
  }

  v21 = [v9 msv_compactMap:&__block_literal_global_218];
  v22 = MRGroupSessionRouteTypeForOutputDevices() == 0;

  return v22;
}

uint64_t __84__MRURoutingViewController__wouldEndGroupSessionForViewItem_operation_pickedRoutes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 routeUID];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

- (void)handleGroupSessionJoinWithPickedRoute:(id)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = *MEMORY[0x1E69B0938];
  v11[0] = &unk_1F148B208;
  v5 = *MEMORY[0x1E69B0930];
  v10[0] = v4;
  v10[1] = v5;
  v6 = [v3 discoveredGroupSession];
  v7 = [v6 identifier];
  v10[2] = *MEMORY[0x1E69B0940];
  v11[1] = v7;
  v11[2] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v9 = v3;
  MRGroupSessionSendEvent();
}

void __66__MRURoutingViewController_handleGroupSessionJoinWithPickedRoute___block_invoke(int8x16_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = MCLogCategoryDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = a1[2].i64[0];
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_ERROR, "[MRURoutingViewController] Failed to launch Music for group session: %{public}@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRURoutingViewController_handleGroupSessionJoinWithPickedRoute___block_invoke_221;
  block[3] = &unk_1E76639D0;
  v6 = a1[2];
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __66__MRURoutingViewController_handleGroupSessionJoinWithPickedRoute___block_invoke_221(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E6970498] itemWithRoute:*(a1 + 40)];
    [v6 routingViewController:v4 didSelectRoutingViewItem:v5];
  }
}

- (void)_displayShareAudioDisabledAlertForReason:(id)a3
{
  v7 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:a3 preferredStyle:1];
  v4 = MEMORY[0x1E69DC648];
  v5 = +[MRUStringsProvider ok];
  v6 = [v4 actionWithTitle:v5 style:0 handler:0];
  [v7 addAction:v6];

  [(MRURoutingViewController *)self showViewController:v7 sender:self];
}

- (void)_displayEndGroupSessionWithCompletion:(id)a3
{
  v4 = a3;
  v8 = +[MRUStringsProvider groupSessionEndTitle];
  v5 = +[MRUStringsProvider groupSessionEndBody];
  v6 = +[MRUStringsProvider groupSessionEndConfirm];
  v7 = +[MRUStringsProvider groupSessionEndCancel];
  [(MRURoutingViewController *)self _displayGroupSessionAlertWithTitle:v8 body:v5 confirmTitle:v6 cancelTitle:v7 completion:v4];
}

- (void)_displayGroupSessionAlertWithTitle:(id)a3 body:(id)a4 confirmTitle:(id)a5 cancelTitle:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = MEMORY[0x1E69DC650];
  v14 = a6;
  v15 = a5;
  v16 = [v13 alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v17 = MEMORY[0x1E69DC648];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __104__MRURoutingViewController__displayGroupSessionAlertWithTitle_body_confirmTitle_cancelTitle_completion___block_invoke;
  v28[3] = &unk_1E7664CA0;
  v18 = v12;
  v29 = v18;
  v19 = [v17 actionWithTitle:v15 style:2 handler:v28];

  [v16 addAction:v19];
  v20 = MEMORY[0x1E69DC648];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __104__MRURoutingViewController__displayGroupSessionAlertWithTitle_body_confirmTitle_cancelTitle_completion___block_invoke_2;
  v26 = &unk_1E7664CA0;
  v27 = v18;
  v21 = v18;
  v22 = [v20 actionWithTitle:v14 style:0 handler:&v23];

  [v16 addAction:{v22, v23, v24, v25, v26}];
  [(MRURoutingViewController *)self showViewController:v16 sender:self];
}

- (void)_setNeedsRouteDiscoveryModeUpdate
{
  if (self->_onScreen)
  {
    discoveryMode = self->_discoveryMode;
  }

  else
  {
    discoveryMode = 0;
  }

  if ([(MPAVRoutingController *)self->_routingController discoveryMode]!= discoveryMode)
  {
    [(MPAVRoutingController *)self->_routingController setDiscoveryMode:discoveryMode];

    notify_post("com.apple.airplay.startlogging");
  }
}

- (void)_setNeedsDisplayedRoutesUpdate
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MRURoutingViewController__setNeedsDisplayedRoutesUpdate__block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_setupUpdateTimerIfNecessary
{
  if (self->_onScreen && !self->_updateTimer)
  {
    v3 = MEMORY[0x1E69E96A0];
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x1E6970A50]);
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __56__MRURoutingViewController__setupUpdateTimerIfNecessary__block_invoke;
    v10 = &unk_1E7663AE8;
    objc_copyWeak(&v11, &location);
    v5 = [v4 initWithInterval:MEMORY[0x1E69E96A0] queue:&v7 block:2.0];
    updateTimer = self->_updateTimer;
    self->_updateTimer = v5;

    [(MRURoutingViewController *)self _updateDisplayedRoutes:v7];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __56__MRURoutingViewController__setupUpdateTimerIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained needsDisplayedRoutesUpdate])
  {
    [WeakRetained _updateDisplayedRoutes];
  }
}

- (void)_updateGroupSessionDiscovery
{
  presentingAppBundleID = self->_presentingAppBundleID;
  if (presentingAppBundleID)
  {
    v4 = presentingAppBundleID;
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [v5 bundleIdentifier];

    v4 = v9;
  }

  v10 = v4;
  v6 = MRBundlePermittedForGroupSessions();
  groupSessionDiscovery = self->_groupSessionDiscovery;
  if (v6)
  {
    if (!groupSessionDiscovery)
    {
      v8 = [objc_alloc(MEMORY[0x1E69B0A38]) initWithDelegate:self];
      [(MRURoutingViewController *)self setGroupSessionDiscovery:v8];
    }
  }

  else if (groupSessionDiscovery)
  {
    [(MRURoutingViewController *)self setGroupSessionDiscovery:0];
  }
}

- (id)_displayableRoutesInRoutes:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69B0B28] currentSettings];
  v6 = [v5 supportRouteRecommendations];

  if (v6)
  {
    v7 = [(MRURoutingViewController *)self _recommendedRoutesFromRoutes:v4];

    v4 = v7;
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithArray:v4];
  v9 = [MEMORY[0x1E69B0B28] currentSettings];
  v10 = [v9 routePickerAirPlayAllowList];

  v11 = [MEMORY[0x1E69B0B28] currentSettings];
  v12 = [v11 routePickerAirPlayDenyList];

  if ([v10 count])
  {
    v13 = v21;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v14 = __55__MRURoutingViewController__displayableRoutesInRoutes___block_invoke;
    v15 = v10;
  }

  else
  {
    if (![v12 count])
    {
      goto LABEL_8;
    }

    v13 = v20;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v14 = __55__MRURoutingViewController__displayableRoutesInRoutes___block_invoke_2;
    v15 = v12;
  }

  v13[2] = v14;
  v13[3] = &unk_1E7664D38;
  v13[4] = v15;
  v16 = [v4 msv_filter:v13];
  v17 = [v16 mutableCopy];

  v8 = v17;
LABEL_8:
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __55__MRURoutingViewController__displayableRoutesInRoutes___block_invoke_3;
  v19[3] = &unk_1E7664DA8;
  v19[4] = self;
  v19[5] = 577;
  [v8 sortUsingComparator:v19];

  return v8;
}

uint64_t __55__MRURoutingViewController__displayableRoutesInRoutes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAirPlayRoute])
  {
    v4 = *(a1 + 32);
    v5 = [v3 routeUID];
    v6 = [v4 containsObject:v5];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __55__MRURoutingViewController__displayableRoutesInRoutes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAirPlayRoute])
  {
    v4 = *(a1 + 32);
    v5 = [v3 routeUID];
    v6 = [v4 containsObject:v5] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t __55__MRURoutingViewController__displayableRoutesInRoutes___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (*(v7 + 1145) == 1)
  {
    v8 = [*(v7 + 1040) indexOfObject:v5];
    v9 = [*(*(a1 + 32) + 1040) indexOfObject:v6];
    v10 = v8 < v9 ? -1 : 1;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_69;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = [*(*(a1 + 32) + 1176) dataSource];
      v42 = [v18 routeIsLeaderOfEndpoint:v5];

      v19 = [*(*(a1 + 32) + 1176) dataSource];
      v41 = [v19 routeIsLeaderOfEndpoint:v6];

      v46 = [v5 supportsGrouping];
      v45 = [v6 supportsGrouping];
      v44 = [v5 isHomePodRoute];
      v43 = [v6 isHomePodRoute];
      v53 = [v5 isW1Route];
      v52 = [v6 isW1Route];
      v55 = [v5 isH1Route];
      v54 = [v6 isH1Route];
      v57 = [v5 isDisplayedAsPicked];
      v56 = [v6 isDisplayedAsPicked];
      if ([v5 isAppleTVRoute] & 1) != 0 || (objc_msgSend(v5, "isTVRoute"))
      {
        v50 = 1;
      }

      else
      {
        v50 = [v5 containsDeviceWithSubtype:18];
      }

      if ([v6 isAppleTVRoute] & 1) != 0 || (objc_msgSend(v6, "isTVRoute"))
      {
        v49 = 1;
      }

      else
      {
        v49 = [v6 containsDeviceWithSubtype:18];
      }

      v48 = [v5 supportsGrouping];
      v47 = [v6 supportsGrouping];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = v5;
      }

      else
      {
        v20 = 0;
      }

      v16 = v20;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v6;
      }

      else
      {
        v21 = 0;
      }

      v17 = v21;
      v22 = [v16 outputDevice];
      v23 = [v22 recommendation];
      v59 = [v23 sortingHint];

      v24 = [v17 outputDevice];
      v25 = [v24 recommendation];
      v58 = [v25 sortingHint];

      v26 = [v16 outputDevice];
      v27 = [v26 recommendation];
      v51 = [v27 isConservativelyFiltered];

      v28 = [v17 outputDevice];
      v29 = [v28 recommendation];
      v30 = [v29 isConservativelyFiltered];

      v31 = [v16 outputDevice];
      v32 = [v31 isActivatedForContinuityScreen];

      v33 = [v17 outputDevice];
      v34 = [v33 isActivatedForContinuityScreen];

      if ([*(a1 + 32) sortByIsVideoRoute])
      {
        LOBYTE(v35) = 0;
      }

      else
      {
        v35 = [*(*(a1 + 32) + 1176) representsLongFormVideoContent] ^ 1;
      }

      if (![v5 pickableRouteType] && objc_msgSend(v6, "pickableRouteType"))
      {
        goto LABEL_64;
      }

      if (![v6 pickableRouteType] && objc_msgSend(v5, "pickableRouteType"))
      {
LABEL_66:
        v10 = 1;
        goto LABEL_67;
      }

      if (v34 & 1 | ((v32 & 1) == 0))
      {
        if (!(v32 & 1 | ((v34 & 1) == 0)))
        {
          goto LABEL_66;
        }

        if (v56 & 1 | ((v57 & 1) == 0))
        {
          if (!(v57 & 1 | ((v56 & 1) == 0)))
          {
            goto LABEL_66;
          }

          if (v54 & 1 | ((v55 & 1) == 0))
          {
            if (!(v55 & 1 | ((v54 & 1) == 0)))
            {
              goto LABEL_66;
            }

            if (v52 & 1 | ((v53 & 1) == 0))
            {
              if (!(v53 & 1 | ((v52 & 1) == 0)))
              {
                goto LABEL_66;
              }

              if (![v5 isKnown] || objc_msgSend(v6, "isKnown"))
              {
                if ([v5 isKnown] & 1) == 0 && (objc_msgSend(v6, "isKnown"))
                {
                  goto LABEL_66;
                }

                if (v51 & 1 | ((v30 & 1) == 0))
                {
                  if (!(v30 & 1 | ((v51 & 1) == 0)))
                  {
                    goto LABEL_66;
                  }

                  if (![v5 isNearby] || objc_msgSend(v6, "isNearby"))
                  {
                    if ([v5 isNearby] & 1) == 0 && (objc_msgSend(v6, "isNearby"))
                    {
                      goto LABEL_66;
                    }

                    if (!v59 || v58)
                    {
                      if (!v59 && v58)
                      {
                        goto LABEL_66;
                      }

                      if (v59 && v58)
                      {
                        v10 = [v59 compare:v58];
LABEL_67:

                        goto LABEL_68;
                      }

                      if (v35 & 1 | ((v48 & v50 & 1) == 0) | v47 & v49 & 1)
                      {
                        if (!(v35 & 1 | ((v47 & v49 & 1) == 0) | v48 & v50 & 1))
                        {
                          goto LABEL_66;
                        }

                        if (v45 & 1 | ((v46 & 1) == 0))
                        {
                          if (!(v46 & 1 | ((v45 & 1) == 0)))
                          {
                            goto LABEL_66;
                          }

                          if (v35 & 1 | ((v50 & 1) == 0) | v49 & 1)
                          {
                            if (!(v35 & 1 | ((v49 & 1) == 0) | v50 & 1))
                            {
                              goto LABEL_66;
                            }

                            if (v43 & 1 | ((v44 & 1) == 0))
                            {
                              if (!(v44 & 1 | ((v43 & 1) == 0)))
                              {
                                goto LABEL_66;
                              }

                              if (v41 & 1 | ((v42 & 1) == 0))
                              {
                                if (v42 & 1 | ((v41 & 1) == 0))
                                {
                                  v37 = [v5 routeName];
                                  v38 = [v6 routeName];
                                  v10 = [v37 compare:v38 options:*(a1 + 40)];

                                  if (!v10)
                                  {
                                    v39 = [v5 routeUID];
                                    v40 = [v6 routeUID];
                                    v10 = [v39 compare:v40 options:*(a1 + 40)];
                                  }

                                  goto LABEL_67;
                                }

                                goto LABEL_66;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_64:
      v10 = -1;
      goto LABEL_67;
    }
  }

  v12 = [v5 isDisplayedAsPicked];
  v13 = [v6 isDisplayedAsPicked];
  if (v12 && !v13)
  {
    v10 = -1;
    goto LABEL_69;
  }

  if (!(v12 & 1 | ((v13 & 1) == 0)))
  {
    v10 = 1;
    goto LABEL_69;
  }

  v14 = [v5 routeName];
  v15 = [v6 routeName];
  v10 = [v14 compare:v15 options:*(a1 + 40)];

  if (!v10)
  {
    v16 = [v5 routeUID];
    v17 = [v6 routeUID];
    v10 = [v16 compare:v17 options:*(a1 + 40)];
LABEL_68:
  }

LABEL_69:

  return v10;
}

- (id)_recommendedRoutesFromRoutes:(id)a3
{
  v3 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__MRURoutingViewController__recommendedRoutesFromRoutes___block_invoke_3;
  v7[3] = &unk_1E7664E38;
  v8 = v3;
  v9 = &__block_literal_global_229;
  v4 = v3;
  v5 = [v4 msv_compactMap:v7];

  return v5;
}

id __57__MRURoutingViewController__recommendedRoutesFromRoutes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__MRURoutingViewController__recommendedRoutesFromRoutes___block_invoke_2;
  v8[3] = &unk_1E7664DF0;
  v9 = v4;
  v5 = v4;
  v6 = [a3 msv_compactMap:v8];

  return v6;
}

id __57__MRURoutingViewController__recommendedRoutesFromRoutes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isAirPlayRoute])
  {
    v4 = [v3 groupUID];
    v5 = [*(a1 + 32) groupUID];
    if (([v4 isEqualToString:v5] & 1) != 0 || objc_msgSend(v3, "isEqual:", *(a1 + 32)))
    {
      v6 = v3;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __57__MRURoutingViewController__recommendedRoutesFromRoutes___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 isAirPlayRoute])
  {
    v4 = (*(*(a1 + 40) + 16))();
    v5 = [v4 msv_flatMap:&__block_literal_global_232];
    if ([v5 count])
    {
      v6 = +[MRURouteRecommender sharedInstance];
      v7 = [v6 recommendationForGroupedOutputDevices:v5];

      if (!v7)
      {
        v8 = +[MRURouteRecommender sharedInstance];
        [v8 donateGroupedOutputDevices:v5];
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = v5;
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v15 + 1) + 8 * i) setRecommendation:{v7, v15}];
          }

          v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v11);
      }
    }
  }

  return v3;
}

void *__57__MRURoutingViewController__recommendedRoutesFromRoutes___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 outputDevices];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = v4;

  return v4;
}

- (id)_displayAsPickedRoutesInRoutes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 isDisplayedAsPicked])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_airPlayRoutesInRoutes:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 isAirPlayRoute])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_mergeRoutes:(id)a3 withCoalescedResult:(id)a4
{
  v142 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v97 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count") + objc_msgSend(v6, "count")}];
  v99 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v104 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v107 = v6;
  v105 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = v7;
  v101 = [obj countByEnumeratingWithState:&v130 objects:v141 count:16];
  if (!v101)
  {
    goto LABEL_71;
  }

  v100 = *v131;
  p_superclass = MediaControlsMaterialView.superclass;
  v106 = self;
  do
  {
    v9 = 0;
    do
    {
      if (*v131 != v100)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v130 + 1) + 8 * v9);
      v11 = [v10 endpoints];
      v12 = [v11 count];

      if (v12 >= 2)
      {
        v13 = [objc_alloc((p_superclass + 64)) initWithDevice:v10];
        v14 = MCLogCategoryDeviceAccess();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v10 endpoints];
          v16 = [v15 count];
          *buf = 134218242;
          v138 = v16;
          v139 = 2112;
          v140 = v13;
          _os_log_impl(&dword_1A20FC000, v14, OS_LOG_TYPE_DEFAULT, "_mergeRoutes - Found a route group with %lu endpoints: %@", buf, 0x16u);
        }

        v102 = v9;
        if ([(MRURoutingViewController *)self isVendorSpecificGroupStatusRecorded:v13])
        {
          [(MRURoutingViewController *)self applyVendorSpecificGroupExpandedRecord:v13];
        }

        else
        {
          [(MRURoutingViewController *)self updateVendorSpecificGroupExpandedRecordFor:v13];
        }

        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v36 = [v10 endpoints];
        v37 = [v36 allValues];

        v112 = v37;
        v38 = [v37 countByEnumeratingWithState:&v126 objects:v136 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v127;
          v108 = *v127;
          v109 = v13;
          do
          {
            v41 = 0;
            v111 = v39;
            do
            {
              if (*v127 != v40)
              {
                objc_enumerationMutation(v112);
              }

              v42 = *(*(&v126 + 1) + 8 * v41);
              v43 = objc_alloc((p_superclass + 64));
              v44 = [v42 underlyingDADevice];
              v45 = [v43 initWithDevice:v44];

              [v45 setIsPreferredRoute:{objc_msgSend(v42, "selected")}];
              v46 = [v45 device];

              if (v46)
              {
                v47 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager activatedDeviceIDs];
                v48 = [v45 routeUID];
                [v45 setIsPicked:{objc_msgSend(v47, "containsObject:", v48)}];

                [v13 addSubRoute:v45];
              }

              else
              {
                v113 = v45;
                v124 = 0u;
                v125 = 0u;
                v122 = 0u;
                v123 = 0u;
                v49 = v107;
                v50 = [v49 countByEnumeratingWithState:&v122 objects:v135 count:16];
                if (v50)
                {
                  v51 = v50;
                  v52 = *v123;
LABEL_26:
                  v53 = 0;
                  while (1)
                  {
                    if (*v123 != v52)
                    {
                      objc_enumerationMutation(v49);
                    }

                    v54 = *(*(&v122 + 1) + 8 * v53);
                    v55 = [v54 routeUID];
                    v56 = [v42 airplayDeviceID];
                    v57 = [v55 isEqualToString:v56];

                    if (v57)
                    {
                      break;
                    }

                    if (v51 == ++v53)
                    {
                      v51 = [v49 countByEnumeratingWithState:&v122 objects:v135 count:16];
                      if (v51)
                      {
                        goto LABEL_26;
                      }

                      goto LABEL_32;
                    }
                  }

                  v58 = MCLogCategoryDeviceAccess();
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v138 = v54;
                    _os_log_impl(&dword_1A20FC000, v58, OS_LOG_TYPE_DEFAULT, "_mergeRoutes - Native route that was grouped: %@", buf, 0xCu);
                  }

                  v59 = v54;
                  v45 = v113;
                  [v113 setUnderlyingNativeRoute:v59];

                  v13 = v109;
                  v39 = v111;
                  if (v59)
                  {
                    [v104 addObject:v59];
                    [v105 addObject:v59];
                    [v109 addSubRoute:v113];
                    goto LABEL_39;
                  }
                }

                else
                {
LABEL_32:

                  v13 = v109;
                  v39 = v111;
                  v45 = v113;
                }

                v59 = MCLogCategoryDeviceAccess();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1A20FC000, v59, OS_LOG_TYPE_DEFAULT, "Was unable to find a current native route that matches the record in DA coalesced result", buf, 2u);
                }

LABEL_39:
                self = v106;
                p_superclass = MediaControlsMaterialView.superclass;
                v40 = v108;
              }

              ++v41;
            }

            while (v41 != v39);
            v39 = [v112 countByEnumeratingWithState:&v126 objects:v136 count:16];
          }

          while (v39);
        }

        v60 = [v13 subroutes];
        v61 = [v60 count];

        if (v61 >= 2)
        {
          [v99 addObject:v13];
LABEL_65:
          v9 = v102;
          goto LABEL_66;
        }

        v65 = [v13 subroutes];
        v66 = [v65 count];

        if (v66)
        {
          v67 = [v13 subroutes];
          v68 = [v67 firstObject];
          v69 = [v68 device];

          if (v69)
          {
            v70 = MCLogCategoryDeviceAccess();
            if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
            {
              v71 = [v13 subroutes];
              v72 = [v71 firstObject];
              v73 = [v72 device];
              *buf = 138412290;
              v138 = v73;
              _os_log_impl(&dword_1A20FC000, v70, OS_LOG_TYPE_DEFAULT, "Changing group route to single route instead with device: %@", buf, 0xCu);
            }

            v74 = objc_alloc((p_superclass + 64));
            v75 = [v13 subroutes];
            v76 = [v75 firstObject];
            v77 = [v76 device];
            v78 = [v74 initWithDevice:v77];

            v79 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager activatedDeviceIDs];
            v80 = [v78 routeUID];
            -[NSObject setIsPicked:](v78, "setIsPicked:", [v79 containsObject:v80]);

            [v99 addObject:v78];
            goto LABEL_63;
          }
        }

        else
        {
          v78 = MCLogCategoryDeviceAccess();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1A20FC000, v78, OS_LOG_TYPE_DEFAULT, "Weird situation, DA coalesced route contains only airplay routes and they have disappeared?", buf, 2u);
          }

LABEL_63:
        }

        [(MRURoutingViewController *)self clearVendorSpecificGroupExpandedRecordFor:v13];
        goto LABEL_65;
      }

      v17 = [v10 endpoints];
      v18 = [v17 count];

      if (v18 == 1)
      {
        v19 = [v10 endpoints];
        v20 = [v19 allValues];
        v21 = [v20 firstObject];
        v22 = [v21 underlyingDADevice];

        if (v22)
        {
          v23 = v9;
          v24 = MCLogCategoryDeviceAccess();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [v10 endpoints];
            v26 = [v25 allValues];
            v27 = [v26 firstObject];
            v28 = [v27 underlyingDADevice];
            *buf = 138412290;
            v138 = v28;
            _os_log_impl(&dword_1A20FC000, v24, OS_LOG_TYPE_DEFAULT, "_mergeRoutes - Single Underlying DA route found: %@", buf, 0xCu);
          }

          v29 = objc_alloc((p_superclass + 64));
          v30 = [v10 endpoints];
          v31 = [v30 allValues];
          v32 = [v31 firstObject];
          v33 = [v32 underlyingDADevice];
          v13 = [v29 initWithDevice:v33];

          v34 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager activatedDeviceIDs];
          v35 = [v13 routeUID];
          [v13 setIsPicked:{objc_msgSend(v34, "containsObject:", v35)}];

          [v99 addObject:v13];
          v9 = v23;
        }

        else
        {
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v13 = v107;
          v81 = [v13 countByEnumeratingWithState:&v118 objects:v134 count:16];
          if (v81)
          {
            v82 = v81;
            v114 = v10;
            v110 = v13;
            v103 = v9;
            v83 = *v119;
            while (2)
            {
              for (i = 0; i != v82; ++i)
              {
                if (*v119 != v83)
                {
                  objc_enumerationMutation(v110);
                }

                v85 = *(*(&v118 + 1) + 8 * i);
                v86 = [v85 routeUID];
                v87 = [v114 endpoints];
                v88 = [v87 allValues];
                v89 = [v88 firstObject];
                v90 = [v89 airplayDeviceID];
                v91 = [v86 isEqualToString:v90];

                if (v91)
                {
                  [v105 addObject:v85];
                  goto LABEL_69;
                }
              }

              v82 = [v110 countByEnumeratingWithState:&v118 objects:v134 count:16];
              if (v82)
              {
                continue;
              }

              break;
            }

LABEL_69:
            self = v106;
            p_superclass = (MediaControlsMaterialView + 8);
            v9 = v103;
            v13 = v110;
          }
        }
      }

      else
      {
        v62 = MCLogCategoryDeviceAccess();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v138 = v10;
          _os_log_impl(&dword_1A20FC000, v62, OS_LOG_TYPE_DEFAULT, "_mergeRoutes - Single and UnCoalesced DA route found: %@", buf, 0xCu);
        }

        v13 = [objc_alloc((p_superclass + 64)) initWithDevice:v10];
        v63 = [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager activatedDeviceIDs];
        v64 = [v13 routeUID];
        [v13 setIsPicked:{objc_msgSend(v63, "containsObject:", v64)}];

        [v99 addObject:v13];
      }

LABEL_66:

      ++v9;
    }

    while (v9 != v101);
    v92 = [obj countByEnumeratingWithState:&v130 objects:v141 count:16];
    v101 = v92;
  }

  while (v92);
LABEL_71:

  if ([(MRURoutingViewController *)self canUseUncoalescedResults])
  {
    v93 = v107;
  }

  else
  {
    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = __61__MRURoutingViewController__mergeRoutes_withCoalescedResult___block_invoke;
    v115[3] = &unk_1E7664E60;
    v116 = v105;
    v117 = self;
    v93 = [v107 msv_compactMap:v115];
  }

  v94 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v138 = v93;
    _os_log_impl(&dword_1A20FC000, v94, OS_LOG_TYPE_DEFAULT, "nativeRoutesThatCanBeDisplayed: %@", buf, 0xCu);
  }

  [v97 addObjectsFromArray:v93];
  [v97 addObjectsFromArray:v99];
  v95 = [objc_alloc(MEMORY[0x1E69B1470]) initWithFirst:v97 second:v104];

  return v95;
}

id __61__MRURoutingViewController__mergeRoutes_withCoalescedResult___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isAirPlayRoute] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && !objc_msgSend(*(a1 + 32), "containsObject:", v3) && (objc_msgSend(*(*(a1 + 40) + 1184), "resolverManagedAirPlayRouteIDs"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "routeUID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "containsObject:", v5), v5, v4, (v6 & 1) != 0))
  {
    v7 = MCLogCategoryDeviceAccess();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "Merge routes: skipping native route because it has not gone through the resolver yet: %@", &v10, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = v3;
  }

  return v8;
}

- (void)_createUpdateWithRefreshOnly:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__MRURoutingViewController__createUpdateWithRefreshOnly_completion___block_invoke;
  v8[3] = &unk_1E7664E88;
  v10 = a3;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(MRURoutingViewController *)self fetchAvailableRoutesWithCompletionHandler:v8];
}

void __68__MRURoutingViewController__createUpdateWithRefreshOnly_completion___block_invoke(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MRURoutingViewControllerUpdate);
  v5 = [*(*(a1 + 32) + 1176) pickedRoutes];
  v6 = [v5 copy];
  [(MRURoutingViewControllerUpdate *)v4 setPickedRoutes:v6];

  v7 = [*(*(a1 + 32) + 1176) pendingPickedRoutes];
  v8 = [v7 allObjects];
  [(MRURoutingViewControllerUpdate *)v4 setPendingPickedRoutes:v8];

  [(MRURoutingViewControllerUpdate *)v4 setNativeRoutes:v3];
  v9 = [*(*(a1 + 32) + 1184) activatedDeviceIDs];
  [(MRURoutingViewControllerUpdate *)v4 setActivatedVendorSpecificDeviceIDs:v9];

  v10 = [*(*(a1 + 32) + 1184) activatingDeviceIDs];
  v11 = [*(*(a1 + 32) + 1184) invalidatingDeviceIDs];
  v12 = [v10 arrayByAddingObjectsFromArray:v11];
  [(MRURoutingViewControllerUpdate *)v4 setPendingVendorSpecificDeviceIDs:v12];

  v13 = [*(*(a1 + 32) + 1184) availableDeviceIDs];
  [(MRURoutingViewControllerUpdate *)v4 setAvailableVendorSpecificDeviceIDs:v13];

  v14 = *(a1 + 32);
  v15 = [v14[148] coalescedDevices];
  v16 = [v14 _mergeRoutes:v3 withCoalescedResult:v15];

  v17 = [v16 first];
  v18 = [v16 second];
  v19 = MCLogCategoryDeviceAccess();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v72 = v18;
    _os_log_impl(&dword_1A20FC000, v19, OS_LOG_TYPE_DEFAULT, "nativeRoutesInVendorSpecificGroup: %@", buf, 0xCu);
  }

  [(MRURoutingViewControllerUpdate *)v4 setNativeRoutesInVendorSpecificGroup:v18];
  v20 = [*(a1 + 32) _displayableRoutesInRoutes:v17];
  [(MRURoutingViewControllerUpdate *)v4 setDisplayableAvailableRoutes:v20];

  v56 = v17;
  v57 = v16;
  v55 = v18;
  if ([*(a1 + 32) shouldSuppressNativeRoutesStatusDisplay])
  {
    [(MRURoutingViewControllerUpdate *)v4 setDisplayAsPickedRoutes:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v21 = [*(a1 + 32) _displayAsPickedRoutesInRoutes:v3];
    [(MRURoutingViewControllerUpdate *)v4 setDisplayAsPickedRoutes:v21];
  }

  -[MRURoutingViewControllerUpdate setCanGroup:](v4, "setCanGroup:", [*(*(a1 + 32) + 1176) supportsMultipleSelection]);
  -[MRURoutingViewControllerUpdate setHasPendingPickedRoutes:](v4, "setHasPendingPickedRoutes:", [*(*(a1 + 32) + 1176) hasPendingPickedRoutes]);
  v22 = [*(a1 + 32) _airPlayRoutesInRoutes:v3];
  [(MRURoutingViewControllerUpdate *)v4 setAirPlayRoutes:v22];

  v58 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(*(a1 + 32) + 1080), "count")}];
  v23 = MEMORY[0x1E695DF70];
  v24 = [(MRURoutingViewControllerUpdate *)v4 airPlayRoutes];
  v54 = [v23 arrayWithCapacity:{objc_msgSend(v24, "count")}];

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v25 = *(*(a1 + 32) + 1080);
  v26 = [v25 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v66;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v66 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v65 + 1) + 8 * i);
        v31 = [(MRURoutingViewControllerUpdate *)v4 airPlayRoutes];
        v32 = [v31 containsObject:v30];

        if ((v32 & 1) == 0)
        {
          [v58 addObject:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v27);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v33 = [(MRURoutingViewControllerUpdate *)v4 airPlayRoutes];
  v34 = [v33 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v62;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v62 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v61 + 1) + 8 * j);
        if (([*(*(a1 + 32) + 1080) containsObject:v38] & 1) == 0)
        {
          [v54 addObject:v38];
        }
      }

      v35 = [v33 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v35);
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    [*(*(a1 + 32) + 1184) resolverRemoveNativeRoutes:v58];
    [*(*(a1 + 32) + 1184) resolverAddNativeRoutes:v54];
  }

  v39 = *(a1 + 32);
  v59 = 0;
  v60 = 0;
  [v39 _configureVolumeForUpdate:v4 volumeCapableRoutes:&v60 volumeController:&v59];
  v40 = v60;
  v41 = v59;
  v42 = [v41 copy];
  v43 = *(a1 + 32);
  v44 = *(v43 + 1280);
  *(v43 + 1280) = v42;

  v45 = [v41 allValues];
  [*(*(a1 + 32) + 1208) setVolumeControllers:v45];

  v46 = [v40 copy];
  [(MRURoutingViewControllerUpdate *)v4 setVolumeCapableRoutes:v46];

  v47 = *(a1 + 32);
  v48 = [(MRURoutingViewControllerUpdate *)v4 displayableAvailableRoutes];
  [v47 updateNowPlayingControllersForRoutes:v48];

  v49 = *(a1 + 32);
  v50 = *(v49 + 1016);
  v51 = *(v49 + 1224);
  v52 = v51;
  if (v51 == v50)
  {
    v53 = 0;
  }

  else
  {
    v53 = [v51 isEqual:v50] ^ 1;
  }

  [(MRURoutingViewControllerUpdate *)v4 setShouldReload:v53];
  (*(*(a1 + 40) + 16))();
}

- (void)_updateDisplayedRoutes
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__MRURoutingViewController__updateDisplayedRoutes__block_invoke;
  v2[3] = &unk_1E7664EB0;
  v2[4] = self;
  [(MRURoutingViewController *)self _createUpdateWithRefreshOnly:0 completion:v2];
}

- (void)_refreshDisplayedRoutes
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__MRURoutingViewController__refreshDisplayedRoutes__block_invoke;
  v2[3] = &unk_1E7664EB0;
  v2[4] = self;
  [(MRURoutingViewController *)self _createUpdateWithRefreshOnly:1 completion:v2];
}

- (void)_reloadDisplayedRoutes
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __50__MRURoutingViewController__reloadDisplayedRoutes__block_invoke;
  v2[3] = &unk_1E7664EB0;
  v2[4] = self;
  [(MRURoutingViewController *)self _createUpdateWithRefreshOnly:1 completion:v2];
}

void __50__MRURoutingViewController__reloadDisplayedRoutes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setShouldReload:1];
  [*(a1 + 32) _enqueueUpdate:v3];
}

- (void)setOptimisticUpdate:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (v5)
  {
    [(MRURoutingViewController *)self _enqueueUpdate:v5];
    objc_storeStrong(&self->_optimisticUpdate, a3);
  }

  else
  {
    optimisticUpdate = self->_optimisticUpdate;
    self->_optimisticUpdate = 0;

    [(MRURoutingViewController *)self _updateDisplayedRoutes];
  }
}

- (void)didReceiveInteraction:(id)a3
{
  if (self->_collapseTimer)
  {
    [(MRURoutingViewController *)self _collapseAllGroupsAfterDelay];
  }
}

- (void)_enqueueUpdate:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (!self->_optimisticUpdate)
  {
    if (self->_isAnimatingUpdate)
    {
      objc_storeStrong(&self->_pendingUpdate, a3);
    }

    else
    {
      [(MRURoutingViewController *)self _applyUpdate:v5];
    }
  }
}

- (void)_configureVolumeForUpdate:(id)a3 volumeCapableRoutes:(id *)a4 volumeController:(id *)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = MEMORY[0x1E695DF70];
  v10 = [v8 displayAsPickedRoutes];
  v11 = [v9 arrayWithCapacity:{objc_msgSend(v10, "count")}];

  v12 = objc_alloc(MEMORY[0x1E695DF90]);
  v13 = [v8 displayAsPickedRoutes];
  v14 = [v12 initWithCapacity:{objc_msgSend(v13, "count")}];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __91__MRURoutingViewController__configureVolumeForUpdate_volumeCapableRoutes_volumeController___block_invoke;
  aBlock[3] = &unk_1E7664ED8;
  aBlock[4] = self;
  v15 = v14;
  v54 = v15;
  v16 = _Block_copy(aBlock);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __91__MRURoutingViewController__configureVolumeForUpdate_volumeCapableRoutes_volumeController___block_invoke_2;
  v50[3] = &unk_1E7664F00;
  v17 = v8;
  v51 = v17;
  v52 = self;
  v18 = _Block_copy(v50);
  if (v18[2]())
  {
    v35 = v18;
    v36 = v17;
    v37 = v15;
    v38 = a4;
    v39 = a5;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = [v17 displayAsPickedRoutes];
    v19 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v47;
      v22 = &OBJC_IVAR___MediaControlsPresentationController__presentingView;
      do
      {
        v23 = 0;
        v40 = v20;
        do
        {
          if (*v47 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v46 + 1) + 8 * v23);
          v25 = *(&self->super.super.super.isa + v22[274]);
          v26 = [v24 routeUID];
          LODWORD(v25) = [v25 containsObject:v26];

          if (v25)
          {
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v27 = [v24 subRoutes];
            v28 = [v27 countByEnumeratingWithState:&v42 objects:v55 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v43;
              do
              {
                for (i = 0; i != v29; ++i)
                {
                  if (*v43 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v42 + 1) + 8 * i);
                  v16[2](v16, v32);
                  if ([v32 isPicked])
                  {
                    [v11 addObject:v32];
                  }
                }

                v29 = [v27 countByEnumeratingWithState:&v42 objects:v55 count:16];
              }

              while (v29);
            }

            v22 = &OBJC_IVAR___MediaControlsPresentationController__presentingView;
            v20 = v40;
          }

          else
          {
            v16[2](v16, v24);
            [v11 addObject:v24];
          }

          ++v23;
        }

        while (v23 != v20);
        v20 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v20);
    }

    a4 = v38;
    a5 = v39;
    v17 = v36;
    v15 = v37;
    v18 = v35;
  }

  if (a4)
  {
    v33 = v11;
    *a4 = v11;
  }

  if (a5)
  {
    v34 = v15;
    *a5 = v15;
  }
}

void __91__MRURoutingViewController__configureVolumeForUpdate_volumeCapableRoutes_volumeController___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 routeUID];
  if (v3)
  {
    v4 = [*(*(a1 + 32) + 1280) objectForKey:v3];
    if (!v4)
    {
      v5 = objc_alloc(MEMORY[0x1E6970A20]);
      v6 = [*(a1 + 32) endpointRoute];
      v7 = [v5 initWithGroupRoute:v6 outputDeviceRoute:v8];

      v4 = [(MPVolumeController *)[MRUVolumeController alloc] initWithDataSource:v7];
    }

    [*(a1 + 40) setObject:v4 forKey:v3];
  }
}

uint64_t __91__MRURoutingViewController__configureVolumeForUpdate_volumeCapableRoutes_volumeController___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) displayAsPickedRoutes];
  v3 = [v2 count];

  if (v3 > 1)
  {
    return 1;
  }

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 1312);
  v7 = [v5 displayAsPickedRoutes];
  v8 = [v7 firstObject];
  v9 = [v8 routeUID];
  v10 = [v6 containsObject:v9];

  return v10;
}

- (id)endpointGroupUID
{
  v2 = [(MPAVEndpointRoute *)self->_endpointRoute endpoint];
  v3 = [v2 designatedGroupLeader];
  v4 = [v3 groupID];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E69B09A8] localDeviceUID];
  }

  v7 = v6;

  return v7;
}

- (void)updateExpandedGroups
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(NSDictionary *)self->_cachedRouteGrouping allKeys];
  v7 = [v3 setWithArray:v4];

  [(NSMutableSet *)self->_expandedGroupUIDs intersectSet:v7];
  if ([(NSArray *)self->_cachedPickedRoutes count]== 1)
  {
    expandedGroupUIDs = self->_expandedGroupUIDs;
    v6 = [(MRURoutingViewController *)self endpointGroupUID];
    [(NSMutableSet *)expandedGroupUIDs addObject:v6];
  }
}

- (BOOL)wasVendorSpecificGroupDisplayedAsExpanded:(id)a3
{
  expandedVendorSpecificGroupUIDs = self->_expandedVendorSpecificGroupUIDs;
  v4 = [a3 routeUID];
  LOBYTE(expandedVendorSpecificGroupUIDs) = [(NSMutableSet *)expandedVendorSpecificGroupUIDs containsObject:v4];

  return expandedVendorSpecificGroupUIDs;
}

- (BOOL)isVendorSpecificGroupStatusRecorded:(id)a3
{
  v4 = a3;
  expandedVendorSpecificGroupUIDs = self->_expandedVendorSpecificGroupUIDs;
  v6 = [v4 routeUID];
  if (([(NSMutableSet *)expandedVendorSpecificGroupUIDs containsObject:v6]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    collapsedVendorSpecificGroupUIDs = self->_collapsedVendorSpecificGroupUIDs;
    v9 = [v4 routeUID];
    v7 = [(NSMutableSet *)collapsedVendorSpecificGroupUIDs containsObject:v9];
  }

  return v7;
}

- (void)applyVendorSpecificGroupExpandedRecord:(id)a3
{
  expandedVendorSpecificGroupUIDs = self->_expandedVendorSpecificGroupUIDs;
  v4 = a3;
  v5 = [v4 routeUID];
  [v4 setExpanded:{-[NSMutableSet containsObject:](expandedVendorSpecificGroupUIDs, "containsObject:", v5)}];
}

- (void)updateVendorSpecificGroupExpandedRecordFor:(id)a3
{
  v4 = a3;
  v5 = [v4 expanded];
  expandedVendorSpecificGroupUIDs = self->_expandedVendorSpecificGroupUIDs;
  v7 = [v4 routeUID];
  if (v5)
  {
    [(NSMutableSet *)expandedVendorSpecificGroupUIDs addObject:v7];

    collapsedVendorSpecificGroupUIDs = self->_collapsedVendorSpecificGroupUIDs;
    v10 = [v4 routeUID];

    [(NSMutableSet *)collapsedVendorSpecificGroupUIDs removeObject:v10];
  }

  else
  {
    [(NSMutableSet *)expandedVendorSpecificGroupUIDs removeObject:v7];

    v9 = self->_collapsedVendorSpecificGroupUIDs;
    v10 = [v4 routeUID];

    [(NSMutableSet *)v9 addObject:v10];
  }
}

- (void)clearVendorSpecificGroupExpandedRecordFor:(id)a3
{
  expandedVendorSpecificGroupUIDs = self->_expandedVendorSpecificGroupUIDs;
  v5 = a3;
  v6 = [v5 routeUID];
  [(NSMutableSet *)expandedVendorSpecificGroupUIDs removeObject:v6];

  collapsedVendorSpecificGroupUIDs = self->_collapsedVendorSpecificGroupUIDs;
  v8 = [v5 routeUID];

  [(NSMutableSet *)collapsedVendorSpecificGroupUIDs removeObject:v8];
}

- (void)_applyUpdate:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(MRURoutingViewController *)self view];
  v6 = [v5 tableView];

  if (!v6)
  {
    goto LABEL_16;
  }

  v7 = [(MPSectionedCollection *)self->_routingViewItems copy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E6970938]);
  }

  v10 = v9;

  v11 = [(MRURoutingViewController *)self _createRoutingViewItemsForUpdate:v4];
  v12 = [v11 routeGrouping];
  v13 = [v4 pickedRoutes];
  v14 = [(MRURoutingViewController *)self _createSectionedCollection:v11 withPickedRoutes:v13];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__MRURoutingViewController__applyUpdate___block_invoke;
  aBlock[3] = &unk_1E7664F28;
  aBlock[4] = self;
  v15 = v4;
  v51 = v15;
  v16 = v14;
  v52 = v16;
  v32 = v12;
  v53 = v32;
  v17 = _Block_copy(aBlock);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __41__MRURoutingViewController__applyUpdate___block_invoke_3;
  v47[3] = &unk_1E7664F70;
  v18 = v10;
  v48 = v18;
  v19 = v16;
  v49 = v19;
  v33 = _Block_copy(v47);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __41__MRURoutingViewController__applyUpdate___block_invoke_4;
  v41[3] = &unk_1E7664F98;
  v20 = v18;
  v42 = v20;
  v21 = v19;
  v43 = v21;
  v46 = &__block_literal_global_244;
  v22 = v15;
  v44 = v22;
  v45 = self;
  v34 = _Block_copy(v41);
  if (![(MRURoutingViewControllerUpdate *)v22 shouldReload])
  {
    v23 = [v20 changeDetailsToSectionedCollection:v21 isEqualBlock:v33 isUpdatedBlock:v34];
    if (v23)
    {
      self->_isAnimatingUpdate = 1;
      v24 = [(MRURoutingViewController *)self view];
      v25 = [v24 tableView];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __41__MRURoutingViewController__applyUpdate___block_invoke_246;
      v37[3] = &unk_1E7664FC0;
      v40 = v17;
      v26 = v23;
      v38 = v26;
      v39 = self;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __41__MRURoutingViewController__applyUpdate___block_invoke_3_249;
      v36[3] = &unk_1E7664FE8;
      v36[4] = self;
      [v25 performBatchUpdates:v37 completion:v36];

      v27 = v40;
LABEL_10:

      goto LABEL_11;
    }
  }

  v17[2](v17);
  objc_storeStrong(&self->_displayedEndpointRoute, self->_endpointRoute);
  if ([(MRURoutingViewControllerUpdate *)v22 shouldReload])
  {
    v26 = [(MRURoutingViewController *)self view];
    v27 = [v26 tableView];
    [v27 reloadData];
    goto LABEL_10;
  }

LABEL_11:
  self->_needsDisplayedRoutesUpdate = 0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v29 = objc_opt_respondsToSelector();

  if (v29)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__MRURoutingViewController__applyUpdate___block_invoke_254;
    block[3] = &unk_1E7663898;
    block[4] = self;
    v30 = MEMORY[0x1E69E96A0];
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  pendingUpdate = self->_pendingUpdate;
  if (pendingUpdate == v22)
  {
    self->_pendingUpdate = 0;
  }

LABEL_16:
}

uint64_t __41__MRURoutingViewController__applyUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) displayableAvailableRoutes];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1040);
  *(v3 + 1040) = v2;

  v5 = [*(a1 + 40) pickedRoutes];
  v6 = *(a1 + 32);
  v7 = *(v6 + 1032);
  *(v6 + 1032) = v5;

  v8 = [*(a1 + 40) pendingPickedRoutes];
  v9 = *(a1 + 32);
  v10 = *(v9 + 1048);
  *(v9 + 1048) = v8;

  v11 = [*(a1 + 40) displayAsPickedRoutes];
  v12 = *(a1 + 32);
  v13 = *(v12 + 1056);
  *(v12 + 1056) = v11;

  v14 = [*(a1 + 40) volumeCapableRoutes];
  v15 = *(a1 + 32);
  v16 = *(v15 + 1064);
  *(v15 + 1064) = v14;

  objc_storeStrong((*(a1 + 32) + 1024), *(a1 + 48));
  objc_storeStrong((*(a1 + 32) + 1072), *(a1 + 56));
  v17 = [*(a1 + 40) airPlayRoutes];
  v18 = *(a1 + 32);
  v19 = *(v18 + 1080);
  *(v18 + 1080) = v17;

  v20 = [*(a1 + 40) nativeRoutes];
  v21 = *(a1 + 32);
  v22 = *(v21 + 1088);
  *(v21 + 1088) = v20;

  v23 = [*(a1 + 40) nativeRoutesInVendorSpecificGroup];
  v24 = *(a1 + 32);
  v25 = *(v24 + 1096);
  *(v24 + 1096) = v23;

  v26 = [*(a1 + 40) activatedVendorSpecificDeviceIDs];
  v27 = *(a1 + 32);
  v28 = *(v27 + 1104);
  *(v27 + 1104) = v26;

  v29 = [*(a1 + 40) pendingVendorSpecificDeviceIDs];
  v30 = *(a1 + 32);
  v31 = *(v30 + 1112);
  *(v30 + 1112) = v29;

  v32 = [*(a1 + 40) availableVendorSpecificDeviceIDs];
  v33 = *(a1 + 32);
  v34 = *(v33 + 1120);
  *(v33 + 1120) = v32;

  v35 = *(a1 + 32);

  return [v35 updateExpandedGroups];
}

BOOL __41__MRURoutingViewController__applyUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = 0;
  if ([v2 type] == 5)
  {
    v3 = [v2 mainRoute];
    v4 = [v3 isAirPlayRoute];

    if (v4)
    {
      v5 = 1;
    }
  }

  return v5;
}

uint64_t __41__MRURoutingViewController__applyUpdate___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 length];
  v8 = *(a1 + 32);
  if (v7 == 1)
  {
    v9 = [v6 section];

    v10 = [v8 sectionAtIndex:v9];
    v11 = *(a1 + 40);
    v12 = [v5 section];

    v13 = [v11 sectionAtIndex:v12];
    v14 = [v10 isEqualToString:v13];
  }

  else
  {
    v10 = [*(a1 + 32) itemAtIndexPath:v6];

    v13 = [*(a1 + 40) itemAtIndexPath:v5];

    v14 = [v10 isEqual:v13];
  }

  v15 = v14;

  return v15;
}

uint64_t __41__MRURoutingViewController__applyUpdate___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v300 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 length] == 1)
  {
    v7 = 0;
    goto LABEL_31;
  }

  v8 = [*(a1 + 32) itemAtIndexPath:v5];
  v203 = v6;
  v9 = [*(a1 + 40) itemAtIndexPath:v6];
  v10 = [v8 type];
  v205 = v9;
  v204 = v5;
  if (v10 != [v9 type])
  {
    goto LABEL_28;
  }

  v11 = [v8 type];
  if (v11 == 6)
  {
    goto LABEL_28;
  }

  v12 = v11;
  if (v11 == 2)
  {
    v7 = [v8 isEqual:v9] ^ 1;
    v13 = v9;
    goto LABEL_30;
  }

  v206 = v8;
  v252 = a1;
  if ((v11 - 3) >= 2)
  {
    v44 = (*(*(a1 + 64) + 16))();
    if (v12 == 5 && (v44 & 1) == 0)
    {
      if (((*(*(a1 + 64) + 16))() & 1) == 0)
      {
        goto LABEL_32;
      }

LABEL_28:
      v7 = 0;
      goto LABEL_29;
    }

    if (v12 == 7)
    {
      v274 = 0u;
      v275 = 0u;
      v272 = 0u;
      v273 = 0u;
      v67 = [v9 routes];
      v68 = [v67 countByEnumeratingWithState:&v272 objects:v297 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = 0;
        v71 = 0;
        v72 = *v273;
        do
        {
          for (i = 0; i != v69; ++i)
          {
            if (*v273 != v72)
            {
              objc_enumerationMutation(v67);
            }

            v74 = *(*(&v272 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              goto LABEL_99;
            }

            v75 = [*(v252 + 48) activatedVendorSpecificDeviceIDs];
            v76 = [v74 routeUID];
            v71 |= [v75 containsObject:v76];

            v77 = [*(v252 + 48) pendingPickedRoutes];
            v70 |= [v77 containsObject:v74];
          }

          v69 = [v67 countByEnumeratingWithState:&v272 objects:v297 count:16];
        }

        while (v69);
      }

      else
      {
        v70 = 0;
        LOBYTE(v71) = 0;
      }

      v270 = 0u;
      v271 = 0u;
      v268 = 0u;
      v269 = 0u;
      v248 = [v206 routes];
      v131 = [v248 countByEnumeratingWithState:&v268 objects:v296 count:16];
      if (v131)
      {
        v132 = v131;
        v133 = 0;
        v134 = 0;
        v257 = *v269;
        while (1)
        {
          for (j = 0; j != v132; ++j)
          {
            if (*v269 != v257)
            {
              objc_enumerationMutation(v248);
            }

            v136 = *(*(&v268 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

LABEL_99:
              v7 = 1;
              v8 = v206;
LABEL_29:
              v13 = v205;
              goto LABEL_30;
            }

            v137 = *(*(v252 + 56) + 1104);
            v138 = [v136 routeUID];
            v134 |= [v137 containsObject:v138];

            v139 = *(*(v252 + 56) + 1112);
            v140 = [v136 routeUID];
            v133 |= [v139 containsObject:v140];
          }

          v132 = [v248 countByEnumeratingWithState:&v268 objects:v296 count:16];
          if (!v132)
          {
            goto LABEL_104;
          }
        }
      }

      v133 = 0;
      LOBYTE(v134) = 0;
LABEL_104:

      v153 = v71 ^ v134;
      v154 = [v205 localizedTitle];
      v8 = v206;
      v155 = [v206 localizedTitle];
      v156 = [v154 isEqualToString:v155];

      v157 = [v205 localizedSubtitle];
      v158 = [v206 localizedSubtitle];
      v159 = [v157 isEqualToString:v158];

      v7 = 1;
      if ((v153 & 1) == 0)
      {
        v13 = v205;
        if (((v70 ^ v133) & 1) == 0)
        {
          v7 = v156 & v159 ^ 1;
        }

        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (v12 >= 2 && !(*(*(a1 + 64) + 16))())
    {
      goto LABEL_28;
    }

    if ((*(*(a1 + 64) + 16))())
    {
      if (((*(*(a1 + 64) + 16))() & 1) == 0)
      {
        v150 = MCLogCategoryDeviceAccess();
        if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A20FC000, v150, OS_LOG_TYPE_DEFAULT, "is update check: weird", buf, 2u);
        }

        v151 = 0;
        v152 = 0;
        v7 = 0;
        goto LABEL_147;
      }

      v91 = [v8 mainRoute];
      v92 = [v91 underlyingNativeRoute];

      v93 = [v9 mainRoute];
      v94 = [v93 underlyingNativeRoute];

      v95 = [*(a1 + 48) displayAsPickedRoutes];
      v96 = [v95 containsObject:v94];

      v97 = [*(a1 + 48) pickedRoutes];
      v98 = [v97 containsObject:v94];

      v99 = [*(a1 + 48) pendingPickedRoutes];
      v239 = v94;
      v100 = [v99 containsObject:v94];

      v101 = a1;
      v102 = [*(*(a1 + 56) + 1056) containsObject:v92];
      v103 = [*(*(v101 + 56) + 1032) containsObject:v92];
      v104 = [*(*(v101 + 56) + 1048) containsObject:v92];
    }

    else
    {
      v243 = [v8 mainRoute];
      v239 = [v9 mainRoute];
      v264 = 0u;
      v265 = 0u;
      v266 = 0u;
      v267 = 0u;
      v141 = [v9 routes];
      v142 = [v141 countByEnumeratingWithState:&v264 objects:v295 count:16];
      if (v142)
      {
        v143 = v142;
        v98 = 0;
        v100 = 0;
        v96 = 0;
        v144 = *v265;
        do
        {
          for (k = 0; k != v143; ++k)
          {
            if (*v265 != v144)
            {
              objc_enumerationMutation(v141);
            }

            v146 = *(*(&v264 + 1) + 8 * k);
            v147 = [*(v252 + 48) displayAsPickedRoutes];
            v96 |= [v147 containsObject:v146];

            v148 = [*(v252 + 48) pickedRoutes];
            v98 |= [v148 containsObject:v146];

            v149 = [*(v252 + 48) pendingPickedRoutes];
            v100 |= [v149 containsObject:v146];
          }

          v143 = [v141 countByEnumeratingWithState:&v264 objects:v295 count:16];
        }

        while (v143);
      }

      else
      {
        v98 = 0;
        v100 = 0;
        v96 = 0;
      }

      v262 = 0u;
      v263 = 0u;
      v260 = 0u;
      v261 = 0u;
      v249 = [v8 routes];
      v160 = [v249 countByEnumeratingWithState:&v260 objects:v294 count:16];
      if (v160)
      {
        v161 = v160;
        v104 = 0;
        v103 = 0;
        v102 = 0;
        v258 = *v261;
        do
        {
          for (m = 0; m != v161; ++m)
          {
            if (*v261 != v258)
            {
              objc_enumerationMutation(v249);
            }

            v163 = *(*(&v260 + 1) + 8 * m);
            v102 |= [*(*(v252 + 56) + 1056) containsObject:v163];
            v103 |= [*(*(v252 + 56) + 1032) containsObject:v163];
            v104 |= [*(*(v252 + 56) + 1048) containsObject:v163];
          }

          v161 = [v249 countByEnumeratingWithState:&v260 objects:v294 count:16];
        }

        while (v161);
      }

      else
      {
        v104 = 0;
        v103 = 0;
        v102 = 0;
      }

      v92 = v243;
    }

    v164 = [*(v252 + 48) volumeCapableRoutes];
    v250 = [v164 containsObject:v239];
    v235 = [*(*(v252 + 56) + 1064) containsObject:v239];

    v165 = [v92 batteryLevel];
    v166 = [v239 batteryLevel];
    v244 = v92;
    if (v165 == v166)
    {
      v259 = 0;
    }

    else
    {
      [v92 batteryLevel];
      v167 = logd = v165;
      v168 = [v239 batteryLevel];
      v259 = [v167 isEqual:v168] ^ 1;

      v92 = v244;
      v165 = logd;
    }

    v169 = [v92 alternateTransportType];
    v170 = [v239 alternateTransportType];
    v210 = [v169 isEqualToString:v170] ^ 1;

    v171 = [v92 alternateTransportType];
    v172 = MEMORY[0x1E6958720];
    if ([v171 isEqualToString:*MEMORY[0x1E6958720]])
    {

      v173 = v244;
    }

    else
    {
      v174 = [v239 alternateTransportType];
      v175 = [v174 isEqualToString:*v172];

      v173 = v244;
      if (!v175)
      {
        goto LABEL_127;
      }
    }

    v176 = MCLogCategoryDefault();
    if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
    {
      v177 = [v173 routeName];
      v178 = [v173 alternateTransportType];
      [v239 routeName];
      v179 = loge = v176;
      v180 = [v239 alternateTransportType];
      *buf = 138544386;
      v285 = v177;
      v286 = 2114;
      v287 = v178;
      v288 = 2114;
      v289 = v179;
      v290 = 2114;
      v291 = v180;
      v292 = 1024;
      v293 = v210;
      _os_log_impl(&dword_1A20FC000, loge, OS_LOG_TYPE_DEFAULT, "MRURoutingViewController debug changed - old: %{public}@ | %{public}@ | new: %{public}@ | %{public}@ | changed: %{BOOL}u", buf, 0x30u);

      v176 = loge;
      v173 = v244;
    }

LABEL_127:
    v181 = [v173 routeName];
    v182 = v173;
    v183 = [v239 routeName];
    if (v181 == v183)
    {
      logb = 0;
    }

    else
    {
      v184 = [v182 routeName];
      v185 = [v239 routeName];
      logb = [v184 isEqual:v185] ^ 1;
    }

    v186 = [v206 localizedSubtitle];
    v187 = [v205 localizedSubtitle];
    if (v186 == v187)
    {
      v224 = 0;
    }

    else
    {
      v224 = [v186 isEqual:v187] ^ 1;
    }

    v251 = v250 ^ v235;
    objb = v96 ^ v102;
    v215 = v98 ^ v103;
    v212 = v104 ^ v100;
    if (([v244 isSplitterCapable] & 1) != 0 || objc_msgSend(v239, "isSplitterCapable"))
    {
      v188 = *(v252 + 56);
      v189 = [*(v252 + 48) displayAsPickedRoutes];
      LODWORD(v188) = [v188 routesContainSplitterCapableRoute:v189];
      v253 = v188 ^ [*(v252 + 56) routesContainSplitterCapableRoute:*(*(v252 + 56) + 1056)];
      v190 = v206;
    }

    else
    {
      v190 = v206;
      if (([v244 supportsAirPlayGrouping] & 1) == 0 && !objc_msgSend(v239, "supportsAirPlayGrouping"))
      {
        LOBYTE(v253) = 0;
LABEL_137:
        v191 = [v244 isNearby];
        v192 = [v239 isNearby];
        v193 = [v244 isKnown];
        v194 = [v239 isKnown];
        v195 = [v190 isExpanded];
        v196 = [v205 isExpanded];
        v197 = v190;
        v198 = [v190 isExpandable];
        v199 = [v205 isExpandable];
        v200 = [v197 isPickable];
        v201 = [v205 isPickable];
        v7 = 1;
        if ((objb | v215 | v212 | v259 | logb | v224 | v251) & 1) != 0 || (v253 & 1) != 0 || ((v191 ^ v192) & 1) != 0 || ((v193 ^ v194) & 1) != 0 || ((v195 ^ v196))
        {
          v8 = v206;
          v152 = v244;
        }

        else
        {
          v152 = v244;
          if (((v198 ^ v199) & 1) == 0)
          {
            v7 = v200 ^ v201 | v210;
          }

          v8 = v206;
        }

        v151 = v239;
LABEL_147:

        goto LABEL_29;
      }

      v202 = *(v252 + 56);
      v189 = [*(v252 + 48) displayAsPickedRoutes];
      LODWORD(v202) = [v202 routesContainAirPlayGroupableRoute:v189];
      v253 = v202 ^ [*(v252 + 56) routesContainAirPlayGroupableRoute:*(*(v252 + 56) + 1056)];
    }

    goto LABEL_137;
  }

  if (v11 == 3)
  {
LABEL_32:
    v46 = [v8 mainRoute];
    v47 = [v9 mainRoute];
    v48 = [*(a1 + 48) activatedVendorSpecificDeviceIDs];
    v49 = [v47 routeUID];
    LOBYTE(v17) = [v48 containsObject:v49];

    v50 = a1;
    v51 = *(*(a1 + 56) + 1104);
    v52 = [v46 routeUID];
    v255 = [v51 containsObject:v52];

    v53 = [*(a1 + 48) pendingVendorSpecificDeviceIDs];
    v54 = [v47 routeUID];
    v55 = [v53 containsObject:v54];

    v56 = *(*(a1 + 56) + 1112);
    v57 = [v46 routeUID];
    LOBYTE(v56) = [v56 containsObject:v57];

    log = v55;
    v232 = v56;
    v246 = v47;
    if ([v47 supportsGrouping])
    {
      v237 = [*(a1 + 56) vendorSpecificManager];
      objc = [*(a1 + 48) availableVendorSpecificDeviceIDs];
      v58 = [*(a1 + 48) activatedVendorSpecificDeviceIDs];
      [v47 protocolIdentifier];
      v59 = v222 = v46;
      v60 = [v237 isGroupingAvailableFor:objc activatedIDs:v58 forProtocolID:v59];
      v61 = [*(v50 + 56) vendorSpecificManager];
      v62 = *(v50 + 56);
      v63 = *(v62 + 1120);
      v64 = *(v62 + 1104);
      v65 = [v47 protocolIdentifier];
      v66 = v60 ^ [v61 isGroupingAvailableFor:v63 activatedIDs:v64 forProtocolID:v65];

      v46 = v222;
    }

    else
    {
      v66 = 0;
    }

    if ([v46 supportsGrouping])
    {
      v238 = [*(v252 + 56) vendorSpecificManager];
      v223 = [*(v252 + 48) availableVendorSpecificDeviceIDs];
      objd = [*(v252 + 48) activatedVendorSpecificDeviceIDs];
      v78 = [v46 protocolIdentifier];
      v79 = v46;
      v80 = [v238 isGroupingAvailableFor:v223 activatedIDs:objd forProtocolID:v78];
      v81 = [*(v252 + 56) vendorSpecificManager];
      v82 = *(v252 + 56);
      v83 = *(v82 + 1120);
      v84 = *(v82 + 1104);
      v85 = [v79 protocolIdentifier];
      v66 |= v80 ^ [v81 isGroupingAvailableFor:v83 activatedIDs:v84 forProtocolID:v85];
    }

    else
    {
      v79 = v46;
    }

    LOBYTE(v16) = log;
    LOBYTE(v86) = v255;
    LOBYTE(v87) = v232;

    v88 = 0;
    v89 = 0;
    v90 = 0;
    v13 = v205;
    goto LABEL_78;
  }

  v282 = 0u;
  v283 = 0u;
  v280 = 0u;
  v281 = 0u;
  v14 = [v9 mainRoute];
  v15 = [v14 subroutes];

  obj = v15;
  v236 = [v15 countByEnumeratingWithState:&v280 objects:v299 count:16];
  if (!v236)
  {
    v245 = 0;
    LOBYTE(v209) = 0;
    LOBYTE(v16) = 0;
    LOBYTE(v17) = 0;
    LOBYTE(v221) = 0;
    goto LABEL_55;
  }

  v245 = 0;
  LOBYTE(v209) = 0;
  v16 = 0;
  LODWORD(v17) = 0;
  v221 = 0;
  v231 = *v281;
  do
  {
    for (n = 0; n != v236; ++n)
    {
      if (*v281 != v231)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v280 + 1) + 8 * n);
      if ([v19 isAirPlayRoute])
      {
        v20 = [v19 underlyingNativeRoute];
        v21 = [*(a1 + 48) displayAsPickedRoutes];
        v221 |= [v21 containsObject:v20];

        v22 = [*(a1 + 48) pickedRoutes];
        v23 = [v22 containsObject:v20];

        v24 = [*(a1 + 48) pendingPickedRoutes];
        v241 = [v24 containsObject:v20];

        v25 = [*(a1 + 48) volumeCapableRoutes];
        v26 = [v25 containsObject:v20];
        v209 = v26 ^ [*(*(a1 + 56) + 1064) containsObject:v20];

        if ([v19 supportsAirPlayGrouping])
        {
          v254 = v23;
          v27 = *(a1 + 56);
          v28 = [*(a1 + 48) displayAsPickedRoutes];
          LODWORD(v27) = [v27 routesContainAirPlayGroupableRoute:v28];
          v29 = v27 ^ [*(a1 + 56) routesContainAirPlayGroupableRoute:*(*(a1 + 56) + 1056)];
          goto LABEL_19;
        }

        goto LABEL_20;
      }

      v30 = [*(a1 + 48) activatedVendorSpecificDeviceIDs];
      v31 = [v19 routeUID];
      v254 = [v30 containsObject:v31];

      v32 = [*(a1 + 48) pendingVendorSpecificDeviceIDs];
      v33 = [v19 routeUID];
      v34 = [v32 containsObject:v33];

      if ([v19 supportsGrouping])
      {
        v241 = v34;
        v20 = [*(a1 + 56) vendorSpecificManager];
        v28 = [*(a1 + 48) availableVendorSpecificDeviceIDs];
        v213 = [*(a1 + 48) activatedVendorSpecificDeviceIDs];
        [v19 protocolIdentifier];
        v35 = logc = v16;
        v36 = [v20 isGroupingAvailableFor:v28 activatedIDs:v213 forProtocolID:v35];
        v37 = [*(a1 + 56) vendorSpecificManager];
        v38 = *(v252 + 56);
        v39 = *(v38 + 1120);
        v40 = v17;
        v17 = *(v38 + 1104);
        v41 = [v19 protocolIdentifier];
        v42 = v39;
        v8 = v206;
        v43 = v17;
        LODWORD(v17) = v40;
        v29 = v36 ^ [v37 isGroupingAvailableFor:v42 activatedIDs:v43 forProtocolID:v41];

        a1 = v252;
        v16 = logc;

LABEL_19:
        v245 |= v29;

        v23 = v254;
LABEL_20:

        v34 = v241;
        goto LABEL_22;
      }

      v23 = v254;
LABEL_22:
      LODWORD(v17) = v17 | v23;
      v16 |= v34;
    }

    v236 = [obj countByEnumeratingWithState:&v280 objects:v299 count:16];
  }

  while (v236);
LABEL_55:

  v278 = 0u;
  v279 = 0u;
  v276 = 0u;
  v277 = 0u;
  v105 = [v8 mainRoute];
  v106 = [v105 subroutes];

  v211 = v106;
  v240 = [v106 countByEnumeratingWithState:&v276 objects:v298 count:16];
  v87 = 0;
  v86 = 0;
  if (!v240)
  {
    LOBYTE(obja) = 0;
    LOBYTE(v66) = v245;
    goto LABEL_72;
  }

  obja = 0;
  v214 = *v277;
  v66 = v245;
  v208 = v17;
  loga = v16;
  while (2)
  {
    v107 = 0;
    while (2)
    {
      if (*v277 != v214)
      {
        objc_enumerationMutation(v211);
      }

      v108 = *(*(&v276 + 1) + 8 * v107);
      if ([v108 isAirPlayRoute])
      {
        v109 = [v108 underlyingNativeRoute];
        obja |= [*(*(a1 + 56) + 1056) containsObject:v109];
        v256 = [*(*(a1 + 56) + 1032) containsObject:v109];
        v242 = [*(*(a1 + 56) + 1048) containsObject:v109];
        if ([v108 supportsAirPlayGrouping])
        {
          v233 = v87;
          v110 = *(a1 + 56);
          v111 = [*(a1 + 48) displayAsPickedRoutes];
          LODWORD(v110) = [v110 routesContainAirPlayGroupableRoute:v111];
          v112 = v110 ^ [*(a1 + 56) routesContainAirPlayGroupableRoute:*(*(a1 + 56) + 1056)];
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      v113 = *(*(a1 + 56) + 1104);
      v114 = [v108 routeUID];
      v256 = [v113 containsObject:v114];

      v115 = *(*(a1 + 56) + 1112);
      v116 = [v108 routeUID];
      v117 = [v115 containsObject:v116];

      if ([v108 supportsGrouping])
      {
        v242 = v117;
        v233 = v87;
        v109 = [*(a1 + 56) vendorSpecificManager];
        v111 = [*(a1 + 48) availableVendorSpecificDeviceIDs];
        v207 = [*(a1 + 48) activatedVendorSpecificDeviceIDs];
        v118 = [v108 protocolIdentifier];
        v119 = [v109 isGroupingAvailableFor:v111 activatedIDs:v207 forProtocolID:v118];
        [*(v252 + 56) vendorSpecificManager];
        v120 = v247 = v66;
        v121 = *(v252 + 56);
        v16 = v86;
        v122 = *(v121 + 1120);
        v17 = *(v121 + 1104);
        v123 = [v108 protocolIdentifier];
        v124 = v122;
        v86 = v16;
        v112 = v119 ^ [v120 isGroupingAvailableFor:v124 activatedIDs:v17 forProtocolID:v123];

        v66 = v247;
        a1 = v252;

        LOBYTE(v17) = v208;
        LOBYTE(v16) = loga;
LABEL_65:
        v66 |= v112;

        v87 = v233;
LABEL_66:

        v117 = v242;
      }

      else
      {
        LOBYTE(v17) = v208;
        LOBYTE(v16) = loga;
      }

      v86 |= v256;
      v87 |= v117;
      if (v240 != ++v107)
      {
        continue;
      }

      break;
    }

    v240 = [v211 countByEnumeratingWithState:&v276 objects:v298 count:16];
    if (v240)
    {
      continue;
    }

    break;
  }

LABEL_72:

  if (*(*(a1 + 56) + 1368))
  {
    v234 = v87;
    v125 = v86;
    v126 = [v205 mainRoute];
    v127 = [v126 routeUID];
    v128 = [v127 isEqualToString:*(*(a1 + 56) + 1368)];

    if (v128)
    {
      v129 = *(a1 + 56);
      v130 = *(v129 + 1368);
      *(v129 + 1368) = 0;

      LOBYTE(v66) = 1;
    }

    v13 = v205;
    v8 = v206;
    v89 = v221;
    v88 = v209;
    LOBYTE(v86) = v125;
    LOBYTE(v87) = v234;
  }

  else
  {
    v13 = v205;
    v8 = v206;
    v89 = v221;
    v88 = v209;
  }

  v90 = obja;
LABEL_78:
  v7 = v89 ^ v90 | v17 ^ v86 | v16 ^ v87 | v88 | v66;
LABEL_30:

  v6 = v203;
  v5 = v204;
LABEL_31:

  return v7 & 1;
}

void __41__MRURoutingViewController__applyUpdate___block_invoke_246(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) deletedSections];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 40) view];
    v5 = [v4 tableView];
    v6 = [*(a1 + 32) deletedSections];
    [v5 deleteSections:v6 withRowAnimation:0];
  }

  v7 = [*(a1 + 32) insertedSections];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [*(a1 + 40) view];
    v10 = [v9 tableView];
    v11 = [*(a1 + 32) insertedSections];
    [v10 insertSections:v11 withRowAnimation:0];
  }

  v12 = [*(a1 + 32) deletedItemIndexPaths];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [*(a1 + 40) view];
    v15 = [v14 tableView];
    v16 = [*(a1 + 32) deletedItemIndexPaths];
    [v15 deleteRowsAtIndexPaths:v16 withRowAnimation:0];
  }

  v17 = [*(a1 + 32) insertedItemIndexPaths];
  v18 = [v17 count];

  if (v18)
  {
    v19 = [*(a1 + 40) view];
    v20 = [v19 tableView];
    v21 = [*(a1 + 32) insertedItemIndexPaths];
    [v20 insertRowsAtIndexPaths:v21 withRowAnimation:0];
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __41__MRURoutingViewController__applyUpdate___block_invoke_2_247;
  v28[3] = &unk_1E7663FB0;
  v22 = *(a1 + 32);
  v28[4] = *(a1 + 40);
  [v22 enumerateItemMovesWithBlock:v28];
  v23 = [*(a1 + 32) updatedItemIndexPaths];
  v24 = [v23 count];

  if (v24)
  {
    v25 = [*(a1 + 40) view];
    v26 = [v25 tableView];
    v27 = [*(a1 + 32) updatedItemIndexPaths];
    [v26 reloadRowsAtIndexPaths:v27 withRowAnimation:0];
  }
}

void __41__MRURoutingViewController__applyUpdate___block_invoke_2_247(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v4 view];
  v7 = [v8 tableView];
  [v7 moveRowAtIndexPath:v6 toIndexPath:v5];
}

void __41__MRURoutingViewController__applyUpdate___block_invoke_3_249(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MRURoutingViewController__applyUpdate___block_invoke_4_250;
  block[3] = &unk_1E7663898;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void *__41__MRURoutingViewController__applyUpdate___block_invoke_4_250(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 1360))
  {
    [v2 ensureVendorSpecificGroupTreeIsVisible:?];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1360);
    *(v3 + 1360) = 0;

    v2 = *(a1 + 32);
  }

  *(v2 + 1008) = 0;
  objc_storeStrong((*(a1 + 32) + 1016), *(*(a1 + 32) + 1224));
  result = *(a1 + 32);
  if (result[124])
  {

    return [result _applyUpdate:?];
  }

  return result;
}

void __41__MRURoutingViewController__applyUpdate___block_invoke_254(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1192));
  [WeakRetained routingViewControllerDidUpdateItems:*(a1 + 32)];
}

- (id)groupUIDForRoute:(id)a3
{
  v3 = a3;
  v4 = MRAVEndpointGetLocalEndpoint();
  v5 = [v4 outputDeviceUIDs];
  v6 = [v3 routeUID];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    [MEMORY[0x1E69B09A8] localDeviceUID];
  }

  else
  {
    [v3 groupUID];
  }
  v8 = ;

  return v8;
}

- (id)_createRoutingViewItemsForUpdate:(id)a3
{
  v182 = *MEMORY[0x1E69E9840];
  v128 = a3;
  v3 = [v128 displayableAvailableRoutes];
  v126 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v124 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v131 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v5 = MRAVEndpointGetLocalEndpoint();
  v6 = MEMORY[0x1E695DFD8];
  v7 = [v5 outputDeviceUIDs];
  v135 = [v6 setWithArray:v7];

  v121 = [MEMORY[0x1E69B09A8] localDeviceUID];
  v109 = v5;
  v8 = [v5 outputDevices];
  v9 = [v8 firstObject];
  v112 = [v9 uid];

  v122 = [v3 mutableCopy];
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v169 objects:v181 count:16];
  v110 = v10;
  if (!v11)
  {
    v133 = 0;
    v13 = 0;
    v136 = 0;
    goto LABEL_32;
  }

  v12 = v11;
  v133 = 0;
  v13 = 0;
  v136 = 0;
  v14 = *v170;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v170 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v169 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v16 isDeviceSpeakerRoute] & 1) == 0)
      {
        v17 = v16;
        v18 = [(MRURoutingViewController *)self groupUIDForRoute:v17];
        v19 = [v17 routeUID];
        v20 = [v19 isEqualToString:v112];

        if (v20)
        {
          v21 = v4;
          v22 = v17;
          v23 = v121;
          goto LABEL_10;
        }

        if ([v17 isGroupLeader] && v18 && v18 != v121)
        {
          v24 = [v4 objectForKeyedSubscript:v18];

          if (!v24)
          {
            v21 = v4;
            v22 = v17;
            v23 = v18;
LABEL_10:
            [v21 setObject:v22 forKeyedSubscript:v23];
LABEL_23:
            if (([v17 isLocalDeviceOrHeadphone] & 1) == 0)
            {
              if (([v17 isKnown] & 1) == 0)
              {
                ++v136;
                v28 = [v17 outputDevice];
                v29 = [v28 recommendation];
                v30 = [v29 isConservativelyFiltered];

                v133 += v30;
                v10 = v110;
              }

              ++v13;
            }

            continue;
          }
        }

        else if (!v18)
        {
          goto LABEL_23;
        }

        expandedItemUIDs = self->_expandedItemUIDs;
        v26 = [v17 routeUID];
        if (![(NSMutableSet *)expandedItemUIDs containsObject:v26])
        {
          v27 = [v17 isHeadphonesRoute];

          if (v27)
          {
            goto LABEL_23;
          }

          v26 = [v131 objectForKeyedSubscript:v18];
          if (!v26)
          {
            v26 = [MEMORY[0x1E695DF70] array];
            [v131 setObject:v26 forKeyedSubscript:v18];
          }

          [v26 addObject:v17];
        }

        goto LABEL_23;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v169 objects:v181 count:16];
  }

  while (v12);
LABEL_32:

  self->_allRoutesAreUnknown = v136 == v13;
  if (v133)
  {
    v32 = v136 == v13 && v133 < v136;
  }

  else
  {
    v32 = 0;
  }

  v33 = v13 < 4;
  if (v13 >= 4)
  {
    if (v136)
    {
      v35 = v136 >= v13;
    }

    else
    {
      v35 = 1;
    }

    v36 = !v35;
    v34 = v36 | v32;
  }

  else
  {
    v34 = 0;
  }

  self->_someRoutesAreFiltered = v34 & 1;
  v165[0] = MEMORY[0x1E69E9820];
  v165[1] = 3221225472;
  v165[2] = __61__MRURoutingViewController__createRoutingViewItemsForUpdate___block_invoke;
  v165[3] = &unk_1E7665010;
  v37 = v4;
  v166 = v37;
  v167 = v131;
  v38 = v122;
  v168 = v38;
  v132 = v167;
  [v167 enumerateKeysAndObjectsUsingBlock:v165];
  didSelectShowMore = self->_didSelectShowMore;
  allRoutesAreUnknown = self->_allRoutesAreUnknown;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__MRURoutingViewController__createRoutingViewItemsForUpdate___block_invoke_2;
  aBlock[3] = &unk_1E7665038;
  v108 = v126;
  v159 = v108;
  v161 = allRoutesAreUnknown;
  v162 = v32;
  v163 = v33;
  v164 = didSelectShowMore;
  v107 = v124;
  v160 = v107;
  v41 = _Block_copy(aBlock);
  v134 = v37;
  v123 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v37, "count")}];
  v156[0] = MEMORY[0x1E69E9820];
  v156[1] = 3221225472;
  v156[2] = __61__MRURoutingViewController__createRoutingViewItemsForUpdate___block_invoke_3;
  v156[3] = &unk_1E7664DF0;
  v116 = v128;
  v157 = v116;
  v42 = [v38 msv_compactMap:v156];
  v111 = v42;
  if ([v42 count] < 2)
  {
    v43 = 0;
  }

  else
  {
    v43 = [v42 objectAtIndexedSubscript:0];
  }

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  obj = v38;
  v120 = [obj countByEnumeratingWithState:&v152 objects:v180 count:16];
  if (v120)
  {
    v44 = *v153;
    v113 = *v153;
    v114 = v43;
    do
    {
      v45 = 0;
      do
      {
        if (*v153 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v152 + 1) + 8 * v45);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ([v46 isGroupSession])
            {
              v54 = [MEMORY[0x1E6970498] itemWithRoute:v46];
              v41[2](v41, v54);
              goto LABEL_134;
            }

            goto LABEL_135;
          }

          v51 = v46;
          v52 = [(MRURoutingViewController *)self groupUIDForRoute:v51];
          v53 = [v51 routeUID];
          v118 = v45;
          if ([v135 containsObject:v53])
          {
            v54 = v51;
            v55 = [v51 isHeadphonesRoute];

            if ((v55 & 1) == 0)
            {
              v53 = v52;
              v52 = v121;
              goto LABEL_97;
            }
          }

          else
          {
            v54 = v51;
LABEL_97:
          }

          v76 = [v134 objectForKeyedSubscript:v52];
          v77 = [v132 objectForKeyedSubscript:v52];
          v78 = [(NSMutableSet *)self->_expandedGroupUIDs containsObject:v52];
          if (v76 && (v79 = v78, v80 = [v77 count], v52) && v80 && (objc_msgSend(v77, "arrayByAddingObject:", v76), v81 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v123, "setObject:forKeyedSubscript:", v81, v52), v81, (v79 & 1) == 0))
          {
            if (v54 == v76)
            {
              v84 = [MEMORY[0x1E6970498] itemWithLeader:v54 members:v77];
              v41[2](v41, v84);
              goto LABEL_132;
            }
          }

          else
          {
            v82 = [v116 nativeRoutesInVendorSpecificGroup];
            v83 = [v82 containsObject:v54];

            if ((v83 & 1) == 0)
            {
              v138 = v77;
              v84 = [MEMORY[0x1E6970498] itemWithRoute:v54];
              expandedRouteUIDs = self->_expandedRouteUIDs;
              v86 = [v54 routeUID];
              [v84 setExpanded:{-[NSMutableSet containsObject:](expandedRouteUIDs, "containsObject:", v86)}];

              v41[2](v41, v84);
              if ([v84 isExpanded])
              {
                v130 = v76;
                v142 = 0u;
                v143 = 0u;
                v140 = 0u;
                v141 = 0u;
                v87 = [v54 subRoutes];
                v88 = [v87 countByEnumeratingWithState:&v140 objects:v173 count:16];
                if (v88)
                {
                  v89 = v88;
                  v90 = *v141;
                  do
                  {
                    for (j = 0; j != v89; ++j)
                    {
                      if (*v141 != v90)
                      {
                        objc_enumerationMutation(v87);
                      }

                      v92 = [MEMORY[0x1E6970498] itemWithRoute:*(*(&v140 + 1) + 8 * j)];
                      v41[2](v41, v92);
                    }

                    v89 = [v87 countByEnumeratingWithState:&v140 objects:v173 count:16];
                  }

                  while (v89);
                }

                v76 = v130;
              }

              v77 = v138;
LABEL_132:
            }
          }

          v44 = v113;
          v43 = v114;
          v45 = v118;
          goto LABEL_134;
        }

        v47 = v46;
        v48 = v47;
        v125 = v47;
        if (v43 && !self->_didExpandVendorSpecificSpeakerGroup)
        {
          if (v43 == v47)
          {
            v100 = v45;
            v49 = [MEMORY[0x1E6970498] itemWithVendorSpecificLeader:v43 members:v111];
            v41[2](v41, v49);
            v101 = MCLogCategoryDeviceAccess();
            if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
            {
              v102 = [v49 localizedTitle];
              v103 = [v49 localizedSubtitle];
              *buf = 138412546;
              v177 = v102;
              v178 = 2112;
              v179 = v103;
              _os_log_impl(&dword_1A20FC000, v101, OS_LOG_TYPE_DEFAULT, "Adding vendor specific speaker group: %@, %@", buf, 0x16u);

              v44 = v113;
              v43 = v114;
            }

            v45 = v100;
            goto LABEL_129;
          }

          v48 = v47;
          if ([v111 containsObject:v47])
          {
            v49 = MCLogCategoryDeviceAccess();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v50 = [v125 routeName];
              *buf = 138412290;
              v177 = v50;
              _os_log_impl(&dword_1A20FC000, v49, OS_LOG_TYPE_DEFAULT, "Skipping member speaker in vendor specific group: %@@", buf, 0xCu);
            }

            goto LABEL_129;
          }
        }

        if (![v48 isGroup])
        {
          v49 = [MEMORY[0x1E6970498] itemWithVendorSpecificRoute:v48];
          v41[2](v41, v49);
          goto LABEL_129;
        }

        v119 = v45;
        v150 = 0u;
        v151 = 0u;
        v148 = 0u;
        v149 = 0u;
        v56 = [v48 subroutes];
        v57 = [v56 countByEnumeratingWithState:&v148 objects:v175 count:16];
        if (!v57)
        {

          goto LABEL_116;
        }

        v58 = v57;
        v59 = *v149;
        v117 = 1;
        v127 = *v149;
        v129 = v56;
        while (2)
        {
          v60 = 0;
          v137 = v58;
          do
          {
            if (*v149 != v59)
            {
              objc_enumerationMutation(v56);
            }

            v61 = *(*(&v148 + 1) + 8 * v60);
            if ([v61 isAirPlayRoute])
            {
              v62 = [v61 underlyingNativeRoute];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v63 = v62;
                v64 = [(MRURoutingViewController *)self groupUIDForRoute:v63];
                v65 = [v63 routeUID];
                if (![v135 containsObject:v65])
                {
                  goto LABEL_79;
                }

                v66 = [v63 isHeadphonesRoute];

                if ((v66 & 1) == 0)
                {
                  v65 = v64;
                  v64 = v121;
LABEL_79:
                }

                v67 = [v134 objectForKeyedSubscript:v64];
                v68 = [v132 objectForKeyedSubscript:v64];
                v69 = [(NSMutableSet *)self->_expandedGroupUIDs containsObject:v64];
                if (!v67)
                {
                  goto LABEL_86;
                }

                v70 = v69;
                v71 = [v68 count];
                v72 = 1;
                if (v64 && v71)
                {
                  v73 = [v68 arrayByAddingObject:v67];
                  [v123 setObject:v73 forKeyedSubscript:v64];

                  if ((v70 & 1) == 0)
                  {
                    v74 = [v116 nativeRoutesInVendorSpecificGroup];
                    v75 = [v74 containsObject:v63];

                    if (v75)
                    {
                      v72 = 0;
                      v117 &= [(MRURoutingViewController *)self shouldSuppressNativeRoutesStatusDisplay];
                      goto LABEL_87;
                    }
                  }

LABEL_86:
                  v72 = 1;
                }

LABEL_87:

                if (!v72)
                {

                  goto LABEL_113;
                }

                v59 = v127;
                v56 = v129;
                v58 = v137;
              }
            }

            ++v60;
          }

          while (v58 != v60);
          v58 = [v56 countByEnumeratingWithState:&v148 objects:v175 count:16];
          if (v58)
          {
            continue;
          }

          break;
        }

LABEL_113:
        if ((v117 & 1) == 0)
        {
          v44 = v113;
          v43 = v114;
          v45 = v119;
          goto LABEL_130;
        }

LABEL_116:
        v49 = [MEMORY[0x1E6970498] itemWithVendorSpecificRoute:v125];
        v41[2](v41, v49);
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        v93 = [v125 subroutes];
        v94 = [v93 countByEnumeratingWithState:&v144 objects:v174 count:16];
        if (v94)
        {
          v95 = v94;
          v96 = *v145;
          do
          {
            for (k = 0; k != v95; ++k)
            {
              if (*v145 != v96)
              {
                objc_enumerationMutation(v93);
              }

              v98 = *(*(&v144 + 1) + 8 * k);
              if ([v98 shouldBeDisplayed])
              {
                v99 = [MEMORY[0x1E6970498] itemWithVendorSpecificRoute:v98];
                v41[2](v41, v99);
              }
            }

            v95 = [v93 countByEnumeratingWithState:&v144 objects:v174 count:16];
          }

          while (v95);
        }

        v44 = v113;
        v43 = v114;
        v45 = v119;
LABEL_129:

LABEL_130:
        v54 = v125;
LABEL_134:

LABEL_135:
        ++v45;
      }

      while (v45 != v120);
      v104 = [obj countByEnumeratingWithState:&v152 objects:v180 count:16];
      v120 = v104;
    }

    while (v104);
  }

  v105 = objc_alloc_init(MRURoutingViewControllerItems);
  [(MRURoutingViewControllerItems *)v105 setRouteGrouping:v123];
  [(MRURoutingViewControllerItems *)v105 setLocalDevicesAndHeadphones:v108];
  [(MRURoutingViewControllerItems *)v105 setSpeakersAndTVs:v107];
  [(MRURoutingViewControllerItems *)v105 setCustomRows:self->_staticCustomRowItems];

  return v105;
}

void __61__MRURoutingViewController__createRoutingViewItemsForUpdate___block_invoke(id *a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [a1[4] objectForKeyedSubscript:v13];

  if (!v6)
  {
    v7 = [v5 firstObject];
    [a1[4] setObject:v7 forKeyedSubscript:v13];

    v8 = [v5 subarrayWithRange:{1, objc_msgSend(v5, "count") - 1}];

    [a1[5] setObject:v8 forKeyedSubscript:v13];
    v5 = v8;
  }

  v9 = [a1[4] objectForKeyedSubscript:v13];
  if ([v5 count])
  {
    v10 = 0;
    do
    {
      v11 = [v5 objectAtIndexedSubscript:v10];
      v12 = v11;
      if (!v9 || v9 == v11)
      {
        ++v10;
      }

      else
      {
        [a1[6] removeObject:v11];
        [a1[6] insertObject:v12 atIndex:{++v10 + objc_msgSend(a1[6], "indexOfObject:", v9)}];
      }
    }

    while ([v5 count] > v10);
  }
}

void __61__MRURoutingViewController__createRoutingViewItemsForUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 mainRoute];
  if (([v3 isLocalDeviceOrHeadphone] & 1) != 0 || (objc_msgSend(v3, "isWiredDevice") & 1) != 0 || objc_msgSend(v3, "isGroupSession"))
  {
    v4 = *(a1 + 32);
LABEL_5:
    [v4 addObject:v13];
    goto LABEL_6;
  }

  v5 = [MEMORY[0x1E69B0B08] currentSettings];
  v6 = [v5 supportShowMore];

  if (!v6)
  {
    v4 = *(a1 + 40);
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 outputDevice];
  v10 = [v9 recommendation];
  v11 = [v10 isConservativelyFiltered];

  v12 = ([v3 isKnown] & 1) == 0 && *(a1 + 48) == 0;
  if (*(a1 + 50))
  {
    goto LABEL_18;
  }

  if (!*(a1 + 49))
  {
    v11 = v12;
  }

  if (([v3 isPicked] & 1) != 0 || !v11 || *(a1 + 51) == 1)
  {
LABEL_18:
    [*(a1 + 40) addObject:v13];
  }

LABEL_6:
}

id __61__MRURoutingViewController__createRoutingViewItemsForUpdate___block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
    goto LABEL_16;
  }

  v4 = v3;
  if ([v4 isGroup])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v4 subroutes];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = [*(a1 + 32) activatedVendorSpecificDeviceIDs];
        v12 = [v10 routeUID];
        v13 = [v11 containsObject:v12];

        if (v13)
        {
          goto LABEL_15;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }
  }

  else
  {
    v14 = [*(a1 + 32) activatedVendorSpecificDeviceIDs];
    v15 = [v4 routeUID];
    v16 = [v14 containsObject:v15];

    if (v16)
    {
      goto LABEL_16;
    }
  }

  v5 = v4;
  v4 = 0;
LABEL_15:

LABEL_16:

  return v4;
}

- (void)_collapseAllGroups
{
  [(NSMutableSet *)self->_expandedGroupUIDs removeAllObjects];
  [(NSMutableSet *)self->_expandedItemUIDs removeAllObjects];
  [(NSMutableSet *)self->_expandedRouteUIDs removeAllObjects];
  self->_didExpandVendorSpecificSpeakerGroup = 0;
}

- (void)_collapseAllGroupsAfterDelay
{
  [(NSTimer *)self->_collapseTimer invalidate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__MRURoutingViewController__collapseAllGroupsAfterDelay__block_invoke;
  v5[3] = &unk_1E7663F10;
  v5[4] = self;
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v5 block:2.0];
  collapseTimer = self->_collapseTimer;
  self->_collapseTimer = v3;
}

void __56__MRURoutingViewController__collapseAllGroupsAfterDelay__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _collapseAllGroups];
  [*(a1 + 32) _setNeedsDisplayedRoutesUpdate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1344);
  *(v2 + 1344) = 0;
}

- (id)_createSectionedCollection:(id)a3 withPickedRoutes:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = MEMORY[0x1E6970818];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = [v8 localDevicesAndHeadphones];
  v11 = [v8 speakersAndTVs];
  v12 = [v8 customRows];

  v13 = [v11 arrayByAddingObjectsFromArray:v12];

  if ([v10 count])
  {
    [v9 appendSection:@"LOCAL DEVICES"];
    [v9 appendItems:v10];
    v14 = [(MRURoutingViewController *)self endpointRoute];
    if ([v14 isSplitRoute])
    {
LABEL_11:

      goto LABEL_12;
    }

    v15 = [(MRURoutingViewController *)self routesContainSplitterCapableRoute:v6];

    if (!v15)
    {
      goto LABEL_12;
    }

    v16 = [(MRURoutingViewController *)self isInVehicle];
    if ([(MRURoutingViewController *)self isInCarPlay])
    {
      v17 = +[MRUStringsProvider audioSharingDisabledCarPlay];
    }

    else
    {
      if (![(MRURoutingViewController *)self hasCarKitRoute])
      {
        v14 = 0;
        goto LABEL_10;
      }

      v17 = +[MRUStringsProvider audioShaingDisabledCarKit];
    }

    v14 = v17;
LABEL_10:
    v18 = MEMORY[0x1E6970498];
    v19 = +[MRUStringsProvider audioShaingActionTitle];
    v20 = [v18 itemWithActionTitle:v19 subtitle:v14 enabled:!v16 identifier:*MEMORY[0x1E696F8A8] image:0];

    v28[0] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    [v9 appendItems:v21];

    goto LABEL_11;
  }

LABEL_12:
  if ([v13 count])
  {
    v22 = +[MRUStringsProvider routingHeaderSpeakersAndTVsTitle];
    [v9 appendSection:v22];

    if ([(MRURoutingViewController *)self _shouldShowShowMoreButton])
    {
      v23 = MEMORY[0x1E6970498];
      v24 = +[MRUStringsProvider routingFooterShowMoreTitle];
      v25 = [v23 itemWithActionTitle:v24 subtitle:0 enabled:1 identifier:@"Show more" image:0];

      v26 = [v13 arrayByAddingObject:v25];

      v13 = v26;
    }

    [v9 appendItems:v13];
  }

  return v9;
}

- (BOOL)routesContainMultipleBuiltIn:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * v8) pickableRouteType])
        {
          v6 = v9;
        }

        else
        {
          v6 = 1;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  LOBYTE(v6) = 0;
LABEL_12:

  return v6;
}

- (BOOL)routesContainSplitterCapableRoute:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (routesContainSplitterCapableRoute__onceToken != -1)
  {
    [MRURoutingViewController routesContainSplitterCapableRoute:];
  }

  if (routesContainSplitterCapableRoute____supportsWirelessSplitting == 1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v9 + 1) + 8 * i) isSplitterCapable])
          {
            LOBYTE(v5) = 1;
            goto LABEL_15;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

uint64_t __62__MRURoutingViewController_routesContainSplitterCapableRoute___block_invoke()
{
  result = MGGetBoolAnswer();
  routesContainSplitterCapableRoute____supportsWirelessSplitting = result;
  return result;
}

- (BOOL)routesContainAirPlayGroupableRoute:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) supportsAirPlayGrouping])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)ensureVendorSpecificGroupTreeIsVisible:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:v4];
  v6 = [v5 mainRoute];
  v7 = [v6 subroutes];
  v8 = [v7 msv_compactMap:&__block_literal_global_271];
  v9 = [v8 count];

  v10 = [v4 row] + v9;
  v11 = [(MRURoutingViewController *)self view];
  v12 = [v11 tableView];
  v13 = [v12 numberOfRowsInSection:{objc_msgSend(v4, "section")}];

  if (v10 >= v13)
  {
    v14 = MCLogCategoryDeviceAccess();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v4 row] + v9;
      v16 = [(MRURoutingViewController *)self view];
      v17 = [v16 tableView];
      v34 = 134218240;
      v35 = v15;
      v36 = 2048;
      v37 = [v17 numberOfRowsInSection:{objc_msgSend(v4, "section")}];
      _os_log_impl(&dword_1A20FC000, v14, OS_LOG_TYPE_DEFAULT, "ensureVendorSpecificGroupTreeIsVisible - Want to scroll to row %lu, but there are only %ld rows", &v34, 0x16u);
    }
  }

  v18 = MEMORY[0x1E696AC88];
  v19 = [v4 row] + v9;
  v20 = [(MRURoutingViewController *)self view];
  v21 = [v20 tableView];
  v22 = [v21 numberOfRowsInSection:{objc_msgSend(v4, "section")}];

  if (v19 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v19;
  }

  v24 = [v18 indexPathForRow:v23 inSection:{objc_msgSend(v4, "section")}];
  v25 = [(MRURoutingViewController *)self view];
  v26 = [v25 tableView];
  v27 = [v26 indexPathsForVisibleRows];
  v28 = [v27 lastObject];

  v29 = [v28 section];
  if (v29 < [v24 section] || (v32 = objc_msgSend(v28, "section"), v32 == objc_msgSend(v24, "section")) && (v33 = objc_msgSend(v28, "row"), v33 < objc_msgSend(v24, "row")))
  {
    v30 = [(MRURoutingViewController *)self view];
    v31 = [v30 tableView];
    [v31 scrollToRowAtIndexPath:v24 atScrollPosition:3 animated:1];
  }
}

id __67__MRURoutingViewController_ensureVendorSpecificGroupTreeIsVisible___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 shouldBeDisplayed])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_shouldShowShowMoreButton
{
  v3 = [MEMORY[0x1E69B0B08] currentSettings];
  v4 = [v3 supportShowMore];

  return v4 && self->_someRoutesAreFiltered && !self->_didSelectShowMore;
}

- (id)symbolNameForVendorSpecificRoute:(id)a3
{
  v3 = [a3 vendorSpecificRouteType];
  if ((v3 - 1) > 4)
  {
    return @"hifispeaker.fill";
  }

  else
  {
    return off_1E7665138[v3 - 1];
  }
}

- (BOOL)handleSelectedRoutingViewItem:(id)a3 operation:(int64_t)a4
{
  v55[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v45 = [v6 routes];
  v7 = [v6 mainRoute];
  [(MRUVendorSpecificDeviceManager *)self->_vendorSpecificManager disconnectAllDevices];
  if ([v6 type] == 5)
  {
    v8 = v7;
    if (![v8 isAirPlayRoute])
    {
      v7 = v8;
      goto LABEL_9;
    }

    v7 = [v8 underlyingNativeRoute];

    v55[0] = v7;
    v9 = v55;
    goto LABEL_7;
  }

  if ([v6 type] != 4)
  {
    goto LABEL_10;
  }

  vendorSpecificGroupDisplayedSubroutes = self->_vendorSpecificGroupDisplayedSubroutes;
  v11 = [v7 routeUID];
  v8 = [(NSMutableDictionary *)vendorSpecificGroupDisplayedSubroutes objectForKeyedSubscript:v11];

  if ([v8 isAirPlayRoute])
  {
    v12 = [v8 underlyingNativeRoute];

    v54 = v12;
    v9 = &v54;
    v7 = v12;
LABEL_7:
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

    v45 = v13;
  }

LABEL_9:

LABEL_10:
  if (v7)
  {
    v43 = v6;
    self->_hasUserSelections = 1;
    v14 = a4;
    if (a4 == 2)
    {
      if ([(MRURoutingViewController *)self shouldSuppressNativeRoutesStatusDisplay])
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }
    }

    self->_didLastPickNativeRoute = 1;
    v15 = [(MPAVRoutingController *)self->_routingController pickedRoutes];
    v16 = [(MRGroupSessionDiscovery *)self->_groupSessionDiscovery activeSession];
    v17 = v7;
    v18 = v7;
    v19 = v14;
    v42 = [(MRURoutingViewController *)self _wouldShareAudioForPickedRoute:v18 operation:v14 pickedRoutes:v15];
    v41 = [(MPAVRoutingController *)self->_routingController supportsMultipleSelection];
    v20 = [(MRURoutingViewController *)self endpointRoute];
    v21 = [v20 isGroupSession];

    v44 = v16;
    if (v16)
    {
      v22 = [(MRURoutingViewController *)self endpointRoute];
      v23 = [v22 endpointObject];
      v24 = [v23 isLocalEndpoint];
    }

    else
    {
      v24 = 0;
    }

    v6 = v43;
    v26 = v21 & v24;
    if (a4 == 1 && ![v43 type])
    {
      expandedItemUIDs = self->_expandedItemUIDs;
      v28 = [v17 routeUID];
      [(NSMutableSet *)expandedItemUIDs addObject:v28];
    }

    v29 = v19;
    v7 = v17;
    if (v26 && [(MRURoutingViewController *)self _wouldEndGroupSessionForViewItem:v43 operation:v29 pickedRoutes:v15])
    {
      v30 = [(MRGroupSession *)self->_activeGroupSession participants];
      v31 = [v30 count];

      v32 = MCLogCategoryDefault();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (v31)
      {
        if (v33)
        {
          activeGroupSession = self->_activeGroupSession;
          *buf = 138543618;
          v51 = v7;
          v52 = 2114;
          v53 = activeGroupSession;
          _os_log_impl(&dword_1A20FC000, v32, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] User picked route that would end hosted group session. Route: %{public}@, active group session: %{public}@", buf, 0x16u);
        }

        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __68__MRURoutingViewController_handleSelectedRoutingViewItem_operation___block_invoke;
        v46[3] = &unk_1E7665080;
        v46[4] = self;
        v47 = v45;
        v49 = v29;
        v48 = v43;
        [(MRURoutingViewController *)self _displayEndGroupSessionWithCompletion:v46];

        goto LABEL_48;
      }

      if (v33)
      {
        v35 = self->_activeGroupSession;
        *buf = 138543362;
        v51 = v35;
        _os_log_impl(&dword_1A20FC000, v32, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] Continuing with action while in hosted group session because session has no participants: %{public}@", buf, 0xCu);
      }
    }

    if ([v7 isDiscoveredGroupSession])
    {
      v36 = MCLogCategoryDefault();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v7;
        _os_log_impl(&dword_1A20FC000, v36, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] User picked route that will join group session: %{public}@", buf, 0xCu);
      }

      [(MRURoutingViewController *)self handleGroupSessionJoinWithPickedRoute:v7];
    }

    else if (v29 == 2 && [v7 isDeviceSpeakerRoute])
    {
      v37 = MCLogCategoryDefault();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A20FC000, v37, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] RCS cannot remove device route", buf, 2u);
      }
    }

    else
    {
      if (([(MRURoutingViewController *)self isInVehicle]& v41 & v42) != 1)
      {
        [(MRURoutingViewController *)self selectRoutes:v45 operation:v29 routingViewItem:v43];
LABEL_48:
        v25 = 1;
LABEL_52:

        goto LABEL_53;
      }

      v38 = MCLogCategoryDefault();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v51 = v7;
        v52 = 2114;
        v53 = v15;
        _os_log_impl(&dword_1A20FC000, v38, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] Can't share audio while in the Car. Route: %{public}@, picked: %{public}@", buf, 0x16u);
      }

      if ([(MRURoutingViewController *)self isInCarPlay])
      {
        +[MRUStringsProvider audioSharingDisabledCarPlaySameOwner];
      }

      else
      {
        +[MRUStringsProvider audioSharingDisabledCarKitSameOwner];
      }
      v39 = ;
      [(MRURoutingViewController *)self _displayShareAudioDisabledAlertForReason:v39];
    }

    v25 = 0;
    goto LABEL_52;
  }

  v15 = MCLogCategoryDefault();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_ERROR, "[MRURoutingViewController] RCS attempted to select a nil route, ignoring.", buf, 2u);
  }

  v25 = 0;
LABEL_53:

  return v25;
}

uint64_t __68__MRURoutingViewController_handleSelectedRoutingViewItem_operation___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) selectRoutes:*(result + 40) operation:*(result + 56) routingViewItem:*(result + 48)];
  }

  return result;
}

- (void)selectRoutes:(id)a3 operation:(int64_t)a4 routingViewItem:(id)a5
{
  v8 = a5;
  routingController = self->_routingController;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__MRURoutingViewController_selectRoutes_operation_routingViewItem___block_invoke;
  v11[3] = &unk_1E76650A8;
  v13 = a4 == 1;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [(MPAVRoutingController *)routingController selectRoutes:a3 operation:a4 completion:v11];
}

void __67__MRURoutingViewController_selectRoutes_operation_routingViewItem___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    block[5] = v5;
    block[6] = v4;
    block[9] = v2;
    block[10] = v3;
    v7 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__MRURoutingViewController_selectRoutes_operation_routingViewItem___block_invoke_2;
    block[3] = &unk_1E7663898;
    block[4] = *(a1 + 32);
    v8 = MEMORY[0x1E69E96A0];
    dispatch_after(v7, MEMORY[0x1E69E96A0], block);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__MRURoutingViewController_selectRoutes_operation_routingViewItem___block_invoke_294;
    v10[3] = &unk_1E7663DF8;
    v12 = *(a1 + 48);
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    dispatch_async(v8, v10);
  }
}

void __67__MRURoutingViewController_selectRoutes_operation_routingViewItem___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) endpointRoute];
  v3 = [v2 endpointObject];

  if (v3)
  {
    v4 = +[MRURouteRecommender sharedInstance];
    v5 = [*(a1 + 32) donatingAppBundleID];
    -[NSObject donatePickerChoiceFor:bundleID:isEligibleApp:reason:](v4, "donatePickerChoiceFor:bundleID:isEligibleApp:reason:", v3, v5, [*(a1 + 32) isDonatingAppEligible], @"selectRoutes");
  }

  else
  {
    v4 = MCLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 32);
      v8 = [v7 endpointRoute];
      v9 = 138543874;
      v10 = v6;
      v11 = 2048;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_ERROR, "%{public}@<%p> Attempt to donate nil endpoint from route:%@", &v9, 0x20u);
    }
  }
}

void __67__MRURoutingViewController_selectRoutes_operation_routingViewItem___block_invoke_294(uint64_t a1)
{
  if (!+[MRUFeatureFlagProvider isRoutePickerNotCollapseGroupAutomaticallyEnabled]&& *(a1 + 48) == 1)
  {
    [*(a1 + 32) _collapseAllGroupsAfterDelay];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1192));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained routingViewController:*(a1 + 32) didSelectRoutingViewItem:*(a1 + 40)];
  }
}

- (void)fetchAvailableRoutesWithCompletionHandler:(id)a3
{
  v4 = a3;
  routingController = self->_routingController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__MRURoutingViewController_fetchAvailableRoutesWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E76650F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MPAVRoutingController *)routingController fetchAvailableRoutesWithCompletionHandler:v7];
}

void __70__MRURoutingViewController_fetchAvailableRoutesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = [a2 mutableCopy];
  v3 = *(*(a1 + 32) + 1224);
  v4 = *(*(a1 + 32) + 1416);
  v5 = *(*(a1 + 32) + 1248);
  if (v5)
  {
    v6 = v5;
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [v7 bundleIdentifier];

    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if ([v3 isDeviceRoute])
  {
    v8 = MRBundlePermittedForJoiningGroupSessions() ^ 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v3 isDeviceRoute];
  v10 = [v4 activeSession];
  v11 = v10;
  if (v9 && (v8 & 1) == 0 && !v10)
  {
    v12 = [v4 discoveredSessions];
    v13 = [v12 msv_map:&__block_literal_global_297];

    [v14 addObjectsFromArray:v13];
  }

LABEL_13:
  (*(*(a1 + 40) + 16))();
}

MRUDiscoveredGroupSessionRoute *__70__MRURoutingViewController_fetchAvailableRoutesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRUDiscoveredGroupSessionRoute alloc] initWithDiscoveredGroupSession:v2];

  return v3;
}

- (void)groupSessionDiscovery:(id)a3 discoveredSessionsDidChange:(id)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__MRURoutingViewController_groupSessionDiscovery_discoveredSessionsDidChange___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)groupSessionDiscovery:(id)a3 activeSessionDidChange:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__MRURoutingViewController_groupSessionDiscovery_activeSessionDidChange___block_invoke;
  v7[3] = &unk_1E76639D0;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __73__MRURoutingViewController_groupSessionDiscovery_activeSessionDidChange___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 1424);
  if (v2)
  {
    v3 = [v2 identifier];
    v4 = [*(a1 + 40) identifier];
    v5 = v4;
    if (v3 == v4)
    {
    }

    else
    {
      v6 = [v3 isEqual:v4];

      if ((v6 & 1) == 0)
      {
        v7 = MCLogCategoryDefault();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [*(*(a1 + 32) + 1424) identifier];
          v19 = 138543362;
          v20 = v8;
          _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] End observing group session: %{public}@", &v19, 0xCu);
        }

        v9 = *(a1 + 32);
        v10 = *(v9 + 1424);
        *(v9 + 1424) = 0;
      }
    }
  }

  if (*(a1 + 40))
  {
    v11 = MCLogCategoryDefault();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) identifier];
      v19 = 138543362;
      v20 = v12;
      _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] Begin observing group session: %{public}@", &v19, 0xCu);
    }

    v13 = MEMORY[0x1E69B0A40];
    v14 = [*(a1 + 40) identifier];
    v15 = [v13 remoteControlGroupSessionWithIdentifier:v14 delegate:*(a1 + 32)];
    v16 = *(a1 + 32);
    v17 = *(v16 + 1424);
    *(v16 + 1424) = v15;
  }

  return [*(a1 + 32) _updateDisplayedRoutes];
}

- (void)groupSessionDidConnect:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MCLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] Connected to group session: %{public}@", &v5, 0xCu);
  }
}

- (void)groupSession:(id)a3 didInvalidateWithError:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MCLogCategoryDefault();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] Group session invalidated: %{public}@ with error: %{public}@", buf, 0x16u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MRURoutingViewController_groupSession_didInvalidateWithError___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __64__MRURoutingViewController_groupSession_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1424);
  *(v2 + 1424) = 0;

  v4 = *(a1 + 32);

  return [v4 _updateDisplayedRoutes];
}

- (id)_stateDumpObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v2 = MEMORY[0x1E69E96A0];
  msv_dispatch_sync_on_queue();

  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __44__MRURoutingViewController__stateDumpObject__block_invoke(uint64_t a1)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"_obj";
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), *(a1 + 32)];
  v12[0] = v2;
  v11[1] = @"endpointRoute";
  v3 = [*(a1 + 32) endpointRoute];
  v4 = v3;
  v5 = @"<NONE>";
  if (v3)
  {
    v5 = v3;
  }

  v12[1] = v5;
  v11[2] = @"routeDiscoveryMode";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(a1 + 32) + 1176), "discoveryMode")}];
  v12[2] = v6;
  v11[3] = @"onScreen";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 1166)];
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (id)_fullStateDumpObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__0;
  v9 = __Block_byref_object_dispose__0;
  v10 = 0;
  v2 = MEMORY[0x1E69E96A0];
  msv_dispatch_sync_on_queue();

  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __48__MRURoutingViewController__fullStateDumpObject__block_invoke(uint64_t a1)
{
  v42[29] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), *(a1 + 32), @"_obj"];
  v42[0] = v2;
  v41[1] = @"endpointRoute";
  v3 = [*(a1 + 32) endpointRoute];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"<NONE>";
  }

  v42[1] = v5;
  v41[2] = @"displayedEndpointRoute";
  v6 = *(a1 + 32);
  v7 = *(v6 + 1016);
  if (!v7)
  {
    v7 = @"<NONE>";
  }

  v42[2] = v7;
  v41[3] = @"routeDiscoveryMode";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(v6 + 1176), "discoveryMode")}];
  v42[3] = v8;
  v41[4] = @"onScreen";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 1166)];
  v42[4] = v9;
  v41[5] = @"inCarPlay";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isInCarPlay")}];
  v42[5] = v10;
  v41[6] = @"groupSessionDiscovery";
  v11 = [*(a1 + 32) groupSessionDiscovery];
  v12 = [v11 debugDescription];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"<NONE>";
  }

  v42[6] = v14;
  v41[7] = @"expandedGroupUIDs";
  v15 = *(a1 + 32);
  v16 = v15[162];
  if (!v16)
  {
    v16 = @"<NONE>";
  }

  v42[7] = v16;
  v41[8] = @"expandedItemUIDs";
  v17 = v15[163];
  if (!v17)
  {
    v17 = @"<NONE>";
  }

  v42[8] = v17;
  v41[9] = @"expandedRouteUIDs";
  v18 = v15[164];
  if (!v18)
  {
    v18 = @"<NONE>";
  }

  v42[9] = v18;
  v41[10] = @"expandedVendorSpecificGroupUIDs";
  v19 = v15[173];
  if (!v19)
  {
    v19 = @"<NONE>";
  }

  v42[10] = v19;
  v41[11] = @"collapsedVendorSpecificGroupUIDs";
  v20 = v15[172];
  if (!v20)
  {
    v20 = @"<NONE>";
  }

  v42[11] = v20;
  v41[12] = @"indexedDataControllers";
  v21 = v15[165];
  if (!v21)
  {
    v21 = @"<NONE>";
  }

  v42[12] = v21;
  v41[13] = @"routingViewItems";
  v22 = v15[128];
  if (!v22)
  {
    v22 = @"<NONE>";
  }

  v42[13] = v22;
  v41[14] = @"routingController";
  v23 = v15[147];
  if (!v23)
  {
    v23 = @"<NONE>";
  }

  v42[14] = v23;
  v41[15] = @"pendingUpdate";
  v24 = v15[124];
  if (!v24)
  {
    v24 = @"<NONE>";
  }

  v42[15] = v24;
  v41[16] = @"optimisticUpdate";
  v25 = v15[125];
  if (!v25)
  {
    v25 = @"<NONE>";
  }

  v42[16] = v25;
  v41[17] = @"cachedPickedRoutes";
  v26 = v15[129];
  if (!v26)
  {
    v26 = @"<NONE>";
  }

  v42[17] = v26;
  v41[18] = @"cachedDisplayableAvailableRoutes";
  v27 = v15[130];
  if (!v27)
  {
    v27 = @"<NONE>";
  }

  v42[18] = v27;
  v41[19] = @"cachedPendingPickedRoutes";
  v28 = v15[131];
  if (!v28)
  {
    v28 = @"<NONE>";
  }

  v42[19] = v28;
  v41[20] = @"cachedDisplayAsPickedRoutes";
  v29 = v15[132];
  if (!v29)
  {
    v29 = @"<NONE>";
  }

  v42[20] = v29;
  v41[21] = @"cachedVolumeCapableRoutes";
  v30 = v15[133];
  if (!v30)
  {
    v30 = @"<NONE>";
  }

  v42[21] = v30;
  v41[22] = @"cachedRouteGrouping";
  v31 = v15[134];
  if (!v31)
  {
    v31 = @"<NONE>";
  }

  v42[22] = v31;
  v41[23] = @"cachedAirPlayRoutes";
  v32 = v15[135];
  if (!v32)
  {
    v32 = @"<NONE>";
  }

  v42[23] = v32;
  v41[24] = @"cachedNativeRoutes";
  v33 = v15[136];
  if (!v33)
  {
    v33 = @"<NONE>";
  }

  v42[24] = v33;
  v41[25] = @"cachedNativeRoutesInVendorSpecificGroup";
  v34 = v15[137];
  if (!v34)
  {
    v34 = @"<NONE>";
  }

  v42[25] = v34;
  v41[26] = @"cachedActivatedVendorSpecificDeviceIDs";
  v35 = v15[138];
  if (!v35)
  {
    v35 = @"<NONE>";
  }

  v42[26] = v35;
  v41[27] = @"cachedPendingVendorSpecificDeviceIDs";
  v36 = v15[139];
  if (!v36)
  {
    v36 = @"<NONE>";
  }

  v42[27] = v36;
  v41[28] = @"cachedAvailableVendorSpecificDeviceIDs";
  v37 = v15[140];
  if (!v37)
  {
    v37 = @"<NONE>";
  }

  v42[28] = v37;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:29];
  v39 = *(*(a1 + 40) + 8);
  v40 = *(v39 + 40);
  *(v39 + 40) = v38;
}

- (void)hearingAidConnectionDidChange
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(MRURoutingViewController *)self view];
  v4 = [v3 tableView];
  v5 = [v4 indexPathsForVisibleRows];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  obj = v6;
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v23 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v22 + 1) + 8 * v10);
      v12 = [(MPSectionedCollection *)self->_routingViewItems itemAtIndexPath:v11];
      v13 = [v12 mainRoute];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        v6 = obj;
        goto LABEL_14;
      }
    }

    v15 = v11;

    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = MCLogCategoryDefault();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v15;
      _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEFAULT, "[MRURoutingViewController] virtualHearingAidIndexPath: %@", buf, 0xCu);
    }

    v17 = [(MRURoutingViewController *)self view];
    v18 = [v17 tableView];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __57__MRURoutingViewController_hearingAidConnectionDidChange__block_invoke;
    v20[3] = &unk_1E76639D0;
    v20[4] = self;
    v21 = v15;
    v6 = v15;
    [v18 performBatchUpdates:v20 completion:0];
  }

LABEL_14:

LABEL_15:
}

void __57__MRURoutingViewController_hearingAidConnectionDidChange__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) view];
  v3 = [v2 tableView];
  v5[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v3 reloadRowsAtIndexPaths:v4 withRowAnimation:0];
}

- (MRURoutingViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)scrollIndicatorInsets
{
  top = self->_scrollIndicatorInsets.top;
  left = self->_scrollIndicatorInsets.left;
  bottom = self->_scrollIndicatorInsets.bottom;
  right = self->_scrollIndicatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end