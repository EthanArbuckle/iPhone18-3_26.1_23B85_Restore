@interface MCMClientConnection
+ (id)privilegedClientConnectionWithUserIdentity:(id)a3;
+ (id)sharedClientConnection;
- (BOOL)_containerURL:(id)a3 isValidForContainerClass:(unint64_t)a4;
- (MCMClientConnection)init;
- (MCMClientConnection)initWithContext:(id)a3;
- (MCMCommandContext)context;
- (id)_commandForResumedDeleteOperationsWithResultPromise:(id)a3;
- (id)clientBundleIdentifier;
- (void)_cleanTransientContainersWithContainerConfig:(id)a3;
- (void)_cleanTransientUserContainersWithContainerConfig:(id)a3;
- (void)_cleanupOprhanedCodeSigningMappingData;
- (void)_cleanupOrphanedDataForDirectories:(id)a3 containerClass:(unint64_t)a4 forUserIdentity:(id)a5;
- (void)_regenerateContainerPaths;
- (void)_resumeDeleteOperations;
- (void)containerManagerCleanupWithCompletion:(id)a3;
- (void)containerManagerSetup;
- (void)rebootContainerManagerCleanupWithCompletion:(id)a3;
- (void)rebootContainerManagerSetup;
@end

@implementation MCMClientConnection

- (MCMCommandContext)context
{
  result = self->_context;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)_commandForResumedDeleteOperationsWithResultPromise:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(MCMClientConnection *)self context];
  v7 = [v6 userIdentityCache];
  v8 = [MCMDeleteManifest deleteManifestsForGlobalContainersWithUserIdentityCache:v7];
  [v5 unionSet:v8];

  v9 = [(MCMClientConnection *)self context];
  v10 = [v9 userIdentityCache];
  v11 = [MCMDeleteManifest deleteManifestsForUserContainersWithUserIdentityCache:v10];
  [v5 unionSet:v11];

  if ([v5 count])
  {
    v12 = [MCMCommandOperationDelete alloc];
    v13 = [(MCMClientConnection *)self context];
    v14 = [(MCMCommandOperationDelete *)v12 initWithManifests:v5 waitForDiskSpaceReclaim:0 removeAllCodeSignInfo:0 context:v13 resultPromise:v4];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)_resumeDeleteOperations
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MCMResultPromise);
  v4 = [(MCMClientConnection *)self _commandForResumedDeleteOperationsWithResultPromise:v3];
  v5 = v4;
  if (v4)
  {
    [v4 execute];
    v6 = [(MCMResultPromise *)v3 result];
    v7 = [v6 error];

    if (v7)
    {
      v8 = container_log_handle_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v7;
        _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Failed to destroy container(s) during resumed delete; error = %@", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_regenerateContainerPaths
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = container_log_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_DEBUG, "Rolling system container directory UUIDs on disk", buf, 2u);
  }

  v4 = [(MCMClientConnection *)self context];
  v5 = [v4 classIterator];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__MCMClientConnection__regenerateContainerPaths__block_invoke;
  v7[3] = &unk_1E86AFAA8;
  v7[4] = self;
  [v5 selectAutorollingWithUserIdentityIterator:v7];

  v6 = *MEMORY[0x1E69E9840];
}

