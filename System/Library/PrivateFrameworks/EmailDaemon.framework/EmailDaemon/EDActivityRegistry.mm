@interface EDActivityRegistry
+ (OS_os_log)log;
- (EDActivityRegistry)initWithHookRegistry:(id)a3 activityPersistence:(id)a4;
- (void)activityWithID:(id)a3 finishedWithError:(id)a4;
- (void)activityWithID:(id)a3 setCompletedCount:(int64_t)a4 totalCount:(int64_t)a5;
- (void)activityWithID:(id)a3 setUserInfoObject:(id)a4 forKey:(id)a5;
- (void)registerActivityObserver:(id)a3 completion:(id)a4;
- (void)removedActivityWithID:(id)a3;
- (void)startedActivity:(id)a3;
@end

@implementation EDActivityRegistry

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__EDActivityRegistry_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __25__EDActivityRegistry_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_0;
  log_log_0 = v1;
}

- (EDActivityRegistry)initWithHookRegistry:(id)a3 activityPersistence:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = EDActivityRegistry;
  v9 = [(EDActivityRegistry *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hookRegistry, a3);
    [(EDPersistenceHookRegistry *)v10->_hookRegistry registerActivityHookResponder:v10];
    objc_storeStrong(&v10->_activityPersistence, a4);
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    observers = v10->_observers;
    v10->_observers = v11;

    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)registerActivityObserver:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  if (([(NSMutableSet *)self->_observers containsObject:v6]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
    v8 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Activity observer is already registered"];
    (*(v7 + 2))(v7, 0, 0, v8);
  }

  else
  {
    [(NSMutableSet *)self->_observers addObject:v6];
    os_unfair_lock_unlock(&self->_lock);
    v8 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__EDActivityRegistry_registerActivityObserver_completion___block_invoke;
    v10[3] = &unk_1E8250098;
    objc_copyWeak(&v12, &location);
    v11 = v6;
    [v8 addCancelationBlock:v10];
    v9 = [(EDActivityPersistence *)self->_activityPersistence currentActivities];
    (*(v7 + 2))(v7, v8, v9, 0);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __58__EDActivityRegistry_registerActivityObserver_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  os_unfair_lock_lock(WeakRetained + 4);
  [*(WeakRetained + 1) removeObject:*(a1 + 32)];
  os_unfair_lock_unlock(WeakRetained + 4);
}

- (void)startedActivity:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v8++) startedActivity:{v4, v10}];
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x1E69E9840];
}

- (void)activityWithID:(id)a3 finishedWithError:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_observers;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        [*(*(&v13 + 1) + 8 * v11++) activityWithID:v6 finishedWithError:{v7, v13}];
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)activityWithID:(id)a3 setUserInfoObject:(id)a4 forKey:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_observers;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v14++) activityWithID:v8 setUserInfoObject:v9 forKey:{v10, v16}];
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock(&self->_lock);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)activityWithID:(id)a3 setCompletedCount:(int64_t)a4 totalCount:(int64_t)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  os_unfair_lock_lock(&self->_lock);
  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_observers;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v14++) activityWithID:v8 setCompletedCount:v9 totalCount:{v10, v16}];
      }

      while (v12 != v14);
      v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  os_unfair_lock_unlock(&self->_lock);
  v15 = *MEMORY[0x1E69E9840];
}

- (void)removedActivityWithID:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v8++) removedActivityWithID:{v4, v10}];
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x1E69E9840];
}

@end