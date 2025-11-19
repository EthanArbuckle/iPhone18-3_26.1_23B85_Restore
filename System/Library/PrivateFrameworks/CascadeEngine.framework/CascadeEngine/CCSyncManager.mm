@interface CCSyncManager
- (CCSyncManager)initWithQueue:(id)a3;
- (id)_syncEngineForCurrentPersona:(id *)a3;
- (void)_handleSetChanges:(id)a3;
- (void)_syncPersonasNow:(id)a3 withReason:(unsigned __int8)a4 activity:(id)a5 completionHandler:(id)a6;
- (void)handleIncomingSyncRequestsWithReason:(unsigned __int8)a3 completionHandler:(id)a4;
- (void)syncCurrentPersonaNowWithReason:(unsigned __int8)a3 activity:(id)a4 completionHandler:(id)a5;
@end

@implementation CCSyncManager

- (CCSyncManager)initWithQueue:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = CCSyncManager;
  v6 = [(CCSyncManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc(MEMORY[0x1E6993A68]);
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.biomesyncd.cascadeSetChange"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __31__CCSyncManager_initWithQueue___block_invoke;
    v16[3] = &unk_1E85C2A40;
    v10 = v7;
    v17 = v10;
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.biomesyncd.cascadeSetChange", v11);
    v13 = [v8 initWithIdentifier:v9 batchHandlerBlock:v16 queue:v12 useCase:*MEMORY[0x1E698E958]];
    setChangeListener = v10->_setChangeListener;
    v10->_setChangeListener = v13;
  }

  return v7;
}

- (void)syncCurrentPersonaNowWithReason:(unsigned __int8)a3 activity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__CCSyncManager_syncCurrentPersonaNowWithReason_activity_completionHandler___block_invoke;
  v13[3] = &unk_1E85C2A68;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)handleIncomingSyncRequestsWithReason:(unsigned __int8)a3 completionHandler:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__CCSyncManager_handleIncomingSyncRequestsWithReason_completionHandler___block_invoke;
  block[3] = &unk_1E85C2AB8;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(queue, block);
}

void __72__CCSyncManager_handleIncomingSyncRequestsWithReason_completionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v13 = 0;
  v3 = [v2 _syncEngineForCurrentPersona:&v13];
  v4 = v13;
  v12 = v4;
  v5 = [v3 currentPlatformHasSetsSupportingSync:&v12];
  v6 = v12;

  if (v5)
  {
    v7 = *(a1 + 48);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__CCSyncManager_handleIncomingSyncRequestsWithReason_completionHandler___block_invoke_3;
    v10[3] = &unk_1E85C2A90;
    v11 = *(a1 + 40);
    [v3 activateServerWithReason:v7 activationHandler:v10];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1DA444000, v8, OS_LOG_TYPE_DEFAULT, "Cannot start sync server: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_syncEngineForCurrentPersona:(id *)a3
{
  v14 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  syncEngine = self->_syncEngine;
  if (!syncEngine)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = objc_opt_class();
      v7 = v13;
      _os_log_impl(&dword_1DA444000, v6, OS_LOG_TYPE_DEFAULT, "Initializing %@", &v12, 0xCu);
    }

    v8 = [[CCRapportSyncEngine alloc] initWithQueue:self->_queue error:a3];
    v9 = self->_syncEngine;
    self->_syncEngine = v8;

    syncEngine = self->_syncEngine;
  }

  v10 = *MEMORY[0x1E69E9840];

  return syncEngine;
}

- (void)_syncPersonasNow:(id)a3 withReason:(unsigned __int8)a4 activity:(id)a5 completionHandler:(id)a6
{
  v8 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__CCSyncManager__syncPersonasNow_withReason_activity_completionHandler___block_invoke;
  block[3] = &unk_1E85C2AB8;
  v13 = a4;
  block[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(queue, block);
}

void __72__CCSyncManager__syncPersonasNow_withReason_activity_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__CCSyncManager__syncPersonasNow_withReason_activity_completionHandler___block_invoke_2;
  v3[3] = &unk_1E85C2AE0;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v2 _syncCurrentPersonaNowWithReason:v1 activity:0 completionHandler:v3];
}

void __77__CCSyncManager__syncCurrentPersonaNowWithReason_activity_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CCSyncReasonDescription(*(a1 + 48));
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@" for persona: %@", *(a1 + 32)];
    }

    else
    {
      v10 = &stru_1F55F1328;
    }

    *buf = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_1DA444000, v7, OS_LOG_TYPE_DEFAULT, "Sync with reason (%@) completed%@", buf, 0x16u);
    if (v9)
    {
    }
  }

  (*(*(a1 + 40) + 16))();
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleSetChanges:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v4;
    _os_log_impl(&dword_1DA444000, v5, OS_LOG_TYPE_DEFAULT, "Notified of changes to sets, evaluating policy %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F55F5998];
  v28 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    obj = v7;
    v27 = self;
    v29 = 0;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [MEMORY[0x1E6993A70] setConfigurationForItemType:{objc_msgSend(v12, "itemType")}];
        v15 = [v14 setIdentifier];
        if ([v6 containsObject:v15])
        {
          v16 = [v14 syncPolicy];
          v17 = [v16 supportsTransport:2 direction:2 fromPlatform:{objc_msgSend(MEMORY[0x1E698E9A0], "platform")}];

          if (v17)
          {
            v18 = __biome_log_for_category();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v39 = v15;
              _os_log_impl(&dword_1DA444000, v18, OS_LOG_TYPE_DEFAULT, "Sync policy requires immediate sync for set: %@", buf, 0xCu);
            }

            v19 = [v12 personaIdentifier];

            if (v19)
            {
              v20 = [v12 personaIdentifier];
              [v28 addObject:v20];
            }

            v29 = 1;
          }
        }

        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
    v21 = obj;

    if (v29)
    {
      v22 = dispatch_semaphore_create(0);
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = obj;
        _os_log_impl(&dword_1DA444000, v23, OS_LOG_TYPE_DEFAULT, "Triggering immediate sync following change(s) to set(s) %@", buf, 0xCu);
      }

      v24 = [v28 allObjects];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __35__CCSyncManager__handleSetChanges___block_invoke;
      v31[3] = &unk_1E85C2B30;
      v32 = v22;
      v25 = v22;
      [(CCSyncManager *)v27 _syncPersonasNow:v24 withReason:6 activity:0 completionHandler:v31];

      dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
      goto LABEL_24;
    }
  }

  else
  {

    v21 = v7;
  }

  v25 = __biome_log_for_category();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DA444000, v25, OS_LOG_TYPE_DEFAULT, "No sets requiring immediate sync, returning from notification handler", buf, 2u);
  }

LABEL_24:

  v26 = *MEMORY[0x1E69E9840];
}

@end