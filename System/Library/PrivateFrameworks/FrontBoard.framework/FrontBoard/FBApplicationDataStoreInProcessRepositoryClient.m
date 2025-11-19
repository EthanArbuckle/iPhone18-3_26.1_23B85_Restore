@interface FBApplicationDataStoreInProcessRepositoryClient
- (BOOL)prefetchedObjectIfAvailableForKey:(id)a3 application:(id)a4 outObject:(id *)a5;
- (FBApplicationDataStoreInProcessRepositoryClient)init;
- (FBApplicationDataStoreInProcessRepositoryClient)initWithDataStore:(id)a3;
- (id)_observers;
- (id)_prefetchQueue_prefetchedKeysForApplication:(id)a3;
- (id)availableDataStores;
- (id)migrateIdentifier:(id)a3 toIdentifier:(id)a4;
- (id)objectForKey:(id)a3 forApplication:(id)a4;
- (void)_invalidateCacheIfObjectIsNotEqual:(id)a3 forKey:(id)a4 forApplication:(id)a5;
- (void)_prefetchQueue_updateNotificationListeners;
- (void)_repositoryInvalidated:(id)a3;
- (void)_updateCacheIfNecessaryWithObject:(id)a3 forKey:(id)a4 forApplication:(id)a5;
- (void)_updateNotificationListeners;
- (void)_valueChanged:(id)a3;
- (void)addObserver:(id)a3;
- (void)addPrefetchedKeys:(id)a3;
- (void)objectForKey:(id)a3 forApplication:(id)a4 withResult:(id)a5;
- (void)removeAllObjectsForApplication:(id)a3 withCompletion:(id)a4;
- (void)removeObjectForKey:(id)a3 forApplication:(id)a4 withCompletion:(id)a5;
- (void)removeObserver:(id)a3;
- (void)removePrefetchedKeys:(id)a3 withCompletion:(id)a4;
- (void)setObject:(id)a3 forKey:(id)a4 forApplication:(id)a5 withCompletion:(id)a6;
- (void)synchronizeWithCompletion:(id)a3;
@end

@implementation FBApplicationDataStoreInProcessRepositoryClient

- (id)_observers
{
  os_unfair_lock_assert_not_owner(&self->_observersLock);
  os_unfair_lock_lock(&self->_observersLock);
  v3 = [(NSHashTable *)self->_observersLock_observers allObjects];
  os_unfair_lock_unlock(&self->_observersLock);

  return v3;
}

- (FBApplicationDataStoreInProcessRepositoryClient)init
{
  v3 = +[FBApplicationDataStoreRepositoryManager sharedInstance];
  v4 = [v3 dataStore];
  v5 = [(FBApplicationDataStoreInProcessRepositoryClient *)self initWithDataStore:v4];

  return v5;
}

- (FBApplicationDataStoreInProcessRepositoryClient)initWithDataStore:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = FBApplicationDataStoreInProcessRepositoryClient;
  v6 = [(FBApplicationDataStoreInProcessRepositoryClient *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStore, a3);
    Serial = BSDispatchQueueCreateSerial();
    clientCalloutQueue = v7->_clientCalloutQueue;
    v7->_clientCalloutQueue = Serial;

    v10 = objc_alloc_init(MEMORY[0x1E696AB50]);
    prefetchedKeys = v7->_prefetchedKeys;
    v7->_prefetchedKeys = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    prefetchedKeyValues = v7->_prefetchedKeyValues;
    v7->_prefetchedKeyValues = v12;

    v14 = BSDispatchQueueCreateSerial();
    prefetchQueue = v7->_prefetchQueue;
    v7->_prefetchQueue = v14;

    v7->_observersLock._os_unfair_lock_opaque = 0;
    v16 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observersLock_observers = v7->_observersLock_observers;
    v7->_observersLock_observers = v16;
  }

  return v7;
}

- (void)addPrefetchedKeys:(id)a3
{
  v4 = a3;
  prefetchQueue = self->_prefetchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__FBApplicationDataStoreInProcessRepositoryClient_addPrefetchedKeys___block_invoke;
  v7[3] = &unk_1E783B240;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(prefetchQueue, v7);
}

