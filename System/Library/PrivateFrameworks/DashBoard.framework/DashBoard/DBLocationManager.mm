@interface DBLocationManager
+ (id)homeKitLocationManager;
- (BOOL)authorized;
- (CLLocation)cachedCurrentLocation;
- (CLLocation)currentLocation;
- (DBLocationManager)initWithBundleIdentifier:(id)a3;
- (DBLocationManager)initWithBundlePath:(id)a3;
- (DBLocationManager)initWithLocationManager:(id)a3 locationQueue:(id)a4;
- (NSString)description;
- (id)_name;
- (id)_queue_cachedCurrentLocation;
- (id)_queue_currentLocation;
- (void)_authorizeIfNeeded;
- (void)_commonInit;
- (void)_commonPostInit;
- (void)_queue_didEnterRegionWithIdentifier:(id)a3;
- (void)_queue_didExitRegionWithIDentifier:(id)a3;
- (void)_queue_startUpdatingLocationNow;
- (void)_queue_stopUpdatingLocationNow;
- (void)_queue_updateCurrentLocation:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)removeObserver:(id)a3;
- (void)startMonitoringForRegionWithIdentifier:(id)a3 locationCoordinate:(CLLocationCoordinate2D)a4 range:(double)a5;
- (void)startUpdatingLocationWithIdentifier:(id)a3;
- (void)stopMonitoringForRegionWithIdentifier:(id)a3;
- (void)stopUpdatingLocationWithIdentifier:(id)a3;
@end

@implementation DBLocationManager

- (CLLocation)currentLocation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(DBLocationManager *)self locationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__DBLocationManager_currentLocation__block_invoke;
  v6[3] = &unk_278F02AA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)homeKitLocationManager
{
  v2 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    +[DBLocationManager homeKitLocationManager];
  }

  v3 = [[DBLocationManager alloc] initWithBundlePath:@"/System/Library/LocationBundles/CarPlayHomeLocation.bundle"];

  return v3;
}

- (DBLocationManager)initWithLocationManager:(id)a3 locationQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = DBLocationManager;
  v9 = [(DBLocationManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationQueue, a4);
    [(DBLocationManager *)v10 _commonInit];
    objc_storeStrong(&v10->_locationManager, a3);
    [(DBLocationManager *)v10 _commonPostInit];
    v11 = v10;
  }

  return v10;
}

- (DBLocationManager)initWithBundlePath:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = DBLocationManager;
  v6 = [(DBLocationManager *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundlePath, a3);
    v8 = MEMORY[0x24C1CC8A0]([(DBLocationManager *)v7 _commonInit]);
    v9 = [v8 stringByAppendingPathComponent:v5];

    v10 = objc_alloc(MEMORY[0x277CCA8D8]);
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
    v12 = [v10 initWithURL:v11];
    bundle = v7->_bundle;
    v7->_bundle = v12;

    objc_initWeak(&location, v7);
    locationQueue = v7->_locationQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __40__DBLocationManager_initWithBundlePath___block_invoke;
    v17[3] = &unk_278F02300;
    objc_copyWeak(&v18, &location);
    dispatch_async(locationQueue, v17);
    v15 = v7;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __40__DBLocationManager_initWithBundlePath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_alloc(MEMORY[0x277CBFC10]);
  v2 = [WeakRetained bundle];
  v3 = [WeakRetained locationQueue];
  v4 = [v1 initWithEffectiveBundle:v2 delegate:WeakRetained onQueue:v3];
  [WeakRetained setLocationManager:v4];

  [WeakRetained _commonPostInit];
}

- (DBLocationManager)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = DBLocationManager;
  v6 = [(DBLocationManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
    [(DBLocationManager *)v7 _commonInit];
    objc_initWeak(&location, v7);
    locationQueue = v7->_locationQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__DBLocationManager_initWithBundleIdentifier___block_invoke;
    v11[3] = &unk_278F02300;
    objc_copyWeak(&v12, &location);
    dispatch_async(locationQueue, v11);
    v9 = v7;
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __46__DBLocationManager_initWithBundleIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = objc_alloc(MEMORY[0x277CBFC10]);
  v2 = [WeakRetained bundleIdentifier];
  v3 = [WeakRetained locationQueue];
  v4 = [v1 initWithEffectiveBundleIdentifier:v2 delegate:WeakRetained onQueue:v3];
  [WeakRetained setLocationManager:v4];

  [WeakRetained _commonPostInit];
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [DBLocationManager dealloc];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(DBLocationManager *)self locationManager];
  v5 = [v4 monitoredRegions];

  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(DBLocationManager *)self locationManager];
        [v11 stopMonitoringForRegion:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [(DBLocationManager *)self locationManager];
  [v12 stopUpdatingLocation];

  v13.receiver = self;
  v13.super_class = DBLocationManager;
  [(DBLocationManager *)&v13 dealloc];
}

