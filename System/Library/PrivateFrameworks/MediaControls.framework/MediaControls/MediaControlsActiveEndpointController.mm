@interface MediaControlsActiveEndpointController
+ (double)mediaRecentlyPlayedTimeout;
- (BOOL)controller:(id)controller shouldRetryFailedRequestWithError:(id)error;
- (MediaControlsActiveEndpointController)initWithActiveEndpointType:(int64_t)type;
- (id)_routeForEndpoint:(__MRAVEndpointRef *)endpoint;
- (void)_activeSystemRouteDidChangeWithChangeType:(int64_t)type;
- (void)_fetchActiveSystemRoute:(id)route;
- (void)_maybeRestoreDeferredPlayerPath;
- (void)_maybeUpdateActiveSystemRoute;
- (void)_resetDeferredPlayerPath;
- (void)_restoreDeferredPlayerPath;
- (void)_updateActiveSystemRoute;
- (void)activeSystemRouteDidChangeNotification:(id)notification;
- (void)endpointController:(id)controller willAttemptToConnectToRoute:(id)route;
- (void)setActiveEndpointUID:(id)d;
- (void)setDeviceUnlocked:(BOOL)unlocked;
- (void)setOnScreen:(BOOL)screen;
@end

@implementation MediaControlsActiveEndpointController

- (MediaControlsActiveEndpointController)initWithActiveEndpointType:(int64_t)type
{
  systemRoute = [MEMORY[0x1E6970490] systemRoute];
  v9.receiver = self;
  v9.super_class = MediaControlsActiveEndpointController;
  v6 = [(MediaControlsEndpointController *)&v9 initWithEndpoint:systemRoute];

  if (v6)
  {
    v6->_endpointType = type;
    [(MediaControlsEndpointController *)v6 setConnectionDelegate:v6];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_activeSystemRouteDidChangeNotification_ name:*MEMORY[0x1E69B0C30] object:0];

    [(MediaControlsActiveEndpointController *)v6 _updateActiveSystemRoute];
  }

  return v6;
}

- (void)setOnScreen:(BOOL)screen
{
  screenCopy = screen;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([(MediaControlsEndpointController *)self onScreen]!= screenCopy)
  {
    v5.receiver = self;
    v5.super_class = MediaControlsActiveEndpointController;
    [(MediaControlsEndpointController *)&v5 setOnScreen:screenCopy];
    if ([(MediaControlsActiveEndpointController *)self isDeferred])
    {
      [(MediaControlsActiveEndpointController *)self _maybeRestoreDeferredPlayerPath];
    }

    else if (screenCopy)
    {
      [(MediaControlsActiveEndpointController *)self _maybeUpdateActiveSystemRoute];
    }
  }
}

- (void)setDeviceUnlocked:(BOOL)unlocked
{
  unlockedCopy = unlocked;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if ([(MediaControlsEndpointController *)self deviceUnlocked]!= unlockedCopy)
  {
    v5.receiver = self;
    v5.super_class = MediaControlsActiveEndpointController;
    [(MediaControlsEndpointController *)&v5 setDeviceUnlocked:unlockedCopy];
    [(MediaControlsActiveEndpointController *)self _maybeRestoreDeferredPlayerPath];
  }
}

- (void)setActiveEndpointUID:(id)d
{
  dCopy = d;
  MRAVEndpointGetLocalEndpoint();
  v6 = MRAVEndpointCopyUniqueIdentifier();
  if ([dCopy isEqualToString:?])
  {

    dCopy = 0;
  }

  activeEndpointUID = self->_activeEndpointUID;
  self->_activeEndpointUID = dCopy;
}

- (BOOL)controller:(id)controller shouldRetryFailedRequestWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v6 = domain != *MEMORY[0x1E696F850];
  if (domain == *MEMORY[0x1E696F850])
  {
    code = [errorCopy code];

    if (code != 2)
    {
      v6 = 1;
      goto LABEL_5;
    }

    v8 = MEMORY[0x1E6970490];
    domain = [MEMORY[0x1E6970490] systemRoute];
    [v8 setActiveRoute:domain reason:@"invalid route error" completion:0];
  }

LABEL_5:
  return v6;
}

- (void)endpointController:(id)controller willAttemptToConnectToRoute:(id)route
{
  routeCopy = route;
  if ([(MediaControlsActiveEndpointController *)self endpointType]== 1)
  {
    connection = [routeCopy connection];
    [connection reset];
  }
}

