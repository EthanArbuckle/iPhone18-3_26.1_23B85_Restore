@interface MediaControlsEndpointsManager
- (BOOL)_homeHasRoute:(id)route;
- (BOOL)isActiveSystemEndpointEqualToLocalEndpoint;
- (MPAVEndpointRoute)activeSystemRoute;
- (MPAVEndpointRoute)resolvedActiveSystemRoute;
- (MediaControlsEndpointsManager)initWithConfiguration:(id)configuration;
- (MediaControlsEndpointsManagerDelegate)delegate;
- (id)_createSectionedCollectionFromRoutes:(id)routes;
- (id)_endpointControllerContainingOutputDevice:(id)device endpointWrapper:(id *)wrapper;
- (id)endpointControllerForRoute:(id)route;
- (int64_t)_indexOfRouteWithUID:(id)d;
- (void)_activeSystemRouteDidChange:(id)change;
- (void)_setRoutes:(id)routes withChangeDetails:(id)details;
- (void)_updateWithRoutes:(id)routes;
- (void)dealloc;
- (void)getOutputDeviceIsPlaying:(id)playing completion:(id)completion;
- (void)homeObserverDidUpdateKnownUIDs:(id)ds;
- (void)loadActiveSystemRoute;
- (void)routingControllerAvailableRoutesDidChange:(id)change;
- (void)setActiveSystemRoute:(id)route reason:(id)reason;
- (void)setActiveSystemRoute:(id)route requestDetails:(id)details;
- (void)setDiscoveryMode:(int64_t)mode;
- (void)updateActiveSystemRoute:(id)route;
@end

@implementation MediaControlsEndpointsManager

