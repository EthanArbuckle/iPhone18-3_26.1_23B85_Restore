@interface CPLEngineScopeCleanupTasks
+ (id)scopeTypeDescriptionForScopeType:(unint64_t)type;
- (BOOL)addCleanupTaskForScopeWithIndex:(int64_t)index scopeIdentifier:(id)identifier scopeType:(unint64_t)type error:(id *)error;
- (BOOL)cleanupStepHasMore:(BOOL *)more deletedCount:(unint64_t *)count error:(id *)error;
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
    engineStore = [(CPLEngineStorage *)self engineStore];
    engineLibrary = [engineStore engineLibrary];
    scheduler = [engineLibrary scheduler];
    [scheduler noteStoreNeedsCleanup];

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
  platformObject = [(CPLEngineStorage *)self platformObject];
  hasCleanupTasks = [platformObject hasCleanupTasks];

  return hasCleanupTasks;
}

- (BOOL)cleanupStepHasMore:(BOOL *)more deletedCount:(unint64_t *)count error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  v41 = 0;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v10 = [platformObject nextCleanupTaskScopeIndexOfType:&v41];

  *count = 0;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *more = 1;
    if (self->_currentCleanupScopeIndex != v10)
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      storages = [engineStore storages];

      self->_currentCleanupScopeIndex = v10;
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(storages, "count")}];
      remainingStoragesToCleanup = self->_remainingStoragesToCleanup;
      self->_remainingStoragesToCleanup = v15;

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v17 = storages;
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
              scopeType = [v22 scopeType];
              if (scopeType == v41)
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

    firstObject = [(NSMutableArray *)self->_remainingStoragesToCleanup firstObject];
    v28 = firstObject;
    if (firstObject)
    {
      v36 = 0;
      if (![firstObject deleteRecordsForScopeIndex:self->_currentCleanupScopeIndex maxCount:1000 deletedCount:&v36 error:error])
      {
        v12 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v29 = v36;
      *count = v36;
      if (v29)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v30 = __CPLStorageOSLogDomain_9089();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v36;
            name = [v28 name];
            *buf = 134218242;
            v43 = v31;
            v44 = 2114;
            v45 = name;
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
      platformObject2 = [(CPLEngineStorage *)self platformObject];
      v12 = [platformObject2 deleteCleanupTaskForScopeWithIndex:self->_currentCleanupScopeIndex error:error];
    }

    goto LABEL_31;
  }

  self->_currentCleanupScopeIndex = 0;
  v11 = self->_remainingStoragesToCleanup;
  self->_remainingStoragesToCleanup = 0;

  *more = 0;
  v12 = 1;
LABEL_32:
  v34 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)addCleanupTaskForScopeWithIndex:(int64_t)index scopeIdentifier:(id)identifier scopeType:(unint64_t)type error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v12 = [platformObject addCleanupTaskForScopeWithIndex:index scopeIdentifier:identifierCopy scopeType:type error:error];

  if (v12)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLStorageOSLogDomain_9089();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [objc_opt_class() scopeTypeDescriptionForScopeType:type];
        v17 = 138412802;
        v18 = v14;
        v19 = 2112;
        v20 = identifierCopy;
        v21 = 2048;
        indexCopy = index;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Scheduling cleanup of %@ for %@ as index %ld", &v17, 0x20u);
      }
    }

    self->_shouldRequestACleanupToScheduler = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

+ (id)scopeTypeDescriptionForScopeType:(unint64_t)type
{
  if (type - 1 >= 3)
  {
    type = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown %lu", type];
  }

  else
  {
    type = off_1E861CB78[type - 1];
  }

  return type;
}

@end