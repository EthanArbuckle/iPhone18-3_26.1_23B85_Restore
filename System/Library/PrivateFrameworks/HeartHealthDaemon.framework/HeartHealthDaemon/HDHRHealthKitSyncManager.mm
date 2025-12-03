@interface HDHRHealthKitSyncManager
- (HDHRHealthKitSyncManager)initWithProfile:(id)profile;
- (void)triggerImmediateSyncWithReason:(id)reason loggingCategory:(id)category;
@end

@implementation HDHRHealthKitSyncManager

- (HDHRHealthKitSyncManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDHRHealthKitSyncManager;
  v5 = [(HDHRHealthKitSyncManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (void)triggerImmediateSyncWithReason:(id)reason loggingCategory:(id)category
{
  reasonCopy = reason;
  categoryCopy = category;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  nanoSyncManager = [WeakRetained nanoSyncManager];
  reasonCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@", self, reasonCopy];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __75__HDHRHealthKitSyncManager_triggerImmediateSyncWithReason_loggingCategory___block_invoke;
  v24[3] = &unk_278660128;
  v11 = categoryCopy;
  v25 = v11;
  selfCopy = self;
  v12 = reasonCopy;
  v27 = v12;
  [nanoSyncManager syncHealthDataWithOptions:0 reason:reasonCopy completion:v24];

  v13 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
  v14 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v13];
  v15 = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [v15 cloudSyncManager];
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@", self, v12];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__HDHRHealthKitSyncManager_triggerImmediateSyncWithReason_loggingCategory___block_invoke_301;
  v20[3] = &unk_278660128;
  v21 = v11;
  selfCopy2 = self;
  v23 = v12;
  v18 = v12;
  v19 = v11;
  [cloudSyncManager syncWithRequest:v14 reason:v17 completion:v20];
}

void __75__HDHRHealthKitSyncManager_triggerImmediateSyncWithReason_loggingCategory___block_invoke(void *a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = a1[4];
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[5];
      v8 = a1[6];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_229486000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] NanoSync completed after %{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __75__HDHRHealthKitSyncManager_triggerImmediateSyncWithReason_loggingCategory___block_invoke_cold_1(a1, v5, v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __75__HDHRHealthKitSyncManager_triggerImmediateSyncWithReason_loggingCategory___block_invoke_301(void *a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = a1[4];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      v8 = a1[5];
      v9 = a1[6];
      v16 = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      v10 = "[%{public}@] Cloud sync request completed after %{public}@";
      v11 = v6;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_229486000, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
    }
  }

  else if (v7)
  {
    v13 = a1[5];
    v14 = a1[6];
    v16 = 138543874;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    v20 = 2114;
    v21 = v5;
    v10 = "[%{public}@] Cloud sync request failed after %{public}@: %{public}@";
    v11 = v6;
    v12 = 32;
    goto LABEL_6;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __75__HDHRHealthKitSyncManager_triggerImmediateSyncWithReason_loggingCategory___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = 138543874;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  v10 = 2114;
  v11 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "[%{public}@] NanoSync failed after %{public}@: %{public}@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

@end