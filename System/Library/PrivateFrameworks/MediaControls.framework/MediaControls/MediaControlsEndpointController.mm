@interface MediaControlsEndpointController
- (BOOL)isAirPlaying;
- (BOOL)isDeviceSystemRoute;
- (BOOL)isRoutingToWireless;
- (MPAVEndpointRoute)route;
- (MPCPlayerPath)playerPath;
- (MPCPlayerResponse)response;
- (MediaControlsEndpointController)initWithEndpoint:(id)endpoint client:(id)client player:(id)player;
- (MediaControlsEndpointControllerConnectionDelegate)connectionDelegate;
- (MediaControlsEndpointControllerDelegate)delegate;
- (MediaControlsEndpointObserverDelegate)proxyDelegate;
- (NSString)bundleID;
- (NSString)description;
- (NSString)label;
- (NSString)representedBundleID;
- (id)_stateDumpObject;
- (void)_connectIfNeeded;
- (void)_connectionDidAttemptConnection:(id)connection;
- (void)_connectionDidConnect:(id)connect;
- (void)_connectionDidInvalidate:(id)invalidate;
- (void)_connectionHasBecomeInvalid;
- (void)_createRequestController;
- (void)_getConnected:(BOOL *)connected connecting:(BOOL *)connecting invalid:(BOOL *)invalid;
- (void)_maybeReloadPlayerPathWithRoute:(id)route;
- (void)_reloadPlayerPathWithRoute:(id)route;
- (void)_routeDidChange:(id)change;
- (void)_updateState;
- (void)connectAllowingAuthenticationWithCompletion:(id)completion;
- (void)controller:(id)controller defersResponseReplacement:(id)replacement;
- (void)launchNowPlayingApp;
- (void)representsLongFormVideoContentWithCompletion:(id)completion;
- (void)setAllowsAutomaticResponseLoading:(BOOL)loading;
- (void)setAttemptingConnection:(BOOL)connection;
- (void)setAutomaticResponseLoading:(BOOL)loading;
- (void)setHasEverReceivedResponse:(BOOL)response;
- (void)setLabel:(id)label;
- (void)setOnScreen:(BOOL)screen;
- (void)setRoute:(id)route;
- (void)setState:(int64_t)state;
- (void)updateRoutePropertiesIfNeeded;
@end

@implementation MediaControlsEndpointController

