@interface FCUserEventHistoryStorage
- (BOOL)isEmpty;
- (FCUserEventHistoryMetadata)metadata;
- (FCUserEventHistoryStorage)initWithRootDirectory:(id)directory configurationManager:(id)manager;
- (NSArray)sessionIDs;
- (NSArray)sessions;
- (NSDate)earliestSessionDate;
- (id)_deleteSessionsWithIdentifiers:(id)identifiers pruned:(BOOL)pruned;
- (id)_filePathForSessionID:(id)d;
- (id)pruneWithPolicies:(id)policies;
- (id)pruneWithPolicy:(id)policy;
- (id)rootDirectory;
- (id)sizeString;
- (int64_t)_sizeForSessionAtPath:(id)path;
- (unint64_t)size;
- (void)_pruneSessions:(id)sessions;
- (void)_pruneSessionsWithIdentifiers:(id)identifiers;
- (void)_pruneSessionsWithInvalidIdentifiers;
- (void)_pruneToMaxSessionAge:(unint64_t)age;
- (void)_pruneToMaxSessionCount:(unint64_t)count;
- (void)_pruneToMaxSize:(int64_t)size;
- (void)addObserver:(id)observer;
- (void)clearAllSessions;
- (void)clearHistory;
- (void)clearSessionsWithIDs:(id)ds;
- (void)readBaseDirectoryWithAccessor:(id)accessor;
- (void)removeObserver:(id)observer;
- (void)setMetadataWithAggregateStoreGenerationTime:(int64_t)time aggregateTotalCount:(int64_t)count meanCountOfEvents:(double)events standardDeviationOfEvents:(double)ofEvents totalEventsCount:(int64_t)eventsCount headlineEventCount:(int64_t)eventCount headlinesWithValidTitleEmbeddingsEventCount:(int64_t)embeddingsEventCount headlinesWithInvalidTitleEmbeddingsEventCount:(int64_t)self0 headlinesWithValidBodyEmbeddingsEventCount:(int64_t)self1 headlinesWithInvalidBodyEmbeddingsEventCount:(int64_t)self2 eventCounts:(id)self3 aggregateStoreData:(id)self4;
- (void)storeSessionID:(id)d compressedSessionData:(id)data notify:(BOOL)notify;
- (void)storeSessionID:(id)d sessionData:(id)data;
- (void)writeJSON:(id)n;
@end

@implementation FCUserEventHistoryStorage

- (FCUserEventHistoryStorage)initWithRootDirectory:(id)directory configurationManager:(id)manager
{
  directoryCopy = directory;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = FCUserEventHistoryStorage;
  v8 = [(FCUserEventHistoryStorage *)&v19 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v8->_observers;
    v8->_observers = v9;

    objc_initWeak(&location, v8);
    objc_storeStrong(&v8->_configurationManager, manager);
    v11 = objc_alloc(MEMORY[0x1E69B68D8]);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__FCUserEventHistoryStorage_initWithRootDirectory_configurationManager___block_invoke;
    v15[3] = &unk_1E7C3C818;
    objc_copyWeak(&v17, &location);
    v16 = directoryCopy;
    v12 = [v11 initWithConstructor:v15];
    lazyRootDirectory = v8->_lazyRootDirectory;
    v8->_lazyRootDirectory = v12;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v8;
}

id __72__FCUserEventHistoryStorage_initWithRootDirectory_configurationManager___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v30[1] = MEMORY[0x1E69E9820];
    v30[2] = 3221225472;
    v30[3] = __72__FCUserEventHistoryStorage_initWithRootDirectory_configurationManager___block_invoke_2;
    v30[4] = &unk_1E7C36F98;
    v31 = *(a1 + 32);
    v11 = v31;
    v4 = v31;
    goto LABEL_19;
  }

  v4 = WeakRetained;
  if (([*(a1 + 32) fc_directoryExists] & 1) == 0)
  {
    v12 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543362;
      v33 = v13;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "User event history storage initialized, creating root directory at path %{public}@", buf, 0xCu);
    }

    v14 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = *(a1 + 32);
    v30[0] = 0;
    v16 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:v30];
    v8 = v30[0];

    if (v8 && (v17 = FCUserEventsStorageLog, os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR)))
    {
      v23 = *(a1 + 32);
      v24 = v17;
      v25 = [v8 localizedDescription];
      *buf = 138543618;
      v33 = v23;
      v34 = 2114;
      v35 = v25;
      _os_log_error_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_ERROR, "Error creating event history storage root directory at %{public}@. Error: %{public}@", buf, 0x16u);

      if (v16)
      {
        goto LABEL_11;
      }
    }

    else if (v16)
    {
LABEL_11:
      v18 = [MEMORY[0x1E696AC08] defaultManager];
      [v4 setCurrentSize:{objc_msgSend(v18, "fc_sizeOfItemAtURL:error:", *(a1 + 32), 0)}];

      v19 = FCUserEventsStorageLog;
      if (!os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
      {
LABEL_17:

        goto LABEL_18;
      }

      v20 = MEMORY[0x1E696AAF0];
      v9 = v19;
      v21 = [v20 stringFromByteCount:objc_msgSend(v4 countStyle:{"currentSize"), 0}];
      v22 = *(a1 + 32);
      *buf = 138543618;
      v33 = v21;
      v34 = 2114;
      v35 = v22;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "User event history storage initialized. Current size %{public}@ at %{public}@", buf, 0x16u);

LABEL_13:
      goto LABEL_17;
    }

    v26 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      v29 = *(a1 + 32);
      *buf = 138543362;
      v33 = v29;
      _os_log_error_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_ERROR, "Failed to create user event history storage root directory at %{public}@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  [v4 setCurrentSize:{objc_msgSend(v5, "fc_sizeOfItemAtURL:error:", *(a1 + 32), 0)}];

  v6 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x1E696AAF0];
    v8 = v6;
    v9 = [v7 stringFromByteCount:objc_msgSend(v4 countStyle:{"currentSize"), 0}];
    v10 = *(a1 + 32);
    *buf = 138543618;
    v33 = v9;
    v34 = 2114;
    v35 = v10;
    _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "User event history storage initialized. Current size %{public}@ at %{public}@", buf, 0x16u);
    goto LABEL_13;
  }

