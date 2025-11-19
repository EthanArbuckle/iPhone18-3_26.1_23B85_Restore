@interface MIContainerProtectionManager
+ (id)defaultManager;
- (void)setDataProtectionOnDataContainer:(id)a3 forNewBundle:(id)a4 retryIfLocked:(BOOL)a5;
@end

@implementation MIContainerProtectionManager

+ (id)defaultManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__MIContainerProtectionManager_defaultManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (void)setDataProtectionOnDataContainer:(id)a3 forNewBundle:(id)a4 retryIfLocked:(BOOL)a5
{
  v6 = a3;
  v7 = a4;
  [v7 dataProtectionClass];
  [v7 bundleType];
  [v6 containerClass];
  v8 = [v7 identifier];

  [v8 UTF8String];
  v10 = v6;
  v9 = v6;
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