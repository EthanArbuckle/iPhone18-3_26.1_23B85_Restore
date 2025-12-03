@interface LockdownModeManager
+ (id)shared;
- (BOOL)enabled;
- (BOOL)enabledInAccount;
- (LockdownModeManager)init;
- (void)migrateIfNeededWithCompletion:(id)completion;
- (void)notifyRestrictionChanged:(id)changed;
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
  underlyingObject = [(LockdownModeManager *)self underlyingObject];
  enabled = [underlyingObject enabled];

  return enabled;
}

- (BOOL)enabledInAccount
{
  underlyingObject = [(LockdownModeManager *)self underlyingObject];
  enabledInAccount = [underlyingObject enabledInAccount];

  return enabledInAccount;
}

- (void)notifyRestrictionChanged:(id)changed
{
  changedCopy = changed;
  underlyingObject = [(LockdownModeManager *)self underlyingObject];
  [underlyingObject notifyRestrictionChanged:changedCopy];
}

- (void)migrateIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  underlyingObject = [(LockdownModeManager *)self underlyingObject];
  [underlyingObject migrateIfNeededWithCompletion:completionCopy];
}

- (void)rebootIfNeeded
{
  underlyingObject = [(LockdownModeManager *)self underlyingObject];
  [underlyingObject rebootIfNeeded];
}

@end