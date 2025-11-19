@interface DEDManager
+ (id)sharedInstance;
@end

@implementation DEDManager

+ (id)sharedInstance
{
  if (sharedInstance_once_4 != -1)
  {
    +[DEDManager sharedInstance];
  }

  v3 = sharedInstance_shared_3;

  return v3;
}

uint64_t __28__DEDManager_sharedInstance__block_invoke()
{
  sharedInstance_shared_3 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end