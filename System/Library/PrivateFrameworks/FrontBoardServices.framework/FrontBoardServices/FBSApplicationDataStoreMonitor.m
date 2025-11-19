@interface FBSApplicationDataStoreMonitor
- (BOOL)_hasObserver:(id)a3;
- (FBSApplicationDataStoreMonitor)initWithClient:(id)a3;
- (void)addObserver:(id)a3;
- (void)applicationDataStoreRepositoryClient:(id)a3 application:(id)a4 changedObject:(id)a5 forKey:(id)a6;
- (void)applicationDataStoreRepositoryClient:(id)a3 storeInvalidatedForApplication:(id)a4;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation FBSApplicationDataStoreMonitor

- (FBSApplicationDataStoreMonitor)initWithClient:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FBSApplicationDataStoreMonitor;
  v5 = [(FBSApplicationDataStoreMonitor *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    if (v4)
    {
      v7 = v4;
      v8 = 0;
      client = v6->_client;
      v6->_client = v7;
    }

    else
    {
      client = +[FBSApplicationDataStoreClientFactory sharedInstance];
      v10 = [client checkout];
      v11 = v6->_client;
      v6->_client = v10;

      v8 = 1;
    }

    v6->_clientNeedsCheckin = v8;
    [(FBSApplicationDataStoreRepositoryClient *)v6->_client addObserver:v6];
    v12 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_observers = v6->_lock_observers;
    v6->_lock_observers = v12;
  }

  return v6;
}

- (void)dealloc
{
  [(FBSApplicationDataStoreRepositoryClient *)self->_client removeObserver:self];
  if (self->_clientNeedsCheckin)
  {
    v3 = +[FBSApplicationDataStoreClientFactory sharedInstance];
    [v3 checkin];
  }

  v4.receiver = self;
  v4.super_class = FBSApplicationDataStoreMonitor;
  [(FBSApplicationDataStoreMonitor *)&v4 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_hasObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSHashTable *)self->_lock_observers containsObject:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)applicationDataStoreRepositoryClient:(id)a3 application:(id)a4 changedObject:(id)a5 forKey:(id)a6
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a6;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 dataStoreMonitor:self didUpdateApplication:v8 forKey:{v9, v17}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)applicationDataStoreRepositoryClient:(id)a3 storeInvalidatedForApplication:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(NSHashTable *)self->_lock_observers allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 dataStoreMonitor:self didInvalidateApplication:{v5, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

@end