@interface HUTriggerUtilities
+ (void)preloadShortcutHomeManager;
+ (void)preloadShortcuts;
@end

@implementation HUTriggerUtilities

+ (void)preloadShortcuts
{
  v2 = [MEMORY[0x277D146E8] sharedDispatcher];
  v3 = [v2 homeManager];
  v4 = [v3 homes];

  v5 = [MEMORY[0x277D2C938] globalAsyncScheduler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HUTriggerUtilities_preloadShortcuts__block_invoke;
  v7[3] = &unk_277DB8488;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

+ (void)preloadShortcutHomeManager
{
  v2 = [MEMORY[0x277D2C938] globalAsyncScheduler];
  [v2 performBlock:&__block_literal_global_59];
}

@end