@interface CMContinuityCaptureBatteryStateMonitor
+ (id)sharedInstance;
+ (int64_t)resolveBatteryState:(BOOL)a3 isBatteryChargingThermallyLimited:(BOOL)a4 batteryCapacity:(id)a5;
+ (void)invalidate;
- (BOOL)invalidated;
- (BOOL)setupNotification;
- (CMContinuityCaptureBatteryStateMonitor)initWithQueue:(id)a3;
- (void)handleBatteryInfoChanged;
- (void)invalidate;
- (void)setInvalidated:(BOOL)a3;
- (void)setupNotification;
@end

@implementation CMContinuityCaptureBatteryStateMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_7 != -1)
  {
    +[CMContinuityCaptureBatteryStateMonitor sharedInstance];
  }

  v3 = _batteryStateMonitor;

  return v3;
}

void __56__CMContinuityCaptureBatteryStateMonitor_sharedInstance__block_invoke()
{
  v0 = [CMContinuityCaptureBatteryStateMonitor alloc];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.continuitycapture.batterymonitor", v4);
  v2 = [(CMContinuityCaptureBatteryStateMonitor *)v0 initWithQueue:v1];
  v3 = _batteryStateMonitor;
  _batteryStateMonitor = v2;
}

- (BOOL)invalidated
{
  v2 = self;
  objc_sync_enter(v2);
  invalidated = v2->_invalidated;
  objc_sync_exit(v2);

  return invalidated;
}

- (void)setInvalidated:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_invalidated = a3;
  objc_sync_exit(obj);
}

+ (void)invalidate
{
  if (([_batteryStateMonitor invalidated] & 1) == 0)
  {
    [_batteryStateMonitor invalidate];
    v2 = _batteryStateMonitor;

    [v2 setInvalidated:1];
  }
}

- (void)invalidate
{
  ioNotificationPort = self->_ioNotificationPort;
  if (ioNotificationPort)
  {
    IONotificationPortDestroy(ioNotificationPort);
    self->_ioNotificationPort = 0;
  }

  serviceNotification = self->_serviceNotification;
  if (serviceNotification)
  {
    IOObjectRelease(serviceNotification);
    self->_serviceNotification = 0;
  }
}

+ (int64_t)resolveBatteryState:(BOOL)a3 isBatteryChargingThermallyLimited:(BOOL)a4 batteryCapacity:(id)a5
{
  v5 = a4;
  v6 = a3;
  v7 = a5;
  v8 = v7;
  if (v6)
  {
    if ([v7 intValue] > 74 || v5)
    {
      if ([v8 intValue] <= 74 && v5)
      {
        v9 = 4;
      }

      else
      {
        v9 = 4 * ([v8 intValue] > 74);
      }
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)setupNotification
{
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__CMContinuityCaptureBatteryStateMonitor_setupNotification__block_invoke;
  v18[3] = &unk_278D5C080;
  objc_copyWeak(&v19, &location);
  v3 = MEMORY[0x245D12020](v18);
  v4 = *MEMORY[0x277CD2898];
  v5 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  self->_ioNotificationPort = v5;
  if (!v5)
  {
    v13 = CMContinuityCaptureLog(2);
    [(CMContinuityCaptureBatteryStateMonitor *)v13 setupNotification];
LABEL_9:

    v11 = 0;
    goto LABEL_6;
  }

  v6 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(v4, v6);
  if (!MatchingService)
  {
    v14 = CMContinuityCaptureLog(2);
    [(CMContinuityCaptureBatteryStateMonitor *)v14 setupNotification];
    goto LABEL_9;
  }

  ioNotificationPort = self->_ioNotificationPort;
  v9 = objc_loadWeakRetained(&location);
  v10 = IOServiceAddInterestNotification(ioNotificationPort, MatchingService, "IOGeneralInterest", handleBatteryInfoChanged, v9, &self->_serviceNotification);

  v11 = v10 == 0;
  if (v10)
  {
    v15 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithInt:v10];
      [(CMContinuityCaptureBatteryStateMonitor *)v16 setupNotification];
    }
  }

  else
  {
    IONotificationPortSetDispatchQueue(self->_ioNotificationPort, self->_queue);
    dispatch_assert_queue_not_V2(self->_queue);
    dispatch_async_and_wait(self->_queue, v3);
  }

  IOObjectRelease(MatchingService);
LABEL_6:

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  return v11;
}

