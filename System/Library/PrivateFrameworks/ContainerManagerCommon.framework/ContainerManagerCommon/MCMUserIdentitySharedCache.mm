@interface MCMUserIdentitySharedCache
+ (id)sharedInstance;
@end

@implementation MCMUserIdentitySharedCache

+ (id)sharedInstance
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__MCMUserIdentitySharedCache_sharedInstance__block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = a1;
  if (sharedInstance_onceToken_10329 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_10329, v5);
  }

  v2 = sharedInstance_instance;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t __44__MCMUserIdentitySharedCache_sharedInstance__block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  sharedInstance_instance = objc_opt_new();
  v2 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

@end