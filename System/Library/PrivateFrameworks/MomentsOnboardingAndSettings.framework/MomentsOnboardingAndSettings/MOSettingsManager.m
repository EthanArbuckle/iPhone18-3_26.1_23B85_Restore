@interface MOSettingsManager
+ (id)sharedInstance;
- (BOOL)getStateForSetting:(unint64_t)a3;
- (MOSettingsManager)init;
- (MOSettingsManagerDelegate)delegate;
- (void)setDelegate:(id)a3;
@end

@implementation MOSettingsManager

- (MOSettingsManagerDelegate)delegate
{
  v2 = +[MOOnboardingAndSettingsManager sharedInstance];
  v3 = [v2 settingsManagerDelegate];

  return v3;
}

- (void)setDelegate:(id)a3
{
  v3 = a3;
  v4 = +[MOOnboardingAndSettingsManager sharedInstance];
  [v4 setSettingsManagerDelegate:v3];
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
  block[4] = a1;
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

- (BOOL)getStateForSetting:(unint64_t)a3
{
  v4 = +[MOOnboardingAndSettingsManager sharedInstance];
  LOBYTE(a3) = [v4 getStateForSetting:a3];

  return a3;
}

@end