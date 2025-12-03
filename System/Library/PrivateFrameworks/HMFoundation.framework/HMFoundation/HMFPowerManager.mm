@interface HMFPowerManager
+ (id)sharedManager;
- (HMFPowerManager)init;
- (float)batteryLevel;
- (int64_t)batteryState;
- (void)_deregisterForPowerSourceNotifications:(BOOL)notifications;
- (void)_registerForPowerSourceNotifications;
- (void)dealloc;
- (void)start;
- (void)stop;
- (void)updateBatteryState:(unsigned int)state;
@end

@implementation HMFPowerManager

+ (id)sharedManager
{
  if (qword_280AFC4E0 != -1)
  {
    dispatch_once(&qword_280AFC4E0, &__block_literal_global_24);
  }

  v3 = _MergedGlobals_1_0;

  return v3;
}

uint64_t __32__HMFPowerManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(HMFPowerManager);
  v1 = _MergedGlobals_1_0;
  _MergedGlobals_1_0 = v0;

  v2 = _MergedGlobals_1_0;

  return [v2 start];
}

- (HMFPowerManager)init
{
  v17.receiver = self;
  v17.super_class = HMFPowerManager;
  v2 = [(HMFPowerManager *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v4 = HMFDispatchQueueName(v2, 0);
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create(v4, v5);
    clientQueue = v3->_clientQueue;
    v3->_clientQueue = v6;

    v3->_batteryState = 0;
    v3->_batteryLevel = -1.0;
    LODWORD(v4) = *MEMORY[0x277CD2898];
    v8 = IOServiceMatching("IOPMPowerSource");
    MatchingService = IOServiceGetMatchingService(v4, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"BatteryInstalled", *MEMORY[0x277CBECE8], 0);
      TypeID = CFBooleanGetTypeID();
      objc_opt_class();
      if (CFProperty && CFGetTypeID(CFProperty) != TypeID)
      {
        CFRelease(CFProperty);
        CFProperty = 0;
      }

      if (objc_opt_isKindOfClass())
      {
        v13 = CFProperty;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13;

      bOOLValue = [v14 BOOLValue];
      IOObjectRelease(v10);
    }

    else
    {
      bOOLValue = 0;
    }

    v3->_hasBattery = bOOLValue;
  }

  return v3;
}

- (void)dealloc
{
  [(HMFPowerManager *)self _deregisterForPowerSourceNotifications:0];
  v3.receiver = self;
  v3.super_class = HMFPowerManager;
  [(HMFPowerManager *)&v3 dealloc];
}

- (void)start
{
  clientQueue = [(HMFPowerManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__HMFPowerManager_start__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

uint64_t __24__HMFPowerManager_start__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isRunning];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setRunning:1];
    v3 = *(a1 + 32);

    return [v3 _registerForPowerSourceNotifications];
  }

  return result;
}

