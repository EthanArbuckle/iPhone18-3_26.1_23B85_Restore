@interface LockdownModeManager
+ (id)shared;
- (BOOL)enabled;
- (BOOL)enabledInAccount;
- (LockdownModeManager)init;
- (void)migrateIfNeededWithCompletion:(id)a3;
- (void)notifyRestrictionChanged:(id)a3;
- (void)rebootIfNeeded;
@end

@implementation LockdownModeManager

uint64_t __29__LockdownModeManager_shared__block_invoke()
{
  shared_lockdownModeManager = objc_alloc_init(LockdownModeManager);

  return MEMORY[0x1EEE66BB8]();
}

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[LockdownModeManager shared];
  }

  v3 = shared_lockdownModeManager;

  return v3;
}

- (LockdownModeManager)init
{
  v6.receiver = self;
  v6.super_class = LockdownModeManager;
  v2 = [(LockdownModeManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    underlyingObject = v2->_underlyingObject;
    v2->_underlyingObject = v3;
  }

  return v2;
}

- (BOOL)enabled
{
  v2 = [(LockdownModeManager *)self underlyingObject];
  v3 = [v2 enabled];

  return v3;
}

- (BOOL)enabledInAccount
{
  v2 = [(LockdownModeManager *)self underlyingObject];
  v3 = [v2 enabledInAccount];

  return v3;
}

- (void)notifyRestrictionChanged:(id)a3
{
  v4 = a3;
  v5 = [(LockdownModeManager *)self underlyingObject];
  [v5 notifyRestrictionChanged:v4];
}

- (void)migrateIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(LockdownModeManager *)self underlyingObject];
  [v5 migrateIfNeededWithCompletion:v4];
}

- (void)rebootIfNeeded
{
  v2 = [(LockdownModeManager *)self underlyingObject];
  [v2 rebootIfNeeded];
}

@end