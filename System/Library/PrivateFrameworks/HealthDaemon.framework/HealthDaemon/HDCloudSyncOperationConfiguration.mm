@interface HDCloudSyncOperationConfiguration
- (BOOL)satisfiesOperationTagDependencies:(id)a3 error:(id *)a4;
- (HDCloudSyncOperationConfiguration)initWithRepository:(id)a3 operationGroup:(id)a4 syncContainerPrefix:(id)a5 context:(id)a6 accessibilityAssertion:(id)a7 syncIdentifier:(id)a8 syncDate:(id)a9;
- (NSDictionary)analyticsDictionary;
- (NSSet)finishedOperationTags;
- (id)descriptionForSignpost;
- (id)pushStoreWithIdentifier:(id)a3 container:(id)a4 error:(id *)a5;
- (id)pushStoresForContainer:(id)a3 error:(id *)a4;
- (void)didFinishOperationTag:(id)a3;
@end

@implementation HDCloudSyncOperationConfiguration

- (HDCloudSyncOperationConfiguration)initWithRepository:(id)a3 operationGroup:(id)a4 syncContainerPrefix:(id)a5 context:(id)a6 accessibilityAssertion:(id)a7 syncIdentifier:(id)a8 syncDate:(id)a9
{
  v16 = a3;
  v50 = a4;
  v17 = a5;
  v18 = a6;
  obj = a7;
  v47 = a7;
  v19 = a8;
  v20 = a9;
  if (([v18 options] & 8) != 0 && (objc_msgSend(v18, "options") & 0x40) != 0)
  {
    v45 = [MEMORY[0x277CCA890] currentHandler];
    [v45 handleFailureInMethod:a2 object:self file:@"HDCloudSyncOperationConfiguration.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"!((context.options & HKCloudSyncOptionRebase) && (context.options & HKCloudSyncOptionRebaseProhibited))"}];
  }

  v49 = v18;
  v51.receiver = self;
  v51.super_class = HDCloudSyncOperationConfiguration;
  v21 = [(HDCloudSyncOperationConfiguration *)&v51 init];
  v22 = v21;
  v23 = v16;
  v24 = v17;
  if (v21)
  {
    objc_storeStrong(&v21->_repository, a3);
    objc_storeStrong(&v22->_operationGroup, a4);
    v25 = [v17 copy];
    syncContainerPrefix = v22->_syncContainerPrefix;
    v22->_syncContainerPrefix = v25;

    objc_storeStrong(&v22->_context, a6);
    objc_storeStrong(&v22->_accessibilityAssertion, obj);
    v27 = [v19 copy];
    syncIdentifier = v22->_syncIdentifier;
    v22->_syncIdentifier = v27;

    v29 = [v20 copy];
    syncDate = v22->_syncDate;
    v22->_syncDate = v29;

    v31 = [v19 UUIDString];
    v32 = [v31 substringToIndex:4];
    shortSyncIdentifier = v22->_shortSyncIdentifier;
    v22->_shortSyncIdentifier = v32;

    v34 = [v23 profile];
    v35 = [v34 profileIdentifier];
    v36 = [v35 identifier];
    v37 = [v36 UUIDString];
    v38 = [v37 substringToIndex:4];
    shortProfileIdentifier = v22->_shortProfileIdentifier;
    v22->_shortProfileIdentifier = v38;

    v40 = [[HDCloudSyncCachedCloudState alloc] initWithRepository:v22->_repository accessibilityAssertion:v22->_accessibilityAssertion];
    cachedCloudState = v22->_cachedCloudState;
    v22->_cachedCloudState = v40;

    v42 = objc_alloc_init(HDCloudSyncComputedState);
    computedState = v22->_computedState;
    v22->_computedState = v42;
  }

  return v22;
}

- (id)pushStoresForContainer:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HDCloudSyncRepository *)self->_repository cachedOwnerIdentifierForContainer:v6];
  v8 = [v7 string];

  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v6 containerIdentifier];
    *buf = 138543874;
    v38 = self;
    v39 = 2114;
    v40 = v8;
    v41 = 2114;
    v42 = v11;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Look for a local cloud sync store with owner: %{public}@, container: %{public}@", buf, 0x20u);
  }

  v12 = [v6 containerIdentifier];
  v13 = [(HDCloudSyncRepository *)self->_repository syncIdentityManager];
  v14 = [v13 currentSyncIdentity];
  v15 = [v14 identity];
  v16 = [(HDCloudSyncRepository *)self->_repository profile];
  v17 = [v16 legacyRepositoryProfile];
  v31 = v8;
  v18 = [HDCloudSyncStoreEntity storeIdentifiersForOwnerIdentifier:v8 containerIdentifier:v12 syncIdentity:v15 profile:v17 error:a4];

  v19 = v18;
  if (v18)
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [(HDCloudSyncOperationConfiguration *)self pushStoreWithIdentifier:*(*(&v32 + 1) + 8 * i) container:v6 error:a4];
          if (!v26)
          {

            v28 = 0;
            goto LABEL_14;
          }

          v27 = v26;
          [v20 addObject:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v28 = v20;
LABEL_14:
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)pushStoreWithIdentifier:(id)a3 container:(id)a4 error:(id *)a5
{
  repository = self->_repository;
  v8 = a4;
  v9 = a3;
  v10 = [(HDCloudSyncRepository *)repository cachedOwnerIdentifierForContainer:v8];
  v11 = [v10 string];

  v12 = [(HDCloudSyncRepository *)self->_repository profile];
  v13 = [v12 legacyRepositoryProfile];
  v14 = [(HDCloudSyncRepository *)self->_repository syncIdentityManager];
  v15 = [v14 currentSyncIdentity];
  v16 = [v15 identity];
  v17 = [v8 containerIdentifier];

  v18 = [HDCloudSyncStore syncStoreForProfile:v13 storeIdentifier:v9 ownerIdentifier:v11 syncIdentity:v16 containerIdentifier:v17 error:a5];

  return v18;
}

