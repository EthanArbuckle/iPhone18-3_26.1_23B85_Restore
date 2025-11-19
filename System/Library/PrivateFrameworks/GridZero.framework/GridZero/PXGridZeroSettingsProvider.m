@interface PXGridZeroSettingsProvider
+ (PXGridZeroSettingsProvider)sharedInstance;
@end

@implementation PXGridZeroSettingsProvider

uint64_t __44__PXGridZeroSettingsProvider_sharedInstance__block_invoke()
{
  if (objc_opt_respondsToSelector())
  {
    v0 = +[PXGridZeroSettingsProvider px_createConcreteSettingsProvider];
  }

  else
  {
    v0 = objc_alloc_init(PXGridZeroSettingsProvider);
  }

  sharedInstance_sharedInstance = v0;

  return MEMORY[0x2821F96F8]();
}

+ (PXGridZeroSettingsProvider)sharedInstance
{
  if (sharedInstance_onceToken_1700 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1700, &__block_literal_global_1701);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

@end