@interface HDCloudSyncRepository
- (HDCloudSyncRepository)init;
- (HDCloudSyncRepository)initWithProfile:(id)profile syncCircleIdentifier:(id)identifier primaryCKContainer:(id)container secondaryCKContainers:(id)containers userRecordName:(id)name;
- (HDCloudSyncRepositoryProfile)profile;
- (id)cachedOwnerIdentifierForContainer:(id)container;
- (id)containerForContainerIdentifier:(id)identifier;
- (id)description;
- (int)deviceMode;
- (void)cacheAllOwnerIdentifiersWithCompletion:(id)completion;
- (void)enumerateAllContainersWithBlock:(id)block;
- (void)enumerateSecondaryContainersWithBlock:(id)block;
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

- (HDCloudSyncRepository)initWithProfile:(id)profile syncCircleIdentifier:(id)identifier primaryCKContainer:(id)container secondaryCKContainers:(id)containers userRecordName:(id)name
{
  profileCopy = profile;
  identifierCopy = identifier;
  containerCopy = container;
  containersCopy = containers;
  nameCopy = name;
  if (!profileCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDCloudSyncRepository.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"profile != nil"}];
  }

  v77.receiver = self;
  v77.super_class = HDCloudSyncRepository;
  v18 = [(HDCloudSyncRepository *)&v77 init];
  v19 = v18;
  if (v18)
  {
    v20 = objc_storeWeak(&v18->_profile, profileCopy);
    profileIdentifier = [profileCopy profileIdentifier];
    profileIdentifier = v19->_profileIdentifier;
    v19->_profileIdentifier = profileIdentifier;

    v19->_profileType = [(HKProfileIdentifier *)v19->_profileIdentifier type];
    objc_storeStrong(&v19->_primaryCKContainer, container);
    v76 = containerCopy;
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

    v25 = [containersCopy copy];
    secondaryCKContainers = v19->_secondaryCKContainers;
    v19->_secondaryCKContainers = v25;

    v27 = [(NSSet *)v19->_allCKContainers setByAddingObjectsFromArray:v19->_secondaryCKContainers];
    v28 = v19->_allCKContainers;
    v19->_allCKContainers = v27;

    v29 = [identifierCopy copy];
    syncCircleIdentifier = v19->_syncCircleIdentifier;
    v19->_syncCircleIdentifier = v29;

    v31 = [nameCopy copy];
    userRecordName = v19->_userRecordName;
    v19->_userRecordName = v31;

    WeakRetained = objc_loadWeakRetained(&v19->_profile);
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    behavior = v19->_behavior;
    v19->_behavior = behavior;

    v37 = [HDCloudSyncAvailability alloc];
    profileType = v19->_profileType;
    v39 = objc_loadWeakRetained(&v19->_profile);
    daemon2 = [v39 daemon];
    behavior2 = [daemon2 behavior];
    v42 = [(HDCloudSyncAvailability *)v37 initWithProfileType:profileType behavior:behavior2];
    syncAvailability = v19->_syncAvailability;
    v19->_syncAvailability = v42;

    medicalIDDataManager = [profileCopy medicalIDDataManager];
    medicalIDDataManager = v19->_medicalIDDataManager;
    v19->_medicalIDDataManager = medicalIDDataManager;

    attachmentManager = [profileCopy attachmentManager];
    attachmentManager = v19->_attachmentManager;
    v19->_attachmentManager = attachmentManager;

    daemon3 = [profileCopy daemon];
    profileManager = [daemon3 profileManager];
    profileManager = v19->_profileManager;
    v19->_profileManager = profileManager;

    sharingEntryManager = [profileCopy sharingEntryManager];
    sharingEntryManager = v19->_sharingEntryManager;
    v19->_sharingEntryManager = sharingEntryManager;

    sharingAuthorizationManager = [profileCopy sharingAuthorizationManager];
    sharingAuthorizationManager = v19->_sharingAuthorizationManager;
    v19->_sharingAuthorizationManager = sharingAuthorizationManager;

    sharedSummaryManager = [profileCopy sharedSummaryManager];
    sharedSummaryManager = v19->_sharedSummaryManager;
    v19->_sharedSummaryManager = sharedSummaryManager;

    syncIdentityManager = [profileCopy syncIdentityManager];
    syncIdentityManager = v19->_syncIdentityManager;
    v19->_syncIdentityManager = syncIdentityManager;

    syncEngine = [profileCopy syncEngine];
    syncEngine = v19->_syncEngine;
    v19->_syncEngine = syncEngine;

    v61 = [HDCloudSyncShimProvider alloc];
    legacyRepositoryProfile = [profileCopy legacyRepositoryProfile];
    v63 = [(HDCloudSyncShimProvider *)v61 initWithProfile:legacyRepositoryProfile];
    cloudSyncShimProvider = v19->_cloudSyncShimProvider;
    v19->_cloudSyncShimProvider = v63;

    v65 = v19->_profileType;
    if ((v65 - 2) < 3 || v65 == 100)
    {
      v19->_shouldPushToUnifiedZone = 1;
    }

    else if (v65 == 1)
    {
      profile = [(HDCloudSyncRepository *)v19 profile];
      daemon4 = [profile daemon];
      behavior3 = [daemon4 behavior];
      features = [behavior3 features];
      v19->_shouldPushToUnifiedZone = [features unifiedCloudSync];
    }

    v70 = objc_loadWeakRetained(&v19->_profile);
    daemon5 = [v70 daemon];
    behavior4 = [daemon5 behavior];
    isAppleWatch = [behavior4 isAppleWatch];

    containerCopy = v76;
    if (isAppleWatch)
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
    daemon = [WeakRetained daemon];
    behavior = [daemon behavior];
    if ([behavior tinkerModeEnabled])
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

- (id)containerForContainerIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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
        containerIdentifier = [v9 containerIdentifier];
        v11 = [containerIdentifier isEqualToString:identifierCopy];

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

- (void)cacheAllOwnerIdentifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [WeakRetained cloudSyncManager];
  ownerIdentifierManager = [cloudSyncManager ownerIdentifierManager];
  allCKContainers = [(HDCloudSyncRepository *)self allCKContainers];
  allObjects = [allCKContainers allObjects];
  [ownerIdentifierManager cacheOwnerIdentifiersForContainers:allObjects completion:completionCopy];
}