void __48__MCMClientConnection__regenerateContainerPaths__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a2;
  v7 = containermanager_copy_global_configuration();
  v8 = [v7 classPathCache];
  v9 = [v8 containerClassPathForUserIdentity:v5 containerConfig:v6 typeClass:objc_opt_class()];

  v10 = [MCMContainerClassCache alloc];
  v11 = objc_opt_class();
  v12 = [*(a1 + 32) context];
  v13 = [v12 userIdentityCache];
  v14 = [(MCMContainerClassCache *)v10 initWithContainerClassPath:v9 cacheEntryClass:v11 targetQueue:0 userIdentityCache:v13];

  v15 = [MCMContainerClassCache alloc];
  v16 = objc_opt_class();
  v17 = [*(a1 + 32) context];
  v18 = [v17 userIdentityCache];
  v19 = [(MCMContainerClassCache *)v15 initWithContainerClassPath:v9 cacheEntryClass:v16 targetQueue:0 userIdentityCache:v18];

  [(MCMContainerClassCache *)v14 waitForSynchronizationToComplete];
  v20 = [*(a1 + 32) context];
  v21 = [v20 containerCache];
  [v21 setContainerClassCache:v19];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __48__MCMClientConnection__regenerateContainerPaths__block_invoke_2;
  v24[3] = &unk_1E86AFA80;
  v24[4] = *(a1 + 32);
  v25 = v19;
  v22 = v19;
  [(MCMContainerClassCache *)v14 enumerateCacheEntriesWithEnumerator:v24];

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __48__MCMClientConnection__regenerateContainerPaths__block_invoke_2(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MCMEntitlementBypassList sharedBypassList];
  v5 = [(MCMContainerCacheEntry *)v3 identifier];
  v6 = [(MCMContainerCacheEntry *)v3 containerPath];
  v7 = [v6 containerClassPath];
  v8 = [v4 containerIdIsWellknown:v5 class:{objc_msgSend(v7, "containerClass")}];

  v9 = v3;
  if ((v8 & 1) == 0)
  {
    v35 = 0;
    v10 = [(MCMContainerCacheEntry *)v3 metadataWithError:&v35];
    v11 = v35;
    if (v10)
    {
      v12 = [MCMCommandRegenerateDirectoryUUID alloc];
      v13 = [v10 containerIdentity];
      v14 = [*(a1 + 32) context];
      v15 = [(MCMCommandRegenerateDirectoryUUID *)v12 initWithConcreteContainerIdentity:v13 context:v14 resultPromise:0];

      v34 = v11;
      v16 = [v15 regenerateDirectoryUUIDNoCacheUpdateWithMetadata:v10 error:&v34];
      v17 = v34;

      if (v16)
      {
        v18 = [MCMContainerCacheEntry alloc];
        v19 = [*(a1 + 32) context];
        v20 = [v19 userIdentityCache];
        v9 = [(MCMContainerCacheEntry *)v18 initWithMetadata:v16 userIdentityCache:v20];
      }

      else
      {
        v19 = container_log_handle_for_category();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v30 = [(MCMContainerCacheEntry *)v3 identifier];
          v31 = [(MCMContainerCacheEntry *)v3 containerPath];
          v32 = [v31 containerClassPath];
          v33 = [v32 containerClass];
          *buf = 138412802;
          v37 = v30;
          v38 = 2048;
          v39 = v33;
          v40 = 2112;
          v41 = v17;
          _os_log_error_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_ERROR, "Failed to regenerate directory UUID for identifier: %@, class: %llu, error = %@", buf, 0x20u);
        }

        v9 = v3;
      }
    }

    else
    {
      v15 = container_log_handle_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v26 = [(MCMContainerCacheEntry *)v3 identifier];
        v27 = [(MCMContainerCacheEntry *)v3 containerPath];
        v28 = [v27 containerClassPath];
        v29 = [v28 containerClass];
        *buf = 138412802;
        v37 = v26;
        v38 = 2048;
        v39 = v29;
        v40 = 2112;
        v41 = v11;
        _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Failed to regenerate directory UUID (couldn't read metadata) for identifier: %@, class: %llu; error = %@", buf, 0x20u);
      }

      v17 = v11;
      v9 = v3;
    }
  }

  v21 = *(a1 + 40);
  v22 = [(MCMContainerCacheEntry *)v9 identifier];
  v23 = [v21 setCacheEntry:v9 forIdentifier:v22];

  v24 = *MEMORY[0x1E69E9840];
  return 1;
}

- (void)rebootContainerManagerCleanupWithCompletion:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy_;
  v44[4] = __Block_byref_object_dispose_;
  v45 = os_transaction_create();
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy_;
  v42[4] = __Block_byref_object_dispose_;
  v43 = 0;
  v5 = containermanager_copy_global_configuration();
  v6 = [v5 dispositionForContainerClass:1] == 1;

  if (v6)
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/installd/Library/Caches/com.apple.containermanagerd" isDirectory:1];
    v8 = +[MCMFileManager defaultManager];
    v9 = [v8 itemExistsAtURL:v7];

    if (v9)
    {
      v10 = container_log_handle_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = v7;
        _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "Sentencing legacy transient bundle directory [%@] to final deletion", buf, 0xCu);
      }

      v11 = [(MCMClientConnection *)self context];
      v12 = [v11 containerFactory];
      v41 = 0;
      v13 = [v12 deleteURL:v7 forUserIdentity:0 error:&v41];
      v14 = v41;

      if ((v13 & 1) == 0)
      {
        v15 = container_log_handle_for_category();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v47 = v7;
          v48 = 2112;
          v49 = v14;
          _os_log_error_impl(&dword_1DF2C3000, v15, OS_LOG_TYPE_ERROR, "Failed to delete legacy shared transient bundle URL %@ : %@", buf, 0x16u);
        }
      }
    }
  }

  v16 = containermanager_copy_global_configuration();
  v17 = [v16 classIterator];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke;
  v40[3] = &unk_1E86B01A0;
  v40[4] = self;
  [v17 selectWithIterator:v40];

  v18 = containermanager_copy_global_configuration();
  LODWORD(v17) = [v18 dispositionForContainerClass:2] == 1;

  if (v17)
  {
    v19 = [(MCMClientConnection *)self context];
    v20 = [v19 userIdentityCache];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_2;
    v39[3] = &unk_1E86AFA30;
    v39[4] = self;
    v39[5] = v42;
    [v20 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v39];
  }

  v21 = [(MCMClientConnection *)self context];
  v22 = [v21 userIdentityCache];
  v23 = [v22 defaultUserIdentity];

  v24 = [(MCMClientConnection *)self context];
  v25 = [v24 classIterator];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_31;
  v35[3] = &unk_1E86AFA08;
  v26 = v23;
  v37 = self;
  v38 = v42;
  v36 = v26;
  [v25 selectGlobalWithIterator:v35];

  v27 = MCMSharedBackgroundQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_33;
  block[3] = &unk_1E86B0E08;
  block[4] = self;
  dispatch_async(v27, block);

  v28 = MCMSharedBackgroundQueue();
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_2_34;
  v31[3] = &unk_1E86AFA58;
  v32 = v4;
  v33 = v44;
  v29 = v4;
  dispatch_async(v28, v31);

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v44, 8);

  v30 = *MEMORY[0x1E69E9840];
}