- (MediaControlsEndpointController)initWithEndpoint:(id)endpoint client:(id)client player:(id)player
{
  endpointCopy = endpoint;
  clientCopy = client;
  playerCopy = player;
  v17.receiver = self;
  v17.super_class = MediaControlsEndpointController;
  v11 = [(MediaControlsEndpointController *)&v17 init];
  if (v11)
  {
    v12 = [clientCopy copy];
    specifiedClient = v11->_specifiedClient;
    v11->_specifiedClient = v12;

    v14 = [playerCopy copy];
    specifiedPlayer = v11->_specifiedPlayer;
    v11->_specifiedPlayer = v14;

    [(MediaControlsEndpointController *)v11 _createRequestController];
    [(MediaControlsEndpointController *)v11 _maybeReloadPlayerPathWithRoute:endpointCopy];
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  route = [(MediaControlsEndpointController *)self route];
  routeName = [route routeName];
  label = [(MediaControlsEndpointController *)self label];
  v9 = [v3 stringWithFormat:@"<%@:%p route: (%@) %@>", v5, self, routeName, label];

  return v9;
}

- (NSString)bundleID
{
  playerPath = [(MediaControlsEndpointController *)self playerPath];
  bundleID = [playerPath bundleID];
  v5 = bundleID;
  if (bundleID)
  {
    bundleID2 = bundleID;
  }

  else
  {
    response = [(MediaControlsEndpointController *)self response];
    playerPath2 = [response playerPath];
    bundleID2 = [playerPath2 bundleID];
  }

  return bundleID2;
}

- (NSString)representedBundleID
{
  playerPath = [(MediaControlsEndpointController *)self playerPath];
  representedBundleID = [playerPath representedBundleID];
  v5 = representedBundleID;
  if (representedBundleID)
  {
    representedBundleID2 = representedBundleID;
  }

  else
  {
    response = [(MediaControlsEndpointController *)self response];
    playerPath2 = [response playerPath];
    representedBundleID2 = [playerPath2 representedBundleID];
  }

  return representedBundleID2;
}

- (MPCPlayerPath)playerPath
{
  request = [(MPRequestResponseController *)self->_requestController request];
  playerPath = [request playerPath];

  return playerPath;
}

- (MPAVEndpointRoute)route
{
  playerPath = [(MediaControlsEndpointController *)self playerPath];
  route = [playerPath route];

  return route;
}

- (BOOL)isAirPlaying
{
  isDeviceSystemRoute = [(MediaControlsEndpointController *)self isDeviceSystemRoute];
  if (isDeviceSystemRoute)
  {
    route = [(MediaControlsEndpointController *)self route];
    isAirPlayingToDevice = [route isAirPlayingToDevice];

    LOBYTE(isDeviceSystemRoute) = isAirPlayingToDevice;
  }

  return isDeviceSystemRoute;
}

- (BOOL)isDeviceSystemRoute
{
  route = [(MediaControlsEndpointController *)self route];
  v3 = route;
  if (route)
  {
    isDeviceRoute = [route isDeviceRoute];
  }

  else
  {
    isDeviceRoute = 1;
  }

  return isDeviceRoute;
}

- (BOOL)isRoutingToWireless
{
  route = [(MediaControlsEndpointController *)self route];
  isRoutingToWirelessDevice = [route isRoutingToWirelessDevice];

  return isRoutingToWirelessDevice;
}

- (MPCPlayerResponse)response
{
  v5 = 0;
  [(MediaControlsEndpointController *)self _getConnected:&v5 invalid:0];
  response = 0;
  if (v5 == 1)
  {
    response = [(MPRequestResponseController *)self->_requestController response];
  }

  return response;
}

- (void)setAllowsAutomaticResponseLoading:(BOOL)loading
{
  if (self->_allowsAutomaticResponseLoading != loading)
  {
    self->_allowsAutomaticResponseLoading = loading;
    [(MediaControlsEndpointController *)self _updateState];
    [(MediaControlsEndpointController *)self _connectIfNeeded];
    delegate = [(MediaControlsEndpointController *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(MediaControlsEndpointController *)self delegate];
      [delegate2 endpointControllerAllowsAutomaticResponseLoadingDidUpdate:self];
    }
  }
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  route = [(MediaControlsEndpointController *)self route];

  v5 = routeCopy;
  if (route != routeCopy)
  {
    [(MediaControlsEndpointController *)self _maybeReloadPlayerPathWithRoute:routeCopy];
    v5 = routeCopy;
  }
}

- (void)representsLongFormVideoContentWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(2, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__MediaControlsEndpointController_representsLongFormVideoContentWithCompletion___block_invoke;
  v7[3] = &unk_1E7664490;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

void __80__MediaControlsEndpointController_representsLongFormVideoContentWithCompletion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6970490];
  v3 = [*(a1 + 32) bundleID];
  if ([v2 bundleIdRepresentsLongFormVideoContent:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = MEMORY[0x1E6970490];
    v6 = [*(a1 + 32) representedBundleID];
    v4 = [v5 bundleIdRepresentsLongFormVideoContent:v6];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__MediaControlsEndpointController_representsLongFormVideoContentWithCompletion___block_invoke_2;
  v7[3] = &unk_1E7664948;
  v8 = *(a1 + 40);
  v9 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)connectAllowingAuthenticationWithCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  connectionDelegate = [(MediaControlsEndpointController *)self connectionDelegate];
  route = [(MediaControlsEndpointController *)self route];
  [connectionDelegate endpointController:self willAttemptToConnectToRoute:route];

  route2 = [(MediaControlsEndpointController *)self route];
  connection = [route2 connection];

  if (connection)
  {
    if ([connection isInvalidated])
    {
      [connection reset];
    }

    [(MediaControlsEndpointController *)self setAttemptingConnection:1];
    objc_initWeak(&location, self);
    objc_initWeak(&from, connection);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v11 = MCLogCategoryRouting();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      route3 = [(MediaControlsEndpointController *)self route];
      routeName = [route3 routeName];
      delegate = [(MediaControlsEndpointController *)self delegate];
      *buf = 134218754;
      selfCopy = self;
      v27 = 2112;
      v28 = routeName;
      v29 = 2048;
      v30 = delegate;
      v31 = 2114;
      v32 = uUIDString;
      _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@) | Delegate:%p> <%{public}@> Attempting connect with authentication", buf, 0x2Au);
    }

    v15 = *MEMORY[0x1E696F858];
    v23[0] = *MEMORY[0x1E696F848];
    v23[1] = v15;
    v24[0] = uUIDString;
    v24[1] = @"MediaControlsEndpointController-allowAuthentication";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __79__MediaControlsEndpointController_connectAllowingAuthenticationWithCompletion___block_invoke;
    v17[3] = &unk_1E7664A40;
    objc_copyWeak(&v19, &location);
    v17[4] = self;
    objc_copyWeak(&v20, &from);
    v18 = completionCopy;
    [connection connectWithOptions:1 userInfo:v16 completion:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    [(MediaControlsEndpointController *)self _updateState];
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __79__MediaControlsEndpointController_connectAllowingAuthenticationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MCLogCategoryRouting();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = WeakRetained;
    v7 = [v6 route];
    v8 = [v7 routeName];
    v9 = objc_loadWeakRetained((a1 + 48));
    v10 = [v9 delegate];
    v11 = *(a1 + 32);

    *buf = 134219010;
    v19 = WeakRetained;
    v20 = 2112;
    v21 = v8;
    v22 = 2048;
    v23 = v10;
    v24 = 2114;
    v25 = v11;
    v26 = 2114;
    v27 = v3;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@) | Delegate:%p> <%{public}@> <- connect error: %{public}@", buf, 0x34u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__MediaControlsEndpointController_connectAllowingAuthenticationWithCompletion___block_invoke_10;
  v13[3] = &unk_1E7664A18;
  objc_copyWeak(&v16, (a1 + 48));
  objc_copyWeak(&v17, (a1 + 56));
  v14 = v3;
  v15 = *(a1 + 40);
  v12 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
}

void __79__MediaControlsEndpointController_connectAllowingAuthenticationWithCompletion___block_invoke_10(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = [WeakRetained route];
    v5 = [v4 connection];
    if (!v5)
    {
LABEL_12:

      goto LABEL_13;
    }

    v6 = v5;
    v7 = [WeakRetained route];
    v8 = [v7 connection];

    if (v8 == v3)
    {
      if (*(a1 + 32))
      {
        v9 = 0;
      }

      else
      {
        v9 = *(WeakRetained + 8);
      }

      [WeakRetained setAutomaticResponseLoading:v9 & 1];
      [WeakRetained setAttemptingConnection:0];
      v24 = 0;
      v23 = 0;
      [WeakRetained _getConnected:&v24 + 1 connecting:&v23 invalid:&v24];
      v4 = MCLogCategoryRouting();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [WeakRetained route];
        v21 = [v22 routeName];
        v10 = [WeakRetained state];
        if (v10 > 3)
        {
          v11 = @"?";
        }

        else
        {
          v11 = off_1E7664B28[v10];
        }

        v19 = v11;
        v12 = HIBYTE(v24);
        v13 = v23;
        v14 = v24;
        v15 = *(WeakRetained + 8);
        v17 = *(WeakRetained + 14);
        v18 = *(WeakRetained + 12);
        v20 = *(WeakRetained + 13);
        v16 = objc_loadWeakRetained(WeakRetained + 5);
        *buf = 134220546;
        v26 = WeakRetained;
        v27 = 2112;
        v28 = v21;
        v29 = 2112;
        v30 = v19;
        v31 = 1024;
        v32 = v12;
        v33 = 1024;
        v34 = v13;
        v35 = 1024;
        v36 = v14;
        v37 = 1024;
        v38 = v15;
        v39 = 1024;
        v40 = v17;
        v41 = 1024;
        v42 = v18;
        v43 = 1024;
        v44 = v20;
        v45 = 2048;
        v46 = v16;
        _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@)> [state: %@, connected: %{BOOL}u, connecting: %{BOOL}u invalid: %{BOOL}u, allowsAutoload: %{BOOL}u, autoload: %{BOOL}u, everHadResponse: %{BOOL}u, attemptConnect: %{BOOL}u, delegate: %p]", buf, 0x54u);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32) == 0);
}

