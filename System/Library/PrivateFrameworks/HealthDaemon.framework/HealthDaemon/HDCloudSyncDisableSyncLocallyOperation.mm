@interface HDCloudSyncDisableSyncLocallyOperation
- (void)main;
@end

@implementation HDCloudSyncDisableSyncLocallyOperation

- (void)main
{
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  profile = [repository profile];
  legacyRepositoryProfile = [profile legacyRepositoryProfile];

  daemon = [legacyRepositoryProfile daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  accountProvider = [cloudSyncCoordinator accountProvider];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__HDCloudSyncDisableSyncLocallyOperation_main__block_invoke;
  v11[3] = &unk_278616020;
  v11[4] = self;
  v12 = legacyRepositoryProfile;
  v10 = legacyRepositoryProfile;
  [accountProvider disableSyncLocallyWithCompletion:v11];
}

void __46__HDCloudSyncDisableSyncLocallyOperation_main__block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 40) cloudSyncManager];
    v7 = [v6 ownerIdentifierManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__HDCloudSyncDisableSyncLocallyOperation_main__block_invoke_295;
    v10[3] = &unk_2786130B0;
    v10[4] = *(a1 + 32);
    [v7 rollOwnerDifferentiatorForReason:@"Disabling cloud sync locally." completion:v10];
  }

  else
  {
    _HKInitializeLogging();
    v8 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v8, OS_LOG_TYPE_ERROR, "Failed to disable cloud sync: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) finishWithSuccess:0 error:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __46__HDCloudSyncDisableSyncLocallyOperation_main__block_invoke_295(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "Updated owner identifier after disabling cloud sync.", &v12, 2u);
    }

    v8 = *(a1 + 32);
    v9 = 1;
    v10 = 0;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Failed to update owner differentiator after disabling cloud sync: %{public}@.", &v12, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = 0;
    v10 = v5;
  }

  [v8 finishWithSuccess:v9 error:v10];

  v11 = *MEMORY[0x277D85DE8];
}

@end