void __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if ([v4 cleanTransientsEachBoot])
  {
    [*(a1 + 32) _cleanTransientContainersWithContainerConfig:v4];
  }

  v3 = *MEMORY[0x1E69E9840];
}

void __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 homeDirectoryExists])
  {
    v4 = [*(a1 + 32) context];
    v5 = [v4 classIterator];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_3;
    v8[3] = &unk_1E86AFA08;
    v9 = v3;
    v10 = *(a1 + 32);
    [v5 selectUserWithIterator:v8];

    v6 = v9;
  }

  else
  {
    v6 = container_log_handle_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_debug_impl(&dword_1DF2C3000, v6, OS_LOG_TYPE_DEBUG, "Skipping orphan cleanup of data containers since home directory doesn't exist for %@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_31(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = containermanager_copy_global_configuration();
  v5 = [v4 classPathCache];
  v6 = [v5 containerClassPathForUserIdentity:a1[4] containerConfig:v3 typeClass:objc_opt_class()];

  v7 = +[MCMFileManager defaultManager];
  v8 = [v6 classURL];
  v9 = *(a1[6] + 8);
  obj = *(v9 + 40);
  v10 = [v7 urlsForItemsInDirectoryAtURL:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);

  if (v10)
  {
    [v6 setExists:1];
    v11 = MCMSharedBackgroundQueue();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_2_32;
    v17[3] = &unk_1E86B0898;
    v17[4] = a1[5];
    v18 = v10;
    v19 = v3;
    dispatch_async(v11, v17);
  }

  else
  {
    v12 = [*(*(a1[6] + 8) + 40) domain];
    if ([v12 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v13 = [*(*(a1[6] + 8) + 40) code];

      if (v13 == 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a1[6] + 8) + 40);
      *buf = 138412290;
      v22 = v16;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Failed to get items : %@", buf, 0xCu);
    }
  }

LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_33(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *MEMORY[0x1E69E9840];

  return [v1 _cleanupOprhanedCodeSigningMappingData];
}

void __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_2_34(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_2_32(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) containerClass];
  v4 = *MEMORY[0x1E69E9840];

  return [v1 _cleanupOrphanedDataForDirectories:v2 containerClass:v3 forUserIdentity:0];
}

void __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = containermanager_copy_global_configuration();
  v5 = [v4 classPathCache];
  v6 = [v5 containerClassPathForUserIdentity:*(a1 + 32) containerConfig:v3 typeClass:objc_opt_class()];

  v7 = +[MCMFileManager defaultManager];
  v8 = [v6 classURL];
  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  v10 = [v7 urlsForItemsInDirectoryAtURL:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);

  if (v10)
  {
    [v6 setExists:1];
    v11 = MCMSharedBackgroundQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_4;
    block[3] = &unk_1E86B0150;
    block[4] = *(a1 + 40);
    v20 = v10;
    v21 = v3;
    v22 = *(a1 + 32);
    dispatch_async(v11, block);
  }

  else
  {
    v12 = [*(*(*(a1 + 48) + 8) + 40) domain];
    if ([v12 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v13 = [*(*(*(a1 + 48) + 8) + 40) code];

      if (v13 == 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v14 = container_log_handle_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = [v3 containerClass];
      v18 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412802;
      v25 = v16;
      v26 = 2048;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "Skipping orphan cleanup of data containers for %@, %llu; error = %@", buf, 0x20u);
    }
  }

LABEL_10:

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __67__MCMClientConnection_rebootContainerManagerCleanupWithCompletion___block_invoke_4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) containerClass];
  v5 = *(a1 + 56);
  v6 = *MEMORY[0x1E69E9840];

  return [v2 _cleanupOrphanedDataForDirectories:v3 containerClass:v4 forUserIdentity:v5];
}

