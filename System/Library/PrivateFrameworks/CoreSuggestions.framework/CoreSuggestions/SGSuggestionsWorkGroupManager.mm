@interface SGSuggestionsWorkGroupManager
+ (id)sharedInstance;
- (id)_init;
- (void)finishProcessingForUniqueIdentifier:(id)a3;
- (void)waitForUniqueIdentifierToProcess:(id)a3 withTimeout:(double)a4;
@end

@implementation SGSuggestionsWorkGroupManager

- (void)finishProcessingForUniqueIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SGSuggestionsWorkGroupManager.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"uniqueId"}];
  }

  lock = self->_lock;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__SGSuggestionsWorkGroupManager_finishProcessingForUniqueIdentifier___block_invoke;
  v9[3] = &unk_1E7EFD2D0;
  v10 = v5;
  v7 = v5;
  [(_PASLock *)lock runWithLockAcquired:v9];
}

void __69__SGSuggestionsWorkGroupManager_finishProcessingForUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 addToProcessedIds:*(a1 + 32)];
  v3 = [v4 groupForUniqueId:*(a1 + 32)];
  if (v3)
  {
    [v4 leaveGroupForUniqueId:*(a1 + 32)];
    [v4 removeGroupFromProcessedIds:*(a1 + 32)];
  }
}

- (void)waitForUniqueIdentifierToProcess:(id)a3 withTimeout:(double)a4
{
  v7 = a3;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGSuggestionsWorkGroupManager.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"uniqueId"}];
  }

  if (a4 == 0.0)
  {
    a4 = 10.0;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10350;
  v22 = __Block_byref_object_dispose__10351;
  v23 = 0;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__SGSuggestionsWorkGroupManager_waitForUniqueIdentifierToProcess_withTimeout___block_invoke;
  v15[3] = &unk_1E7EFD2A8;
  v9 = v7;
  v16 = v9;
  v17 = &v18;
  [(_PASLock *)lock runWithLockAcquired:v15];
  if (v19[5])
  {
    v10 = [MEMORY[0x1E69C5D10] waitForGroup:a4 timeoutSeconds:?];
    if (v10 == 1)
    {
      v11 = sgLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "SGSuggestionsWorkGroupManager - Timeout waiting for suggestions group leave status. Continuing...";
        goto LABEL_12;
      }

LABEL_13:

      goto LABEL_14;
    }

    if (!v10)
    {
      v11 = sgLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "SGSuggestionsWorkGroupManager - Acquired leave group. Continuing...";
LABEL_12:
        _os_log_impl(&dword_1BA729000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

LABEL_14:

  _Block_object_dispose(&v18, 8);
}

void __78__SGSuggestionsWorkGroupManager_waitForUniqueIdentifierToProcess_withTimeout___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (([v9 isProcessedUniqueId:*(a1 + 32)] & 1) == 0)
  {
    v3 = [v9 groupForUniqueId:*(a1 + 32)];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v6 = [v9 createGroupForUniqueId:*(a1 + 32)];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      [v9 enterGroupForUniqueId:*(a1 + 32)];
    }
  }
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = SGSuggestionsWorkGroupManager;
  v2 = [(SGSuggestionsWorkGroupManager *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = [objc_alloc(MEMORY[0x1E69C5D60]) initWithGuardedData:v3];
    lock = v2->_lock;
    v2->_lock = v4;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken2 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2, &__block_literal_global_10359);
  }

  v3 = sharedInstance__pasExprOnceResult;

  return v3;
}

void __47__SGSuggestionsWorkGroupManager_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[SGSuggestionsWorkGroupManager alloc] _init];
  v2 = sharedInstance__pasExprOnceResult;
  sharedInstance__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

@end