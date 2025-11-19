@interface NPKLowPowerModeRemoteDeviceMonitor
+ (id)sharedInstance;
- (BOOL)isLowPowerModeEnabled;
- (NPKLowPowerModeRemoteDeviceMonitor)init;
- (void)_sendLowPowerModeEnabledStateToObservers;
- (void)dealloc;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation NPKLowPowerModeRemoteDeviceMonitor

- (BOOL)isLowPowerModeEnabled
{
  v2 = [(NPKLowPowerModeRemoteDeviceMonitor *)self _currentDeviceDomainAccessor];
  v3 = [v2 synchronize];
  v4 = [v2 BOOLForKey:@"LowPowerMode"];

  return v4;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[NPKLowPowerModeRemoteDeviceMonitor sharedInstance];
  }

  v3 = sharedInstance_monitor_0;

  return v3;
}

void __52__NPKLowPowerModeRemoteDeviceMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NPKLowPowerModeRemoteDeviceMonitor);
  v1 = sharedInstance_monitor_0;
  sharedInstance_monitor_0 = v0;
}

- (NPKLowPowerModeRemoteDeviceMonitor)init
{
  v7.receiver = self;
  v7.super_class = NPKLowPowerModeRemoteDeviceMonitor;
  v2 = [(NPKLowPowerModeRemoteDeviceMonitor *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NPKThreadSafeObserverManager);
    observersManager = v2->_observersManager;
    v2->_observersManager = &v3->super;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, lowPowerModeChangedNotification, @"com.apple.Carousel.LowPowerMode", 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.Carousel.LowPowerMode", 0);
  v4.receiver = self;
  v4.super_class = NPKLowPowerModeRemoteDeviceMonitor;
  [(NPKLowPowerModeRemoteDeviceMonitor *)&v4 dealloc];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  [(NPKObserverManager *)self->_observersManager registerObserver:v4];
  v5 = [(NPKLowPowerModeRemoteDeviceMonitor *)self isLowPowerModeEnabled];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__NPKLowPowerModeRemoteDeviceMonitor_registerObserver___block_invoke;
  v7[3] = &unk_279946490;
  v9 = v5;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  NPKGuaranteeMainThread(v7);
}

- (void)unregisterObserver:(id)a3
{
  observersManager = self->_observersManager;
  v4 = a3;
  [(NPKObserverManager *)observersManager unregisterObserver:v4];
}

- (void)_sendLowPowerModeEnabledStateToObservers
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(NPKLowPowerModeRemoteDeviceMonitor *)self isLowPowerModeEnabled];
  v4 = pk_General_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = pk_General_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"disabled";
      if (v3)
      {
        v7 = @"enabled";
      }

      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: NPKLowPowerModeMonitor: Sending low power mode %@ state to observers.", buf, 0xCu);
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__NPKLowPowerModeRemoteDeviceMonitor__sendLowPowerModeEnabledStateToObservers__block_invoke;
  v9[3] = &unk_279944FC0;
  v9[4] = self;
  v10 = v3;
  NPKGuaranteeMainThread(v9);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __78__NPKLowPowerModeRemoteDeviceMonitor__sendLowPowerModeEnabledStateToObservers__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__NPKLowPowerModeRemoteDeviceMonitor__sendLowPowerModeEnabledStateToObservers__block_invoke_2;
  v4[3] = &unk_279947260;
  v4[4] = v1;
  v5 = *(a1 + 40);
  return [v2 enumerateObserversUsingBlock:v4];
}

@end