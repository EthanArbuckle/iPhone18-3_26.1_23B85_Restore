@interface CRKKeychainProvider
+ (CRKKeychainProvider)sharedProvider;
+ (id)makeKeychainForCurrentEnvironment;
- (CRKKeychainProvider)initWithKeychain:(id)a3;
@end

@implementation CRKKeychainProvider

- (CRKKeychainProvider)initWithKeychain:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CRKKeychainProvider;
  v6 = [(CRKKeychainProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keychain, a3);
  }

  return v7;
}

+ (CRKKeychainProvider)sharedProvider
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__CRKKeychainProvider_sharedProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedProvider_onceToken != -1)
  {
    dispatch_once(&sharedProvider_onceToken, block);
  }

  v2 = sharedProvider_keychainProvider;

  return v2;
}

void __37__CRKKeychainProvider_sharedProvider__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) makeKeychainForCurrentEnvironment];
  v2 = [objc_alloc(*(a1 + 32)) initWithKeychain:v4];
  v3 = sharedProvider_keychainProvider;
  sharedProvider_keychainProvider = v2;
}

+ (id)makeKeychainForCurrentEnvironment
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  if ([v2 crk_isBeingTested])
  {
    v3 = objc_opt_new();
  }

  else
  {
    v3 = +[CRKConcreteKeychain defaultKeychain];
  }

  v4 = v3;

  return v4;
}

@end