LABEL_18:
  v11 = *(a1 + 32);
LABEL_19:

  v27 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)sizeString
{
  v2 = MEMORY[0x1E696AAF0];
  v3 = [(FCUserEventHistoryStorage *)self size];

  return [v2 stringFromByteCount:v3 countStyle:0];
}

- (id)rootDirectory
{
  lazyRootDirectory = [(FCUserEventHistoryStorage *)self lazyRootDirectory];
  value = [lazyRootDirectory value];

  return value;
}

- (void)addObserver:(id)observer
{
  v18 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    observers = [(FCUserEventHistoryStorage *)self observers];
    v6 = [observers containsObject:observerCopy];

    if (v6)
    {
      v7 = FCUserEventsStorageLog;
      if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v11 = observerCopy;
        _os_log_error_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_ERROR, "%p is already an observer", buf, 0xCu);
      }
    }

    observers2 = [(FCUserEventHistoryStorage *)self observers];
    [observers2 addObject:observerCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    observers2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v11 = "[FCUserEventHistoryStorage addObserver:]";
    v12 = 2080;
    v13 = "FCUserEventHistoryStorage.m";
    v14 = 1024;
    v15 = 93;
    v16 = 2114;
    v17 = observers2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)observer
{
  v15 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    observers = [(FCUserEventHistoryStorage *)self observers];
    [observers removeObject:observerCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    observers = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v8 = "[FCUserEventHistoryStorage removeObserver:]";
    v9 = 2080;
    v10 = "FCUserEventHistoryStorage.m";
    v11 = 1024;
    v12 = 105;
    v13 = 2114;
    v14 = observers;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];
}

- (id)pruneWithPolicies:(id)policies
{
  v22 = *MEMORY[0x1E69E9840];
  policiesCopy = policies;
  v5 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = policiesCopy;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "User event history storage pruning with policies %{public}@", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  policies = [policiesCopy policies];
  v7 = [policies countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(policies);
        }

        v11 = [(FCUserEventHistoryStorage *)self pruneWithPolicy:*(*(&v15 + 1) + 8 * i)];
      }

      v8 = [policies countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  prunedSessionIDs = [(FCUserEventHistoryStorage *)self prunedSessionIDs];

  v13 = *MEMORY[0x1E69E9840];

  return prunedSessionIDs;
}

- (id)pruneWithPolicy:(id)policy
{
  v18 = *MEMORY[0x1E69E9840];
  policyCopy = policy;
  type = [policyCopy type];
  if (type <= 1)
  {
    if (type)
    {
      if (type == 1)
      {
        -[FCUserEventHistoryStorage _pruneToMaxSize:](self, "_pruneToMaxSize:", [policyCopy value]);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Given an pruning policy with an unknown type"];
      v10 = 136315906;
      v11 = "[FCUserEventHistoryStorage pruneWithPolicy:]";
      v12 = 2080;
      v13 = "FCUserEventHistoryStorage.m";
      v14 = 1024;
      v15 = 138;
      v16 = 2114;
      v17 = v9;
      _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: InvalidPruningPolicy) : %s %s:%d %{public}@", &v10, 0x26u);
    }
  }

  else
  {
    switch(type)
    {
      case 2:
        -[FCUserEventHistoryStorage _pruneToMaxSessionCount:](self, "_pruneToMaxSessionCount:", [policyCopy value]);
        break;
      case 3:
        -[FCUserEventHistoryStorage _pruneToMaxSessionAge:](self, "_pruneToMaxSessionAge:", [policyCopy value]);
        break;
      case 4:
        [(FCUserEventHistoryStorage *)self _pruneSessionsWithInvalidIdentifiers];
        break;
    }
  }

  prunedSessionIDs = [(FCUserEventHistoryStorage *)self prunedSessionIDs];

  v7 = *MEMORY[0x1E69E9840];

  return prunedSessionIDs;
}

