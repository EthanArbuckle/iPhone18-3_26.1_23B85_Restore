@interface CNAsynchronousCacheEntry
- (CNAsynchronousCacheEntry)init;
- (CNAsynchronousCacheEntry)initWithSchedulerProvider:(id)a3;
- (id)description;
- (void)addDelegate:(id)a3;
- (void)removeDelegates:(id)a3;
- (void)updateValue:(id)a3;
- (void)withLock_compactAndRemoveDelegates:(id)a3;
@end

@implementation CNAsynchronousCacheEntry

- (CNAsynchronousCacheEntry)init
{
  v3 = +[(CNEnvironmentBase *)CNEnvironment];
  v4 = [v3 schedulerProvider];
  v5 = [(CNAsynchronousCacheEntry *)self initWithSchedulerProvider:v4];

  return v5;
}

- (CNAsynchronousCacheEntry)initWithSchedulerProvider:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CNAsynchronousCacheEntry;
  v6 = [(CNAsynchronousCacheEntry *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_schedulerProvider, a3);
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
  v5 = [v3 build];

  return v5;
}

- (void)addDelegate:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(CNAsynchronousCacheEntry *)v4 withLock_compactDelegates];
  [(CNAsynchronousCacheEntry *)v4 withLock_addDelegate:v8];
  v5 = v4->_currentValue;
  v6 = [(CNSchedulerProvider *)v4->_schedulerProvider immediateScheduler];
  [v6 timestamp];
  v4->_timestampOfCurrentValue = v7;

  objc_sync_exit(v4);
  if (v5)
  {
    [v8 cacheEntryDidUpdateValue:v4];
  }
}

- (void)removeDelegates:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(CNAsynchronousCacheEntry *)v4 withLock_compactAndRemoveDelegates:v5];
  objc_sync_exit(v4);
}

- (void)updateValue:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  [(CNAsynchronousCacheEntry *)v6 withLock_compactDelegates];
  v7 = [(CNWeakArray *)v6->_delegates allObjects];
  objc_storeStrong(&v6->_currentValue, a3);
  objc_sync_exit(v6);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
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

        [*(*(&v13 + 1) + 8 * v11++) cacheEntryDidUpdateValue:{v6, v13}];
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)withLock_compactAndRemoveDelegates:(id)a3
{
  delegates = self->_delegates;
  v5 = a3;
  v6 = [(CNWeakArray *)delegates allObjects];
  v7 = [v6 mutableCopy];

  [v7 removeObjectsInArray:v5];
  [(CNWeakArray *)self->_delegates setArray:v7];
}

@end