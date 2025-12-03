@interface HUTriggerUtilities
+ (void)preloadShortcutHomeManager;
+ (void)preloadShortcuts;
@end

@implementation HUTriggerUtilities

+ (void)preloadShortcuts
{
  mEMORY[0x277D146E8] = [MEMORY[0x277D146E8] sharedDispatcher];
  homeManager = [mEMORY[0x277D146E8] homeManager];
  homes = [homeManager homes];

  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HUTriggerUtilities_preloadShortcuts__block_invoke;
  v7[3] = &unk_277DB8488;
  v8 = homes;
  v6 = homes;
  [globalAsyncScheduler performBlock:v7];
}

+ (void)preloadShortcutHomeManager
{
  globalAsyncScheduler = [MEMORY[0x277D2C938] globalAsyncScheduler];
  [globalAsyncScheduler performBlock:&__block_literal_global_59];
}

@end