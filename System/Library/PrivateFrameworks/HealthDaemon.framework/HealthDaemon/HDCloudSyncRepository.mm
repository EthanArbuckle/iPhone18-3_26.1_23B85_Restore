@interface HDCloudSyncRepository
- (HDCloudSyncRepository)init;
- (HDCloudSyncRepository)initWithProfile:(id)a3 syncCircleIdentifier:(id)a4 primaryCKContainer:(id)a5 secondaryCKContainers:(id)a6 userRecordName:(id)a7;
- (HDCloudSyncRepositoryProfile)profile;
- (id)cachedOwnerIdentifierForContainer:(id)a3;
- (id)containerForContainerIdentifier:(id)a3;
- (id)description;
- (int)deviceMode;
- (void)cacheAllOwnerIdentifiersWithCompletion:(id)a3;
- (void)enumerateAllContainersWithBlock:(id)a3;
- (void)enumerateSecondaryContainersWithBlock:(id)a3;
@end

@implementation HDCloudSyncRepository

- (HDCloudSyncRepository)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncRepository)initWithProfile:(id)a3 syncCircleIdentifier:(id)a4 primaryCKContainer:(id)a5 secondaryCKContainers:(id)a6 userRecordName:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!v13)
  {
    v75 = [MEMORY[0x277CCA890] currentHandler];
    [v75 handleFailureInMethod:a2 object:self file:@"HDCloudSyncRepository.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
  }

  v77.receiver = self;
  v77.super_class = HDCloudSyncRepository;
  v18 = [(HDCloudSyncRepository *)&v77 init];
  v19 = v18;
  if (v18)
  {
    v20 = objc_storeWeak(&v18->_profile, v13);
    v21 = [v13 profileIdentifier];
    profileIdentifier = v19->_profileIdentifier;
    v19->_profileIdentifier = v21;

    v19->_profileType = [(HKProfileIdentifier *)v19->_profileIdentifier type];
    objc_storeStrong(&v19->_primaryCKContainer, a5);
    v76 = v15;
    if (v19->_primaryCKContainer)
    {
      [MEMORY[0x277CBEB98] setWithObject:?];
    }

    else
    {
      [MEMORY[0x277CBEB98] set];
    }
    v23 = ;
    allCKContainers = v19->_allCKContainers;
    v19->_allCKContainers = v23;

    v25 = [v16 copy];
    secondaryCKContainers = v19->_secondaryCKContainers;
    v19->_secondaryCKContainers = v25;

    v27 = [(NSSet *)v19->_allCKContainers setByAddingObjectsFromArray:v19->_secondaryCKContainers];
    v28 = v19->_allCKContainers;
    v19->_allCKContainers = v27;

    v29 = [v14 copy];
    syncCircleIdentifier = v19->_syncCircleIdentifier;
    v19->_syncCircleIdentifier = v29;

    v31 = [v17 copy];
    userRecordName = v19->_userRecordName;
    v19->_userRecordName = v31;

    WeakRetained = objc_loadWeakRetained(&v19->_profile);
    v34 = [WeakRetained daemon];
    v35 = [v34 behavior];
    behavior = v19->_behavior;
    v19->_behavior = v35;

    v37 = [HDCloudSyncAvailability alloc];
    profileType = v19->_profileType;
    v39 = objc_loadWeakRetained(&v19->_profile);
    v40 = [v39 daemon];
    v41 = [v40 behavior];
    v42 = [(HDCloudSyncAvailability *)v37 initWithProfileType:profileType behavior:v41];
    syncAvailability = v19->_syncAvailability;
    v19->_syncAvailability = v42;

    v44 = [v13 medicalIDDataManager];
    medicalIDDataManager = v19->_medicalIDDataManager;
    v19->_medicalIDDataManager = v44;

    v46 = [v13 attachmentManager];
    attachmentManager = v19->_attachmentManager;
    v19->_attachmentManager = v46;

    v48 = [v13 daemon];
    v49 = [v48 profileManager];
    profileManager = v19->_profileManager;
    v19->_profileManager = v49;

    v51 = [v13 sharingEntryManager];
    sharingEntryManager = v19->_sharingEntryManager;
    v19->_sharingEntryManager = v51;

    v53 = [v13 sharingAuthorizationManager];
    sharingAuthorizationManager = v19->_sharingAuthorizationManager;
    v19->_sharingAuthorizationManager = v53;

    v55 = [v13 sharedSummaryManager];
    sharedSummaryManager = v19->_sharedSummaryManager;
    v19->_sharedSummaryManager = v55;

    v57 = [v13 syncIdentityManager];
    syncIdentityManager = v19->_syncIdentityManager;
    v19->_syncIdentityManager = v57;

    v59 = [v13 syncEngine];
    syncEngine = v19->_syncEngine;
    v19->_syncEngine = v59;

    v61 = [HDCloudSyncShimProvider alloc];
    v62 = [v13 legacyRepositoryProfile];
    v63 = [(HDCloudSyncShimProvider *)v61 initWithProfile:v62];
    cloudSyncShimProvider = v19->_cloudSyncShimProvider;
    v19->_cloudSyncShimProvider = v63;

    v65 = v19->_profileType;
    if ((v65 - 2) < 3 || v65 == 100)
    {
      v19->_shouldPushToUnifiedZone = 1;
    }

    else if (v65 == 1)
    {
      v66 = [(HDCloudSyncRepository *)v19 profile];
      v67 = [v66 daemon];
      v68 = [v67 behavior];
      v69 = [v68 features];
      v19->_shouldPushToUnifiedZone = [v69 unifiedCloudSync];
    }

    v70 = objc_loadWeakRetained(&v19->_profile);
    v71 = [v70 daemon];
    v72 = [v71 behavior];
    v73 = [v72 isAppleWatch];

    v15 = v76;
    if (v73)
    {
      v19->_shouldPushToUnifiedZone = 1;
    }
  }

  return v19;
}

- (int)deviceMode
{
  profileType = self->_profileType;
  if (profileType == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v5 = [WeakRetained daemon];
    v6 = [v5 behavior];
    if ([v6 tinkerModeEnabled])
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else if (profileType == 3)
  {
    return 2;
  }

  else
  {
    return 1;
  }

  return v3;
}

- (id)containerForContainerIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_allCKContainers;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 containerIdentifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)cacheAllOwnerIdentifiersWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [WeakRetained cloudSyncManager];
  v6 = [v5 ownerIdentifierManager];
  v7 = [(HDCloudSyncRepository *)self allCKContainers];
  v8 = [v7 allObjects];
  [v6 cacheOwnerIdentifiersForContainers:v8 completion:v4];
}

- (id)cachedOwnerIdentifierForContainer:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v6 = [WeakRetained cloudSyncManager];
  v7 = [v6 ownerIdentifierManager];
  v8 = [v7 cachedOwnerIdentifierForContainer:v4];

  return v8;
}

- (id)description
{
  v3 = [(NSArray *)self->_secondaryCKContainers hk_mapToSet:&__block_literal_global_53];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  profileIdentifier = self->_profileIdentifier;
  v7 = [self->_primaryCKContainer containerIdentifier];
  v8 = [v3 allObjects];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v4 stringWithFormat:@"<%@:%p [%@] %@ (%@)>", v5, self, profileIdentifier, v7, v9];

  return v10;
}

- (void)enumerateSecondaryContainersWithBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HDCloudSyncRepository *)self secondaryCKContainers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)enumerateAllContainersWithBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(HDCloudSyncRepository *)self allCKContainers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (HDCloudSyncRepositoryProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end