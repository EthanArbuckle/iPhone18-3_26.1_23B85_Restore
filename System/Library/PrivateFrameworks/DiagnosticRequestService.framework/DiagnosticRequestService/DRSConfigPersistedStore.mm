@interface DRSConfigPersistedStore
- (BOOL)addConfigMetdata:(id)a3 errorOut:(id *)a4;
- (BOOL)applyWaitingConfigWithUUID:(id)a3 appliedDate:(id)a4 errorOut:(id *)a5;
- (BOOL)clearStoreWithErrorOut:(id *)a3;
- (BOOL)completeConfigWithUUID:(id)a3 completedDate:(id)a4 completionType:(unint64_t)a5 completionDescription:(id)a6 errorOut:(id *)a7;
- (BOOL)updateCloudChannelConfig:(id)a3 errorOut:(id *)a4;
- (id)_ON_MOC_cloudChannelConfigMOs;
- (id)cloudChannelConfig;
- (id)configMetadataForUUID:(id)a3 errorOut:(id *)a4;
- (id)configMetadatasForPredicate:(id)a3 sortDescriptors:(id)a4 fetchLimit:(unint64_t)a5 errorOut:(id *)a6;
- (unint64_t)_countForFetchRequest:(id)a3 withPredicate:(id)a4 fetchLimit:(unint64_t)a5 errorOut:(id *)a6;
- (unint64_t)configCountForPredicate:(id)a3 fetchLimit:(unint64_t)a4 withErrorOut:(id *)a5;
- (unint64_t)metadataCountForPredicate:(id)a3 fetchLimit:(unint64_t)a4 withErrorOut:(id *)a5;
- (void)_ON_MOC_deleteCloudChannelConfigMOs:(id)a3;
@end

@implementation DRSConfigPersistedStore

- (id)configMetadataForUUID:(id)a3 errorOut:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  v7 = [(DRSConfigPersistedStore *)self context];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__DRSConfigPersistedStore_configMetadataForUUID_errorOut___block_invoke;
  v11[3] = &unk_27899ED80;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v14 = &v16;
  v15 = &v22;
  [v7 performBlockAndWait:v11];

  if (a4)
  {
    *a4 = v17[5];
  }

  v9 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

void __58__DRSConfigPersistedStore_configMetadataForUUID_errorOut___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v11 = 0;
  v4 = [DRSConfigMetadata _ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:v2 context:v3 errorOut:&v11];
  v5 = v11;
  v6 = v11;

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  if (v4)
  {
    v7 = [DRSConfigMetadata alloc];
    v8 = [(DRSConfigMetadata *)v7 _ON_CONTEXT_QUEUE_initWithConfigMetadataMO:v4];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

- (BOOL)addConfigMetdata:(id)a3 errorOut:(id *)a4
{
  v41[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(DRSConfigPersistedStore *)self isReadOnly])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__7;
    v30 = __Block_byref_object_dispose__7;
    v31 = 0;
    v10 = [(DRSConfigPersistedStore *)self context];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__DRSConfigPersistedStore_addConfigMetdata_errorOut___block_invoke;
    v21[3] = &unk_27899ED80;
    v11 = v6;
    v22 = v11;
    v23 = self;
    v24 = &v26;
    v25 = &v32;
    [v10 performBlockAndWait:v21];

    if (a4)
    {
      *a4 = v27[5];
    }

    if (!v27[5])
    {
      if (*(v33 + 24) != 1)
      {
        v9 = 1;
        goto LABEL_13;
      }

      if (a4)
      {
        v12 = MEMORY[0x277CCACA8];
        v13 = [v11 configUUID];
        v14 = [v12 stringWithFormat:@"Attempted to add already existing metadata with config UUID %@", v13];

        v15 = MEMORY[0x277CCA9B8];
        v38 = *MEMORY[0x277CCA450];
        v39 = v14;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        *a4 = [v15 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v16];
      }

      v17 = DPLogHandle_ConfigPersistedStoreError();
      if (os_signpost_enabled(v17))
      {
        v18 = [v11 configUUID];
        *buf = 138412290;
        v37 = v18;
        _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataCollision", "Attempted to add already existing metadata with config UUID %@", buf, 0xCu);
      }
    }

    v9 = 0;
LABEL_13:

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);
    goto LABEL_14;
  }

  v7 = MEMORY[0x277CCA9B8];
  v40 = *MEMORY[0x277CCA450];
  v41[0] = @"Attempted write operation on read-only ConfigPersistedStore";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  *a4 = [v7 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v8];

  v9 = 0;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
  return v9;
}