- (void)activeSystemRouteDidChangeNotification:(id)notification
{
  v16 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69B0C20]];
  intValue = [v6 intValue];

  v8 = MCLogCategoryRouting();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    selfCopy = self;
    v14 = 2114;
    active = MRMediaRemoteActiveEndpointTypeCopyDescription();
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@ activeSystemRouteDidChangeNotification] with type %{public}@", &v12, 0x16u);
  }

  if ([(MediaControlsActiveEndpointController *)self endpointType]== intValue)
  {
    userInfo2 = [notificationCopy userInfo];
    v10 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69B0C18]];
    intValue2 = [v10 intValue];

    [(MediaControlsActiveEndpointController *)self _activeSystemRouteDidChangeWithChangeType:intValue2];
  }
}

- (id)_routeForEndpoint:(__MRAVEndpointRef *)endpoint
{
  ExternalDevice = MRAVEndpointGetExternalDevice();
  v5 = [objc_alloc(MEMORY[0x1E6970450]) initWithEndpoint:endpoint];
  if (ExternalDevice)
  {
    v6 = [objc_alloc(MEMORY[0x1E6970488]) initWithExternalDevice:ExternalDevice];
    [v5 setConnection:v6];
  }

  return v5;
}

- (void)_resetDeferredPlayerPath
{
  [(MediaControlsActiveEndpointController *)self setIsDeferred:0];
  [(MediaControlsActiveEndpointController *)self setActiveEndpointUID:0];
  [(MediaControlsActiveEndpointController *)self setDeferredPlayerPathFuture:0];
  [(MediaControlsActiveEndpointController *)self setDeferredPlayerPathInvalidationToken:0];

  [(MediaControlsActiveEndpointController *)self setDeferredPlayerPathTimer:0];
}

- (void)_restoreDeferredPlayerPath
{
  [(MediaControlsActiveEndpointController *)self _resetDeferredPlayerPath];

  [(MediaControlsActiveEndpointController *)self _updateActiveSystemRoute];
}

- (void)_maybeRestoreDeferredPlayerPath
{
  v42 = *MEMORY[0x1E69E9840];
  if ([(MediaControlsActiveEndpointController *)self isDeferred])
  {
    deferredPlayerPathFuture = [(MediaControlsActiveEndpointController *)self deferredPlayerPathFuture];

    activeEndpointUID = [(MediaControlsActiveEndpointController *)self activeEndpointUID];
    if (activeEndpointUID && [(MediaControlsEndpointController *)self deviceUnlocked])
    {
      v5 = ![(MediaControlsEndpointController *)self onScreen];
    }

    else
    {
      v5 = 0;
    }

    v6 = deferredPlayerPathFuture ? v5 : 1;

    deferredPlayerPathTimer = [(MediaControlsActiveEndpointController *)self deferredPlayerPathTimer];
    v8 = !deferredPlayerPathTimer && ![(MediaControlsEndpointController *)self onScreen];
    v9 = v6 | v8;

    if (v9)
    {
      v10 = MCLogCategoryRouting();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(sel_activeEndpointUID);
        activeEndpointUID2 = [(MediaControlsActiveEndpointController *)self activeEndpointUID];
        v12 = NSStringFromSelector(sel_deferredPlayerPathFuture);
        deferredPlayerPathFuture2 = [(MediaControlsActiveEndpointController *)self deferredPlayerPathFuture];
        result = [deferredPlayerPathFuture2 result];
        v13 = NSStringFromSelector(sel_deferredPlayerPathTimer);
        deferredPlayerPathTimer2 = [(MediaControlsActiveEndpointController *)self deferredPlayerPathTimer];
        v14 = NSStringFromSelector(sel_onScreen);
        if ([(MediaControlsEndpointController *)self onScreen])
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        v16 = NSStringFromSelector(sel_deviceUnlocked);
        *buf = 138414594;
        if ([(MediaControlsEndpointController *)self deviceUnlocked])
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        v23 = v21;
        v24 = 2112;
        v25 = activeEndpointUID2;
        v26 = 2112;
        v27 = v12;
        v28 = 2112;
        v29 = result;
        v30 = 2112;
        v31 = v13;
        v32 = 2112;
        v33 = deferredPlayerPathTimer2;
        v34 = 2112;
        v35 = v14;
        v36 = 2112;
        v37 = v15;
        v38 = 2112;
        v39 = v16;
        v40 = 2112;
        v41 = v17;
        _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_ERROR, "Restoring deferredPlayerPath because %@=%@, %@=%@, %@=%@, %@=%@, %@=%@", buf, 0x66u);
      }

      [(MediaControlsActiveEndpointController *)self _restoreDeferredPlayerPath];
    }
  }
}

