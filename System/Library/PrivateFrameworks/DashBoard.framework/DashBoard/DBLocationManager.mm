@interface DBLocationManager
+ (id)homeKitLocationManager;
- (BOOL)authorized;
- (CLLocation)cachedCurrentLocation;
- (CLLocation)currentLocation;
- (DBLocationManager)initWithBundleIdentifier:(id)identifier;
- (DBLocationManager)initWithBundlePath:(id)path;
- (DBLocationManager)initWithLocationManager:(id)manager locationQueue:(id)queue;
- (NSString)description;
- (id)_name;
- (id)_queue_cachedCurrentLocation;
- (id)_queue_currentLocation;
- (void)_authorizeIfNeeded;
- (void)_commonInit;
- (void)_commonPostInit;
- (void)_queue_didEnterRegionWithIdentifier:(id)identifier;
- (void)_queue_didExitRegionWithIDentifier:(id)dentifier;
- (void)_queue_startUpdatingLocationNow;
- (void)_queue_stopUpdatingLocationNow;
- (void)_queue_updateCurrentLocation:(id)location;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)removeObserver:(id)observer;
- (void)startMonitoringForRegionWithIdentifier:(id)identifier locationCoordinate:(CLLocationCoordinate2D)coordinate range:(double)range;
- (void)startUpdatingLocationWithIdentifier:(id)identifier;
- (void)stopMonitoringForRegionWithIdentifier:(id)identifier;
- (void)stopUpdatingLocationWithIdentifier:(id)identifier;
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
  locationQueue = [(DBLocationManager *)self locationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__DBLocationManager_currentLocation__block_invoke;
  v6[3] = &unk_278F02AA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(locationQueue, v6);

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

- (DBLocationManager)initWithLocationManager:(id)manager locationQueue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = DBLocationManager;
  v9 = [(DBLocationManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locationQueue, queue);
    [(DBLocationManager *)v10 _commonInit];
    objc_storeStrong(&v10->_locationManager, manager);
    [(DBLocationManager *)v10 _commonPostInit];
    v11 = v10;
  }

  return v10;
}

