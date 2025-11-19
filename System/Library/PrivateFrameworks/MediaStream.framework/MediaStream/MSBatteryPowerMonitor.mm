@interface MSBatteryPowerMonitor
+ (id)defaultMonitor;
- (BOOL)_updateBatteryConnectedStateWithBatteryEntry:(unsigned int)a3;
- (MSBatteryPowerMonitor)init;
- (void)dealloc;
- (void)updateBatteryLevelWithBatteryEntry:(unsigned int)a3;
@end

@implementation MSBatteryPowerMonitor

- (BOOL)_updateBatteryConnectedStateWithBatteryEntry:(unsigned int)a3
{
  CFProperty = IORegistryEntryCreateCFProperty(a3, @"ExternalConnected", *MEMORY[0x277CBECE8], 0);
  if (CFProperty)
  {
    v5 = CFProperty;
    v6 = [CFProperty BOOLValue];
    v7 = v6 ^ [(MSBatteryPowerMonitor *)self isExternalPowerConnected];
    if (v7 != 1)
    {
LABEL_11:
      CFRelease(v5);
      return v7;
    }

    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v8)
      {
        v14 = 0;
        v9 = MEMORY[0x277D86220];
        v10 = "External power connected.";
        v11 = &v14;
LABEL_9:
        _os_log_impl(&dword_258743000, v9, OS_LOG_TYPE_INFO, v10, v11, 2u);
      }
    }

    else if (v8)
    {
      LOWORD(v13) = 0;
      v9 = MEMORY[0x277D86220];
      v10 = "External power disconnected.";
      v11 = &v13;
      goto LABEL_9;
    }

    [(MSBatteryPowerMonitor *)self setExternalPowerConnected:v6, v13];
    goto LABEL_11;
  }

  LOBYTE(v7) = 0;
  return v7;
}

- (void)updateBatteryLevelWithBatteryEntry:(unsigned int)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CBECE8];
  CFProperty = IORegistryEntryCreateCFProperty(a3, @"MaxCapacity", *MEMORY[0x277CBECE8], 0);
  v7 = IORegistryEntryCreateCFProperty(a3, @"CurrentCapacity", v5, 0);
  v8 = v7;
  v9 = -1.0;
  if (CFProperty)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    [v7 doubleValue];
    v12 = v11;
    [CFProperty doubleValue];
    v9 = v12 / v13;
  }

  [(MSBatteryPowerMonitor *)self setCurrentLevel:v9];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    [(MSBatteryPowerMonitor *)self currentLevel];
    v16 = 134217984;
    v17 = v14 * 100.0;
    _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Battery level: %.1f%%.", &v16, 0xCu);
  }

  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  Current = CFRunLoopGetCurrent();
  v4 = *MEMORY[0x277CBF058];
  if (CFRunLoopContainsSource(Current, self->_batteryRunLoopSource, *MEMORY[0x277CBF058]))
  {
    v5 = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(v5, self->_batteryRunLoopSource, v4);
  }

  batteryIONotifyPort = self->_batteryIONotifyPort;
  if (batteryIONotifyPort)
  {
    IONotificationPortDestroy(batteryIONotifyPort);
    self->_batteryIONotifyPort = 0;
  }

  batteryNotificationRef = self->_batteryNotificationRef;
  if (batteryNotificationRef)
  {
    IOObjectRelease(batteryNotificationRef);
    self->_batteryNotificationRef = 0;
  }

  v8.receiver = self;
  v8.super_class = MSBatteryPowerMonitor;
  [(MSBatteryPowerMonitor *)&v8 dealloc];
}

- (MSBatteryPowerMonitor)init
{
  v14.receiver = self;
  v14.super_class = MSBatteryPowerMonitor;
  v2 = [(MSBatteryPowerMonitor *)&v14 init];
  v3 = v2;
  if (v2)
  {
    [(MSBatteryPowerMonitor *)v2 setCurrentLevel:-1.0];
    v4 = *MEMORY[0x277CD2898];
    v5 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    v3->_batteryIONotifyPort = v5;
    RunLoopSource = IONotificationPortGetRunLoopSource(v5);
    v3->_batteryRunLoopSource = RunLoopSource;
    if (!RunLoopSource)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        v10 = MEMORY[0x277D86220];
        v11 = "Cannot retrieve runloop source for battery monitor.";
        goto LABEL_13;
      }

LABEL_7:

      return 0;
    }

    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v3->_batteryRunLoopSource, *MEMORY[0x277CBF058]);
    v8 = IOServiceMatching("IOPMPowerSource");
    MatchingService = IOServiceGetMatchingService(v4, v8);
    if (IOServiceAddInterestNotification(v3->_batteryIONotifyPort, MatchingService, "IOGeneralInterest", BatteryStateChanged, v3, &v3->_batteryNotificationRef))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        v10 = MEMORY[0x277D86220];
        v11 = "Cannot listen to battery level change notification.";
LABEL_13:
        _os_log_error_impl(&dword_258743000, v10, OS_LOG_TYPE_ERROR, v11, v13, 2u);
        goto LABEL_7;
      }

      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_258743000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Listening to battery level changes.", v13, 2u);
    }

    [(MSBatteryPowerMonitor *)v3 updateBatteryLevelWithBatteryEntry:MatchingService];
    [(MSBatteryPowerMonitor *)v3 _updateBatteryConnectedStateWithBatteryEntry:MatchingService];
  }

  return v3;
}

+ (id)defaultMonitor
{
  if (defaultMonitor_onceToken != -1)
  {
    dispatch_once(&defaultMonitor_onceToken, &__block_literal_global_363);
  }

  v3 = defaultMonitor_monitor;

  return v3;
}

uint64_t __39__MSBatteryPowerMonitor_defaultMonitor__block_invoke()
{
  defaultMonitor_monitor = objc_alloc_init(MSBatteryPowerMonitor);

  return MEMORY[0x2821F96F8]();
}

@end