- (void)clearSessionsWithIDs:(id)ds
{
  v24 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    *buf = 134217984;
    v17 = [dsCopy count];
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "User event history storage will attempt to clear %lu sessions", buf, 0xCu);
  }

  v7 = [(FCUserEventHistoryStorage *)self _deleteSessionsWithIdentifiers:dsCopy pruned:0];
  v8 = [v7 count];
  if (v8 >= [dsCopy count])
  {
    v12 = [v7 count];
    if (v12 <= [dsCopy count])
    {
      v13 = FCUserEventsStorageLog;
      if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v13;
        v14 = [dsCopy count];
        *buf = 134217984;
        v17 = v14;
        _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "Successfully cleared %lu sessions", buf, 0xCu);
        goto LABEL_11;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Somehow cleared %lu sessions even though only %lu sessions were requested to be cleared", objc_msgSend(v7, "count"), objc_msgSend(dsCopy, "count")];
      *buf = 136315906;
      v17 = "[FCUserEventHistoryStorage clearSessionsWithIDs:]";
      v18 = 2080;
      v19 = "FCUserEventHistoryStorage.m";
      v20 = 1024;
      v21 = 151;
      v22 = 2114;
      v23 = v10;
      _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: InvalidSessionClearing) : %s %s:%d %{public}@", buf, 0x26u);
      goto LABEL_11;
    }
  }

  else
  {
    v9 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = [dsCopy count];
      *buf = 134218242;
      v17 = v11;
      v18 = 2114;
      v19 = dsCopy;
      _os_log_error_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_ERROR, "Failed to find %lu sessions to clear. %{public}@", buf, 0x16u);
LABEL_11:
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)readBaseDirectoryWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  rootDirectory = [(FCUserEventHistoryStorage *)self rootDirectory];
  (*(accessor + 2))(accessorCopy, rootDirectory);
}

- (void)writeJSON:(id)n
{
  v47 = *MEMORY[0x1E69E9840];
  nCopy = n;
  rootDirectory = [(FCUserEventHistoryStorage *)self rootDirectory];
  uRLByDeletingLastPathComponent = [rootDirectory URLByDeletingLastPathComponent];
  v7 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:@"personalization-sessions-json" isDirectory:1];

  if ([v7 fc_directoryExists])
  {
LABEL_2:
    v8 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v44 = v7;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "Found JSON folder at %{public}@", buf, 0xCu);
    }

    v9 = MEMORY[0x1E695DFD8];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v7 path];
    v41 = 0;
    v12 = [defaultManager contentsOfDirectoryAtPath:path error:&v41];
    v13 = v41;
    v14 = [v9 setWithArray:v12];
    v15 = [v14 fc_setByTransformingWithBlock:&__block_literal_global_41];

    if (v13)
    {
      v16 = FCUserEventsStorageLog;
      if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
      {
        v17 = v16;
        localizedDescription = [v13 localizedDescription];
        *buf = 138412290;
        v44 = localizedDescription;
        _os_log_error_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_ERROR, "Failed to get existing contents of JSON folder %@", buf, 0xCu);
      }
    }

    else
    {
      sessions = [(FCUserEventHistoryStorage *)self sessions];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __39__FCUserEventHistoryStorage_writeJSON___block_invoke_26;
      v39[3] = &unk_1E7C3C840;
      v26 = v15;
      v40 = v26;
      v27 = [sessions fc_arrayOfObjectsFailingTest:v39];

      v28 = MEMORY[0x1E695DFD8];
      sessionIDs = [(FCUserEventHistoryStorage *)self sessionIDs];
      v30 = [v28 setWithArray:sessionIDs];
      v31 = [v26 fc_setByMinusingSet:v30];

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __39__FCUserEventHistoryStorage_writeJSON___block_invoke_2;
      v37[3] = &unk_1E7C3C868;
      v32 = v7;
      v38 = v32;
      [v31 enumerateObjectsUsingBlock:v37];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __39__FCUserEventHistoryStorage_writeJSON___block_invoke_29;
      v34[3] = &unk_1E7C3C890;
      v36 = nCopy;
      v35 = v32;
      [v27 enumerateObjectsUsingBlock:v34];
    }

    goto LABEL_14;
  }

  v19 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v7;
    _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "Creating user event history JSON directory at path %{public}@", buf, 0xCu);
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v42 = 0;
  v21 = [defaultManager2 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v42];
  v13 = v42;

  v22 = FCUserEventsStorageLog;
  if (!v13)
  {
    if (v21)
    {
      if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v44 = v7;
        _os_log_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_DEFAULT, "Successfully created user event history JSON directory at %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v44 = v7;
      _os_log_error_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_ERROR, "Failed to create user event history storage JSON directory at %{public}@", buf, 0xCu);
    }

    goto LABEL_2;
  }

  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
  {
    v23 = v22;
    localizedDescription2 = [v13 localizedDescription];
    *buf = 138543618;
    v44 = v7;
    v45 = 2114;
    v46 = localizedDescription2;
    _os_log_error_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_ERROR, "Error creating user event history JSON directory at %{public}@. Error: %{public}@", buf, 0x16u);
  }

