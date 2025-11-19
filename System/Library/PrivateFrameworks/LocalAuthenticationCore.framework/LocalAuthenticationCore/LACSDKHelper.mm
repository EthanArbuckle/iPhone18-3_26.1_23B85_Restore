@interface LACSDKHelper
+ (LACSDKHelper)sharedInstance;
- (BOOL)applicationIsRunningWithSDKVersionAtLeast:(int64_t)a3;
@end

@implementation LACSDKHelper

+ (LACSDKHelper)sharedInstance
{
  if (sharedInstance_onceToken_15 != -1)
  {
    +[LACSDKHelper sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_13;

  return v3;
}

uint64_t __30__LACSDKHelper_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_13 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)applicationIsRunningWithSDKVersionAtLeast:(int64_t)a3
{
  if ([(LACSDKHelper *)self _buildVersionForSDKVersion:a3])
  {

    return MEMORY[0x1EEE706E0]();
  }

  else
  {
    v3 = LACLogDefault();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [LACSDKHelper applicationIsRunningWithSDKVersionAtLeast:v3];
    }

    return 0;
  }
}

@end