- (NSString)description
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(DBLocationManager *)self activeAssertions];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v22 + 1) + 8 * i) description];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v21 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [(DBLocationManager *)self _name];
  if ([(DBLocationManager *)self authorized])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if ([(DBLocationManager *)self locationActive])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [(DBLocationManager *)self monitoringRegions];
  v16 = [v15 allKeys];
  v17 = [v16 componentsJoinedByString:{@", "}];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v21 stringWithFormat:@"<%@: %p %@ authorized=%@ active=%@ regions=[%@] assertions=[%@]>", v11, self, v12, v13, v14, v17, v18];

  return v19;
}

- (BOOL)authorized
{
  v3 = [(DBLocationManager *)self bundleIdentifier];

  if (v3)
  {
    v4 = MEMORY[0x277CBFC10];
    v5 = [(DBLocationManager *)self bundleIdentifier];
    v6 = [v4 authorizationStatusForBundleIdentifier:v5];
  }

  else
  {
    v7 = [(DBLocationManager *)self bundlePath];

    if (v7)
    {
      v8 = MEMORY[0x277CBFC10];
      v5 = [(DBLocationManager *)self bundle];
      v6 = [v8 authorizationStatusForBundle:v5];
    }

    else
    {
      v5 = [(DBLocationManager *)self locationManager];
      v6 = [v5 authorizationStatus];
    }
  }

  v9 = v6;

  return (v9 - 3) < 2;
}

uint64_t __36__DBLocationManager_currentLocation__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _queue_currentLocation];

  return MEMORY[0x2821F96F8]();
}

- (CLLocation)cachedCurrentLocation
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(DBLocationManager *)self locationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__DBLocationManager_cachedCurrentLocation__block_invoke;
  v6[3] = &unk_278F02AA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__DBLocationManager_cachedCurrentLocation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_cachedCurrentLocation];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)startUpdatingLocationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBLocationManager *)self locationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__DBLocationManager_startUpdatingLocationWithIdentifier___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__DBLocationManager_startUpdatingLocationWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) activeAssertions];
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = [v3 containsObject:v5];

  if ((v6 & 1) == 0)
  {
    v7 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __57__DBLocationManager_startUpdatingLocationWithIdentifier___block_invoke_cold_1();
    }

    [*v2 _authorizeIfNeeded];
    v8 = [*v2 activeAssertions];
    [v8 addObject:*v4];

    if (([*v2 locationActive] & 1) == 0)
    {
      v9 = DBLogForCategory(9uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __57__DBLocationManager_startUpdatingLocationWithIdentifier___block_invoke_cold_2();
      }

      [*v2 _queue_startUpdatingLocationNow];
    }
  }
}

- (void)stopUpdatingLocationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBLocationManager *)self locationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__DBLocationManager_stopUpdatingLocationWithIdentifier___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __56__DBLocationManager_stopUpdatingLocationWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) activeAssertions];
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = [v3 containsObject:v5];

  if (v6)
  {
    v7 = DBLogForCategory(9uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __56__DBLocationManager_stopUpdatingLocationWithIdentifier___block_invoke_cold_1();
    }

    v8 = [*v2 activeAssertions];
    [v8 removeObject:*v4];

    if ([*v2 locationActive])
    {
      v9 = [*v2 activeAssertions];
      v10 = [v9 count];

      if (!v10)
      {
        v11 = DBLogForCategory(9uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __56__DBLocationManager_stopUpdatingLocationWithIdentifier___block_invoke_cold_2();
        }

        [*v2 _queue_stopUpdatingLocationNow];
      }
    }
  }
}

- (void)startMonitoringForRegionWithIdentifier:(id)a3 locationCoordinate:(CLLocationCoordinate2D)a4 range:(double)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v9 = a3;
  [(DBLocationManager *)self _authorizeIfNeeded];
  v10 = [(DBLocationManager *)self locationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__DBLocationManager_startMonitoringForRegionWithIdentifier_locationCoordinate_range___block_invoke;
  block[3] = &unk_278F037A0;
  v14 = latitude;
  v15 = longitude;
  block[4] = self;
  v13 = v9;
  v16 = a5;
  v11 = v9;
  dispatch_async(v10, block);
}

