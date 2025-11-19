@interface MTTimerDurationManager
+ (id)defaultDurations;
+ (id)durationFromTimer:(id)a3;
+ (id)durationWithMinutes:(unint64_t)a3;
- (MTDurationUpdateDelegate)updateDelegate;
- (MTTimerDurationManager)initWithPersistence:(id)a3;
- (MTTimerDurationManager)initWithPersistence:(id)a3 coreDataStore:(id)a4 storage:(id)a5;
- (MTTimerDurationManager)initWithPersistence:(id)a3 storage:(id)a4;
- (id)favoriteDurations;
- (id)latestDuration;
- (id)recentDurations;
- (id)restoreDurationWithKey:(id)a3;
- (id)restoreDurationsWithKey:(id)a3;
- (void)_withLock:(id)a3;
- (void)addDuration:(id)a3 toCollection:(id)a4 withKey:(id)a5 limit:(unint64_t)a6;
- (void)addFavoriteDuration:(id)a3;
- (void)addRecentDuration:(id)a3;
- (void)clearAllDurationsWithCompletion:(id)a3;
- (void)clearPersistenceDurations;
- (void)migrateFromDefaultsToCoreData;
- (void)removeDuration:(id)a3 fromCollection:(id)a4 withKey:(id)a5 synchronize:(BOOL)a6;
- (void)removeFavoriteDuration:(id)a3;
- (void)removeRecentDuration:(id)a3;
- (void)restoreFromDataStoreSync;
- (void)restoreFromDataStoreWithCompletion:(id)a3;
- (void)restoreFromDefaults;
- (void)saveLatestDuration:(id)a3;
- (void)source:(id)a3 didAddTimers:(id)a4;
- (void)source:(id)a3 didUpdateTimers:(id)a4 fromTimers:(id)a5;
- (void)synchronizeCollection:(id)a3 withKey:(id)a4;
- (void)syncrhonizeObject:(id)a3 withKey:(id)a4;
@end

@implementation MTTimerDurationManager

- (MTTimerDurationManager)initWithPersistence:(id)a3 storage:(id)a4
{
  v6 = a4;
  v7 = [(MTTimerDurationManager *)self initWithPersistence:a3];
  if (v7)
  {
    [v6 registerObserver:v7];
  }

  return v7;
}

- (MTTimerDurationManager)initWithPersistence:(id)a3 coreDataStore:(id)a4 storage:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = MTTimerDurationManager;
  v11 = [(MTTimerDurationManager *)&v15 init];
  if (v11)
  {
    v12 = MTLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ initWithCoreDataStore", buf, 0xCu);
    }

    [v10 registerObserver:v11];
    [(MTTimerDurationManager *)v11 setPersistence:v8];
    objc_storeStrong(&v11->_coreDataStore, a4);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)restoreFromDataStoreSync
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v10 = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_INFO, "%{public}@ restoreFromDataStoreSync", buf, 0xCu);
  }

  v4 = dispatch_semaphore_create(0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__MTTimerDurationManager_restoreFromDataStoreSync__block_invoke;
  v7[3] = &unk_1E7B0C9D8;
  v8 = v4;
  v5 = v4;
  [(MTTimerDurationManager *)self restoreFromDataStoreWithCompletion:v7];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)restoreFromDataStoreWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ restoreFromDataStoreWithCompletion", buf, 0xCu);
  }

  coreDataStore = self->_coreDataStore;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__MTTimerDurationManager_restoreFromDataStoreWithCompletion___block_invoke;
  v9[3] = &unk_1E7B0E0A0;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  [(MTCDDataStore *)coreDataStore getRecentsFavoritesLatestWithCompletion:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __61__MTTimerDurationManager_restoreFromDataStoreWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__MTTimerDurationManager_restoreFromDataStoreWithCompletion___block_invoke_2;
  v21[3] = &unk_1E7B0D7F8;
  v21[4] = v10;
  v11 = v7;
  v22 = v11;
  v12 = v8;
  v23 = v12;
  v13 = v9;
  v24 = v13;
  [v10 _withLock:v21];
  v20 = *(a1 + 40);
  if (v20)
  {
    (*(v20 + 16))(v20, v14, v15, v16, v17, v18, v19);
  }
}

