@interface HDCloudSyncShareToParticipantOperation
- (HDCloudSyncShareToParticipantOperation)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncShareToParticipantOperation)initWithConfiguration:(id)configuration cloudState:(id)state identityLookupInfo:(id)info requireExistingRelationship:(BOOL)relationship requireZoneDeviceMode:(id)mode;
- (void)main;
@end

@implementation HDCloudSyncShareToParticipantOperation

- (HDCloudSyncShareToParticipantOperation)initWithConfiguration:(id)configuration cloudState:(id)state
{
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE660];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncShareToParticipantOperation)initWithConfiguration:(id)configuration cloudState:(id)state identityLookupInfo:(id)info requireExistingRelationship:(BOOL)relationship requireZoneDeviceMode:(id)mode
{
  infoCopy = info;
  modeCopy = mode;
  v21.receiver = self;
  v21.super_class = HDCloudSyncShareToParticipantOperation;
  v14 = [(HDCloudSyncOperation *)&v21 initWithConfiguration:configuration cloudState:state];
  v15 = v14;
  if (v14)
  {
    v14->_lock._os_unfair_lock_opaque = 0;
    v16 = [infoCopy copy];
    identityLookupInfo = v15->_identityLookupInfo;
    v15->_identityLookupInfo = v16;

    v15->_requireExistingRelationship = relationship;
    v18 = [modeCopy copy];
    expectedDeviceMode = v15->_expectedDeviceMode;
    v15->_expectedDeviceMode = v18;
  }

  return v15;
}

- (void)main
{
  v50[1] = *MEMORY[0x277D85DE8];
  v3 = [HDCloudSyncCompoundOperation alloc];
  configuration = [(HDCloudSyncOperation *)self configuration];
  v5 = [(HDCloudSyncCompoundOperation *)v3 initWithConfiguration:configuration cloudState:0 name:@"Add Sharing Participant" continueOnSubOperationError:0];

  v6 = [HDCloudSyncLookupParticipantOperation alloc];
  configuration2 = [(HDCloudSyncOperation *)self configuration];
  v8 = [(HDCloudSyncLookupParticipantOperation *)v6 initWithConfiguration:configuration2 cloudState:0 identityLookupInfo:self->_identityLookupInfo];

  [(HDCloudSyncCompoundOperation *)v5 addOperation:v8 transitionHandler:0];
  v9 = [HDCloudSyncRemoveInvalidShareParticipantsOperation alloc];
  configuration3 = [(HDCloudSyncOperation *)self configuration];
  v11 = [(HDCloudSyncRemoveInvalidShareParticipantsOperation *)v9 initWithConfiguration:configuration3 cloudState:0];

  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __46__HDCloudSyncShareToParticipantOperation_main__block_invoke;
  v47[3] = &unk_278614D48;
  v12 = v8;
  v48 = v12;
  v49 = v11;
  v39 = v11;
  [(HDCloudSyncCompoundOperation *)v5 addOperation:v39 transitionHandler:v47];
  v13 = objc_alloc(MEMORY[0x277CBC5E8]);
  v14 = MEMORY[0x277CBC5F8];
  configuration4 = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration4 repository];
  syncCircleIdentifier = [repository syncCircleIdentifier];
  v18 = [v14 hd_unifiedSyncZoneIDForSyncCircleIdentifier:syncCircleIdentifier];
  v19 = [v13 initWithZoneID:v18];

  v20 = [HDCloudSyncCreateZonesOperation alloc];
  configuration5 = [(HDCloudSyncOperation *)self configuration];
  v50[0] = v19;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:1];
  configuration6 = [(HDCloudSyncOperation *)self configuration];
  repository2 = [configuration6 repository];
  primaryCKContainer = [repository2 primaryCKContainer];
  v26 = [(HDCloudSyncCreateZonesOperation *)v20 initWithConfiguration:configuration5 cloudState:0 zones:v22 container:primaryCKContainer];

  [(HDCloudSyncCompoundOperation *)v5 addOperation:v26 transitionHandler:0];
  v27 = [HDCloudSyncAddSharingParticipantOperation alloc];
  configuration7 = [(HDCloudSyncOperation *)self configuration];
  v29 = [(HDCloudSyncAddSharingParticipantOperation *)v27 initWithConfiguration:configuration7 cloudState:0];

  [(HDCloudSyncAddSharingParticipantOperation *)v29 setRequireExistingRelationship:self->_requireExistingRelationship];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __46__HDCloudSyncShareToParticipantOperation_main__block_invoke_2;
  v43[3] = &unk_2786261A0;
  v30 = v29;
  v44 = v30;
  v45 = v12;
  selfCopy = self;
  v31 = v12;
  [(HDCloudSyncCompoundOperation *)v5 addOperation:v30 transitionHandler:v43];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __46__HDCloudSyncShareToParticipantOperation_main__block_invoke_307;
  v41[3] = &unk_278614BA8;
  v41[4] = self;
  v42 = v30;
  v32 = v30;
  [(HDCloudSyncOperation *)v5 setOnSuccess:v41];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __46__HDCloudSyncShareToParticipantOperation_main__block_invoke_2_313;
  v40[3] = &unk_278613088;
  v40[4] = self;
  [(HDCloudSyncOperation *)v5 setOnError:v40];
  [(HDCloudSyncCompoundOperation *)v5 start];
  progress = [(HDCloudSyncOperation *)v5 progress];
  totalUnitCount = [progress totalUnitCount];

  progress2 = [(HDCloudSyncOperation *)self progress];
  [progress2 setTotalUnitCount:{objc_msgSend(progress2, "totalUnitCount") + totalUnitCount}];

  progress3 = [(HDCloudSyncOperation *)self progress];
  progress4 = [(HDCloudSyncOperation *)v5 progress];
  [progress3 addChild:progress4 withPendingUnitCount:totalUnitCount];

  v38 = *MEMORY[0x277D85DE8];
}

