@interface MOSettingsManager
+ (id)sharedInstance;
- (BOOL)getStateForSetting:(unint64_t)setting;
- (MOSettingsManager)init;
- (MOSettingsManagerDelegate)delegate;
- (void)setDelegate:(id)delegate;
@end

@implementation MOSettingsManager

- (MOSettingsManagerDelegate)delegate
{
  v2 = +[MOOnboardingAndSettingsManager sharedInstance];
  settingsManagerDelegate = [v2 settingsManagerDelegate];

  return settingsManagerDelegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = +[MOOnboardingAndSettingsManager sharedInstance];
  [v4 setSettingsManagerDelegate:delegateCopy];
}

- (MOSettingsManager)init
{
  v3.receiver = self;
  v3.super_class = MOSettingsManager;
  return [(MOSettingsManager *)&v3 init];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__MOSettingsManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_shared_1;

  return v2;
}

uint64_t __35__MOSettingsManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_shared_1 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BOOL)getStateForSetting:(unint64_t)setting
{
  v4 = +[MOOnboardingAndSettingsManager sharedInstance];
  LOBYTE(setting) = [v4 getStateForSetting:setting];

  return setting;
}

@end