void __61__MTTimerDurationManager_restoreFromDataStoreWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 40) na_map:&__block_literal_global_18];
  v3 = [v2 mutableCopy];
  [*(a1 + 32) set_recentDurations:v3];

  v4 = [*(a1 + 48) na_map:&__block_literal_global_10];
  v5 = [v4 mutableCopy];
  [*(a1 + 32) set_favoriteDurations:v5];

  if (*(a1 + 56))
  {
    v6 = [[MTTimerDuration alloc] initWithMTCDDuration:*(a1 + 56)];
    [*(a1 + 32) set_latestDuration:v6];
  }
}

MTTimerDuration *__61__MTTimerDurationManager_restoreFromDataStoreWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MTTimerDuration alloc] initWithMTCDDuration:v2];

  return v3;
}

MTTimerDuration *__61__MTTimerDurationManager_restoreFromDataStoreWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MTTimerDuration alloc] initWithMTCDDuration:v2];

  return v3;
}

- (void)migrateFromDefaultsToCoreData
{
  [(MTTimerDurationManager *)self restoreFromDefaults];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__MTTimerDurationManager_migrateFromDefaultsToCoreData__block_invoke;
  v3[3] = &unk_1E7B0C9D8;
  v3[4] = self;
  [(MTTimerDurationManager *)self _withLock:v3];
}

void __55__MTTimerDurationManager_migrateFromDefaultsToCoreData__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _recentDurations];
  v3 = [v2 count];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = v4[7];
    v6 = [v4 _recentDurations];
    [v5 addDurations:v6 isFavorite:0];
  }

  v7 = [*(a1 + 32) _favoriteDurations];
  v8 = [v7 count];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = v9[7];
    v11 = [v9 _favoriteDurations];
    [v10 addDurations:v11 isFavorite:1];
  }
}

- (MTTimerDurationManager)initWithPersistence:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MTTimerDurationManager;
  v5 = [(MTTimerDurationManager *)&v9 init];
  if (v5)
  {
    v6 = MTLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ initWithPersistence", buf, 0xCu);
    }

    [(MTTimerDurationManager *)v5 setPersistence:v4];
    [(MTTimerDurationManager *)v5 restoreFromDefaults];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)restoreFromDefaults
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__MTTimerDurationManager_restoreFromDefaults__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTTimerDurationManager *)self _withLock:v2];
}

void __45__MTTimerDurationManager_restoreFromDefaults__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) restoreDurationsWithKey:@"kMTTimerDurationRecents"];
  v3 = [v2 mutableCopy];
  [*(a1 + 32) set_recentDurations:v3];

  v4 = [*(a1 + 32) restoreDurationsWithKey:@"kMTTimerDurationFavorites"];
  v5 = [v4 mutableCopy];
  [*(a1 + 32) set_favoriteDurations:v5];

  v6 = [*(a1 + 32) restoreDurationWithKey:@"kMTTimerDurationLatest"];
  [*(a1 + 32) set_latestDuration:v6];
}

- (id)recentDurations
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__6;
  v9 = __Block_byref_object_dispose__6;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__MTTimerDurationManager_recentDurations__block_invoke;
  v4[3] = &unk_1E7B0CAC0;
  v4[4] = self;
  v4[5] = &v5;
  [(MTTimerDurationManager *)self _withLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __41__MTTimerDurationManager_recentDurations__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _recentDurations];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addRecentDuration:(id)a3
{
  v4 = a3;
  v5 = [(MTTimerDurationManager *)self _recentDurations];
  [(MTTimerDurationManager *)self addDuration:v4 toCollection:v5 withKey:@"kMTTimerDurationRecents" limit:20];

  v7 = [(MTTimerDurationManager *)self updateDelegate];
  v6 = [(MTTimerDurationManager *)self recentDurations];
  [v7 recentTimerDurationsDidUpdate:v6];
}