void __46__HDCloudSyncShareToParticipantOperation_main__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) participant];

  if (v2)
  {
    v3 = [*(a1 + 32) participant];
    v9[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [*(a1 + 40) setParticipantsToCheck:v4];

    v5 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *MEMORY[0x277D85DE8];
    v8 = MEMORY[0x277CBEBF8];

    [v6 setParticipantsToCheck:v8];
  }
}

void __46__HDCloudSyncShareToParticipantOperation_main__block_invoke_2(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [a1[5] participant];
  [a1[4] setParticipant:v2];

  v3 = [a1[6] configuration];
  v4 = [v3 cachedCloudState];
  v11 = 0;
  v5 = [v4 zonesByIdentifierWithError:&v11];
  v6 = v11;

  if (v5)
  {
    v7 = [v5 allKeys];
    [a1[4] setZoneIdentifiers:v7];
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v10 = a1[6];
      *buf = 138543618;
      v13 = v10;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached zones, %{public}@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __46__HDCloudSyncShareToParticipantOperation_main__block_invoke_307(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) configuration];
  v3 = [v2 repository];

  v4 = [*(a1 + 32) configuration];
  v5 = [v4 cachedCloudState];
  v6 = [v3 primaryCKContainer];
  v7 = [v6 containerIdentifier];
  v39 = 0;
  v8 = [v5 unifiedSyncZoneForContainerID:v7 error:&v39];
  v9 = v39;

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  v11 = MEMORY[0x277CCC328];
  if (!v10)
  {
    _HKInitializeLogging();
    v12 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      *buf = 138543618;
      v41 = v26;
      v42 = 2114;
      v43 = v9;
      _os_log_error_impl(&dword_228986000, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get cached unified zone, %{public}@", buf, 0x16u);
    }
  }

  v38 = 0;
  v13 = [v8 recordsForClass:objc_opt_class() error:&v38];
  v14 = v38;
  v15 = v14;
  if (!v13)
  {
    if (v14)
    {
      _HKInitializeLogging();
      v16 = *v11;
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 32);
        v31 = v16;
        v32 = [v8 zoneIdentifier];
        *buf = 138543874;
        v41 = v30;
        v42 = 2114;
        v43 = v32;
        v44 = 2114;
        v45 = v15;
        _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get registry records for %{public}@, %{public}@", buf, 0x20u);
      }
    }
  }

  if ([v13 count] >= 2)
  {
    _HKInitializeLogging();
    v17 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_FAULT))
    {
      v27 = *(a1 + 32);
      v28 = v17;
      v29 = [v8 zoneIdentifier];
      *buf = 138543618;
      v41 = v27;
      v42 = 2114;
      v43 = v29;
      _os_log_fault_impl(&dword_228986000, v28, OS_LOG_TYPE_FAULT, "%{public}@ Retrieved multiple registry records for %{public}@. This is unexpected.", buf, 0x16u);
    }
  }

  v18 = [v13 firstObject];
  v19 = [v18 sharedProfileIdentifier];
  if (!v19)
  {
    _HKInitializeLogging();
    v20 = *v11;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 32);
      *buf = 138543362;
      v41 = v33;
      _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Failed to retrieved shared profile identifier for registry record when adding a sharing participant.", buf, 0xCu);
    }
  }

  v21 = [v3 primaryCKContainer];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __46__HDCloudSyncShareToParticipantOperation_main__block_invoke_309;
  v34[3] = &unk_2786261C8;
  v22 = *(a1 + 40);
  v34[4] = *(a1 + 32);
  v35 = v3;
  v36 = v19;
  v37 = v22;
  v23 = v19;
  v24 = v3;
  [v21 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:v34];

  v25 = *MEMORY[0x277D85DE8];
}

void __46__HDCloudSyncShareToParticipantOperation_main__block_invoke_309(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v19 = a3;
  if (a4)
  {
    v6 = *(a1 + 32);
    v7 = 0;
    v8 = a4;
  }

  else
  {
    v9 = [HDCloudSyncShareSetupMetadata alloc];
    v10 = [*(a1 + 40) syncCircleIdentifier];
    v11 = *(a1 + 48);
    v12 = v11;
    if (!v11)
    {
      v12 = [*(a1 + 40) profileIdentifier];
    }

    v13 = [*(a1 + 56) shareURLs];
    v14 = [*(a1 + 56) participant];
    v15 = [*(a1 + 56) invitationTokensByShareURL];
    v16 = [(HDCloudSyncShareSetupMetadata *)v9 initWithSyncCircleIdentifier:v10 profileIdentifier:v12 shareURLs:v13 ownerCloudKitEmailAddress:v19 shareParticipant:v14 invitationTokensByShareURL:v15];
    v17 = *(a1 + 32);
    v18 = *(v17 + 168);
    *(v17 + 168) = v16;

    if (!v11)
    {
    }

    v6 = *(a1 + 32);
    v7 = 1;
    v8 = 0;
  }

  [v6 finishWithSuccess:v7 error:v8];
}

@end