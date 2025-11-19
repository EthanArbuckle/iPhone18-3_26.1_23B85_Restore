@interface HDCloudSyncValidateSubscriptionsOperation
- (HDCloudSyncRegisterSubscriptionsOperation)_registerOperationForSubscriptions:(void *)a3 container:;
- (void)main;
@end

@implementation HDCloudSyncValidateSubscriptionsOperation

- (void)main
{
  v2 = self;
  v72 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v3 = [(HDCloudSyncOperation *)self profile];
  v4 = [v3 profileType];

  v5 = MEMORY[0x277CBEC10];
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v53 = [(HDCloudSyncOperation *)v2 profile];
      v54 = [v53 profileType];

      if (v54 != 3)
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

    if (v4 != 4)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 == 1)
  {
    v49 = [(HDCloudSyncOperation *)v2 profile];
    v50 = [v49 daemon];
    v51 = [v50 behavior];
    v52 = [v51 tinkerModeEnabled];

    if (v52)
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

  if (v4 == 2)
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
  v10 = [(HDCloudSyncOperation *)v2 configuration];
  v11 = [(HDCloudSyncCompoundOperation *)v9 initWithConfiguration:v10 cloudState:0 name:@"Validate subscriptions." continueOnSubOperationError:0];

  v12 = v11;
  if (v2)
  {
    v58 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [(HDCloudSyncOperation *)v2 profile];
    if ([v14 profileType] == 1)
    {
      v15 = [(HDCloudSyncOperation *)v2 profile];
      v16 = [v15 daemon];
      v17 = [v16 behavior];
      v18 = [v17 tinkerModeEnabled];

      if (v18)
      {
LABEL_23:

        goto LABEL_24;
      }

      v57 = v2;
      v19 = [(HDCloudSyncOperation *)v2 profile];
      v20 = [v19 daemon];
      v21 = [v20 cloudSyncCoordinator];
      v14 = [v21 stateSyncDomainForSubscriptionIdentifier];

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v22 = [v14 allKeys];
      v23 = [v22 countByEnumeratingWithState:&v68 objects:&v65 count:16];
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
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v68 + 1) + 8 * i);
            [v58 setObject:0x283C1AAC8 forKeyedSubscript:v27];
            v28 = [v14 objectForKeyedSubscript:v27];
            [v13 addObject:v28];
          }

          v24 = [v22 countByEnumeratingWithState:&v68 objects:&v65 count:16];
        }

        while (v24);
      }

      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __79__HDCloudSyncValidateSubscriptionsOperation__createZonesForStateEntityDomains___block_invoke;
      v63[3] = &unk_2786136C8;
      v2 = v57;
      v63[4] = v57;
      v29 = [v13 hk_map:v63];
      v56 = [HDCloudSyncCreateZonesOperation alloc];
      v55 = [(HDCloudSyncOperation *)v57 configuration];
      v30 = [(HDCloudSyncOperation *)v57 configuration];
      v31 = [v30 repository];
      v32 = [v31 primaryCKContainer];
      v33 = [(HDCloudSyncCreateZonesOperation *)v56 initWithConfiguration:v55 cloudState:0 zones:v29 container:v32];

      [(HDCloudSyncCompoundOperation *)v12 addOperation:v33 transitionHandler:0];
    }

    goto LABEL_23;
  }

  v58 = 0;
LABEL_24:

  v34 = [v5 hk_dictionaryByAddingEntriesFromDictionary:v58];
  v35 = [(HDCloudSyncOperation *)v2 configuration];
  v36 = [v35 repository];
  v37 = [v36 primaryCKContainer];
  v38 = [(HDCloudSyncValidateSubscriptionsOperation *)v2 _registerOperationForSubscriptions:v34 container:v37];

  [(HDCloudSyncCompoundOperation *)v12 addOperation:v38 transitionHandler:0];
  if (v2->_includeSecondaryContainers)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v39 = [(HDCloudSyncOperation *)v2 configuration];
    v40 = [v39 repository];
    v41 = [v40 secondaryCKContainers];

    v42 = [v41 countByEnumeratingWithState:&v59 objects:v64 count:16];
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
            objc_enumerationMutation(v41);
          }

          v46 = [(HDCloudSyncValidateSubscriptionsOperation *)v2 _registerOperationForSubscriptions:v5 container:*(*(&v59 + 1) + 8 * j)];
          v47 = [v46 operationIgnoringErrors];
          [(HDCloudSyncCompoundOperation *)v12 addOperation:v47 transitionHandler:0];
        }

        v43 = [v41 countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v43);
    }
  }

  [(HDCloudSyncOperation *)v2 delegateToOperation:v12];

  v48 = *MEMORY[0x277D85DE8];
}

- (HDCloudSyncRegisterSubscriptionsOperation)_registerOperationForSubscriptions:(void *)a3 container:
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [HDCloudSyncRegisterSubscriptionsOperation alloc];
    v8 = [(HDCloudSyncOperation *)v3 configuration];
    v3 = [(HDCloudSyncRegisterSubscriptionsOperation *)v7 initWithConfiguration:v8 cloudState:0 container:v5 subscriptions:v6];
  }

  return v3;
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