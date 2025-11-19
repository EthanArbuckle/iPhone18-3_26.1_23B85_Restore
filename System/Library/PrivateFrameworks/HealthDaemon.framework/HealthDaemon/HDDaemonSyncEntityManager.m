@interface HDDaemonSyncEntityManager
- (HDDaemonSyncEntityManager)initWithDaemon:(id)a3;
- (NSArray)orderedSyncEntities;
- (NSDictionary)syncEntitiesByIdentifier;
- (void)_lock_loadSyncEntities;
@end

@implementation HDDaemonSyncEntityManager

- (HDDaemonSyncEntityManager)initWithDaemon:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDDaemonSyncEntityManager;
  v5 = [(HDDaemonSyncEntityManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_daemon, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

- (void)_lock_loadSyncEntities
{
  v70 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 16));
    if (!*(a1 + 24))
    {
      v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
      WeakRetained = objc_loadWeakRetained((a1 + 8));
      v4 = [WeakRetained behavior];
      [v4 futureMigrationsEnabled];
      v5 = HDBuiltinOrderedSyncEntities();
      v6 = [v5 mutableCopy];

      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v55 objects:v69 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v56;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v56 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v55 + 1) + 8 * i);
            v13 = [v12 syncEntityIdentifier];
            [v2 setObject:v12 forKeyedSubscript:v13];
          }

          v9 = [v7 countByEnumeratingWithState:&v55 objects:v69 count:16];
        }

        while (v9);
      }

      v43 = v7;

      v42 = a1;
      v14 = objc_loadWeakRetained((a1 + 8));
      v15 = [v14 pluginManager];
      v16 = [v15 pluginsConformingToProtocol:&unk_283CCADE8];
      v17 = [v16 allValues];

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = v17;
      v46 = [obj countByEnumeratingWithState:&v51 objects:v68 count:16];
      if (v46)
      {
        v45 = *v52;
        do
        {
          v18 = 0;
          do
          {
            if (*v52 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v51 + 1) + 8 * v18);
            v20 = [v19 orderedSyncEntities];
            v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v22 = v20;
            v23 = [v22 countByEnumeratingWithState:&v47 objects:v67 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v48;
LABEL_17:
              v26 = 0;
              while (1)
              {
                if (*v48 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v47 + 1) + 8 * v26);
                v28 = [v27 syncEntityIdentifier];
                if ([v21 objectForKeyedSubscript:v28])
                {
                  break;
                }

                if ([v2 objectForKeyedSubscript:v28])
                {
                  _HKInitializeLogging();
                  v34 = *MEMORY[0x277CCC328];
                  if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_28;
                  }

                  v30 = v34;
                  v35 = [v2 objectForKeyedSubscript:v28];
                  *buf = 138544130;
                  v60 = v19;
                  v61 = 2114;
                  v62 = v27;
                  v63 = 2114;
                  v64 = v28;
                  v65 = 2112;
                  v66 = v35;
                  v32 = v30;
                  v33 = "Plugin %{public}@ provides a sync entity %{public}@ with identifier %{public}@, but a sync entity already exists (%@) for that identifier. This plugin will be ignored for sync.";
                  goto LABEL_32;
                }

                [v21 setObject:v27 forKeyedSubscript:v28];

                if (v24 == ++v26)
                {
                  v24 = [v22 countByEnumeratingWithState:&v47 objects:v67 count:16];
                  if (v24)
                  {
                    goto LABEL_17;
                  }

                  goto LABEL_24;
                }
              }

              _HKInitializeLogging();
              v29 = *MEMORY[0x277CCC328];
              if (!os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
              {
LABEL_28:

                goto LABEL_29;
              }

              v30 = v29;
              v31 = [v21 objectForKeyedSubscript:v28];
              *buf = 138544130;
              v60 = v19;
              v61 = 2114;
              v62 = v27;
              v63 = 2114;
              v64 = v31;
              v65 = 2114;
              v66 = v28;
              v32 = v30;
              v33 = "Plugin %{public}@ provides multiple sync entities (%{public}@, %{public}@) for identifier %{public}@. This plugin will be ignored for sync.";
LABEL_32:
              _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, v33, buf, 0x2Au);

              goto LABEL_28;
            }

LABEL_24:

            [v43 addObjectsFromArray:v22];
            [v2 addEntriesFromDictionary:v21];
LABEL_29:

            ++v18;
          }

          while (v18 != v46);
          v36 = [obj countByEnumeratingWithState:&v51 objects:v68 count:16];
          v46 = v36;
        }

        while (v36);
      }

      v37 = [v43 copy];
      v38 = *(v42 + 24);
      *(v42 + 24) = v37;

      v39 = [v2 copy];
      v40 = *(v42 + 32);
      *(v42 + 32) = v39;
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (NSArray)orderedSyncEntities
{
  os_unfair_lock_lock(&self->_lock);
  lock_allOrderedSyncEntities = self->_lock_allOrderedSyncEntities;
  if (!lock_allOrderedSyncEntities)
  {
    [(HDDaemonSyncEntityManager *)self _lock_loadSyncEntities];
    lock_allOrderedSyncEntities = self->_lock_allOrderedSyncEntities;
  }

  v4 = lock_allOrderedSyncEntities;
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

- (NSDictionary)syncEntitiesByIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  lock_allSyncEntitiesByIdentifier = self->_lock_allSyncEntitiesByIdentifier;
  if (!lock_allSyncEntitiesByIdentifier)
  {
    [(HDDaemonSyncEntityManager *)self _lock_loadSyncEntities];
    lock_allSyncEntitiesByIdentifier = self->_lock_allSyncEntitiesByIdentifier;
  }

  v4 = [(NSDictionary *)lock_allSyncEntitiesByIdentifier copy];
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  v6 = v5;

  return v5;
}

@end