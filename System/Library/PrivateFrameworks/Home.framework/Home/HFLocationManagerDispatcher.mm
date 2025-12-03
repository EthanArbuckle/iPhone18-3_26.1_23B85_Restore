@interface HFLocationManagerDispatcher
+ (HFLocationManagerDispatcher)sharedDispatcher;
- (HFLocationManagerDispatcher)init;
- (NAFuture)authorizationStatusFuture;
- (id)getAuthorizationStatusAsync;
- (int)authorizationStatus;
- (void)_updateCachedAuthorizationStatus:(int)status;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)dispatchLocationManagerObserverMessage:(SEL)message withBlock:(id)block sender:(id)sender;
- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region;
- (void)locationManager:(id)manager didEnterRegion:(id)region;
- (void)locationManager:(id)manager didExitRegion:(id)region;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didFinishDeferredUpdatesWithError:(id)error;
- (void)locationManager:(id)manager didRangeBeacons:(id)beacons inRegion:(id)region;
- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region;
- (void)locationManager:(id)manager didUpdateHeading:(id)heading;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error;
- (void)locationManager:(id)manager rangingBeaconsDidFailForRegion:(id)region withError:(id)error;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)locationManagerDidPauseLocationUpdates:(id)updates;
- (void)locationManagerDidResumeLocationUpdates:(id)updates;
- (void)removeObserver:(id)observer;
- (void)triggerLocationFetch;
@end

@implementation HFLocationManagerDispatcher

+ (HFLocationManagerDispatcher)sharedDispatcher
{
  if (_MergedGlobals_217 != -1)
  {
    dispatch_once(&_MergedGlobals_217, &__block_literal_global_4);
  }

  v3 = qword_280E02BA8;

  return v3;
}

void __47__HFLocationManagerDispatcher_sharedDispatcher__block_invoke_2()
{
  v0 = objc_alloc_init(HFLocationManagerDispatcher);
  v1 = qword_280E02BA8;
  qword_280E02BA8 = v0;
}

- (HFLocationManagerDispatcher)init
{
  v24 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HFLocationManagerDispatcher;
  v2 = [(HFLocationManagerDispatcher *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFF8000, 0);
    v4 = dispatch_queue_create("com.apple.Home.LocationDispatcher", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_opt_new();
    pendingAuthorizationStatusFutures = v2->_pendingAuthorizationStatusFutures;
    v2->_pendingAuthorizationStatusFutures = v6;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    locationObservers = v2->_locationObservers;
    v2->_locationObservers = weakObjectsHashTable;

    v10 = HFLogForCategory(0x2DuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      locationManager = v2->_locationManager;
      *buf = 138412546;
      v21 = v2;
      v22 = 2112;
      v23 = locationManager;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "Initialized location manager dispatcher: %@ with manager: %@", buf, 0x16u);
    }

    v12 = HFLogForCategory(0x2DuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v2->_locationObservers;
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Initializing location observers: %@", buf, 0xCu);
    }

    queue = [(HFLocationManagerDispatcher *)v2 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__HFLocationManagerDispatcher_init__block_invoke;
    block[3] = &unk_277DF3D38;
    v18 = v2;
    dispatch_async(queue, block);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2;
}

void __35__HFLocationManagerDispatcher_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBFC10]);
  v3 = HFPlatformSpecificHomeAppBundleID();
  v4 = *(a1 + 32);
  v5 = [v4 queue];
  v6 = [v2 initWithEffectiveBundleIdentifier:v3 delegate:v4 onQueue:v5];
  [*(a1 + 32) setLocationManager:v6];

  v7 = *(a1 + 32);
  v8 = [v7 locationManager];
  [v7 _updateCachedAuthorizationStatus:{objc_msgSend(v8, "authorizationStatus")}];
}

- (void)dealloc
{
  locationManager = [(HFLocationManagerDispatcher *)self locationManager];
  if (locationManager)
  {
    v4 = dispatch_time(0, 1000000000);
    queue = [(HFLocationManagerDispatcher *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__HFLocationManagerDispatcher_dealloc__block_invoke;
    block[3] = &unk_277DF3D38;
    v8 = locationManager;
    dispatch_after(v4, queue, block);
  }

  v6.receiver = self;
  v6.super_class = HFLocationManagerDispatcher;
  [(HFLocationManagerDispatcher *)&v6 dealloc];
}

- (NAFuture)authorizationStatusFuture
{
  hasInitializedAuthorizationStatus = [(HFLocationManagerDispatcher *)self hasInitializedAuthorizationStatus];
  v4 = MEMORY[0x277D2C900];
  if (hasInitializedAuthorizationStatus)
  {
    pendingAuthorizationStatusFutures = [MEMORY[0x277CCABB0] numberWithInt:{-[HFLocationManagerDispatcher cachedAuthorizationStatus](self, "cachedAuthorizationStatus")}];
    v6 = [v4 futureWithResult:pendingAuthorizationStatusFutures];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D2C900]);
    pendingAuthorizationStatusFutures = [(HFLocationManagerDispatcher *)self pendingAuthorizationStatusFutures];
    [pendingAuthorizationStatusFutures addObject:v6];
  }

  return v6;
}

