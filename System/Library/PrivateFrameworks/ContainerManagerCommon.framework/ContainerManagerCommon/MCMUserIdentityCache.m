@interface MCMUserIdentityCache
+ (BOOL)personasAreSupported;
+ (id)defaultUserIdentity;
+ (id)globalBundleUserIdentity;
+ (id)globalSystemUserIdentity;
+ (id)userIdentityWithPersonaAttributes:(id)a3;
+ (id)userIdentityWithPersonaAttributes:(id)a3 POSIXUser:(id)a4 forceUnspecific:(BOOL)a5;
- (BOOL)_lock_resync_fromUserPersonaAttributes:(id)a3;
- (BOOL)cacheInvalid;
- (MCMContainerClassIterator)classIterator;
- (MCMUserIdentity)defaultUserIdentity;
- (MCMUserIdentity)lock_userIdentityForPersonalPersona;
- (MCMUserIdentity)lock_userIdentityForUnspecificPersona;
- (MCMUserIdentityCache)init;
- (NSDictionary)lock_bundleToDataSeparatedIdentitiesMap;
- (NSDictionary)lock_personaIDToUserIdentityMap;
- (NSDictionary)lock_personaUniqueStringToUserIdentityMap;
- (NSHashTable)observers;
- (NSMutableDictionary)lock_libraryRepairForUserIdentity;
- (NSMutableDictionary)lock_managedPathRegistryForUserIdentity;
- (NSSet)previousUserIdentities;
- (id)_lock_userIdentitiesForBundleIdentifier:(id)a3;
- (id)_lock_userIdentityForCurrentUserWithPersonaUniqueString:(id)a3;
- (id)allAccessibleUserIdentities;
- (id)globalBundleUserIdentity;
- (id)globalSystemUserIdentity;
- (id)libraryRepairForUserIdentity:(id)a3;
- (id)managedUserPathRegistryForUserIdentity:(id)a3;
- (id)personaUniqueStringForCurrentContext;
- (id)unspecificUserIdentity;
- (id)userIdentitiesForBundleIdentifier:(id)a3;
- (id)userIdentitiesForContainerConfig:(id)a3 originatorUserIdentities:(id)a4;
- (id)userIdentityForClient:(container_client *)a3 error:(id *)a4;
- (id)userIdentityForContainerConfig:(id)a3 originatorUserIdentity:(id)a4;
- (id)userIdentityForCurrentContext;
- (id)userIdentityForCurrentUserWithPersonaUniqueString:(id)a3;
- (id)userIdentityForLegacyMobileUser;
- (id)userIdentityForPersonaUniqueString:(id)a3 POSIXUser:(id)a4;
- (id)userIdentityForPersonalPersona;
- (id)userIdentityForPersonalPersonaWithPOSIXUser:(id)a3;
- (unint64_t)savedGeneration;
- (void)_lock_flush;
- (void)_lock_flushAndRepopulateWithUserIdentities:(id)a3;
- (void)_lock_resync;
- (void)_notifyObserversOfChangesWithUserIdentities:(id)a3 firstFetch:(BOOL)a4;
- (void)_refreshFromUserManagementIfNecessary;
- (void)addUserIdentityCacheObserver:(id)a3;
- (void)flush;
- (void)flushAndRepopulateWithUserIdentities:(id)a3;
- (void)forEachAccessibleUserIdentitySynchronouslyExecuteBlock:(id)a3;
- (void)removeUserIdentityCacheObserver:(id)a3;
- (void)setCacheInvalid:(BOOL)a3;
- (void)setPreviousUserIdentities:(id)a3;
- (void)setSavedGeneration:(unint64_t)a3;
@end

@implementation MCMUserIdentityCache

- (id)personaUniqueStringForCurrentContext
{
  v10 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() personasAreSupported] && objc_opt_class())
  {
    v2 = [MEMORY[0x1E69DF060] sharedManager];
    v3 = [v2 currentPersona];

    v4 = [v3 userPersonaUniqueString];
    if (!v4)
    {
      v5 = container_log_handle_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_error_impl(&dword_1DF2C3000, v5, OS_LOG_TYPE_ERROR, "Could not fetch persona unique string", v9, 2u);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  if (personaUniqueStringForCurrentContext_onceToken != -1)
  {
    dispatch_once(&personaUniqueStringForCurrentContext_onceToken, &__block_literal_global_14);
    if (v4)
    {
      goto LABEL_11;
    }

LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_11:
  v6 = [personaUniqueStringForCurrentContext_dedupCache objectForKey:v4];
  if (!v6)
  {
    [personaUniqueStringForCurrentContext_dedupCache setObject:v4 forKey:v4];
    v6 = v4;
  }

LABEL_16:
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)personasAreSupported
{
  v6 = *MEMORY[0x1E69E9840];
  if (MCMPersonasAreSupported_onceToken != -1)
  {
    dispatch_once(&MCMPersonasAreSupported_onceToken, &__block_literal_global_9454);
  }

  if (MCMPersonasAreSupported_staticPersonasSupported == 1)
  {
    v2 = containermanager_copy_global_configuration();
    v3 = [v2 dispositionForContainerClass:2] == 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_refreshFromUserManagementIfNecessary
{
  v13 = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() personasAreSupported])
  {
    v3 = [MEMORY[0x1E69DF060] sharedManager];
    v10 = 0;
    v4 = [v3 personaGenerationIdentifierWithError:&v10];

    if (v4 && v4 != self->_savedGeneration)
    {
      self->_savedGeneration = v4;
      v5 = container_log_handle_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = v4;
        v6 = "Flushing cache because UM persona list has updated. (generation %llu)";
        v7 = v5;
        v8 = 12;
        goto LABEL_9;
      }

LABEL_10:

      [(MCMUserIdentityCache *)self flush];
      goto LABEL_11;
    }

    if (!self->_fetchedFromUM)
    {
      v5 = container_log_handle_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "Resync cache because UM persona list has not yet been fetched successfully.";
        v7 = v5;
        v8 = 2;
LABEL_9:
        _os_log_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];
}

- (MCMUserIdentity)lock_userIdentityForPersonalPersona
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_cacheInvalid)
  {
    [(MCMUserIdentityCache *)self _lock_resync];
  }

  lock_userIdentityForPersonalPersona = self->_lock_userIdentityForPersonalPersona;
  v4 = *MEMORY[0x1E69E9840];

  return lock_userIdentityForPersonalPersona;
}

- (NSDictionary)lock_personaUniqueStringToUserIdentityMap
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_cacheInvalid)
  {
    [(MCMUserIdentityCache *)self _lock_resync];
  }

  lock_personaUniqueStringToUserIdentityMap = self->_lock_personaUniqueStringToUserIdentityMap;
  v4 = *MEMORY[0x1E69E9840];

  return lock_personaUniqueStringToUserIdentityMap;
}

