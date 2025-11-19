@interface MediaControlsStandaloneEndpointController
- (BOOL)controller:(id)a3 shouldRetryFailedRequestWithError:(id)a4;
- (MediaControlsStandaloneEndpointController)initWithEndpoint:(id)a3 client:(id)a4 player:(id)a5;
- (MediaControlsStandaloneEndpointController)initWithRouteUID:(id)a3 client:(id)a4 player:(id)a5;
- (id)_routeForEndpoint:(__MRAVEndpointRef *)a3;
- (void)beginObserving;
- (void)dealloc;
- (void)endObserving;
- (void)setEndpointDiscovered:(BOOL)a3;
- (void)setEndpointObserver:(id)a3;
- (void)setRoute:(id)a3;
- (void)setRouteUID:(id)a3;
- (void)updateAllowsAutomaticResponseLoading;
@end

@implementation MediaControlsStandaloneEndpointController

- (MediaControlsStandaloneEndpointController)initWithEndpoint:(id)a3 client:(id)a4 player:(id)a5
{
  v13.receiver = self;
  v13.super_class = MediaControlsStandaloneEndpointController;
  v5 = [(MediaControlsEndpointController *)&v13 initWithEndpoint:a3 client:a4 player:a5];
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

- (MediaControlsStandaloneEndpointController)initWithRouteUID:(id)a3 client:(id)a4 player:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && ![v8 isEqualToString:@"LOCAL"])
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
  v13 = [(MediaControlsEndpointController *)&v16 initWithEndpoint:v11 client:v9 player:v10];
  v14 = v13;
  if (v13)
  {
    v13->_endpointDiscovered = v12;
    [(MediaControlsStandaloneEndpointController *)v13 setRouteUID:v8];
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

- (void)setRouteUID:(id)a3
{
  v7 = a3;
  if (([(NSString *)self->_routeUID isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_routeUID, a3);
    v5 = MRAVEndpointObserverCreateWithOutputDeviceUID();
    v6 = [objc_alloc(MEMORY[0x1E6970580]) initWithMRAVEndpointObserver:v5];
    [(MediaControlsStandaloneEndpointController *)self setEndpointObserver:v6];

    CFRelease(v5);
  }
}

- (void)setRoute:(id)a3
{
  v4 = a3;
  [(MediaControlsStandaloneEndpointController *)self setEndpointDiscovered:v4 != 0];
  [(MediaControlsStandaloneEndpointController *)self updateAllowsAutomaticResponseLoading];
  if (v4)
  {
    v5.receiver = self;
    v5.super_class = MediaControlsStandaloneEndpointController;
    [(MediaControlsEndpointController *)&v5 setRoute:v4];
  }
}

- (void)updateAllowsAutomaticResponseLoading
{
  v3 = [(MediaControlsEndpointController *)self route];
  if (v3)
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

- (void)setEndpointDiscovered:(BOOL)a3
{
  if (self->_endpointDiscovered != a3)
  {
    self->_endpointDiscovered = a3;
    v5 = [(MediaControlsEndpointController *)self delegate];
    [v5 endpointControllerDidChangeState:self];
  }
}

- (void)setEndpointObserver:(id)a3
{
  v5 = a3;
  v6 = [(MediaControlsStandaloneEndpointController *)self endpointObserver];

  if (v6)
  {
    v7 = [(MediaControlsStandaloneEndpointController *)self endpointObserver];
    MEMORY[0x1A58DBB90]([v7 unwrappedValue]);
  }

  objc_storeStrong(&self->_endpointObserver, a3);
  objc_initWeak(&location, self);
  v8 = [(MediaControlsStandaloneEndpointController *)self endpointObserver];
  [v8 unwrappedValue];
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
    v4 = [(MediaControlsEndpointController *)self route];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "Begin observing: %{public}@", &v6, 0xCu);
  }

  v5 = [(MediaControlsStandaloneEndpointController *)self endpointObserver];
  MEMORY[0x1A58DBB70]([v5 unwrappedValue]);
}

- (void)endObserving
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MCLogCategoryRouting();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MediaControlsEndpointController *)self route];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "End observing: %{public}@", &v6, 0xCu);
  }

  v5 = [(MediaControlsStandaloneEndpointController *)self endpointObserver];
  MEMORY[0x1A58DBB90]([v5 unwrappedValue]);
}

- (BOOL)controller:(id)a3 shouldRetryFailedRequestWithError:(id)a4
{
  v4 = a4;
  v5 = [v4 domain];
  v6 = v5 != *MEMORY[0x1E696F850];
  if (v5 == *MEMORY[0x1E696F850])
  {
    v7 = [v4 code];

    if (v7 != 2)
    {
      v6 = 1;
      goto LABEL_5;
    }

    v8 = MEMORY[0x1E6970490];
    v5 = [MEMORY[0x1E6970490] systemRoute];
    [v8 setActiveRoute:v5 reason:@"invalid route error" completion:0];
  }

LABEL_5:
  return v6;
}

- (id)_routeForEndpoint:(__MRAVEndpointRef *)a3
{
  ExternalDevice = MRAVEndpointGetExternalDevice();
  v5 = [objc_alloc(MEMORY[0x1E6970450]) initWithEndpoint:a3];
  if (ExternalDevice)
  {
    v6 = [objc_alloc(MEMORY[0x1E6970488]) initWithExternalDevice:ExternalDevice];
    [v5 setConnection:v6];
  }

  return v5;
}

@end