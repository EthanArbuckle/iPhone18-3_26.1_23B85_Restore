@interface LACADMUserProvider
+ (LACADMUserProvider)sharedInstance;
@end

@implementation LACADMUserProvider

+ (LACADMUserProvider)sharedInstance
{
  if (sharedInstance_onceToken_18 != -1)
  {
    +[LACADMUserProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_16;

  return v3;
}

uint64_t __36__LACADMUserProvider_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_16 = objc_alloc_init(LACADMUserProvider);

  return MEMORY[0x1EEE66BB8]();
}

@end