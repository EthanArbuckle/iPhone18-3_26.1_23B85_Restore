@interface DSTestAutomation
+ (id)sharedInstance;
+ (void)postConfiguration:(id)a3;
+ (void)postInteractiveTestEvent:(id)a3 info:(id)a4;
- (DSTestAutomation)init;
@end

@implementation DSTestAutomation

- (DSTestAutomation)init
{
  v8.receiver = self;
  v8.super_class = DSTestAutomation;
  v2 = [(DSTestAutomation *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_testAutomationEnabled = 0;
    CFPreferencesAppSynchronize(@"com.apple.Diagnostics");
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"TestAutomation", @"com.apple.Diagnostics", &keyExistsAndHasValidFormat))
    {
      v4 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v4 = 1;
    }

    v5 = !v4;
    v3->_testAutomationEnabled = v5;
  }

  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[DSTestAutomation sharedInstance];
  }

  v3 = sharedInstance_singleton;

  return v3;
}

uint64_t __34__DSTestAutomation_sharedInstance__block_invoke()
{
  sharedInstance_singleton = objc_alloc_init(DSTestAutomation);

  return MEMORY[0x2821F96F8]();
}

+ (void)postInteractiveTestEvent:(id)a3 info:(id)a4
{
  v12[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = +[DSTestAutomation sharedInstance];
  v8 = [v7 testAutomationEnabled];

  if (v8)
  {
    v11[0] = @"event";
    v11[1] = @"type";
    v12[0] = @"DSTestAutomationEvent";
    v12[1] = @"InteractiveTestEvent";
    v11[2] = @"interactiveEvent";
    v11[3] = @"info";
    v12[2] = v5;
    v12[3] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
    UIAccessibilityPostNotification(0xFA2u, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)postConfiguration:(id)a3
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[DSTestAutomation sharedInstance];
  v5 = [v4 testAutomationEnabled];

  if (v5)
  {
    v8[0] = @"event";
    v8[1] = @"type";
    v9[0] = @"DSTestAutomationEvent";
    v9[1] = @"Configuration";
    v8[2] = @"info";
    v9[2] = v3;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
    UIAccessibilityPostNotification(0xFA2u, v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end