LABEL_14:

  v33 = *MEMORY[0x1E69E9840];
}

uint64_t __39__FCUserEventHistoryStorage_writeJSON___block_invoke_26(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sessionID];
  v4 = [v2 containsObject:v3];

  return v4;
}

void __39__FCUserEventHistoryStorage_writeJSON___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) URLByAppendingPathComponent:a2];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v4 = [v3 removeItemAtURL:v2 error:&v10];
  v5 = v10;

  v6 = FCUserEventsStorageLog;
  if (v4)
  {
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v2;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "Deleted session at %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
  {
    v8 = v6;
    v9 = [v5 localizedDescription];
    *buf = 138412546;
    v12 = v2;
    v13 = 2112;
    v14 = v9;
    _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "Failed to get delete session at %@. Error %@", buf, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __39__FCUserEventHistoryStorage_writeJSON___block_invoke_29(uint64_t a1, void *a2)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = (*(*(a1 + 40) + 16))();
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 sessionID];
    v7 = [v5 URLByAppendingPathComponent:v6];
    v8 = [v7 URLByAppendingPathExtension:@"json"];

    v9 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = MEMORY[0x1E696AAF0];
      v11 = v9;
      v12 = [v10 stringFromByteCount:objc_msgSend(v4 countStyle:{"length"), 0}];
      v13 = [v3 sessionID];
      v16 = 138412802;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21[0] = v8;
      _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Got back session JSON data of size %@ for session %@. Writing to %@", &v16, 0x20u);
    }

    if (([v4 writeToURL:v8 atomically:1] & 1) == 0)
    {
      v14 = FCUserEventsStorageLog;
      if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
      {
        v16 = 138412290;
        v17 = v8;
        _os_log_error_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_ERROR, "Failed to write json data for session to %@", &v16, 0xCu);
      }
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Missing session data for session we want to write as JSON"];
    v16 = 136315906;
    v17 = "[FCUserEventHistoryStorage writeJSON:]_block_invoke";
    v18 = 2080;
    v19 = "FCUserEventHistoryStorage.m";
    v20 = 1024;
    LODWORD(v21[0]) = 215;
    WORD2(v21[0]) = 2114;
    *(v21 + 6) = v8;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingSessionData) : %s %s:%d %{public}@", &v16, 0x26u);
  }

LABEL_9:
  v15 = *MEMORY[0x1E69E9840];
}

- (unint64_t)size
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  rootDirectory = [(FCUserEventHistoryStorage *)self rootDirectory];
  v10 = 0;
  v5 = [defaultManager fc_sizeOfItemAtURL:rootDirectory error:&v10];
  v6 = v10;

  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__FCUserEventHistoryStorage_size__block_invoke;
    v8[3] = &unk_1E7C3C8B8;
    v8[4] = self;
    v9 = v6;
    v5 = __33__FCUserEventHistoryStorage_size__block_invoke(v8);
  }

  return v5;
}

uint64_t __33__FCUserEventHistoryStorage_size__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = v2;
    v7 = [v5 rootDirectory];
    v8 = [*(a1 + 40) localizedDescription];
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Error looking up contents of user event history storage at %{public}@. Error: %{public}@", &v9, 0x16u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (NSArray)sessionIDs
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  rootDirectory = [(FCUserEventHistoryStorage *)self rootDirectory];
  path = [rootDirectory path];
  v13 = 0;
  v6 = [defaultManager contentsOfDirectoryAtPath:path error:&v13];
  v7 = v13;

  if (v6)
  {
    v8 = [v6 sortedArrayUsingComparator:&__block_literal_global_41_1];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __39__FCUserEventHistoryStorage_sessionIDs__block_invoke;
    v10[3] = &unk_1E7C397D0;
    v11 = v7;
    selfCopy = self;
    v8 = __39__FCUserEventHistoryStorage_sessionIDs__block_invoke(v10);
  }

  return v8;
}