void __69__FBApplicationDataStoreInProcessRepositoryClient_addPrefetchedKeys___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [*(*(a1 + 40) + 16) addObject:v8];
        if ([*(*(a1 + 40) + 16) countForObject:v8] == 1)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if ([v2 count])
  {
    v9 = [*(*(a1 + 40) + 8) allObjectsForKeys:v2];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__FBApplicationDataStoreInProcessRepositoryClient_addPrefetchedKeys___block_invoke_2;
    v11[3] = &unk_1E783D668;
    v11[4] = *(a1 + 40);
    [v9 enumerateKeysAndObjectsUsingBlock:v11];
    [*(a1 + 40) _prefetchQueue_updateNotificationListeners];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __69__FBApplicationDataStoreInProcessRepositoryClient_addPrefetchedKeys___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = *(*(a1 + 32) + 24);
  v6 = a3;
  v7 = [v5 objectForKey:v11];
  v8 = v7;
  if (v7)
  {
    [v7 addEntriesFromDictionary:v6];
  }

  else
  {
    v9 = *(*(a1 + 32) + 24);
    v10 = [v6 mutableCopy];

    [v9 setObject:v10 forKey:v11];
    v6 = v10;
  }
}

- (void)removePrefetchedKeys:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  prefetchQueue = self->_prefetchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__FBApplicationDataStoreInProcessRepositoryClient_removePrefetchedKeys_withCompletion___block_invoke;
  block[3] = &unk_1E783B240;
  v9 = v6;
  v14 = v9;
  v15 = self;
  dispatch_sync(prefetchQueue, block);
  if (v7)
  {
    clientCalloutQueue = self->_clientCalloutQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__FBApplicationDataStoreInProcessRepositoryClient_removePrefetchedKeys_withCompletion___block_invoke_3;
    v11[3] = &unk_1E783B9B8;
    v12 = v7;
    dispatch_async(clientCalloutQueue, v11);
  }
}

void __87__FBApplicationDataStoreInProcessRepositoryClient_removePrefetchedKeys_withCompletion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        [*(*(a1 + 40) + 16) removeObject:v8];
        if (![*(*(a1 + 40) + 16) countForObject:v8])
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v9 = *(*(a1 + 40) + 24);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__FBApplicationDataStoreInProcessRepositoryClient_removePrefetchedKeys_withCompletion___block_invoke_2;
  v12[3] = &unk_1E783D690;
  v13 = v2;
  v10 = v2;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];
  [*(a1 + 40) _prefetchQueue_updateNotificationListeners];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_updateNotificationListeners
{
  prefetchQueue = self->_prefetchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__FBApplicationDataStoreInProcessRepositoryClient__updateNotificationListeners__block_invoke;
  block[3] = &unk_1E783B580;
  block[4] = self;
  dispatch_sync(prefetchQueue, block);
}

- (void)_prefetchQueue_updateNotificationListeners
{
  prefetchQueue = self->_prefetchQueue;
  BSDispatchQueueAssert();
  v4 = [(NSCountedSet *)self->_prefetchedKeys count];
  v5 = [(FBApplicationDataStoreInProcessRepositoryClient *)self _observers];
  v6 = v4 | [v5 count];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  if (v6)
  {
    [v7 addObserver:self selector:sel__valueChanged_ name:@"FBApplicationStoreRepositoryChangeNotification" object:0];
    [v7 addObserver:self selector:sel__repositoryInvalidated_ name:@"FBApplicationStoreRepositoryInvalidatedNotification" object:0];
  }

  else
  {
    [v7 removeObserver:self name:@"FBApplicationStoreRepositoryChangeNotification" object:0];
    [v7 removeObserver:self name:@"FBApplicationStoreRepositoryInvalidatedNotification" object:0];
  }
}