- (void)removeRecentDuration:(id)a3
{
  v4 = a3;
  if (+[MTFeatures supportsCoreData])
  {
    [(MTCDDataStore *)self->_coreDataStore deleteDuration:v4 isFavorite:0];
    v5 = [(MTTimerDurationManager *)self _recentDurations];
    [(MTTimerDurationManager *)self removeDuration:v4 fromCollection:v5 withKey:@"kMTTimerDurationRecents" synchronize:0];
  }

  else
  {
    v5 = [(MTTimerDurationManager *)self _recentDurations];
    [(MTTimerDurationManager *)self removeDuration:v4 fromCollection:v5 withKey:@"kMTTimerDurationRecents"];
  }

  v7 = [(MTTimerDurationManager *)self updateDelegate];
  v6 = [(MTTimerDurationManager *)self recentDurations];
  [v7 recentTimerDurationsDidUpdate:v6];
}

- (void)addDuration:(id)a3 toCollection:(id)a4 withKey:(id)a5 limit:(unint64_t)a6
{
  v25[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[MTFeatures supportsCoreData];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__MTTimerDurationManager_addDuration_toCollection_withKey_limit___block_invoke;
  v19[3] = &unk_1E7B0E0C8;
  v14 = v11;
  v20 = v14;
  v15 = v10;
  v22 = self;
  v23 = a6;
  v24 = v13;
  v21 = v15;
  [(MTTimerDurationManager *)self _withLock:v19];
  if (v13)
  {
    coreDataStore = self->_coreDataStore;
    v25[0] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [(MTCDDataStore *)coreDataStore addDurations:v17 isFavorite:0];
  }

  else
  {
    [(MTTimerDurationManager *)self synchronizeCollection:v14 withKey:v12];
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t __65__MTTimerDurationManager_addDuration_toCollection_withKey_limit___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) containsObject:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    if ([*(a1 + 32) count] >= *(a1 + 56))
    {
      v3 = [*(a1 + 32) count] - *(a1 + 56);
      if (*(a1 + 64) == 1)
      {
        v4 = [*(a1 + 32) subarrayWithRange:{0, v3 + 1}];
        v10 = 0u;
        v11 = 0u;
        v12 = 0u;
        v13 = 0u;
        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v11;
          do
          {
            v8 = 0;
            do
            {
              if (*v11 != v7)
              {
                objc_enumerationMutation(v4);
              }

              [*(*(a1 + 48) + 56) deleteDuration:*(*(&v10 + 1) + 8 * v8++) isFavorite:0];
            }

            while (v6 != v8);
            v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
          }

          while (v6);
        }
      }

      [*(a1 + 32) removeObjectsInRange:{0, v3 + 1}];
    }

    result = [*(a1 + 32) addObject:*(a1 + 40)];
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)removeDuration:(id)a3 fromCollection:(id)a4 withKey:(id)a5 synchronize:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __76__MTTimerDurationManager_removeDuration_fromCollection_withKey_synchronize___block_invoke;
  v18 = &unk_1E7B0C928;
  v13 = v11;
  v19 = v13;
  v20 = v10;
  v14 = v10;
  [(MTTimerDurationManager *)self _withLock:&v15];
  if (v6)
  {
    [(MTTimerDurationManager *)self synchronizeCollection:v13 withKey:v12, v15, v16, v17, v18, v19, v20];
  }
}

uint64_t __76__MTTimerDurationManager_removeDuration_fromCollection_withKey_synchronize___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) containsObject:*(a1 + 40)];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 removeObject:v4];
  }

  return result;
}