- (id)cachedOwnerIdentifierForContainer:(id)container
{
  containerCopy = container;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [WeakRetained cloudSyncManager];
  ownerIdentifierManager = [cloudSyncManager ownerIdentifierManager];
  v8 = [ownerIdentifierManager cachedOwnerIdentifierForContainer:containerCopy];

  return v8;
}

- (id)description
{
  v3 = [(NSArray *)self->_secondaryCKContainers hk_mapToSet:&__block_literal_global_53];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  profileIdentifier = self->_profileIdentifier;
  containerIdentifier = [self->_primaryCKContainer containerIdentifier];
  allObjects = [v3 allObjects];
  v9 = [allObjects componentsJoinedByString:{@", "}];
  v10 = [v4 stringWithFormat:@"<%@:%p [%@] %@ (%@)>", v5, self, profileIdentifier, containerIdentifier, v9];

  return v10;
}

- (void)enumerateSecondaryContainersWithBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  secondaryCKContainers = [(HDCloudSyncRepository *)self secondaryCKContainers];
  v6 = [secondaryCKContainers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(secondaryCKContainers);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [secondaryCKContainers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)enumerateAllContainersWithBlock:(id)block
{
  v16 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allCKContainers = [(HDCloudSyncRepository *)self allCKContainers];
  v6 = [allCKContainers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allCKContainers);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [allCKContainers countByEnumeratingWithState:&v11 objects:v15 count:16];
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