- (id)descriptionForSignpost
{
  v3 = MEMORY[0x277CCACA8];
  [(HDCloudSyncContext *)self->_context options];
  v4 = HKCloudSyncOptionsToString();
  [(HDCloudSyncContext *)self->_context reason];
  v5 = HKCloudSyncReasonToString();
  v6 = [(CKOperationGroup *)self->_operationGroup name];
  v7 = [v3 stringWithFormat:@"options=(%@), reason=(%@), groupName=%@, syncCircle=%@", v4, v5, v6, self->_syncContainerPrefix];

  return v7;
}

- (NSDictionary)analyticsDictionary
{
  v20[10] = *MEMORY[0x277D85DE8];
  v19[0] = @"reason";
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDCloudSyncContext reason](self->_context, "reason")}];
  v20[0] = v18;
  v19[1] = @"options";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HDCloudSyncContext options](self->_context, "options")}];
  v20[1] = v3;
  v19[2] = @"group";
  v4 = [(CKOperationGroup *)self->_operationGroup name];
  v5 = v4;
  v6 = @"<none>";
  if (v4)
  {
    v6 = v4;
  }

  syncContainerPrefix = self->_syncContainerPrefix;
  v20[2] = v6;
  v20[3] = syncContainerPrefix;
  v19[3] = @"syncContainerPrefix";
  v19[4] = @"syncIdentifier";
  v8 = [(NSUUID *)self->_syncIdentifier UUIDString];
  v20[4] = v8;
  v19[5] = @"expectedSendSize";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CKOperationGroup expectedSendSize](self->_operationGroup, "expectedSendSize")}];
  v20[5] = v9;
  v19[6] = @"expectedReceiveSize";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CKOperationGroup expectedReceiveSize](self->_operationGroup, "expectedReceiveSize")}];
  v20[6] = v10;
  v19[7] = @"hasAccessibilityAssertion";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_accessibilityAssertion != 0];
  v20[7] = v11;
  v19[8] = @"manateeEnabled";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HDCloudSyncRepository repositorySettings](self->_repository, "repositorySettings") & 1}];
  v20[8] = v12;
  v19[9] = @"primaryContainer";
  v13 = [(HDCloudSyncRepository *)self->_repository primaryCKContainer];
  v14 = [v13 containerIdentifier];
  v20[9] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:10];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSSet)finishedOperationTags
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_finishedTags copy];
  os_unfair_lock_unlock(&self->_lock);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v5 = v4;

  return v5;
}

- (void)didFinishOperationTag:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  finishedTags = self->_finishedTags;
  if (!finishedTags)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = self->_finishedTags;
    self->_finishedTags = v5;

    finishedTags = self->_finishedTags;
  }

  [(NSMutableSet *)finishedTags addObject:v7];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)satisfiesOperationTagDependencies:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (([(NSMutableSet *)self->_finishedTags containsObject:v13]& 1) == 0)
        {
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v10 addObject:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = [v10 count];
  if (v14)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:734 format:{@"Operation dependencies not satisifed: %@", v10}];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14 == 0;
}

@end