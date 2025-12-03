@interface HDCloudSyncControlTaskServer
+ (BOOL)validateClient:(id)client error:(id *)error;
- (id)remote_disableCloudSyncAndDeleteAllCloudDataWithCompletion:(id)completion;
- (id)remote_fetchCloudSyncProgressWithCompletion:(id)completion;
- (id)remote_forceCloudResetWithCompletion:(id)completion;
- (id)remote_forceCloudSyncDataUploadForProfileWithCompletion:(id)completion;
- (id)remote_forceCloudSyncWithOptions:(unint64_t)options reason:(int64_t)reason completion:(id)completion;
- (void)remote_accountConfigurationDidChangeWithCompletion:(id)completion;
- (void)remote_cloudSyncEntityVersions:(id)versions;
- (void)remote_cloudSyncProtocolVersion:(id)version;
- (void)remote_disableCloudSyncWithCompletion:(id)completion;
- (void)remote_enableCloudSyncWithCompletion:(id)completion;
- (void)remote_fetchCloudSyncStatusWithCompletion:(id)completion;
- (void)remote_modifyRecordsToCreate:(id)create recordsToDelete:(id)delete completion:(id)completion;
- (void)remote_oldestSampleStartDateInHealthDatabaseWithCompletion:(id)completion;
- (void)remote_requestDataRefreshWithCompletion:(id)completion;
- (void)remote_syncWithRequest:(id)request reason:(id)reason completion:(id)completion;
@end

@implementation HDCloudSyncControlTaskServer

+ (BOOL)validateClient:(id)client error:(id *)error
{
  v5 = *MEMORY[0x277CCC8B0];
  clientCopy = client;
  LOBYTE(v5) = [clientCopy hasRequiredEntitlement:v5 error:error];
  LOBYTE(error) = [clientCopy hasRequiredArrayEntitlement:*MEMORY[0x277CCC8C0] containing:*MEMORY[0x277CCBD28] error:error];

  return (v5 | error) & 1;
}

- (void)remote_syncWithRequest:(id)request reason:(id)reason completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  reasonCopy = reason;
  completionCopy = completion;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v27 = 2114;
    v28 = requestCopy;
    v29 = 2114;
    v30 = reasonCopy;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud Sync Requested: %{public}@ Reason: %{public}@", buf, 0x20u);
  }

  v12 = [[HDCloudSyncContext alloc] initForPurpose:0 options:HDOptionsForRequest(requestCopy) reason:1];
  [v12 setSyncRequest:requestCopy];
  v13 = [reasonCopy isEqualToString:@"hkctl"];
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  v17 = cloudSyncCoordinator;
  if (v13)
  {
    v24 = 0;
    v18 = [cloudSyncCoordinator scheduleSyncForAllProfilesViaGatedBackgroundTask:0 context:v12 reason:reasonCopy error:&v24];
    v19 = v24;
  }

  else
  {
    v23 = 0;
    v18 = [cloudSyncCoordinator scheduleSyncForAllProfilesViaGatedBackgroundTask:1 context:v12 reason:reasonCopy error:&v23];
    v19 = v23;
  }

  v20 = v19;

  if (v18)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

  else
  {
    hk_sanitizedError = [v20 hk_sanitizedError];
    (completionCopy)[2](completionCopy, 0, hk_sanitizedError);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)remote_forceCloudSyncWithOptions:(unint64_t)options reason:(int64_t)reason completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v9 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = HKCloudSyncOptionsToString();
    v12 = HKCloudSyncReasonToString();
    *buf = 138543874;
    selfCopy = self;
    v25 = 2114;
    v26 = v11;
    v27 = 2114;
    v28 = v12;
    _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud Sync Triggered by options: %{public}@ reason: %{public}@", buf, 0x20u);
  }

  v13 = [[HDCloudSyncContext alloc] initForPurpose:0 options:options reason:reason];
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__HDCloudSyncControlTaskServer_remote_forceCloudSyncWithOptions_reason_completion___block_invoke;
  v21[3] = &unk_2786130D8;
  v22 = completionCopy;
  v17 = completionCopy;
  v18 = [cloudSyncCoordinator syncAllProfilesWithContext:v13 completion:v21];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __83__HDCloudSyncControlTaskServer_remote_forceCloudSyncWithOptions_reason_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (id)remote_forceCloudResetWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[HDCloudSyncContext alloc] initForPurpose:8 options:0 reason:4];
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__HDCloudSyncControlTaskServer_remote_forceCloudResetWithCompletion___block_invoke;
  v12[3] = &unk_2786130D8;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = [cloudSyncCoordinator resetAllProfilesWithContext:v5 completion:v12];

  return v10;
}

