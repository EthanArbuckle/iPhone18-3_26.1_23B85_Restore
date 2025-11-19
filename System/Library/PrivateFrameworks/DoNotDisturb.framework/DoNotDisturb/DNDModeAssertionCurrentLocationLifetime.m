@interface DNDModeAssertionCurrentLocationLifetime
+ (id)sharedInstance;
- (BOOL)isEqual:(id)a3;
- (id)awakeAfterUsingCoder:(id)a3;
@end

@implementation DNDModeAssertionCurrentLocationLifetime

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__DNDModeAssertionCurrentLocationLifetime_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_instance;

  return v2;
}

uint64_t __57__DNDModeAssertionCurrentLocationLifetime_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = sharedInstance_instance;
  sharedInstance_instance = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    isKindOfClass = 1;
  }

  else
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)awakeAfterUsingCoder:(id)a3
{
  v4 = [objc_opt_class() sharedInstance];

  return v4;
}

@end