- (DBLocationManager)initWithBundlePath:(id)path
{
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = DBLocationManager;
  v6 = [(DBLocationManager *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundlePath, path);
    v8 = MEMORY[0x24C1CC8A0]([(DBLocationManager *)v7 _commonInit]);
    v9 = [v8 stringByAppendingPathComponent:pathCopy];

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

- (DBLocationManager)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = DBLocationManager;
  v6 = [(DBLocationManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
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
  locationManager = [(DBLocationManager *)self locationManager];
  monitoredRegions = [locationManager monitoredRegions];

  v6 = [monitoredRegions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(monitoredRegions);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        locationManager2 = [(DBLocationManager *)self locationManager];
        [locationManager2 stopMonitoringForRegion:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [monitoredRegions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  locationManager3 = [(DBLocationManager *)self locationManager];
  [locationManager3 stopUpdatingLocation];

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
  activeAssertions = [(DBLocationManager *)self activeAssertions];
  v5 = [activeAssertions countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(activeAssertions);
        }

        v9 = [*(*(&v22 + 1) + 8 * i) description];
        [v3 addObject:v9];
      }

      v6 = [activeAssertions countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v21 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  _name = [(DBLocationManager *)self _name];
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

  monitoringRegions = [(DBLocationManager *)self monitoringRegions];
  allKeys = [monitoringRegions allKeys];
  v17 = [allKeys componentsJoinedByString:{@", "}];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v21 stringWithFormat:@"<%@: %p %@ authorized=%@ active=%@ regions=[%@] assertions=[%@]>", v11, self, _name, v13, v14, v17, v18];

  return v19;
}

- (BOOL)authorized
{
  bundleIdentifier = [(DBLocationManager *)self bundleIdentifier];

  if (bundleIdentifier)
  {
    v4 = MEMORY[0x277CBFC10];
    bundleIdentifier2 = [(DBLocationManager *)self bundleIdentifier];
    authorizationStatus = [v4 authorizationStatusForBundleIdentifier:bundleIdentifier2];
  }

  else
  {
    bundlePath = [(DBLocationManager *)self bundlePath];

    if (bundlePath)
    {
      v8 = MEMORY[0x277CBFC10];
      bundleIdentifier2 = [(DBLocationManager *)self bundle];
      authorizationStatus = [v8 authorizationStatusForBundle:bundleIdentifier2];
    }

    else
    {
      bundleIdentifier2 = [(DBLocationManager *)self locationManager];
      authorizationStatus = [bundleIdentifier2 authorizationStatus];
    }
  }

  v9 = authorizationStatus;

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
  locationQueue = [(DBLocationManager *)self locationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__DBLocationManager_cachedCurrentLocation__block_invoke;
  v6[3] = &unk_278F02AA8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(locationQueue, v6);

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

- (void)startUpdatingLocationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  locationQueue = [(DBLocationManager *)self locationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__DBLocationManager_startUpdatingLocationWithIdentifier___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(locationQueue, v7);
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

- (void)stopUpdatingLocationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  locationQueue = [(DBLocationManager *)self locationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__DBLocationManager_stopUpdatingLocationWithIdentifier___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(locationQueue, v7);
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

- (void)startMonitoringForRegionWithIdentifier:(id)identifier locationCoordinate:(CLLocationCoordinate2D)coordinate range:(double)range
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  identifierCopy = identifier;
  [(DBLocationManager *)self _authorizeIfNeeded];
  locationQueue = [(DBLocationManager *)self locationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__DBLocationManager_startMonitoringForRegionWithIdentifier_locationCoordinate_range___block_invoke;
  block[3] = &unk_278F037A0;
  v14 = latitude;
  v15 = longitude;
  block[4] = self;
  v13 = identifierCopy;
  rangeCopy = range;
  v11 = identifierCopy;
  dispatch_async(locationQueue, block);
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

- (void)stopMonitoringForRegionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  locationQueue = [(DBLocationManager *)self locationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__DBLocationManager_stopMonitoringForRegionWithIdentifier___block_invoke;
  v7[3] = &unk_278F014B8;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(locationQueue, v7);
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBLocationManager *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBLocationManager *)self observers];
  [observers unregisterObserver:observerCopy];
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
  locationManager = [(DBLocationManager *)self locationManager];
  [locationManager setDelegate:self];

  v4 = *MEMORY[0x277CE4210];
  locationManager2 = [(DBLocationManager *)self locationManager];
  [locationManager2 setDistanceFilter:v4];

  locationManager3 = [(DBLocationManager *)self locationManager];
  [locationManager3 setDesiredAccuracy:v4];

  [(DBLocationManager *)self _authorizeIfNeeded];
}

- (void)_authorizeIfNeeded
{
  locationQueue = [(DBLocationManager *)self locationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__DBLocationManager__authorizeIfNeeded__block_invoke;
  block[3] = &unk_278F01580;
  block[4] = self;
  dispatch_async(locationQueue, block);
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
  locationQueue = [(DBLocationManager *)self locationQueue];
  dispatch_assert_queue_V2(locationQueue);

  [(DBLocationManager *)self setLocationActive:1];
  locationManager = [(DBLocationManager *)self locationManager];
  [locationManager startUpdatingLocation];

  locationManager2 = [(DBLocationManager *)self locationManager];
  location = [locationManager2 location];
  v8 = [location copy];

  v7 = v8;
  if (v8)
  {
    [(DBLocationManager *)self _queue_updateCurrentLocation:v8];
    v7 = v8;
  }
}

- (void)_queue_stopUpdatingLocationNow
{
  locationQueue = [(DBLocationManager *)self locationQueue];
  dispatch_assert_queue_V2(locationQueue);

  locationManager = [(DBLocationManager *)self locationManager];
  [locationManager stopUpdatingLocation];

  currentLocation = self->_currentLocation;
  self->_currentLocation = 0;

  [(DBLocationManager *)self setLocationActive:0];
}

- (void)_queue_updateCurrentLocation:(id)location
{
  locationCopy = location;
  locationQueue = [(DBLocationManager *)self locationQueue];
  dispatch_assert_queue_V2(locationQueue);

  if (!locationCopy || self->_currentLocation)
  {
    lastPostedLocation = [(DBLocationManager *)self lastPostedLocation];
    [lastPostedLocation distanceFromLocation:locationCopy];
    v8 = v7;

    objc_storeStrong(&self->_currentLocation, location);
    objc_storeStrong(&self->_cachedCurrentLocation, location);
    if (v8 <= 10.0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    objc_storeStrong(&self->_currentLocation, location);
    objc_storeStrong(&self->_cachedCurrentLocation, location);
  }

  [(DBLocationManager *)self setLastPostedLocation:locationCopy];
  observers = [(DBLocationManager *)self observers];
  [observers locationManager:self didUpdateLocation:locationCopy];

LABEL_6:
}

- (id)_queue_currentLocation
{
  locationQueue = [(DBLocationManager *)self locationQueue];
  dispatch_assert_queue_V2(locationQueue);

  if (self->_currentLocation)
  {
    if ([(DBLocationManager *)self cacheUsedCount])
    {
      cacheUsedCount = [(DBLocationManager *)self cacheUsedCount];
      v5 = [MEMORY[0x277CBEAA8] now];
      v6 = [DBDateFormatter formattedDateTimeStamp:v5];

      v7 = dispatch_get_global_queue(17, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__DBLocationManager__queue_currentLocation__block_invoke;
      block[3] = &unk_278F01820;
      block[4] = self;
      v21 = v6;
      v22 = cacheUsedCount;
      v8 = v6;
      dispatch_async(v7, block);

      [(DBLocationManager *)self setCacheUsedCount:0];
    }

    _queue_cachedCurrentLocation = self->_currentLocation;
  }

  else
  {
    _queue_cachedCurrentLocation = [(DBLocationManager *)self _queue_cachedCurrentLocation];
    cacheUsedCount2 = [(DBLocationManager *)self cacheUsedCount];
    [(DBLocationManager *)self setCacheUsedCount:cacheUsedCount2 + 1];
    if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * cacheUsedCount2, 2) <= 0xCCCCCCCCCCCCCCCuLL)
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

  return _queue_cachedCurrentLocation;
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
  locationQueue = [(DBLocationManager *)self locationQueue];
  dispatch_assert_queue_V2(locationQueue);

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

    locationManager = [(DBLocationManager *)self locationManager];
    location = [locationManager location];
    v14 = [location copy];
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

- (void)_queue_didEnterRegionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  locationQueue = [(DBLocationManager *)self locationQueue];
  dispatch_assert_queue_V2(locationQueue);

  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DBLocationManager _queue_didEnterRegionWithIdentifier:];
  }

  observers = [(DBLocationManager *)self observers];
  [observers locationManager:self didEnterRegionIdentifier:identifierCopy];

  observers2 = [(DBLocationManager *)self observers];
  _queue_currentLocation = [(DBLocationManager *)self _queue_currentLocation];
  [observers2 locationManager:self didUpdateLocation:_queue_currentLocation];
}

- (void)_queue_didExitRegionWithIDentifier:(id)dentifier
{
  dentifierCopy = dentifier;
  locationQueue = [(DBLocationManager *)self locationQueue];
  dispatch_assert_queue_V2(locationQueue);

  v6 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [DBLocationManager _queue_didEnterRegionWithIdentifier:];
  }

  observers = [(DBLocationManager *)self observers];
  [observers locationManager:self didExitRegionIdentifier:dentifierCopy];

  observers2 = [(DBLocationManager *)self observers];
  _queue_currentLocation = [(DBLocationManager *)self _queue_currentLocation];
  [observers2 locationManager:self didUpdateLocation:_queue_currentLocation];
}

- (id)_name
{
  bundlePath = [(DBLocationManager *)self bundlePath];
  v4 = [bundlePath isEqualToString:@"/System/Library/LocationBundles/CarPlayHomeLocation.bundle"];

  if (v4)
  {
    bundlePath3 = @"HomeKit";
  }

  else
  {
    bundlePath2 = [(DBLocationManager *)self bundlePath];

    if (bundlePath2)
    {
      bundlePath3 = [(DBLocationManager *)self bundlePath];
    }

    else
    {
      bundleIdentifier = [(DBLocationManager *)self bundleIdentifier];

      if (bundleIdentifier)
      {
        bundlePath3 = [(DBLocationManager *)self bundleIdentifier];
      }

      else
      {
        bundlePath3 = @"Unnamed";
      }
    }
  }

  return bundlePath3;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(DBLocationManager *)self locationManagerDidChangeAuthorization:authorizationCopy, v5];
  }

  [(DBLocationManager *)self _authorizeIfNeeded];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  location = [manager location];
  v5 = [location copy];
  [(DBLocationManager *)self _queue_updateCurrentLocation:v5];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  v5 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [DBLocationManager locationManager:didFailWithError:];
  }
}

- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region
{
  v17 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  v8 = DBLogForCategory(9uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    identifier = [regionCopy identifier];
    v11 = 138543874;
    selfCopy = self;
    v13 = 2050;
    stateCopy = state;
    v15 = 2114;
    v16 = identifier;
    _os_log_debug_impl(&dword_248146000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ state=%{public}ld region=%{public}@", &v11, 0x20u);
  }

  if (state == 2)
  {
    identifier2 = [regionCopy identifier];
    [(DBLocationManager *)self _queue_didExitRegionWithIDentifier:identifier2];
    goto LABEL_7;
  }

  if (state == 1)
  {
    identifier2 = [regionCopy identifier];
    [(DBLocationManager *)self _queue_didEnterRegionWithIdentifier:identifier2];
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