- (MediaControlsEndpointsManager)initWithConfiguration:(id)configuration
{
  v27[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v26.receiver = self;
  v26.super_class = MediaControlsEndpointsManager;
  v5 = [(MediaControlsEndpointsManager *)&v26 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.MediaControls.MediaControlsEndpointsManager/serialQueue", 0);
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    endpointControllersMap = v5->_endpointControllersMap;
    v5->_endpointControllersMap = v8;

    v10 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v10;

    v5->_discoveryMode = 0;
    v12 = objc_alloc_init(MediaControlsHomeObserver);
    homeObserver = v5->_homeObserver;
    v5->_homeObserver = v12;

    [(MediaControlsHomeObserver *)v5->_homeObserver setDelegate:v5];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@(endpoints)", objc_opt_class()];
    style = [(MPMediaControlsConfiguration *)v5->_configuration style];
    if (style <= 6)
    {
      if (((1 << style) & 0x72) != 0)
      {
        v16 = MEMORY[0x1E6970490];
        routingContextUID = [(MPMediaControlsConfiguration *)v5->_configuration routingContextUID];
        v18 = [v16 systemRouteWithContextUID:routingContextUID];

        v27[0] = v18;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      }

      else
      {
        v18 = objc_alloc_init(MEMORY[0x1E6970458]);
        routingContextUID2 = [(MPMediaControlsConfiguration *)v5->_configuration routingContextUID];
        [v18 setRoutingContextUID:routingContextUID2];

        v20 = [objc_alloc(MEMORY[0x1E6970490]) initWithDataSource:v18 name:v14];
        routingController = v5->_routingController;
        v5->_routingController = v20;

        [(MPAVRoutingController *)v5->_routingController setDelegate:v5];
        [(MPAVRoutingController *)v5->_routingController setDiscoveryMode:v5->_discoveryMode];
        presentingAppBundleID = [configurationCopy presentingAppBundleID];
        [(MPAVRoutingController *)v5->_routingController setPresentedBundleID:presentingAppBundleID];

        [(MPAVRoutingController *)v5->_routingController availableRoutes];
      }
      v23 = ;
      [(MediaControlsEndpointsManager *)v5 _updateWithRoutes:v23];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__activeSystemRouteDidChange_ name:*MEMORY[0x1E696F870] object:0];

    [(MediaControlsEndpointsManager *)v5 loadActiveSystemRoute];
  }

  return v5;
}

- (void)dealloc
{
  [(MediaControlsHomeObserver *)self->_homeObserver setDelegate:0];
  [(MPAVRoutingController *)self->_routingController setDelegate:0];
  v3.receiver = self;
  v3.super_class = MediaControlsEndpointsManager;
  [(MediaControlsEndpointsManager *)&v3 dealloc];
}

- (void)setActiveSystemRoute:(id)route reason:(id)reason
{
  v6 = MEMORY[0x1E69B0AE0];
  reasonCopy = reason;
  routeCopy = route;
  v9 = [[v6 alloc] initWithName:@"setActiveSystemRoute:reason:" requestID:0 reason:reasonCopy userInitiated:0];

  [(MediaControlsEndpointsManager *)self setActiveSystemRoute:routeCopy requestDetails:v9];
}

- (void)setActiveSystemRoute:(id)route requestDetails:(id)details
{
  detailsCopy = details;
  routeUID = [route routeUID];
  if (route)
  {
    activeSystemRouteUID = self->_activeSystemRouteUID;
    if (activeSystemRouteUID != routeUID && ([(NSString *)activeSystemRouteUID isEqual:routeUID]& 1) == 0)
    {
      [(MediaControlsEndpointsManager *)self updateActiveSystemRoute:routeUID];
      activeSystemRoute = [(MediaControlsEndpointsManager *)self activeSystemRoute];
      v10 = MEMORY[0x1E6970490];
      reason = [detailsCopy reason];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __69__MediaControlsEndpointsManager_setActiveSystemRoute_requestDetails___block_invoke;
      v13[3] = &unk_1E7664380;
      v14 = activeSystemRoute;
      v15 = detailsCopy;
      selfCopy = self;
      v12 = activeSystemRoute;
      [v10 setActiveRoute:v12 reason:reason completion:v13];
    }
  }
}

void __69__MediaControlsEndpointsManager_setActiveSystemRoute_requestDetails___block_invoke(id *a1, uint64_t a2)
{
  v4 = [a1[4] endpointObject];
  v10 = v4;
  if (a2 || !v4)
  {
    if (a2)
    {
      [a1[6] loadActiveSystemRoute];
    }
  }

  else if ([a1[5] userInitiated])
  {
    v5 = [a1[6] configuration];
    v6 = [v5 donatingAppBundleID];

    v7 = [a1[6] configuration];
    v8 = [v7 isDonatingAppEligible];

    v9 = +[MRURouteRecommender sharedInstance];
    [v9 donatePickerChoiceFor:v10 bundleID:v6 isEligibleApp:v8 reason:@"setActiveSystemRoute"];
  }
}

- (void)loadActiveSystemRoute
{
  if (!self->_isRequestingActiveRoute)
  {
    self->_isRequestingActiveRoute = 1;
    objc_initWeak(&location, self);
    routingController = self->_routingController;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __54__MediaControlsEndpointsManager_loadActiveSystemRoute__block_invoke;
    v4[3] = &unk_1E7666430;
    objc_copyWeak(&v5, &location);
    [(MPAVRoutingController *)routingController getActiveRouteWithTimeout:v4 completion:3.0];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __54__MediaControlsEndpointsManager_loadActiveSystemRoute__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__MediaControlsEndpointsManager_loadActiveSystemRoute__block_invoke_2;
  v5[3] = &unk_1E7663980;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v7);
}

void __54__MediaControlsEndpointsManager_loadActiveSystemRoute__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[25] = 0;
    v4 = WeakRetained;
    v3 = [*(a1 + 32) routeUID];
    [v4 updateActiveSystemRoute:v3];

    WeakRetained = v4;
  }
}