- (NSString)label
{
  request = [(MPRequestResponseController *)self->_requestController request];
  label = [request label];

  return label;
}

- (void)setLabel:(id)label
{
  requestController = self->_requestController;
  labelCopy = label;
  request = [(MPRequestResponseController *)requestController request];
  [request setLabel:labelCopy];
}

- (void)launchNowPlayingApp
{
  v52[3] = *MEMORY[0x1E69E9840];
  route = [(MediaControlsEndpointController *)self route];

  if (route)
  {
    v4 = MEMORY[0x1E6970490];
    route2 = [(MediaControlsEndpointController *)self route];
    [v4 setActiveRoute:route2 reason:@"Analytics: Launch now playing app" completion:0];

    v6 = SBSCreateOpenApplicationService();
    v7 = objc_alloc(MEMORY[0x1E695DF90]);
    v8 = *MEMORY[0x1E699F990];
    v51[0] = *MEMORY[0x1E699F970];
    v51[1] = v8;
    v52[0] = MEMORY[0x1E695E118];
    v52[1] = MEMORY[0x1E695E118];
    v51[2] = *MEMORY[0x1E699F940];
    route3 = [(MediaControlsEndpointController *)self route];
    routeName = [route3 routeName];
    v52[2] = routeName;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];
    v12 = [v7 initWithDictionary:v11];

    representedBundleID = [(MediaControlsEndpointController *)self representedBundleID];
    if (![representedBundleID length])
    {
      bundleID = [(MediaControlsEndpointController *)self bundleID];
      v15 = bundleID;
      if (bundleID)
      {
        v16 = bundleID;
      }

      else
      {
        v16 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
      }

      v20 = v16;

      representedBundleID = v20;
    }

    if ([representedBundleID length] && !MRMediaRemoteApplicationIsSystemMediaApplication())
    {
      if (!MRMediaRemoteApplicationIsSystemPodcastApplication())
      {
        goto LABEL_15;
      }

      v33 = MCLogCategoryRouting();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        route4 = [(MediaControlsEndpointController *)self route];
        routeName2 = [route4 routeName];
        delegate = [(MediaControlsEndpointController *)self delegate];
        *buf = 134218754;
        selfCopy4 = self;
        v45 = 2112;
        v46 = routeName2;
        v47 = 2048;
        v48 = delegate;
        v49 = 2112;
        v50 = representedBundleID;
        _os_log_impl(&dword_1A20FC000, v33, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@) | Delegate:%p>  given %@ bundleID. Launching Podcasts", buf, 0x2Au);
      }

      v25 = @"podcasts://nowPlaying";
      v26 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
    }

    else
    {
      v21 = MCLogCategoryRouting();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        route5 = [(MediaControlsEndpointController *)self route];
        routeName3 = [route5 routeName];
        delegate2 = [(MediaControlsEndpointController *)self delegate];
        *buf = 134218754;
        selfCopy4 = self;
        v45 = 2112;
        v46 = routeName3;
        v47 = 2048;
        v48 = delegate2;
        v49 = 2112;
        v50 = representedBundleID;
        _os_log_impl(&dword_1A20FC000, v21, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@) | Delegate:%p>  given %@ bundleID. Launching Music", buf, 0x2Au);
      }

      v25 = @"music://show-now-playing";
      v26 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    }

    v27 = v26;

    v28 = [MEMORY[0x1E695DFF8] URLWithString:v25];
    [v12 setObject:v28 forKey:*MEMORY[0x1E699F960]];

    representedBundleID = v27;
LABEL_15:
    v29 = MCLogCategoryDefault();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      *buf = 138543618;
      selfCopy4 = v30;
      v45 = 2114;
      v46 = representedBundleID;
      _os_log_impl(&dword_1A20FC000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ launching now playing app: %{public}@", buf, 0x16u);
    }

    v31 = [MEMORY[0x1E699FB70] optionsWithDictionary:v12];
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __54__MediaControlsEndpointController_launchNowPlayingApp__block_invoke;
    v40 = &unk_1E7664A68;
    selfCopy3 = self;
    v42 = representedBundleID;
    v32 = representedBundleID;
    [v6 openApplication:v32 withOptions:v31 completion:&v37];
    [MediaControlsAnalytics postAnalyticKind:9, v37, v38, v39, v40, selfCopy3];

    goto LABEL_18;
  }

  v6 = MCLogCategoryRouting();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    route6 = [(MediaControlsEndpointController *)self route];
    routeName4 = [route6 routeName];
    delegate3 = [(MediaControlsEndpointController *)self delegate];
    *buf = 134218498;
    selfCopy4 = self;
    v45 = 2112;
    v46 = routeName4;
    v47 = 2048;
    v48 = delegate3;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@) | Delegate:%p>  cannot launch Now Playing App with nil route", buf, 0x20u);
  }

LABEL_18:
}