- (id)_prefetchQueue_prefetchedKeysForApplication:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_prefetchQueue);
  v5 = [(NSMutableDictionary *)self->_prefetchedKeyValues objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    [(NSMutableDictionary *)self->_prefetchedKeyValues setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)_updateCacheIfNecessaryWithObject:(id)a3 forKey:(id)a4 forApplication:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  prefetchQueue = self->_prefetchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __107__FBApplicationDataStoreInProcessRepositoryClient__updateCacheIfNecessaryWithObject_forKey_forApplication___block_invoke;
  v15[3] = &unk_1E783B2D8;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_sync(prefetchQueue, v15);
}

void __107__FBApplicationDataStoreInProcessRepositoryClient__updateCacheIfNecessaryWithObject_forKey_forApplication___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  if ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)])
  {
    v3 = FBLogAppDataStore();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __107__FBApplicationDataStoreInProcessRepositoryClient__updateCacheIfNecessaryWithObject_forKey_forApplication___block_invoke_cold_1(v2, a1);
    }

    v4 = [*(a1 + 32) _prefetchQueue_prefetchedKeysForApplication:*(a1 + 48)];
    v5 = v4;
    v6 = *(a1 + 56);
    if (v6)
    {
      [v4 setObject:v6 forKey:*(a1 + 40)];
    }

    else
    {
      [v4 removeObjectForKey:*(a1 + 40)];
    }
  }
}

- (void)_invalidateCacheIfObjectIsNotEqual:(id)a3 forKey:(id)a4 forApplication:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  prefetchQueue = self->_prefetchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __108__FBApplicationDataStoreInProcessRepositoryClient__invalidateCacheIfObjectIsNotEqual_forKey_forApplication___block_invoke;
  v15[3] = &unk_1E783B2D8;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(prefetchQueue, v15);
}

void __108__FBApplicationDataStoreInProcessRepositoryClient__invalidateCacheIfObjectIsNotEqual_forKey_forApplication___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  if ([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)])
  {
    v3 = FBLogAppDataStore();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __108__FBApplicationDataStoreInProcessRepositoryClient__invalidateCacheIfObjectIsNotEqual_forKey_forApplication___block_invoke_cold_1(v2, a1);
    }

    v4 = [*(a1 + 32) _prefetchQueue_prefetchedKeysForApplication:*(a1 + 48)];
    v5 = [v4 objectForKey:*(a1 + 40)];
    v6 = *(a1 + 56);
    v7 = BSEqualObjects();
    v8 = FBLogAppDataStore();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      if (v9)
      {
        __108__FBApplicationDataStoreInProcessRepositoryClient__invalidateCacheIfObjectIsNotEqual_forKey_forApplication___block_invoke_cold_3(v8, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    else
    {
      if (v9)
      {
        __108__FBApplicationDataStoreInProcessRepositoryClient__invalidateCacheIfObjectIsNotEqual_forKey_forApplication___block_invoke_cold_2(v8, v10, v11, v12, v13, v14, v15, v16);
      }

      v8 = +[FBApplicationDataStoreInProcessRepositoryClientInvalidationSentinel sentinel];
      [v4 setObject:v8 forKey:*v2];
    }
  }
}

- (void)_valueChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:@"FBApplicationStoreRepositoryChangeApp"];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:@"FBApplicationStoreRepositoryChangeKey"];

  v9 = [v4 userInfo];

  v10 = [v9 objectForKey:@"FBApplicationStoreRepositoryChangeValue"];

  [(FBApplicationDataStoreInProcessRepositoryClient *)self _invalidateCacheIfObjectIsNotEqual:v10 forKey:v8 forApplication:v6];
  clientCalloutQueue = self->_clientCalloutQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__FBApplicationDataStoreInProcessRepositoryClient__valueChanged___block_invoke;
  v15[3] = &unk_1E783B2D8;
  v15[4] = self;
  v16 = v6;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v6;
  dispatch_async(clientCalloutQueue, v15);
}