- (id)userIdentityForPersonalPersona
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = containermanager_copy_global_configuration();
  v4 = [v3 defaultUser];
  v5 = [(MCMUserIdentityCache *)self userIdentityForPersonalPersonaWithPOSIXUser:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSDictionary)lock_personaIDToUserIdentityMap
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_cacheInvalid)
  {
    [(MCMUserIdentityCache *)self _lock_resync];
  }

  lock_personaIDToUserIdentityMap = self->_lock_personaIDToUserIdentityMap;
  v4 = *MEMORY[0x1E69E9840];

  return lock_personaIDToUserIdentityMap;
}

- (id)globalSystemUserIdentity
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = *MEMORY[0x1E69E9840];

  return [v2 globalSystemUserIdentity];
}

+ (id)globalSystemUserIdentity
{
  v5 = *MEMORY[0x1E69E9840];
  if (globalSystemUserIdentity_onceToken != -1)
  {
    dispatch_once(&globalSystemUserIdentity_onceToken, &__block_literal_global_12_11861);
  }

  v2 = globalSystemUserIdentity_userIdentity;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (NSDictionary)lock_bundleToDataSeparatedIdentitiesMap
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_cacheInvalid)
  {
    [(MCMUserIdentityCache *)self _lock_resync];
  }

  lock_bundleToDataSeparatedIdentitiesMap = self->_lock_bundleToDataSeparatedIdentitiesMap;
  v4 = *MEMORY[0x1E69E9840];

  return lock_bundleToDataSeparatedIdentitiesMap;
}

- (void)setSavedGeneration:(unint64_t)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_savedGeneration = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (unint64_t)savedGeneration
{
  result = self->_savedGeneration;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSHashTable)observers
{
  result = self->_observers;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setCacheInvalid:(BOOL)a3
{
  v4 = *MEMORY[0x1E69E9840];
  self->_cacheInvalid = a3;
  v3 = *MEMORY[0x1E69E9840];
}

- (BOOL)cacheInvalid
{
  result = self->_cacheInvalid;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMUserIdentity)defaultUserIdentity
{
  result = self->_defaultUserIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (MCMContainerClassIterator)classIterator
{
  result = self->_classIterator;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)setPreviousUserIdentities:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  p_previousUserIdentities = &self->_previousUserIdentities;

  objc_storeStrong(p_previousUserIdentities, a3);
}

- (NSSet)previousUserIdentities
{
  result = self->_previousUserIdentities;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSMutableDictionary)lock_libraryRepairForUserIdentity
{
  result = self->_lock_libraryRepairForUserIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (NSMutableDictionary)lock_managedPathRegistryForUserIdentity
{
  result = self->_lock_managedPathRegistryForUserIdentity;
  v3 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return result;
}

- (void)_notifyObserversOfChangesWithUserIdentities:(id)a3 firstFetch:(BOOL)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v37 = a3;
  context = objc_autoreleasePoolPush();
  v6 = [(MCMUserIdentityCache *)self observers];
  objc_sync_enter(v6);
  v7 = [(MCMUserIdentityCache *)self observers];
  v8 = [v7 allObjects];

  objc_sync_exit(v6);
  v41 = [v37 mutableCopy];
  v9 = [(MCMUserIdentityCache *)self previousUserIdentities];
  [v41 minusSet:v9];

  v10 = [(MCMUserIdentityCache *)self previousUserIdentities];
  v11 = [v10 mutableCopy];

  v40 = v11;
  v12 = v11;
  v13 = v37;
  [v12 minusSet:v37];
  if (!a4)
  {
    v14 = [(MCMUserIdentityCache *)self previousUserIdentities];
    if (![v14 count])
    {
      v13 = v37;
      v15 = [v37 count];

      if (!v15)
      {
        goto LABEL_6;
      }

      v14 = [(MCMUserIdentityCache *)self defaultUserIdentity];
      [v40 addObject:v14];
    }

    v13 = v37;
  }

LABEL_6:
  [(MCMUserIdentityCache *)self setPreviousUserIdentities:v13];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v8;
  v42 = [obj countByEnumeratingWithState:&v61 objects:v60 count:16];
  if (v42)
  {
    v39 = *v62;
    do
    {
      v16 = 0;
      do
      {
        if (*v62 != v39)
        {
          v17 = v16;
          objc_enumerationMutation(obj);
          v16 = v17;
        }

        v43 = v16;
        v18 = *(*(&v61 + 1) + 8 * v16);
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v19 = v40;
        v20 = [v19 countByEnumeratingWithState:&v56 objects:v55 count:16];
        if (v20)
        {
          v21 = *v57;
          do
          {
            v22 = 0;
            do
            {
              if (*v57 != v21)
              {
                objc_enumerationMutation(v19);
              }

              v23 = *(*(&v56 + 1) + 8 * v22);
              v24 = container_log_handle_for_category();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v25 = objc_opt_class();
                v26 = NSStringFromClass(v25);
                *buf = 134218498;
                v50 = v18;
                v51 = 2112;
                v52 = v26;
                v53 = 2112;
                v54 = v23;
                _os_log_debug_impl(&dword_1DF2C3000, v24, OS_LOG_TYPE_DEBUG, "Notifying observer <0x%p; %@> about an invalid user identity: %@", buf, 0x20u);
              }

              [v18 userIdentityCache:self didInvalidateUserIdentity:v23];
              ++v22;
            }

            while (v20 != v22);
            v20 = [v19 countByEnumeratingWithState:&v56 objects:v55 count:16];
          }

          while (v20);
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v27 = v41;
        v28 = [v27 countByEnumeratingWithState:&v45 objects:v44 count:16];
        if (v28)
        {
          v29 = *v46;
          do
          {
            v30 = 0;
            do
            {
              if (*v46 != v29)
              {
                objc_enumerationMutation(v27);
              }

              v31 = *(*(&v45 + 1) + 8 * v30);
              v32 = container_log_handle_for_category();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v33 = objc_opt_class();
                v34 = NSStringFromClass(v33);
                *buf = 134218498;
                v50 = v18;
                v51 = 2112;
                v52 = v34;
                v53 = 2112;
                v54 = v31;
                _os_log_debug_impl(&dword_1DF2C3000, v32, OS_LOG_TYPE_DEBUG, "Notifying observer <0x%p; %@> about a new user identity: %@", buf, 0x20u);
              }

              [v18 userIdentityCache:self didAddUserIdentity:v31];
              ++v30;
            }

            while (v28 != v30);
            v28 = [v27 countByEnumeratingWithState:&v45 objects:v44 count:16];
          }

          while (v28);
        }

        v16 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v61 objects:v60 count:16];
    }

    while (v42);
  }

  objc_autoreleasePoolPop(context);
  v35 = *MEMORY[0x1E69E9840];
}