void __85__DBLocationManager_startMonitoringForRegionWithIdentifier_locationCoordinate_range___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _queue_currentLocation];
  v3 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:*(a1 + 48) longitude:*(a1 + 56)];
  [v2 distanceFromLocation:v3];
  v5 = v4;

  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 64);
    v13 = 138544130;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    v17 = 2050;
    v18 = v5;
    v19 = 2050;
    v20 = v12;
    _os_log_debug_impl(&dword_248146000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ identifier=%{public}@ currentDistance=%{public}.1f range=%{public}.1f", &v13, 0x2Au);
  }

  if ([MEMORY[0x277CBFC10] isMonitoringAvailableForClass:objc_opt_class()])
  {
    v7 = [objc_alloc(MEMORY[0x277CBFBC8]) initWithCenter:*(a1 + 40) radius:*(a1 + 48) identifier:{*(a1 + 56), *(a1 + 64)}];
    [v7 setNotifyOnExit:1];
    [v7 setNotifyOnEntry:1];
    v8 = [*(a1 + 32) monitoringRegions];
    [v8 setObject:v7 forKeyedSubscript:*(a1 + 40)];

    v9 = [*(a1 + 32) locationManager];
    [v9 startMonitoringForRegion:v7];
  }
}

- (void)stopMonitoringForRegionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBLocationManager *)self locationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__DBLocationManager_stopMonitoringForRegionWithIdentifier___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __59__DBLocationManager_stopMonitoringForRegionWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __59__DBLocationManager_stopMonitoringForRegionWithIdentifier___block_invoke_cold_1();
  }

  if ([MEMORY[0x277CBFC10] isMonitoringAvailableForClass:objc_opt_class()])
  {
    v3 = [*(a1 + 32) monitoringRegions];
    v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

    if (v4)
    {
      v5 = [*(a1 + 32) locationManager];
      [v5 stopMonitoringForRegion:v4];

      v6 = [*(a1 + 32) monitoringRegions];
      [v6 removeObjectForKey:*(a1 + 40)];
    }
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBLocationManager *)self observers];
  [v5 registerObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBLocationManager *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)_commonInit
{
  v3 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [DBLocationManager _commonInit];
  }

  if (!self->_locationQueue)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.DashBoard.locationManager.%p", self];
    v6 = dispatch_queue_create([v5 UTF8String], v4);
    locationQueue = self->_locationQueue;
    self->_locationQueue = v6;
  }

  v8 = objc_opt_new();
  activeAssertions = self->_activeAssertions;
  self->_activeAssertions = v8;

  v10 = objc_opt_new();
  monitoringRegions = self->_monitoringRegions;
  self->_monitoringRegions = v10;

  v12 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285ADE4A8];
  observers = self->_observers;
  self->_observers = v12;
}

- (void)_commonPostInit
{
  v3 = [(DBLocationManager *)self locationManager];
  [v3 setDelegate:self];

  v4 = *MEMORY[0x277CE4210];
  v5 = [(DBLocationManager *)self locationManager];
  [v5 setDistanceFilter:v4];

  v6 = [(DBLocationManager *)self locationManager];
  [v6 setDesiredAccuracy:v4];

  [(DBLocationManager *)self _authorizeIfNeeded];
}

- (void)_authorizeIfNeeded
{
  v3 = [(DBLocationManager *)self locationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__DBLocationManager__authorizeIfNeeded__block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(v3, block);
}

void __39__DBLocationManager__authorizeIfNeeded__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) authorized] & 1) == 0)
  {
    v2 = [*(a1 + 32) locationManager];
    [v2 requestWhenInUseAuthorization];
  }
}

- (void)_queue_startUpdatingLocationNow
{
  v3 = [(DBLocationManager *)self locationQueue];
  dispatch_assert_queue_V2(v3);

  [(DBLocationManager *)self setLocationActive:1];
  v4 = [(DBLocationManager *)self locationManager];
  [v4 startUpdatingLocation];

  v5 = [(DBLocationManager *)self locationManager];
  v6 = [v5 location];
  v8 = [v6 copy];

  v7 = v8;
  if (v8)
  {
    [(DBLocationManager *)self _queue_updateCurrentLocation:v8];
    v7 = v8;
  }
}

