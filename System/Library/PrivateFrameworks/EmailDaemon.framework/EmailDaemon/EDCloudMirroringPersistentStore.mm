@interface EDCloudMirroringPersistentStore
+ (OS_os_log)log;
- (EDCloudMirroringPersistentStore)init;
- (id)_schedulerForKind:(int)kind;
- (id)_wrapCompletion:(id)completion forRequestKind:(int)kind;
- (void)_setupCoreDataStack;
- (void)performBlock:(id)block;
- (void)performBlockAndWait:(id)wait;
@end

@implementation EDCloudMirroringPersistentStore

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__EDCloudMirroringPersistentStore_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_26 != -1)
  {
    dispatch_once(&log_onceToken_26, block);
  }

  v2 = log_log_26;

  return v2;
}

void __38__EDCloudMirroringPersistentStore_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_26;
  log_log_26 = v1;
}

- (EDCloudMirroringPersistentStore)init
{
  v9.receiver = self;
  v9.super_class = EDCloudMirroringPersistentStore;
  v2 = [(EDCloudMirroringPersistentStore *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.mail.EDCloudMirroringPersistentStore.schedulers", 0);
    [(EDCloudMirroringPersistentStore *)v2 _setupCoreDataStack];
    v4 = [[EDTaskScheduler alloc] initWithExecutionQueue:v3];
    exportScheduler = v2->_exportScheduler;
    v2->_exportScheduler = v4;

    [(EDTaskScheduler *)v2->_exportScheduler setObserveForNetworkReachability:1];
    [(EDTaskScheduler *)v2->_exportScheduler setInitialDelay:5.0];
    v6 = [[EDTaskScheduler alloc] initWithExecutionQueue:v3];
    importScheduler = v2->_importScheduler;
    v2->_importScheduler = v6;

    [(EDTaskScheduler *)v2->_importScheduler setObserveForNetworkReachability:1];
  }

  return v2;
}

- (void)_setupCoreDataStack
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = 0;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Failed to locate momd bundle in application. %@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __54__EDCloudMirroringPersistentStore__setupCoreDataStack__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = +[EDCloudMirroringPersistentStore log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 ef_publicDescription];
      __54__EDCloudMirroringPersistentStore__setupCoreDataStack__block_invoke_cold_1(v5, v7);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  managedObjectContext = [(EDCloudMirroringPersistentStore *)self managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__EDCloudMirroringPersistentStore_performBlock___block_invoke;
  v8[3] = &unk_1E82518B0;
  v6 = blockCopy;
  v9 = managedObjectContext;
  v10 = v6;
  v7 = managedObjectContext;
  [v7 performBlock:v8];
}

- (void)performBlockAndWait:(id)wait
{
  waitCopy = wait;
  managedObjectContext = [(EDCloudMirroringPersistentStore *)self managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__EDCloudMirroringPersistentStore_performBlockAndWait___block_invoke;
  v8[3] = &unk_1E82518B0;
  v6 = waitCopy;
  v9 = managedObjectContext;
  v10 = v6;
  v7 = managedObjectContext;
  [v7 performBlockAndWait:v8];
}

void __68__EDCloudMirroringPersistentStore__requestWithKind_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _executeRequestWithKind:*(a1 + 48) completionBlock:*(a1 + 32)];
}

uint64_t __68__EDCloudMirroringPersistentStore__requestWithKind_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (id)_schedulerForKind:(int)kind
{
  if (kind)
  {
    [(EDCloudMirroringPersistentStore *)self exportScheduler];
  }

  else
  {
    [(EDCloudMirroringPersistentStore *)self importScheduler];
  }
  v3 = ;

  return v3;
}

