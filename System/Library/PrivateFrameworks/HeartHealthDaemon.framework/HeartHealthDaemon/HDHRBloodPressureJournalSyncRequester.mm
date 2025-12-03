@interface HDHRBloodPressureJournalSyncRequester
- (HDHRBloodPressureJournalSyncRequester)initWithProfile:(id)profile;
- (void)requestStateSyncWithReason:(id)reason;
@end

@implementation HDHRBloodPressureJournalSyncRequester

- (HDHRBloodPressureJournalSyncRequester)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDHRBloodPressureJournalSyncRequester;
  v5 = [(HDHRBloodPressureJournalSyncRequester *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (void)requestStateSyncWithReason:(id)reason
{
  v4 = MEMORY[0x277CCDA40];
  reasonCopy = reason;
  v6 = objc_alloc_init(v4);
  v7 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:1 lite:1];
  v8 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v7 contextSyncRequest:0 stateSyncRequest:v6 medicalIDSyncRequest:0 summarySharingSyncRequest:0];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [WeakRetained cloudSyncManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HDHRBloodPressureJournalSyncRequester_requestStateSyncWithReason___block_invoke;
  v11[3] = &unk_278660408;
  v11[4] = self;
  [cloudSyncManager syncWithRequest:v8 reason:reasonCopy completion:v11];
}

void __68__HDHRBloodPressureJournalSyncRequester_requestStateSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogBloodPressureJournal();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = *(a1 + 32);
      v13 = 138543618;
      v14 = v9;
      v15 = 2048;
      v16 = v10;
      v11 = v9;
      _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Successfully requested sync for blood pressure journal", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __68__HDHRBloodPressureJournalSyncRequester_requestStateSyncWithReason___block_invoke_cold_1(a1, v5, v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __68__HDHRBloodPressureJournalSyncRequester_requestStateSyncWithReason___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = *(a1 + 32);
  v11 = 138543874;
  v12 = v7;
  v13 = 2048;
  v14 = v8;
  v15 = 2114;
  v16 = a2;
  v9 = v7;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@:%p] Failed to request sync for blood pressure journal with error: %{public}@", &v11, 0x20u);

  v10 = *MEMORY[0x277D85DE8];
}

@end