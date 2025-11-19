@interface HDCloudSyncControlTaskServer
+ (BOOL)validateClient:(id)a3 error:(id *)a4;
- (id)remote_disableCloudSyncAndDeleteAllCloudDataWithCompletion:(id)a3;
- (id)remote_fetchCloudSyncProgressWithCompletion:(id)a3;
- (id)remote_forceCloudResetWithCompletion:(id)a3;
- (id)remote_forceCloudSyncDataUploadForProfileWithCompletion:(id)a3;
- (id)remote_forceCloudSyncWithOptions:(unint64_t)a3 reason:(int64_t)a4 completion:(id)a5;
- (void)remote_accountConfigurationDidChangeWithCompletion:(id)a3;
- (void)remote_cloudSyncEntityVersions:(id)a3;
- (void)remote_cloudSyncProtocolVersion:(id)a3;
- (void)remote_disableCloudSyncWithCompletion:(id)a3;
- (void)remote_enableCloudSyncWithCompletion:(id)a3;
- (void)remote_fetchCloudSyncStatusWithCompletion:(id)a3;
- (void)remote_modifyRecordsToCreate:(id)a3 recordsToDelete:(id)a4 completion:(id)a5;
- (void)remote_oldestSampleStartDateInHealthDatabaseWithCompletion:(id)a3;
- (void)remote_requestDataRefreshWithCompletion:(id)a3;
- (void)remote_syncWithRequest:(id)a3 reason:(id)a4 completion:(id)a5;
@end

@implementation HDCloudSyncControlTaskServer

+ (BOOL)validateClient:(id)a3 error:(id *)a4
{
  v5 = *MEMORY[0x277CCC8B0];
  v6 = a3;
  LOBYTE(v5) = [v6 hasRequiredEntitlement:v5 error:a4];
  LOBYTE(a4) = [v6 hasRequiredArrayEntitlement:*MEMORY[0x277CCC8C0] containing:*MEMORY[0x277CCBD28] error:a4];

  return (v5 | a4) & 1;
}

- (void)remote_syncWithRequest:(id)a3 reason:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v26 = self;
    v27 = 2114;
    v28 = v8;
    v29 = 2114;
    v30 = v9;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud Sync Requested: %{public}@ Reason: %{public}@", buf, 0x20u);
  }

  v12 = [[HDCloudSyncContext alloc] initForPurpose:0 options:HDOptionsForRequest(v8) reason:1];
  [v12 setSyncRequest:v8];
  v13 = [v9 isEqualToString:@"hkctl"];
  v14 = [(HDStandardTaskServer *)self profile];
  v15 = [v14 daemon];
  v16 = [v15 cloudSyncCoordinator];
  v17 = v16;
  if (v13)
  {
    v24 = 0;
    v18 = [v16 scheduleSyncForAllProfilesViaGatedBackgroundTask:0 context:v12 reason:v9 error:&v24];
    v19 = v24;
  }

  else
  {
    v23 = 0;
    v18 = [v16 scheduleSyncForAllProfilesViaGatedBackgroundTask:1 context:v12 reason:v9 error:&v23];
    v19 = v23;
  }

  v20 = v19;

  if (v18)
  {
    v10[2](v10, 1, 0);
  }

  else
  {
    v21 = [v20 hk_sanitizedError];
    (v10)[2](v10, 0, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)remote_forceCloudSyncWithOptions:(unint64_t)a3 reason:(int64_t)a4 completion:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a5;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = HKCloudSyncOptionsToString();
    v12 = HKCloudSyncReasonToString();
    *buf = 138543874;
    v24 = self;
    v25 = 2114;
    v26 = v11;
    v27 = 2114;
    v28 = v12;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud Sync Triggered by options: %{public}@ reason: %{public}@", buf, 0x20u);
  }

  v13 = [[HDCloudSyncContext alloc] initForPurpose:0 options:a3 reason:a4];
  v14 = [(HDStandardTaskServer *)self profile];
  v15 = [v14 daemon];
  v16 = [v15 cloudSyncCoordinator];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__HDCloudSyncControlTaskServer_remote_forceCloudSyncWithOptions_reason_completion___block_invoke;
  v21[3] = &unk_2786130D8;
  v22 = v8;
  v17 = v8;
  v18 = [v16 syncAllProfilesWithContext:v13 completion:v21];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __83__HDCloudSyncControlTaskServer_remote_forceCloudSyncWithOptions_reason_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (id)remote_forceCloudResetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[HDCloudSyncContext alloc] initForPurpose:8 options:0 reason:4];
  v6 = [(HDStandardTaskServer *)self profile];
  v7 = [v6 daemon];
  v8 = [v7 cloudSyncCoordinator];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HDCloudSyncControlTaskServer_remote_forceCloudResetWithCompletion___block_invoke;
  v12[3] = &unk_2786130D8;
  v13 = v4;
  v9 = v4;
  v10 = [v8 resetAllProfilesWithContext:v5 completion:v12];

  return v10;
}

