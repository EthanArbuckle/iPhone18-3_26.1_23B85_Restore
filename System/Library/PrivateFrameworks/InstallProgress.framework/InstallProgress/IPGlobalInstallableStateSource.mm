@interface IPGlobalInstallableStateSource
+ (id)sharedAllAppStateSource;
- (IPGlobalInstallableStateSource)initWithBehavior:(id)behavior;
- (void)addObserver:(id)observer;
- (void)globalStateSourceBehavior:(id)behavior stateSourceAvailableForIdentity:(id)identity withGenerator:(id)generator;
- (void)removeObserver:(id)observer;
@end

@implementation IPGlobalInstallableStateSource

- (IPGlobalInstallableStateSource)initWithBehavior:(id)behavior
{
  behaviorCopy = behavior;
  v11.receiver = self;
  v11.super_class = IPGlobalInstallableStateSource;
  v6 = [(IPGlobalInstallableStateSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_ivarLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_behavior, behavior);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = weakObjectsHashTable;
  }

  return v7;
}

+ (id)sharedAllAppStateSource
{
  if (sharedAllAppStateSource_onceToken != -1)
  {
    +[IPGlobalInstallableStateSource sharedAllAppStateSource];
  }

  v3 = sharedAllAppStateSource_sharedAllAppStateSource;

  return v3;
}

void __57__IPGlobalInstallableStateSource_sharedAllAppStateSource__block_invoke()
{
  v0 = [IPGlobalInstallableStateSource alloc];
  v3 = +[IPGlobalInstallableStateSourceDefaultBehavior sharedInstance];
  v1 = [(IPGlobalInstallableStateSource *)v0 initWithBehavior:v3];
  v2 = sharedAllAppStateSource_sharedAllAppStateSource;
  sharedAllAppStateSource_sharedAllAppStateSource = v1;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__IPGlobalInstallableStateSource_addObserver___block_invoke;
  v6[3] = &unk_2797B1E00;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  IPDoWithLock(&self->_ivarLock, v6);
}

uint64_t __46__IPGlobalInstallableStateSource_addObserver___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
  v3 = *(a1 + 32);
  if ((*(v3 + 40) & 1) == 0)
  {
    result = [*(v3 + 16) addObserver:?];
    *(*(a1 + 32) + 40) = 1;
  }

  return result;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__IPGlobalInstallableStateSource_removeObserver___block_invoke;
  v6[3] = &unk_2797B1E00;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  IPDoWithLock(&self->_ivarLock, v6);
}

- (void)globalStateSourceBehavior:(id)behavior stateSourceAvailableForIdentity:(id)identity withGenerator:(id)generator
{
  v30 = *MEMORY[0x277D85DE8];
  behaviorCopy = behavior;
  identityCopy = identity;
  generatorCopy = generator;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __106__IPGlobalInstallableStateSource_globalStateSourceBehavior_stateSourceAvailableForIdentity_withGenerator___block_invoke;
  v22[3] = &unk_2797B1E28;
  v22[4] = self;
  v22[5] = &v23;
  IPDoWithLock(&self->_ivarLock, v22);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v24[5];
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = generatorCopy[2](generatorCopy);
        [v14 globalInstallableStateSource:self stateSourceIsAvailable:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v11);
  }

  _Block_object_dispose(&v23, 8);
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __106__IPGlobalInstallableStateSource_globalStateSourceBehavior_stateSourceAvailableForIdentity_withGenerator___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

@end