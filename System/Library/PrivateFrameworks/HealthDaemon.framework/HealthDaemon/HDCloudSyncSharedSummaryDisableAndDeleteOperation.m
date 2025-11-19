@interface HDCloudSyncSharedSummaryDisableAndDeleteOperation
- (void)main;
@end

@implementation HDCloudSyncSharedSummaryDisableAndDeleteOperation

- (void)main
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HDCloudSyncOperation *)self configuration];
  v4 = [v3 repository];
  v5 = [v4 syncAvailability];
  v6 = [v5 shouldSyncSummarySharingPush];

  if (v6)
  {
    v7 = [(HDCloudSyncOperation *)self configuration];
    v8 = [v7 repository];
    v9 = [v8 cloudSyncShimProvider];
    v10 = [v9 summarySharingEntryShim];

    v11 = [(HDCloudSyncOperation *)self configuration];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__HDCloudSyncSharedSummaryDisableAndDeleteOperation_main__block_invoke;
    v14[3] = &unk_2786130B0;
    v14[4] = self;
    [v10 disableAllSharingEntriesWithConfiguration:v11 completion:v14];
  }

  else
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = self;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Device doesnt support shared summaries", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __57__HDCloudSyncSharedSummaryDisableAndDeleteOperation_main__block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = [v4 configuration];
    v6 = [v5 repository];
    v7 = [v6 cloudSyncShimProvider];
    v8 = [v7 sharedSummariesShim];
    v9 = [*(a1 + 32) configuration];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__HDCloudSyncSharedSummaryDisableAndDeleteOperation_main__block_invoke_2;
    v10[3] = &unk_2786130B0;
    v10[4] = *(a1 + 32);
    [v8 deleteAllSharedSummaryTransactionsWithConfiguration:v9 completion:v10];
  }

  else
  {

    [v4 finishWithSuccess:0 error:a3];
  }
}

void __57__HDCloudSyncSharedSummaryDisableAndDeleteOperation_main__block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = [v4 configuration];
    v6 = [v5 repository];
    v7 = [v6 cloudSyncShimProvider];
    v8 = [v7 profileManagementShim];

    v9 = [*(a1 + 32) configuration];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__HDCloudSyncSharedSummaryDisableAndDeleteOperation_main__block_invoke_3;
    v10[3] = &unk_2786130B0;
    v10[4] = *(a1 + 32);
    [v8 deleteAllProfilesOfType:2 configuration:v9 completion:v10];
  }

  else
  {

    [v4 finishWithSuccess:0 error:a3];
  }
}

uint64_t __57__HDCloudSyncSharedSummaryDisableAndDeleteOperation_main__block_invoke_3(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = 1;
    v5 = 0;
  }

  else
  {
    v5 = a3;
    v4 = 0;
  }

  return [v3 finishWithSuccess:v4 error:v5];
}

@end