- (BOOL)_lock_resync_fromUserPersonaAttributes:(id)a3
{
  v151 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v106 = self;
  os_unfair_lock_assert_owner(&self->_lock);
  v105 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v110 = [MEMORY[0x1E695DFA8] set];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v113 = [MEMORY[0x1E695DF90] dictionary];
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v147 objects:v146 count:16];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = *v148;
  v109 = v6;
  v104 = v7;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v148 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v147 + 1) + 8 * i);
      v13 = container_log_handle_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = [v12 isUniversalPersona];
        v15 = [v12 isSystemPersona];
        v16 = [v12 isPersonalPersona];
        v17 = [v12 isDataSeparatedPersona];
        *buf = 67110146;
        *v145 = v14;
        *&v145[4] = 1024;
        *&v145[6] = v15;
        v7 = v104;
        *&v145[10] = 1024;
        *&v145[12] = v16;
        v6 = v109;
        *&v145[16] = 1024;
        *&v145[18] = v17;
        *&v145[22] = 2112;
        *&v145[24] = v12;
        _os_log_debug_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEBUG, "[Personal] Looking at universal=%d system=%d personal=%d ds=%d attributes: %@", buf, 0x24u);
      }

      if ([v12 isPersonalPersona])
      {
        v22 = [v12 userPersonaUniqueString];
        if (v22)
        {
          v23 = v22;
          v116 = [objc_opt_class() userIdentityWithPersonaAttributes:v12];
          log = [objc_opt_class() userIdentityWithPersonaAttributes:v12 forceUnspecific:1];
          v24 = [v6 objectForKeyedSubscript:v23];

          if (v24)
          {
            v25 = container_log_handle_for_category();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              *v145 = v23;
              *&v145[8] = 2112;
              *&v145[10] = v12;
              _os_log_fault_impl(&dword_1DF2C3000, v25, OS_LOG_TYPE_FAULT, "Persona with duplicate unique string [%@]: %@", buf, 0x16u);
            }
          }

          [v6 setObject:v116 forKeyedSubscript:v23];
          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v12, "userPersona_id")}];
          [v113 setObject:v116 forKeyedSubscript:v26];

          v27 = container_log_handle_for_category();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            *v145 = v12;
            *&v145[8] = 2112;
            *&v145[10] = v116;
            *&v145[18] = 2112;
            *&v145[20] = log;
            _os_log_debug_impl(&dword_1DF2C3000, v27, OS_LOG_TYPE_DEBUG, "Found personal persona %@: created personal %@, unspecific %@", buf, 0x20u);
          }

          v18 = v116;
          if (!v116 || !log)
          {
            goto LABEL_12;
          }

          v143 = 0u;
          v142 = 0u;
          v141 = 0u;
          v140 = 0u;
          obj = v7;
          v28 = [obj countByEnumeratingWithState:&v140 objects:v139 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v141;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v141 != v30)
                {
                  objc_enumerationMutation(obj);
                }

                v32 = *(*(&v140 + 1) + 8 * j);
                v33 = container_log_handle_for_category();
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
                {
                  v42 = [v32 isUniversalPersona];
                  v43 = [v32 isSystemPersona];
                  v44 = [v32 isPersonalPersona];
                  v45 = [v32 isDataSeparatedPersona];
                  *buf = 67110146;
                  *v145 = v42;
                  *&v145[4] = 1024;
                  *&v145[6] = v43;
                  v6 = v109;
                  *&v145[10] = 1024;
                  *&v145[12] = v44;
                  v18 = v116;
                  *&v145[16] = 1024;
                  *&v145[18] = v45;
                  *&v145[22] = 2112;
                  *&v145[24] = v32;
                  _os_log_debug_impl(&dword_1DF2C3000, v33, OS_LOG_TYPE_DEBUG, "[Multi] Looking at universal=%d system=%d personal=%d ds=%d attributes: %@", buf, 0x24u);
                }

                if (([v32 isPersonalPersona] & 1) == 0 && (objc_msgSend(v32, "isDataSeparatedPersona") & 1) == 0)
                {
                  v34 = [v32 userPersonaBundleIDList];
                  v35 = container_log_handle_for_category();
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                  {
                    v36 = [v32 userPersona_id];
                    *buf = 67109634;
                    *v145 = v36;
                    *&v145[4] = 2112;
                    *&v145[6] = v32;
                    *&v145[14] = 2112;
                    *&v145[16] = v34;
                    _os_log_impl(&dword_1DF2C3000, v35, OS_LOG_TYPE_DEFAULT, "Fetched bundle ID list for (%u) %@: %@", buf, 0x1Cu);
                  }

                  if (v34 && [v34 count])
                  {
                    v37 = [MEMORY[0x1E695DFD8] setWithArray:v34];
                    [v110 unionSet:v37];
                  }

                  v38 = [v32 userPersonaUniqueString];
                  if (v38)
                  {
                    v39 = [v6 objectForKeyedSubscript:v38];

                    if (v39)
                    {
                      v40 = container_log_handle_for_category();
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 138412546;
                        *v145 = v38;
                        *&v145[8] = 2112;
                        *&v145[10] = v32;
                        _os_log_fault_impl(&dword_1DF2C3000, v40, OS_LOG_TYPE_FAULT, "Persona with duplicate unique string [%@]: %@", buf, 0x16u);
                      }
                    }

                    [v6 setObject:log forKeyedSubscript:v38];
                  }

                  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v32, "userPersona_id")}];
                  [v113 setObject:log forKeyedSubscript:v41];

                  v18 = v116;
                }
              }

              v29 = [obj countByEnumeratingWithState:&v140 objects:v139 count:16];
            }

            while (v29);
          }

          v137 = 0u;
          v138 = 0u;
          v135 = 0u;
          v136 = 0u;
          v112 = obj;
          v46 = [v112 countByEnumeratingWithState:&v135 objects:v134 count:16];
          if (v46)
          {
            v48 = v46;
            v49 = *v136;
            *&v47 = 67109120;
            v103 = v47;
            v107 = *v136;
            do
            {
              v50 = 0;
              v108 = v48;
              do
              {
                if (*v136 != v49)
                {
                  objc_enumerationMutation(v112);
                }

                v51 = *(*(&v135 + 1) + 8 * v50);
                if ([v51 isDataSeparatedPersona])
                {
                  v52 = container_log_handle_for_category();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                  {
                    v79 = [v51 isUniversalPersona];
                    v80 = [v51 isSystemPersona];
                    v81 = [v51 isPersonalPersona];
                    v82 = [v51 isDataSeparatedPersona];
                    *buf = 67110146;
                    *v145 = v79;
                    *&v145[4] = 1024;
                    *&v145[6] = v80;
                    *&v145[10] = 1024;
                    *&v145[12] = v81;
                    v49 = v107;
                    v48 = v108;
                    *&v145[16] = 1024;
                    *&v145[18] = v82;
                    *&v145[22] = 2112;
                    *&v145[24] = v51;
                    _os_log_debug_impl(&dword_1DF2C3000, v52, OS_LOG_TYPE_DEBUG, "[DS] Looking at universal=%d system=%d personal=%d ds=%d attributes: %@", buf, 0x24u);
                  }

                  obja = [v51 userPersonaUniqueString];
                  if (obja)
                  {
                    v53 = [objc_opt_class() userIdentityWithPersonaAttributes:v51];
                    v54 = container_log_handle_for_category();
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412546;
                      *v145 = obja;
                      *&v145[8] = 2112;
                      *&v145[10] = v53;
                      _os_log_debug_impl(&dword_1DF2C3000, v54, OS_LOG_TYPE_DEBUG, "Creating user identity for %@: %@", buf, 0x16u);
                    }

                    v55 = [v6 objectForKeyedSubscript:obja];

                    if (v55)
                    {
                      v56 = container_log_handle_for_category();
                      if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 138412546;
                        *v145 = obja;
                        *&v145[8] = 2112;
                        *&v145[10] = v51;
                        _os_log_fault_impl(&dword_1DF2C3000, v56, OS_LOG_TYPE_FAULT, "Persona with duplicate unique string [%@]: %@", buf, 0x16u);
                      }
                    }

                    [v6 setObject:v53 forKeyedSubscript:obja];
                    v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v51, "userPersona_id")}];
                    [v113 setObject:v53 forKeyedSubscript:v57];

                    v58 = [v51 sandboxExtensionForPersonaLayoutPath];
                    v115 = v58;
                    if (v58)
                    {
                      [v58 UTF8String];
                      v59 = sandbox_extension_consume();
                      if (v59 < 0)
                      {
                        v60 = *__error();
                        v61 = container_log_handle_for_category();
                        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                        {
                          v84 = *__error();
                          *buf = v103;
                          *v145 = v84;
                          _os_log_error_impl(&dword_1DF2C3000, v61, OS_LOG_TYPE_ERROR, "Error %d consuming sandbox extension", buf, 8u);
                        }

                        v59 = -v60;
                      }

                      [v53 setExtensionHandle:v59];
                    }

                    else
                    {
                      v62 = container_log_handle_for_category();
                      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                      {
                        v83 = [v51 personaLayoutPathURL];
                        *buf = 138543618;
                        *v145 = obja;
                        *&v145[8] = 2114;
                        *&v145[10] = v83;
                        _os_log_error_impl(&dword_1DF2C3000, v62, OS_LOG_TYPE_ERROR, "Error fetching sandbox extension for persona %{public}@, path %{public}@", buf, 0x16u);
                      }
                    }

                    v63 = [v51 userPersonaBundleIDList];
                    v64 = container_log_handle_for_category();
                    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *v145 = v51;
                      *&v145[8] = 2112;
                      *&v145[10] = v63;
                      _os_log_impl(&dword_1DF2C3000, v64, OS_LOG_TYPE_DEFAULT, "Fetched bundle ID list for data separated persona %@: %@", buf, 0x16u);
                    }

                    v114 = v63;
                    if (v63 && [v63 count])
                    {
                      v132 = 0u;
                      v133 = 0u;
                      v130 = 0u;
                      v131 = 0u;
                      v65 = v63;
                      v66 = [v65 countByEnumeratingWithState:&v130 objects:v129 count:16];
                      if (v66)
                      {
                        v67 = v66;
                        v68 = *v131;
                        do
                        {
                          for (k = 0; k != v67; ++k)
                          {
                            if (*v131 != v68)
                            {
                              objc_enumerationMutation(v65);
                            }

                            v70 = *(*(&v130 + 1) + 8 * k);
                            v71 = [v5 objectForKeyedSubscript:v70];
                            if (!v71)
                            {
                              v71 = [MEMORY[0x1E695DFA8] set];
                              [v5 setObject:v71 forKeyedSubscript:v70];
                            }

                            [v71 addObject:v53];
                          }

                          v67 = [v65 countByEnumeratingWithState:&v130 objects:v129 count:16];
                        }

                        while (v67);
                      }
                    }

                    v127 = 0u;
                    v128 = 0u;
                    v125 = 0u;
                    v126 = 0u;
                    v72 = v110;
                    v73 = [v72 countByEnumeratingWithState:&v125 objects:v124 count:16];
                    if (v73)
                    {
                      v74 = v73;
                      v75 = *v126;
                      do
                      {
                        for (m = 0; m != v74; ++m)
                        {
                          if (*v126 != v75)
                          {
                            objc_enumerationMutation(v72);
                          }

                          v77 = *(*(&v125 + 1) + 8 * m);
                          v78 = [v5 objectForKeyedSubscript:v77];
                          if (!v78)
                          {
                            v78 = [MEMORY[0x1E695DFA8] set];
                            [v5 setObject:v78 forKeyedSubscript:v77];
                          }

                          [v78 addObject:v53];
                        }

                        v74 = [v72 countByEnumeratingWithState:&v125 objects:v124 count:16];
                      }

                      while (v74);
                    }

                    v48 = v108;
                    v6 = v109;
                    v18 = v116;
                    v49 = v107;
                  }

                  else
                  {
                    v53 = container_log_handle_for_category();
                    if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138412290;
                      *v145 = v51;
                      _os_log_fault_impl(&dword_1DF2C3000, v53, OS_LOG_TYPE_FAULT, "Invalid persona unique string for %@", buf, 0xCu);
                    }
                  }
                }

                ++v50;
              }

              while (v50 != v48);
              v48 = [v112 countByEnumeratingWithState:&v135 objects:v134 count:16];
            }

            while (v48);
          }

          v122 = 0u;
          v123 = 0u;
          v120 = 0u;
          v121 = 0u;
          v85 = v110;
          v86 = [v85 countByEnumeratingWithState:&v120 objects:v119 count:16];
          if (v86)
          {
            v87 = v86;
            v88 = *v121;
            do
            {
              for (n = 0; n != v87; ++n)
              {
                if (*v121 != v88)
                {
                  objc_enumerationMutation(v85);
                }

                v90 = *(*(&v120 + 1) + 8 * n);
                v91 = [v5 objectForKeyedSubscript:v90];
                if (!v91)
                {
                  v91 = [MEMORY[0x1E695DFA8] set];
                  [v5 setObject:v91 forKeyedSubscript:v90];
                }

                [v91 addObject:v18];
              }

              v87 = [v85 countByEnumeratingWithState:&v120 objects:v119 count:16];
            }

            while (v87);
          }

          v92 = [v5 copy];
          lock_bundleToDataSeparatedIdentitiesMap = self->_lock_bundleToDataSeparatedIdentitiesMap;
          self->_lock_bundleToDataSeparatedIdentitiesMap = v92;

          v94 = [v6 copy];
          lock_personaUniqueStringToUserIdentityMap = self->_lock_personaUniqueStringToUserIdentityMap;
          self->_lock_personaUniqueStringToUserIdentityMap = v94;

          v96 = [v113 copy];
          lock_personaIDToUserIdentityMap = self->_lock_personaIDToUserIdentityMap;
          self->_lock_personaIDToUserIdentityMap = v96;

          objc_storeStrong(&self->_lock_userIdentityForPersonalPersona, v18);
          lock_userIdentityForUnspecificPersona = self->_lock_userIdentityForUnspecificPersona;
          v106->_lock_userIdentityForUnspecificPersona = log;
          log = log;

          v99 = container_log_handle_for_category();
          v7 = v104;
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            v102 = v106->_lock_personaUniqueStringToUserIdentityMap;
            *buf = 138412290;
            *v145 = v102;
            _os_log_debug_impl(&dword_1DF2C3000, v99, OS_LOG_TYPE_DEBUG, "User identities locked in: %@", buf, 0xCu);
          }

          v21 = 1;
        }

        else
        {
          log = container_log_handle_for_category();
          if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *v145 = v12;
            _os_log_fault_impl(&dword_1DF2C3000, log, OS_LOG_TYPE_FAULT, "Invalid persona unique string for personal %@", buf, 0xCu);
          }

          v21 = 0;
          v18 = v7;
        }

        v20 = v105;
        goto LABEL_116;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v147 objects:v146 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_11:

  log = 0;
  v18 = 0;