void __75__EDCloudMirroringPersistentStore__executeRequestWithKind_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = 0x1E695D588;
  if (*(a1 + 40))
  {
    v4 = 0x1E695D580;
  }

  v5 = *v4;
  v6 = objc_opt_class();
  v7 = [[v6 alloc] initWithOptions:0 completionBlock:*(a1 + 32)];
  v14 = 0;
  v8 = [v3 executeRequest:v7 error:&v14];
  v9 = v14;
  if (!v8)
  {
    if (*(a1 + 40))
    {
      v10 = +[EDCloudMirroringPersistentStore log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v9 ef_publicDescription];
        __75__EDCloudMirroringPersistentStore__executeRequestWithKind_completionBlock___block_invoke_cold_1(v11, v15);
      }
    }

    else
    {
      v10 = +[EDCloudMirroringPersistentStore log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = [v9 ef_publicDescription];
        __75__EDCloudMirroringPersistentStore__executeRequestWithKind_completionBlock___block_invoke_cold_2(v12, v15);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_wrapCompletion:(id)completion forRequestKind:(int)kind
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__EDCloudMirroringPersistentStore__wrapCompletion_forRequestKind___block_invoke;
  v10[3] = &unk_1E8251B98;
  objc_copyWeak(&v12, &location);
  kindCopy = kind;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = _Block_copy(v10);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __66__EDCloudMirroringPersistentStore__wrapCompletion_forRequestKind___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 success];
  v6 = *(a1 + 48);
  if (v5)
  {
    if (v6)
    {
      v7 = +[EDCloudMirroringPersistentStore log];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      LOWORD(v30) = 0;
      v8 = "Successfully exported CloudKit content.";
    }

    else
    {
      v7 = +[EDCloudMirroringPersistentStore log];
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        goto LABEL_11;
      }

      LOWORD(v30) = 0;
      v8 = "Successfully imported CloudKit content.";
    }

    _os_log_impl(&dword_1C61EF000, v7, OS_LOG_TYPE_INFO, v8, &v30, 2u);
LABEL_11:

    v10 = *(a1 + 32);
    if (v10)
    {
      (*(v10 + 16))(v10, 1);
    }

    goto LABEL_29;
  }

  if (v6)
  {
    v9 = +[EDCloudMirroringPersistentStore log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __66__EDCloudMirroringPersistentStore__wrapCompletion_forRequestKind___block_invoke_cold_1(v9);
    }
  }

  else
  {
    v9 = +[EDCloudMirroringPersistentStore log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __66__EDCloudMirroringPersistentStore__wrapCompletion_forRequestKind___block_invoke_cold_2(v9);
    }
  }

  v11 = [v3 error];
  v12 = [v11 userInfo];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
  CKRetryAfterSecondsForError();
  v15 = v14;

  v16 = *(a1 + 48);
  if (v15 <= 0.0)
  {
    if (v16)
    {
      v20 = +[EDCloudMirroringPersistentStore log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [v3 error];
        v22 = [v21 ef_publicDescription];
        __66__EDCloudMirroringPersistentStore__wrapCompletion_forRequestKind___block_invoke_cold_3(v22, &v30, v20, v21);
      }
    }

    else
    {
      v20 = +[EDCloudMirroringPersistentStore log];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v24 = [v3 error];
        v25 = [v24 ef_publicDescription];
        __66__EDCloudMirroringPersistentStore__wrapCompletion_forRequestKind___block_invoke_cold_4(v25, &v30, v20, v24);
      }
    }

    v26 = *(a1 + 32);
    if (v26)
    {
      (*(v26 + 16))(v26, 0);
    }
  }

  else
  {
    if (v16)
    {
      v17 = +[EDCloudMirroringPersistentStore log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = [v3 error];
        v19 = [v18 ef_publicDescription];
        v30 = 134218242;
        v31 = v15;
        v32 = 2114;
        v33 = v19;
        _os_log_error_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_ERROR, "Failed to export CloudKit content. Rescheduling (%g). %{public}@", &v30, 0x16u);
      }
    }

    else
    {
      v17 = +[EDCloudMirroringPersistentStore log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v28 = [v3 error];
        v29 = [v28 ef_publicDescription];
        v30 = 134218242;
        v31 = v15;
        v32 = 2114;
        v33 = v29;
        _os_log_error_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_ERROR, "Failed to import CloudKit content. Rescheduling (%g). %{public}@", &v30, 0x16u);
      }
    }

    v23 = [WeakRetained _schedulerForKind:*(a1 + 48)];
    [v23 rescheduleTask];
  }

LABEL_29:

  v27 = *MEMORY[0x1E69E9840];
}

void __54__EDCloudMirroringPersistentStore__setupCoreDataStack__block_invoke_cold_1(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Failed to load persistent stores. %{public}@", v5);
}

void __75__EDCloudMirroringPersistentStore__executeRequestWithKind_completionBlock___block_invoke_cold_1(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Export request failed to execute: %{public}@", v5);
}

void __75__EDCloudMirroringPersistentStore__executeRequestWithKind_completionBlock___block_invoke_cold_2(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v3, v4, "Import request failed to execute: %{public}@", v5);
}

void __66__EDCloudMirroringPersistentStore__wrapCompletion_forRequestKind___block_invoke_cold_3(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_10(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v6, v7, "Failed to export CloudKit content: %{public}@", v8);
}

void __66__EDCloudMirroringPersistentStore__wrapCompletion_forRequestKind___block_invoke_cold_4(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_10(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_7(&dword_1C61EF000, v6, v7, "Failed to import CloudKit content: %{public}@", v8);
}

@end