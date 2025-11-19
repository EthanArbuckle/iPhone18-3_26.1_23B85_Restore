@interface HDCloudSyncPipelineStageSharedSummaryAddParticipant
- (HDCloudSyncPipelineStageSharedSummaryAddParticipant)initWithConfiguration:(id)a3 cloudState:(id)a4 codableEntry:(id)a5 authorizationIdentifiers:(id)a6;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageSharedSummaryAddParticipant

- (HDCloudSyncPipelineStageSharedSummaryAddParticipant)initWithConfiguration:(id)a3 cloudState:(id)a4 codableEntry:(id)a5 authorizationIdentifiers:(id)a6
{
  v10 = a5;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = HDCloudSyncPipelineStageSharedSummaryAddParticipant;
  v12 = [(HDCloudSyncPipelineStage *)&v18 initWithConfiguration:a3 cloudState:a4];
  if (v12)
  {
    v13 = [v10 copy];
    codableEntry = v12->_codableEntry;
    v12->_codableEntry = v13;

    v15 = [v11 copy];
    authorizationIdentifiers = v12->_authorizationIdentifiers;
    v12->_authorizationIdentifiers = v15;
  }

  return v12;
}

- (void)main
{
  v4 = [(HDCloudSyncOperation *)self configuration];
  v5 = [v4 repository];

  v6 = [(HDCodableSummarySharingEntry *)self->_codableEntry primaryContactIdentifier];
  if ([v6 _appearsToBeEmail])
  {
    v7 = [objc_alloc(MEMORY[0x277CBC7C8]) initWithEmailAddress:v6];
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  if ([v6 _appearsToBePhoneNumber])
  {
    v7 = [objc_alloc(MEMORY[0x277CBC7C8]) initWithPhoneNumber:v6];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  if (v8)
  {
    v9 = [v5 primaryCKContainer];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__HDCloudSyncPipelineStageSharedSummaryAddParticipant_main__block_invoke;
    v11[3] = &unk_278627748;
    v11[4] = self;
    v12 = v8;
    [v9 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:v11];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"_codableEntry.primaryContactIdentifier" class:objc_opt_class() selector:a2 format:@"Unable to create lookup info from contact identifier"];
    [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v10];
  }
}

void __59__HDCloudSyncPipelineStageSharedSummaryAddParticipant_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v95[2] = *MEMORY[0x277D85DE8];
  v72 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v71 = v7;
  if (v7)
  {
    v62 = v8;
    v10 = *(a1 + 32);
    v69 = *(a1 + 40);
    v63 = v72;
    v66 = v7;
    if (v10)
    {
      v11 = [v10 configuration];
      v12 = [v11 repository];

      v13 = [HDCloudSyncCompoundOperation alloc];
      v14 = [v10 configuration];
      v15 = [(HDCloudSyncCompoundOperation *)v13 initWithConfiguration:v14 cloudState:0 name:@"Add Summary Sharing Participant" continueOnSubOperationError:0];

      v16 = [HDCloudSyncLookupParticipantOperation alloc];
      v17 = [v10 configuration];
      v18 = [(HDCloudSyncLookupParticipantOperation *)v16 initWithConfiguration:v17 cloudState:0 identityLookupInfo:v69];

      [(HDCloudSyncCompoundOperation *)v15 addOperation:v18 transitionHandler:0];
      v19 = [HDCloudSyncSharedSummaryValidateOutgoingInvitationOperation alloc];
      v20 = [v10 configuration];
      v21 = [(HDCloudSyncSharedSummaryValidateOutgoingInvitationOperation *)v19 initWithConfiguration:v20 cloudState:0];

      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke;
      v93[3] = &unk_278625240;
      v22 = v18;
      v94 = v22;
      v61 = v21;
      [(HDCloudSyncCompoundOperation *)v15 addOperation:v21 transitionHandler:v93];
      v23 = objc_alloc(MEMORY[0x277CBC5E8]);
      v24 = MEMORY[0x277CBC5F8];
      v25 = [v10 configuration];
      v26 = [v25 syncContainerPrefix];
      v27 = [v24 hd_privateMetadataZoneIDForSyncCircleIdentifier:v26];
      v68 = [v23 initWithZoneID:v27];

      v28 = objc_alloc(MEMORY[0x277CCAD78]);
      v29 = [*(v10 + 128) uuid];
      v70 = [v28 initWithUUIDString:v29];

      v30 = MEMORY[0x277CBC5F8];
      v31 = [v12 syncCircleIdentifier];
      v32 = [v30 hd_sharedSummaryZoneIDWithSyncCircleIdentifier:v31 userIdentifier:v70];

      v67 = [objc_alloc(MEMORY[0x277CBC5E8]) initWithZoneID:v32];
      v33 = [HDCloudSyncCreateZonesOperation alloc];
      v34 = [v10 configuration];
      v95[0] = v68;
      v95[1] = v67;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:2];
      v36 = [v12 primaryCKContainer];
      v65 = [(HDCloudSyncCreateZonesOperation *)v33 initWithConfiguration:v34 cloudState:0 zones:v35 container:v36];

      [(HDCloudSyncCompoundOperation *)v15 addOperation:v65 transitionHandler:0];
      v37 = [HDCloudSyncRemoveInvalidShareParticipantsOperation alloc];
      v38 = [v10 configuration];
      v39 = [v10 cloudState];
      v64 = [(HDCloudSyncRemoveInvalidShareParticipantsOperation *)v37 initWithConfiguration:v38 cloudState:v39];

      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_2;
      v91[3] = &unk_278625240;
      v40 = v22;
      v92 = v40;
      [(HDCloudSyncCompoundOperation *)v15 addOperation:v64 transitionHandler:v91];
      v41 = [HDCloudSyncAddSharingParticipantOperation alloc];
      v42 = [v10 configuration];
      v43 = [(HDCloudSyncAddSharingParticipantOperation *)v41 initWithConfiguration:v42 cloudState:0];

      v87[0] = MEMORY[0x277D85DD0];
      v87[1] = 3221225472;
      v87[2] = __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_3;
      v87[3] = &unk_2786261A0;
      v44 = v40;
      v88 = v44;
      v60 = v32;
      v89 = v60;
      v45 = v12;
      v90 = v45;
      [(HDCloudSyncCompoundOperation *)v15 addOperation:v43 transitionHandler:v87];
      v85[0] = 0;
      v85[1] = v85;
      v85[2] = 0x3032000000;
      v85[3] = __Block_byref_object_copy__149;
      v85[4] = __Block_byref_object_dispose__149;
      v86 = 0;
      v46 = [HDCloudSyncSharedSummaryUpdateParticipantOperation alloc];
      v47 = [v10 configuration];
      v48 = [(HDCloudSyncSharedSummaryUpdateParticipantOperation *)v46 initWithConfiguration:v47 codableEntry:*(v10 + 128) authorizationIdentifiersToAdd:*(v10 + 136) authorizationIdentifiersToDelete:MEMORY[0x277CBEBF8]];

      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_321;
      v77[3] = &unk_278627770;
      v84 = v85;
      v49 = v45;
      v78 = v49;
      v50 = v70;
      v79 = v50;
      v51 = v43;
      v80 = v51;
      v81 = v66;
      v82 = v10;
      v52 = v48;
      v83 = v52;
      [(HDCloudSyncCompoundOperation *)v15 addOperation:v52 transitionHandler:v77];
      v74[0] = MEMORY[0x277D85DD0];
      v74[1] = 3221225472;
      v74[2] = __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_324;
      v74[3] = &unk_278627798;
      v74[4] = v10;
      v76 = v85;
      v53 = v44;
      v75 = v53;
      [(HDCloudSyncOperation *)v15 setOnSuccess:v74];
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_2_326;
      v73[3] = &unk_278613088;
      v73[4] = v10;
      [(HDCloudSyncOperation *)v15 setOnError:v73];
      v54 = [(HDCloudSyncOperation *)v15 progress];
      v55 = [v54 totalUnitCount];

      v56 = [v10 progress];
      [v56 setTotalUnitCount:{objc_msgSend(v56, "totalUnitCount") + v55}];

      v57 = [v10 progress];
      v58 = [(HDCloudSyncOperation *)v15 progress];
      [v57 addChild:v58 withPendingUnitCount:v55];

      [(HDCloudSyncCompoundOperation *)v15 start];
      _Block_object_dispose(v85, 8);
    }

    v9 = v62;
  }

  else
  {
    if (!v8)
    {
      v9 = [MEMORY[0x277CCA9B8] hk_error:124 format:@"Failed to fetch account info but recieved no error."];
    }

    [*(a1 + 32) finishWithSuccess:0 error:v9];
  }

  v59 = *MEMORY[0x277D85DE8];
}

