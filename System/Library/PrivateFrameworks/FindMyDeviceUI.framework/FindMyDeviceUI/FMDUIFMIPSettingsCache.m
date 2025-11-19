@interface FMDUIFMIPSettingsCache
+ (id)sharedInstance;
- (BOOL)fmipEnabled;
- (FMDUIFMIPSettingsCache)init;
- (void)_loadFMIPState;
- (void)_loadLowBatteryState;
@end

@implementation FMDUIFMIPSettingsCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FMDUIFMIPSettingsCache sharedInstance];
  }

  v3 = sharedInstance__instance;

  return v3;
}

uint64_t __40__FMDUIFMIPSettingsCache_sharedInstance__block_invoke()
{
  sharedInstance__instance = objc_alloc_init(FMDUIFMIPSettingsCache);

  return MEMORY[0x2821F96F8]();
}

- (FMDUIFMIPSettingsCache)init
{
  v7.receiver = self;
  v7.super_class = FMDUIFMIPSettingsCache;
  v2 = [(FMDUIFMIPSettingsCache *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_fmipState = 4;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, _fmipStateChangeNotificationReceived, *MEMORY[0x277D08FB0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, v3, _lowBatteryLocateStateChangeNotificationReceived, *MEMORY[0x277D08FA8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(FMDUIFMIPSettingsCache *)v3 _loadFMIPState];
    [(FMDUIFMIPSettingsCache *)v3 _loadLowBatteryState];
  }

  return v3;
}

- (BOOL)fmipEnabled
{
  v3 = [(FMDUIFMIPSettingsCache *)self fmipState];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(FMDUIFMIPSettingsCache *)self fmipState]== 0;
  }

  return v3;
}

- (void)_loadLowBatteryState
{
  objc_initWeak(&location, self);
  v2 = [MEMORY[0x277D08F78] sharedInstance];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__FMDUIFMIPSettingsCache__loadLowBatteryState__block_invoke;
  v3[3] = &unk_278FFF370;
  objc_copyWeak(&v4, &location);
  [v2 lowBatteryLocateEnabledWithCompletion:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __46__FMDUIFMIPSettingsCache__loadLowBatteryState__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a3)
  {
    v7 = WeakRetained;
    [WeakRetained setLowBatteryLocateEnabled:a2];
    [v7 setLowBatteryLocateStateAvailable:1];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"FMDUIFMIPSettingsCacheDidUpdateNotification" object:0];

    WeakRetained = v7;
  }
}

- (void)_loadFMIPState
{
  objc_initWeak(&location, self);
  v2 = [MEMORY[0x277D08F78] sharedInstance];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__FMDUIFMIPSettingsCache__loadFMIPState__block_invoke;
  v3[3] = &unk_278FFF398;
  objc_copyWeak(&v4, &location);
  [v2 fmipStateWithCompletion:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __40__FMDUIFMIPSettingsCache__loadFMIPState__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a3)
  {
    v7 = WeakRetained;
    [WeakRetained setFmipState:a2];
    [v7 setFmipStateAvailable:1];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"FMDUIFMIPSettingsCacheDidUpdateNotification" object:0];

    WeakRetained = v7;
  }
}

@end