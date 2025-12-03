@interface LNConnectionManager
+ (id)sharedInstance;
- (LNConnectionManager)init;
- (id)connectionForEffectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier mangledTypeName:(id)name userIdentity:(id)identity error:(id *)error;
- (id)newConnectionForEffectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier mangledTypeName:(id)name userIdentity:(id)identity error:(id *)error;
- (void)addConnection:(id)connection;
- (void)appDidEnterBackground:(id)background;
- (void)connection:(id)connection didCloseWithError:(id)error;
- (void)donateActionRecord:(id)record completionHandler:(id)handler;
- (void)invalidateAllConnections;
- (void)removeConnection:(id)connection;
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_appDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];

    v9 = v3;
  }

  return v3;
}

- (void)invalidateAllConnections
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  connectionsByBundleIdentifier = [(LNConnectionManager *)self connectionsByBundleIdentifier];
  v4 = [connectionsByBundleIdentifier copy];

  os_unfair_lock_unlock(&self->_lock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [v4 allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v13 + 1) + 8 * v9++) close];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)removeConnection:(id)connection
{
  connectionCopy = connection;
  bundleIdentifier = [connectionCopy bundleIdentifier];
  connectionsByBundleIdentifier = [(LNConnectionManager *)self connectionsByBundleIdentifier];
  v6 = [connectionsByBundleIdentifier objectForKeyedSubscript:bundleIdentifier];

  v7 = connectionCopy;
  if (v6 == connectionCopy)
  {
    connectionsByBundleIdentifier2 = [(LNConnectionManager *)self connectionsByBundleIdentifier];
    [connectionsByBundleIdentifier2 setObject:0 forKeyedSubscript:bundleIdentifier];

    v7 = connectionCopy;
  }

  [v7 setManager:0];
}

- (void)addConnection:(id)connection
{
  connectionCopy = connection;
  connectionsByBundleIdentifier = [(LNConnectionManager *)self connectionsByBundleIdentifier];
  bundleIdentifier = [connectionCopy bundleIdentifier];
  [connectionsByBundleIdentifier setObject:connectionCopy forKeyedSubscript:bundleIdentifier];

  [connectionCopy setManager:self];
  [connectionCopy setIdleTimer];
}

- (void)connection:(id)connection didCloseWithError:(id)error
{
  connectionCopy = connection;
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__LNConnectionManager_connection_didCloseWithError___block_invoke;
  aBlock[3] = &unk_1E74B2318;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  [(LNConnectionManager *)self removeConnection:connectionCopy];
  v8[2](v8);
}

- (void)donateActionRecord:(id)record completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  handlerCopy = handler;
  hasNextAction = [recordCopy hasNextAction];
  transcriptProvider = [(LNConnectionManager *)self transcriptProvider];
  v22 = 0;
  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:recordCopy requiringSecureCoding:1 error:&v22];
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
      v24 = recordCopy;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_19763D000, v13, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  bundleIdentifier = [recordCopy bundleIdentifier];
  executionDate = [recordCopy executionDate];
  [executionDate timeIntervalSinceReferenceDate];
  v17 = v16;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60__LNConnectionManager_donateActionRecord_completionHandler___block_invoke;
  v20[3] = &unk_1E74B2848;
  v21 = handlerCopy;
  v18 = handlerCopy;
  [transcriptProvider donateActionRecordData:v10 bundleIdentifier:bundleIdentifier timestamp:hasNextAction writeImmediately:v20 reply:v17];

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

- (id)connectionForEffectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier mangledTypeName:(id)name userIdentity:(id)identity error:(id *)error
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  instanceIdentifierCopy = instanceIdentifier;
  nameCopy = name;
  identityCopy = identity;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __143__LNConnectionManager_connectionForEffectiveBundleIdentifier_appBundleIdentifier_processInstanceIdentifier_mangledTypeName_userIdentity_error___block_invoke;
  aBlock[3] = &unk_1E74B2318;
  aBlock[4] = self;
  v15 = _Block_copy(aBlock);
  if (!bundleIdentifierCopy)
  {
    v16 = MEMORY[0x1E6963620];
    bundleIdentifier = [identifierCopy bundleIdentifier];
    v18 = [v16 bundleRecordWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

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

    entitlements = [v20 entitlements];
    v22 = [entitlements objectForKey:@"com.apple.private.appintents.attribution.bundle-identifier" ofClass:objc_opt_class()];

    if (v22)
    {
      bundleIdentifierCopy = v22;
    }

    else
    {
      containingBundleRecord = [v20 containingBundleRecord];
      bundleIdentifierCopy = [containingBundleRecord bundleIdentifier];
    }
  }

  connectionsByBundleIdentifier = [(LNConnectionManager *)self connectionsByBundleIdentifier];
  bundleIdentifier2 = [identifierCopy bundleIdentifier];
  v26 = [connectionsByBundleIdentifier objectForKeyedSubscript:bundleIdentifier2];

  if (v26)
  {
    userIdentity = [v26 userIdentity];
    v28 = identityCopy;
    v29 = v28;
    if (userIdentity == v28)
    {
      v30 = 1;
    }

    else
    {
      v30 = 0;
      if (v28 && userIdentity)
      {
        v30 = [userIdentity isEqual:v28];
      }
    }

    appBundleIdentifier = [v26 appBundleIdentifier];
    v32 = bundleIdentifierCopy;
    v33 = v32;
    if (appBundleIdentifier == v32)
    {
      v34 = 1;
    }

    else
    {
      v34 = 0;
      if (v32 && appBundleIdentifier)
      {
        v34 = [appBundleIdentifier isEqual:v32];
      }
    }

    if (v33)
    {
      v35 = 0;
    }

    else
    {
      bundleIdentifier3 = [v26 bundleIdentifier];
      bundleIdentifier4 = [identifierCopy bundleIdentifier];
      v38 = bundleIdentifier3;
      v39 = bundleIdentifier4;
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

  v41 = [(LNConnectionManager *)self newConnectionForEffectiveBundleIdentifier:identifierCopy appBundleIdentifier:bundleIdentifierCopy processInstanceIdentifier:instanceIdentifierCopy mangledTypeName:nameCopy userIdentity:identityCopy error:error];

  if (v41)
  {
    [(LNConnectionManager *)self addConnection:v41];
  }

LABEL_38:
  v43 = v41;

  v15[2](v15);

  return v43;
}

- (id)newConnectionForEffectiveBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier processInstanceIdentifier:(id)instanceIdentifier mangledTypeName:(id)name userIdentity:(id)identity error:(id *)error
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  instanceIdentifierCopy = instanceIdentifier;
  nameCopy = name;
  identityCopy = identity;
  if (nameCopy && ([identifierCopy bundleIdentifier], v18 = objc_claimAutoreleasedReturnValue(), v19 = +[LNConnectionPolicy shouldHandleInProcessWithMangledTypeName:bundleIdentifier:](LNConnectionPolicy, "shouldHandleInProcessWithMangledTypeName:bundleIdentifier:", nameCopy, v18), v18, v19))
  {
    v20 = off_1E74AF4A8;
  }

  else
  {
    v20 = off_1E74AF3A8;
  }

  v21 = *v20;
  v22 = [objc_alloc(objc_opt_class()) initWithEffectiveBundleIdentifier:identifierCopy appBundleIdentifier:bundleIdentifierCopy processInstanceIdentifier:instanceIdentifierCopy appIntentsEnabledOnly:1 userIdentity:identityCopy error:error];
  v23 = [LNConnectionProxy proxyWithConnection:v22];

  return v23;
}

- (void)appDidEnterBackground:(id)background
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