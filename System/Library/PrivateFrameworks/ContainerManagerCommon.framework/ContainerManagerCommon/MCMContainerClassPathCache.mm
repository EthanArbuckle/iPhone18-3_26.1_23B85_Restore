@interface MCMContainerClassPathCache
- (MCMContainerClassPathCache)initWithUserIdentityCache:(id)a3;
- (MCMUserIdentityCache)userIdentityCache;
- (id)_lock_containerClassPathForUserIdentity:(id)a3 containerConfig:(id)a4 typeClass:(Class)a5;
- (id)containerClassPathForContainerIdentity:(id)a3 typeClass:(Class)a4;
- (id)containerClassPathForUserIdentity:(id)a3 containerConfig:(id)a4 typeClass:(Class)a5;
- (id)containerClassPathWithURL:(id)a3 reference:(id)a4;
- (id)referenceForPOSIXUser:(id)a3;
- (void)_lock_flush;
- (void)flush;
- (void)userIdentityCache:(id)a3 didInvalidateUserIdentity:(id)a4;
@end

@implementation MCMContainerClassPathCache

- (MCMUserIdentityCache)userIdentityCache
{
  result = self->_userIdentityCache;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)_lock_flush
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lookupLock);
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  lookup = self->_lookup;
  self->_lookup = v3;
  v5 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66BB8]();
}

- (id)_lock_containerClassPathForUserIdentity:(id)a3 containerConfig:(id)a4 typeClass:(Class)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  os_unfair_lock_assert_owner(&self->_lookupLock);
  v10 = [v9 containerClass];

  v11 = NSStringFromClass(a5);
  if (v8)
  {
    v12 = [(NSMutableDictionary *)self->_lookup objectForKeyedSubscript:v11];
    if (!v12)
    {
      v13 = MEMORY[0x1E695DF90];
      v14 = +[MCMContainerClassPath containerPathTypeClasses];
      v12 = [v13 dictionaryWithCapacity:{objc_msgSend(v14, "count")}];

      [(NSMutableDictionary *)self->_lookup setObject:v12 forKeyedSubscript:v11];
    }

    v15 = [v12 objectForKeyedSubscript:v8];
    if (!v15)
    {
      v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:15];
      [v12 setObject:v15 forKeyedSubscript:v8];
    }

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
    v17 = [v15 objectForKeyedSubscript:v16];

    if (!v17)
    {
      v17 = [(objc_class *)a5 containerPathForUserIdentity:v8 containerClass:v10];
      v18 = container_log_handle_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v24 = 138413058;
        v25 = v11;
        v26 = 2112;
        v27 = v8;
        v28 = 2048;
        v29 = v10;
        v30 = 2112;
        v31 = v17;
        _os_log_debug_impl(&dword_1DF2C3000, v18, OS_LOG_TYPE_DEBUG, "Container class path cache miss, creating type = [%@], userIdentity = [%@], class = %llu: %@", &v24, 0x2Au);
      }

      if (v17)
      {
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10];
        [v15 setObject:v17 forKeyedSubscript:v19];
      }
    }

    v20 = v17;

    v21 = v20;
  }

  else
  {
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v24 = 136315138;
      v25 = "[MCMContainerClassPathCache _lock_containerClassPathForUserIdentity:containerConfig:typeClass:]";
      _os_log_fault_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_FAULT, "Cannot call %s with a nil user identity.", &v24, 0xCu);
    }

    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)userIdentityCache:(id)a3 didInvalidateUserIdentity:(id)a4
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9840];

  [(MCMContainerClassPathCache *)self flush:a3];
}