- (void)_cleanTransientContainersWithContainerConfig:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 usesGlobalBundleUserIdentity] & 1) != 0 || objc_msgSend(v4, "usesGlobalSystemUserIdentity"))
  {
    v5 = +[MCMContainerClassTransientPath transientGlobalURL];
    if ([v4 usesGlobalBundleUserIdentity])
    {
      v6 = +[MCMContainerClassTransientPath transientGlobalBundleURL];

      v5 = v6;
    }

    if (v5)
    {
      v7 = [(MCMClientConnection *)self context];
      v8 = [v7 containerFactory];
      v13 = 0;
      v9 = [v8 deleteURL:v5 forUserIdentity:0 error:&v13];
      v10 = v13;

      if ((v9 & 1) == 0)
      {
        v11 = container_log_handle_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v15 = v5;
          v16 = 2112;
          v17 = v10;
          _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to delete shared transient bundle URL %@ : %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    [(MCMClientConnection *)self _cleanTransientUserContainersWithContainerConfig:v4];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_cleanTransientUserContainersWithContainerConfig:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMClientConnection *)self context];
  v6 = [v5 userIdentityCache];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__MCMClientConnection__cleanTransientUserContainersWithContainerConfig___block_invoke;
  v9[3] = &unk_1E86AFF48;
  v10 = v4;
  v11 = self;
  v7 = v4;
  [v6 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __72__MCMClientConnection__cleanTransientUserContainersWithContainerConfig___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 homeDirectoryExists])
  {
    v4 = +[MCMContainerClassTransientPath transientURLWithUserIdentity:withContainerClass:](MCMContainerClassTransientPath, "transientURLWithUserIdentity:withContainerClass:", v3, [*(a1 + 32) containerClass]);
    v5 = [*(a1 + 40) context];
    v6 = [v5 containerFactory];
    v11 = 0;
    v7 = [v6 deleteURL:v4 forUserIdentity:v3 error:&v11];
    v8 = v11;

    if ((v7 & 1) == 0)
    {
      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v4;
        v14 = 2112;
        v15 = v8;
        _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Failed to delete per-user transient URL %@ : %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v4 = container_log_handle_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v3;
      _os_log_debug_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_DEBUG, "Skipping cleanup of transient data containers since home directory doesn't exist for %@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)rebootContainerManagerSetup
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  if ([v3 isBuildUpgrade])
  {
    [(MCMClientConnection *)self _regenerateContainerPaths];
    v4 = +[MCMContainerMigrator sharedInstance];
    v5 = [(MCMClientConnection *)self context];
    v20 = 0;
    v6 = [v4 performSynchronousBuildUpgradeMigration:v3 context:v5 error:&v20];
    v7 = v20;

    if ((v6 & 1) == 0)
    {
      v8 = container_log_handle_for_category();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        multiuser_flags = 138412290;
        v22 = v7;
        _os_log_error_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_ERROR, "Failed to perform build upgrade migration : %@", &multiuser_flags, 0xCu);
      }
    }

    [v3 writeCurrentBuildInfoToDisk];
  }

  v19 = 0;
  v18 = 0;
  v9 = [gCodeSigningMapping removeAllInvalidPluginCodeSigningEntriesWithNumRemoved:&v19 error:&v18];
  v10 = v18;
  if ((v9 & 1) == 0)
  {
    v11 = container_log_handle_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      multiuser_flags = 138412290;
      v22 = v10;
      _os_log_error_impl(&dword_1DF2C3000, v11, OS_LOG_TYPE_ERROR, "Failed to remove invalid plugin codesign entries; error = %@", &multiuser_flags, 0xCu);
    }
  }

  v12 = containermanager_copy_global_configuration();
  v13 = [v12 dispositionForContainerClass:7];

  if (v13 == 1)
  {
    if (v19 > 0 || (multiuser_flags = 0, v14 = MEMORY[0x1E12D3930](), !host_get_multiuser_config_flags(v14, &multiuser_flags)) && (multiuser_flags & 0x80000000) != 0)
    {
      v15 = +[MCMGroupManager defaultManager];
      v16 = [(MCMClientConnection *)self context];
      [v15 reconcileGroupContainersForContainerClass:7 context:v16];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_cleanupOprhanedCodeSigningMappingData
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v2 = [gCodeSigningMapping removeAllAdvanceCopiesWithError:&v6];
  v3 = v6;
  if ((v2 & 1) == 0)
  {
    v4 = container_log_handle_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_1DF2C3000, v4, OS_LOG_TYPE_ERROR, "Could not remove advance copies of code sign data: %@", buf, 0xCu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (BOOL)_containerURL:(id)a3 isValidForContainerClass:(unint64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E696AFB0]);
  v7 = [v5 lastPathComponent];
  v8 = [v6 initWithUUIDString:v7];

  if (a4 == 12)
  {
    v9 = +[MCMEntitlementBypassList sharedBypassList];
    v10 = [v5 lastPathComponent];
    v11 = [v9 systemContainerIdIsWellknown:v10];
  }

  else
  {
    if (a4 != 13)
    {
LABEL_7:
      v13 = v8 != 0;
      goto LABEL_8;
    }

    v9 = +[MCMEntitlementBypassList sharedBypassList];
    v10 = [v5 lastPathComponent];
    v11 = [v9 systemGroupContainerIdIsWellknown:v10];
  }

  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = 1;
LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)_cleanupOrphanedDataForDirectories:(id)a3 containerClass:(unint64_t)a4 forUserIdentity:(id)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v43 = a5;
  obj = v8;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v51 objects:v50 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v52;
    p_superclass = &OBJC_METACLASS___MCMCommandQuery.superclass;
    *&v10 = 138412546;
    v42 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v52 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v51 + 1) + 8 * i);
        v16 = [(MCMClientConnection *)self _containerURL:v15 isValidForContainerClass:a4, v42];
        v17 = [p_superclass + 409 defaultManager];
        v18 = [v17 itemExistsAtURL:v15];

        if (!v18)
        {
          v19 = container_log_handle_for_category();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_32;
          }

          v26 = [v15 path];
          *buf = 138412290;
          v47 = v26;
          _os_log_debug_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_DEBUG, "Ignoring deleted container path during cleanup: [%@]", buf, 0xCu);

