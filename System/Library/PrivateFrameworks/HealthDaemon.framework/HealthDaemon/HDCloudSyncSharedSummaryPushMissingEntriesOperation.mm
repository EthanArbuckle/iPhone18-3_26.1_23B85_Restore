@interface HDCloudSyncSharedSummaryPushMissingEntriesOperation
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryPushMissingEntriesOperation

- (void)main
{
  v35 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  syncAvailability = [repository syncAvailability];
  shouldSyncSummarySharingPush = [syncAvailability shouldSyncSummarySharingPush];

  if (shouldSyncSummarySharingPush)
  {
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    cachedCloudState = [configuration2 cachedCloudState];
    configuration3 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration3 repository];
    primaryCKContainer = [repository2 primaryCKContainer];
    containerIdentifier = [primaryCKContainer containerIdentifier];
    v32 = 0;
    v13 = [cachedCloudState privateMetadataZoneForContainerID:containerIdentifier error:&v32];
    v14 = v32;

    if (v13)
    {
      v31 = 0;
      v15 = [v13 recordsForClass:objc_opt_class() error:&v31];
      v16 = v31;
      if (v15)
      {
        v28 = [v15 hk_mapToSet:&__block_literal_global_3];
        v17 = [HDCloudSyncCompoundOperation alloc];
        configuration4 = [(HDCloudSyncOperation *)self configuration];
        v19 = [(HDCloudSyncCompoundOperation *)v17 initWithConfiguration:configuration4 cloudState:0 name:@"Push Pending Invitations" continueOnSubOperationError:0];

        configuration5 = [(HDCloudSyncOperation *)self configuration];
        repository3 = [configuration5 repository];
        cloudSyncShimProvider = [repository3 cloudSyncShimProvider];
        summarySharingEntryShim = [cloudSyncShimProvider summarySharingEntryShim];

        configuration6 = [(HDCloudSyncOperation *)self configuration];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __59__HDCloudSyncSharedSummaryPushMissingEntriesOperation_main__block_invoke_2;
        v29[3] = &unk_278613C88;
        v29[4] = self;
        v30 = v19;
        v25 = v19;
        [summarySharingEntryShim authorizationIdentifiersForEntriesNotExistingParticipants:v28 configuration:configuration6 completion:v29];
      }

      else
      {
        [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v16];
      }
    }

    else
    {
      if (!v14)
      {
        v14 = [MEMORY[0x277CCA9B8] hk_error:724 format:@"Private metadata zone not present."];
      }

      [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v14];
    }
  }

  else
  {
    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping operation because platform/profile does not support summary sharing", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __59__HDCloudSyncSharedSummaryPushMissingEntriesOperation_main__block_invoke_2(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (a3)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = [v7 allKeys];
    v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      v12 = MEMORY[0x277CBEBF8];
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          v15 = [HDCloudSyncSharedSummaryUpdateParticipantOperation alloc];
          v16 = [*(a1 + 32) configuration];
          v17 = [v8 objectForKeyedSubscript:v14];
          v18 = [(HDCloudSyncSharedSummaryUpdateParticipantOperation *)v15 initWithConfiguration:v16 codableEntry:v14 authorizationIdentifiersToAdd:v17 authorizationIdentifiersToDelete:v12];

          [*(a1 + 40) addOperation:v18 transitionHandler:0];
          ++v13;
        }

        while (v10 != v13);
        v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    [*(a1 + 32) delegateToOperation:*(a1 + 40)];
  }

  else
  {
    [*(a1 + 32) finishWithSuccess:0 error:a4];
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end