- (void)_queue_stopUpdatingLocationNow
{
  v3 = [(DBLocationManager *)self locationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(DBLocationManager *)self locationManager];
  [v4 stopUpdatingLocation];

  currentLocation = self->_currentLocation;
  self->_currentLocation = 0;

  [(DBLocationManager *)self setLocationActive:0];
}

- (void)_queue_updateCurrentLocation:(id)a3
{
  v10 = a3;
  v5 = [(DBLocationManager *)self locationQueue];
  dispatch_assert_queue_V2(v5);

  if (!v10 || self->_currentLocation)
  {
    v6 = [(DBLocationManager *)self lastPostedLocation];
    [v6 distanceFromLocation:v10];
    v8 = v7;

    objc_storeStrong(&self->_currentLocation, a3);
    objc_storeStrong(&self->_cachedCurrentLocation, a3);
    if (v8 <= 10.0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    objc_storeStrong(&self->_currentLocation, a3);
    objc_storeStrong(&self->_cachedCurrentLocation, a3);
  }

  [(DBLocationManager *)self setLastPostedLocation:v10];
  v9 = [(DBLocationManager *)self observers];
  [v9 locationManager:self didUpdateLocation:v10];

LABEL_6:
}

- (id)_queue_currentLocation
{
  v3 = [(DBLocationManager *)self locationQueue];
  dispatch_assert_queue_V2(v3);

  if (self->_currentLocation)
  {
    if ([(DBLocationManager *)self cacheUsedCount])
    {
      v4 = [(DBLocationManager *)self cacheUsedCount];
      v5 = [MEMORY[0x277CBEAA8] now];
      v6 = [DBDateFormatter formattedDateTimeStamp:v5];

      v7 = dispatch_get_global_queue(17, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__DBLocationManager__queue_currentLocation__block_invoke;
      block[3] = &unk_278F01820;
      block[4] = self;
      v21 = v6;
      v22 = v4;
      v8 = v6;
      dispatch_async(v7, block);

      [(DBLocationManager *)self setCacheUsedCount:0];
    }

    v9 = self->_currentLocation;
  }

  else
  {
    v9 = [(DBLocationManager *)self _queue_cachedCurrentLocation];
    v10 = [(DBLocationManager *)self cacheUsedCount];
    [(DBLocationManager *)self setCacheUsedCount:v10 + 1];
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v10, 2) <= 0xCCCCCCCCCCCCCCCuLL)
    {
      v11 = [(DBLocationManager *)self cacheUsedCount]- 1;
      v12 = [MEMORY[0x277CBEAA8] now];
      v13 = [DBDateFormatter formattedDateTimeStamp:v12];

      v14 = dispatch_get_global_queue(17, 0);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __43__DBLocationManager__queue_currentLocation__block_invoke_102;
      v17[3] = &unk_278F01820;
      v17[4] = self;
      v18 = v13;
      v19 = v11;
      v15 = v13;
      dispatch_async(v14, v17);
    }
  }

  return v9;
}

void __43__DBLocationManager__queue_currentLocation__block_invoke()
{
  v0 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __43__DBLocationManager__queue_currentLocation__block_invoke_cold_1();
  }
}

void __43__DBLocationManager__queue_currentLocation__block_invoke_102()
{
  v0 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __43__DBLocationManager__queue_currentLocation__block_invoke_102_cold_1();
  }
}

- (id)_queue_cachedCurrentLocation
{
  v3 = [(DBLocationManager *)self locationQueue];
  dispatch_assert_queue_V2(v3);

  cachedCurrentLocation = self->_cachedCurrentLocation;
  if (!cachedCurrentLocation || ((-[CLLocation timestamp](cachedCurrentLocation, "timestamp"), v5 = objc_claimAutoreleasedReturnValue(), (v6 = v5) == 0) ? ([MEMORY[0x277CBEAA8] distantPast], v7 = objc_claimAutoreleasedReturnValue()) : (v7 = v5), v8 = v7, v6, objc_msgSend(v8, "timeIntervalSinceNow"), v10 = fabs(v9), v8, v10 > 15.0))
  {
    v11 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__DBLocationManager__queue_cachedCurrentLocation__block_invoke;
    block[3] = &unk_278F01580;
    block[4] = self;
    dispatch_async(v11, block);

    v12 = [(DBLocationManager *)self locationManager];
    v13 = [v12 location];
    v14 = [v13 copy];
    v15 = self->_cachedCurrentLocation;
    self->_cachedCurrentLocation = v14;
  }

  v16 = self->_cachedCurrentLocation;

  return v16;
}

