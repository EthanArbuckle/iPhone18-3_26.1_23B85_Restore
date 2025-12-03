@interface HDCloudSyncValidateSubscriptionsOperation
- (HDCloudSyncRegisterSubscriptionsOperation)_registerOperationForSubscriptions:(void *)subscriptions container:;
- (void)main;
@end

@implementation HDCloudSyncValidateSubscriptionsOperation

- (void)main
{
  selfCopy = self;
  v72 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    v5 = 0;
    goto LABEL_11;
  }

  profile = [(HDCloudSyncOperation *)self profile];
  profileType = [profile profileType];

  v5 = MEMORY[0x277CBEC10];
  if (profileType > 2)
  {
    if (profileType == 3)
    {
      profile2 = [(HDCloudSyncOperation *)selfCopy profile];
      profileType2 = [profile2 profileType];

      if (profileType2 != 3)
      {
        v5 = MEMORY[0x277CBEC10];
        goto LABEL_11;
      }

      *&v68 = HDCloudSyncTinkerProfileDataAvailableForDownloadSubscriptionIdentifier;
      *(&v68 + 1) = HDCloudSyncTinkerMedicalIDDataAvailableForDownloadSubscriptionIdentifier;
      v65 = @"CloudSyncStoreRecord";
      v66 = @"CloudSyncMedicalIDRecord";
      v7 = MEMORY[0x277CBEAC0];
      v8 = 2;
LABEL_10:
      v5 = [v7 dictionaryWithObjects:&v65 forKeys:&v68 count:v8];
      goto LABEL_11;
    }

    if (profileType != 4)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (profileType == 1)
  {
    profile3 = [(HDCloudSyncOperation *)selfCopy profile];
    daemon = [profile3 daemon];
    behavior = [daemon behavior];
    tinkerModeEnabled = [behavior tinkerModeEnabled];

    if (tinkerModeEnabled)
    {
      *&v68 = HDCloudSyncPrimaryProfileDataRequestedSubscriptionIdentifier;
      *(&v68 + 1) = HDCloudSyncPrimaryProfileDataAvailableForDownloadSubscriptionIdentifier;
      v65 = @"CloudSyncDataUploadRequestRecord";
      v66 = @"CloudSyncStoreRecord";
      *&v69 = HDCloudSyncPrimaryMedicalIDDataAvailableForDownloadSubscriptionIdentifier;
      v67 = @"CloudSyncMedicalIDRecord";
      v7 = MEMORY[0x277CBEAC0];
      v8 = 3;
      goto LABEL_10;
    }

    *&v68 = HDCloudSyncPrimaryMedicalIDDataAvailableForDownloadSubscriptionIdentifier;
    v6 = &HDCloudSyncMedicalIDRecordType;
    goto LABEL_9;
  }

  if (profileType == 2)
  {
LABEL_8:
    *&v68 = HDCloudSyncSharedSummaryDataAvailableForDownloadSubscriptionIdentifier;
    v6 = &HDCloudSyncSharedSummaryTransactionRecordType;
LABEL_9:
    v65 = *v6;
    v7 = MEMORY[0x277CBEAC0];
    v8 = 1;
    goto LABEL_10;
  }

LABEL_11:
  v9 = [HDCloudSyncCompoundOperation alloc];
  configuration = [(HDCloudSyncOperation *)selfCopy configuration];
  v11 = [(HDCloudSyncCompoundOperation *)v9 initWithConfiguration:configuration cloudState:0 name:@"Validate subscriptions." continueOnSubOperationError:0];

  v12 = v11;
  if (selfCopy)
  {
    v58 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    profile4 = [(HDCloudSyncOperation *)selfCopy profile];
    if ([profile4 profileType] == 1)
    {
      profile5 = [(HDCloudSyncOperation *)selfCopy profile];
      daemon2 = [profile5 daemon];
      behavior2 = [daemon2 behavior];
      tinkerModeEnabled2 = [behavior2 tinkerModeEnabled];

      if (tinkerModeEnabled2)
      {
LABEL_23:

        goto LABEL_24;
      }

      v57 = selfCopy;
      profile6 = [(HDCloudSyncOperation *)selfCopy profile];
      daemon3 = [profile6 daemon];
      cloudSyncCoordinator = [daemon3 cloudSyncCoordinator];
      profile4 = [cloudSyncCoordinator stateSyncDomainForSubscriptionIdentifier];

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      allKeys = [profile4 allKeys];
      v23 = [allKeys countByEnumeratingWithState:&v68 objects:&v65 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v69;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v69 != v25)
            {
              objc_enumerationMutation(allKeys);
            }

            v27 = *(*(&v68 + 1) + 8 * i);
            [v58 setObject:0x283C1AAC8 forKeyedSubscript:v27];
            v28 = [profile4 objectForKeyedSubscript:v27];
            [v13 addObject:v28];
          }

          v24 = [allKeys countByEnumeratingWithState:&v68 objects:&v65 count:16];
        }

        while (v24);
      }

      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __79__HDCloudSyncValidateSubscriptionsOperation__createZonesForStateEntityDomains___block_invoke;
      v63[3] = &unk_2786136C8;
      selfCopy = v57;
      v63[4] = v57;
      v29 = [v13 hk_map:v63];
      v56 = [HDCloudSyncCreateZonesOperation alloc];
      configuration2 = [(HDCloudSyncOperation *)v57 configuration];
      configuration3 = [(HDCloudSyncOperation *)v57 configuration];
      repository = [configuration3 repository];
      primaryCKContainer = [repository primaryCKContainer];
      v33 = [(HDCloudSyncCreateZonesOperation *)v56 initWithConfiguration:configuration2 cloudState:0 zones:v29 container:primaryCKContainer];

      [(HDCloudSyncCompoundOperation *)v12 addOperation:v33 transitionHandler:0];
    }

    goto LABEL_23;
  }

  v58 = 0;