- (id)containerClassPathWithURL:(id)a3 reference:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 path];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v6 hasPrefix:v11])
        {
          v8 = [v7 objectForKeyedSubscript:v11];
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v14 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)referenceForPOSIXUser:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:30];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(MCMContainerClassPathCache *)self userIdentityCache];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __52__MCMContainerClassPathCache_referenceForPOSIXUser___block_invoke;
  v24[3] = &unk_1E86AFF48;
  v25 = v4;
  v8 = v6;
  v26 = v8;
  v9 = v4;
  [v7 forEachAccessibleUserIdentitySynchronouslyExecuteBlock:v24];

  v10 = containermanager_copy_global_configuration();
  v11 = [v10 classIterator];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __52__MCMContainerClassPathCache_referenceForPOSIXUser___block_invoke_2;
  v20 = &unk_1E86AFF70;
  v21 = v8;
  v22 = self;
  v23 = v5;
  v12 = v5;
  v13 = v8;
  [v11 selectWithIterator:&v17];

  v14 = [v12 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

void __52__MCMContainerClassPathCache_referenceForPOSIXUser___block_invoke(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = [a2 userIdentityWithPOSIXUser:*(a1 + 32)];
  [*(a1 + 40) addObject:?];
  v3 = *MEMORY[0x1E69E9840];
}

void __52__MCMContainerClassPathCache_referenceForPOSIXUser___block_invoke_2(id *a1, void *a2)
{
  v58[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[MCMUserIdentitySharedCache sharedInstance];
  v5 = [v4 defaultUserIdentity];
  v58[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];

  v38 = v3;
  if (+[MCMUserIdentity isUserIdentityRequiredForContainerClass:](MCMUserIdentity, "isUserIdentityRequiredForContainerClass:", [v3 containerClass]))
  {
    v7 = a1[4];
LABEL_11:

    v6 = v7;
    goto LABEL_12;
  }

  v8 = [v3 containerClass];
  if (v8 <= 8 && ((1 << v8) & 0x12A) != 0)
  {
    v9 = containermanager_copy_global_configuration();
    v10 = [v9 bundleContainerMode];

    if (v10 == 1)
    {
      v11 = +[MCMUserIdentitySharedCache sharedInstance];
      v12 = [v11 globalBundleUserIdentity];
      v57 = v12;
      v13 = MEMORY[0x1E695DEC8];
      v14 = &v57;
LABEL_10:
      v7 = [v13 arrayWithObjects:v14 count:1];

      v3 = v38;
      v6 = v11;
      goto LABEL_11;
    }
  }

  if (([v3 containerClass] & 0xFFFFFFFFFFFFFFFELL) == 0xC)
  {
    v15 = containermanager_copy_global_configuration();
    v16 = [v15 systemContainerMode];

    if (v16 == 1)
    {
      v11 = +[MCMUserIdentitySharedCache sharedInstance];
      v12 = [v11 globalSystemUserIdentity];
      v56 = v12;
      v13 = MEMORY[0x1E695DEC8];
      v14 = &v56;
      goto LABEL_10;
    }
  }

LABEL_12:
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v6;
  v35 = [obj countByEnumeratingWithState:&v52 objects:v51 count:16];
  if (v35)
  {
    v34 = *v53;
    do
    {
      v17 = 0;
      do
      {
        if (*v53 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v17;
        v18 = *(*(&v52 + 1) + 8 * v17);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v45[0] = objc_opt_class();
        v45[1] = objc_opt_class();
        v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
        v20 = [v19 countByEnumeratingWithState:&v47 objects:v46 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v48;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v48 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v47 + 1) + 8 * i);
              v25 = [a1[5] containerClassPathForUserIdentity:v18 containerConfig:v3 typeClass:v24];
              v26 = v25;
              if (v25)
              {
                v27 = [v25 classURL];
                v28 = [v27 path];
                v29 = [v28 stringByAppendingString:@"/"];

                v3 = v38;
                [a1[6] setObject:v26 forKeyedSubscript:v29];
              }

              else
              {
                v29 = container_log_handle_for_category();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v37 = [v18 shortDescription];
                  v30 = [v3 containerClass];
                  v31 = NSStringFromClass(v24);
                  *buf = 138412802;
                  v40 = v37;
                  v41 = 2048;
                  v42 = v30;
                  v3 = v38;
                  v43 = 2112;
                  v44 = v31;
                  _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "Could not fetch a class path; userIdentity = %@, class = %llu, type = %@", buf, 0x20u);
                }
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v47 objects:v46 count:16];
          }

          while (v21);
        }

        v17 = v36 + 1;
      }

      while (v36 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v52 objects:v51 count:16];
    }

    while (v35);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)flush
{
  v4 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lookupLock);
  [(MCMContainerClassPathCache *)self _lock_flush];
  v3 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(&self->_lookupLock);
}

- (id)containerClassPathForUserIdentity:(id)a3 containerConfig:(id)a4 typeClass:(Class)a5
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a3;
  v10 = [(MCMContainerClassPathCache *)self userIdentityCache];
  v11 = [v10 userIdentityForContainerConfig:v8 originatorUserIdentity:v9];

  os_unfair_lock_lock(&self->_lookupLock);
  v12 = [(MCMContainerClassPathCache *)self _lock_containerClassPathForUserIdentity:v11 containerConfig:v8 typeClass:a5];

  os_unfair_lock_unlock(&self->_lookupLock);
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)containerClassPathForContainerIdentity:(id)a3 typeClass:(Class)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 userIdentity];
  v8 = [v6 containerConfig];

  v9 = [(MCMContainerClassPathCache *)self containerClassPathForUserIdentity:v7 containerConfig:v8 typeClass:a4];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (MCMContainerClassPathCache)initWithUserIdentityCache:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MCMContainerClassPathCache;
  v6 = [(MCMContainerClassPathCache *)&v11 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    lookup = v6->_lookup;
    v6->_lookup = v7;

    v6->_lookupLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_userIdentityCache, a3);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

@end