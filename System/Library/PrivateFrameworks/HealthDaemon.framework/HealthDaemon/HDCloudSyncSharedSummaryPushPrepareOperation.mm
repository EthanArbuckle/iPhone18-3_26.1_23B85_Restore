@interface HDCloudSyncSharedSummaryPushPrepareOperation
- (void)_fetchAllTransactionsWithCompletion:(id)a3;
- (void)_fetchAuthorizationIdentifiersByContactIdentifierForParticipants:(id)a3 completion:(id)a4;
- (void)_pendingAndAcceptedParticipantRecordsInZone:(id)a3 completion:(id)a4;
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryPushPrepareOperation

- (void)main
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];

  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [v5 cachedCloudState];
  v7 = [v4 primaryCKContainer];
  v8 = [v7 containerIdentifier];
  v20 = 0;
  v9 = [v6 privateMetadataZoneForContainerID:v8 error:&v20];
  v10 = v20;
  privateMetadataZone = self->_privateMetadataZone;
  self->_privateMetadataZone = v9;

  v12 = self->_privateMetadataZone;
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10 == 0;
  }

  if (!v13)
  {
    v14 = self;
    v15 = 0;
    v16 = v10;
LABEL_11:
    [(HDCloudSyncOperation *)v14 finishWithSuccess:v15 error:v16];
    goto LABEL_12;
  }

  if (!v12)
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = self;
      _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] The metadata zone does not exist. Unable to continue push operation.", buf, 0xCu);
    }

    v14 = self;
    v15 = 1;
    v16 = 0;
    goto LABEL_11;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__HDCloudSyncSharedSummaryPushPrepareOperation_main__block_invoke;
  v19[3] = &unk_27861BB60;
  v19[4] = self;
  [(HDCloudSyncSharedSummaryPushPrepareOperation *)self _fetchAllTransactionsWithCompletion:v19];
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
}

void __52__HDCloudSyncSharedSummaryPushPrepareOperation_main__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (v6)
  {
    objc_storeStrong(v7 + 13, a2);
    v8 = *(a1 + 32);
    v9 = v8[16];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__HDCloudSyncSharedSummaryPushPrepareOperation_main__block_invoke_2;
    v10[3] = &unk_27861BB60;
    v10[4] = v8;
    [v8 _pendingAndAcceptedParticipantRecordsInZone:v9 completion:v10];
  }

  else
  {
    [v7 finishWithSuccess:0 error:a3];
  }
}

void __52__HDCloudSyncSharedSummaryPushPrepareOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (!v6)
  {
    v9 = *(a1 + 32);
    v10 = 0;
    v11 = v7;
LABEL_8:
    [v9 finishWithSuccess:v10 error:v11];
    goto LABEL_9;
  }

  if (![v6 count])
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [summary-sharing] No pending or accepted participants found", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = 1;
    v11 = 0;
    goto LABEL_8;
  }

  objc_storeStrong((*(a1 + 32) + 112), a2);
  v8 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HDCloudSyncSharedSummaryPushPrepareOperation_main__block_invoke_292;
  v15[3] = &unk_27861BB38;
  v15[4] = v8;
  [v8 _fetchAuthorizationIdentifiersByContactIdentifierForParticipants:v6 completion:v15];
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
}

void __52__HDCloudSyncSharedSummaryPushPrepareOperation_main__block_invoke_292(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v11 = v6;
  if (v6)
  {
    objc_storeStrong(v7 + 15, a2);
    v8 = a3;
    v9 = *(a1 + 32);
    v10 = 1;
  }

  else
  {
    v8 = a3;
    v9 = v7;
    v10 = 0;
  }

  [v9 finishWithSuccess:v10 error:v8];
}

- (void)_fetchAllTransactionsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDCloudSyncOperation *)self configuration];
  v6 = [v5 repository];
  v7 = [v6 cloudSyncShimProvider];
  v8 = [v7 sharedSummariesShim];

  v9 = [(HDCloudSyncOperation *)self configuration];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__HDCloudSyncSharedSummaryPushPrepareOperation__fetchAllTransactionsWithCompletion___block_invoke;
  v11[3] = &unk_27861BB88;
  v12 = v4;
  v10 = v4;
  [v8 fetchAllTransactionsWithConfiguration:v9 completion:v11];
}

- (void)_pendingAndAcceptedParticipantRecordsInZone:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v21 = 0;
  v8 = [v7 recordsForClass:objc_opt_class() error:&v21];

  v9 = v21;
  if (v8)
  {
    v10 = [(HDCloudSyncOperation *)self configuration];
    v11 = [v10 repository];
    v12 = [v11 cloudSyncShimProvider];
    v13 = [v12 summarySharingEntryShim];

    v14 = [v8 hk_filter:&__block_literal_global_63];
    v15 = [v14 hk_map:&__block_literal_global_298];
    v16 = [(HDCloudSyncOperation *)self configuration];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __103__HDCloudSyncSharedSummaryPushPrepareOperation__pendingAndAcceptedParticipantRecordsInZone_completion___block_invoke_3;
    v18[3] = &unk_27861BBD0;
    v18[4] = self;
    v19 = v14;
    v20 = v6;
    v17 = v14;
    [v13 pauseStatusForEntriesWithUUIDs:v15 configuration:v16 completion:v18];
  }

  else
  {
    (*(v6 + 2))(v6, 0, v9);
  }
}

BOOL __103__HDCloudSyncSharedSummaryPushPrepareOperation__pendingAndAcceptedParticipantRecordsInZone_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 relationshipDirection];
  v4 = [v3 longValue];

  if (v4 == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v2 relationshipStatus];
    v7 = [v6 longValue];

    v5 = v7 < 2;
  }

  return v5;
}

void __103__HDCloudSyncSharedSummaryPushPrepareOperation__pendingAndAcceptedParticipantRecordsInZone_completion___block_invoke_3(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      v11 = a1[4];
      *buf = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_228986000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [summary-sharing] Failed to read pause status for participants with error %{public}@.", buf, 0x16u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v8 = a1[5];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __103__HDCloudSyncSharedSummaryPushPrepareOperation__pendingAndAcceptedParticipantRecordsInZone_completion___block_invoke_299;
    v12[3] = &unk_27861AD28;
    v13 = v5;
    v9 = [v8 hk_filter:v12];
    (*(a1[6] + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __103__HDCloudSyncSharedSummaryPushPrepareOperation__pendingAndAcceptedParticipantRecordsInZone_completion___block_invoke_299(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) allKeys];
  v5 = [v3 UUID];
  if ([v4 containsObject:v5])
  {
    v6 = *(a1 + 32);
    v7 = [v3 UUID];
    v8 = [v6 objectForKeyedSubscript:v7];
    v9 = [v8 isEqual:MEMORY[0x277CBEC28]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_fetchAuthorizationIdentifiersByContactIdentifierForParticipants:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 hk_mapToSet:&__block_literal_global_301_0];
  v8 = [(HDCloudSyncOperation *)self configuration];
  v9 = [v8 repository];
  v10 = [v9 cloudSyncShimProvider];
  v11 = [v10 summarySharingEntryShim];

  v12 = [(HDCloudSyncOperation *)self configuration];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __124__HDCloudSyncSharedSummaryPushPrepareOperation__fetchAuthorizationIdentifiersByContactIdentifierForParticipants_completion___block_invoke_2;
  v14[3] = &unk_27861BBF8;
  v15 = v6;
  v13 = v6;
  [v11 authorizationIdentifiersByContactIdentifierForParticipants:v7 configuration:v12 completion:v14];
}

@end