void __69__HDCloudSyncControlTaskServer_remote_forceCloudResetWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (id)remote_forceCloudSyncDataUploadForProfileWithCompletion:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(HDStandardTaskServer *)self profile];
    v8 = [v7 profileIdentifier];
    *buf = 138543618;
    v19 = self;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud Sync Data Upload Triggered for profileIdentifier: %{public}@", buf, 0x16u);
  }

  v9 = [[HDCloudSyncContext alloc] initForPurpose:2 options:66 reason:21];
  v10 = [(HDStandardTaskServer *)self profile];
  v11 = [v10 cloudSyncManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__HDCloudSyncControlTaskServer_remote_forceCloudSyncDataUploadForProfileWithCompletion___block_invoke;
  v16[3] = &unk_2786130D8;
  v17 = v4;
  v12 = v4;
  v13 = [v11 syncWithContext:v9 completion:v16];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __88__HDCloudSyncControlTaskServer_remote_forceCloudSyncDataUploadForProfileWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

void __140__HDCloudSyncControlTaskServer_remote_fetchCloudDescriptionUseDescriptionForLogs_prettyPrinted_updateCacheAndPrepareForSync_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 32);
    v9 = [v6 hk_sanitizedError];
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    if (*(a1 + 40) == 1)
    {
      v10 = [v5 descriptionForLogs];
      v11 = 0;
    }

    else
    {
      v12 = *(a1 + 41);
      v13 = 0;
      v10 = [v5 serializedPrettyPrinted:v12 error:&v13];
      v11 = v13;
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)remote_modifyRecordsToCreate:(id)a3 recordsToDelete:(id)a4 completion:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[HDCloudSyncContext alloc] initForPurpose:7 options:0 reason:5];
  v11 = [(HDStandardTaskServer *)self profile];
  v12 = [v11 cloudSyncManager];

  if (v12)
  {
    [v12 modifyRecordsWithContext:v10 recordsToCreate:v14 recordsToDelete:v8 completion:v9];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Profile does not support sync."];
    v9[2](v9, 0, v13);
  }
}

- (void)remote_fetchCloudSyncStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 daemon];
  v7 = [v6 cloudSyncCoordinator];
  v8 = [v7 syncStatusProvider];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HDCloudSyncControlTaskServer_remote_fetchCloudSyncStatusWithCompletion___block_invoke;
  v10[3] = &unk_278623C20;
  v11 = v4;
  v9 = v4;
  [v8 fetchSyncStatusWithCompletion:v10];
}

void __74__HDCloudSyncControlTaskServer_remote_fetchCloudSyncStatusWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = a5;
  v10 = a3;
  v13 = [v10 lastSuccessfulPushDate];
  v11 = [v10 lastSuccessfulPullDate];

  v12 = [v9 hk_sanitizedError];

  (*(v8 + 16))(v8, a2, v13, v11, a4, v12);
}

- (id)remote_disableCloudSyncAndDeleteAllCloudDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 daemon];
  v7 = [v6 cloudSyncCoordinator];
  v8 = [v7 accountProvider];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__HDCloudSyncControlTaskServer_remote_disableCloudSyncAndDeleteAllCloudDataWithCompletion___block_invoke;
  v12[3] = &unk_2786130D8;
  v13 = v4;
  v9 = v4;
  v10 = [v8 disableAndDeleteAllSyncDataWithCompletion:v12];

  return v10;
}

void __91__HDCloudSyncControlTaskServer_remote_disableCloudSyncAndDeleteAllCloudDataWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_disableCloudSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 daemon];
  v7 = [v6 cloudSyncCoordinator];
  v8 = [v7 accountProvider];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HDCloudSyncControlTaskServer_remote_disableCloudSyncWithCompletion___block_invoke;
  v10[3] = &unk_2786130D8;
  v11 = v4;
  v9 = v4;
  [v8 disableSyncLocallyWithCompletion:v10];
}

void __70__HDCloudSyncControlTaskServer_remote_disableCloudSyncWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_enableCloudSyncWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 daemon];
  v7 = [v6 cloudSyncCoordinator];
  v8 = [v7 accountProvider];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HDCloudSyncControlTaskServer_remote_enableCloudSyncWithCompletion___block_invoke;
  v10[3] = &unk_2786130D8;
  v11 = v4;
  v9 = v4;
  [v8 enableSyncLocallyWithCompletion:v10];
}

void __69__HDCloudSyncControlTaskServer_remote_enableCloudSyncWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_accountConfigurationDidChangeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = [v5 daemon];
  v7 = [v6 cloudSyncCoordinator];
  v8 = [v7 accountProvider];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__HDCloudSyncControlTaskServer_remote_accountConfigurationDidChangeWithCompletion___block_invoke;
  v10[3] = &unk_2786130D8;
  v11 = v4;
  v9 = v4;
  [v8 accountConfigurationDidChangeWithCompletion:v10];
}

void __83__HDCloudSyncControlTaskServer_remote_accountConfigurationDidChangeWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_oldestSampleStartDateInHealthDatabaseWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HDStandardTaskServer *)self profile];
  v6 = HDOldestSampleStartDate(v5);

  v4[2](v4, v6, 0);
}

- (void)remote_cloudSyncProtocolVersion:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInt:17];
  (*(a3 + 2))(v5, v6, 0);
}

- (void)remote_cloudSyncEntityVersions:(id)a3
{
  v5 = a3;
  v8 = [(HDStandardTaskServer *)self profile];
  v6 = [v8 syncEngine];
  v7 = [v6 allSyncEntityVersionsByIdentifier];
  (*(a3 + 2))(v5, v7, 0);
}

- (id)remote_fetchCloudSyncProgressWithCompletion:(id)a3
{
  v3 = [(HDStandardTaskServer *)self profile];
  v4 = [v3 daemon];
  v5 = [v4 cloudSyncCoordinator];
  v6 = [v5 syncStatusProvider];
  v7 = [v6 currentSyncProgress];

  return v7;
}

- (void)remote_requestDataRefreshWithCompletion:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting data refresh (#t0)", &v9, 0xCu);
  }

  v6 = [(HDStandardTaskServer *)self profile];
  v7 = [v6 cloudSyncManager];
  [v7 requestDataUploadWithCompletion:v4];

  v8 = *MEMORY[0x277D85DE8];
}

@end