void __54__MediaControlsEndpointController_launchNowPlayingApp__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = MCLogCategoryRouting();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = [v5 route];
      v7 = [v6 routeName];
      v8 = [*(a1 + 32) delegate];
      v9 = *(a1 + 40);
      v10 = 134218754;
      v11 = v5;
      v12 = 2112;
      v13 = v7;
      v14 = 2048;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@) | Delegate:%p>  cannot launch Now Playing App with bundleID: %@", &v10, 0x2Au);
    }
  }
}

- (void)updateRoutePropertiesIfNeeded
{
  route = [(MediaControlsEndpointController *)self route];
  routeNames = [route routeNames];

  route2 = [(MediaControlsEndpointController *)self route];
  predictedOutputDevice = [route2 predictedOutputDevice];
  routeUID = [predictedOutputDevice routeUID];

  if (![routeNames isEqualToArray:self->_routeNames] || routeUID != self->_predictedDeviceUID && (-[NSString isEqual:](routeUID, "isEqual:") & 1) == 0)
  {
    v7 = [routeNames copy];
    routeNames = self->_routeNames;
    self->_routeNames = v7;

    v9 = [(NSString *)routeUID copy];
    predictedDeviceUID = self->_predictedDeviceUID;
    self->_predictedDeviceUID = v9;

    goto LABEL_7;
  }

  if (+[MRUFeatureFlagProvider isNewControlsEnabled])
  {
LABEL_7:
    delegate = [(MediaControlsEndpointController *)self delegate];
    [delegate endpointControllerRouteDidUpdate:self];
  }
}

- (void)controller:(id)controller defersResponseReplacement:(id)replacement
{
  controllerCopy = controller;
  replacementCopy = replacement;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__MediaControlsEndpointController_controller_defersResponseReplacement___block_invoke;
  block[3] = &unk_1E7664A90;
  v11 = controllerCopy;
  v12 = replacementCopy;
  block[4] = self;
  v8 = controllerCopy;
  v9 = replacementCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __72__MediaControlsEndpointController_controller_defersResponseReplacement___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = MCLogCategoryRouting();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 route];
    v5 = [v4 routeName];
    v6 = [*(a1 + 32) delegate];
    *buf = 134218498;
    v29 = v3;
    v30 = 2112;
    v31 = v5;
    v32 = 2048;
    v33 = v6;
    _os_log_impl(&dword_1A20FC000, v2, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@) | Delegate:%p> -> defersResponseReplacement", buf, 0x20u);
  }

  v27 = 0;
  v26 = 0;
  [*(a1 + 32) _getConnected:&v27 + 1 connecting:&v26 invalid:&v27];
  v7 = MCLogCategoryRouting();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v25 = [v8 route];
    v24 = [v25 routeName];
    v9 = [*(a1 + 32) state];
    if (v9 > 3)
    {
      v10 = @"?";
    }

    else
    {
      v10 = off_1E7664B28[v9];
    }

    v23 = v10;
    v11 = HIBYTE(v27);
    v12 = v26;
    v13 = v27;
    v14 = *(a1 + 32);
    v15 = *(v14 + 8);
    v16 = *(v14 + 14);
    v17 = *(v14 + 12);
    v22 = *(v14 + 13);
    WeakRetained = objc_loadWeakRetained((v14 + 40));
    *buf = 134220546;
    v29 = v8;
    v30 = 2112;
    v31 = v24;
    v32 = 2112;
    v33 = v23;
    v34 = 1024;
    v35 = v11;
    v36 = 1024;
    v37 = v12;
    v38 = 1024;
    v39 = v13;
    v40 = 1024;
    v41 = v15;
    v42 = 1024;
    v43 = v16;
    v44 = 1024;
    v45 = v17;
    v46 = 1024;
    v47 = v22;
    v48 = 2048;
    v49 = WeakRetained;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@)> [state: %@, connected: %{BOOL}u, connecting: %{BOOL}u invalid: %{BOOL}u, allowsAutoload: %{BOOL}u, autoload: %{BOOL}u, everHadResponse: %{BOOL}u, attemptConnect: %{BOOL}u, delegate: %p]", buf, 0x54u);
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) setHasEverReceivedResponse:1];
  v19 = [*(a1 + 32) delegate];
  v20 = *(a1 + 32);
  v21 = [*(a1 + 40) response];
  [v19 endpointController:v20 didLoadNewResponse:v21];
}

- (void)setState:(int64_t)state
{
  v48 = *MEMORY[0x1E69E9840];
  if (self->_state != state)
  {
    v5 = MCLogCategoryRouting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      route = [(MediaControlsEndpointController *)self route];
      routeName = [route routeName];
      delegate = [(MediaControlsEndpointController *)self delegate];
      v9 = delegate;
      state = self->_state;
      if (state > 3)
      {
        v11 = @"?";
      }

      else
      {
        v11 = off_1E7664B28[state];
      }

      if (state > 3)
      {
        v12 = @"?";
      }

      else
      {
        v12 = off_1E7664B28[state];
      }

      *buf = 134219010;
      selfCopy2 = self;
      v32 = 2112;
      v33 = routeName;
      v34 = 2048;
      v35 = delegate;
      v36 = 2114;
      *v37 = v11;
      *&v37[8] = 2114;
      v38 = v12;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@) | Delegate:%p> changing state from %{public}@ -> %{public}@", buf, 0x34u);
    }

    self->_state = state;
    v29 = 0;
    v28 = 0;
    [(MediaControlsEndpointController *)self _getConnected:&v29 + 1 connecting:&v28 invalid:&v29];
    v13 = MCLogCategoryRouting();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      route2 = [(MediaControlsEndpointController *)self route];
      routeName2 = [route2 routeName];
      state = [(MediaControlsEndpointController *)self state];
      if (state > 3)
      {
        v15 = @"?";
      }

      else
      {
        v15 = off_1E7664B28[state];
      }

      v24 = v15;
      v16 = HIBYTE(v29);
      v17 = v28;
      v18 = v29;
      allowsAutomaticResponseLoading = self->_allowsAutomaticResponseLoading;
      automaticResponseLoading = self->_automaticResponseLoading;
      hasEverReceivedResponse = self->_hasEverReceivedResponse;
      attemptingConnection = self->_attemptingConnection;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      *buf = 134220546;
      selfCopy2 = self;
      v32 = 2112;
      v33 = routeName2;
      v34 = 2112;
      v35 = v24;
      v36 = 1024;
      *v37 = v16;
      *&v37[4] = 1024;
      *&v37[6] = v17;
      LOWORD(v38) = 1024;
      *(&v38 + 2) = v18;
      HIWORD(v38) = 1024;
      v39 = allowsAutomaticResponseLoading;
      v40 = 1024;
      v41 = automaticResponseLoading;
      v42 = 1024;
      v43 = hasEverReceivedResponse;
      v44 = 1024;
      v45 = attemptingConnection;
      v46 = 2048;
      v47 = WeakRetained;
      _os_log_impl(&dword_1A20FC000, v13, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@)> [state: %@, connected: %{BOOL}u, connecting: %{BOOL}u invalid: %{BOOL}u, allowsAutoload: %{BOOL}u, autoload: %{BOOL}u, everHadResponse: %{BOOL}u, attemptConnect: %{BOOL}u, delegate: %p]", buf, 0x54u);
    }

    delegate2 = [(MediaControlsEndpointController *)self delegate];
    [delegate2 endpointControllerDidChangeState:self];
  }
}