uint64_t __39__FCUserEventHistoryStorage_sessionIDs__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = v2;
      v7 = [v5 rootDirectory];
      v8 = 138543362;
      v9 = v7;
      _os_log_error_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_ERROR, "Failed to lookup session IDs in %{public}@", &v8, 0xCu);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (NSArray)sessions
{
  sessionIDs = [(FCUserEventHistoryStorage *)self sessionIDs];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__FCUserEventHistoryStorage_sessions__block_invoke;
  v6[3] = &unk_1E7C3C8E0;
  v6[4] = self;
  v4 = [sessionIDs fc_arrayByTransformingWithBlock:v6];

  return v4;
}

FCUserEventHistorySession *__37__FCUserEventHistoryStorage_sessions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _filePathForSessionID:v3];
  v5 = [[FCUserEventHistorySession alloc] initWithSessionID:v3 path:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__FCUserEventHistoryStorage_sessions__block_invoke_2;
    v9[3] = &unk_1E7C36F98;
    v10 = v3;
    v7 = __37__FCUserEventHistoryStorage_sessions__block_invoke_2(v9);
  }

  return v7;
}

uint64_t __37__FCUserEventHistoryStorage_sessions__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Error creating user event history session for session id %{public}@", &v6, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)storeSessionID:(id)d compressedSessionData:(id)data notify:(BOOL)notify
{
  dCopy = d;
  dataCopy = data;
  v10 = FCPersistenceQueue();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__FCUserEventHistoryStorage_storeSessionID_compressedSessionData_notify___block_invoke;
  v13[3] = &unk_1E7C3C908;
  v13[4] = self;
  v14 = dCopy;
  v15 = dataCopy;
  notifyCopy = notify;
  v11 = dataCopy;
  v12 = dCopy;
  dispatch_async(v10, v13);
}

void __73__FCUserEventHistoryStorage_storeSessionID_compressedSessionData_notify___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _filePathForSessionID:*(a1 + 40)];
  v3 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x1E696AAF0];
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v7 = v3;
    v8 = [v4 stringFromByteCount:objc_msgSend(v5 countStyle:{"length"), 0}];
    *buf = 138543874;
    v24 = v6;
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = v2;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Storing session %{public}@ with size %{public}@ at %{public}@", buf, 0x20u);
  }

  v9 = *(a1 + 48);
  v22 = 0;
  v10 = [v9 writeToFile:v2 options:1 error:&v22];
  v11 = v22;
  if (v11)
  {
    v12 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v14 = v12;
      v15 = [v11 localizedDescription];
      *buf = 138543618;
      v24 = v13;
      v25 = 2114;
      v26 = v15;
      _os_log_error_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_ERROR, "Error storing session %{public}@: %{public}@", buf, 0x16u);
    }
  }

  else if (v10)
  {
    if (*(a1 + 56) == 1)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __73__FCUserEventHistoryStorage_storeSessionID_compressedSessionData_notify___block_invoke_44;
      v19[3] = &unk_1E7C376A0;
      v19[4] = *(a1 + 32);
      v20 = *(a1 + 48);
      v21 = *(a1 + 40);
      FCPerformBlockOnMainThread(v19);
    }
  }

  else
  {
    v16 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 40);
      *buf = 138543362;
      v24 = v18;
      _os_log_error_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_ERROR, "Error storing session %{public}@ but no error...", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __73__FCUserEventHistoryStorage_storeSessionID_compressedSessionData_notify___block_invoke_44(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) storage:*(a1 + 32) didStoreData:*(a1 + 40) forSessionID:*(a1 + 48)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)storeSessionID:(id)d sessionData:(id)data
{
  dCopy = d;
  v12 = 0;
  v7 = [data compressedDataUsingAlgorithm:0 error:&v12];
  v8 = v12;
  v9 = v8;
  if (v8)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__FCUserEventHistoryStorage_storeSessionID_sessionData___block_invoke;
    v10[3] = &unk_1E7C36EA0;
    v11 = v8;
    __56__FCUserEventHistoryStorage_storeSessionID_sessionData___block_invoke(v10);
  }

  else
  {
    [(FCUserEventHistoryStorage *)self storeSessionID:dCopy compressedSessionData:v7 notify:1];
  }
}

void __56__FCUserEventHistoryStorage_storeSessionID_sessionData___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 localizedDescription];
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "Failed to compress data with error %{public}@", &v7, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)clearAllSessions
{
  v19 = *MEMORY[0x1E69E9840];
  sessionIDs = [(FCUserEventHistoryStorage *)self sessionIDs];
  if (sessionIDs)
  {
    v4 = [(FCUserEventHistoryStorage *)self _deleteSessionsWithIdentifiers:sessionIDs pruned:0];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    observers = [(FCUserEventHistoryStorage *)self observers];
    v6 = [observers copy];

    v7 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v13 + 1) + 8 * i) storage:self didClearAllSessions:v4];
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v11 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_ERROR, "Failed to get sessions IDs for clearing all sessions", buf, 2u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEmpty
{
  sessionIDs = [(FCUserEventHistoryStorage *)self sessionIDs];
  v3 = [sessionIDs count] == 0;

  return v3;
}