LABEL_12:
  v19 = container_log_handle_for_category();
  v20 = v105;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    *v145 = v7;
    _os_log_fault_impl(&dword_1DF2C3000, v19, OS_LOG_TYPE_FAULT, "Expected to find a personal persona in %@", buf, 0xCu);
  }

  v21 = 0;
LABEL_116:

  objc_autoreleasePoolPop(v20);
  v100 = *MEMORY[0x1E69E9840];
  return v21;
}

- (void)_lock_flushAndRepopulateWithUserIdentities:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35 = self;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v38 + 1) + 8 * i);
        if (([v13 isDataSeparated] & 1) == 0 && (objc_msgSend(v13, "isNoSpecificPersona") & 1) == 0)
        {
          v14 = v13;

          v10 = v14;
        }

        if ([v13 isNoSpecificPersona])
        {
          v15 = v13;

          v9 = v15;
        }

        v16 = [v13 personaUniqueString];

        if (v16)
        {
          v17 = [v13 personaUniqueString];
          [v5 setObject:v13 forKeyedSubscript:v17];
        }

        v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v13, "kernelPersonaID")}];
        [v6 setObject:v13 forKeyedSubscript:v18];
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v37 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v19 = v35;
  [objc_opt_class() personasAreSupported];
  if (v10)
  {
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v10 = v9;
    v9 = v10;
    if (!v10)
    {
      v10 = [(MCMUserIdentityCache *)v35 defaultUserIdentity];
LABEL_22:
      v20 = [MCMUserIdentity alloc];
      v21 = [(MCMUserIdentity *)v10 posixUser];
      v22 = [(MCMUserIdentity *)v10 homeDirectoryURL];
      v23 = [(MCMUserIdentity *)v10 personaUniqueString];
      v9 = [(MCMUserIdentity *)v20 initWithPOSIXUser:v21 homeDirectoryURL:v22 personaUniqueString:v23 personaType:2 kernelPersonaID:[(MCMUserIdentity *)v10 kernelPersonaID]];
    }
  }

  v24 = [MEMORY[0x1E695DF20] dictionary];
  lock_bundleToDataSeparatedIdentitiesMap = v19->_lock_bundleToDataSeparatedIdentitiesMap;
  v19->_lock_bundleToDataSeparatedIdentitiesMap = v24;

  v26 = [v5 copy];
  lock_personaUniqueStringToUserIdentityMap = v19->_lock_personaUniqueStringToUserIdentityMap;
  v19->_lock_personaUniqueStringToUserIdentityMap = v26;

  v28 = [v6 copy];
  lock_personaIDToUserIdentityMap = v19->_lock_personaIDToUserIdentityMap;
  v19->_lock_personaIDToUserIdentityMap = v28;

  lock_userIdentityForPersonalPersona = v19->_lock_userIdentityForPersonalPersona;
  v19->_lock_userIdentityForPersonalPersona = v10;
  v31 = v10;

  lock_userIdentityForUnspecificPersona = v19->_lock_userIdentityForUnspecificPersona;
  v19->_lock_userIdentityForUnspecificPersona = v9;
  v33 = v9;

  v19->_cacheInvalid = 0;
  v34 = *MEMORY[0x1E69E9840];
}

