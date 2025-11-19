@interface MCMGroupManager
+ (id)defaultManager;
- (MCMGroupManager)initWithUserIdentityCache:(id)a3;
- (MCMUserIdentityCache)userIdentityCache;
- (id)groupContainerIdentifiersForOwnerIdentifier:(id)a3 groupContainerClass:(unint64_t)a4 codeSignInfo:(id)a5 withError:(id *)a6;
- (void)_cleanupUnreferencedGroupContainersForUserIdentity:(id)a3 containerClass:(unint64_t)a4 referenceCounts:(id)a5 context:(id)a6;
- (void)reconcileGroupContainersForContainerClass:(unint64_t)a3 context:(id)a4;
@end

@implementation MCMGroupManager

+ (id)defaultManager
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__MCMGroupManager_defaultManager__block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = a1;
  if (defaultManager_onceToken_9443 != -1)
  {
    dispatch_once(&defaultManager_onceToken_9443, v5);
  }

  v2 = defaultManager_sharedInstance;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (MCMUserIdentityCache)userIdentityCache
{
  result = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (id)groupContainerIdentifiersForOwnerIdentifier:(id)a3 groupContainerClass:(unint64_t)a4 codeSignInfo:(id)a5 withError:(id *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = [v10 identifier];
  v12 = [v9 isEqualToString:v11];

  objc_opt_class();
  v13 = v9;
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    if (((v10 != 0) & v12) != 0)
    {
      v15 = [v10 entitlements];
      v16 = v15;
      if (a4 == 13)
      {
        [v15 systemGroupIdentifiers];
      }

      else
      {
        [v15 appGroupIdentifiers];
      }
      v19 = ;
    }

    else
    {
      if (a4 == 13)
      {
        [gCodeSigningMapping systemGroupIdentifiersForIdentifier:v13];
      }

      else
      {
        [gCodeSigningMapping appGroupIdentifiersForIdentifier:v13];
      }
      v19 = ;
    }

    if (!v19)
    {
      v20 = [MEMORY[0x1E695DFD8] set];
LABEL_23:
      v18 = 0;
      goto LABEL_30;
    }

    objc_opt_class();
    v20 = v19;
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      goto LABEL_23;
    }

    v22 = container_log_handle_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v26 = 138412546;
      v27 = v13;
      v28 = 2112;
      v29 = v20;
      _os_log_error_impl(&dword_1DF2C3000, v22, OS_LOG_TYPE_ERROR, "Wrong group id obj type for ID: %@ : %@", &v26, 0x16u);
    }

    v18 = [[MCMError alloc] initWithErrorType:11 category:3];
  }

  else
  {
    v17 = container_log_handle_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v26 = 138412290;
      v27 = v13;
      _os_log_error_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_ERROR, "Can't act on an invalid object: ID: %@", &v26, 0xCu);
    }

    v18 = [[MCMError alloc] initWithErrorType:11 category:3];
  }

  v20 = 0;
  if (a6 && v18)
  {
    v23 = v18;
    v20 = 0;
    *a6 = v18;
  }