void __59__CMContinuityCaptureBatteryStateMonitor_setupNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained handleBatteryInfoChanged];
    WeakRetained = v2;
  }
}

- (CMContinuityCaptureBatteryStateMonitor)initWithQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CMContinuityCaptureBatteryStateMonitor;
  v6 = [(CMContinuityCaptureBatteryStateMonitor *)&v13 init];
  v7 = v6;
  if (!v6)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_queue, a3);
  batteryLevel = v7->_batteryLevel;
  v7->_batteryLevel = &unk_2854ECD08;

  v7->_batteryState = 0;
  if (![(CMContinuityCaptureBatteryStateMonitor *)v7 setupNotification])
  {
    v11 = CMContinuityCaptureLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 0;
      _os_log_error_impl(&dword_242545000, v11, OS_LOG_TYPE_ERROR, "Unable to setup battery state monitor", v12, 2u);
    }

    goto LABEL_8;
  }

  v9 = v7;
LABEL_4:

  return v9;
}

- (void)handleBatteryInfoChanged
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = *MEMORY[0x277CD2898];
  v4 = IOServiceMatching("IOPMPowerSource");
  MatchingService = IOServiceGetMatchingService(v3, v4);
  if (MatchingService)
  {
    v6 = MatchingService;
    v7 = *MEMORY[0x277CBECE8];
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"CurrentCapacity", *MEMORY[0x277CBECE8], 0);
    v9 = IORegistryEntryCreateCFProperty(v6, @"ExternalConnected", v7, 0);
    v10 = IORegistryEntryCreateCFProperty(v6, @"ChargerData", v7, 0);
    v11 = [v10 objectForKeyedSubscript:@"TimeChargingThermallyLimited"];
    if ([v11 intValue] < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = [v9 BOOLValue];
    }

    if (CMContinityCaptureDebugLogEnabled())
    {
      v13 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v19 = 138413058;
        v20 = self;
        v21 = 2112;
        v22 = CFProperty;
        v23 = 2112;
        v24 = v9;
        v25 = 2112;
        v26 = v10;
        _os_log_debug_impl(&dword_242545000, v13, OS_LOG_TYPE_DEBUG, "%@ currentBatteryCapacity %@ externalACConnected %@ chargerDataDict %@", &v19, 0x2Au);
      }
    }

    v14 = +[CMContinuityCaptureBatteryStateMonitor resolveBatteryState:isBatteryChargingThermallyLimited:batteryCapacity:](CMContinuityCaptureBatteryStateMonitor, "resolveBatteryState:isBatteryChargingThermallyLimited:batteryCapacity:", [v9 BOOLValue], v12, CFProperty);
    v15 = MEMORY[0x277CCABB0];
    [CFProperty floatValue];
    *&v17 = v16 / 100.0;
    v18 = [v15 numberWithFloat:v17];
    if (self->_batteryState != v14)
    {
      [OUTLINED_FUNCTION_0_7() willChangeValueForKey:?];
      self->_batteryState = v14;
      [OUTLINED_FUNCTION_0_7() didChangeValueForKey:?];
    }

    if (![(NSNumber *)self->_batteryLevel isEqualToNumber:v18])
    {
      [OUTLINED_FUNCTION_0_7() willChangeValueForKey:?];
      objc_storeStrong(&self->_batteryLevel, v18);
      [OUTLINED_FUNCTION_0_7() didChangeValueForKey:?];
    }

    IOObjectRelease(v6);
  }
}

- (void)setupNotification
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_5(&dword_242545000, v4, v5, "Failed to create IO notification port from kIOMainPortDefault", v6, v7, v8, v9, 0);
  }

  *a2 = a1;
}

@end