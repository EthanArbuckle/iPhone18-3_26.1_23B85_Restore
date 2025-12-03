@interface NTKTimeTravelSettings
+ (id)sharedInstance;
- (BOOL)_isTimeTravelEnabledInPreferences;
- (NTKTimeTravelSettings)init;
- (void)_handlePrefsChanged;
- (void)dealloc;
- (void)setTimeTravelEnabled:(BOOL)enabled;
@end

@implementation NTKTimeTravelSettings

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__NTKTimeTravelSettings_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = sharedInstance___sharedInstance_0;

  return v2;
}

void __39__NTKTimeTravelSettings_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance___sharedInstance_0;
  sharedInstance___sharedInstance_0 = v1;
}

- (NTKTimeTravelSettings)init
{
  v8.receiver = self;
  v8.super_class = NTKTimeTravelSettings;
  v2 = [(NTKTimeTravelSettings *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ntk.timetravelsettings", 0);
    prefsQueue = v2->_prefsQueue;
    v2->_prefsQueue = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, _NTKTimeTravelSettings_HandleSettingsChanged, @"com.apple.NanoTimeKit.NTKNanoPrefsChanges", v2, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFPreferencesAppSynchronize(@"com.apple.NanoTimeKit");
    v2->_timeTravelEnabled = [(NTKTimeTravelSettings *)v2 _isTimeTravelEnabledInPreferences];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handlePrefsChanged name:*MEMORY[0x277D37C08] object:0];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = NTKTimeTravelSettings;
  [(NTKTimeTravelSettings *)&v5 dealloc];
}

- (BOOL)_isTimeTravelEnabledInPreferences
{
  v6 = 0;
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoTimeKit"];
  v3 = [v2 BOOLForKey:@"timeTravelEnabled" keyExistsAndHasValidFormat:&v6];
  v4 = v6 & v3;

  return v4 & 1;
}

- (void)setTimeTravelEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_timeTravelEnabled = enabled;
  v10 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoTimeKit"];
  [v10 setBool:enabledCopy forKey:@"timeTravelEnabled"];
  synchronize = [v10 synchronize];
  npsManager = self->_npsManager;
  if (!npsManager)
  {
    v7 = objc_alloc_init(MEMORY[0x277D2BA60]);
    v8 = self->_npsManager;
    self->_npsManager = v7;

    npsManager = self->_npsManager;
  }

  v9 = [MEMORY[0x277CBEB98] setWithObject:@"timeTravelEnabled"];
  [(NPSManager *)npsManager synchronizeNanoDomain:@"com.apple.NanoTimeKit" keys:v9];
}

- (void)_handlePrefsChanged
{
  prefsQueue = self->_prefsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NTKTimeTravelSettings__handlePrefsChanged__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(prefsQueue, block);
}

void __44__NTKTimeTravelSettings__handlePrefsChanged__block_invoke(uint64_t a1)
{
  CFPreferencesAppSynchronize(@"com.apple.NanoTimeKit");
  v2 = [*(a1 + 32) _isTimeTravelEnabledInPreferences];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__NTKTimeTravelSettings__handlePrefsChanged__block_invoke_2;
  v3[3] = &unk_27877F7E8;
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __44__NTKTimeTravelSettings__handlePrefsChanged__block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  v3 = *(a1 + 40);
  *(v1 + 16) = v3;
  if (v2 != v3)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = @"NTKTimeTravelIsEnabledUserInfoKey";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 16)];
    v9[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [v5 postNotificationName:@"NTKTimeTravelSettingsDidChange" object:0 userInfo:v7];
  }
}

@end