LABEL_24:

  v34 = [v5 hk_dictionaryByAddingEntriesFromDictionary:v58];
  configuration4 = [(HDCloudSyncOperation *)selfCopy configuration];
  repository2 = [configuration4 repository];
  primaryCKContainer2 = [repository2 primaryCKContainer];
  v38 = [(HDCloudSyncValidateSubscriptionsOperation *)selfCopy _registerOperationForSubscriptions:v34 container:primaryCKContainer2];

  [(HDCloudSyncCompoundOperation *)v12 addOperation:v38 transitionHandler:0];
  if (selfCopy->_includeSecondaryContainers)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    configuration5 = [(HDCloudSyncOperation *)selfCopy configuration];
    repository3 = [configuration5 repository];
    secondaryCKContainers = [repository3 secondaryCKContainers];

    v42 = [secondaryCKContainers countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v60;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v60 != v44)
          {
            objc_enumerationMutation(secondaryCKContainers);
          }

          v46 = [(HDCloudSyncValidateSubscriptionsOperation *)selfCopy _registerOperationForSubscriptions:v5 container:*(*(&v59 + 1) + 8 * j)];
          operationIgnoringErrors = [v46 operationIgnoringErrors];
          [(HDCloudSyncCompoundOperation *)v12 addOperation:operationIgnoringErrors transitionHandler:0];
        }

        v43 = [secondaryCKContainers countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v43);
    }
  }

  [(HDCloudSyncOperation *)selfCopy delegateToOperation:v12];

  v48 = *MEMORY[0x277D85DE8];
}

- (HDCloudSyncRegisterSubscriptionsOperation)_registerOperationForSubscriptions:(void *)subscriptions container:
{
  selfCopy = self;
  if (self)
  {
    subscriptionsCopy = subscriptions;
    v6 = a2;
    v7 = [HDCloudSyncRegisterSubscriptionsOperation alloc];
    configuration = [(HDCloudSyncOperation *)selfCopy configuration];
    selfCopy = [(HDCloudSyncRegisterSubscriptionsOperation *)v7 initWithConfiguration:configuration cloudState:0 container:subscriptionsCopy subscriptions:v6];
  }

  return selfCopy;
}

id __79__HDCloudSyncValidateSubscriptionsOperation__createZonesForStateEntityDomains___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBC5E8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = MEMORY[0x277CBC5F8];
  v7 = [*(a1 + 32) configuration];
  v8 = [v7 syncContainerPrefix];
  v9 = [v6 hd_stateSyncZoneIDForSyncCircleIdentifier:v8 domain:v4];

  v10 = [v5 initWithZoneID:v9];

  return v10;
}

@end