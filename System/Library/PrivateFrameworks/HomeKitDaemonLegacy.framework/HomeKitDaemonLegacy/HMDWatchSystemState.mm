@interface HMDWatchSystemState
+ (id)sharedState;
- (BOOL)isCompanionReachable;
- (HMDWatchSystemState)init;
- (NSHashTable)watchSystemStateDelegates;
- (void)registerDelegate:(id)delegate;
@end

@implementation HMDWatchSystemState

- (void)registerDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  [(NSHashTable *)self->_watchSystemStateDelegates addObject:delegateCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSHashTable)watchSystemStateDelegates
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSHashTable *)self->_watchSystemStateDelegates copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isCompanionReachable
{
  os_unfair_lock_lock_with_options();
  companionReachable = self->_companionReachable;
  os_unfair_lock_unlock(&self->_lock);
  return companionReachable;
}

- (HMDWatchSystemState)init
{
  v7.receiver = self;
  v7.super_class = HMDWatchSystemState;
  v2 = [(HMDWatchSystemState *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_companionReachable = 0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    watchSystemStateDelegates = v3->_watchSystemStateDelegates;
    v3->_watchSystemStateDelegates = weakObjectsHashTable;
  }

  return v3;
}

+ (id)sharedState
{
  if (isWatch())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__HMDWatchSystemState_sharedState__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (sharedState_onceToken != -1)
    {
      dispatch_once(&sharedState_onceToken, block);
    }

    v3 = sharedState_shared;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __34__HMDWatchSystemState_sharedState__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedState_shared;
  sharedState_shared = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end