void __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v6 = [v3 participant];
  v5 = [v6 userIdentity];
  [v4 setUserIdentity:v5];
}

void __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [*(a1 + 32) participant];

  if (v5)
  {
    v6 = [*(a1 + 32) participant];
    v9[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v4 setParticipantsToCheck:v7];
  }

  else
  {
    [v4 setParticipantsToCheck:MEMORY[0x277CBEBF8]];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v4 participant];
  [v5 setParticipant:v6];

  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) primaryCKContainer];
  v9 = [v8 containerIdentifier];
  v10 = [HDCloudSyncZoneIdentifier identifierForZone:v7 container:v9 scope:2];

  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  [v5 setZoneIdentifiers:v11];

  v12 = *MEMORY[0x277D85DE8];
}

void __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_321(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [HDCloudSyncShareSetupMetadata alloc];
  v3 = [*(a1 + 32) syncCircleIdentifier];
  v4 = [MEMORY[0x277CCD7C8] _profileWithUUID:*(a1 + 40) type:2];
  v5 = [*(a1 + 48) shareURLs];
  v6 = *(a1 + 56);
  v7 = [*(a1 + 48) participant];
  v8 = [*(a1 + 48) invitationTokensByShareURL];
  v9 = [(HDCloudSyncShareSetupMetadata *)v2 initWithSyncCircleIdentifier:v3 profileIdentifier:v4 shareURLs:v5 ownerCloudKitEmailAddress:v6 shareParticipant:v7 invitationTokensByShareURL:v8];
  v10 = *(*(a1 + 80) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 80) + 8) + 40);
  v19 = 0;
  v13 = [v12 codableSharingSetupMetadataWithError:&v19];
  v14 = v19;
  [*(*(a1 + 64) + 128) setSharingSetupMetadata:v13];

  v15 = [*(*(a1 + 64) + 128) sharingSetupMetadata];

  if (!v15)
  {
    _HKInitializeLogging();
    v16 = HKLogSharing();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 64);
      *buf = 138543618;
      v21 = v18;
      v22 = 2114;
      v23 = v14;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Failed to create codable sharing setup metadata: %{public}@", buf, 0x16u);
    }
  }

  [*(a1 + 72) setEntry:*(*(a1 + 64) + 128)];

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __106__HDCloudSyncPipelineStageSharedSummaryAddParticipant__addParticipantWithLookupInfo_ownerName_ownerEmail___block_invoke_324(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 144), *(*(*(a1 + 48) + 8) + 40));
  v2 = [*(a1 + 40) participant];
  v3 = [v2 userIdentity];
  v4 = *(a1 + 32);
  v5 = *(v4 + 152);
  *(v4 + 152) = v3;

  v6 = *(a1 + 32);

  return [v6 finishWithSuccess:1 error:0];
}

@end