- (id)restoreDurationsWithKey:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = self;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ restoring timer durations", buf, 0xCu);
  }

  v6 = [(MTTimerDurationManager *)self persistence];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    v16 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v7 error:&v16];
    v9 = v16;
    if (v9)
    {
      v10 = MTLogForCategory(4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v18 = self;
        v19 = 2114;
        v20 = v4;
        v21 = 2114;
        v22 = v9;
        _os_log_error_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_ERROR, "%{public}@ error decoding durations with key: %{public}@, %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v9 = MTLogForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = self;
      _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ no recent timer durations restored", buf, 0xCu);
    }

    v8 = 0;
  }

  v11 = MTLogForCategory(4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v18 = self;
    v19 = 2114;
    v20 = v8;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ restored durations: %{public}@ with key: %{public}@", buf, 0x20u);
  }

  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)synchronizeCollection:(id)a3 withKey:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = MTLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = self;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ synchronizing timer durations with key: %{public}@", buf, 0x16u);
  }

  v15 = 0;
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v15];

  v10 = v15;
  if (v10)
  {
    v11 = MTLogForCategory(8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(MTTimerDurationManager *)self synchronizeCollection:v10 withKey:v11];
    }
  }

  else
  {
    v12 = MTLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = self;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ synchronized recent durations successfully", buf, 0xCu);
    }

    v13 = [(MTTimerDurationManager *)self persistence];
    [v13 setObject:v9 forKey:v6];

    v11 = [(MTTimerDurationManager *)self persistence];
    [v11 synchronize];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)restoreDurationWithKey:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = self;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ restoring timer duration with key: %{public}@ ", buf, 0x16u);
  }

  v6 = [(MTTimerDurationManager *)self persistence];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    v14 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v14];
    v9 = v14;
    if (v9)
    {
      v10 = MTLogForCategory(4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v16 = self;
        v17 = 2114;
        v18 = v4;
        v19 = 2114;
        v20 = v9;
        _os_log_error_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_ERROR, "%{public}@ error decoding duration with key: %{public}@, %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v9 = MTLogForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v4;
      _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ no timer duration restored with key: %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

  v11 = MTLogForCategory(4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v16 = self;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ restored duration: %{public}@ with key: %{public}@", buf, 0x20u);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)syncrhonizeObject:(id)a3 withKey:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = MTLogForCategory(4);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = self;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&dword_1B1F9F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ synchronizing timer duration with key: %{public}@", buf, 0x16u);
  }

  v15 = 0;
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v15];

  v10 = v15;
  if (v10)
  {
    v11 = MTLogForCategory(8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v17 = self;
      v18 = 2114;
      v19 = v6;
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&dword_1B1F9F000, v11, OS_LOG_TYPE_ERROR, "%{public}@ error encoding duration with key: %{public}@ error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v12 = MTLogForCategory(4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = self;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&dword_1B1F9F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ synchronized duration with key: %{public}@  successfully", buf, 0x16u);
    }

    v13 = [(MTTimerDurationManager *)self persistence];
    [v13 setObject:v9 forKey:v6];

    v11 = [(MTTimerDurationManager *)self persistence];
    [v11 synchronize];
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)defaultDurations
{
  v14[8] = *MEMORY[0x1E69E9840];
  v3 = [a1 durationWithMinutes:1];
  v14[0] = v3;
  v4 = [a1 durationWithMinutes:3];
  v14[1] = v4;
  v5 = [a1 durationWithMinutes:5];
  v14[2] = v5;
  v6 = [a1 durationWithMinutes:10];
  v14[3] = v6;
  v7 = [a1 durationWithMinutes:15];
  v14[4] = v7;
  v8 = [a1 durationWithMinutes:30];
  v14[5] = v8;
  v9 = [a1 durationWithMinutes:60];
  v14[6] = v9;
  v10 = [a1 durationWithMinutes:120];
  v14[7] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:8];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)durationWithMinutes:(unint64_t)a3
{
  v5 = [MTTimerDuration alloc];
  [a1 intervalWithMinutes:a3];
  v6 = [(MTTimerDuration *)v5 initWithTitle:0 duration:?];

  return v6;
}

- (void)clearAllDurationsWithCompletion:(id)a3
{
  v4 = a3;
  if (+[MTFeatures supportsCoreData])
  {
    [(MTCDDataStore *)self->_coreDataStore deleteAllDurations];
    [(MTTimerDurationManager *)self restoreFromDataStoreWithCompletion:v4];
  }

  else
  {
    [(MTTimerDurationManager *)self clearPersistenceDurations];
    if (v4)
    {
      v4[2]();
    }
  }
}

- (void)clearPersistenceDurations
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __51__MTTimerDurationManager_clearPersistenceDurations__block_invoke;
  v2[3] = &unk_1E7B0C9D8;
  v2[4] = self;
  [(MTTimerDurationManager *)self _withLock:v2];
}