void __65__FBApplicationDataStoreInProcessRepositoryClient__valueChanged___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) _observers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 applicationDataStoreRepositoryClient:*(a1 + 32) application:*(a1 + 40) changedObject:*(a1 + 48) forKey:*(a1 + 56)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_repositoryInvalidated:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"FBApplicationStoreRepositoryChangeApp"];

  prefetchQueue = self->_prefetchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__FBApplicationDataStoreInProcessRepositoryClient__repositoryInvalidated___block_invoke;
  block[3] = &unk_1E783B240;
  block[4] = self;
  v7 = v5;
  v13 = v7;
  dispatch_async(prefetchQueue, block);
  clientCalloutQueue = self->_clientCalloutQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__FBApplicationDataStoreInProcessRepositoryClient__repositoryInvalidated___block_invoke_2;
  v10[3] = &unk_1E783B240;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(clientCalloutQueue, v10);
}

void __74__FBApplicationDataStoreInProcessRepositoryClient__repositoryInvalidated___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) _observers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 applicationDataStoreRepositoryClient:*(a1 + 32) storeInvalidatedForApplication:*(a1 + 40)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)synchronizeWithCompletion:(id)a3
{
  v4 = a3;
  [(FBApplicationDataStoreRepository *)self->_dataStore flushSynchronously];
  if (v4)
  {
    clientCalloutQueue = self->_clientCalloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__FBApplicationDataStoreInProcessRepositoryClient_synchronizeWithCompletion___block_invoke;
    block[3] = &unk_1E783B9B8;
    v7 = v4;
    dispatch_async(clientCalloutQueue, block);
  }
}

- (id)availableDataStores
{
  v2 = [(FBApplicationDataStoreRepository *)self->_dataStore applicationIdentifiersWithState];
  if (!v2)
  {
    v2 = [MEMORY[0x1E695DEC8] array];
  }

  return v2;
}

- (id)migrateIdentifier:(id)a3 toIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v9)
  {
    [FBApplicationDataStoreInProcessRepositoryClient migrateIdentifier:a2 toIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBApplicationDataStoreInProcessRepositoryClient migrateIdentifier:a2 toIdentifier:?];
  }

  v10 = v8;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v10)
  {
    [FBApplicationDataStoreInProcessRepositoryClient migrateIdentifier:a2 toIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBApplicationDataStoreInProcessRepositoryClient migrateIdentifier:a2 toIdentifier:?];
  }

  v11 = [(FBApplicationDataStoreRepository *)self->_dataStore migrateIdentifier:v9 toIdentifier:v10];

  return v11;
}

- (void)setObject:(id)a3 forKey:(id)a4 forApplication:(id)a5 withCompletion:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = FBLogAppDataStore();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = _descriptionForObject(v10);
    *buf = 138543874;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_1A89DD000, v14, OS_LOG_TYPE_INFO, "setting object for key=%{public}@ appID=%@ object=%@", buf, 0x20u);
  }

  [(FBApplicationDataStoreInProcessRepositoryClient *)self _updateCacheIfNecessaryWithObject:v10 forKey:v11 forApplication:v12];
  [(FBApplicationDataStoreRepository *)self->_dataStore setObject:v10 forKey:v11 forApplication:v12];
  if (v13)
  {
    clientCalloutQueue = self->_clientCalloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__FBApplicationDataStoreInProcessRepositoryClient_setObject_forKey_forApplication_withCompletion___block_invoke;
    block[3] = &unk_1E783B9B8;
    v19 = v13;
    dispatch_async(clientCalloutQueue, block);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)removeObjectForKey:(id)a3 forApplication:(id)a4 withCompletion:(id)a5
{
  v8 = a5;
  [(FBApplicationDataStoreRepository *)self->_dataStore removeObjectForKey:a3 forApplication:a4];
  if (v8)
  {
    clientCalloutQueue = self->_clientCalloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__FBApplicationDataStoreInProcessRepositoryClient_removeObjectForKey_forApplication_withCompletion___block_invoke;
    block[3] = &unk_1E783B9B8;
    v11 = v8;
    dispatch_async(clientCalloutQueue, block);
  }
}

- (void)removeAllObjectsForApplication:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  [(FBApplicationDataStoreRepository *)self->_dataStore removeAllObjectsForApplication:a3];
  if (v6)
  {
    clientCalloutQueue = self->_clientCalloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__FBApplicationDataStoreInProcessRepositoryClient_removeAllObjectsForApplication_withCompletion___block_invoke;
    block[3] = &unk_1E783B9B8;
    v9 = v6;
    dispatch_async(clientCalloutQueue, block);
  }
}