- (void)updateActiveSystemRoute:(id)route
{
  routeCopy = route;
  v5 = [(MediaControlsEndpointsManager *)self _indexOfRouteWithUID:?];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(NSString *)routeCopy copy];
    pendingActiveSystemRouteUID = self->_pendingActiveSystemRouteUID;
    self->_pendingActiveSystemRouteUID = v6;
  }

  else
  {
    v8 = v5;
    v9 = self->_activeSystemRouteUID;
    pendingActiveSystemRouteUID = v9;
    if (v9 != routeCopy)
    {
      v10 = [(NSString *)v9 isEqual:?];

      if (v10)
      {
        goto LABEL_7;
      }

      objc_storeStrong(&self->_activeSystemRouteUID, route);
      v11 = self->_pendingActiveSystemRouteUID;
      self->_pendingActiveSystemRouteUID = 0;

      pendingActiveSystemRouteUID = [(NSArray *)self->_routes objectAtIndex:v8];
      delegate = [(MediaControlsEndpointsManager *)self delegate];
      [delegate endpointsManager:self activeSystemRouteDidChange:pendingActiveSystemRouteUID];
    }
  }

LABEL_7:
}

- (MPAVEndpointRoute)activeSystemRoute
{
  v3 = [(MediaControlsEndpointsManager *)self _indexOfRouteWithUID:self->_activeSystemRouteUID];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = MEMORY[0x1E6970490];
    routingContextUID = [(MPMediaControlsConfiguration *)self->_configuration routingContextUID];
    v6 = [v4 systemRouteWithContextUID:routingContextUID];
  }

  else
  {
    v6 = [(NSArray *)self->_routes objectAtIndex:v3];
  }

  return v6;
}

- (MPAVEndpointRoute)resolvedActiveSystemRoute
{
  v3 = [(MediaControlsEndpointsManager *)self _indexOfRouteWithUID:self->_activeSystemRouteUID];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSArray *)self->_routes objectAtIndex:v3];
  }

  return v4;
}

- (void)setDiscoveryMode:(int64_t)mode
{
  discoveryMode = self->_discoveryMode;
  if (discoveryMode != mode)
  {
    self->_discoveryMode = mode;
    [(MPAVRoutingController *)self->_routingController setDiscoveryMode:?];
    homeObserver = self->_homeObserver;
    if (mode)
    {
      [(MediaControlsHomeObserver *)homeObserver beginObserving];
      if (discoveryMode)
      {
        return;
      }
    }

    else
    {
      [(MediaControlsHomeObserver *)homeObserver stopObserving];
      if (discoveryMode)
      {
        return;
      }
    }

    availableRoutes = [(MPAVRoutingController *)self->_routingController availableRoutes];
    [(MediaControlsEndpointsManager *)self _updateWithRoutes:availableRoutes];
  }
}

- (id)endpointControllerForRoute:(id)route
{
  endpointControllersMap = self->_endpointControllersMap;
  routeUID = [route routeUID];
  v5 = [(NSMutableDictionary *)endpointControllersMap objectForKey:routeUID];

  return v5;
}

- (BOOL)isActiveSystemEndpointEqualToLocalEndpoint
{
  activeSystemRouteUID = self->_activeSystemRouteUID;
  systemRoute = [MEMORY[0x1E6970490] systemRoute];
  routeUID = [systemRoute routeUID];
  LOBYTE(activeSystemRouteUID) = [(NSString *)activeSystemRouteUID isEqualToString:routeUID];

  return activeSystemRouteUID;
}

- (void)routingControllerAvailableRoutesDidChange:(id)change
{
  availableRoutes = [change availableRoutes];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__MediaControlsEndpointsManager_routingControllerAvailableRoutesDidChange___block_invoke;
  v6[3] = &unk_1E76639D0;
  v6[4] = self;
  v7 = availableRoutes;
  v5 = availableRoutes;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

_BYTE *__75__MediaControlsEndpointsManager_routingControllerAvailableRoutesDidChange___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[24] == 1)
  {
    return [result _updateWithRoutes:*(a1 + 40)];
  }

  return result;
}

