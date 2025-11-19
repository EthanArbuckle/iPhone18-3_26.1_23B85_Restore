@interface CALNNullCoreLocationProvider
+ (id)sharedInstance;
@end

@implementation CALNNullCoreLocationProvider

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[CALNNullCoreLocationProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

uint64_t __46__CALNNullCoreLocationProvider_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_1 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end