- (int)authorizationStatus
{
  LODWORD(v3) = [(HFLocationManagerDispatcher *)self cachedAuthorizationStatus];
  if (![(HFLocationManagerDispatcher *)self hasInitializedAuthorizationStatus])
  {
    v4 = MEMORY[0x277CBFC10];
    v5 = HFPlatformSpecificHomeAppBundleID();
    v3 = [v4 authorizationStatusForBundleIdentifier:v5];

    [(HFLocationManagerDispatcher *)self _updateCachedAuthorizationStatus:v3];
  }

  return v3;
}

- (id)getAuthorizationStatusAsync
{
  v2 = MEMORY[0x277D2C900];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HFLocationManagerDispatcher_getAuthorizationStatusAsync__block_invoke;
  v6[3] = &unk_277DF29A0;
  v6[4] = self;
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v4 = [v2 futureWithBlock:v6 scheduler:globalAsyncScheduler];

  return v4;
}

void __58__HFLocationManagerDispatcher_getAuthorizationStatusAsync__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithInt:{objc_msgSend(v3, "authorizationStatus")}];
  [v4 finishWithResult:v5];
}

- (void)_updateCachedAuthorizationStatus:(int)status
{
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__HFLocationManagerDispatcher__updateCachedAuthorizationStatus___block_invoke;
  v6[3] = &unk_277DF4438;
  statusCopy = status;
  v6[4] = self;
  [mainThreadScheduler performBlock:v6];
}

void __64__HFLocationManagerDispatcher__updateCachedAuthorizationStatus___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = "unavailable";
    if ((v3 - 3) < 2)
    {
      v4 = "available";
    }

    *buf = 67109378;
    v11 = v3;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Updating location services authorization status to %d (%s)", buf, 0x12u);
  }

  [*(a1 + 32) setHasInitializedAuthorizationStatus:1];
  [*(a1 + 32) setCachedAuthorizationStatus:*(a1 + 40)];
  v5 = [*(a1 + 32) pendingAuthorizationStatusFutures];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HFLocationManagerDispatcher__updateCachedAuthorizationStatus___block_invoke_17;
  v8[3] = &__block_descriptor_36_e18_v16__0__NAFuture_8l;
  v9 = *(a1 + 40);
  [v5 na_each:v8];

  v6 = [*(a1 + 32) pendingAuthorizationStatusFutures];
  [v6 removeAllObjects];

  v7 = *MEMORY[0x277D85DE8];
}

void __64__HFLocationManagerDispatcher__updateCachedAuthorizationStatus___block_invoke_17(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithInt:v3];
  [v4 finishWithResult:v5];
}

- (void)triggerLocationFetch
{
  objc_initWeak(&location, self);
  queue = [(HFLocationManagerDispatcher *)self queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__HFLocationManagerDispatcher_triggerLocationFetch__block_invoke;
  v4[3] = &unk_277DF4460;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __51__HFLocationManagerDispatcher_triggerLocationFetch__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained locationManager];
  v2 = [v1 locationServicesEnabled];

  if (v2)
  {
    v3 = [WeakRetained locationManager];
    [v3 requestLocation];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  locationObservers = [(HFLocationManagerDispatcher *)self locationObservers];
  [locationObservers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  locationObservers = [(HFLocationManagerDispatcher *)self locationObservers];
  [locationObservers removeObject:observerCopy];
}

- (void)dispatchLocationManagerObserverMessage:(SEL)message withBlock:(id)block sender:(id)sender
{
  v21 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  senderCopy = sender;
  v10 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    locationObservers = [(HFLocationManagerDispatcher *)self locationObservers];
    *buf = 138412290;
    v20 = locationObservers;
    _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "all observers:%@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__HFLocationManagerDispatcher_dispatchLocationManagerObserverMessage_withBlock_sender___block_invoke;
  v15[3] = &unk_277DF4488;
  v15[4] = self;
  v16 = senderCopy;
  v17 = blockCopy;
  messageCopy = message;
  v12 = blockCopy;
  v13 = senderCopy;
  dispatch_async(MEMORY[0x277D85CD0], v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __87__HFLocationManagerDispatcher_dispatchLocationManagerObserverMessage_withBlock_sender___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) locationObservers];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = HFLogForCategory(0x2DuLL);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v8;
          _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "observer:%@", buf, 0xCu);
        }

        if (v8 != *(a1 + 40))
        {
          v10 = *(a1 + 56);
          if (objc_opt_respondsToSelector())
          {
            v11 = HFLogForCategory(0x2DuLL);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v18 = v8;
              _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "observer responds to selector:%@", buf, 0xCu);
            }

            (*(*(a1 + 48) + 16))();
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__HFLocationManagerDispatcher_locationManager_didUpdateLocations___block_invoke;
  v11[3] = &unk_277DF44B0;
  v12 = managerCopy;
  v13 = locationsCopy;
  v9 = locationsCopy;
  v10 = managerCopy;
  [(HFLocationManagerDispatcher *)self dispatchLocationManagerObserverMessage:a2 withBlock:v11 sender:0];
}