- (void)getOutputDeviceIsPlaying:(id)playing completion:(id)completion
{
  v29[2] = *MEMORY[0x1E69E9840];
  playingCopy = playing;
  completionCopy = completion;
  if (completionCopy)
  {
    v27 = 0;
    v8 = [(MediaControlsEndpointsManager *)self _endpointControllerContainingOutputDevice:playingCopy endpointWrapper:&v27];
    v9 = v27;
    route = [v8 route];
    v11 = route;
    if (v8 && v9)
    {
      if ([route supportsRemoteControl])
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];

        v14 = _MRLogForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [MediaControlsEndpointsManager getOutputDeviceIsPlaying:completion:];
        }

        v15 = *MEMORY[0x1E696F858];
        v28[0] = *MEMORY[0x1E696F848];
        v28[1] = v15;
        v29[0] = uUIDString;
        v29[1] = @"MediaControlsEndpointsManager-getOutputDeviceIsPlaying";
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
        route2 = [v8 route];
        connection = [route2 connection];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __69__MediaControlsEndpointsManager_getOutputDeviceIsPlaying_completion___block_invoke;
        v24[3] = &unk_1E7666480;
        v26 = completionCopy;
        v25 = v9;
        [connection connectWithUserInfo:v16 completion:v24];

        goto LABEL_12;
      }

      route3 = [v8 route];
      isDeviceRoute = [route3 isDeviceRoute];

      if (isDeviceRoute)
      {
        v22 = _MRLogForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [MediaControlsEndpointsManager getOutputDeviceIsPlaying:v22 completion:?];
        }

        MRMediaRemoteGetLocalOrigin();
        v23 = completionCopy;
        MRMediaRemoteGetNowPlayingApplicationPlaybackStateForOrigin();

        goto LABEL_12;
      }
    }

    else
    {
      v19 = _MRLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [MediaControlsEndpointsManager getOutputDeviceIsPlaying:completion:];
      }
    }

    (*(completionCopy + 2))(completionCopy, 0);
LABEL_12:
  }
}

void __69__MediaControlsEndpointsManager_getOutputDeviceIsPlaying_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __69__MediaControlsEndpointsManager_getOutputDeviceIsPlaying_completion___block_invoke_cold_1();
    }

    goto LABEL_5;
  }

  [*(a1 + 32) unwrappedValue];
  v5 = MRAVEndpointCopyOrigin();
  if (!v5)
  {
LABEL_5:
    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v6 = v5;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __69__MediaControlsEndpointsManager_getOutputDeviceIsPlaying_completion___block_invoke_cold_2();
  }

  v8 = *(a1 + 40);
  MRMediaRemoteGetNowPlayingApplicationPlaybackStateForOrigin();
  CFRelease(v6);

LABEL_10:
}

uint64_t __69__MediaControlsEndpointsManager_getOutputDeviceIsPlaying_completion___block_invoke_28(uint64_t a1)
{
  MRMediaRemotePlaybackStateIsAdvancing();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t __69__MediaControlsEndpointsManager_getOutputDeviceIsPlaying_completion___block_invoke_30(uint64_t a1)
{
  MRMediaRemotePlaybackStateIsAdvancing();
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (void)homeObserverDidUpdateKnownUIDs:(id)ds
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__MediaControlsEndpointsManager_homeObserverDidUpdateKnownUIDs___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __64__MediaControlsEndpointsManager_homeObserverDidUpdateKnownUIDs___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 1;
  v1 = *(a1 + 32);
  v2 = [v1[10] availableRoutes];
  [v1 _updateWithRoutes:v2];
}

- (void)_activeSystemRouteDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69B0C20]];
  intValue = [v5 intValue];

  if (!intValue)
  {

    [(MediaControlsEndpointsManager *)self loadActiveSystemRoute];
  }
}

- (int64_t)_indexOfRouteWithUID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (self->_routes && [dCopy length])
  {
    routes = self->_routes;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__MediaControlsEndpointsManager__indexOfRouteWithUID___block_invoke;
    v9[3] = &unk_1E76664A8;
    v10 = v5;
    v7 = [(NSArray *)routes indexOfObjectPassingTest:v9];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

uint64_t __54__MediaControlsEndpointsManager__indexOfRouteWithUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 routeUID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_endpointControllerContainingOutputDevice:(id)device endpointWrapper:(id *)wrapper
{
  v34 = *MEMORY[0x1E69E9840];
  routeUID = [device routeUID];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(NSMutableDictionary *)self->_endpointControllersMap objectEnumerator];
  v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v22 = *v29;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v29 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v28 + 1) + 8 * v7);
      route = [v8 route];
      endpointWrapper = [route endpointWrapper];

      [endpointWrapper unwrappedValue];
      v11 = MRAVEndpointCopyOutputDevices();
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = MRAVOutputDeviceCopyUniqueIdentifier();
            if ([v17 isEqualToString:routeUID])
            {
              if (wrapper)
              {
                v19 = endpointWrapper;
                *wrapper = endpointWrapper;
              }

              v18 = v8;

              goto LABEL_18;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v18 = 0;
LABEL_18:

      if (v18)
      {
        break;
      }

      if (++v7 == v23)
      {
        v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v23)
        {
          goto LABEL_3;
        }

        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    v18 = 0;
  }

  return v18;
}

