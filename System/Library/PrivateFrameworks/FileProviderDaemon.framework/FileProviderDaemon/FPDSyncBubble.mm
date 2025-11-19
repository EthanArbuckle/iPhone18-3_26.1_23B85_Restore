@interface FPDSyncBubble
- (FPDSyncBubble)initWithExtensionManager:(id)a3;
- (void)createSyncBubbleTasksIfNecessary;
- (void)retryLaterWithError:(id)a3;
- (void)start;
- (void)uploadContent;
- (void)willSwitchUser;
@end

@implementation FPDSyncBubble

- (FPDSyncBubble)initWithExtensionManager:(id)a3
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = FPDSyncBubble;
  v7 = [(FPDSyncBubble *)&v19 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_extensionManager, a3);
    v9 = dispatch_group_create();
    startupGroup = v8->_startupGroup;
    v8->_startupGroup = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("sync bubble task queue", v11);
    syncQueue = v8->_syncQueue;
    v8->_syncQueue = v12;

    v14 = [MEMORY[0x1E696AE30] processInfo];
    v15 = [v14 environment];
    v16 = [v15 objectForKey:@"FILEPROVIDER_SYNC_BUBBLE"];
    v17 = [v16 BOOLValue];

    if (v17 != [MEMORY[0x1E69672F0] runningInSyncBubble])
    {
      [(FPDSyncBubble *)a2 initWithExtensionManager:v8];
    }
  }

  return v8;
}

- (void)start
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  dispatch_group_enter(self->_startupGroup);
  if ([v3 isSharedIPad])
  {
    v4 = [MEMORY[0x1E69672F0] runningInSyncBubble];
    v5 = fp_current_or_default_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v4)
    {
      if (v6)
      {
        v7 = [MEMORY[0x1E695DFF8] fp_homeDirectory];
        v8 = [v7 fp_shortDescription];
        *buf = 138412290;
        v18 = v8;
        v9 = "[INFO] shared iPad: running in sync bubble, checking in. Home directory is %@";
LABEL_7:
        _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, v9, buf, 0xCu);
      }
    }

    else if (v6)
    {
      v7 = [MEMORY[0x1E695DFF8] fp_homeDirectory];
      v8 = [v7 fp_shortDescription];
      *buf = 138412290;
      v18 = v8;
      v9 = "[INFO] shared iPad: checking in for running in sync bubble later. Home directory is %@";
      goto LABEL_7;
    }

    [v3 registerUserSyncStakeholder:self withMachServiceName:@"com.apple.FileProvider.usermanager.sync"];
    v10 = [MEMORY[0x1E69DF098] taskWithName:@"com.apple.FileProvider.startup" reason:@"checking if there's anything to sync"];
    [v10 begin];
    startupGroup = self->_startupGroup;
    syncQueue = self->_syncQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __22__FPDSyncBubble_start__block_invoke;
    block[3] = &unk_1E83BE068;
    v16 = v10;
    v13 = v10;
    dispatch_group_notify(startupGroup, syncQueue, block);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __22__FPDSyncBubble_start__block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] shared iPad: sync bubble checkin finished", v4, 2u);
  }

  return [*(a1 + 32) end];
}

- (void)retryLaterWithError:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__FPDSyncBubble_retryLaterWithError___block_invoke;
  v7[3] = &unk_1E83BE158;
  v8 = v4;
  v9 = self;
  v5 = retryLaterWithError__onceToken[0];
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(retryLaterWithError__onceToken, v7);
  }
}

void __37__FPDSyncBubble_retryLaterWithError___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __37__FPDSyncBubble_retryLaterWithError___block_invoke_cold_1(a1, v2);
  }

  v3 = [MEMORY[0x1E69DF068] sharedManager];
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) domain];
  v7 = [v4 stringWithFormat:@"encountered error domain %@ code %ld", v6, objc_msgSend(*(a1 + 32), "code")];
  [v3 unregisterStakeHolder:v5 status:1 reason:v7];
}