void __69__HDCloudSyncControlTaskServer_remote_forceCloudResetWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (id)remote_forceCloudSyncDataUploadForProfileWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    profile = [(HDStandardTaskServer *)self profile];
    profileIdentifier = [profile profileIdentifier];
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = profileIdentifier;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Cloud Sync Data Upload Triggered for profileIdentifier: %{public}@", buf, 0x16u);
  }

  v9 = [[HDCloudSyncContext alloc] initForPurpose:2 options:66 reason:21];
  profile2 = [(HDStandardTaskServer *)self profile];
  cloudSyncManager = [profile2 cloudSyncManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __88__HDCloudSyncControlTaskServer_remote_forceCloudSyncDataUploadForProfileWithCompletion___block_invoke;
  v16[3] = &unk_2786130D8;
  v17 = completionCopy;
  v12 = completionCopy;
  v13 = [cloudSyncManager syncWithContext:v9 completion:v16];

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

- (void)remote_modifyRecordsToCreate:(id)create recordsToDelete:(id)delete completion:(id)completion
{
  createCopy = create;
  deleteCopy = delete;
  completionCopy = completion;
  v10 = [[HDCloudSyncContext alloc] initForPurpose:7 options:0 reason:5];
  profile = [(HDStandardTaskServer *)self profile];
  cloudSyncManager = [profile cloudSyncManager];

  if (cloudSyncManager)
  {
    [cloudSyncManager modifyRecordsWithContext:v10 recordsToCreate:createCopy recordsToDelete:deleteCopy completion:completionCopy];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hk_error:110 description:@"Profile does not support sync."];
    completionCopy[2](completionCopy, 0, v13);
  }
}

- (void)remote_fetchCloudSyncStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  syncStatusProvider = [cloudSyncCoordinator syncStatusProvider];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HDCloudSyncControlTaskServer_remote_fetchCloudSyncStatusWithCompletion___block_invoke;
  v10[3] = &unk_278623C20;
  v11 = completionCopy;
  v9 = completionCopy;
  [syncStatusProvider fetchSyncStatusWithCompletion:v10];
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

- (id)remote_disableCloudSyncAndDeleteAllCloudDataWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  accountProvider = [cloudSyncCoordinator accountProvider];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__HDCloudSyncControlTaskServer_remote_disableCloudSyncAndDeleteAllCloudDataWithCompletion___block_invoke;
  v12[3] = &unk_2786130D8;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = [accountProvider disableAndDeleteAllSyncDataWithCompletion:v12];

  return v10;
}

void __91__HDCloudSyncControlTaskServer_remote_disableCloudSyncAndDeleteAllCloudDataWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_disableCloudSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  accountProvider = [cloudSyncCoordinator accountProvider];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HDCloudSyncControlTaskServer_remote_disableCloudSyncWithCompletion___block_invoke;
  v10[3] = &unk_2786130D8;
  v11 = completionCopy;
  v9 = completionCopy;
  [accountProvider disableSyncLocallyWithCompletion:v10];
}

void __70__HDCloudSyncControlTaskServer_remote_disableCloudSyncWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_enableCloudSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  accountProvider = [cloudSyncCoordinator accountProvider];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__HDCloudSyncControlTaskServer_remote_enableCloudSyncWithCompletion___block_invoke;
  v10[3] = &unk_2786130D8;
  v11 = completionCopy;
  v9 = completionCopy;
  [accountProvider enableSyncLocallyWithCompletion:v10];
}

void __69__HDCloudSyncControlTaskServer_remote_enableCloudSyncWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_accountConfigurationDidChangeWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  accountProvider = [cloudSyncCoordinator accountProvider];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__HDCloudSyncControlTaskServer_remote_accountConfigurationDidChangeWithCompletion___block_invoke;
  v10[3] = &unk_2786130D8;
  v11 = completionCopy;
  v9 = completionCopy;
  [accountProvider accountConfigurationDidChangeWithCompletion:v10];
}

void __83__HDCloudSyncControlTaskServer_remote_accountConfigurationDidChangeWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 hk_sanitizedError];
  (*(v4 + 16))(v4, a2, v5);
}

- (void)remote_oldestSampleStartDateInHealthDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = [(HDStandardTaskServer *)self profile];
  v6 = HDOldestSampleStartDate(profile);

  completionCopy[2](completionCopy, v6, 0);
}

- (void)remote_cloudSyncProtocolVersion:(id)version
{
  v4 = MEMORY[0x277CCABB0];
  versionCopy = version;
  v6 = [v4 numberWithInt:17];
  (*(version + 2))(versionCopy, v6, 0);
}

- (void)remote_cloudSyncEntityVersions:(id)versions
{
  versionsCopy = versions;
  profile = [(HDStandardTaskServer *)self profile];
  syncEngine = [profile syncEngine];
  allSyncEntityVersionsByIdentifier = [syncEngine allSyncEntityVersionsByIdentifier];
  (*(versions + 2))(versionsCopy, allSyncEntityVersionsByIdentifier, 0);
}

- (id)remote_fetchCloudSyncProgressWithCompletion:(id)completion
{
  profile = [(HDStandardTaskServer *)self profile];
  daemon = [profile daemon];
  cloudSyncCoordinator = [daemon cloudSyncCoordinator];
  syncStatusProvider = [cloudSyncCoordinator syncStatusProvider];
  currentSyncProgress = [syncStatusProvider currentSyncProgress];

  return currentSyncProgress;
}

- (void)remote_requestDataRefreshWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting data refresh (#t0)", &v9, 0xCu);
  }

  profile = [(HDStandardTaskServer *)self profile];
  cloudSyncManager = [profile cloudSyncManager];
  [cloudSyncManager requestDataUploadWithCompletion:completionCopy];

  v8 = *MEMORY[0x277D85DE8];
}

@end