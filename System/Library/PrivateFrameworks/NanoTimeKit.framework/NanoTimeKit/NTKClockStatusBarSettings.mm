@interface NTKClockStatusBarSettings
+ (id)sharedInstance;
- (BOOL)_isNotificationsIndicatorEnabledInPreferences;
- (NTKClockStatusBarSettings)init;
- (void)_handlePrefsChanged;
- (void)_notifyClientsOfChange;
- (void)dealloc;
- (void)setNotificationsIndicatorEnabled:(BOOL)enabled;
@end

@implementation NTKClockStatusBarSettings

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NTKClockStatusBarSettings_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_6 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6, block);
  }

  v2 = sharedInstance___sharedInstance_2;

  return v2;
}

void __43__NTKClockStatusBarSettings_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___sharedInstance_2;
  sharedInstance___sharedInstance_2 = v1;
}

- (NTKClockStatusBarSettings)init
{
  v7.receiver = self;
  v7.super_class = NTKClockStatusBarSettings;
  v2 = [(NTKClockStatusBarSettings *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ntk.clockstatusbarsettings", 0);
    prefsQueue = v2->_prefsQueue;
    v2->_prefsQueue = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _NTKClockStatusBarSettings_HandleSettingsChanged, @"com.apple.NanoTimeKit.NTKNanoPrefsChanges", v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFPreferencesAppSynchronize(@"com.apple.NanoTimeKit");
    v2->_notificationsIndicatorEnabled = [(NTKClockStatusBarSettings *)v2 _isNotificationsIndicatorEnabledInPreferences];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = NTKClockStatusBarSettings;
  [(NTKClockStatusBarSettings *)&v4 dealloc];
}

- (BOOL)_isNotificationsIndicatorEnabledInPreferences
{
  v6 = 0;
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoTimeKit"];
  v3 = [v2 BOOLForKey:@"notificationsIndicatorEnabled" keyExistsAndHasValidFormat:&v6];
  v4 = v3 | ~v6;

  return v4 & 1;
}

- (void)setNotificationsIndicatorEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_notificationsIndicatorEnabled = enabled;
  v10 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoTimeKit"];
  [v10 setBool:enabledCopy forKey:@"notificationsIndicatorEnabled"];
  synchronize = [v10 synchronize];
  npsManager = self->_npsManager;
  if (!npsManager)
  {
    v7 = objc_alloc_init(MEMORY[0x277D2BA60]);
    v8 = self->_npsManager;
    self->_npsManager = v7;

    npsManager = self->_npsManager;
  }

  v9 = [MEMORY[0x277CBEB98] setWithObject:@"notificationsIndicatorEnabled"];
  [(NPSManager *)npsManager synchronizeNanoDomain:@"com.apple.NanoTimeKit" keys:v9];
}

- (void)_handlePrefsChanged
{
  prefsQueue = self->_prefsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__NTKClockStatusBarSettings__handlePrefsChanged__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(prefsQueue, block);
}

void __48__NTKClockStatusBarSettings__handlePrefsChanged__block_invoke(uint64_t a1)
{
  CFPreferencesAppSynchronize(@"com.apple.NanoTimeKit");
  v2 = [*(a1 + 32) _isNotificationsIndicatorEnabledInPreferences];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__NTKClockStatusBarSettings__handlePrefsChanged__block_invoke_2;
  v3[3] = &unk_27877F7E8;
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)_notifyClientsOfChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"NTKClockStatusBarSettingsDidChangeNotification" object:self];
}

@end