- (BOOL)_homeHasRoute:(id)route
{
  homeObserver = self->_homeObserver;
  routeUID = [route routeUID];
  LOBYTE(homeObserver) = [(MediaControlsHomeObserver *)homeObserver hasAccessoryWithUID:routeUID];

  return homeObserver;
}

- (void)_setRoutes:(id)routes withChangeDetails:(id)details
{
  v68 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  detailsCopy = details;
  v8 = routesCopy;
  v9 = detailsCopy;
  deletedItemIndexPaths = [detailsCopy deletedItemIndexPaths];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __62__MediaControlsEndpointsManager__setRoutes_withChangeDetails___block_invoke;
  v64[3] = &unk_1E76664D0;
  v64[4] = self;
  [deletedItemIndexPaths enumerateObjectsUsingBlock:v64];

  v11 = [v8 copy];
  routes = self->_routes;
  self->_routes = v11;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__MediaControlsEndpointsManager__setRoutes_withChangeDetails___block_invoke_2;
  aBlock[3] = &unk_1E76664F8;
  aBlock[4] = self;
  v13 = _Block_copy(aBlock);
  v14 = [v8 mutableCopy];
  v47 = v9;
  insertedItemIndexPaths = [v9 insertedItemIndexPaths];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __62__MediaControlsEndpointsManager__setRoutes_withChangeDetails___block_invoke_3;
  v60[3] = &unk_1E7666520;
  v60[4] = self;
  v16 = v13;
  v62 = v16;
  v17 = v14;
  v61 = v17;
  [insertedItemIndexPaths enumerateObjectsUsingBlock:v60];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v56 objects:v67 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v57;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v57 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v56 + 1) + 8 * i);
        routeUID = [v23 routeUID];
        v25 = [(NSMutableDictionary *)self->_endpointControllersMap objectForKey:routeUID];
        [v25 setRoute:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v56 objects:v67 count:16];
    }

    while (v20);
  }

  v26 = [(NSArray *)self->_routes count];
  if (v26 != [(NSMutableDictionary *)self->_endpointControllersMap count])
  {
    v46 = v8;
    v27 = [MEMORY[0x1E696AD60] stringWithString:@"Routes does not match EndpointControllersMap."];
    v28 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_routes, "count")}];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v29 = self->_routes;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v52 objects:v66 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v53;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v53 != v32)
          {
            objc_enumerationMutation(v29);
          }

          routeUID2 = [*(*(&v52 + 1) + 8 * j) routeUID];
          [v28 addObject:routeUID2];
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v52 objects:v66 count:16];
      }

      while (v31);
    }

    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_routes, "count")}];
    v36 = [v28 componentsJoinedByString:{@", "}];
    [v27 appendFormat:@"\nRoute Count : %@, UIDs : %@", v35, v36];

    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSMutableDictionary count](self->_endpointControllersMap, "count")}];
    allKeys = [(NSMutableDictionary *)self->_endpointControllersMap allKeys];
    v39 = [allKeys componentsJoinedByString:{@", "}];
    [v27 appendFormat:@"\nEndpoint Controller Map Count : %@, UIDs : %@", v37, v39];

    [v27 appendFormat:@"\nChange details: %@", v47];
    v40 = _MRLogForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [MediaControlsEndpointsManager _setRoutes:withChangeDetails:];
    }

    [(NSMutableDictionary *)self->_endpointControllersMap removeAllObjects];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v41 = self->_routes;
    v42 = [(NSArray *)v41 countByEnumeratingWithState:&v48 objects:v65 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v49;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v49 != v44)
          {
            objc_enumerationMutation(v41);
          }

          (*(v16 + 2))(v16, *(*(&v48 + 1) + 8 * k));
        }

        v43 = [(NSArray *)v41 countByEnumeratingWithState:&v48 objects:v65 count:16];
      }

      while (v43);
    }

    v8 = v46;
  }

  if ([(NSString *)self->_pendingActiveSystemRouteUID length])
  {
    [(MediaControlsEndpointsManager *)self updateActiveSystemRoute:self->_pendingActiveSystemRouteUID];
  }
}

