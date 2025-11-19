@interface HDCloudSyncFetchSharesOperation
- (BOOL)performWithError:(id *)a3;
- (HDCloudSyncFetchSharesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4;
- (NSArray)shares;
- (uint64_t)_fetchSharesForContainer:(void *)a3 database:(void *)a4 error:;
- (uint64_t)_fetchSharesForZones:(void *)a3 error:;
@end

@implementation HDCloudSyncFetchSharesOperation

- (HDCloudSyncFetchSharesOperation)initWithConfiguration:(id)a3 cloudState:(id)a4
{
  v9.receiver = self;
  v9.super_class = HDCloudSyncFetchSharesOperation;
  v4 = [(HDCloudSyncOperation *)&v9 initWithConfiguration:a3 cloudState:0];
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

- (BOOL)performWithError:(id *)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [v5 repository];
  v7 = [v6 allCKContainers];

  v8 = [v7 count];
  v9 = [(HDCloudSyncOperation *)self progress];
  [v9 setTotalUnitCount:v8];

  if (self->_fetchAllShares)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v7;
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
          v16 = [v15 privateCloudDatabase];
          v17 = [(HDCloudSyncFetchSharesOperation *)self _fetchSharesForContainer:v15 database:v16 error:a3];

          if (!v17)
          {
            LOBYTE(v19) = 0;
            goto LABEL_26;
          }

          v18 = [v15 sharedCloudDatabase];
          v19 = [(HDCloudSyncFetchSharesOperation *)self _fetchSharesForContainer:v15 database:v18 error:a3];

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
    v20 = [(HDCloudSyncOperation *)self configuration];
    v21 = [v20 cachedCloudState];
    v29 = 0;
    v22 = [v21 zonesByIdentifierWithError:&v29];
    v10 = v29;

    if (v22 || !v10)
    {
      if (v22)
      {
        v25 = [v22 allValues];
        LOBYTE(v19) = [(HDCloudSyncFetchSharesOperation *)self _fetchSharesForZones:v25 error:a3];
      }

      else
      {
        _HKInitializeLogging();
        v26 = *MEMORY[0x277CCC328];
        LOBYTE(v19) = 1;
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v35 = self;
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
        v35 = self;
        v36 = 2114;
        v37 = v10;
        _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones, %{public}@", buf, 0x16u);
      }

      if (a3)
      {
        v24 = v10;
        LOBYTE(v19) = 0;
        *a3 = v10;
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

- (uint64_t)_fetchSharesForContainer:(void *)a3 database:(void *)a4 error:
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [a1 configuration];
    v10 = [v9 cachedCloudState];
    v11 = [v7 containerIdentifier];
    v28 = 0;
    v12 = [v10 zoneIdentifiersForContainerIdentifier:v11 databaseScope:objc_msgSend(v8 error:{"databaseScope"), &v28}];
    v13 = v28;

    if (v12 || !v13)
    {
      if (v12 && [v12 count])
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __75__HDCloudSyncFetchSharesOperation__fetchSharesForContainer_database_error___block_invoke;
        v27[3] = &unk_27861EAE8;
        v27[4] = a1;
        v17 = [v12 hk_map:v27];
        v16 = [(HDCloudSyncFetchSharesOperation *)a1 _fetchSharesForZones:v17 error:a4];
      }

      else
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC328];
        v16 = 1;
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_INFO))
        {
          v19 = v18;
          v20 = [v7 containerIdentifier];
          [v8 databaseScope];
          v21 = CKDatabaseScopeString();
          *buf = 138543874;
          v30 = a1;
          v31 = 2114;
          v32 = v20;
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
        v25 = [v7 containerIdentifier];
        [v8 databaseScope];
        v26 = CKDatabaseScopeString();
        *buf = 138544130;
        v30 = a1;
        v31 = 2114;
        v32 = v25;
        v33 = 2114;
        v34 = v26;
        v35 = 2114;
        v36 = v13;
        _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones for container %{public}@ ,database %{public}@, %{public}@", buf, 0x2Au);
      }

      if (a4)
      {
        v15 = v13;
        v16 = 0;
        *a4 = v13;
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

- (uint64_t)_fetchSharesForZones:(void *)a3 error:
{
  v24 = a3;
  v37 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
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
          v12 = [v11 zoneShareWithError:{&v25, v24}];
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
              v23 = [v11 zoneIdentifier];
              *buf = 138543874;
              v31 = a1;
              v32 = 2114;
              v33 = v23;
              v34 = 2114;
              v35 = v14;
              _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch CKShare for cached zone %{public}@, %{public}@", buf, 0x20u);
            }

            if (v24)
            {
              v19 = v14;
              *v24 = v14;
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

    os_unfair_lock_lock((a1 + 104));
    [*(a1 + 112) addObjectsFromArray:v5];
    os_unfair_lock_unlock((a1 + 104));
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