void __51__MTTimerDurationManager_clearPersistenceDurations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _recentDurations];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) persistence];
  [v3 removeObjectForKey:@"kMTTimerDurationRecents"];

  v4 = [*(a1 + 32) _favoriteDurations];
  [v4 removeAllObjects];

  v5 = [*(a1 + 32) persistence];
  [v5 removeObjectForKey:@"kMTTimerDurationFavorites"];

  [*(a1 + 32) set_latestDuration:0];
  v6 = [*(a1 + 32) persistence];
  [v6 removeObjectForKey:@"kMTTimerDurationLatest"];

  v7 = [*(a1 + 32) persistence];
  [v7 synchronize];
}

- (id)favoriteDurations
{
  v2 = [(MTTimerDurationManager *)self _favoriteDurations];
  v3 = [v2 copy];

  return v3;
}

- (void)addFavoriteDuration:(id)a3
{
  v4 = a3;
  v5 = [(MTTimerDurationManager *)self _favoriteDurations];
  [(MTTimerDurationManager *)self addDuration:v4 toCollection:v5 withKey:@"kMTTimerDurationFavorites" limit:20];

  v8 = [(MTTimerDurationManager *)self updateDelegate];
  v6 = [(MTTimerDurationManager *)self _favoriteDurations];
  v7 = [v6 copy];
  [v8 favoriteTimerDurationsDidUpdate:v7];
}

- (void)removeFavoriteDuration:(id)a3
{
  v4 = a3;
  v5 = [(MTTimerDurationManager *)self _favoriteDurations];
  [(MTTimerDurationManager *)self removeDuration:v4 fromCollection:v5 withKey:@"kMTTimerDurationFavorites"];

  v8 = [(MTTimerDurationManager *)self updateDelegate];
  v6 = [(MTTimerDurationManager *)self _favoriteDurations];
  v7 = [v6 copy];
  [v8 favoriteTimerDurationsDidUpdate:v7];
}

- (id)latestDuration
{
  v2 = [(MTTimerDurationManager *)self _latestDuration];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [objc_opt_class() durationWithMinutes:15];
  }

  v5 = v4;

  return v5;
}

- (void)saveLatestDuration:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MTTimerDurationManager *)self set_latestDuration:v4];
  [(MTTimerDurationManager *)self syncrhonizeObject:v4 withKey:@"kMTTimerDurationLatest"];
  v5 = MTLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTTimerDurationManager *)self updateDelegate];
    v10 = 138543874;
    v11 = self;
    v12 = 2114;
    v13 = v6;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ saved latest duration, calling update delegate %{public}@ with duration: %{public}@", &v10, 0x20u);
  }

  v7 = [(MTTimerDurationManager *)self updateDelegate];
  v8 = [v4 copy];
  [v7 latestTimerDurationDidUpdate:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didAddTimers:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MTLogForCategory(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = self;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ didAddTimers %{public}@", &v10, 0x16u);
  }

  v7 = [v5 firstObject];
  if ([v7 state] == 3)
  {
    v8 = [objc_opt_class() durationFromTimer:v7];
    [(MTTimerDurationManager *)self saveLatestDuration:v8];
    [(MTTimerDurationManager *)self addRecentDuration:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)source:(id)a3 didUpdateTimers:(id)a4 fromTimers:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = MTLogForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543874;
    v16 = self;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_1B1F9F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ didUpdateTimers fromTimers: %{public}@ toTimers: %{public}@", &v15, 0x20u);
  }

  v10 = [v8 firstObject];
  v11 = [v7 firstObject];
  v12 = v11;
  if (v10 && v11 && [v10 state] != 3 && objc_msgSend(v12, "state") == 3)
  {
    v13 = [objc_opt_class() durationFromTimer:v12];
    [(MTTimerDurationManager *)self saveLatestDuration:v13];
    [(MTTimerDurationManager *)self addRecentDuration:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)durationFromTimer:(id)a3
{
  v3 = a3;
  v4 = [MTTimerDuration alloc];
  v5 = [v3 isCurrentTimer];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 title];
  }

  [v3 duration];
  v8 = v7;
  v9 = [v3 sound];
  v10 = [(MTTimerDuration *)v4 initWithTitle:v6 duration:v9 sound:v8];

  if ((v5 & 1) == 0)
  {
  }

  return v10;
}

- (MTDurationUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

- (void)synchronizeCollection:(os_log_t)log withKey:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B1F9F000, log, OS_LOG_TYPE_ERROR, "%{public}@ error encoding durations: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end