- (id)objectForKey:(id)a3 forApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = FBLogAppDataStore();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [FBApplicationDataStoreInProcessRepositoryClient objectForKey:forApplication:];
  }

  v14 = 0;
  v9 = [(FBApplicationDataStoreInProcessRepositoryClient *)self prefetchedObjectIfAvailableForKey:v6 application:v7 outObject:&v14];
  v10 = v14;
  if (v9)
  {
    v11 = FBLogAppDataStore();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FBApplicationDataStoreInProcessRepositoryClient objectForKey:v10 forApplication:?];
    }

    v12 = v10;
  }

  else
  {
    v12 = [(FBApplicationDataStoreRepository *)self->_dataStore objectForKey:v6 forApplication:v7];

    if (!v12)
    {
      goto LABEL_11;
    }

    v11 = FBLogAppDataStore();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [FBApplicationDataStoreInProcessRepositoryClient objectForKey:v12 forApplication:?];
    }
  }

LABEL_11:

  return v12;
}

- (void)objectForKey:(id)a3 forApplication:(id)a4 withResult:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = FBLogAppDataStore();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [FBApplicationDataStoreInProcessRepositoryClient objectForKey:forApplication:withResult:];
  }

  if (v10)
  {
    v23 = 0;
    v12 = [(FBApplicationDataStoreInProcessRepositoryClient *)self prefetchedObjectIfAvailableForKey:v8 application:v9 outObject:&v23];
    v13 = v23;
    if (v12)
    {
      v14 = FBLogAppDataStore();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [FBApplicationDataStoreInProcessRepositoryClient objectForKey:v13 forApplication:?];
      }

      v15 = v13;
    }

    else
    {
      v15 = [(FBApplicationDataStoreRepository *)self->_dataStore objectForKey:v8 forApplication:v9];

      v14 = FBLogAppDataStore();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v16 = _descriptionForObject(v15);
        *buf = 138412290;
        v25 = v16;
        _os_log_impl(&dword_1A89DD000, v14, OS_LOG_TYPE_INFO, "retrieved object from store: %@", buf, 0xCu);
      }
    }

    clientCalloutQueue = self->_clientCalloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__FBApplicationDataStoreInProcessRepositoryClient_objectForKey_forApplication_withResult___block_invoke;
    block[3] = &unk_1E783C368;
    v21 = v15;
    v22 = v10;
    v18 = v15;
    dispatch_async(clientCalloutQueue, block);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)prefetchedObjectIfAvailableForKey:(id)a3 application:(id)a4 outObject:(id *)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__5;
  v41 = __Block_byref_object_dispose__5;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v10 = FBLogAppDataStore();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [FBApplicationDataStoreInProcessRepositoryClient prefetchedObjectIfAvailableForKey:application:outObject:];
  }

  prefetchQueue = self->_prefetchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__FBApplicationDataStoreInProcessRepositoryClient_prefetchedObjectIfAvailableForKey_application_outObject___block_invoke;
  block[3] = &unk_1E783D6B8;
  block[4] = self;
  v12 = v9;
  v29 = v12;
  v31 = &v37;
  v13 = v8;
  v30 = v13;
  v32 = &v33;
  dispatch_sync(prefetchQueue, block);
  if (*(v34 + 24) == 1)
  {
    v14 = FBLogAppDataStore();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = _descriptionForObject(v38[5]);
      [FBApplicationDataStoreInProcessRepositoryClient prefetchedObjectIfAvailableForKey:v15 application:buf outObject:v14];
    }

    if (a5)
    {
      v16 = v38[5];
LABEL_12:
      *a5 = v16;
    }
  }

  else
  {
    v17 = FBLogAppDataStore();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(FBApplicationDataStoreInProcessRepositoryClient *)v17 prefetchedObjectIfAvailableForKey:v18 application:v19 outObject:v20, v21, v22, v23, v24];
    }

    if (a5)
    {
      v16 = 0;
      goto LABEL_12;
    }
  }

  v25 = *(v34 + 24);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  v26 = *MEMORY[0x1E69E9840];
  return v25 & 1;
}

