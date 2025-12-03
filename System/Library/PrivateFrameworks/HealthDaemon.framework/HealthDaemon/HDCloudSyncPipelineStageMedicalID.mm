@interface HDCloudSyncPipelineStageMedicalID
- (void)main;
@end

@implementation HDCloudSyncPipelineStageMedicalID

- (void)main
{
  v91[1] = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  medicalIDDataManager = [repository medicalIDDataManager];
  v82 = 0;
  v6 = [medicalIDDataManager fetchMedicalIDWithError:&v82];
  v7 = v82;
  localMedicalIDData = self->_localMedicalIDData;
  self->_localMedicalIDData = v6;

  cloudMedicalIDData = self->_cloudMedicalIDData;
  self->_cloudMedicalIDData = 0;

  medicalIDRecord = self->_medicalIDRecord;
  self->_medicalIDRecord = 0;

  if (self->_localMedicalIDData)
  {
    v11 = 1;
  }

  else
  {
    v11 = v7 == 0;
  }

  if (v11)
  {
    v71 = v7;
    v12 = [HDCloudSyncCompoundOperation alloc];
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    v72 = [(HDCloudSyncCompoundOperation *)v12 initWithConfiguration:configuration2 cloudState:0 name:@"Fetch and Process Medical ID" continueOnSubOperationError:0];

    v14 = [HDCloudSyncParallelOperation alloc];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    v16 = [(HDCloudSyncParallelOperation *)v14 initWithConfiguration:configuration3 cloudState:0];

    configuration4 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration4 repository];
    secondaryCKContainers = [repository2 secondaryCKContainers];

    v20 = [HDCloudSyncMedicalIDFetchOperation alloc];
    configuration5 = [(HDCloudSyncOperation *)self configuration];
    configuration6 = [(HDCloudSyncOperation *)self configuration];
    repository3 = [configuration6 repository];
    primaryCKContainer = [repository3 primaryCKContainer];
    v25 = [(HDCloudSyncMedicalIDFetchOperation *)v20 initWithConfiguration:configuration5 cloudState:0 container:primaryCKContainer];

    v70 = v25;
    [(HDCloudSyncParallelOperation *)v16 addOperation:v25];
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = secondaryCKContainers;
    v27 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v79;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v79 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v78 + 1) + 8 * i);
          v32 = [HDCloudSyncMedicalIDFetchOperation alloc];
          configuration7 = [(HDCloudSyncOperation *)self configuration];
          v34 = [(HDCloudSyncMedicalIDFetchOperation *)v32 initWithConfiguration:configuration7 cloudState:0 container:v31];

          [v26 addObject:v34];
          operationIgnoringErrors = [(HDCloudSyncOperation *)v34 operationIgnoringErrors];
          [(HDCloudSyncParallelOperation *)v16 addOperation:operationIgnoringErrors];
        }

        v28 = [obj countByEnumeratingWithState:&v78 objects:v86 count:16];
      }

      while (v28);
    }

    [(HDCloudSyncCompoundOperation *)v72 addOperation:v16 transitionHandler:0];
    configuration8 = [(HDCloudSyncOperation *)self configuration];
    if (self)
    {
      v73 = configuration8;
      v37 = [[HDCloudSyncCompoundOperation alloc] initWithConfiguration:configuration8 cloudState:0 name:@"Process Medical ID" continueOnSubOperationError:0];
      v38 = [(HDCloudSyncOperation *)[HDCloudSyncMedicalIDMergeOperation alloc] initWithConfiguration:v73 cloudState:0];
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __77__HDCloudSyncPipelineStageMedicalID__compoundSyncOperationWithConfiguration___block_invoke;
      v85[3] = &unk_278625218;
      v85[4] = self;
      [(HDCloudSyncCompoundOperation *)v37 setPreparationHandler:v85];
      [(HDCloudSyncCompoundOperation *)v37 addOperation:v38 transitionHandler:0];
      v39 = [(HDCloudSyncOperation *)[HDCloudSyncMedicalIDPersistOperation alloc] initWithConfiguration:v73 cloudState:0];
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __77__HDCloudSyncPipelineStageMedicalID__compoundSyncOperationWithConfiguration___block_invoke_2;
      v83[3] = &unk_278625240;
      v68 = v38;
      v69 = v39;
      v84 = v68;
      [(HDCloudSyncCompoundOperation *)v37 addOperation:v39 transitionHandler:v83];
      configuration9 = [(HDCloudSyncOperation *)self configuration];
      repository4 = [configuration9 repository];
      primaryCKContainer2 = [repository4 primaryCKContainer];
      configuration10 = [(HDCloudSyncOperation *)self configuration];
      repository5 = [configuration10 repository];
      profileIdentifier = [repository5 profileIdentifier];
      v45 = HDDatabaseForContainer(primaryCKContainer2, profileIdentifier);
      databaseScope = [v45 databaseScope];

      v46 = v37;
      configuration8 = v73;

      if (databaseScope == 2)
      {
        v47 = objc_alloc(MEMORY[0x277CBC5E8]);
        v48 = MEMORY[0x277CBC5F8];
        repository6 = [v73 repository];
        syncCircleIdentifier = [repository6 syncCircleIdentifier];
        v51 = [v48 hd_unifiedSyncZoneIDForSyncCircleIdentifier:syncCircleIdentifier];
        v52 = [v47 initWithZoneID:v51];

        v53 = [HDCloudSyncCreateZonesOperation alloc];
        v91[0] = v52;
        v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:1];
        repository7 = [v73 repository];
        primaryCKContainer3 = [repository7 primaryCKContainer];
        v57 = [(HDCloudSyncCreateZonesOperation *)v53 initWithConfiguration:v73 cloudState:0 zones:v54 container:primaryCKContainer3];

        [(HDCloudSyncCompoundOperation *)v46 addOperation:v57 transitionHandler:0];
      }

      v58 = [(HDCloudSyncOperation *)[HDCloudSyncMedicalIDPushOperation alloc] initWithConfiguration:v73 cloudState:0];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __77__HDCloudSyncPipelineStageMedicalID__compoundSyncOperationWithConfiguration___block_invoke_3;
      v88 = &unk_278614D48;
      selfCopy = self;
      v90 = v68;
      v59 = v68;
      [(HDCloudSyncCompoundOperation *)v46 addOperation:v58 transitionHandler:buf];
    }

    else
    {
      v46 = 0;
    }

    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __41__HDCloudSyncPipelineStageMedicalID_main__block_invoke;
    v75[3] = &unk_2786251F0;
    v75[4] = self;
    v76 = v70;
    v77 = v26;
    v60 = v26;
    v61 = v70;
    v62 = [(HDCloudSyncOperation *)v46 operationWithRunCondition:v75];
    [(HDCloudSyncCompoundOperation *)v72 addOperation:v62 transitionHandler:0];
    [(HDCloudSyncOperation *)self delegateToOperation:v72];

    v7 = v71;
  }

  else
  {
    _HKInitializeLogging();
    v63 = *MEMORY[0x277CCC2E0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      _os_log_error_impl(&dword_228986000, v63, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch local Medical ID during cloud sync with error %{public}@", buf, 0x16u);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v7];
  }

  v65 = *MEMORY[0x277D85DE8];
}

uint64_t __41__HDCloudSyncPipelineStageMedicalID_main__block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  v28 = v3;
  if (v1)
  {
    v5 = v3;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v32;
      obj = v4;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          v11 = [v5 cloudMedicalIDData];

          if (!v11)
          {
            goto LABEL_9;
          }

          v12 = [v5 cloudMedicalIDData];
          v13 = [v12 dateSaved];
          v14 = [v10 cloudMedicalIDData];
          v15 = [v14 dateSaved];
          v16 = [v13 hk_isBeforeDate:v15];

          if (v16)
          {
LABEL_9:
            v17 = v10;

            v5 = v17;
          }
        }

        v4 = obj;
        v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v18 = [v5 cloudMedicalIDData];
  v19 = *(a1 + 32);
  v20 = *(v19 + 136);
  *(v19 + 136) = v18;

  v21 = [*(a1 + 40) medicalIDRecord];
  v22 = *(a1 + 32);
  v23 = *(v22 + 144);
  *(v22 + 144) = v21;

  v24 = *(a1 + 32);
  if (*(v24 + 128) == 0)
  {
    v25 = 0;
  }

  else
  {
    v25 = [*(v24 + 128) isEqualToSyncedData:?] ^ 1;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25;
}

void __77__HDCloudSyncPipelineStageMedicalID__compoundSyncOperationWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 128);
  v4 = a2;
  v5 = [v4 operations];
  v6 = [v5 firstObject];
  [v6 setLocalMedicalIDData:v3];

  v7 = *(*(a1 + 32) + 136);
  v9 = [v4 operations];

  v8 = [v9 firstObject];
  [v8 setCloudMedicalIDData:v7];
}

void __77__HDCloudSyncPipelineStageMedicalID__compoundSyncOperationWithConfiguration___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v5 = [v3 mergedMedicalIDData];
  [v4 setMedicalIDDataToPersist:v5];
}

void __77__HDCloudSyncPipelineStageMedicalID__compoundSyncOperationWithConfiguration___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 136);
  v6 = a3;
  [v6 setCloudMedicalIDData:v4];
  v5 = [*(a1 + 40) mergedMedicalIDData];
  [v6 setMedicalIDDataToPush:v5];

  [v6 setMedicalIDRecord:*(*(a1 + 32) + 144)];
}

@end