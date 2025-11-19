@interface CSEntityKitManager
+ (CSEntityKitManager)sharedInstance;
@end

@implementation CSEntityKitManager

+ (CSEntityKitManager)sharedInstance
{
  if (sharedInstance_onceToken_8529 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_8529, &__block_literal_global_8530);
  }

  v3 = sharedInstance_sharedManager_8531;

  return v3;
}

uint64_t __36__CSEntityKitManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSEntityKitManager);
  v1 = sharedInstance_sharedManager_8531;
  sharedInstance_sharedManager_8531 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end