void __107__FBApplicationDataStoreInProcessRepositoryClient_prefetchedObjectIfAvailableForKey_application_outObject___block_invoke(void *a1)
{
  v2 = a1 + 5;
  v3 = [*(a1[4] + 24) objectForKey:a1[5]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:a1[6]];
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (*(*(a1[7] + 8) + 40) || [*(a1[4] + 16) containsObject:a1[6]])
    {
      *(*(a1[8] + 8) + 24) = 1;
    }
  }

  v8 = *(*(a1[7] + 8) + 40);
  v9 = +[FBApplicationDataStoreInProcessRepositoryClientInvalidationSentinel sentinel];

  if (v8 == v9)
  {
    v10 = FBLogAppDataStore();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __107__FBApplicationDataStoreInProcessRepositoryClient_prefetchedObjectIfAvailableForKey_application_outObject___block_invoke_cold_1(a1, v2, v10);
    }

    v11 = [*(a1[4] + 8) objectForKey:a1[6] forApplication:a1[5]];
    v12 = *(a1[7] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(*(a1[7] + 8) + 40);
    if (v14)
    {
      [v4 setObject:v14 forKey:a1[6]];
    }

    else
    {
      [v4 removeObjectForKey:a1[6]];
    }
  }

  v15 = *(*(a1[7] + 8) + 40);
  v16 = [MEMORY[0x1E695DFB0] null];
  v17 = [v15 isEqual:v16];
  v18 = *(a1[7] + 8);
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v18 + 40);
  }

  objc_storeStrong((v18 + 40), v19);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_observersLock);
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observersLock_observers addObject:v4];

  os_unfair_lock_unlock(&self->_observersLock);

  [(FBApplicationDataStoreInProcessRepositoryClient *)self _updateNotificationListeners];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_observersLock);
  os_unfair_lock_lock(&self->_observersLock);
  [(NSHashTable *)self->_observersLock_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_observersLock);

  [(FBApplicationDataStoreInProcessRepositoryClient *)self _updateNotificationListeners];
}

void __107__FBApplicationDataStoreInProcessRepositoryClient__updateCacheIfNecessaryWithObject_forKey_forApplication___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 48);
  v4 = _descriptionForObject(*(a2 + 56));
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

void __108__FBApplicationDataStoreInProcessRepositoryClient__invalidateCacheIfObjectIsNotEqual_forKey_forApplication___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 48);
  v4 = _descriptionForObject(*(a2 + 56));
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)migrateIdentifier:(char *)a1 toIdentifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)migrateIdentifier:(char *)a1 toIdentifier:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)migrateIdentifier:(char *)a1 toIdentifier:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)migrateIdentifier:(char *)a1 toIdentifier:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_0(&dword_1A89DD000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)objectForKey:forApplication:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_3_3(&dword_1A89DD000, v0, v1, "fetching object for key=%{public}@ appID=%@ (synchronously)");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)objectForKey:(void *)a1 forApplication:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = _descriptionForObject(a1);
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)objectForKey:(void *)a1 forApplication:.cold.3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = _descriptionForObject(a1);
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)objectForKey:forApplication:withResult:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_3_3(&dword_1A89DD000, v0, v1, "fetching object for key=%{public}@ appID=%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)prefetchedObjectIfAvailableForKey:application:outObject:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_3_3(&dword_1A89DD000, v0, v1, "checking for prefetched object for key=%{public}@ appID=%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)prefetchedObjectIfAvailableForKey:(void *)a1 application:(uint8_t *)buf outObject:(os_log_t)log .cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1A89DD000, log, OS_LOG_TYPE_DEBUG, "found object %@", buf, 0xCu);
}

void __107__FBApplicationDataStoreInProcessRepositoryClient_prefetchedObjectIfAvailableForKey_application_outObject___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(a1 + 48);
  *&v4[12] = 2112;
  *&v4[14] = *a2;
  OUTLINED_FUNCTION_3_3(&dword_1A89DD000, a2, a3, "found invalidation sentinel for key=%{public}@ appID=%@, refreshing cache", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

@end