- (NSDate)earliestSessionDate
{
  sessionIDs = [(FCUserEventHistoryStorage *)self sessionIDs];
  lastObject = [sessionIDs lastObject];

  if (lastObject)
  {
    v4 = [FCUserEventHistorySession dateFromSessionID:lastObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearHistory
{
  [MEMORY[0x1E696AF00] isMainThread];

  [(FCUserEventHistoryStorage *)self clearAllSessions];
}

- (FCUserEventHistoryMetadata)metadata
{
  v11 = *MEMORY[0x1E69E9840];
  metadata = self->_metadata;
  if (metadata)
  {
    v4 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = metadata;
      _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Found user event history metadata %{public}@", &v9, 0xCu);
      metadata = self->_metadata;
    }

    v5 = metadata;
  }

  else
  {
    v5 = [FCUserEventHistoryMetadata emptyWithSessionsOnDiskSize:[(FCUserEventHistoryStorage *)self currentSize]];
    v6 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "User event history metadata requested, but none found, returning empty metadata with only session size on disk %{public}@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setMetadataWithAggregateStoreGenerationTime:(int64_t)time aggregateTotalCount:(int64_t)count meanCountOfEvents:(double)events standardDeviationOfEvents:(double)ofEvents totalEventsCount:(int64_t)eventsCount headlineEventCount:(int64_t)eventCount headlinesWithValidTitleEmbeddingsEventCount:(int64_t)embeddingsEventCount headlinesWithInvalidTitleEmbeddingsEventCount:(int64_t)self0 headlinesWithValidBodyEmbeddingsEventCount:(int64_t)self1 headlinesWithInvalidBodyEmbeddingsEventCount:(int64_t)self2 eventCounts:(id)self3 aggregateStoreData:(id)self4
{
  v32 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  countsCopy = counts;
  v23 = [[FCUserEventHistoryMetadata alloc] initWithAggregateStoreGenerationTime:time aggregateTotalCount:count meanCountOfEvents:[(FCUserEventHistoryStorage *)self currentSize] sessionsOnDiskSize:eventsCount standardDeviationOfEvents:eventCount totalEventsCount:embeddingsEventCount headlineEventCount:events headlinesWithValidTitleEmbeddingsEventCount:ofEvents headlinesWithInvalidTitleEmbeddingsEventCount:titleEmbeddingsEventCount headlinesWithValidBodyEmbeddingsEventCount:bodyEmbeddingsEventCount headlinesWithInvalidBodyEmbeddingsEventCount:invalidBodyEmbeddingsEventCount eventCounts:countsCopy aggregateStoreData:dataCopy];

  [(FCUserEventHistoryStorage *)self setMetadata:v23];
  v24 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    metadata = [(FCUserEventHistoryStorage *)self metadata];
    *buf = 138543362;
    v31 = metadata;
    _os_log_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_DEFAULT, "Metadata set as %{public}@", buf, 0xCu);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (id)_filePathForSessionID:(id)d
{
  dCopy = d;
  rootDirectory = [(FCUserEventHistoryStorage *)self rootDirectory];
  path = [rootDirectory path];
  v7 = [path stringByAppendingPathComponent:dCopy];

  return v7;
}

- (id)_deleteSessionsWithIdentifiers:(id)identifiers pruned:(BOOL)pruned
{
  prunedCopy = pruned;
  v38 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v24 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = identifiersCopy;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v28;
    *&v7 = 138543874;
    v22 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [(FCUserEventHistoryStorage *)self _filePathForSessionID:v11, v22];
        v13 = [(FCUserEventHistoryStorage *)self _sizeForSessionAtPath:v12];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v26 = 0;
        v15 = [defaultManager removeItemAtPath:v12 error:&v26];
        v16 = v26;

        if (v15)
        {
          if (prunedCopy)
          {
            [(FCUserEventHistoryStorage *)self setPrunedSessionSize:[(FCUserEventHistoryStorage *)self prunedSessionSize]+ v13];
          }

          [v24 addObject:v11];
        }

        else
        {
          v17 = FCUserEventsStorageLog;
          if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
          {
            v18 = v17;
            localizedDescription = [v16 localizedDescription];
            *buf = v22;
            v32 = v11;
            v33 = 2114;
            v34 = v12;
            v35 = 2114;
            v36 = localizedDescription;
            _os_log_error_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_ERROR, "Encountered error removing session %{public}@ at path %{public}@. Error: %{public}@", buf, 0x20u);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v8);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v24;
}

- (void)_pruneSessions:(id)sessions
{
  v4 = [sessions fc_arrayByTransformingWithBlock:&__block_literal_global_55];
  [(FCUserEventHistoryStorage *)self _pruneSessionsWithIdentifiers:v4];
}

- (void)_pruneSessionsWithIdentifiers:(id)identifiers
{
  v7 = [(FCUserEventHistoryStorage *)self _deleteSessionsWithIdentifiers:identifiers pruned:1];
  prunedSessionIDs = [(FCUserEventHistoryStorage *)self prunedSessionIDs];
  v5 = prunedSessionIDs;
  if (!prunedSessionIDs)
  {
    prunedSessionIDs = MEMORY[0x1E695E0F0];
  }

  v6 = [prunedSessionIDs arrayByAddingObjectsFromArray:v7];
  [(FCUserEventHistoryStorage *)self setPrunedSessionIDs:v6];

  [(FCUserEventHistoryStorage *)self setCurrentSize:[(FCUserEventHistoryStorage *)self size]];
}

- (void)_pruneToMaxSize:(int64_t)size
{
  selfCopy = self;
  v53 = *MEMORY[0x1E69E9840];
  v5 = [(FCUserEventHistoryStorage *)self size];
  v6 = v5;
  v7 = v5 - size;
  if (v5 > size)
  {
    v8 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = MEMORY[0x1E696AAF0];
      v10 = v8;
      v11 = [v9 stringFromByteCount:v6 countStyle:0];
      v12 = [MEMORY[0x1E696AAF0] stringFromByteCount:size countStyle:0];
      v13 = [MEMORY[0x1E696AAF0] stringFromByteCount:v7 countStyle:0];
      *buf = 138543874;
      v48 = v11;
      v49 = 2114;
      v50 = v12;
      v51 = 2114;
      v52 = v13;
      _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "Current size %{public}@ does violate max size %{public}@, attempting to prune %{public}@ from sessions", buf, 0x20u);
    }

    sessions = [(FCUserEventHistoryStorage *)selfCopy sessions];
    if (!sessions)
    {
      v28 = FCUserEventsStorageLog;
      if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_ERROR, "Failed to get session IDs to prune, skipping", buf, 2u);
      }

      goto LABEL_26;
    }

    v15 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    reverseObjectEnumerator = [sessions reverseObjectEnumerator];
    v17 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v39 = sessions;
      v40 = selfCopy;
      v19 = *v42;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v42 != v19)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v21 = *(*(&v41 + 1) + 8 * i);
          [v15 addObject:{v21, v39, v40}];
          v22 = [v21 size];
          v7 -= v22;
          v23 = FCUserEventsStorageLog;
          if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v23;
            sessionID = [v21 sessionID];
            v26 = [MEMORY[0x1E696AAF0] stringFromByteCount:v22 countStyle:0];
            v27 = [MEMORY[0x1E696AAF0] stringFromByteCount:v7 countStyle:0];
            *buf = 138543874;
            v48 = sessionID;
            v49 = 2114;
            v50 = v26;
            v51 = 2114;
            v52 = v27;
            _os_log_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_DEFAULT, "Found session %{public}@ to prune with size %{public}@, remaining size to prune %{public}@", buf, 0x20u);
          }

          if (v7 <= 0)
          {

            sessions = v39;
            selfCopy = v40;
            goto LABEL_23;
          }
        }

        v18 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      sessions = v39;
      selfCopy = v40;
    }

    else
    {

      if (v7 < 1)
      {
LABEL_23:
        [(FCUserEventHistoryStorage *)selfCopy _pruneSessions:v15];
        v30 = FCUserEventsStorageLog;
        if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v30;
          v32 = [v15 count];
          v33 = [MEMORY[0x1E696AAF0] stringFromByteCount:-[FCUserEventHistoryStorage prunedSessionSize](selfCopy countStyle:{"prunedSessionSize"), 0}];
          sizeString = [(FCUserEventHistoryStorage *)selfCopy sizeString];
          *buf = 134218498;
          v48 = v32;
          v49 = 2114;
          v50 = v33;
          v51 = 2114;
          v52 = sizeString;
          _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_DEFAULT, "Finished pruning %lu sessions account for %{public}@, session size after pruning %{public}@", buf, 0x20u);
        }

