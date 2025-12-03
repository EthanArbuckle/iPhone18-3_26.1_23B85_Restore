@interface MediaControlsStandaloneEndpointController
- (BOOL)controller:(id)controller shouldRetryFailedRequestWithError:(id)error;
- (MediaControlsStandaloneEndpointController)initWithEndpoint:(id)endpoint client:(id)client player:(id)player;
- (MediaControlsStandaloneEndpointController)initWithRouteUID:(id)d client:(id)client player:(id)player;
- (id)_routeForEndpoint:(__MRAVEndpointRef *)endpoint;
- (void)beginObserving;
- (void)dealloc;
- (void)endObserving;
- (void)setEndpointDiscovered:(BOOL)discovered;
- (void)setEndpointObserver:(id)observer;
- (void)setRoute:(id)route;
- (void)setRouteUID:(id)d;
- (void)updateAllowsAutomaticResponseLoading;
@end

@implementation MediaControlsStandaloneEndpointController

- (MediaControlsStandaloneEndpointController)initWithEndpoint:(id)endpoint client:(id)client player:(id)player
{
  v13.receiver = self;
  v13.super_class = MediaControlsStandaloneEndpointController;
  v5 = [(MediaControlsEndpointController *)&v13 initWithEndpoint:endpoint client:client player:player];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E6970458]) initWithThrottlingEnabled:1];
    v7 = objc_alloc(MEMORY[0x1E6970490]);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 initWithDataSource:v6 name:v9];
    routingController = v5->_routingController;
    v5->_routingController = v10;

    [(MPAVRoutingController *)v5->_routingController setDelegate:v5];
  }

  return v5;
}

- (MediaControlsStandaloneEndpointController)initWithRouteUID:(id)d client:(id)client player:(id)player
{
  dCopy = d;
  clientCopy = client;
  playerCopy = player;
  if (dCopy && ![dCopy isEqualToString:@"LOCAL"])
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x1E6970450]) initWithEndpoint:MRAVEndpointGetLocalEndpoint()];
    v12 = 1;
  }

  v16.receiver = self;
  v16.super_class = MediaControlsStandaloneEndpointController;
  v13 = [(MediaControlsEndpointController *)&v16 initWithEndpoint:v11 client:clientCopy player:playerCopy];
  v14 = v13;
  if (v13)
  {
    v13->_endpointDiscovered = v12;
    [(MediaControlsStandaloneEndpointController *)v13 setRouteUID:dCopy];
  }

  return v14;
}

- (void)dealloc
{
  MEMORY[0x1A58DBB90]([(MPMRAVEndpointObserverWrapper *)self->_endpointObserver unwrappedValue]);
  endpointObserver = self->_endpointObserver;
  self->_endpointObserver = 0;

  v4.receiver = self;
  v4.super_class = MediaControlsStandaloneEndpointController;
  [(MediaControlsStandaloneEndpointController *)&v4 dealloc];
}

- (void)setRouteUID:(id)d
{
  dCopy = d;
  if (([(NSString *)self->_routeUID isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_routeUID, d);
    v5 = MRAVEndpointObserverCreateWithOutputDeviceUID();
    v6 = [objc_alloc(MEMORY[0x1E6970580]) initWithMRAVEndpointObserver:v5];
    [(MediaControlsStandaloneEndpointController *)self setEndpointObserver:v6];

    CFRelease(v5);
  }
}

- (void)setRoute:(id)route
{
  routeCopy = route;
  [(MediaControlsStandaloneEndpointController *)self setEndpointDiscovered:routeCopy != 0];
  [(MediaControlsStandaloneEndpointController *)self updateAllowsAutomaticResponseLoading];
  if (routeCopy)
  {
    v5.receiver = self;
    v5.super_class = MediaControlsStandaloneEndpointController;
    [(MediaControlsEndpointController *)&v5 setRoute:routeCopy];
  }
}

- (void)updateAllowsAutomaticResponseLoading
{
  route = [(MediaControlsEndpointController *)self route];
  if (route)
  {
    allowsAutomaticResponseLoading = self->_allowsAutomaticResponseLoading;
  }

  else
  {
    allowsAutomaticResponseLoading = 0;
  }

  v5.receiver = self;
  v5.super_class = MediaControlsStandaloneEndpointController;
  [(MediaControlsEndpointController *)&v5 setAllowsAutomaticResponseLoading:allowsAutomaticResponseLoading];
}

- (void)setEndpointDiscovered:(BOOL)discovered
{
  if (self->_endpointDiscovered != discovered)
  {
    self->_endpointDiscovered = discovered;
    delegate = [(MediaControlsEndpointController *)self delegate];
    [delegate endpointControllerDidChangeState:self];
  }
}

- (void)setEndpointObserver:(id)observer
{
  observerCopy = observer;
  endpointObserver = [(MediaControlsStandaloneEndpointController *)self endpointObserver];

  if (endpointObserver)
  {
    endpointObserver2 = [(MediaControlsStandaloneEndpointController *)self endpointObserver];
    MEMORY[0x1A58DBB90]([endpointObserver2 unwrappedValue]);
  }

  objc_storeStrong(&self->_endpointObserver, observer);
  objc_initWeak(&location, self);
  endpointObserver3 = [(MediaControlsStandaloneEndpointController *)self endpointObserver];
  [endpointObserver3 unwrappedValue];
  objc_copyWeak(&v9, &location);
  MRAVEndpointObserverAddEndpointChangedCallback();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __65__MediaControlsStandaloneEndpointController_setEndpointObserver___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = [WeakRetained _routeForEndpoint:a2];
    }

    else
    {
      v6 = 0;
    }

    v7 = MCLogCategoryRouting();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "[MediaControlsEndpointController setEndpointObserver] for %{public}@ to %{public}@", buf, 0x16u);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__MediaControlsStandaloneEndpointController_setEndpointObserver___block_invoke_10;
    v10[3] = &unk_1E7663A20;
    v11 = v5;
    v12 = v6;
    v13 = *(a1 + 32);
    v14 = a2;
    v9 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

uint64_t __65__MediaControlsStandaloneEndpointController_setEndpointObserver___block_invoke_10(uint64_t a1)
{
  [*(a1 + 32) setRoute:*(a1 + 40)];
  [*(a1 + 48) setAllowsAutomaticResponseLoading:*(a1 + 56) != 0];
  v2 = *(a1 + 32);

  return [v2 updateRoutePropertiesIfNeeded];
}

- (void)beginObserving
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MCLogCategoryRouting();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    route = [(MediaControlsEndpointController *)self route];
    v6 = 138543362;
    v7 = route;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "Begin observing: %{public}@", &v6, 0xCu);
  }

  endpointObserver = [(MediaControlsStandaloneEndpointController *)self endpointObserver];
  MEMORY[0x1A58DBB70]([endpointObserver unwrappedValue]);
}

- (void)endObserving
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MCLogCategoryRouting();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    route = [(MediaControlsEndpointController *)self route];
    v6 = 138543362;
    v7 = route;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "End observing: %{public}@", &v6, 0xCu);
  }

  endpointObserver = [(MediaControlsStandaloneEndpointController *)self endpointObserver];
  MEMORY[0x1A58DBB90]([endpointObserver unwrappedValue]);
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

@end