- (void)createSyncBubbleTasksIfNecessary
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] shared iPad: creating sync bubble tasks", buf, 2u);
  }

  v3 = [MEMORY[0x1E696B0B8] currentConnection];
  v34 = [FPDRequest requestForXPCConnection:v3];

  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v42 = 0u;
  obj = [(FPDExtensionManager *)self->_extensionManager allProviders];
  v32 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v32)
  {
    v31 = *v43;
    do
    {
      v4 = 0;
      do
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v4;
        v5 = *(*(&v42 + 1) + 8 * v4);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v6 = [v5 relevantDomainsByID];
        v7 = [v6 allValues];

        v8 = [v7 countByEnumeratingWithState:&v38 objects:v50 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v39;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v39 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v38 + 1) + 8 * i);
              if (([v12 isUsingFPFS] & 1) == 0)
              {
                v18 = fp_current_or_default_log();
                if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_29;
                }

                v25 = [v12 providerDomainID];
                *buf = 138412290;
                v47 = v25;
                v26 = v18;
                v27 = "[INFO] shared iPad: skipping %@ (doesn't use FPFS)";
LABEL_25:
                _os_log_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_INFO, v27, buf, 0xCu);

                goto LABEL_29;
              }

              v13 = [v12 provider];
              v14 = [v13 identifier];
              v15 = [v14 fp_isiCloudDriveIdentifier];

              if ((v15 & 1) == 0)
              {
                v18 = fp_current_or_default_log();
                if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_29;
                }

                v25 = [v12 providerDomainID];
                *buf = 138412290;
                v47 = v25;
                v26 = v18;
                v27 = "[INFO] shared iPad: skipping %@ (not supported in sync bubble)";
                goto LABEL_25;
              }

              v16 = MEMORY[0x1E69DF098];
              v17 = [v12 providerDomainID];
              v18 = [v16 taskWithName:@"com.apple.FileProvider.uploads" reason:@"syncup to server" forBundleID:v17];

              LODWORD(v17) = [MEMORY[0x1E69672F0] runningInSyncBubble];
              v19 = fp_current_or_default_log();
              v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
              if (v17)
              {
                if (v20)
                {
                  v21 = [v12 providerDomainID];
                  *buf = 138412290;
                  v47 = v21;
                  _os_log_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_INFO, "[INFO] shared iPad: requesting stabilization in sync bubble for domain %@", buf, 0xCu);
                }

                [v18 begin];
                v22 = fp_current_or_default_log();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  v23 = [v12 defaultBackend];
                  *buf = 138412546;
                  v47 = v12;
                  v48 = 2112;
                  v49 = v23;
                  _os_log_impl(&dword_1CEFC7000, v22, OS_LOG_TYPE_INFO, "[INFO] domain: %@, backend: %@", buf, 0x16u);
                }

                v24 = [v12 defaultBackend];
                v36[0] = MEMORY[0x1E69E9820];
                v36[1] = 3221225472;
                v36[2] = __49__FPDSyncBubble_createSyncBubbleTasksIfNecessary__block_invoke;
                v36[3] = &unk_1E83BDF78;
                v36[4] = v12;
                v36[5] = self;
                v18 = v18;
                v37 = v18;
                [v24 waitForStabilizationForRequest:v34 mode:1 completionHandler:v36];
              }

              else
              {
                if (v20)
                {
                  v28 = [v12 providerDomainID];
                  *buf = 138412290;
                  v47 = v28;
                  _os_log_impl(&dword_1CEFC7000, v19, OS_LOG_TYPE_INFO, "[INFO] shared iPad: scheduling finalization in sync bubble for domain %@", buf, 0xCu);
                }

                [v18 begin];
              }

LABEL_29:
            }

            v9 = [v7 countByEnumeratingWithState:&v38 objects:v50 count:16];
          }

          while (v9);
        }

        v4 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v32);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __49__FPDSyncBubble_createSyncBubbleTasksIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = fp_current_or_default_log();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__FPDSyncBubble_createSyncBubbleTasksIfNecessary__block_invoke_cold_1(a1, v3, v5);
    }

    [*(a1 + 40) retryLaterWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&dword_1CEFC7000, v5, OS_LOG_TYPE_INFO, "[INFO] shared iPad: sync bubble stabilization finished successfully for %@", &v8, 0xCu);
    }
  }

  [*(a1 + 48) end];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)willSwitchUser
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] shared iPad: received notification that we're switching users", buf, 2u);
  }

  v4 = [MEMORY[0x1E69DF098] taskWithName:@"com.apple.FileProvider.check" reason:@"check for upload task creation during user switch"];
  [v4 begin];
  startupGroup = self->_startupGroup;
  syncQueue = self->_syncQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__FPDSyncBubble_willSwitchUser__block_invoke;
  v8[3] = &unk_1E83BE158;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(startupGroup, syncQueue, v8);
}

uint64_t __31__FPDSyncBubble_willSwitchUser__block_invoke(uint64_t a1)
{
  [*(a1 + 32) createSyncBubbleTasksIfNecessary];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] shared iPad: tasks for switching users created", v4, 2u);
  }

  return [*(a1 + 40) end];
}

- (void)uploadContent
{
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1CEFC7000, v3, OS_LOG_TYPE_INFO, "[INFO] shared iPad: received request to sync", buf, 2u);
  }

  v4 = [MEMORY[0x1E69DF098] taskWithName:@"com.apple.FileProvider.check" reason:@"check for upload task creation during upload request"];
  [v4 begin];
  startupGroup = self->_startupGroup;
  syncQueue = self->_syncQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __30__FPDSyncBubble_uploadContent__block_invoke;
  v8[3] = &unk_1E83BE158;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(startupGroup, syncQueue, v8);
}

uint64_t __30__FPDSyncBubble_uploadContent__block_invoke(uint64_t a1)
{
  [*(a1 + 32) createSyncBubbleTasksIfNecessary];
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1CEFC7000, v2, OS_LOG_TYPE_INFO, "[INFO] shared iPad: tasks for request to sync created", v4, 2u);
  }

  return [*(a1 + 40) end];
}

- (void)initWithExtensionManager:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"FPDSyncBubble.m" lineNumber:38 description:{@"UserManager thinks we're running in the sync bubble, but environment variables disagree"}];
}

void __37__FPDSyncBubble_retryLaterWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] shared iPad: Encountered an error forcing us to try to retry the sync bubble later - %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __49__FPDSyncBubble_createSyncBubbleTasksIfNecessary__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1CEFC7000, log, OS_LOG_TYPE_ERROR, "[ERROR] shared iPad: sync bubble stabilization finished for %@ with error %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end