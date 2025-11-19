@interface NPKLowPowerModeLocalDeviceMonitor
+ (id)sharedInstance;
- (BOOL)isLowPowerModeEnabled;
- (NPKLowPowerModeLocalDeviceMonitor)init;
- (NPKLowPowerModeLocalDeviceMonitor)initWithNotificationCenter:(id)a3;
- (void)_lowPowerModeStateChanged:(id)a3;
- (void)_sendLowPowerModeEnabledStateToObservers:(BOOL)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
@end

@implementation NPKLowPowerModeLocalDeviceMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[NPKLowPowerModeLocalDeviceMonitor sharedInstance];
  }

  v3 = sharedInstance_monitor;

  return v3;
}

void __51__NPKLowPowerModeLocalDeviceMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NPKLowPowerModeLocalDeviceMonitor);
  v1 = sharedInstance_monitor;
  sharedInstance_monitor = v0;
}

- (NPKLowPowerModeLocalDeviceMonitor)init
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [(NPKLowPowerModeLocalDeviceMonitor *)self initWithNotificationCenter:v3];

  return v4;
}

- (NPKLowPowerModeLocalDeviceMonitor)initWithNotificationCenter:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NPKLowPowerModeLocalDeviceMonitor;
  v5 = [(NPKLowPowerModeLocalDeviceMonitor *)&v9 init];
  if (v5)
  {
    v6 = objc_alloc_init(NPKThreadSafeObserverManager);
    observersManager = v5->_observersManager;
    v5->_observersManager = &v6->super;

    [v4 addObserver:v5 selector:sel__lowPowerModeStateChanged_ name:*MEMORY[0x277CCA5E8] object:0];
  }

  return v5;
}

- (BOOL)isLowPowerModeEnabled
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  return v3;
}

- (void)_lowPowerModeStateChanged:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__NPKLowPowerModeLocalDeviceMonitor__lowPowerModeStateChanged___block_invoke;
  v3[3] = &unk_279944F98;
  v3[4] = self;
  NPKGuaranteeMainThread(v3);
}

uint64_t __63__NPKLowPowerModeLocalDeviceMonitor__lowPowerModeStateChanged___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isLowPowerModeEnabled];
  v3 = *(a1 + 32);

  return [v3 _sendLowPowerModeEnabledStateToObservers:v2];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  [(NPKObserverManager *)self->_observersManager registerObserver:v4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__NPKLowPowerModeLocalDeviceMonitor_registerObserver___block_invoke;
  v6[3] = &unk_2799454E0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  NPKGuaranteeMainThread(v6);
}

uint64_t __54__NPKLowPowerModeLocalDeviceMonitor_registerObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isLowPowerModeEnabled];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _sendLowPowerModeEnabled:v2 toObserver:v4];
}

- (void)unregisterObserver:(id)a3
{
  observersManager = self->_observersManager;
  v4 = a3;
  [(NPKObserverManager *)observersManager unregisterObserver:v4];
}

- (void)_sendLowPowerModeEnabledStateToObservers:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = pk_General_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_General_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"disabled";
      if (v3)
      {
        v8 = @"enabled";
      }

      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: NPKLowPowerModeMonitor: Sending low power mode %@ state to observers.", buf, 0xCu);
    }
  }

  observersManager = self->_observersManager;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__NPKLowPowerModeLocalDeviceMonitor__sendLowPowerModeEnabledStateToObservers___block_invoke;
  v11[3] = &unk_279947260;
  v11[4] = self;
  v12 = v3;
  [(NPKObserverManager *)observersManager enumerateObserversUsingBlock:v11];
  v10 = *MEMORY[0x277D85DE8];
}

@end