- (void)_updateActiveSystemRoute
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MCLogCategoryRouting();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@ _updateActiveSystemRoute]", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__MediaControlsActiveEndpointController__updateActiveSystemRoute__block_invoke;
  v4[3] = &unk_1E7663A70;
  objc_copyWeak(&v5, buf);
  v4[4] = self;
  [(MediaControlsActiveEndpointController *)self _fetchActiveSystemRoute:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(buf);
}

void __65__MediaControlsActiveEndpointController__updateActiveSystemRoute__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _resetDeferredPlayerPath];
    v6 = [v5 _routeForEndpoint:{objc_msgSend(v3, "unwrappedValue")}];
    v7 = [v6 endpointWrapper];
    [v7 unwrappedValue];
    v8 = MRAVEndpointCopyUniqueIdentifier();

    v9 = [*(a1 + 32) route];
    v10 = [v9 endpointWrapper];
    [v10 unwrappedValue];
    v11 = MRAVEndpointCopyUniqueIdentifier();

    if (v8 == v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = [v8 isEqual:v11];
    }

    v13 = [*(a1 + 32) route];
    v14 = [v13 connection];
    v15 = [v14 isInvalidated];

    if (!v12 || v15)
    {
      [v5 setRoute:v6];
      [v5 updateRoutePropertiesIfNeeded];
      if ((v12 & 1) == 0)
      {
        v16 = MCLogCategoryRouting();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 32);
          v18 = 138543874;
          v19 = v17;
          v20 = 2112;
          v21 = v11;
          v22 = 2114;
          v23 = v8;
          _os_log_impl(&dword_1A20FC000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@ _updateActiveSystemRoute] route update from %{@public}@ to %{public}@", &v18, 0x20u);
        }
      }
    }
  }
}

- (void)_maybeUpdateActiveSystemRoute
{
  route = [(MediaControlsEndpointController *)self route];
  [(MediaControlsActiveEndpointController *)self endpointType];
  v4 = route;
  MRAVEndpointGetActiveSystemEndpointUID();
}

void __70__MediaControlsActiveEndpointController__maybeUpdateActiveSystemRoute__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) endpoint];
  v4 = MRAVEndpointCopyOutputDevices();
  if (!v3 && ([*(a1 + 32) isDeviceRoute] & 1) != 0)
  {
LABEL_13:
    v12 = [*(a1 + 40) route];
    v13 = [v12 connection];
    v14 = [v13 isInvalidated];

    if ((v14 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = MRAVOutputDeviceCopyUniqueIdentifier();
          v11 = [v3 isEqualToString:{v10, v17}];

          if (v11)
          {

            goto LABEL_13;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v15 = MCLogCategoryRouting();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 40);
    *buf = 138543362;
    v22 = v16;
    _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@ _maybeUpdateActiveSystemRoute] triggering route update", buf, 0xCu);
  }

  [*(a1 + 40) _updateActiveSystemRoute];
LABEL_17:
}

- (void)_fetchActiveSystemRoute:(id)route
{
  v11 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v5 = MCLogCategoryRouting();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ _fetchActiveSystemRoute]", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  [(MediaControlsActiveEndpointController *)self endpointType];
  v6 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v8, buf);
  v7 = routeCopy;
  MRAVEndpointResolveActiveSystemEndpointWithType();

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __65__MediaControlsActiveEndpointController__fetchActiveSystemRoute___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = MRAVEndpointCopyUniqueIdentifier();
    [WeakRetained setActiveEndpointUID:v5];
  }

  if (*(a1 + 40))
  {
    v6 = MCLogCategoryRouting();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = a2;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@ _fetchActiveSystemRoute] completing with endpoint %{public}@", &v10, 0x16u);
    }

    v8 = *(a1 + 40);
    if (a2)
    {
      v9 = [objc_alloc(MEMORY[0x1E6970588]) initWithMRAVEndpoint:a2];
      (*(v8 + 16))(v8, v9);
    }

    else
    {
      (*(v8 + 16))(v8, 0);
    }
  }
}