- (void)_lock_flush
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  self->_cacheInvalid = 1;
  v3 = [MEMORY[0x1E695DF20] dictionary];
  lock_bundleToDataSeparatedIdentitiesMap = self->_lock_bundleToDataSeparatedIdentitiesMap;
  self->_lock_bundleToDataSeparatedIdentitiesMap = v3;

  v5 = [MEMORY[0x1E695DF20] dictionary];
  lock_personaUniqueStringToUserIdentityMap = self->_lock_personaUniqueStringToUserIdentityMap;
  self->_lock_personaUniqueStringToUserIdentityMap = v5;

  v7 = [MEMORY[0x1E695DF20] dictionary];
  lock_personaIDToUserIdentityMap = self->_lock_personaIDToUserIdentityMap;
  self->_lock_personaIDToUserIdentityMap = v7;

  v9 = [(MCMUserIdentityCache *)self defaultUserIdentity];
  lock_userIdentityForPersonalPersona = self->_lock_userIdentityForPersonalPersona;
  self->_lock_userIdentityForPersonalPersona = v9;

  v11 = [(MCMUserIdentityCache *)self defaultUserIdentity];
  lock_userIdentityForUnspecificPersona = self->_lock_userIdentityForUnspecificPersona;
  self->_lock_userIdentityForUnspecificPersona = v11;

  v13 = [MEMORY[0x1E695DF90] dictionary];
  lock_managedPathRegistryForUserIdentity = self->_lock_managedPathRegistryForUserIdentity;
  self->_lock_managedPathRegistryForUserIdentity = v13;

  v15 = [MEMORY[0x1E695DF90] dictionary];
  lock_libraryRepairForUserIdentity = self->_lock_libraryRepairForUserIdentity;
  self->_lock_libraryRepairForUserIdentity = v15;
  v17 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66BB8]();
}

