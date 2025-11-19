@interface CPLEngineScopeCleanupTasks
+ (id)scopeTypeDescriptionForScopeType:(unint64_t)a3;
- (BOOL)addCleanupTaskForScopeWithIndex:(int64_t)a3 scopeIdentifier:(id)a4 scopeType:(unint64_t)a5 error:(id *)a6;
- (BOOL)cleanupStepHasMore:(BOOL *)a3 deletedCount:(unint64_t *)a4 error:(id *)a5;
- (BOOL)hasCleanupTasks;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineScopeCleanupTasks

- (void)writeTransactionDidSucceed
{
  v6.receiver = self;
  v6.super_class = CPLEngineScopeCleanupTasks;
  [(CPLEngineStorage *)&v6 writeTransactionDidSucceed];
  if (self->_shouldRequestACleanupToScheduler)
  {
    v3 = [(CPLEngineStorage *)self engineStore];
    v4 = [v3 engineLibrary];
    v5 = [v4 scheduler];
    [v5 noteStoreNeedsCleanup];

    self->_shouldRequestACleanupToScheduler = 0;
  }
}

- (void)writeTransactionDidFail
{
  v4.receiver = self;
  v4.super_class = CPLEngineScopeCleanupTasks;
  [(CPLEngineStorage *)&v4 writeTransactionDidFail];
  remainingStoragesToCleanup = self->_remainingStoragesToCleanup;
  self->_remainingStoragesToCleanup = 0;

  self->_currentCleanupScopeIndex = 0;
  self->_shouldRequestACleanupToScheduler = 0;
}

- (BOOL)hasCleanupTasks
{
  v2 = [(CPLEngineStorage *)self platformObject];
  v3 = [v2 hasCleanupTasks];

  return v3;
}

- (BOOL)cleanupStepHasMore:(BOOL *)a3 deletedCount:(unint64_t *)a4 error:(id *)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v41 = 0;
  v9 = [(CPLEngineStorage *)self platformObject];
  v10 = [v9 nextCleanupTaskScopeIndexOfType:&v41];

  *a4 = 0;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *a3 = 1;
    if (self->_currentCleanupScopeIndex != v10)
    {
      v13 = [(CPLEngineStorage *)self engineStore];
      v14 = [v13 storages];

      self->_currentCleanupScopeIndex = v10;
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
      remainingStoragesToCleanup = self->_remainingStoragesToCleanup;
      self->_remainingStoragesToCleanup = v15;

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v17 = v14;
      v18 = [v17 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v38;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v38 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v37 + 1) + 8 * i);
            if ([v22 isAlive])
            {
              v23 = [v22 scopeType];
              if (v23 == v41)
              {
                [(NSMutableArray *)self->_remainingStoragesToCleanup addObject:v22];
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v19);
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v24 = __CPLStorageOSLogDomain_9089();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          currentCleanupScopeIndex = self->_currentCleanupScopeIndex;
          v26 = [(NSMutableArray *)self->_remainingStoragesToCleanup valueForKey:@"name"];
          *buf = 134218242;
          v43 = currentCleanupScopeIndex;
          v44 = 2114;
          v45 = v26;
          _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEFAULT, "Will cleanup scope index %ld in %{public}@", buf, 0x16u);
        }
      }
    }

    v27 = [(NSMutableArray *)self->_remainingStoragesToCleanup firstObject];
    v28 = v27;
    if (v27)
    {
      v36 = 0;
      if (![v27 deleteRecordsForScopeIndex:self->_currentCleanupScopeIndex maxCount:1000 deletedCount:&v36 error:a5])
      {
        v12 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v29 = v36;
      *a4 = v36;
      if (v29)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v30 = __CPLStorageOSLogDomain_9089();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v36;
            v32 = [v28 name];
            *buf = 134218242;
            v43 = v31;
            v44 = 2114;
            v45 = v32;
            _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_DEFAULT, "Deleted %ld records in %{public}@", buf, 0x16u);
          }
        }
      }

      else
      {
        [(NSMutableArray *)self->_remainingStoragesToCleanup removeObjectAtIndex:0];
      }
    }

    if ([(NSMutableArray *)self->_remainingStoragesToCleanup count])
    {
      v12 = 1;
    }

    else
    {
      v33 = [(CPLEngineStorage *)self platformObject];
      v12 = [v33 deleteCleanupTaskForScopeWithIndex:self->_currentCleanupScopeIndex error:a5];
    }

    goto LABEL_31;
  }

  self->_currentCleanupScopeIndex = 0;
  v11 = self->_remainingStoragesToCleanup;
  self->_remainingStoragesToCleanup = 0;

  *a3 = 0;
  v12 = 1;
LABEL_32:
  v34 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)addCleanupTaskForScopeWithIndex:(int64_t)a3 scopeIdentifier:(id)a4 scopeType:(unint64_t)a5 error:(id *)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = [(CPLEngineStorage *)self platformObject];
  v12 = [v11 addCleanupTaskForScopeWithIndex:a3 scopeIdentifier:v10 scopeType:a5 error:a6];

  if (v12)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLStorageOSLogDomain_9089();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [objc_opt_class() scopeTypeDescriptionForScopeType:a5];
        v17 = 138412802;
        v18 = v14;
        v19 = 2112;
        v20 = v10;
        v21 = 2048;
        v22 = a3;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Scheduling cleanup of %@ for %@ as index %ld", &v17, 0x20u);
      }
    }

    self->_shouldRequestACleanupToScheduler = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)scopeTypeDescriptionForScopeType:(unint64_t)a3
{
  if (a3 - 1 >= 3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown %lu", a3];
  }

  else
  {
    v4 = off_1E861CB78[a3 - 1];
  }

  return v4;
}

@end