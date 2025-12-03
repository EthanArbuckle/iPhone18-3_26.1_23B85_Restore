@interface CNAsynchronousCacheEntry
- (CNAsynchronousCacheEntry)init;
- (CNAsynchronousCacheEntry)initWithSchedulerProvider:(id)provider;
- (id)description;
- (void)addDelegate:(id)delegate;
- (void)removeDelegates:(id)delegates;
- (void)updateValue:(id)value;
- (void)withLock_compactAndRemoveDelegates:(id)delegates;
@end

@implementation CNAsynchronousCacheEntry

- (CNAsynchronousCacheEntry)init
{
  v3 = +[(CNEnvironmentBase *)CNEnvironment];
  schedulerProvider = [v3 schedulerProvider];
  v5 = [(CNAsynchronousCacheEntry *)self initWithSchedulerProvider:schedulerProvider];

  return v5;
}

- (CNAsynchronousCacheEntry)initWithSchedulerProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = CNAsynchronousCacheEntry;
  v6 = [(CNAsynchronousCacheEntry *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_schedulerProvider, provider);
    currentValue = v7->_currentValue;
    v7->_currentValue = 0;

    v7->_timestampOfCurrentValue = 0.0;
    v9 = objc_alloc_init(CNWeakArray);
    delegates = v7->_delegates;
    v7->_delegates = v9;

    v11 = v7;
  }

  return v7;
}

- (id)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"currentValue" object:self->_currentValue];
  build = [v3 build];

  return build;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CNAsynchronousCacheEntry *)selfCopy withLock_compactDelegates];
  [(CNAsynchronousCacheEntry *)selfCopy withLock_addDelegate:delegateCopy];
  v5 = selfCopy->_currentValue;
  immediateScheduler = [(CNSchedulerProvider *)selfCopy->_schedulerProvider immediateScheduler];
  [immediateScheduler timestamp];
  selfCopy->_timestampOfCurrentValue = v7;

  objc_sync_exit(selfCopy);
  if (v5)
  {
    [delegateCopy cacheEntryDidUpdateValue:selfCopy];
  }
}

- (void)removeDelegates:(id)delegates
{
  delegatesCopy = delegates;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CNAsynchronousCacheEntry *)selfCopy withLock_compactAndRemoveDelegates:delegatesCopy];
  objc_sync_exit(selfCopy);
}

- (void)updateValue:(id)value
{
  v18 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(CNAsynchronousCacheEntry *)selfCopy withLock_compactDelegates];
  allObjects = [(CNWeakArray *)selfCopy->_delegates allObjects];
  objc_storeStrong(&selfCopy->_currentValue, value);
  objc_sync_exit(selfCopy);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = allObjects;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v11++) cacheEntryDidUpdateValue:{selfCopy, v13}];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)withLock_compactAndRemoveDelegates:(id)delegates
{
  delegates = self->_delegates;
  delegatesCopy = delegates;
  allObjects = [(CNWeakArray *)delegates allObjects];
  v7 = [allObjects mutableCopy];

  [v7 removeObjectsInArray:delegatesCopy];
  [(CNWeakArray *)self->_delegates setArray:v7];
}

@end