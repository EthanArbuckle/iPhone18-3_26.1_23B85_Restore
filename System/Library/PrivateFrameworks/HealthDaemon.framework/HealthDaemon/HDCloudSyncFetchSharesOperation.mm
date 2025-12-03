@interface HDCloudSyncFetchSharesOperation
- (BOOL)performWithError:(id *)error;
- (HDCloudSyncFetchSharesOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (NSArray)shares;
- (uint64_t)_fetchSharesForContainer:(void *)container database:(void *)database error:;
- (uint64_t)_fetchSharesForZones:(void *)zones error:;
@end

@implementation HDCloudSyncFetchSharesOperation

- (HDCloudSyncFetchSharesOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v9.receiver = self;
  v9.super_class = HDCloudSyncFetchSharesOperation;
  v4 = [(HDCloudSyncOperation *)&v9 initWithConfiguration:configuration cloudState:0];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    shares = v5->_shares;
    v5->_shares = v6;
  }

  return v5;
}

- (BOOL)performWithError:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  allCKContainers = [repository allCKContainers];

  v8 = [allCKContainers count];
  progress = [(HDCloudSyncOperation *)self progress];
  [progress setTotalUnitCount:v8];

  if (self->_fetchAllShares)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = allCKContainers;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          privateCloudDatabase = [v15 privateCloudDatabase];
          v17 = [(HDCloudSyncFetchSharesOperation *)self _fetchSharesForContainer:v15 database:privateCloudDatabase error:error];

          if (!v17)
          {
            LOBYTE(v19) = 0;
            goto LABEL_26;
          }

          sharedCloudDatabase = [v15 sharedCloudDatabase];
          v19 = [(HDCloudSyncFetchSharesOperation *)self _fetchSharesForContainer:v15 database:sharedCloudDatabase error:error];

          if (!v19)
          {
            goto LABEL_26;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
        LOBYTE(v19) = 1;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      LOBYTE(v19) = 1;
    }
  }

  else
  {
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    cachedCloudState = [configuration2 cachedCloudState];
    v29 = 0;
    v22 = [cachedCloudState zonesByIdentifierWithError:&v29];
    v10 = v29;

    if (v22 || !v10)
    {
      if (v22)
      {
        allValues = [v22 allValues];
        LOBYTE(v19) = [(HDCloudSyncFetchSharesOperation *)self _fetchSharesForZones:allValues error:error];
      }

      else
      {
        _HKInitializeLogging();
        v26 = *MEMORY[0x277CCC328];
        LOBYTE(v19) = 1;
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          selfCopy2 = self;
          _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_INFO, "%{public}@ No zones fetched.", buf, 0xCu);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v36 = 2114;
        v37 = v10;
        _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones, %{public}@", buf, 0x16u);
      }

      if (error)
      {
        v24 = v10;
        LOBYTE(v19) = 0;
        *error = v10;
      }

      else
      {
        _HKLogDroppedError();
        LOBYTE(v19) = 0;
      }
    }
  }

LABEL_26:

  v27 = *MEMORY[0x277D85DE8];
  return v19;
}

- (uint64_t)_fetchSharesForContainer:(void *)container database:(void *)database error:
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  containerCopy = container;
  if (self)
  {
    configuration = [self configuration];
    cachedCloudState = [configuration cachedCloudState];
    containerIdentifier = [v7 containerIdentifier];
    v28 = 0;
    v12 = [cachedCloudState zoneIdentifiersForContainerIdentifier:containerIdentifier databaseScope:objc_msgSend(containerCopy error:{"databaseScope"), &v28}];
    v13 = v28;

    if (v12 || !v13)
    {
      if (v12 && [v12 count])
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __75__HDCloudSyncFetchSharesOperation__fetchSharesForContainer_database_error___block_invoke;
        v27[3] = &unk_27861EAE8;
        v27[4] = self;
        v17 = [v12 hk_map:v27];
        v16 = [(HDCloudSyncFetchSharesOperation *)self _fetchSharesForZones:v17 error:database];
      }

      else
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC328];
        v16 = 1;
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
        {
          v19 = v18;
          containerIdentifier2 = [v7 containerIdentifier];
          [containerCopy databaseScope];
          v21 = CKDatabaseScopeString();
          *buf = 138543874;
          selfCopy2 = self;
          v31 = 2114;
          v32 = containerIdentifier2;
          v33 = 2114;
          v34 = v21;
          _os_log_impl(&dword_228986000, v19, OS_LOG_TYPE_INFO, "%{public}@ No zones fetched for container %{public}@, database %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        v24 = v14;
        containerIdentifier3 = [v7 containerIdentifier];
        [containerCopy databaseScope];
        v26 = CKDatabaseScopeString();
        *buf = 138544130;
        selfCopy2 = self;
        v31 = 2114;
        v32 = containerIdentifier3;
        v33 = 2114;
        v34 = v26;
        v35 = 2114;
        v36 = v13;
        _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones for container %{public}@ ,database %{public}@, %{public}@", buf, 0x2Au);
      }

      if (database)
      {
        v15 = v13;
        v16 = 0;
        *database = v13;
      }

      else
      {
        _HKLogDroppedError();
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v16;
}

- (uint64_t)_fetchSharesForZones:(void *)zones error:
{
  zonesCopy = zones;
  v37 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (self)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          v25 = 0;
          v12 = [v11 zoneShareWithError:{&v25, zonesCopy}];
          v13 = v25;
          v14 = v13;
          if (v12)
          {
            v15 = 1;
          }

          else
          {
            v15 = v13 == 0;
          }

          if (!v15)
          {
            _HKInitializeLogging();
            v17 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v22 = v17;
              zoneIdentifier = [v11 zoneIdentifier];
              *buf = 138543874;
              selfCopy = self;
              v32 = 2114;
              v33 = zoneIdentifier;
              v34 = 2114;
              v35 = v14;
              _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch CKShare for cached zone %{public}@, %{public}@", buf, 0x20u);
            }

            if (zonesCopy)
            {
              v19 = v14;
              *zonesCopy = v14;
            }

            else
            {
              _HKLogDroppedError();
            }

            v16 = 0;
            goto LABEL_23;
          }

          if (v12)
          {
            [v5 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    os_unfair_lock_lock((self + 104));
    [*(self + 112) addObjectsFromArray:v5];
    os_unfair_lock_unlock((self + 104));
    v16 = 1;
LABEL_23:
  }

  else
  {
    v16 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (NSArray)shares
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_shares;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

id __75__HDCloudSyncFetchSharesOperation__fetchSharesForContainer_database_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HDCloudSyncCachedZone alloc];
  v5 = [*(a1 + 32) configuration];
  v6 = [v5 repository];
  v7 = [*(a1 + 32) configuration];
  v8 = [v7 accessibilityAssertion];
  v9 = [(HDCloudSyncCachedZone *)v4 initForZoneIdentifier:v3 repository:v6 accessibilityAssertion:v8];

  return v9;
}

@end