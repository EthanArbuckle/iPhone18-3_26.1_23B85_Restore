@interface SUUINearMeController
+ (id)sharedController;
- (NSArray)items;
- (SUUINearMeController)init;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_disableNearMe;
- (void)_finishLookupWithItems:(id)a3 response:(id)a4 error:(id)a5;
- (void)_lookupItemsForLocation:(id)a3;
- (void)_monitorLocationTimeout;
- (void)_refreshTimeout;
- (void)_setItems:(id)a3 responseDictionary:(id)a4 error:(id)a5 status:(int64_t)a6;
- (void)_startMonitoringLocation;
- (void)_startRefreshTimer;
- (void)_stopMonitoringLocation;
- (void)_stopRefreshTimer;
- (void)itemStateCenterRestrictionsChanged:(id)a3;
- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
@end

@implementation SUUINearMeController

+ (id)sharedController
{
  if (sharedController_sOnce != -1)
  {
    +[SUUINearMeController sharedController];
  }

  v3 = sharedController_sNearMeController;

  return v3;
}

uint64_t __40__SUUINearMeController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(SUUINearMeController);
  v1 = sharedController_sNearMeController;
  sharedController_sNearMeController = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SUUINearMeController)init
{
  v6.receiver = self;
  v6.super_class = SUUINearMeController;
  v2 = [(SUUINearMeController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
    v4 = +[SUUIItemStateCenter defaultCenter];
    [v4 addObserver:v2];
  }

  return v2;
}

- (NSArray)items
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = +[SUUIItemStateCenter defaultCenter];
  v5 = [v4 parentalControlsRank];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_items;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 parentalControlsRank] <= v5)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)_applicationWillEnterForeground:(id)a3
{
  if (self->_refreshTimer)
  {
    [(SUUINearMeController *)self _startMonitoringLocation];
  }
}

- (void)itemStateCenterRestrictionsChanged:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SUUINearMeController_itemStateCenterRestrictionsChanged___block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)locationManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ((a4 - 3) > 1)
  {
    if (a4)
    {
      [(SUUINearMeController *)self _disableNearMe];
    }
  }

  else
  {
    [(SUUINearMeController *)self _startMonitoringLocation];
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v15 = @"nearMeEnabled";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:(a4 - 3) < 2];
  v16[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v7 postNotificationName:@"SUUINearMeLocationStatusDidChangeNotification" object:v9];

  if (a4 == 2 && !self->_authorizationStatus)
  {
    v10 = objc_alloc_init(MEMORY[0x277D75118]);
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"NEAR_ME_LOCATION_ALERT"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"NEAR_ME_LOCATION_ALERT" inBundles:0];
    }
    v12 = ;
    [v10 setTitle:v12];

    v13 = self->_clientContext;
    if (v13)
    {
      [(SUUIClientContext *)v13 localizedStringForKey:@"OK"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"OK" inBundles:0];
    }
    v14 = ;
    [v10 setCancelButtonIndex:{objc_msgSend(v10, "addButtonWithTitle:", v14)}];

    [v10 show];
  }

  self->_authorizationStatus = a4;
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  if ([a4 code] == 1)
  {

    [(SUUINearMeController *)self _disableNearMe];
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v9 = a4;
  v5 = [v9 count];
  v6 = v9;
  if (v5)
  {
    v7 = [v9 lastObject];
    [v7 horizontalAccuracy];
    if (v8 > 0.00000011920929 && v8 <= 65.0 && SUUILocationIsAccurate(v7))
    {
      [(SUUINearMeController *)self _lookupItemsForLocation:v7];
    }

    v6 = v9;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)_startMonitoringLocation
{
  [(SUUINearMeController *)self _stopRefreshTimer];
  if (!self->_isMonitoring && !self->_lookupRequest)
  {
    if (!self->_locationManager)
    {
      v3 = SUUICoreLocationFramework();
      v4 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Cllocationmana.isa, v3));
      locationManager = self->_locationManager;
      self->_locationManager = v4;

      [(CLLocationManager *)self->_locationManager setDelegate:self];
      v6 = SUUICoreLocationFramework();
      v7 = SUUIWeakLinkedSymbolForString("kCLLocationAccuracyBest", v6);
      if (v7)
      {
        [(CLLocationManager *)self->_locationManager setDesiredAccuracy:*v7];
      }
    }

    v8 = [objc_opt_class() authorizationStatus];
    self->_authorizationStatus = v8;
    if (!v8)
    {
      [(CLLocationManager *)self->_locationManager requestWhenInUseAuthorization];
    }

    [(CLLocationManager *)self->_locationManager startUpdatingLocation];
    self->_isMonitoring = 1;
    if (!self->_locationTimeoutTimer)
    {
      objc_initWeak(&location, self);
      v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      locationTimeoutTimer = self->_locationTimeoutTimer;
      self->_locationTimeoutTimer = v9;

      v11 = self->_locationTimeoutTimer;
      v12 = dispatch_time(0, 2500000000);
      dispatch_source_set_timer(v11, v12, 0, 0);
      v13 = self->_locationTimeoutTimer;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48__SUUINearMeController__startMonitoringLocation__block_invoke;
      v14[3] = &unk_2798F67A0;
      objc_copyWeak(&v15, &location);
      dispatch_source_set_event_handler(v13, v14);
      dispatch_resume(self->_locationTimeoutTimer);
      self->_locationTimeoutCount = 0;
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __48__SUUINearMeController__startMonitoringLocation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _monitorLocationTimeout];
}