- (void)setAttemptingConnection:(BOOL)connection
{
  if (self->_attemptingConnection != connection)
  {
    self->_attemptingConnection = connection;
    [(MediaControlsEndpointController *)self _updateState];
  }
}

- (void)setAutomaticResponseLoading:(BOOL)loading
{
  if (self->_automaticResponseLoading != loading)
  {
    self->_automaticResponseLoading = loading;
    requestController = self->_requestController;
    if (loading)
    {
      [(MPRequestResponseController *)requestController beginAutomaticResponseLoading];
    }

    else
    {
      [(MPRequestResponseController *)requestController endAutomaticResponseLoading];
    }
  }
}

- (void)setHasEverReceivedResponse:(BOOL)response
{
  if (self->_hasEverReceivedResponse != response)
  {
    self->_hasEverReceivedResponse = response;
    [(MediaControlsEndpointController *)self _updateState];
  }
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    v15[11] = v3;
    v15[12] = v4;
    self->_onScreen = screen;
    if (screen && !self->_attemptingConnection)
    {
      response = [(MPRequestResponseController *)self->_requestController response];
      playerPath = [response playerPath];
      isFullyResolved = [playerPath isFullyResolved];

      if ((isFullyResolved & 1) == 0)
      {
        v9 = objc_alloc_init(MEMORY[0x1E69B0860]);
        v10 = MEMORY[0x1E69B0850];
        route = [(MediaControlsEndpointController *)self route];
        bundleID = [(MediaControlsEndpointController *)self bundleID];
        v13 = [v10 pathWithRoute:route bundleID:bundleID playerID:0];
        [v9 setPlayerPath:v13];

        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __47__MediaControlsEndpointController_setOnScreen___block_invoke;
        v15[3] = &unk_1E7664AB8;
        v15[4] = self;
        v14 = [v9 performWithCompletion:v15];
      }
    }
  }
}

void __47__MediaControlsEndpointController_setOnScreen___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 playerPath];
  v5 = [v4 isFullyResolved];

  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__MediaControlsEndpointController_setOnScreen___block_invoke_2;
    v8[3] = &unk_1E76639D0;
    v6 = v3;
    v7 = *(a1 + 32);
    v9 = v6;
    v10 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], v8);
  }
}

void __47__MediaControlsEndpointController_setOnScreen___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) playerPath];
  v3 = [*(*(a1 + 40) + 56) response];
  v4 = [v3 playerPath];
  v5 = [v2 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = MCLogCategoryRouting();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = [v7 route];
      v9 = [v8 routeName];
      v10 = [*(a1 + 40) delegate];
      v11 = [*(a1 + 32) playerPath];
      v12 = [*(*(a1 + 40) + 56) response];
      v13 = [v12 playerPath];
      v16 = 134219010;
      v17 = v7;
      v18 = 2112;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@) | Delegate:%p> Reloading because re-request returned %@ and does not equal %@", &v16, 0x34u);
    }

    v14 = *(a1 + 40);
    v15 = [v14 route];
    [v14 _reloadPlayerPathWithRoute:v15];
  }
}

- (void)_connectionHasBecomeInvalid
{
  [(MediaControlsEndpointController *)self setHasEverReceivedResponse:0];

  [(MediaControlsEndpointController *)self _updateState];
}