- (void)_lock_resync
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = objc_autoreleasePoolPush();
  if ([objc_opt_class() personasAreSupported] && objc_opt_class())
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = +[MCMTestLocks sharedInstance];
    if ([v5 countOfLock:13] < 1)
    {
      v8 = [MEMORY[0x1E69DF060] sharedManager];
      v22 = 0;
      v7 = [v8 listAllPersonaAttributesWithError:&v22];
      v6 = v22;
    }

    else
    {
      [v5 releaseLock:13];
      v6 = 0;
      v7 = 0;
    }

    v9 = CFAbsoluteTimeGetCurrent();
    v10 = container_log_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      *&buf[4] = v9 - Current;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      *&buf[22] = 2114;
      v24 = v7;
      _os_log_impl(&dword_1DF2C3000, v10, OS_LOG_TYPE_DEFAULT, "listAllPersonaAttributes (%f s): error = %{public}@, attributes = %{public}@", buf, 0x20u);
    }

    if (v7 && [v7 count])
    {
      self->_fetchedFromUM = [(MCMUserIdentityCache *)self _lock_resync_fromUserPersonaAttributes:v7];
      v11 = MEMORY[0x1E695DFD8];
      v12 = [(NSDictionary *)self->_lock_personaUniqueStringToUserIdentityMap allValues];
      v13 = [v11 setWithArray:v12];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v24 = __Block_byref_object_copy__11821;
      v25 = __Block_byref_object_dispose__11822;
      v26 = os_transaction_create();
      firstFetch = self->_firstFetch;
      flushQueue = self->_flushQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__MCMUserIdentityCache__lock_resync__block_invoke;
      block[3] = &unk_1E86B0930;
      v19 = v13;
      v20 = buf;
      block[4] = self;
      v21 = firstFetch;
      v16 = v13;
      dispatch_async(flushQueue, block);

      _Block_object_dispose(buf, 8);
    }

    self->_firstFetch = 0;
  }

  objc_autoreleasePoolPop(v3);
  self->_cacheInvalid = 0;
  v17 = *MEMORY[0x1E69E9840];
}

void __36__MCMUserIdentityCache__lock_resync__block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _notifyObserversOfChangesWithUserIdentities:*(a1 + 40) firstFetch:*(a1 + 56)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
  v4 = *MEMORY[0x1E69E9840];
}

- (id)_lock_userIdentityForCurrentUserWithPersonaUniqueString:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v4)
  {
    v5 = [(MCMUserIdentityCache *)self lock_personaUniqueStringToUserIdentityMap];
    v6 = [v5 objectForKeyedSubscript:v4];

    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v6 shortDescription];
      v14 = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v4;
      _os_log_debug_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_DEBUG, "Found %@ for %@", &v14, 0x16u);
    }

    if (!v6)
    {
      [(MCMUserIdentityCache *)self _lock_flush];
      v8 = [(MCMUserIdentityCache *)self lock_personaUniqueStringToUserIdentityMap];
      v6 = [v8 objectForKeyedSubscript:v4];

      v9 = container_log_handle_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = [v6 shortDescription];
        v14 = 138412546;
        v15 = v13;
        v16 = 2112;
        v17 = v4;
        _os_log_debug_impl(&dword_1DF2C3000, v9, OS_LOG_TYPE_DEBUG, "After refresh, found %@ for %@", &v14, 0x16u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_lock_userIdentitiesForBundleIdentifier:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(MCMUserIdentityCache *)self lock_bundleToDataSeparatedIdentitiesMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(MCMUserIdentityCache *)self lock_userIdentityForPersonalPersona];
    v8 = MEMORY[0x1E695DFD8];
    if (v7)
    {
      v9 = [(MCMUserIdentityCache *)self lock_userIdentityForPersonalPersona];
      v6 = [v8 setWithObject:v9];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFD8] set];
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (MCMUserIdentity)lock_userIdentityForUnspecificPersona
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_cacheInvalid)
  {
    [(MCMUserIdentityCache *)self _lock_resync];
  }

  lock_userIdentityForUnspecificPersona = self->_lock_userIdentityForUnspecificPersona;
  v4 = *MEMORY[0x1E69E9840];

  return lock_userIdentityForUnspecificPersona;
}

- (id)libraryRepairForUserIdentity:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v4 = [(MCMUserIdentityCache *)self defaultUserIdentity];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_libraryRepairForUserIdentity objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    v6 = [(MCMUserIdentityCache *)self managedUserPathRegistryForUserIdentity:v4];
    v7 = [MCMLibraryRepairForUser alloc];
    v8 = +[MCMFileManager defaultManager];
    v9 = [(MCMUserIdentityCache *)self classIterator];
    v5 = [(MCMLibraryRepairForUser *)v7 initWithManagedUserPathRegistry:v6 fileManager:v8 classIterator:v9];

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_lock_libraryRepairForUserIdentity setObject:v5 forKeyedSubscript:v4];
    os_unfair_lock_unlock(&self->_lock);
    if ([v4 personaType] != 3)
    {
      v15 = 0;
      v10 = [(MCMLibraryRepair *)v5 createPathsIfNecessaryWithError:&v15];
      v11 = v15;
      if (!v10)
      {
        v12 = container_log_handle_for_category();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v17 = v4;
          v18 = 2114;
          v19 = v11;
          _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Failed creating working directories for %@: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)managedUserPathRegistryForUserIdentity:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v4 = [(MCMUserIdentityCache *)self defaultUserIdentity];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_lock_managedPathRegistryForUserIdentity objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    v6 = [MCMManagedUserPathRegistry alloc];
    v7 = containermanager_copy_global_configuration();
    v8 = [v7 currentUser];
    v5 = [(MCMManagedUserPathRegistry *)v6 initWithUserIdentity:v4 daemonUser:v8];

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_lock_managedPathRegistryForUserIdentity setObject:v5 forKeyedSubscript:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)removeUserIdentityCacheObserver:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = [(MCMUserIdentityCache *)self observers];
  objc_sync_enter(v4);
  v5 = [(MCMUserIdentityCache *)self observers];
  [v5 removeObject:v7];

  objc_sync_exit(v4);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)addUserIdentityCacheObserver:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = [(MCMUserIdentityCache *)self observers];
  objc_sync_enter(v4);
  v5 = [(MCMUserIdentityCache *)self observers];
  [v5 addObject:v7];

  objc_sync_exit(v4);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)flushAndRepopulateWithUserIdentities:(id)a3
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(MCMUserIdentityCache *)self _lock_flushAndRepopulateWithUserIdentities:v4];

  v5 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)userIdentityForLegacyMobileUser
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  return [(MCMUserIdentityCache *)self defaultUserIdentity];
}