void __53__DRSConfigPersistedStore_addConfigMetdata_errorOut___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _uuidPredicate];
  v3 = [*(a1 + 40) context];
  v22 = 0;
  v4 = [DRSConfigMetadata _ON_CONTEXT_QUEUE_countForFilterPredicate:v2 context:v3 errorOut:&v22];
  v5 = v22;
  v6 = v22;

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    if (v4)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      v7 = *(a1 + 32);
      v8 = [*(a1 + 40) context];
      v9 = *(*(a1 + 48) + 8);
      obj = *(v9 + 40);
      v10 = [v7 _ON_CONTEXT_QUEUE_moRepresentationInContext:v8 createIfMissing:1 errorOut:&obj];
      objc_storeStrong((v9 + 40), obj);

      if (v10)
      {
        v11 = [*(a1 + 40) context];
        v12 = *(*(a1 + 48) + 8);
        v20 = *(v12 + 40);
        v13 = [v11 save:&v20];
        objc_storeStrong((v12 + 40), v20);

        if (v13)
        {
          v14 = DPLogHandle_ConfigPersistedStore();
          if (os_signpost_enabled(v14))
          {
            v15 = [*(a1 + 32) configUUID];
            [*(a1 + 32) state];
            v16 = DRConfigStringForState();
            *buf = 138543618;
            v24 = v15;
            v25 = 2114;
            v26 = v16;
            _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataSaveSuccess", "Saved %{public}@ with state %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v14 = DPLogHandle_ConfigPersistedStoreError();
          if (os_signpost_enabled(v14))
          {
            v17 = [*(a1 + 32) configUUID];
            v18 = *(*(*(a1 + 48) + 8) + 40);
            *buf = 138543618;
            v24 = v17;
            v25 = 2114;
            v26 = v18;
            _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigMetadataSaveFailed", "Could not save %{public}@ due to error %{public}@", buf, 0x16u);
          }
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)applyWaitingConfigWithUUID:(id)a3 appliedDate:(id)a4 errorOut:(id *)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if ([(DRSConfigPersistedStore *)self isReadOnly])
  {
    v10 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA450];
    v36[0] = @"Attempted write operation on read-only ConfigPersistedStore";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    *a5 = [v10 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v11];

    v12 = 0;
  }

  else
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__7;
    v29 = __Block_byref_object_dispose__7;
    v30 = 0;
    v13 = [(DRSConfigPersistedStore *)self context];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __75__DRSConfigPersistedStore_applyWaitingConfigWithUUID_appliedDate_errorOut___block_invoke;
    v20[3] = &unk_27899FAE0;
    v14 = v8;
    v21 = v14;
    v22 = self;
    v24 = &v25;
    v23 = v9;
    [v13 performBlockAndWait:v20];

    v15 = v26[5];
    v12 = v15 == 0;
    if (v15)
    {
      v16 = DPLogHandle_ConfigPersistedStoreError();
      if (os_signpost_enabled(v16))
      {
        v17 = v26[5];
        *buf = 138543618;
        v32 = v14;
        v33 = 2114;
        v34 = v17;
        _os_signpost_emit_with_name_impl(&dword_232906000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ApplyWaitingConfigFailed", "Could not apply waiting config %{public}@ due to error %{public}@", buf, 0x16u);
      }

      *a5 = v26[5];
    }

    _Block_object_dispose(&v25, 8);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

void __75__DRSConfigPersistedStore_applyWaitingConfigWithUUID_appliedDate_errorOut___block_invoke(uint64_t a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v32 = 0;
  v4 = [DRSConfigMetadata _ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:v2 context:v3 errorOut:&v32];
  v5 = v32;
  v6 = v32;

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    if (v4)
    {
      if ([v4 state] == 1)
      {
        v7 = [v4 completionType];
        v8 = [v4 receivedDate];
        v9 = *(a1 + 48);
        v10 = [v4 completedDate];
        v11 = [v4 completionDescription];
        v12 = [DRSConfigMetadata _isValidState:2 completionType:v7 receivedDate:v8 appliedDate:v9 completedDate:v10 completionDescription:v11];

        if (v12)
        {
          [v4 setState:2];
          [v4 setAppliedDate:*(a1 + 48)];
          v13 = [*(a1 + 40) context];
          v14 = *(*(a1 + 56) + 8);
          v31 = *(v14 + 40);
          [v13 save:&v31];
          v15 = v31;
          v16 = *(v14 + 40);
          *(v14 + 40) = v15;
LABEL_10:

          goto LABEL_11;
        }

        v25 = MEMORY[0x277CCACA8];
        v26 = [*(a1 + 32) UUIDString];
        v13 = [v25 stringWithFormat:@"Failed to apply config %@", v26];

        v19 = MEMORY[0x277CCA9B8];
        v33 = *MEMORY[0x277CCA450];
        v34 = v13;
        v20 = MEMORY[0x277CBEAC0];
        v21 = &v34;
        v22 = &v33;
      }

      else
      {
        v23 = MEMORY[0x277CCACA8];
        v24 = [*(a1 + 32) UUIDString];
        v13 = [v23 stringWithFormat:@"Attempted to apply non-waiting config %@", v24];

        v19 = MEMORY[0x277CCA9B8];
        v35 = *MEMORY[0x277CCA450];
        v36 = v13;
        v20 = MEMORY[0x277CBEAC0];
        v21 = &v36;
        v22 = &v35;
      }
    }

    else
    {
      v17 = MEMORY[0x277CCACA8];
      v18 = [*(a1 + 32) UUIDString];
      v13 = [v17 stringWithFormat:@"Attempting to update missing config %@", v18];

      v19 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v38[0] = v13;
      v20 = MEMORY[0x277CBEAC0];
      v21 = v38;
      v22 = &v37;
    }

    v16 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
    v27 = [v19 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v16];
    v28 = *(*(a1 + 56) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    goto LABEL_10;
  }

LABEL_11:

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)completeConfigWithUUID:(id)a3 completedDate:(id)a4 completionType:(unint64_t)a5 completionDescription:(id)a6 errorOut:(id *)a7
{
  v48[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if ([(DRSConfigPersistedStore *)self isReadOnly])
  {
    if (a7)
    {
      v15 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277CCA450];
      v48[0] = @"Attempted write operation on read-only ConfigPersistedStore";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      *a7 = [v15 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v16];
    }

    v17 = 0;
  }

  else
  {
    v35 = 0;
    v36 = &v35;
    v37 = 0x3032000000;
    v38 = __Block_byref_object_copy__7;
    v39 = __Block_byref_object_dispose__7;
    v40 = 0;
    v18 = [(DRSConfigPersistedStore *)self context];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __110__DRSConfigPersistedStore_completeConfigWithUUID_completedDate_completionType_completionDescription_errorOut___block_invoke;
    v28[3] = &unk_27899FB30;
    v19 = v12;
    v29 = v19;
    v30 = self;
    v33 = &v35;
    v31 = v13;
    v34 = a5;
    v20 = v14;
    v32 = v20;
    [v18 performBlockAndWait:v28];

    v21 = v36[5];
    v17 = v21 == 0;
    if (v21)
    {
      v22 = DPLogHandle_ConfigPersistedStoreError();
      if (os_signpost_enabled(v22))
      {
        v23 = v36[5];
        *buf = 138543618;
        v42 = v19;
        v43 = 2114;
        v44 = v23;
        _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CompleteConfigFailed", "Could not complete active config %{public}@ due to error %{public}@", buf, 0x16u);
      }

      if (a7)
      {
        *a7 = v36[5];
      }
    }

    else
    {
      v24 = DPLogHandle_ConfigPersistedStore();
      if (os_signpost_enabled(v24))
      {
        v25 = DRConfigCompletionTypeString(a5);
        *buf = 138543874;
        v42 = v19;
        v43 = 2114;
        v44 = v25;
        v45 = 2114;
        v46 = v20;
        _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CompleteConfigSuceeded", "Completed config with UUID %{public}@ with type %{public}@, description %{public}@", buf, 0x20u);
      }
    }

    _Block_object_dispose(&v35, 8);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v17;
}

void __110__DRSConfigPersistedStore_completeConfigWithUUID_completedDate_completionType_completionDescription_errorOut___block_invoke(uint64_t a1)
{
  v69[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v61 = 0;
  v4 = [DRSConfigMetadata _ON_CONTEXT_QUEUE_existingBackingMOWithConfigUUID:v2 context:v3 errorOut:&v61];
  v5 = v61;
  v6 = v61;

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v5);
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    if (v4)
    {
      if ([v4 state] != 3)
      {
        if ([v4 state] == 2)
        {
          v21 = [v4 appliedDate];
        }

        else
        {
          v21 = *(a1 + 48);
        }

        v9 = v21;
        v22 = *(a1 + 72);
        v23 = [v4 receivedDate];
        v24 = [DRSConfigMetadata _isValidState:3 completionType:v22 receivedDate:v23 appliedDate:v9 completedDate:*(a1 + 48) completionDescription:*(a1 + 56)];

        if (v24)
        {
          [v4 setState:3];
          [v4 setAppliedDate:v9];
          [v4 setCompletionType:*(a1 + 72)];
          [v4 setCompletedDate:*(a1 + 48)];
          [v4 setCompletionDescription:*(a1 + 56)];
          [*(a1 + 48) timeIntervalSinceDate:v9];
          v26 = v25;
          if ([v4 logTelemetry])
          {
            v62[0] = kUUIDKey;
            v55 = [v4 configUUID];
            v53 = [v55 UUIDString];
            v63[0] = v53;
            v62[1] = kTeamIDKey;
            v27 = [v4 teamID];
            v63[1] = v27;
            v62[2] = kConfigCompletedEventKey_CompletionType;
            v28 = DRConfigCompletionTypeString(*(a1 + 72));
            v63[2] = v28;
            v62[3] = kConfigCompletedEventKey_ActiveDuration;
            v29 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
            v63[3] = v29;
            v62[4] = kConfigCompletedEventKey_ReceivedToCompletedDuration;
            v30 = MEMORY[0x277CCABB0];
            v31 = *(a1 + 48);
            v32 = [v4 receivedDate];
            [v31 timeIntervalSinceDate:v32];
            v33 = [v30 numberWithDouble:?];
            v63[4] = v33;
            v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:5];

            DRSCoreAnalyticsSendEvent(kConfigCompletedEventName, v34);
            if ([v4 reportToDecisionServer])
            {
              v35 = [v4 configUUID];
              v36 = [*(a1 + 40) cloudKitHelper];
              v51 = [v4 teamID];
              v56 = [v4 configUUID];
              v54 = [v56 UUIDString];
              v37 = DRConfigCompletionTypeString(*(a1 + 72));
              v38 = [v4 completionDescription];
              v39 = os_transaction_create();
              v58[0] = MEMORY[0x277D85DD0];
              v58[1] = 3221225472;
              v58[2] = __110__DRSConfigPersistedStore_completeConfigWithUUID_completedDate_completionType_completionDescription_errorOut___block_invoke_2;
              v58[3] = &unk_27899FB08;
              v40 = *(a1 + 64);
              v59 = v35;
              v60 = v40;
              v52 = v35;
              [v36 reportTaskingConfigCompletion:v51 uuidString:v54 completionType:v37 completionDescription:v38 activeDuration:v39 transaction:v58 completionHandler:v26];
            }
          }

          v41 = [*(a1 + 40) context];
          v42 = [v4 configMO];
          [v41 deleteObject:v42];

          v16 = [*(a1 + 40) context];
          v43 = *(*(a1 + 64) + 8);
          v57 = *(v43 + 40);
          [v16 save:&v57];
          v44 = v57;
          v19 = *(v43 + 40);
          *(v43 + 40) = v44;
        }

        else
        {
          v45 = MEMORY[0x277CCACA8];
          v46 = [*(a1 + 32) UUIDString];
          v16 = [v45 stringWithFormat:@"Failed to complete config %@", v46];

          v47 = MEMORY[0x277CCA9B8];
          v64 = *MEMORY[0x277CCA450];
          v65 = v16;
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
          v48 = [v47 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v19];
          v49 = *(*(a1 + 64) + 8);
          v50 = *(v49 + 40);
          *(v49 + 40) = v48;
        }

        goto LABEL_7;
      }

      v7 = MEMORY[0x277CCACA8];
      v8 = [*(a1 + 32) UUIDString];
      v9 = [v7 stringWithFormat:@"Attempted to complete already-completed config %@", v8];

      v10 = MEMORY[0x277CCA9B8];
      v66 = *MEMORY[0x277CCA450];
      v67 = v9;
      v11 = MEMORY[0x277CBEAC0];
      v12 = &v67;
      v13 = &v66;
    }

    else
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [*(a1 + 32) UUIDString];
      v9 = [v14 stringWithFormat:@"Attempting to update missing config %@", v15];

      v10 = MEMORY[0x277CCA9B8];
      v68 = *MEMORY[0x277CCA450];
      v69[0] = v9;
      v11 = MEMORY[0x277CBEAC0];
      v12 = v69;
      v13 = &v68;
    }

    v16 = [v11 dictionaryWithObjects:v12 forKeys:v13 count:1];
    v17 = [v10 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v16];
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
LABEL_7:
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __110__DRSConfigPersistedStore_completeConfigWithUUID_completedDate_completionType_completionDescription_errorOut___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = DPLogHandle_ConfigPersistedStoreError();
  if (os_signpost_enabled(v2))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigPersistedStoreConfigCompletionTelemetryError", "Telemetry reporting for %{public}@ failed %{public}@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)configMetadatasForPredicate:(id)a3 sortDescriptors:(id)a4 fetchLimit:(unint64_t)a5 errorOut:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [MEMORY[0x277CBEB18] array];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__7;
  v31 = __Block_byref_object_dispose__7;
  v32 = 0;
  v13 = [(DRSConfigPersistedStore *)self context];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __91__DRSConfigPersistedStore_configMetadatasForPredicate_sortDescriptors_fetchLimit_errorOut___block_invoke;
  v20[3] = &unk_27899FB58;
  v14 = v10;
  v21 = v14;
  v22 = self;
  v15 = v11;
  v25 = &v27;
  v26 = a5;
  v23 = v15;
  v16 = v12;
  v24 = v16;
  [v13 performBlockAndWait:v20];

  if (a6)
  {
    *a6 = v28[5];
  }

  v17 = v24;
  v18 = v16;

  _Block_object_dispose(&v27, 8);

  return v18;
}