- (void)_createRequestController
{
  v54[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E6970910]);
  requestController = self->_requestController;
  self->_requestController = v3;

  v39 = objc_alloc(MEMORY[0x1E69708B0]);
  v53 = *MEMORY[0x1E6970158];
  v36 = objc_alloc(MEMORY[0x1E69708B0]);
  v5 = *MEMORY[0x1E696FF38];
  v52[0] = *MEMORY[0x1E696FFB0];
  v52[1] = v5;
  v6 = *MEMORY[0x1E696FF00];
  v52[2] = *MEMORY[0x1E696FF10];
  v52[3] = v6;
  v7 = *MEMORY[0x1E696FFA0];
  v52[4] = *MEMORY[0x1E696FF30];
  v52[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:6];
  v50[0] = *MEMORY[0x1E69701D0];
  v9 = MEMORY[0x1E69708B0];
  v49 = *MEMORY[0x1E696FC70];
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
  v37 = [v9 propertySetWithProperties:v38];
  v51[0] = v37;
  v50[1] = *MEMORY[0x1E69701C0];
  v10 = objc_alloc(MEMORY[0x1E69708B0]);
  v48 = *MEMORY[0x1E696FC38];
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v46 = *MEMORY[0x1E69700D0];
  v11 = MEMORY[0x1E69708B0];
  v45 = *MEMORY[0x1E696FC68];
  v12 = v45;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  v13 = [v11 propertySetWithProperties:v35];
  v47 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v15 = [v10 initWithProperties:v34 relationships:v14];
  v51[1] = v15;
  v50[2] = *MEMORY[0x1E69701C8];
  v16 = MEMORY[0x1E69708B0];
  v44 = v12;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v18 = [v16 propertySetWithProperties:v17];
  v51[2] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:3];
  v20 = v8;
  v21 = [v36 initWithProperties:v8 relationships:v19];
  v54[0] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
  v40 = [v39 initWithProperties:0 relationships:v22];

  v23 = objc_alloc(MEMORY[0x1E69708B0]);
  v42 = *MEMORY[0x1E6970138];
  v24 = MEMORY[0x1E69708B0];
  v25 = *MEMORY[0x1E696FE78];
  v41[0] = *MEMORY[0x1E696FEA8];
  v41[1] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v27 = [v24 propertySetWithProperties:v26];
  v43 = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v29 = [v23 initWithProperties:0 relationships:v28];

  [(MPRequestResponseController *)self->_requestController setDelegate:self];
  v30 = objc_alloc_init(MEMORY[0x1E69B0860]);
  [v30 setTracklistRange:{0, 1}];
  [v30 setPlayingItemProperties:v40];
  [v30 setQueueSectionProperties:v29];
  [(MPRequestResponseController *)self->_requestController setRequest:v30];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__connectionDidInvalidate_ name:*MEMORY[0x1E6970A80] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__connectionDidConnect_ name:*MEMORY[0x1E6970A78] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__connectionDidAttemptConnection_ name:*MEMORY[0x1E6970A70] object:0];
}

- (void)_getConnected:(BOOL *)connected connecting:(BOOL *)connecting invalid:(BOOL *)invalid
{
  route = [(MediaControlsEndpointController *)self route];
  if (route && (v12 = route, v9 = [route isDeviceRoute], v12, route = v12, !v9))
  {
    connection = [v12 connection];
    v11 = connection;
    if (connected)
    {
      *connected = [connection isConnected];
    }

    if (connecting)
    {
      *connecting = [v11 isConnecting];
    }

    if (invalid)
    {
      *invalid = [v11 isInvalidated];
    }

    route = v12;
  }

  else
  {
    if (connected)
    {
      *connected = 1;
    }

    if (invalid)
    {
      *invalid = 0;
    }

    if (connecting)
    {
      *connecting = 0;
    }
  }
}

- (void)_updateState
{
  v5 = 0;
  v4 = 0;
  [(MediaControlsEndpointController *)self _getConnected:&v5 + 1 connecting:&v4 invalid:&v5];
  if (v5)
  {
    v3 = -1;
  }

  else if (HIBYTE(v5) == 1)
  {
    if (self->_hasEverReceivedResponse)
    {
      v3 = 3;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = self->_attemptingConnection || v4 == 1;
  }

  [(MediaControlsEndpointController *)self setState:v3];
}

- (void)_connectIfNeeded
{
  v31 = *MEMORY[0x1E69E9840];
  connectionDelegate = [(MediaControlsEndpointController *)self connectionDelegate];
  route = [(MediaControlsEndpointController *)self route];
  [connectionDelegate endpointController:self willAttemptToConnectToRoute:route];

  v20 = 0;
  [(MediaControlsEndpointController *)self _getConnected:&v20 + 1 invalid:&v20];
  if (!self->_allowsAutomaticResponseLoading)
  {
    goto LABEL_8;
  }

  if ((v20 & 0x100) != 0)
  {
    if ((v20 & 1) == 0 && !self->_attemptingConnection)
    {
      [(MediaControlsEndpointController *)self setAutomaticResponseLoading:1];
      return;
    }

    goto LABEL_8;
  }

  if ((v20 & 1) != 0 || self->_attemptingConnection)
  {
LABEL_8:
    [(MediaControlsEndpointController *)self setAutomaticResponseLoading:0];
    return;
  }

  route2 = [(MediaControlsEndpointController *)self route];
  connection = [route2 connection];

  [(MediaControlsEndpointController *)self setAttemptingConnection:1];
  objc_initWeak(&location, self);
  objc_initWeak(&from, connection);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v9 = MCLogCategoryRouting();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    route3 = [(MediaControlsEndpointController *)self route];
    routeName = [route3 routeName];
    delegate = [(MediaControlsEndpointController *)self delegate];
    *buf = 134218754;
    selfCopy = self;
    v25 = 2112;
    v26 = routeName;
    v27 = 2048;
    v28 = delegate;
    v29 = 2114;
    v30 = uUIDString;
    _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@) | Delegate:%p> <%{public}@> Attempting connect without authentication", buf, 0x2Au);
  }

  v13 = *MEMORY[0x1E696F858];
  v21[0] = *MEMORY[0x1E696F848];
  v21[1] = v13;
  v22[0] = uUIDString;
  v22[1] = @"MediaControlsEndpointController";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__MediaControlsEndpointController__connectIfNeeded__block_invoke;
  v15[3] = &unk_1E7664B08;
  objc_copyWeak(&v16, &location);
  v15[4] = self;
  objc_copyWeak(&v17, &from);
  [connection connectWithUserInfo:v14 completion:v15];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __51__MediaControlsEndpointController__connectIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MCLogCategoryRouting();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = WeakRetained;
    v7 = [v6 route];
    v8 = [v7 routeName];
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 delegate];
    v11 = *(a1 + 32);

    *buf = 134219010;
    v18 = WeakRetained;
    v19 = 2112;
    v20 = v8;
    v21 = 2048;
    v22 = v10;
    v23 = 2114;
    v24 = v11;
    v25 = 2114;
    v26 = v3;
    _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@) | Delegate:%p> <%{public}@> <- connect error: %{public}@", buf, 0x34u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MediaControlsEndpointController__connectIfNeeded__block_invoke_43;
  block[3] = &unk_1E7664AE0;
  objc_copyWeak(&v15, (a1 + 40));
  objc_copyWeak(&v16, (a1 + 48));
  v14 = v3;
  v12 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
}