- (id)userIdentityForCurrentContext
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(MCMUserIdentityCache *)self personaUniqueStringForCurrentContext];
  v4 = containermanager_copy_global_configuration();
  v5 = [v4 defaultUser];
  v6 = [(MCMUserIdentityCache *)self userIdentityForPersonaUniqueString:v3 POSIXUser:v5];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t __60__MCMUserIdentityCache_personaUniqueStringForCurrentContext__block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  personaUniqueStringForCurrentContext_dedupCache = [[MCMLRUCache alloc] initWithName:@"personaUniqueStrings" maxCount:10];
  v0 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE66BB8]();
}

- (id)globalBundleUserIdentity
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = *MEMORY[0x1E69E9840];

  return [v2 globalBundleUserIdentity];
}

- (id)userIdentitiesForContainerConfig:(id)a3 originatorUserIdentities:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (([v6 personaAndUserSpecific] & 1) == 0)
  {
    v9 = [(MCMUserIdentityCache *)self userIdentityForContainerConfig:v6 originatorUserIdentity:0];
    v8 = [MEMORY[0x1E695DFD8] setWithObject:v9];
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = MEMORY[0x1E695DFD8];
    v12 = [(MCMUserIdentityCache *)self defaultUserIdentity];
    v10 = [v11 setWithObject:v12];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)userIdentityForContainerConfig:(id)a3 originatorUserIdentity:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (([v6 personaAndUserSpecific] & 1) == 0)
  {
    if ([v6 usesGlobalBundleUserIdentity])
    {
      v9 = [(MCMUserIdentityCache *)self globalBundleUserIdentity];
    }

    else
    {
      if ([v6 usesGlobalSystemUserIdentity])
      {
        [(MCMUserIdentityCache *)self globalSystemUserIdentity];
      }

      else
      {
        [(MCMUserIdentityCache *)self defaultUserIdentity];
      }
      v9 = ;
    }

    v8 = v9;
  }

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(MCMUserIdentityCache *)self defaultUserIdentity];
  }

  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)forEachAccessibleUserIdentitySynchronouslyExecuteBlock:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MCMUserIdentityCache *)self allAccessibleUserIdentities];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v12 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)allAccessibleUserIdentities
{
  v26 = *MEMORY[0x1E69E9840];
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  v3 = [MEMORY[0x1E695DFA8] set];
  if ([objc_opt_class() personasAreSupported])
  {
    os_unfair_lock_lock(&self->_lock);
    v4 = [(MCMUserIdentityCache *)self lock_personaUniqueStringToUserIdentityMap];
    v5 = [v4 allValues];

    os_unfair_lock_unlock(&self->_lock);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if (([v11 isNoSpecificPersona] & 1) == 0)
          {
            [v3 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v22 objects:v21 count:16];
      }

      while (v8);
    }

    if (![v3 count])
    {
      v12 = container_log_handle_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = 138412546;
        v18 = self;
        v19 = 2112;
        v20 = v3;
        _os_log_error_impl(&dword_1DF2C3000, v12, OS_LOG_TYPE_ERROR, "Expected to find at least one persona; self = %@, personaAttributeList = %@", &v17, 0x16u);
      }

      v13 = [(MCMUserIdentityCache *)self defaultUserIdentity];
      [v3 addObject:v13];
    }
  }

  else
  {
    v14 = [(MCMUserIdentityCache *)self defaultUserIdentity];
    [v3 addObject:v14];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)flush
{
  v4 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  [(MCMUserIdentityCache *)self _lock_flush];
  [(MCMUserIdentityCache *)self _lock_resync];
  v3 = *MEMORY[0x1E69E9840];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)userIdentityForPersonalPersonaWithPOSIXUser:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  if ([v4 isRoleUser])
  {
    v5 = containermanager_copy_global_configuration();
    v6 = [v5 defaultUser];

    v4 = v6;
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [(MCMUserIdentityCache *)self lock_userIdentityForPersonalPersona];
  os_unfair_lock_unlock(&self->_lock);
  v8 = [v7 posixUser];
  v9 = [v8 isEqual:v4];

  if ((v9 & 1) == 0)
  {
    v10 = [v7 userIdentityWithPOSIXUser:v4];

    v7 = v10;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)unspecificUserIdentity
{
  v6 = *MEMORY[0x1E69E9840];
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(MCMUserIdentityCache *)self lock_userIdentityForUnspecificPersona];
  os_unfair_lock_unlock(&self->_lock);
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)userIdentityForClient:(container_client *)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  persona_unique_string = container_client_get_persona_unique_string();
  euid = container_client_get_euid();
  v8 = containermanager_copy_global_configuration();
  v9 = [v8 defaultUser];

  v10 = containermanager_copy_global_configuration();
  v11 = [v10 userContainerMode];

  if (v11 == 2)
  {
    v12 = [MCMPOSIXUser posixUserWithUID:euid];

    v9 = v12;
  }

  if (persona_unique_string)
  {
    persona_unique_string = [MEMORY[0x1E696AEC0] stringWithUTF8String:persona_unique_string];
  }

  v13 = [(MCMUserIdentityCache *)self userIdentityForPersonaUniqueString:persona_unique_string POSIXUser:v9];
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v15 = [[MCMError alloc] initWithErrorType:76 category:3];
    v14 = v15;
    if (a4)
    {
      v16 = v15;
      *a4 = v14;
    }
  }

  v17 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)userIdentityForPersonaUniqueString:(id)a3 POSIXUser:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  if ([v7 isRoleUser])
  {
    v8 = containermanager_copy_global_configuration();
    v9 = [v8 defaultUser];

    v7 = v9;
  }

  if (![objc_opt_class() personasAreSupported])
  {
    v12 = [(MCMUserIdentityCache *)self userIdentityForPersonalPersonaWithPOSIXUser:v7];
    goto LABEL_16;
  }

  if (!v6)
  {
    v12 = [(MCMUserIdentityCache *)self unspecificUserIdentity];
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9980]];
  v11 = [v6 isEqualToString:v10];

  if (!v11)
  {
    os_unfair_lock_lock(&self->_lock);
    v12 = [(MCMUserIdentityCache *)self _lock_userIdentityForCurrentUserWithPersonaUniqueString:v6];
    os_unfair_lock_unlock(&self->_lock);
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v12 = [(MCMUserIdentityCache *)self userIdentityForPersonalPersona];
  v13 = container_log_handle_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v19 = [v12 debugDescription];
    v20 = 138412290;
    v21 = v19;
    _os_log_debug_impl(&dword_1DF2C3000, v13, OS_LOG_TYPE_DEBUG, "Sentinel persona, using: %@", &v20, 0xCu);
  }

  if (v12)
  {
LABEL_14:
    v14 = [v12 posixUser];
    v15 = [v14 isEqual:v7];

    if ((v15 & 1) == 0)
    {
      v16 = [v12 userIdentityWithPOSIXUser:v7];

      v12 = v16;
    }
  }

