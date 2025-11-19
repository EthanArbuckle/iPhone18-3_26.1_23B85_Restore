@interface PPNearbyWatchNotifier
+ (BOOL)isWatchAppRemoved;
+ (id)sharedNotifier;
- (id)discoverForNearbyWatchesWithCompletion:(id)a3;
- (id)discoverForTimeInterval:(double)a3 signalLimit:(int64_t)a4 completion:(id)a5;
- (void)cancelDiscovery;
- (void)didDiscoverDeviceWithAdvertisingID:(id)a3 signalStrength:(int64_t)a4;
- (void)prepareServiceConnectionIfNeeded;
@end

@implementation PPNearbyWatchNotifier

+ (BOOL)isWatchAppRemoved
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.Bridge" allowPlaceholder:0 error:&v9];
  v3 = v9;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v11 = @"com.apple.Bridge";
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_25DF4A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Error while retrieving application record %@ with error %@", buf, 0x16u);
  }

  v4 = [v2 applicationState];
  if ([v4 isInstalled])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [v2 applicationState];
    v5 = [v6 isPlaceholder] ^ 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)sharedNotifier
{
  if (sharedNotifier_onceToken != -1)
  {
    +[PPNearbyWatchNotifier sharedNotifier];
  }

  v3 = sharedNotifier_shareNotifier;

  return v3;
}

uint64_t __39__PPNearbyWatchNotifier_sharedNotifier__block_invoke()
{
  sharedNotifier_shareNotifier = objc_alloc_init(PPNearbyWatchNotifier);

  return MEMORY[0x2821F96F8]();
}

- (id)discoverForNearbyWatchesWithCompletion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__PPNearbyWatchNotifier_discoverForNearbyWatchesWithCompletion___block_invoke;
  v10[3] = &unk_2799FD438;
  v11 = v4;
  v5 = v4;
  v6 = [(PPNearbyWatchNotifier *)self discoverForTimeInterval:-55 signalLimit:v10 completion:30.0];
  if (v6)
  {
    v7 = pbb_shared_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_25DF4A000, v7, OS_LOG_TYPE_DEFAULT, "Failed to begin discovering: %@", buf, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

void __64__PPNearbyWatchNotifier_discoverForNearbyWatchesWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = pbb_shared_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"No Watch Found";
    if (a3)
    {
      v7 = @"Found Watch";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&dword_25DF4A000, v6, OS_LOG_TYPE_DEFAULT, "Finished discoverForNearbyWatches: %@", &v10, 0xCu);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, a3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)discoverForTimeInterval:(double)a3 signalLimit:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  if (+[PPNearbyWatchNotifier shouldScanForNearbyDevices])
  {
    if (self->_timerSource)
    {
      v9 = pbb_shared_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_25DF4A000, v9, OS_LOG_TYPE_DEFAULT, "Can't Discover While Already Discovering!", buf, 2u);
      }
    }

    else
    {
      v10 = +[PPDiscoveryManager sharedDiscoveryManager];
      [v10 setSignalLimitOverride:a4];

      v11 = +[PPDiscoveryManager sharedDiscoveryManager];
      [v11 setDiscoveryDelegate:self];

      v12 = +[PPDiscoveryManager sharedDiscoveryManager];
      [v12 begin];

      if (v8)
      {
        v13 = [v8 copy];
        discoveryCompletion = self->_discoveryCompletion;
        self->_discoveryCompletion = v13;
      }

      v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      timerSource = self->_timerSource;
      self->_timerSource = v15;

      objc_initWeak(buf, self);
      v17 = self->_timerSource;
      v18 = dispatch_time(0, 1000000000 * a3);
      dispatch_source_set_timer(v17, v18, 0xFFFFFFFFFFFFFFFFLL, 100000000 * a3);
      v19 = self->_timerSource;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __72__PPNearbyWatchNotifier_discoverForTimeInterval_signalLimit_completion___block_invoke;
      handler[3] = &unk_2799FD460;
      objc_copyWeak(&v22, buf);
      dispatch_source_set_event_handler(v19, handler);
      dispatch_resume(self->_timerSource);
      objc_destroyWeak(&v22);
      objc_destroyWeak(buf);
    }
  }

  return 0;
}

void __72__PPNearbyWatchNotifier_discoverForTimeInterval_signalLimit_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didStopDiscovering];
}

- (void)cancelDiscovery
{
  v3 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v3 end];

  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
    v5 = self->_timerSource;
    self->_timerSource = 0;
  }

  discoveryCompletion = self->_discoveryCompletion;
  self->_discoveryCompletion = 0;
}

- (void)didDiscoverDeviceWithAdvertisingID:(id)a3 signalStrength:(int64_t)a4
{
  v5 = a3;
  [(PPNearbyWatchNotifier *)self _cleanupDiscoveryDidFindDevice:1 error:0];
  if (+[PPNearbyWatchNotifier shouldScanForNearbyDevices])
  {
    v6 = pbb_shared_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_25DF4A000, v6, OS_LOG_TYPE_DEFAULT, " ", v9, 2u);
    }

    [(PPNearbyWatchNotifier *)self prepareServiceConnectionIfNeeded];
    v7 = [(PPNearbyWatchNotifier *)self notificationService];
    v8 = [v7 remoteObjectProxyWithErrorHandler:&__block_literal_global_13_0];
    [v8 notifyOfNearbyDevice:v5 withReply:&__block_literal_global_17];
  }
}

void __75__PPNearbyWatchNotifier_didDiscoverDeviceWithAdvertisingID_signalStrength___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = pbb_shared_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_25DF4A000, v3, OS_LOG_TYPE_DEFAULT, "Error %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __75__PPNearbyWatchNotifier_didDiscoverDeviceWithAdvertisingID_signalStrength___block_invoke_14(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = pbb_shared_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_25DF4A000, v3, OS_LOG_TYPE_DEFAULT, "PPNotifierService Success %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)prepareServiceConnectionIfNeeded
{
  v3 = pbb_shared_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25DF4A000, v3, OS_LOG_TYPE_DEFAULT, " ", v6, 2u);
  }

  v4 = [(PPNearbyWatchNotifier *)self notificationService];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.Bridge.ppNotifierService"];
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286FC6298];
    [v4 setRemoteObjectInterface:v5];
    [(PPNearbyWatchNotifier *)self setNotificationService:v4];
    [v4 resume];
  }
}

@end