void __49__DBLocationManager__queue_cachedCurrentLocation__block_invoke(uint64_t a1)
{
  v2 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __49__DBLocationManager__queue_cachedCurrentLocation__block_invoke_cold_1(a1, v2);
  }
}

- (void)_queue_didEnterRegionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBLocationManager *)self locationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DBLocationManager _queue_didEnterRegionWithIdentifier:];
  }

  v7 = [(DBLocationManager *)self observers];
  [v7 locationManager:self didEnterRegionIdentifier:v4];

  v8 = [(DBLocationManager *)self observers];
  v9 = [(DBLocationManager *)self _queue_currentLocation];
  [v8 locationManager:self didUpdateLocation:v9];
}

- (void)_queue_didExitRegionWithIDentifier:(id)a3
{
  v4 = a3;
  v5 = [(DBLocationManager *)self locationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DBLocationManager _queue_didEnterRegionWithIdentifier:];
  }

  v7 = [(DBLocationManager *)self observers];
  [v7 locationManager:self didExitRegionIdentifier:v4];

  v8 = [(DBLocationManager *)self observers];
  v9 = [(DBLocationManager *)self _queue_currentLocation];
  [v8 locationManager:self didUpdateLocation:v9];
}

- (id)_name
{
  v3 = [(DBLocationManager *)self bundlePath];
  v4 = [v3 isEqualToString:@"/System/Library/LocationBundles/CarPlayHomeLocation.bundle"];

  if (v4)
  {
    v5 = @"HomeKit";
  }

  else
  {
    v6 = [(DBLocationManager *)self bundlePath];

    if (v6)
    {
      v5 = [(DBLocationManager *)self bundlePath];
    }

    else
    {
      v7 = [(DBLocationManager *)self bundleIdentifier];

      if (v7)
      {
        v5 = [(DBLocationManager *)self bundleIdentifier];
      }

      else
      {
        v5 = @"Unnamed";
      }
    }
  }

  return v5;
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(DBLocationManager *)self locationManagerDidChangeAuthorization:v4, v5];
  }

  [(DBLocationManager *)self _authorizeIfNeeded];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = [a3 location];
  v5 = [v6 copy];
  [(DBLocationManager *)self _queue_updateCurrentLocation:v5];
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v4 = a4;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBLocationManager locationManager:didFailWithError:];
  }
}

- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v7 identifier];
    v11 = 138543874;
    v12 = self;
    v13 = 2050;
    v14 = a4;
    v15 = 2114;
    v16 = v10;
    _os_log_debug_impl(&dword_248146000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ state=%{public}ld region=%{public}@", &v11, 0x20u);
  }

  if (a4 == 2)
  {
    v9 = [v7 identifier];
    [(DBLocationManager *)self _queue_didExitRegionWithIDentifier:v9];
    goto LABEL_7;
  }

  if (a4 == 1)
  {
    v9 = [v7 identifier];
    [(DBLocationManager *)self _queue_didEnterRegionWithIdentifier:v9];
LABEL_7:
  }
}

void __57__DBLocationManager_startUpdatingLocationWithIdentifier___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_0(&dword_248146000, v0, v1, "%{public}@ startActiveLocationUpdatesFor=%{public}@");
}

void __57__DBLocationManager_startUpdatingLocationWithIdentifier___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __56__DBLocationManager_stopUpdatingLocationWithIdentifier___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_0(&dword_248146000, v0, v1, "%{public}@ stopActiveLocationUpdatesFor=%{public}@");
}

void __56__DBLocationManager_stopUpdatingLocationWithIdentifier___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __59__DBLocationManager_stopMonitoringForRegionWithIdentifier___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __43__DBLocationManager__queue_currentLocation__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __43__DBLocationManager__queue_currentLocation__block_invoke_102_cold_1()
{
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __49__DBLocationManager__queue_cachedCurrentLocation__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [DBDateFormatter formattedDateTimeStamp:v4];
  v6 = 138543618;
  v7 = v3;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_248146000, a2, OS_LOG_TYPE_DEBUG, "%{public}@ delayed(%{public}@) updated cachedCurrentLocation", &v6, 0x16u);
}

- (void)locationManagerDidChangeAuthorization:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 1026;
  v7 = [a2 authorizationStatus];
  _os_log_debug_impl(&dword_248146000, a3, OS_LOG_TYPE_DEBUG, "%{public}@ status=%{public}d", &v4, 0x12u);
}

@end