LABEL_28:
          p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
          goto LABEL_32;
        }

        if (v16)
        {
          v19 = [v15 URLByAppendingPathComponent:@".com.apple.mobile_container_manager.metadata.plist" isDirectory:0];
          v20 = [p_superclass + 409 defaultManager];
          v21 = [v20 itemDoesNotExistAtURL:v19];

          if (!v21)
          {
            goto LABEL_32;
          }

          if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 0xC)
          {
            v22 = [v15 lastPathComponent];
            v23 = +[MCMEntitlementBypassList sharedBypassList];
            v24 = v23;
            v25 = a4 == 13 ? [v23 systemGroupContainerIdIsWellknown:v22] : objc_msgSend(v23, "systemContainerIdIsWellknown:", v22);
            v27 = v25;

            if (v27)
            {
              goto LABEL_28;
            }
          }

          v28 = container_log_handle_for_category();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v40 = [v15 path];
            *buf = 138412290;
            v47 = v40;
            _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "Deleting orphaned data missing a metadata file at: %@", buf, 0xCu);
          }
        }

        v29 = containermanager_copy_global_configuration();
        v30 = [v29 isInternalImage];

        if (v30)
        {
          v31 = container_log_handle_for_category();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1DF2C3000, v31, OS_LOG_TYPE_ERROR, "***INTERNAL BUILD REQUEST: If you see this, file a Radar in MobileContainerManager | all with the following data:", buf, 2u);
          }

          v32 = container_log_handle_for_category();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_ERROR, "\tSomeone is writing invalid data to a container, which has now been orphaned. Here are the invalid files:", buf, 2u);
          }

          v33 = +[MCMFileManager defaultManager];
          [v33 printDirectoryStructureAtURL:v15];

          v34 = container_log_handle_for_category();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1DF2C3000, v34, OS_LOG_TYPE_ERROR, "***END INTERNAL BUILD REQUEST", buf, 2u);
          }
        }

        v35 = [(MCMClientConnection *)self context];
        v36 = [v35 containerFactory];
        v45 = 0;
        v37 = [v36 deleteURL:v15 forUserIdentity:v43 error:&v45];
        v19 = v45;

        if (v37)
        {
          goto LABEL_28;
        }

        v38 = container_log_handle_for_category();
        p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = [v15 path];
          *buf = v42;
          v47 = v39;
          v48 = 2112;
          v49 = v19;
          _os_log_error_impl(&dword_1DF2C3000, v38, OS_LOG_TYPE_ERROR, "Failed to delete [%@]; error = %@", buf, 0x16u);

          p_superclass = (&OBJC_METACLASS___MCMCommandQuery + 8);
        }

