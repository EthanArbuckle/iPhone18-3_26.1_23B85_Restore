@interface LNConnectionManager
+ (id)sharedInstance;
- (LNConnectionManager)init;
- (id)connectionForEffectiveBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4 processInstanceIdentifier:(id)a5 mangledTypeName:(id)a6 userIdentity:(id)a7 error:(id *)a8;
- (id)newConnectionForEffectiveBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4 processInstanceIdentifier:(id)a5 mangledTypeName:(id)a6 userIdentity:(id)a7 error:(id *)a8;
- (void)addConnection:(id)a3;
- (void)appDidEnterBackground:(id)a3;
- (void)connection:(id)a3 didCloseWithError:(id)a4;
- (void)donateActionRecord:(id)a3 completionHandler:(id)a4;
- (void)invalidateAllConnections;
- (void)removeConnection:(id)a3;
@end

@implementation LNConnectionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_8316);
  }

  v3 = sharedInstance_value;

  return v3;
}

uint64_t __37__LNConnectionManager_sharedInstance__block_invoke()
{
  sharedInstance_value = objc_alloc_init(LNConnectionManager);

  return MEMORY[0x1EEE66BB8]();
}

- (LNConnectionManager)init
{
  v11.receiver = self;
  v11.super_class = LNConnectionManager;
  v2 = [(LNConnectionManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    connectionsByBundleIdentifier = v3->_connectionsByBundleIdentifier;
    v3->_connectionsByBundleIdentifier = v4;

    v6 = objc_alloc_init(LNTranscriptPrivilegedProvider);
    transcriptProvider = v3->_transcriptProvider;
    v3->_transcriptProvider = v6;

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v3 selector:sel_appDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];

    v9 = v3;
  }

  return v3;
}

- (void)invalidateAllConnections
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(LNConnectionManager *)self connectionsByBundleIdentifier];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * v9++) close];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v10 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_19763D000, v10, OS_LOG_TYPE_INFO, "Closed all connections", v12, 2u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeConnection:(id)a3
{
  v9 = a3;
  v4 = [v9 bundleIdentifier];
  v5 = [(LNConnectionManager *)self connectionsByBundleIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = v9;
  if (v6 == v9)
  {
    v8 = [(LNConnectionManager *)self connectionsByBundleIdentifier];
    [v8 setObject:0 forKeyedSubscript:v4];

    v7 = v9;
  }

  [v7 setManager:0];
}

- (void)addConnection:(id)a3
{
  v6 = a3;
  v4 = [(LNConnectionManager *)self connectionsByBundleIdentifier];
  v5 = [v6 bundleIdentifier];
  [v4 setObject:v6 forKeyedSubscript:v5];

  [v6 setManager:self];
  [v6 setIdleTimer];
}

- (void)connection:(id)a3 didCloseWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__LNConnectionManager_connection_didCloseWithError___block_invoke;
  aBlock[3] = &unk_1E74B2318;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  [(LNConnectionManager *)self removeConnection:v6];
  v8[2](v8);
}

- (void)donateActionRecord:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hasNextAction];
  v9 = [(LNConnectionManager *)self transcriptProvider];
  v22 = 0;
  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v22];
  v11 = v22;
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (v12)
  {
    v13 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v6;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  v14 = [v6 bundleIdentifier];
  v15 = [v6 executionDate];
  [v15 timeIntervalSinceReferenceDate];
  v17 = v16;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60__LNConnectionManager_donateActionRecord_completionHandler___block_invoke;
  v20[3] = &unk_1E74B2848;
  v21 = v7;
  v18 = v7;
  [v9 donateActionRecordData:v10 bundleIdentifier:v14 timestamp:v8 writeImmediately:v20 reply:v17];

  v19 = *MEMORY[0x1E69E9840];
}