void __91__DRSConfigPersistedStore_configMetadatasForPredicate_sortDescriptors_fetchLimit_errorOut___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) context];
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v32 = 0;
  v6 = [DRSConfigMetadata _ON_CONTEXT_QUEUE_configMetadataForFilterPredicate:v2 context:v3 sortDescriptors:v4 fetchLimit:v5 errorOut:&v32];
  v7 = v32;

  if (v7)
  {
    v8 = *(*(a1 + 64) + 8);
    v9 = v7;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v28 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v27 = v6;
      v13 = *v29;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * i);
          v16 = [DRSConfigMetadata alloc];
          v17 = [(DRSConfigMetadata *)v16 _ON_CONTEXT_QUEUE_initWithConfigMetadataMO:v15];

          if (!v17)
          {
            v18 = MEMORY[0x277CCACA8];
            v19 = [v15 configUUID];
            v20 = [v18 stringWithFormat:@"Failed to create ConfigMetadata from backing MO for %@", v19];

            v21 = MEMORY[0x277CCA9B8];
            v33 = *MEMORY[0x277CCA450];
            v34 = v20;
            v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
            v23 = [v21 errorWithDomain:@"DRSConfigPersistenceError" code:0 userInfo:v22];
            v24 = *(*(a1 + 64) + 8);
            v25 = *(v24 + 40);
            *(v24 + 40) = v23;

            goto LABEL_13;
          }

          [*(a1 + 56) addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v28 objects:v35 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

LABEL_13:
      v6 = v27;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_countForFetchRequest:(id)a3 withPredicate:(id)a4 fetchLimit:(unint64_t)a5 errorOut:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  [v10 setPredicate:v11];
  if (a5)
  {
    [v10 setFetchLimit:a5];
  }

  v12 = [(DRSConfigPersistedStore *)self context];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__DRSConfigPersistedStore__countForFetchRequest_withPredicate_fetchLimit_errorOut___block_invoke;
  v16[3] = &unk_27899ED10;
  v18 = &v26;
  v16[4] = self;
  v13 = v10;
  v17 = v13;
  v19 = &v20;
  [v12 performBlockAndWait:v16];

  if (a6)
  {
    *a6 = v21[5];
  }

  if (v21[5])
  {
    v14 = 0;
  }

  else
  {
    v14 = v27[3];
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v14;
}

void __83__DRSConfigPersistedStore__countForFetchRequest_withPredicate_fetchLimit_errorOut___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = *(a1 + 40);
  v8 = 0;
  v4 = [v2 countForFetchRequest:v3 error:&v8];
  v5 = v8;
  *(*(*(a1 + 48) + 8) + 24) = v4;

  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (unint64_t)metadataCountForPredicate:(id)a3 fetchLimit:(unint64_t)a4 withErrorOut:(id *)a5
{
  v8 = a3;
  v9 = +[DRSConfigMetadataMO fetchRequest];
  v10 = [(DRSConfigPersistedStore *)self _countForFetchRequest:v9 withPredicate:v8 fetchLimit:a4 errorOut:a5];

  return v10;
}

- (unint64_t)configCountForPredicate:(id)a3 fetchLimit:(unint64_t)a4 withErrorOut:(id *)a5
{
  v8 = a3;
  v9 = +[DRConfigMO fetchRequest];
  v10 = [(DRSConfigPersistedStore *)self _countForFetchRequest:v9 withPredicate:v8 fetchLimit:a4 errorOut:a5];

  return v10;
}

- (BOOL)clearStoreWithErrorOut:(id *)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__7;
  v13 = __Block_byref_object_dispose__7;
  v14 = 0;
  v5 = [(DRSConfigPersistedStore *)self context];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__DRSConfigPersistedStore_clearStoreWithErrorOut___block_invoke;
  v8[3] = &unk_27899F8D8;
  v8[4] = self;
  v8[5] = &v9;
  [v5 performBlockAndWait:v8];

  if (a3)
  {
    *a3 = v10[5];
  }

  v6 = v10[5] == 0;
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __50__DRSConfigPersistedStore_clearStoreWithErrorOut___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  v2 = +[DRSConfigMetadataMO fetchRequest];
  v3 = [*(a1 + 32) context];
  v51 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v51];
  v5 = v51;
  v6 = v51;

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    v7 = DPLogHandle_ConfigPersistedStoreError();
    if (os_signpost_enabled(v7))
    {
      v8 = [v6 localizedDescription];
      v9 = v8;
      v10 = @"Unknown";
      if (v8)
      {
        v10 = v8;
      }

      *buf = 138543362;
      v53 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearStoreError", "Failed to fetch config metadatas due to error: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11 = [v4 count];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v12 = v4;
    v13 = [v12 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v48;
      do
      {
        v16 = 0;
        do
        {
          if (*v48 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v47 + 1) + 8 * v16);
          v18 = [*(a1 + 32) context];
          [v18 deleteObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v14);
    }

    v2 = +[DRConfigMO fetchRequest];
    v19 = [*(a1 + 32) context];
    v46 = 0;
    v20 = [v19 executeFetchRequest:v2 error:&v46];
    v21 = v46;
    v6 = v46;

    if (v6)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v21);
      v22 = DPLogHandle_ConfigPersistedStoreError();
      if (os_signpost_enabled(v22))
      {
        v23 = [v6 localizedDescription];
        v24 = v23;
        v25 = @"Unknown";
        if (v23)
        {
          v25 = v23;
        }

        *buf = 138543362;
        v53 = v25;
        _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearStoreError", "Failed to fetch configs due to error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v40 = [v20 count];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v27 = v20;
      v28 = [v27 countByEnumeratingWithState:&v42 objects:v56 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v43;
        do
        {
          v31 = 0;
          do
          {
            if (*v43 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v42 + 1) + 8 * v31);
            v33 = [*(a1 + 32) context];
            [v33 deleteObject:v32];

            ++v31;
          }

          while (v29 != v31);
          v29 = [v27 countByEnumeratingWithState:&v42 objects:v56 count:16];
        }

        while (v29);
      }

      v34 = [*(a1 + 32) context];
      v41 = 0;
      v35 = [v34 save:&v41];
      v36 = v41;
      v6 = v41;

      if (v35)
      {
        v2 = DPLogHandle_ConfigPersistedStore();
        if (os_signpost_enabled(v2))
        {
          *buf = 134349312;
          v53 = v11;
          v54 = 2050;
          v55 = v40;
          _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearStoreSuccess", "Deleted %{public}llu config metadatas and %{public}llu configs", buf, 0x16u);
        }
      }

      else
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v36);
        v2 = DPLogHandle_ConfigPersistedStoreError();
        if (os_signpost_enabled(v2))
        {
          v37 = [v6 localizedDescription];
          v38 = v37;
          v39 = @"Unknown";
          if (v37)
          {
            v39 = v37;
          }

          *buf = 138543362;
          v53 = v39;
          _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearStoreError", "Failed to save deletion of records due to error: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)_ON_MOC_cloudChannelConfigMOs
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[DRSCloudChannelConfigMO fetchRequest];
  v4 = [(DRSConfigPersistedStore *)self context];
  v14 = 0;
  v5 = [v4 executeFetchRequest:v3 error:&v14];
  v6 = v14;

  if (v6)
  {
    v7 = DPLogHandle_ConfigPersistedStoreError();
    if (os_signpost_enabled(v7))
    {
      v8 = [v6 localizedDescription];
      v9 = v8;
      v10 = @"Unknown";
      if (v8)
      {
        v10 = v8;
      }

      *buf = 138543362;
      v16 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CloudChannelConfigError", "Failed to fetch cloud channel config due to error: %{public}@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_ON_MOC_deleteCloudChannelConfigMOs:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v21 + 1) + 8 * v9);
          v11 = [(DRSConfigPersistedStore *)self context];
          [v11 deleteObject:v10];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v7);
    }

    v12 = [(DRSConfigPersistedStore *)self context];
    v20 = 0;
    v13 = [v12 save:&v20];
    v14 = v20;

    if ((v13 & 1) == 0)
    {
      v15 = DPLogHandle_ConfigPersistedStoreError();
      if (os_signpost_enabled(v15))
      {
        v16 = [v14 localizedDescription];
        v17 = v16;
        v18 = @"Unknown";
        if (v16)
        {
          v18 = v16;
        }

        *buf = 138543362;
        v26 = v18;
        _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CloudChannelConfigDeleteFailed", "Failed to save deletion of cloud channel configs due to error: %{public}@", buf, 0xCu);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)cloudChannelConfig
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__7;
  v12 = 0;
  v3 = [(DRSConfigPersistedStore *)self context];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__DRSConfigPersistedStore_cloudChannelConfig__block_invoke;
  v6[3] = &unk_27899F8D8;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __45__DRSConfigPersistedStore_cloudChannelConfig__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ON_MOC_cloudChannelConfigMOs];
  if ([v2 count])
  {
    if ([v2 count] < 2)
    {
      v5 = [DRSCloudChannelConfig alloc];
      v6 = [v2 firstObject];
      v7 = [(DRSCloudChannelConfig *)v5 initWithMO:v6];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    else
    {
      v3 = DPLogHandle_ConfigPersistedStoreError();
      if (os_signpost_enabled(v3))
      {
        *v10 = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MultipleConfigs", "Multiple configs specified. Reverting to default", v10, 2u);
      }

      [*(a1 + 32) _ON_MOC_deleteCloudChannelConfigMOs:v2];
    }
  }

  else
  {
    v4 = DPLogHandle_ConfigPersistedStore();
    if (os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DefaultConfig", "Not subscribing to any channel by default.", buf, 2u);
    }
  }
}

- (BOOL)updateCloudChannelConfig:(id)a3 errorOut:(id *)a4
{
  v6 = a3;
  *a4 = 0;
  v7 = [(DRSConfigPersistedStore *)self cloudChannelConfig];
  v8 = v7;
  if (!(v6 | v7) || v7 && ([v7 isEqual:v6] & 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__7;
    v20 = __Block_byref_object_dispose__7;
    v21 = 0;
    v10 = [(DRSConfigPersistedStore *)self context];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__DRSConfigPersistedStore_updateCloudChannelConfig_errorOut___block_invoke;
    v12[3] = &unk_27899ED80;
    v12[4] = self;
    v13 = v6;
    v14 = &v22;
    v15 = &v16;
    [v10 performBlockAndWait:v12];

    *a4 = v17[5];
    v9 = *(v23 + 24);

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  return v9 & 1;
}

void __61__DRSConfigPersistedStore_updateCloudChannelConfig_errorOut___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _ON_MOC_cloudChannelConfigMOs];
  v3 = v2;
  if (*(a1 + 40))
  {
    if ([v2 count] >= 2)
    {
      v4 = DPLogHandle_ConfigPersistedStoreError();
      if (os_signpost_enabled(v4))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MultipleConfigsWhenUpdating", "Multiple configs specified. Deleting all", buf, 2u);
      }

      [*(a1 + 32) _ON_MOC_deleteCloudChannelConfigMOs:v3];
      v3 = MEMORY[0x277CBEBF8];
    }

    if ([v3 count])
    {
      v5 = [v3 firstObject];
    }

    else
    {
      v6 = [DRSCloudChannelConfigMO alloc];
      v7 = [*(a1 + 32) context];
      v5 = [(DRSCloudChannelConfigMO *)v6 initWithContext:v7];
    }

    -[DRSCloudChannelConfigMO setEnvironment:](v5, "setEnvironment:", [*(a1 + 40) environment]);
    -[DRSCloudChannelConfigMO setChannelType:](v5, "setChannelType:", [*(a1 + 40) type]);
    -[DRSCloudChannelConfigMO setPlatform:](v5, "setPlatform:", [*(a1 + 40) platform]);
    v8 = [*(a1 + 40) populationSliceNumber];
    [(DRSCloudChannelConfigMO *)v5 setPopulationSliceNumber:v8];

    -[DRSCloudChannelConfigMO setOverridesDeviceDefault:](v5, "setOverridesDeviceDefault:", [*(a1 + 40) overridesDeviceDefault]);
    v9 = [*(a1 + 32) context];
    v20 = 0;
    v10 = [v9 save:&v20];
    v11 = v20;
    v12 = v20;

    v13 = DPLogHandle_ConfigPersistedStoreError();
    v14 = os_signpost_enabled(v13);
    if (v10)
    {
      if (v14)
      {
        v15 = [*(a1 + 40) debugDescription];
        *buf = 138543362;
        v22 = v15;
        _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PersistedCloudChannelConfigUpdated", "Updated persisted config to:\n%{public}@", buf, 0xCu);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      if (v14)
      {
        v16 = [v12 localizedDescription];
        v17 = v16;
        v18 = @"Unknown";
        if (v16)
        {
          v18 = v16;
        }

        *buf = 138543362;
        v22 = v18;
        _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PersistedCloudChannelConfigUpdateFailed", "Failed to save cloud channel config due to error: %{public}@", buf, 0xCu);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v11);
    }
  }

  else
  {
    [*(a1 + 32) _ON_MOC_deleteCloudChannelConfigMOs:v2];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end