@interface MCMGroupManager
+ (id)defaultManager;
- (MCMGroupManager)initWithUserIdentityCache:(id)cache;
- (MCMUserIdentityCache)userIdentityCache;
- (id)groupContainerIdentifiersForOwnerIdentifier:(id)identifier groupContainerClass:(unint64_t)class codeSignInfo:(id)info withError:(id *)error;
- (void)_cleanupUnreferencedGroupContainersForUserIdentity:(id)identity containerClass:(unint64_t)class referenceCounts:(id)counts context:(id)context;
- (void)reconcileGroupContainersForContainerClass:(unint64_t)class context:(id)context;
@end

@implementation MCMGroupManager

+ (id)defaultManager
{
  v5[5] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__MCMGroupManager_defaultManager__block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = self;
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

- (id)groupContainerIdentifiersForOwnerIdentifier:(id)identifier groupContainerClass:(unint64_t)class codeSignInfo:(id)info withError:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  infoCopy = info;
  identifier = [infoCopy identifier];
  v12 = [identifierCopy isEqualToString:identifier];

  objc_opt_class();
  v13 = identifierCopy;
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
    if (((infoCopy != 0) & v12) != 0)
    {
      entitlements = [infoCopy entitlements];
      v16 = entitlements;
      if (class == 13)
      {
        [entitlements systemGroupIdentifiers];
      }

      else
      {
        [entitlements appGroupIdentifiers];
      }
      v19 = ;
    }

    else
    {
      if (class == 13)
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
  if (error && v18)
  {
    v23 = v18;
    v20 = 0;
    *error = v18;
  }

LABEL_30:

  v24 = *MEMORY[0x1E69E9840];

  return v20;
}

- (void)_cleanupUnreferencedGroupContainersForUserIdentity:(id)identity containerClass:(unint64_t)class referenceCounts:(id)counts context:(id)context
{
  v56 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  countsCopy = counts;
  contextCopy = context;
  v43 = objc_opt_new();
  containerCache = [contextCopy containerCache];
  v42 = identityCopy;
  v13 = [MEMORY[0x1E695DFD8] setWithObject:identityCopy];
  v44 = 0;
  v14 = [containerCache entriesForUserIdentities:v13 contentClass:class transient:0 error:&v44];
  v15 = v44;

  if (v14)
  {
    v40 = v15;
    v41 = contextCopy;
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

          metadataMinimal = [*(*(&v52 + 1) + 8 * v21) metadataMinimal];
          identifier = [metadataMinimal identifier];
          v24 = [countsCopy countForObject:identifier];
          if (v24)
          {
            v25 = v24;
            v26 = container_log_handle_for_category();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v46 = identifier;
              v47 = 2048;
              v48 = v25;
              _os_log_impl(&dword_1DF2C3000, v26, OS_LOG_TYPE_DEFAULT, "Reference count for [%{public}@] is %lu", buf, 0x16u);
            }
          }

          else
          {
            containerIdentity = [metadataMinimal containerIdentity];
            [v18 addObject:containerIdentity];

            v26 = container_log_handle_for_category();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              shortDescription = [v42 shortDescription];
              containerPath = [metadataMinimal containerPath];
              *buf = 138412802;
              v46 = identifier;
              v47 = 2112;
              v48 = shortDescription;
              v49 = 2112;
              v50 = containerPath;
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
      allObjects = [v30 allObjects];
      contextCopy = v41;
      v33 = [MCMCommandOperationDelete commandForOperationDeleteWithContainerIdentities:allObjects removeAllCodeSignInfo:0 context:v41 resultPromise:v31];

      [v33 execute];
      result = [(MCMResultPromise *)v31 result];
      error = [result error];

      v14 = v39;
      if (error)
      {
        v36 = container_log_handle_for_category();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = error;
          _os_log_error_impl(&dword_1DF2C3000, v36, OS_LOG_TYPE_ERROR, "Failed to destroy group container(s) during reconciliation; error = %@", buf, 0xCu);
        }
      }

      v15 = v40;
    }

    else
    {
      v15 = v40;
      contextCopy = v41;
      v14 = v39;
    }
  }

  else
  {
    v31 = container_log_handle_for_category();
    if (os_log_type_enabled(&v31->super, OS_LOG_TYPE_ERROR))
    {
      shortDescription2 = [v42 shortDescription];
      *buf = 138412546;
      v46 = shortDescription2;
      v47 = 2112;
      v48 = v15;
      _os_log_error_impl(&dword_1DF2C3000, &v31->super, OS_LOG_TYPE_ERROR, "Failed to fetch group container list for %@: %@", buf, 0x16u);
    }
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)reconcileGroupContainersForContainerClass:(unint64_t)class context:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = [gCodeSigningMapping copyReferenceCountSetForContainerClass:class];
  if (v7)
  {
    if (class == 7)
    {
      userIdentityCache = [(MCMGroupManager *)self userIdentityCache];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __69__MCMGroupManager_reconcileGroupContainersForContainerClass_context___block_invoke;
      v13[3] = &unk_1E86B07D0;
      v13[4] = self;
      v16 = 7;
      v14 = v7;
      v15 = contextCopy;
      [userIdentityCache forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v13];
    }

    else if (class == 13)
    {
      userIdentityCache2 = [(MCMGroupManager *)self userIdentityCache];
      globalSystemUserIdentity = [userIdentityCache2 globalSystemUserIdentity];

      [(MCMGroupManager *)self _cleanupUnreferencedGroupContainersForUserIdentity:globalSystemUserIdentity containerClass:13 referenceCounts:v7 context:contextCopy];
    }
  }

  else
  {
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      classCopy = class;
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

- (MCMGroupManager)initWithUserIdentityCache:(id)cache
{
  v11 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v10.receiver = self;
  v10.super_class = MCMGroupManager;
  v6 = [(MCMGroupManager *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userIdentityCache, cache);
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