void __60__LNConnectionManager_donateActionRecord_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  if (v3)
  {
    v5 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_ERROR, "Error when donating action record to transcript: %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)connectionForEffectiveBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4 processInstanceIdentifier:(id)a5 mangledTypeName:(id)a6 userIdentity:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v47 = a5;
  v46 = a6;
  v48 = a7;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __143__LNConnectionManager_connectionForEffectiveBundleIdentifier_appBundleIdentifier_processInstanceIdentifier_mangledTypeName_userIdentity_error___block_invoke;
  aBlock[3] = &unk_1E74B2318;
  aBlock[4] = self;
  v15 = _Block_copy(aBlock);
  if (!v14)
  {
    v16 = MEMORY[0x1E6963620];
    v17 = [v13 bundleIdentifier];
    v18 = [v16 bundleRecordWithBundleIdentifier:v17 allowPlaceholder:0 error:0];

    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = [v20 entitlements];
    v22 = [v21 objectForKey:@"com.apple.private.appintents.attribution.bundle-identifier" ofClass:objc_opt_class()];

    if (v22)
    {
      v14 = v22;
    }

    else
    {
      v23 = [v20 containingBundleRecord];
      v14 = [v23 bundleIdentifier];
    }
  }

  v24 = [(LNConnectionManager *)self connectionsByBundleIdentifier];
  v25 = [v13 bundleIdentifier];
  v26 = [v24 objectForKeyedSubscript:v25];

  if (v26)
  {
    v27 = [v26 userIdentity];
    v28 = v48;
    v29 = v28;
    if (v27 == v28)
    {
      v30 = 1;
    }

    else
    {
      v30 = 0;
      if (v28 && v27)
      {
        v30 = [v27 isEqual:v28];
      }
    }

    v31 = [v26 appBundleIdentifier];
    v32 = v14;
    v33 = v32;
    if (v31 == v32)
    {
      v34 = 1;
    }

    else
    {
      v34 = 0;
      if (v32 && v31)
      {
        v34 = [v31 isEqual:v32];
      }
    }

    if (v33)
    {
      v35 = 0;
    }

    else
    {
      v36 = [v26 bundleIdentifier];
      v37 = [v13 bundleIdentifier];
      v38 = v36;
      v39 = v37;
      v40 = v39;
      if (v38 == v39)
      {
        v35 = 1;
      }

      else
      {
        v35 = 0;
        if (v38 && v39)
        {
          v35 = [v38 isEqual:v39];
        }
      }
    }

    if (v30 & (v34 | v35))
    {
      v41 = v26;
      goto LABEL_38;
    }

    if (v30)
    {
      LNConnectionErrorWithCode(2601);
    }

    else
    {
      LNConnectionErrorWithCode(2600);
    }
    v42 = ;
    [v26 closeWithError:v42];

    [(LNConnectionManager *)self removeConnection:v26];
  }

  v41 = [(LNConnectionManager *)self newConnectionForEffectiveBundleIdentifier:v13 appBundleIdentifier:v14 processInstanceIdentifier:v47 mangledTypeName:v46 userIdentity:v48 error:a8];

  if (v41)
  {
    [(LNConnectionManager *)self addConnection:v41];
  }

LABEL_38:
  v43 = v41;

  v15[2](v15);

  return v43;
}

- (id)newConnectionForEffectiveBundleIdentifier:(id)a3 appBundleIdentifier:(id)a4 processInstanceIdentifier:(id)a5 mangledTypeName:(id)a6 userIdentity:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v16 && ([v13 bundleIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = +[LNConnectionPolicy shouldHandleInProcessWithMangledTypeName:bundleIdentifier:](LNConnectionPolicy, "shouldHandleInProcessWithMangledTypeName:bundleIdentifier:", v16, v18), v18, v19))
  {
    v20 = off_1E74AF4A8;
  }

  else
  {
    v20 = off_1E74AF3A8;
  }

  v21 = *v20;
  v22 = [objc_alloc(objc_opt_class()) initWithEffectiveBundleIdentifier:v13 appBundleIdentifier:v14 processInstanceIdentifier:v15 appIntentsEnabledOnly:1 userIdentity:v17 error:a8];
  v23 = [LNConnectionProxy proxyWithConnection:v22];

  return v23;
}

- (void)appDidEnterBackground:(id)a3
{
  v4 = [LNEntitlementsValidator validateEntitlement:@"com.apple.private.appintents.exception.background-task-allowed" forCurrentTaskWithValidator:&__block_literal_global_19];
  v5 = getLNLogCategoryConnection();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "The app entered background; The app will close all connections manually", buf, 2u);
    }
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_INFO, "The app entered background; Closing all connections immediately...", v7, 2u);
    }

    [(LNConnectionManager *)self invalidateAllConnections];
  }
}

uint64_t __45__LNConnectionManager_appDidEnterBackground___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
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
  v5 = [v4 BOOLValue];

  return v5;
}

@end