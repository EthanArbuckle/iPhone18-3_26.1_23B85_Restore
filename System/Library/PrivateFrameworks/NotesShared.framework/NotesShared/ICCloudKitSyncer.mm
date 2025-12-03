@interface ICCloudKitSyncer
- (ICCloudKitSyncerDelegate)delegate;
- (void)saveUnsyncedObjects;
- (void)saveUnsyncedObjectsWithRetryCount:(unint64_t)count completionBlock:(id)block;
@end

@implementation ICCloudKitSyncer

- (void)saveUnsyncedObjectsWithRetryCount:(unint64_t)count completionBlock:(id)block
{
  blockCopy = block;
  v7 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudKitSyncer saveUnsyncedObjectsWithRetryCount:completionBlock:];
  }

  objc_initWeak(&location, self);
  v8 = +[ICCloudContext sharedContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__ICCloudKitSyncer_saveUnsyncedObjectsWithRetryCount_completionBlock___block_invoke;
  v10[3] = &unk_278197990;
  objc_copyWeak(v12, &location);
  v12[1] = count;
  v9 = blockCopy;
  v11 = v9;
  [v8 processAllCloudObjectsWithCompletionHandler:v10];

  objc_destroyWeak(v12);
  objc_destroyWeak(&location);
}

void __70__ICCloudKitSyncer_saveUnsyncedObjectsWithRetryCount_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([v3 count])
  {
    v17 = a1;
    v18 = WeakRetained;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * v9);
          v11 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v10;
            _os_log_error_impl(&dword_214D51000, v11, OS_LOG_TYPE_ERROR, "Error pushing cloud objects: %@", buf, 0xCu);
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v7);
    }

    v12 = *(v17 + 48);
    if (v12)
    {
      WeakRetained = v18;
      [v18 saveUnsyncedObjectsWithRetryCount:v12 - 1 completionBlock:*(v17 + 32)];
      v3 = v19;
    }

    else
    {
      v14 = os_log_create("com.apple.notes", "Cloud");
      WeakRetained = v18;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __70__ICCloudKitSyncer_saveUnsyncedObjectsWithRetryCount_completionBlock___block_invoke_cold_1();
      }

      v3 = v19;
      if (*(v17 + 32))
      {
        v15 = [ICCloudContext errorFromErrors:v5];
        v16 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          __70__ICCloudKitSyncer_saveUnsyncedObjectsWithRetryCount_completionBlock___block_invoke_cold_2();
        }

        (*(*(v17 + 32) + 16))();
      }
    }
  }

  else
  {
    v13 = *(a1 + 32);
    if (v13)
    {
      (*(v13 + 16))(v13, 0);
    }
  }
}

- (void)saveUnsyncedObjects
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __39__ICCloudKitSyncer_saveUnsyncedObjects__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  [*(a1 + 40) setQualityOfService:*(a1 + 48)];
  [*(a1 + 40) setDiscretionaryNetworkBehavior:*(a1 + 56)];
  [*(a1 + 40) setEnableLongLivedOperations:*(a1 + 64)];
  [*(a1 + 40) setDisableAutomaticallyRetryNetworkFailures:*(a1 + 65)];
  v5 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __39__ICCloudKitSyncer_saveUnsyncedObjects__block_invoke_cold_1();
  }

  v6 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 cloudKitSyncer:v4 didUpdateProgress:1.0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 cloudKitSyncer:v4 didFinishWithError:v3];
  }
}

- (ICCloudKitSyncerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __70__ICCloudKitSyncer_saveUnsyncedObjectsWithRetryCount_completionBlock___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __39__ICCloudKitSyncer_saveUnsyncedObjects__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_2_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end