LABEL_32:
      }

      v11 = [obj countByEnumeratingWithState:&v51 objects:v50 count:16];
    }

    while (v11);
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)containerManagerCleanupWithCompletion:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  [(MCMClientConnection *)self _resumeDeleteOperations];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke;
  aBlock[3] = &unk_1E86AF990;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = containermanager_copy_global_configuration();
  v7 = [v6 dispositionForContainerClass:1] == 1;

  if (v7)
  {
    v8 = +[MCMContainerClassStagingPath stagingGlobalURL];
    v9 = +[MCMFileManager defaultManager];
    v10 = v36;
    obj = v36[5];
    v11 = [v9 urlsForItemsInDirectoryAtURL:v8 error:&obj];
    objc_storeStrong(v10 + 5, obj);

    if (v11)
    {
      v12 = MCMSharedBackgroundQueue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_10;
      block[3] = &unk_1E86B07F8;
      v32 = v5;
      v31 = v11;
      dispatch_async(v12, block);

      v13 = v32;
    }

    else
    {
      v14 = [v36[5] domain];
      if ([v14 isEqualToString:*MEMORY[0x1E696A798]])
      {
        v15 = [v36[5] code] == 2;

        if (v15)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }

      v13 = container_log_handle_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v23 = [v8 path];
        v24 = v36[5];
        *buf = 138412546;
        v42 = v23;
        v43 = 2112;
        v44 = v24;
        _os_log_error_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_ERROR, "Failed to get items at global staging URL: %@ : %@", buf, 0x16u);
      }
    }

LABEL_11:
  }

  v16 = containermanager_copy_global_configuration();
  v17 = [v16 dispositionForContainerClass:2] == 1;

  if (v17)
  {
    v18 = [(MCMClientConnection *)self context];
    v19 = [v18 userIdentityCache];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_2;
    v27[3] = &unk_1E86AF9B8;
    v29 = &v35;
    v28 = v5;
    [v19 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v27];
  }

  v20 = MCMSharedBackgroundQueue();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_2_13;
  v25[3] = &unk_1E86B07F8;
  v25[4] = self;
  v26 = v4;
  v21 = v4;
  dispatch_async(v20, v25);

  _Block_object_dispose(&v35, 8);
  v22 = *MEMORY[0x1E69E9840];
}

void __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v28 objects:v27 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v29;
    *&v8 = 138412546;
    v20 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * v11);
        v13 = [*(a1 + 32) context];
        v14 = [v13 containerFactory];
        v22 = 0;
        v15 = [v14 deleteURL:v12 forUserIdentity:v6 error:&v22];
        v16 = v22;

        if ((v15 & 1) == 0)
        {
          v17 = container_log_handle_for_category();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = [v12 path];
            *buf = v20;
            v24 = v18;
            v25 = 2112;
            v26 = v16;
            _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Failed to delete [%@]; error = %@", buf, 0x16u);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v28 objects:v27 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_10(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MCMContainerClassStagingPath stagingURLWithUserIdentity:v3];
  v5 = +[MCMFileManager defaultManager];
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [v5 urlsForItemsInDirectoryAtURL:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);

  if (v7)
  {
    v8 = MCMSharedBackgroundQueue();
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_11;
    v15[3] = &unk_1E86B0AD0;
    v18 = *(a1 + 32);
    v16 = v7;
    v17 = v3;
    dispatch_async(v8, v15);

    v9 = v18;
  }

  else
  {
    v10 = [*(*(*(a1 + 40) + 8) + 40) domain];
    if ([v10 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v11 = [*(*(*(a1 + 40) + 8) + 40) code];

      if (v11 == 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v9 = container_log_handle_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [v4 path];
      v14 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412546;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      _os_log_error_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_ERROR, "Failed to get items at per-user staging URL: %@ : %@", buf, 0x16u);
    }
  }

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];
}

void __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_2_13(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MCMResultPromise alloc];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_3;
  v11 = &unk_1E86AF9E0;
  v12 = *(a1 + 40);
  v3 = [(MCMResultPromise *)v2 initWithCompletion:&v8];
  v4 = [MCMCommandOperationReclaimDiskSpace alloc];
  v5 = [*(a1 + 32) context];
  v6 = [(MCMCommandOperationReclaimDiskSpace *)v4 initWithAsynchronously:1 context:v5 resultPromise:v3];

  [(MCMCommandOperationReclaimDiskSpace *)v6 execute];
  v7 = *MEMORY[0x1E69E9840];
}

id __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

uint64_t __61__MCMClientConnection_containerManagerCleanupWithCompletion___block_invoke_11(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = *(a1[6] + 16);

  return v3();
}