LABEL_26:
        goto LABEL_27;
      }
    }

    v29 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      v36 = MEMORY[0x1E696AAF0];
      v37 = v29;
      v38 = [v36 stringFromByteCount:v7 countStyle:0];
      *buf = 138543362;
      v48 = v38;
      _os_log_error_impl(&dword_1B63EF000, v37, OS_LOG_TYPE_ERROR, "Finished collecting sessions to prune but still need to remove %{public}@", buf, 0xCu);
    }

    goto LABEL_23;
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __45__FCUserEventHistoryStorage__pruneToMaxSize___block_invoke;
  v45[3] = &__block_descriptor_48_e5_v8__0l;
  v45[4] = v5;
  v45[5] = size;
  __45__FCUserEventHistoryStorage__pruneToMaxSize___block_invoke(v45);
LABEL_27:
  v35 = *MEMORY[0x1E69E9840];
}

void __45__FCUserEventHistoryStorage__pruneToMaxSize___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MEMORY[0x1E696AAF0];
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v3 stringFromByteCount:v4 countStyle:0];
    v7 = [MEMORY[0x1E696AAF0] stringFromByteCount:*(a1 + 40) countStyle:0];
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Current size %{public}@ doesn't violate max size %{public}@, skipping pruning", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_pruneToMaxSessionCount:(unint64_t)count
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    countCopy = count;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to prune to max session count %lu", buf, 0xCu);
  }

  sessions = [(FCUserEventHistoryStorage *)self sessions];
  v7 = sessions;
  if (sessions)
  {
    v8 = sessions;
    if ([v8 count] <= count)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __53__FCUserEventHistoryStorage__pruneToMaxSessionCount___block_invoke_61;
      v16[3] = &unk_1E7C3C970;
      v17 = v8;
      countCopy2 = count;
      __53__FCUserEventHistoryStorage__pruneToMaxSessionCount___block_invoke_61(v16);
      v13 = v17;
    }

    else
    {
      v9 = [v8 count] - count;
      v10 = FCUserEventsStorageLog;
      if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [v8 count];
        *buf = 134218496;
        countCopy = v12;
        v21 = 2048;
        countCopy3 = count;
        v23 = 2048;
        v24 = v9;
        _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Current session count %lu violates max session count %lu, attempting to prune %lu sessions", buf, 0x20u);
      }

      v13 = [v8 fc_safeSubarrayWithCountFromBack:v9];
      [(FCUserEventHistoryStorage *)self _pruneSessions:v13];
    }
  }

  else
  {
    v14 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_ERROR, "Encountered error getting sessions to prune, skipping", buf, 2u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __53__FCUserEventHistoryStorage__pruneToMaxSessionCount___block_invoke_61(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 count];
    v6 = *(a1 + 40);
    v8 = 134218240;
    v9 = v5;
    v10 = 2048;
    v11 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Current session count %lu doesn't violate max session count %lu, skipping pruning", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_pruneToMaxSessionAge:(unint64_t)age
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    ageCopy = age;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to prune to max session age %lu", buf, 0xCu);
  }

  sessions = [(FCUserEventHistoryStorage *)self sessions];
  if (sessions)
  {
    v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-age];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __51__FCUserEventHistoryStorage__pruneToMaxSessionAge___block_invoke_65;
    v15[3] = &unk_1E7C3C840;
    v8 = v7;
    v16 = v8;
    v9 = [sessions fc_arrayOfObjectsFailingTest:v15];
    v10 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v9 count];
      *buf = 134218242;
      ageCopy = v12;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Found %lu sessions violating max age. Pruning %{public}@", buf, 0x16u);
    }

    [(FCUserEventHistoryStorage *)self _pruneSessions:v9];
  }

  else
  {
    v13 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Failed to get session IDs for pruning", buf, 2u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __51__FCUserEventHistoryStorage__pruneToMaxSessionAge___block_invoke_65(uint64_t a1, void *a2)
{
  v3 = [a2 date];
  v4 = [v3 fc_isLaterThanOrEqualTo:*(a1 + 32)];

  return v4;
}

- (void)_pruneSessionsWithInvalidIdentifiers
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to prune invalid sessions", &v10, 2u);
  }

  sessionIDs = [(FCUserEventHistoryStorage *)self sessionIDs];
  v5 = [sessionIDs fc_arrayOfObjectsFailingTest:&__block_literal_global_68_1];

  v6 = FCUserEventsStorageLog;
  if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v5 count];
    v10 = 134217984;
    v11 = v8;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Detected %lu sessions with invalid identifiers to prune", &v10, 0xCu);
  }

  [(FCUserEventHistoryStorage *)self _pruneSessionsWithIdentifiers:v5];

  v9 = *MEMORY[0x1E69E9840];
}

BOOL __65__FCUserEventHistoryStorage__pruneSessionsWithInvalidIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 componentsSeparatedByString:@"-"];
  v3 = [v2 count] == 6;

  return v3;
}

- (int64_t)_sizeForSessionAtPath:(id)path
{
  v14 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy];
  v11 = 0;
  v6 = [defaultManager fc_sizeOfItemAtURL:v5 error:&v11];
  v7 = v11;

  if (v7)
  {
    v8 = FCUserEventsStorageLog;
    if (os_log_type_enabled(FCUserEventsStorageLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = pathCopy;
      _os_log_error_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_ERROR, "Error getting size of session at %{public}@", buf, 0xCu);
    }

    v6 = -1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

@end