LABEL_16:

  v17 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)userIdentityForCurrentUserWithPersonaUniqueString:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  if (![objc_opt_class() personasAreSupported])
  {
    v9 = [(MCMUserIdentityCache *)self userIdentityForPersonalPersona];
LABEL_9:
    v7 = v9;
    goto LABEL_10;
  }

  if (!v4)
  {
    v9 = [(MCMUserIdentityCache *)self unspecificUserIdentity];
    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69E9980]];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = [(MCMUserIdentityCache *)self userIdentityForPersonalPersona];
    v8 = container_log_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v7 debugDescription];
      v13 = 138412290;
      v14 = v12;
      _os_log_debug_impl(&dword_1DF2C3000, v8, OS_LOG_TYPE_DEBUG, "Sentinel persona, using: %@", &v13, 0xCu);
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [(MCMUserIdentityCache *)self _lock_userIdentityForCurrentUserWithPersonaUniqueString:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

LABEL_10:

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)userIdentitiesForBundleIdentifier:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MCMUserIdentityCache *)self _refreshFromUserManagementIfNecessary];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MCMUserIdentityCache *)self _lock_userIdentitiesForBundleIdentifier:v4];

  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] set];
  }

  v7 = v6;

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (MCMUserIdentityCache)init
{
  v19 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = MCMUserIdentityCache;
  v2 = [(MCMUserIdentityCache *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v4;

    listener = v3->_listener;
    v3->_listener = 0;

    v7 = [MEMORY[0x1E695DFD8] set];
    previousUserIdentities = v3->_previousUserIdentities;
    v3->_previousUserIdentities = v7;

    v9 = dispatch_queue_create("com.apple.containermanagerd.MCMUserIdentityCache.flushQueue", 0);
    flushQueue = v3->_flushQueue;
    v3->_flushQueue = v9;

    v11 = containermanager_copy_global_configuration();
    v12 = [v11 classIterator];
    classIterator = v3->_classIterator;
    v3->_classIterator = v12;

    *&v3->_fetchedFromUM = 256;
    v14 = objc_opt_new();
    defaultUserIdentity = v3->_defaultUserIdentity;
    v3->_defaultUserIdentity = v14;

    os_unfair_lock_lock(&v3->_lock);
    [(MCMUserIdentityCache *)v3 _lock_flush];
    os_unfair_lock_unlock(&v3->_lock);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (id)userIdentityWithPersonaAttributes:(id)a3 POSIXUser:(id)a4 forceUnspecific:(BOOL)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 UID];
  v10 = [v7 userPersonaUniqueString];
  if (v7 && (v9 = [v7 userPersona_id], objc_msgSend(v7, "isDataSeparatedPersona")) && (objc_msgSend(v7, "personaLayoutPathURL"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    if (a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = [v8 homeDirectoryURL];
    if (a5)
    {
      goto LABEL_7;
    }
  }

  if ([v7 isPersonalPersona])
  {
    v12 = 0;
    goto LABEL_12;
  }

  if ([v7 isDataSeparatedPersona])
  {
    v12 = 1;
    goto LABEL_12;
  }

  if ([v7 isSystemPersona] & 1) != 0 || (objc_msgSend(v7, "isDefaultPersona"))
  {
LABEL_7:
    v12 = 2;
    goto LABEL_12;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134218242;
    v18 = [v7 userPersonaType];
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_DEFAULT, "Persona of unknown type %lu being treated as Unspecific: %{public}@", &v17, 0x16u);
  }

  v12 = 3;
LABEL_12:
  v13 = [[MCMUserIdentity alloc] initWithPOSIXUser:v8 homeDirectoryURL:v11 personaUniqueString:v10 personaType:v12 kernelPersonaID:v9];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)userIdentityWithPersonaAttributes:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];

  return [a1 userIdentityWithPersonaAttributes:a3 forceUnspecific:0];
}

void __48__MCMUserIdentityCache_globalSystemUserIdentity__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = containermanager_copy_global_configuration();
  v6 = [v0 systemContainerOwner];

  v1 = [MCMUserIdentity alloc];
  v2 = [v6 homeDirectoryURL];
  v3 = -[MCMUserIdentity initWithPOSIXUser:homeDirectoryURL:personaUniqueString:personaType:kernelPersonaID:](v1, "initWithPOSIXUser:homeDirectoryURL:personaUniqueString:personaType:kernelPersonaID:", v6, v2, 0, 3, [v6 UID]);
  v4 = globalSystemUserIdentity_userIdentity;
  globalSystemUserIdentity_userIdentity = v3;

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)globalBundleUserIdentity
{
  v5 = *MEMORY[0x1E69E9840];
  if (globalBundleUserIdentity_onceToken != -1)
  {
    dispatch_once(&globalBundleUserIdentity_onceToken, &__block_literal_global_11863);
  }

  v2 = globalBundleUserIdentity_userIdentity;
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void __48__MCMUserIdentityCache_globalBundleUserIdentity__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = containermanager_copy_global_configuration();
  v6 = [v0 bundleContainerOwner];

  v1 = [MCMUserIdentity alloc];
  v2 = [v6 homeDirectoryURL];
  v3 = -[MCMUserIdentity initWithPOSIXUser:homeDirectoryURL:personaUniqueString:personaType:kernelPersonaID:](v1, "initWithPOSIXUser:homeDirectoryURL:personaUniqueString:personaType:kernelPersonaID:", v6, v2, 0, 3, [v6 UID]);
  v4 = globalBundleUserIdentity_userIdentity;
  globalBundleUserIdentity_userIdentity = v3;

  v5 = *MEMORY[0x1E69E9840];
}

+ (id)defaultUserIdentity
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = +[MCMUserIdentitySharedCache sharedInstance];
  v3 = [v2 defaultUserIdentity];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end