void __62__MediaControlsEndpointsManager__setRoutes_withChangeDetails___block_invoke(uint64_t a1, void *a2)
{
  v3 = [*(*(a1 + 32) + 56) objectAtIndex:{objc_msgSend(a2, "item")}];
  v4 = [v3 routeUID];

  [*(*(a1 + 32) + 16) removeObjectForKey:v4];
}

void __62__MediaControlsEndpointsManager__setRoutes_withChangeDetails___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 routeUID];
  v4 = [[MediaControlsEndpointController alloc] initWithEndpoint:v3];

  [(MediaControlsEndpointController *)v4 setConfiguration:*(*(a1 + 32) + 40)];
  [*(*(a1 + 32) + 16) setObject:v4 forKey:v5];
}

void __62__MediaControlsEndpointsManager__setRoutes_withChangeDetails___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [*(*(a1 + 32) + 56) objectAtIndex:{objc_msgSend(a2, "item")}];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) removeObject:v3];
}

- (void)_updateWithRoutes:(id)routes
{
  v62 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  if (self->_isUpdatingRoutes)
  {
    objc_storeStrong(&self->_pendingRoutesToUpdate, routes);
  }

  else
  {
    self->_isUpdatingRoutes = 1;
    pendingRoutesToUpdate = self->_pendingRoutesToUpdate;
    self->_pendingRoutesToUpdate = 0;

    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(routesCopy, "count")}];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v45 = routesCopy;
    v8 = routesCopy;
    v9 = [v8 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v57;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v57 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v56 + 1) + 8 * i);
          if ([v13 isSmartAudio])
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v10);
    }

    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke;
    v55[3] = &unk_1E7666548;
    v55[4] = self;
    [v7 sortUsingComparator:v55];
    currentSettings = [MEMORY[0x1E69B0B28] currentSettings];
    supportRouteRecommendations = [currentSettings supportRouteRecommendations];

    if (supportRouteRecommendations)
    {
      v16 = +[MRURouteRecommender sharedInstance];
      [v16 updateRecommendations];

      v17 = +[MRURouteRecommender sharedInstance];
      v18 = [v17 sortEndpointRoutes:v7];

      v19 = [v18 mutableCopy];
      v20 = MEMORY[0x1E6970490];
      routingContextUID = [(MPMediaControlsConfiguration *)self->_configuration routingContextUID];
      v22 = [v20 systemRouteWithContextUID:routingContextUID];

      [v19 removeObject:v22];
      [v19 insertObject:v22 atIndex:0];

      v7 = v19;
    }

    if (![v7 count])
    {
      v23 = MEMORY[0x1E6970490];
      routingContextUID2 = [(MPMediaControlsConfiguration *)self->_configuration routingContextUID];
      v25 = [v23 systemRouteWithContextUID:routingContextUID2];
      [v7 addObject:v25];
    }

    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v43 = [(NSArray *)self->_routes copy];
    v44 = v7;
    v41 = [v7 copy];
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v27 = self->_endpointControllersMap;
    v28 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v52;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v52 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v51 + 1) + 8 * j);
          v33 = [(NSMutableDictionary *)self->_endpointControllersMap objectForKey:v32, v41];
          routeNames = [v33 routeNames];
          v35 = [routeNames copy];
          [v26 setObject:v35 forKey:v32];
        }

        v29 = [(NSMutableDictionary *)v27 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v29);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke_2;
    block[3] = &unk_1E76665C0;
    block[4] = self;
    v47 = v43;
    v48 = v41;
    v49 = v26;
    v50 = v42;
    v36 = v42;
    v37 = v26;
    v38 = v41;
    v39 = v43;
    v40 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
    dispatch_async(self->_serialQueue, v40);

    routesCopy = v45;
  }
}

