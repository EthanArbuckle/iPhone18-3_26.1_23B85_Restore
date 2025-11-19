@interface FCNonDestructivePrivateDataMigrationHandler
- (FCNonDestructivePrivateDataMigrationHandler)init;
- (FCNonDestructivePrivateDataMigrationHandler)initWithPrivateDataActionProvider:(id)a3 privateDataControllers:(id)a4 privateDataSyncingEnabled:(BOOL)a5;
- (void)handleMigrationWithPrivateDataDirectory:(id)a3;
@end

@implementation FCNonDestructivePrivateDataMigrationHandler

- (FCNonDestructivePrivateDataMigrationHandler)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNonDestructivePrivateDataMigrationHandler init]";
    v10 = 2080;
    v11 = "FCNonDestructivePrivateDataMigrationHandler.m";
    v12 = 1024;
    v13 = 25;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNonDestructivePrivateDataMigrationHandler init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCNonDestructivePrivateDataMigrationHandler)initWithPrivateDataActionProvider:(id)a3 privateDataControllers:(id)a4 privateDataSyncingEnabled:(BOOL)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDataActionProvider"];
    *buf = 136315906;
    v21 = "[FCNonDestructivePrivateDataMigrationHandler initWithPrivateDataActionProvider:privateDataControllers:privateDataSyncingEnabled:]";
    v22 = 2080;
    v23 = "FCNonDestructivePrivateDataMigrationHandler.m";
    v24 = 1024;
    v25 = 32;
    v26 = 2114;
    v27 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDataControllers"];
    *buf = 136315906;
    v21 = "[FCNonDestructivePrivateDataMigrationHandler initWithPrivateDataActionProvider:privateDataControllers:privateDataSyncingEnabled:]";
    v22 = 2080;
    v23 = "FCNonDestructivePrivateDataMigrationHandler.m";
    v24 = 1024;
    v25 = 33;
    v26 = 2114;
    v27 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v19.receiver = self;
  v19.super_class = FCNonDestructivePrivateDataMigrationHandler;
  v11 = [(FCNonDestructivePrivateDataMigrationHandler *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_privateDataActionProvider, a3);
    v13 = [v10 copy];
    privateDataControllers = v12->_privateDataControllers;
    v12->_privateDataControllers = v13;

    v12->_privateDataSyncingEnabled = a5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)handleMigrationWithPrivateDataDirectory:(id)a3
{
  v4 = a3;
  v5 = [(FCNonDestructivePrivateDataMigrationHandler *)self privateDataControllers];
  v6 = dispatch_group_create();
  v7 = [(FCNonDestructivePrivateDataMigrationHandler *)self privateDataActionProvider];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__FCNonDestructivePrivateDataMigrationHandler_handleMigrationWithPrivateDataDirectory___block_invoke;
  v16[3] = &unk_1E7C437B0;
  v8 = v5;
  v17 = v8;
  v9 = v4;
  v18 = v9;
  v10 = v6;
  v19 = v10;
  [v7 consumeNonDestructiveActionsSyncWithBlock:v16];

  v11 = [(FCNonDestructivePrivateDataMigrationHandler *)self isPrivateDataSyncingEnabled];
  v12 = &selRef_enableSyncing;
  if (!v11)
  {
    v12 = &selRef_disableSyncing;
  }

  [v8 makeObjectsPerformSelector:*v12];
  v13 = [MEMORY[0x1E695E000] standardUserDefaults];
  v14 = [v13 BOOLForKey:@"personalization_disable_syncing"];

  if (v14)
  {
    v15 = [v8 fc_firstObjectPassingTest:&__block_literal_global_122];
    [v15 disableSyncing];
  }
}

void __87__FCNonDestructivePrivateDataMigrationHandler_handleMigrationWithPrivateDataDirectory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v20 = a2;
  block = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = *(a1 + 32);
  v21 = [obj countByEnumeratingWithState:&v27 objects:v40 count:16];
  if (v21)
  {
    v19 = *v28;
    v5 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v8 = v20;
        v9 = [v8 countByEnumeratingWithState:&v23 objects:v39 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v24;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v24 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v23 + 1) + 8 * j) integerValue];
              if (v13 == 4)
              {
                [v7 mergeLocalStoreWithCloudWithPrivateDataDirectory:*(a1 + 40)];
              }

              else if (v13 == 3)
              {
                [v7 createLocalStore];
              }

              else if (v13 == 2 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
              {
                v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "NO"];
                *buf = 136315906;
                v32 = "[FCNonDestructivePrivateDataMigrationHandler handleMigrationWithPrivateDataDirectory:]_block_invoke";
                v33 = 2080;
                v34 = "FCNonDestructivePrivateDataMigrationHandler.m";
                v35 = 1024;
                v36 = 68;
                v37 = 2114;
                v38 = v14;
                _os_log_error_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v23 objects:v39 count:16];
          }

          while (v10);
        }

        v15 = *(a1 + 48);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __87__FCNonDestructivePrivateDataMigrationHandler_handleMigrationWithPrivateDataDirectory___block_invoke_12;
        v22[3] = &unk_1E7C37E50;
        v22[4] = v7;
        FCDispatchGroupWrap(v15, v22);
      }

      v21 = [obj countByEnumeratingWithState:&v27 objects:v40 count:16];
    }

    while (v21);
  }

  dispatch_group_notify(*(a1 + 48), MEMORY[0x1E69E96A0], block);
  v16 = *MEMORY[0x1E69E9840];
}

BOOL __87__FCNonDestructivePrivateDataMigrationHandler_handleMigrationWithPrivateDataDirectory___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v4 != 0;
}

@end