void __51__MediaControlsEndpointController__connectIfNeeded__block_invoke_43(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [WeakRetained route];
    v4 = [v3 connection];
    if (v4)
    {
      v5 = v4;
      v6 = [WeakRetained route];
      v7 = [v6 connection];

      if (v7 == v2)
      {
        if (*(a1 + 32))
        {
          v8 = 0;
        }

        else
        {
          v8 = WeakRetained[8];
        }

        [WeakRetained setAutomaticResponseLoading:v8 & 1];
        [WeakRetained setAttemptingConnection:0];
      }
    }

    else
    {
    }
  }
}

- (void)_maybeReloadPlayerPathWithRoute:(id)route
{
  routeCopy = route;
  playerPath = [(MediaControlsEndpointController *)self playerPath];
  route = [playerPath route];

  if (route != routeCopy)
  {
    [(MediaControlsEndpointController *)self _reloadPlayerPathWithRoute:routeCopy];
  }
}

- (void)_reloadPlayerPathWithRoute:(id)route
{
  routeCopy = route;
  specifiedClient = [(MediaControlsEndpointController *)self specifiedClient];
  specifiedPlayer = [(MediaControlsEndpointController *)self specifiedPlayer];
  if ([(MPMediaControlsConfiguration *)self->_configuration style]== 1)
  {
    presentingAppBundleID = [(MPMediaControlsConfiguration *)self->_configuration presentingAppBundleID];

    specifiedClient = presentingAppBundleID;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = *MEMORY[0x1E696F860];
  route = [(MediaControlsEndpointController *)self route];
  [defaultCenter removeObserver:self name:v8 object:route];

  v10 = [MEMORY[0x1E69B0850] pathWithRoute:routeCopy bundleID:specifiedClient playerID:specifiedPlayer];
  request = [(MPRequestResponseController *)self->_requestController request];
  [request setPlayerPath:v10];

  [(MPRequestResponseController *)self->_requestController setNeedsReload];
  if (routeCopy)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__routeDidChange_ name:v8 object:routeCopy];
  }

  delegate = [(MediaControlsEndpointController *)self delegate];
  [delegate endpointControllerRouteDidUpdate:self];

  self->_attemptingConnection = 0;
  [(MediaControlsEndpointController *)self _connectIfNeeded];
  [(MediaControlsEndpointController *)self _updateState];
  [(MediaControlsEndpointController *)self updateRoutePropertiesIfNeeded];
}

- (void)_connectionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__MediaControlsEndpointController__connectionDidInvalidate___block_invoke;
  v6[3] = &unk_1E76639D0;
  v7 = invalidateCopy;
  selfCopy = self;
  v5 = invalidateCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __60__MediaControlsEndpointController__connectionDidInvalidate___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) object];
  v3 = [*(a1 + 40) route];
  v4 = [v3 connection];

  if (v2 == v4)
  {
    v5 = MCLogCategoryRouting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [v6 route];
      v8 = [v7 routeName];
      v9 = [*(a1 + 40) delegate];
      *buf = 134218498;
      v29 = v6;
      v30 = 2112;
      v31 = v8;
      v32 = 2048;
      v33 = v9;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@) | Delegate:%p> connectionDidInvalidate", buf, 0x20u);
    }

    v27 = 0;
    v26 = 0;
    [*(a1 + 40) _getConnected:&v27 + 1 connecting:&v26 invalid:&v27];
    v10 = MCLogCategoryRouting();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v25 = [v11 route];
      v24 = [v25 routeName];
      v12 = [*(a1 + 40) state];
      if (v12 > 3)
      {
        v13 = @"?";
      }

      else
      {
        v13 = off_1E7664B28[v12];
      }

      v23 = v13;
      v14 = HIBYTE(v27);
      v15 = v26;
      v16 = v27;
      v17 = *(a1 + 40);
      v18 = *(v17 + 8);
      v19 = *(v17 + 14);
      v21 = *(v17 + 12);
      v22 = *(v17 + 13);
      WeakRetained = objc_loadWeakRetained((v17 + 40));
      *buf = 134220546;
      v29 = v11;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v23;
      v34 = 1024;
      v35 = v14;
      v36 = 1024;
      v37 = v15;
      v38 = 1024;
      v39 = v16;
      v40 = 1024;
      v41 = v18;
      v42 = 1024;
      v43 = v19;
      v44 = 1024;
      v45 = v21;
      v46 = 1024;
      v47 = v22;
      v48 = 2048;
      v49 = WeakRetained;
      _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@)> [state: %@, connected: %{BOOL}u, connecting: %{BOOL}u invalid: %{BOOL}u, allowsAutoload: %{BOOL}u, autoload: %{BOOL}u, everHadResponse: %{BOOL}u, attemptConnect: %{BOOL}u, delegate: %p]", buf, 0x54u);
    }

    [*(a1 + 40) _connectionHasBecomeInvalid];
  }
}

