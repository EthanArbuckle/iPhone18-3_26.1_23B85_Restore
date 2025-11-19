@interface AUServiceManager
+ (int)startServiceInSandbox;
+ (void)startService;
@end

@implementation AUServiceManager

+ (void)startService
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCAE98] serviceListener];
  [v3 setDelegate:v2];

  [v3 resume];
}

+ (int)startServiceInSandbox
{
  v2 = AUSandboxPlatformInit(0, 0);
  if (!v2)
  {
    +[AUServiceManager startService];
  }

  return v2;
}

@end