- (void)stop
{
  clientQueue = [(HMFPowerManager *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__HMFPowerManager_stop__block_invoke;
  block[3] = &unk_2786E6C80;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __23__HMFPowerManager_stop__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[HMFPowerManager sharedManager];

  if (v2 != v3 && [*(a1 + 32) isRunning])
  {
    [*(a1 + 32) setRunning:0];
    v4 = *(a1 + 32);

    [v4 _deregisterForPowerSourceNotifications:1];
  }
}

- (int64_t)batteryState
{
  os_unfair_lock_lock_with_options();
  batteryState = self->_batteryState;
  os_unfair_lock_unlock(&self->_lock);
  return batteryState;
}

- (float)batteryLevel
{
  os_unfair_lock_lock_with_options();
  batteryLevel = self->_batteryLevel;
  os_unfair_lock_unlock(&self->_lock);
  return batteryLevel;
}

- (void)updateBatteryState:(unsigned int)state
{
  v36 = *MEMORY[0x277D85DE8];
  if (state)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *MEMORY[0x277CBECE8];
    CFProperty = IORegistryEntryCreateCFProperty(state, @"CurrentCapacity", *MEMORY[0x277CBECE8], 0);
    TypeID = CFNumberGetTypeID();
    objc_opt_class();
    if (CFProperty && CFGetTypeID(CFProperty) != TypeID)
    {
      CFRelease(CFProperty);
      CFProperty = 0;
    }

    if (objc_opt_isKindOfClass())
    {
      v9 = CFProperty;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v11 = IORegistryEntryCreateCFProperty(state, @"MaxCapacity", v6, 0);
    v12 = CFNumberGetTypeID();
    objc_opt_class();
    if (v11 && CFGetTypeID(v11) != v12)
    {
      CFRelease(v11);
      v11 = 0;
    }

    if (objc_opt_isKindOfClass())
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v10 && v14 && [v14 integerValue] >= 1)
    {
      integerValue = [v10 integerValue];
      v16 = integerValue / [v14 integerValue];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier(0);
        v34 = 138543362;
        v35 = v19;
        _os_log_impl(&dword_22ADEC000, v18, OS_LOG_TYPE_INFO, "%{public}@Unable to determine the current battery level", &v34, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v16 = -1.0;
    }

    __updateBatteryLevel(self, v16);
    v20 = IORegistryEntryCreateCFProperty(state, @"ExternalChargeCapable", v6, 0);
    v21 = CFBooleanGetTypeID();
    objc_opt_class();
    if (v20 && CFGetTypeID(v20) != v21)
    {
      CFRelease(v20);
      v20 = 0;
    }

    if (objc_opt_isKindOfClass())
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if (v23)
    {
      if ([v23 BOOLValue])
      {
        v24 = IORegistryEntryCreateCFProperty(state, @"FullyCharged", v6, 0);
        v25 = CFBooleanGetTypeID();
        objc_opt_class();
        if (v24 && CFGetTypeID(v24) != v25)
        {
          CFRelease(v24);
          v24 = 0;
        }

        if (objc_opt_isKindOfClass())
        {
          v26 = v24;
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;

        bOOLValue = [v27 BOOLValue];
        if (bOOLValue)
        {
          v29 = 3;
        }

        else
        {
          v29 = 2;
        }
      }

      else
      {
        v29 = 1;
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier(0);
        v34 = 138543362;
        v35 = v32;
        _os_log_impl(&dword_22ADEC000, v31, OS_LOG_TYPE_INFO, "%{public}@Unable to determine the current battery state", &v34, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      v29 = 0;
    }

    __updateBatteryState(self, v29);

    objc_autoreleasePoolPop(v5);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_registerForPowerSourceNotifications
{
  self->_notificationPort = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  if ([(HMFPowerManager *)self notificationPort])
  {
    RunLoopSource = IONotificationPortGetRunLoopSource([(HMFPowerManager *)self notificationPort]);
    if (RunLoopSource)
    {
      v4 = RunLoopSource;
      Main = CFRunLoopGetMain();
      CFRunLoopAddSource(Main, v4, *MEMORY[0x277CBF058]);
      notification = 0;
      notificationPort = [(HMFPowerManager *)self notificationPort];
      v7 = IOServiceMatching("IOPMPowerSource");
      if (!IOServiceAddMatchingNotification(notificationPort, "IOServiceFirstMatch", v7, _matchedBatteryMatchingCallback, self, &notification))
      {
        _matchedBatteryMatchingCallback(self, notification);
      }

      IOObjectRelease(notification);
    }

    else
    {
      IONotificationPortDestroy([(HMFPowerManager *)self notificationPort]);
      self->_notificationPort = 0;
    }
  }
}

- (void)_deregisterForPowerSourceNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  if ([(HMFPowerManager *)self interestNotification])
  {
    IOObjectRelease([(HMFPowerManager *)self interestNotification]);
    self->_interestNotification = 0;
  }

  if ([(HMFPowerManager *)self notificationPort])
  {
    RunLoopSource = IONotificationPortGetRunLoopSource([(HMFPowerManager *)self notificationPort]);
    if (RunLoopSource)
    {
      v6 = RunLoopSource;
      Main = CFRunLoopGetMain();
      CFRunLoopRemoveSource(Main, v6, *MEMORY[0x277CBF058]);
    }

    IONotificationPortDestroy([(HMFPowerManager *)self notificationPort]);
    self->_notificationPort = 0;
  }

  if (notificationsCopy)
  {
    __updateBatteryState(self, 0);

    __updateBatteryLevel(self, -1.0);
  }
}

@end