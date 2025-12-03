@interface MIContainerProtectionManager
+ (id)defaultManager;
- (void)setDataProtectionOnDataContainer:(id)container forNewBundle:(id)bundle retryIfLocked:(BOOL)locked;
@end

@implementation MIContainerProtectionManager

+ (id)defaultManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MIContainerProtectionManager_defaultManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultManager_onceToken != -1)
  {
    dispatch_once(&defaultManager_onceToken, block);
  }

  v2 = defaultManager_defaultManager;

  return v2;
}

uint64_t __46__MIContainerProtectionManager_defaultManager__block_invoke()
{
  defaultManager_defaultManager = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (void)setDataProtectionOnDataContainer:(id)container forNewBundle:(id)bundle retryIfLocked:(BOOL)locked
{
  containerCopy = container;
  bundleCopy = bundle;
  [bundleCopy dataProtectionClass];
  [bundleCopy bundleType];
  [containerCopy containerClass];
  identifier = [bundleCopy identifier];

  [identifier UTF8String];
  v10 = containerCopy;
  v9 = containerCopy;
  container_set_data_protection_for_current_user();
}

uint64_t __92__MIContainerProtectionManager_setDataProtectionOnDataContainer_forNewBundle_retryIfLocked___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    result = gLogHandle;
    if (!gLogHandle || *(gLogHandle + 44) >= 3)
    {
      return MOLogWrite();
    }
  }

  return result;
}

@end