- (void)_connectionDidConnect:(id)connect
{
  connectCopy = connect;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__MediaControlsEndpointController__connectionDidConnect___block_invoke;
  v6[3] = &unk_1E76639D0;
  v7 = connectCopy;
  selfCopy = self;
  v5 = connectCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __57__MediaControlsEndpointController__connectionDidConnect___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) object];
  v3 = [*(a1 + 40) route];
  v4 = [v3 connection];

  if (v2 == v4)
  {
    v5 = MCLogCategoryRouting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [v6 route];
      v8 = [v7 routeName];
      v9 = [*(a1 + 40) delegate];
      *buf = 134218498;
      v29 = v6;
      v30 = 2112;
      v31 = v8;
      v32 = 2048;
      v33 = v9;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@) | Delegate:%p> connectionDidConnect", buf, 0x20u);
    }

    v27 = 0;
    v26 = 0;
    [*(a1 + 40) _getConnected:&v27 + 1 connecting:&v26 invalid:&v27];
    v10 = MCLogCategoryRouting();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v25 = [v11 route];
      v24 = [v25 routeName];
      v12 = [*(a1 + 40) state];
      if (v12 > 3)
      {
        v13 = @"?";
      }

      else
      {
        v13 = off_1E7664B28[v12];
      }

      v23 = v13;
      v14 = HIBYTE(v27);
      v15 = v26;
      v16 = v27;
      v17 = *(a1 + 40);
      v18 = *(v17 + 8);
      v19 = *(v17 + 14);
      v21 = *(v17 + 12);
      v22 = *(v17 + 13);
      WeakRetained = objc_loadWeakRetained((v17 + 40));
      *buf = 134220546;
      v29 = v11;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v23;
      v34 = 1024;
      v35 = v14;
      v36 = 1024;
      v37 = v15;
      v38 = 1024;
      v39 = v16;
      v40 = 1024;
      v41 = v18;
      v42 = 1024;
      v43 = v19;
      v44 = 1024;
      v45 = v21;
      v46 = 1024;
      v47 = v22;
      v48 = 2048;
      v49 = WeakRetained;
      _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@)> [state: %@, connected: %{BOOL}u, connecting: %{BOOL}u invalid: %{BOOL}u, allowsAutoload: %{BOOL}u, autoload: %{BOOL}u, everHadResponse: %{BOOL}u, attemptConnect: %{BOOL}u, delegate: %p]", buf, 0x54u);
    }

    [*(a1 + 40) _connectIfNeeded];
    [*(a1 + 40) _updateState];
  }
}

- (void)_connectionDidAttemptConnection:(id)connection
{
  connectionCopy = connection;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__MediaControlsEndpointController__connectionDidAttemptConnection___block_invoke;
  v6[3] = &unk_1E76639D0;
  v7 = connectionCopy;
  selfCopy = self;
  v5 = connectionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __67__MediaControlsEndpointController__connectionDidAttemptConnection___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) object];
  v3 = [*(a1 + 40) route];
  v4 = [v3 connection];

  if (v2 == v4)
  {
    v5 = MCLogCategoryRouting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = [v6 route];
      v8 = [v7 routeName];
      v9 = [*(a1 + 40) delegate];
      *buf = 134218498;
      v29 = v6;
      v30 = 2112;
      v31 = v8;
      v32 = 2048;
      v33 = v9;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@) | Delegate:%p> connectionDidAttemptConnection", buf, 0x20u);
    }

    v27 = 0;
    v26 = 0;
    [*(a1 + 40) _getConnected:&v27 + 1 connecting:&v26 invalid:&v27];
    v10 = MCLogCategoryRouting();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 40);
      v25 = [v11 route];
      v24 = [v25 routeName];
      v12 = [*(a1 + 40) state];
      if (v12 > 3)
      {
        v13 = @"?";
      }

      else
      {
        v13 = off_1E7664B28[v12];
      }

      v23 = v13;
      v14 = HIBYTE(v27);
      v15 = v26;
      v16 = v27;
      v17 = *(a1 + 40);
      v18 = *(v17 + 8);
      v19 = *(v17 + 14);
      v21 = *(v17 + 12);
      v22 = *(v17 + 13);
      WeakRetained = objc_loadWeakRetained((v17 + 40));
      *buf = 134220546;
      v29 = v11;
      v30 = 2112;
      v31 = v24;
      v32 = 2112;
      v33 = v23;
      v34 = 1024;
      v35 = v14;
      v36 = 1024;
      v37 = v15;
      v38 = 1024;
      v39 = v16;
      v40 = 1024;
      v41 = v18;
      v42 = 1024;
      v43 = v19;
      v44 = 1024;
      v45 = v21;
      v46 = 1024;
      v47 = v22;
      v48 = 2048;
      v49 = WeakRetained;
      _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_DEFAULT, "<EndpointController:%p (%@)> [state: %@, connected: %{BOOL}u, connecting: %{BOOL}u invalid: %{BOOL}u, allowsAutoload: %{BOOL}u, autoload: %{BOOL}u, everHadResponse: %{BOOL}u, attemptConnect: %{BOOL}u, delegate: %p]", buf, 0x54u);
    }

    [*(a1 + 40) _updateState];
  }
}

- (void)_routeDidChange:(id)change
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MediaControlsEndpointController__routeDidChange___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (id)_stateDumpObject
{
  v15[7] = *MEMORY[0x1E69E9840];
  v14[0] = @"_obj";
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v15[0] = v3;
  v14[1] = @"hasEverReceivedResponse";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasEverReceivedResponse];
  v15[1] = v4;
  v14[2] = @"state";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_state];
  v15[2] = v5;
  v14[3] = @"attemptingConnection";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_attemptingConnection];
  v15[3] = v6;
  v14[4] = @"allowsAutomaticResponseLoading";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsAutomaticResponseLoading];
  v15[4] = v7;
  v14[5] = @"automaticResponseLoading";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_automaticResponseLoading];
  v15[5] = v8;
  v14[6] = @"requestResponseController";
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self->_requestController];
  v10 = v9;
  v11 = @"<NONE>";
  if (v9)
  {
    v11 = v9;
  }

  v15[6] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:7];

  return v12;
}

- (MediaControlsEndpointControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MediaControlsEndpointObserverDelegate)proxyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyDelegate);

  return WeakRetained;
}

- (MediaControlsEndpointControllerConnectionDelegate)connectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionDelegate);

  return WeakRetained;
}

@end