LABEL_30:

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)_cleanupUnreferencedGroupContainersForUserIdentity:(id)a3 containerClass:(unint64_t)a4 referenceCounts:(id)a5 context:(id)a6
{
  v56 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v43 = objc_opt_new();
  v12 = [v11 containerCache];
  v42 = v9;
  v13 = [MEMORY[0x1E695DFD8] setWithObject:v9];
  v44 = 0;
  v14 = [v12 entriesForUserIdentities:v13 contentClass:a4 transient:0 error:&v44];
  v15 = v44;

  if (v14)
  {
    v40 = v15;
    v41 = v11;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v39 = v14;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v52 objects:v51 count:16];
    v18 = v43;
    if (v17)
    {
      v19 = v17;
      v20 = *v53;
      do
      {
        v21 = 0;
        do
        {
          if (*v53 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = [*(*(&v52 + 1) + 8 * v21) metadataMinimal];
          v23 = [v22 identifier];
          v24 = [v10 countForObject:v23];
          if (v24)
          {
            v25 = v24;
            v26 = container_log_handle_for_category();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v46 = v23;
              v47 = 2048;
              v48 = v25;
              _os_log_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_DEFAULT, "Reference count for [%{public}@] is %lu", buf, 0x16u);
            }
          }

          else
          {
            v27 = [v22 containerIdentity];
            [v18 addObject:v27];

            v26 = container_log_handle_for_category();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v28 = [v42 shortDescription];
              v29 = [v22 containerPath];
              *buf = 138412802;
              v46 = v23;
              v47 = 2112;
              v48 = v28;
              v49 = 2112;
              v50 = v29;
              _os_log_error_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_ERROR, "Removing group container [%@] for %@ at %@", buf, 0x20u);

              v18 = v43;
            }
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v16 countByEnumeratingWithState:&v52 objects:v51 count:16];
      }

      while (v19);
    }

    v30 = v18;
    v31 = objc_alloc_init(MCMResultPromise);
    if ([v30 count])
    {
      v32 = [v30 allObjects];
      v11 = v41;
      v33 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:v32 removeAllCodeSignInfo:0 context:v41 resultPromise:v31];

      [v33 execute];
      v34 = [(MCMResultPromise *)v31 result];
      v35 = [v34 error];

      v14 = v39;
      if (v35)
      {
        v36 = container_log_handle_for_category();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = v35;
          _os_log_error_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_ERROR, "Failed to destroy group container(s) during reconciliation; error = %@", buf, 0xCu);
        }
      }

      v15 = v40;
    }

    else
    {
      v15 = v40;
      v11 = v41;
      v14 = v39;
    }
  }

  else
  {
    v31 = container_log_handle_for_category();
    if (os_log_type_enabled(&v31->super, OS_LOG_TYPE_ERROR))
    {
      v37 = [v42 shortDescription];
      *buf = 138412546;
      v46 = v37;
      v47 = 2112;
      v48 = v15;
      _os_log_error_impl(&dword_1DF2C3000, &v31->super, OS_LOG_TYPE_ERROR, "Failed to fetch group container list for %@: %@", buf, 0x16u);
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)reconcileGroupContainersForContainerClass:(unint64_t)a3 context:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [gCodeSigningMapping copyReferenceCountSetForContainerClass:a3];
  if (v7)
  {
    if (a3 == 7)
    {
      v11 = [(MCMGroupManager *)self userIdentityCache];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __69__MCMGroupManager_reconcileGroupContainersForContainerClass_context___block_invoke;
      v13[3] = &unk_1E86B07D0;
      v13[4] = self;
      v16 = 7;
      v14 = v7;
      v15 = v6;
      [v11 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v13];
    }

    else if (a3 == 13)
    {
      v8 = [(MCMGroupManager *)self userIdentityCache];
      v9 = [v8 globalSystemUserIdentity];

      [(MCMGroupManager *)self _cleanupUnreferencedGroupContainersForUserIdentity:v9 containerClass:13 referenceCounts:v7 context:v6];
    }
  }

  else
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v18 = a3;
      _os_log_error_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_ERROR, "Failed to get reference count information for group type: %llu", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __69__MCMGroupManager_reconcileGroupContainersForContainerClass_context___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if ([v7 homeDirectoryExists])
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) mutableCopy];
    [v4 _cleanupUnreferencedGroupContainersForUserIdentity:v7 containerClass:v3 referenceCounts:v5 context:*(a1 + 48)];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (MCMGroupManager)initWithUserIdentityCache:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MCMGroupManager;
  v6 = [(MCMGroupManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userIdentityCache, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void __33__MCMGroupManager_defaultManager__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = objc_alloc(*(a1 + 32));
  v5 = +[MCMUserIdentitySharedCache sharedInstance];
  v2 = [v1 initWithUserIdentityCache:?];
  v3 = defaultManager_sharedInstance;
  defaultManager_sharedInstance = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end