- (void)_stopMonitoringLocation
{
  if (self->_isMonitoring)
  {
    [(CLLocationManager *)self->_locationManager stopUpdatingLocation];
    self->_isMonitoring = 0;
  }

  locationTimeoutTimer = self->_locationTimeoutTimer;
  if (locationTimeoutTimer)
  {
    dispatch_source_cancel(locationTimeoutTimer);
    v4 = self->_locationTimeoutTimer;
    self->_locationTimeoutTimer = 0;
  }
}

- (void)_monitorLocationTimeout
{
  v3 = [(CLLocationManager *)self->_locationManager location];
  v9 = v3;
  if (v3 && (IsAccurate = SUUILocationIsAccurate(v3), v4 = v9, IsAccurate))
  {
    [(SUUINearMeController *)self _lookupItemsForLocation:v9];
  }

  else
  {
    locationTimeoutCount = self->_locationTimeoutCount;
    self->_locationTimeoutCount = locationTimeoutCount + 1;
    if (locationTimeoutCount > 2)
    {
      [(SUUINearMeController *)self _stopMonitoringLocation];
      [(SUUINearMeController *)self _setItems:MEMORY[0x277CBEBF8] responseDictionary:0 error:0 status:2];
      [(SUUINearMeController *)self _startRefreshTimer];
    }

    else
    {
      locationTimeoutTimer = self->_locationTimeoutTimer;
      v8 = dispatch_time(0, 2500000000);
      dispatch_source_set_timer(locationTimeoutTimer, v8, 0, 0);
    }
  }
}

- (void)_lookupItemsForLocation:(id)a3
{
  v4 = a3;
  [(SUUINearMeController *)self _stopMonitoringLocation];
  [(SUUINearMeController *)self _stopRefreshTimer];
  if (!self->_lookupRequest)
  {
    objc_initWeak(&location, self);
    v5 = [objc_alloc(MEMORY[0x277D69B50]) initWithLocation:v4];
    lookupRequest = self->_lookupRequest;
    self->_lookupRequest = v5;

    [(SSLookupRequest *)self->_lookupRequest setKeyProfile:*MEMORY[0x277D6A2C8]];
    v7 = self->_lookupRequest;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__SUUINearMeController__lookupItemsForLocation___block_invoke;
    v8[3] = &unk_2798F67F0;
    objc_copyWeak(&v9, &location);
    [(SSLookupRequest *)v7 startWithLookupBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __48__SUUINearMeController__lookupItemsForLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v18 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v4 allItems];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * v10);
        v12 = [SUUISearchItem alloc];
        v13 = [v11 lookupDictionary];
        v14 = [(SUUISearchItem *)v12 initWithLookupDictionary:v13];

        if (v14)
        {
          [v5 addObject:v14];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUUINearMeController__lookupItemsForLocation___block_invoke_2;
  block[3] = &unk_2798F67C8;
  objc_copyWeak(&v24, (a1 + 32));
  v21 = v5;
  v22 = v4;
  v23 = v18;
  v15 = v18;
  v16 = v4;
  v17 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v24);
}

void __48__SUUINearMeController__lookupItemsForLocation___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _finishLookupWithItems:*(a1 + 32) response:*(a1 + 40) error:*(a1 + 48)];
}

- (void)_finishLookupWithItems:(id)a3 response:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a4 responseDictionary];
  [(SUUINearMeController *)self _setItems:v9 responseDictionary:v10 error:v8 status:1];

  [(SUUINearMeController *)self _startRefreshTimer];
  lookupRequest = self->_lookupRequest;
  self->_lookupRequest = 0;
}

- (void)_startRefreshTimer
{
  if (!self->_refreshTimer)
  {
    location[5] = v2;
    location[6] = v3;
    objc_initWeak(location, self);
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    refreshTimer = self->_refreshTimer;
    self->_refreshTimer = v5;

    v7 = self->_refreshTimer;
    v8 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v7, v8, 0, 0);
    v9 = self->_refreshTimer;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__SUUINearMeController__startRefreshTimer__block_invoke;
    v10[3] = &unk_2798F67A0;
    objc_copyWeak(&v11, location);
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(self->_refreshTimer);
    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }
}

void __42__SUUINearMeController__startRefreshTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshTimeout];
}

- (void)_stopRefreshTimer
{
  refreshTimer = self->_refreshTimer;
  if (refreshTimer)
  {
    dispatch_source_cancel(refreshTimer);
    v4 = self->_refreshTimer;
    self->_refreshTimer = 0;
  }
}

- (void)_refreshTimeout
{
  [(SUUINearMeController *)self _stopRefreshTimer];

  [(SUUINearMeController *)self _startMonitoringLocation];
}

- (void)_setItems:(id)a3 responseDictionary:(id)a4 error:(id)a5 status:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  items = self->_items;
  self->_items = v9;
  v12 = v9;

  self->_status = a6;
  responseDictionary = self->_responseDictionary;
  self->_responseDictionary = v10;
  v14 = v10;

  v15 = [MEMORY[0x277CCAB98] defaultCenter];

  [v15 postNotificationName:@"SUUINearMeItemsDidChangeNotification" object:self];
}

- (void)_disableNearMe
{
  [(SUUINearMeController *)self _stopMonitoringLocation];
  [(SUUINearMeController *)self _stopRefreshTimer];

  [(SUUINearMeController *)self _setItems:0 responseDictionary:0 error:0 status:0];
}

@end