uint64_t __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _homeHasRoute:v5];
  v8 = [*(a1 + 32) _homeHasRoute:v6];
  v9 = -1;
  if (([v5 isDeviceRoute] & 1) == 0)
  {
    v10 = [v6 isDeviceRoute];
    if (v7)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    if (v7 != v8)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = v12;
    }

    if (!v9)
    {
      v14 = [v5 sortName];
      v15 = [v6 sortName];
      v9 = [v14 localizedCaseInsensitiveCompare:v15];

      if (!v9)
      {
        v16 = [v5 routeUID];
        v17 = [v6 routeUID];
        v9 = [v16 compare:v17];
      }
    }
  }

  return v9;
}

void __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _createSectionedCollectionFromRoutes:*(a1 + 40)];
  v3 = [*(a1 + 32) _createSectionedCollectionFromRoutes:*(a1 + 48)];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke_3;
  v24[3] = &unk_1E7664F70;
  v25 = v2;
  v26 = v3;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke_4;
  v19[3] = &unk_1E7666570;
  v20 = v25;
  v21 = v26;
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  v4 = v26;
  v5 = v25;
  v6 = [v5 changeDetailsToSectionedCollection:v4 isEqualBlock:v24 isUpdatedBlock:v19];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke_5;
  aBlock[3] = &unk_1E7664F28;
  aBlock[4] = *(a1 + 32);
  v16 = *(a1 + 48);
  v7 = v6;
  v17 = v7;
  v18 = *(a1 + 64);
  v8 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke_7;
  block[3] = &unk_1E7664A90;
  v9 = *(a1 + 32);
  v13 = v7;
  v14 = v8;
  block[4] = v9;
  v10 = v7;
  v11 = v8;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 length] == 1)
  {
    v7 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) itemAtIndexPath:v5];
    v9 = [*(a1 + 40) itemAtIndexPath:v6];
    v7 = [v8 isEqual:v9];
  }

  return v7;
}

uint64_t __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke_4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 length] != 1)
  {
    v7 = [a1[4] itemAtIndexPath:v5];
    v8 = [a1[5] itemAtIndexPath:v6];
    v9 = [v7 routeUID];
    v10 = [a1[6] objectForKey:v9];
    v11 = [v8 routeNames];
    if (([v10 isEqualToArray:v11] & 1) == 0)
    {
      [a1[7] addObject:v9];
    }
  }

  return 0;
}

void __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke_5(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _setRoutes:*(a1 + 40) withChangeDetails:*(a1 + 48)];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 56);
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

        v7 = [*(*(a1 + 32) + 16) objectForKey:*(*(&v10 + 1) + 8 * v6)];
        [v7 updateRoutePropertiesIfNeeded];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 32);
  if (*(v8 + 32))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke_6;
    block[3] = &unk_1E7663898;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    *(v8 + 26) = 0;
  }
}

void __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke_7(id *a1)
{
  v2 = [a1[4] delegate];
  if (v2)
  {
    v3 = a1[4];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke_8;
    v4[3] = &unk_1E7666598;
    v6 = a1[6];
    v5 = a1[5];
    [v2 endpointsManager:v3 defersRoutesReplacement:v4];
  }

  else
  {
    (*(a1[6] + 2))();
  }
}

id __51__MediaControlsEndpointsManager__updateWithRoutes___block_invoke_8(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return v2;
}

- (id)_createSectionedCollectionFromRoutes:(id)routes
{
  v3 = MEMORY[0x1E6970818];
  routesCopy = routes;
  v5 = objc_alloc_init(v3);
  [v5 appendSection:@"SECTION"];
  [v5 appendItems:routesCopy];

  return v5;
}

- (MediaControlsEndpointsManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)getOutputDeviceIsPlaying:completion:.cold.3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_1A20FC000, v1, OS_LOG_TYPE_ERROR, "<%{public}@> Connecting to request now playing information for: %{public}@", v2, 0x16u);
}

@end