- (void)locationManager:(id)manager didUpdateHeading:(id)heading
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  headingCopy = heading;
  v9 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = headingCopy;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "didUpdateHeading: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HFLocationManagerDispatcher_locationManager_didUpdateHeading___block_invoke;
  v13[3] = &unk_277DF44B0;
  v14 = managerCopy;
  v15 = headingCopy;
  v10 = headingCopy;
  v11 = managerCopy;
  [(HFLocationManagerDispatcher *)self dispatchLocationManagerObserverMessage:a2 withBlock:v13 sender:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didDetermineState:(int64_t)state forRegion:(id)region
{
  v23 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  v11 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    stateCopy = state;
    v21 = 2112;
    v22 = regionCopy;
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "didDetermineState: %d forRegion: %@", buf, 0x12u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__HFLocationManagerDispatcher_locationManager_didDetermineState_forRegion___block_invoke;
  v15[3] = &unk_277DF44D8;
  v17 = regionCopy;
  stateCopy2 = state;
  v16 = managerCopy;
  v12 = regionCopy;
  v13 = managerCopy;
  [(HFLocationManagerDispatcher *)self dispatchLocationManagerObserverMessage:a2 withBlock:v15 sender:0];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didRangeBeacons:(id)beacons inRegion:(id)region
{
  v25 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  beaconsCopy = beacons;
  regionCopy = region;
  v12 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = beaconsCopy;
    v23 = 2112;
    v24 = regionCopy;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "didRangeBeacons: %@ inRegion: %@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__HFLocationManagerDispatcher_locationManager_didRangeBeacons_inRegion___block_invoke;
  v17[3] = &unk_277DF4500;
  v18 = managerCopy;
  v19 = beaconsCopy;
  v20 = regionCopy;
  v13 = regionCopy;
  v14 = beaconsCopy;
  v15 = managerCopy;
  [(HFLocationManagerDispatcher *)self dispatchLocationManagerObserverMessage:a2 withBlock:v17 sender:0];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager rangingBeaconsDidFailForRegion:(id)region withError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  errorCopy = error;
  v12 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = regionCopy;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "rangingBeaconsDidFailForRegion: %@ withError: %@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__HFLocationManagerDispatcher_locationManager_rangingBeaconsDidFailForRegion_withError___block_invoke;
  v17[3] = &unk_277DF4500;
  v18 = managerCopy;
  v19 = regionCopy;
  v20 = errorCopy;
  v13 = errorCopy;
  v14 = regionCopy;
  v15 = managerCopy;
  [(HFLocationManagerDispatcher *)self dispatchLocationManagerObserverMessage:a2 withBlock:v17 sender:0];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didEnterRegion:(id)region
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  v9 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = regionCopy;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "didEnterRegion: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__HFLocationManagerDispatcher_locationManager_didEnterRegion___block_invoke;
  v13[3] = &unk_277DF44B0;
  v14 = managerCopy;
  v15 = regionCopy;
  v10 = regionCopy;
  v11 = managerCopy;
  [(HFLocationManagerDispatcher *)self dispatchLocationManagerObserverMessage:a2 withBlock:v13 sender:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didExitRegion:(id)region
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  v9 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = regionCopy;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "didExitRegion: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HFLocationManagerDispatcher_locationManager_didExitRegion___block_invoke;
  v13[3] = &unk_277DF44B0;
  v14 = managerCopy;
  v15 = regionCopy;
  v10 = regionCopy;
  v11 = managerCopy;
  [(HFLocationManagerDispatcher *)self dispatchLocationManagerObserverMessage:a2 withBlock:v13 sender:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  v9 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = errorCopy;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "didFailWithError: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__HFLocationManagerDispatcher_locationManager_didFailWithError___block_invoke;
  v13[3] = &unk_277DF44B0;
  v14 = managerCopy;
  v15 = errorCopy;
  v10 = errorCopy;
  v11 = managerCopy;
  [(HFLocationManagerDispatcher *)self dispatchLocationManagerObserverMessage:a2 withBlock:v13 sender:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager monitoringDidFailForRegion:(id)region withError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  errorCopy = error;
  v12 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = regionCopy;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "monitoringDidFailForRegion: %@ withError: %@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__HFLocationManagerDispatcher_locationManager_monitoringDidFailForRegion_withError___block_invoke;
  v17[3] = &unk_277DF4500;
  v18 = managerCopy;
  v19 = regionCopy;
  v20 = errorCopy;
  v13 = errorCopy;
  v14 = regionCopy;
  v15 = managerCopy;
  [(HFLocationManagerDispatcher *)self dispatchLocationManagerObserverMessage:a2 withBlock:v17 sender:0];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v15 = *MEMORY[0x277D85DE8];
  authorizationCopy = authorization;
  if (+[HFUtilities isAMac](HFUtilities, "isAMac") || +[HFUtilities isAVisionPro])
  {
    -[HFLocationManagerDispatcher _updateMacAuthorizationStatus:](self, "_updateMacAuthorizationStatus:", [authorizationCopy authorizationStatus]);
  }

  v6 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = authorizationCopy;
    v13 = 1024;
    authorizationStatus = [authorizationCopy authorizationStatus];
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "locationManagerDidChangeAuthorization: %@ status: %d", buf, 0x12u);
  }

  -[HFLocationManagerDispatcher _updateCachedAuthorizationStatus:](self, "_updateCachedAuthorizationStatus:", [authorizationCopy authorizationStatus]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__HFLocationManagerDispatcher_locationManagerDidChangeAuthorization___block_invoke;
  v9[3] = &unk_277DF4528;
  v10 = authorizationCopy;
  v7 = authorizationCopy;
  [(HFLocationManagerDispatcher *)self dispatchLocationManagerObserverMessage:a2 withBlock:v9 sender:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)locationManager:(id)manager didStartMonitoringForRegion:(id)region
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  regionCopy = region;
  v9 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = regionCopy;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "didStartMonitoringForRegion: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__HFLocationManagerDispatcher_locationManager_didStartMonitoringForRegion___block_invoke;
  v13[3] = &unk_277DF44B0;
  v14 = managerCopy;
  v15 = regionCopy;
  v10 = regionCopy;
  v11 = managerCopy;
  [(HFLocationManagerDispatcher *)self dispatchLocationManagerObserverMessage:a2 withBlock:v13 sender:0];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)locationManagerDidPauseLocationUpdates:(id)updates
{
  updatesCopy = updates;
  v6 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "DidPauseLocationUpdates", buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HFLocationManagerDispatcher_locationManagerDidPauseLocationUpdates___block_invoke;
  v8[3] = &unk_277DF4528;
  v9 = updatesCopy;
  v7 = updatesCopy;
  [(HFLocationManagerDispatcher *)self dispatchLocationManagerObserverMessage:a2 withBlock:v8 sender:0];
}

- (void)locationManagerDidResumeLocationUpdates:(id)updates
{
  updatesCopy = updates;
  v6 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "DidResumeLocationUpdates", buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__HFLocationManagerDispatcher_locationManagerDidResumeLocationUpdates___block_invoke;
  v8[3] = &unk_277DF4528;
  v9 = updatesCopy;
  v7 = updatesCopy;
  [(HFLocationManagerDispatcher *)self dispatchLocationManagerObserverMessage:a2 withBlock:v8 sender:0];
}

- (void)locationManager:(id)manager didFinishDeferredUpdatesWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  v9 = HFLogForCategory(0x2DuLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = errorCopy;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "didFinishDeferredUpdatesWithError: %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HFLocationManagerDispatcher_locationManager_didFinishDeferredUpdatesWithError___block_invoke;
  v13[3] = &unk_277DF44B0;
  v14 = managerCopy;
  v15 = errorCopy;
  v10 = errorCopy;
  v11 = managerCopy;
  [(HFLocationManagerDispatcher *)self dispatchLocationManagerObserverMessage:a2 withBlock:v13 sender:0];

  v12 = *MEMORY[0x277D85DE8];
}

@end