- (void)containerManagerSetup
{
  v91 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  v4 = [v3 dispositionForContainerClass:12];

  if (v4 == 1)
  {
    v5 = [(MCMClientConnection *)self context];
    v6 = containermanager_copy_global_configuration();
    v7 = [v6 systemContainerMode];

    if (!v7)
    {
LABEL_60:

      goto LABEL_61;
    }

    v8 = +[MCMFileManager defaultManager];
    v9 = containermanager_copy_global_configuration();
    v10 = [v9 systemContainerMode];

    if (v10 == 1)
    {
      v11 = +[MCMUserIdentitySharedCache sharedInstance];
      v12 = [v11 globalSystemUserIdentity];
    }

    else
    {
      if (v10 != 2)
      {
LABEL_59:

        goto LABEL_60;
      }

      v11 = +[MCMUserIdentitySharedCache sharedInstance];
      v12 = [v11 userIdentityForCurrentContext];
    }

    v13 = v12;

    v14 = [MCMContainerClassBackupPath systemContainerBackupBaseDirectoryWithUserIdentity:v13];
    v15 = [MCMContainerClassBackupPath systemContainerBackupDirectoryWithUserIdentity:v13];
    v16 = [MCMContainerClassBackupPath systemGroupContainerBackupDirectoryWithUserIdentity:v13];
    v61 = v16;
    v62 = v15;
    if ([v8 itemDoesNotExistAtURL:v14])
    {
      v17 = container_log_handle_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_DEBUG, "There are no system/system group containers staged for restore, skipping.", buf, 2u);
      }

      v63 = 0;
      v64 = 0;
      v18 = 0;
      v19 = 0;
LABEL_11:

LABEL_54:
      v66 = v19;
      v42 = [v8 removeItemAtURL:v14 error:&v66];
      v43 = v66;

      if ((v42 & 1) == 0)
      {
        v44 = container_log_handle_for_category();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v59 = [v14 path];
          *v71 = 138412546;
          v72 = v59;
          v73 = 2112;
          v74 = v43;
          _os_log_error_impl(&dword_1DF2C3000, v44, OS_LOG_TYPE_ERROR, "Failed to remove system container base dir %@: %@", v71, 0x16u);
        }
      }

      goto LABEL_59;
    }

    if ([v8 itemExistsAtURL:v15])
    {
      [v15 URLByAppendingPathExtension:@"inprogress"];
      v64 = v70[1] = 0;
      v20 = [v8 removeItemAtURL:? error:?];
      v21 = 0;
      if ((v20 & 1) == 0)
      {
        v22 = v16;
        v23 = container_log_handle_for_category();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v84 = v21;
          _os_log_error_impl(&dword_1DF2C3000, v23, OS_LOG_TYPE_ERROR, "Failed to remove existing inprogress system containers: %@", buf, 0xCu);
        }

        v16 = v22;
      }

      v70[0] = v21;
      v24 = [v8 moveItemAtURL:v15 toURL:v64 error:v70];
      v19 = v70[0];

      if (v24)
      {
        v25 = 1;
        goto LABEL_24;
      }

      v26 = container_log_handle_for_category();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v84 = v19;
        _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Failed to move system containers to inprogress: %@", buf, 0xCu);
      }
    }

    else
    {
      v64 = 0;
      v19 = 0;
    }

    v25 = 0;
LABEL_24:
    if ([v8 itemExistsAtURL:v16])
    {
      [v16 URLByAppendingPathExtension:@"inprogress"];
      v63 = v69[1] = v19;
      v27 = [v8 removeItemAtURL:? error:?];
      v28 = v19;

      if ((v27 & 1) == 0)
      {
        v29 = v16;
        v30 = container_log_handle_for_category();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v84 = v28;
          _os_log_error_impl(&dword_1DF2C3000, v30, OS_LOG_TYPE_ERROR, "Failed to remove existing inprogress system containers: %@", buf, 0xCu);
        }

        v16 = v29;
      }

      v69[0] = v28;
      v31 = [v8 moveItemAtURL:v16 toURL:v63 error:v69];
      v19 = v69[0];

      if (v31)
      {
        if (!v25)
        {
          v18 = 0;
          v35 = v19;
LABEL_69:
          v53 = container_log_handle_for_category();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            *v75 = 0;
            _os_log_debug_impl(&dword_1DF2C3000, v53, OS_LOG_TYPE_DEBUG, "Installing system group containers", v75, 2u);
          }

          v67 = v35;
          v54 = [v8 urlsForItemsInDirectoryAtURL:v63 error:&v67];
          v19 = v67;

          if (v54)
          {
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v17 = v54;
            v55 = [v17 countByEnumeratingWithState:&v79 objects:v75 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v80;
              do
              {
                for (i = 0; i != v56; ++i)
                {
                  if (*v80 != v57)
                  {
                    objc_enumerationMutation(v17);
                  }

                  _moveSystemContainerIntoPlace(*(*(&v79 + 1) + 8 * i), 13, v5, v13);
                }

                v56 = [v17 countByEnumeratingWithState:&v79 objects:v75 count:16];
              }

              while (v56);
              v18 = v17;
            }

            else
            {
              v18 = v17;
            }
          }

          else
          {
            v17 = container_log_handle_for_category();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *v75 = 138412546;
              v76 = v63;
              v77 = 2112;
              v78 = v19;
              _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Couldn't find any system shared containers at %@: %@", v75, 0x16u);
            }

            v18 = 0;
          }

          goto LABEL_11;
        }

        v32 = 1;