- (void)_activeSystemRouteDidChangeWithChangeType:(int64_t)type
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = MCLogCategoryRouting();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v11 = 2114;
    v12 = MRMediaRemoteActiveEndpointChangeTypeCopyDescription();
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ _activeSystemRouteDidChangeWithChangeType] with type %{public}@", buf, 0x16u);
  }

  if (type == 1 && [(MediaControlsEndpointController *)self onScreen])
  {
    v6 = MCLogCategoryRouting();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@ _activeSystemRouteDidChangeWithChangeType] deferring update", buf, 0xCu);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __83__MediaControlsActiveEndpointController__activeSystemRouteDidChangeWithChangeType___block_invoke;
    v8[3] = &unk_1E7663B38;
    v8[4] = self;
    [(MediaControlsActiveEndpointController *)self _fetchActiveSystemRoute:v8];
  }

  else
  {
    v7 = MCLogCategoryRouting();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy3 = self;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@ _activeSystemRouteDidChangeWithChangeType] updating route immediately", buf, 0xCu);
    }

    [(MediaControlsActiveEndpointController *)self _updateActiveSystemRoute];
  }
}

void __83__MediaControlsActiveEndpointController__activeSystemRouteDidChangeWithChangeType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E69B0858] sharedCache];
  v5 = [*(a1 + 32) playerPath];
  v6 = [v4 resolvedPlayerPathForPlayerPath:v5];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__MediaControlsActiveEndpointController__activeSystemRouteDidChangeWithChangeType___block_invoke_2;
  v9[3] = &unk_1E7663B10;
  v9[4] = *(a1 + 32);
  v10 = v3;
  v7 = v3;
  v8 = [v6 onCompletion:v9];
}

void __83__MediaControlsActiveEndpointController__activeSystemRouteDidChangeWithChangeType___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    [v7 _updateActiveSystemRoute];
  }

  else
  {
    [v7 setIsDeferred:1];
    v8 = [MEMORY[0x1E69B0858] sharedCache];
    v9 = [v8 resolvedPlayerPathForPlayerPath:v5];
    [*(a1 + 32) setDeferredPlayerPathFuture:v9];

    objc_initWeak(&location, *(a1 + 32));
    v10 = *(*(a1 + 32) + 120);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __83__MediaControlsActiveEndpointController__activeSystemRouteDidChangeWithChangeType___block_invoke_3;
    v24[3] = &unk_1E7663AE8;
    objc_copyWeak(&v25, &location);
    v11 = [v10 onInvalid:v24];
    [*(a1 + 32) setDeferredPlayerPathInvalidationToken:v11];

    +[MediaControlsActiveEndpointController mediaRecentlyPlayedTimeout];
    v13 = v12;
    v14 = [*(a1 + 32) route];
    [v14 endpoint];
    v15 = MRAVEndpointCopyLocalizedName();

    [*(a1 + 40) unwrappedValue];
    v16 = MRAVEndpointCopyLocalizedName();
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"deferredplayerPathTimer: Remaining at %@ instead of changing to %@", v15, v16];
    v18 = objc_alloc(MEMORY[0x1E69B1478]);
    v19 = MEMORY[0x1E69E96A0];
    v20 = MEMORY[0x1E69E96A0];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __83__MediaControlsActiveEndpointController__activeSystemRouteDidChangeWithChangeType___block_invoke_4;
    v22[3] = &unk_1E7663AE8;
    objc_copyWeak(&v23, &location);
    v21 = [v18 initWithInterval:v17 name:v19 queue:v22 block:v13];
    [*(a1 + 32) setDeferredPlayerPathTimer:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

void __83__MediaControlsActiveEndpointController__activeSystemRouteDidChangeWithChangeType___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setDeferredPlayerPathFuture:0];
    [v2 setDeferredPlayerPathInvalidationToken:0];
    [v2 _maybeRestoreDeferredPlayerPath];
    WeakRetained = v2;
  }
}

void __83__MediaControlsActiveEndpointController__activeSystemRouteDidChangeWithChangeType___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained setDeferredPlayerPathTimer:0];
    [v2 _maybeRestoreDeferredPlayerPath];
    WeakRetained = v2;
  }
}

+ (double)mediaRecentlyPlayedTimeout
{
  if (mediaRecentlyPlayedTimeout_once != -1)
  {
    +[MediaControlsActiveEndpointController mediaRecentlyPlayedTimeout];
  }

  return *&mediaRecentlyPlayedTimeout_timeout;
}

void __67__MediaControlsActiveEndpointController_mediaRecentlyPlayedTimeout__block_invoke()
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mediaremote"];
  v0 = [v2 objectForKey:@"MediaRecentlyPlayedInterval"];

  if (v0)
  {
    [v2 doubleForKey:@"MediaRecentlyPlayedInterval"];
    mediaRecentlyPlayedTimeout_timeout = v1;
  }
}

@end