LABEL_34:
        v33 = container_log_handle_for_category();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_DEBUG, "Installing system containers", buf, 2u);
        }

        v68 = v19;
        v34 = [v8 urlsForItemsInDirectoryAtURL:v64 error:&v68];
        v35 = v68;

        if (v34)
        {
          v60 = v32;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v18 = v34;
          v36 = [v18 countByEnumeratingWithState:&v87 objects:buf count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v88;
            do
            {
              for (j = 0; j != v37; ++j)
              {
                if (*v88 != v38)
                {
                  objc_enumerationMutation(v18);
                }

                _moveSystemContainerIntoPlace(*(*(&v87 + 1) + 8 * j), 12, v5, v13);
              }

              v37 = [v18 countByEnumeratingWithState:&v87 objects:buf count:16];
            }

            while (v37);
          }

          if (v60)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v41 = container_log_handle_for_category();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v84 = v64;
            v85 = 2112;
            v86 = v35;
            _os_log_error_impl(&dword_1DF2C3000, v41, OS_LOG_TYPE_ERROR, "Couldn't find any system containers at %@: %@", buf, 0x16u);
          }

          v18 = 0;
          if (v32)
          {
            goto LABEL_69;
          }
        }

        v19 = v35;
        goto LABEL_54;
      }

      v40 = container_log_handle_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v84 = v19;
        _os_log_error_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_ERROR, "Failed to move shared system containers to inprogress: %@", buf, 0xCu);
      }

      if ((v25 & 1) == 0)
      {
LABEL_49:
        v18 = 0;
        goto LABEL_54;
      }
    }

    else
    {
      v63 = 0;
      if ((v25 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v32 = 0;
    goto LABEL_34;
  }

LABEL_61:
  v45 = [(MCMClientConnection *)self context];
  v65 = 0;
  v46 = [MCMCommandReplaceContainer recoverFromReplaceOperationsWithContext:v45 error:&v65];
  v47 = v65;

  if (!v46)
  {
    v48 = container_log_handle_for_category();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v84 = v47;
      _os_log_error_impl(&dword_1DF2C3000, v48, OS_LOG_TYPE_ERROR, "Failed recovering from replace operations: %@", buf, 0xCu);
    }
  }

  v49 = containermanager_copy_global_configuration();
  v50 = [v49 runmode];

  if (v50)
  {
    v51 = +[MCMDataProtectionManager defaultManager];
    [v51 restartPendingDataProtectionOperations];
  }

  v52 = *MEMORY[0x1E69E9840];
}

- (id)clientBundleIdentifier
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [(MCMClientConnection *)self context];
  v3 = [v2 clientIdentity];
  v4 = [v3 codeSignInfo];
  v5 = [v4 identifier];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (MCMClientConnection)initWithContext:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MCMClientConnection;
  v6 = [(MCMClientConnection *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (MCMClientConnection)init
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = MCMClientConnection;
  v2 = [(MCMClientConnection *)&v15 init];
  if (v2)
  {
    v3 = +[MCMUserIdentitySharedCache sharedInstance];
    v4 = [v3 defaultUserIdentity];
    v5 = [MCMClientIdentity anonymousPrivilegedClientIdentityWithUserIdentity:v4];
    v6 = [MCMContainerFactory alloc];
    v7 = [(MCMContainerFactory *)v6 initWithContainerCache:gContainerCache clientIdentity:v5 userIdentityCache:v3];
    v8 = [MCMCommandContext alloc];
    v9 = gContainerCache;
    v10 = containermanager_copy_global_configuration();
    v11 = [(MCMCommandContext *)v8 initWithClientIdentity:v5 containerCache:v9 containerFactory:v7 userIdentityCache:v3 clientFactory:0 kernelPersonaID:0 globalConfiguration:v10];
    context = v2->_context;
    v2->_context = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (id)privilegedClientConnectionWithUserIdentity:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return [a1 privilegedClientConnectionWithUserIdentity:a3 kernel:0];
}

+ (id)sharedClientConnection
{
  v5 = *MEMORY[0x1E69E9840];
  if (sharedClientConnection_onceToken != -1)
  {
    dispatch_once(&sharedClientConnection_onceToken, &__block_literal_global_977);
  }

  v2 = sharedClientConnection_sharedConnection;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t __45__MCMClientConnection_sharedClientConnection__block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  sharedClientConnection_sharedConnection = objc_opt_new();
  v0 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

@end