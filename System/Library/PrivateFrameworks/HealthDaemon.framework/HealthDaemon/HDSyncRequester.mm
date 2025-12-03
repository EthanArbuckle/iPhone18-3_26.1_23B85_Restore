@interface HDSyncRequester
- (HDProfile)profile;
- (HDSyncRequester)init;
- (HDSyncRequester)initWithProfile:(id)profile;
- (void)requestSyncsWithReason:(id)reason options:(unint64_t)options;
@end

@implementation HDSyncRequester

- (HDSyncRequester)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDSyncRequester)initWithProfile:(id)profile
{
  profileCopy = profile;
  v8.receiver = self;
  v8.super_class = HDSyncRequester;
  v5 = [(HDSyncRequester *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
  }

  return v6;
}

- (void)requestSyncsWithReason:(id)reason options:(unint64_t)options
{
  v29 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *v25 = 138543618;
    *&v25[4] = objc_opt_class();
    *&v25[12] = 2114;
    *&v25[14] = reasonCopy;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting syncs for '%{public}@'", v25, 0x16u);
  }

  v9 = _Block_copy(self->_unitTesting_willRequestSyncsHandler);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, reasonCopy, options);
  }

  if ((options & 1) == 0)
  {
    v11 = reasonCopy;
    v12 = objc_alloc_init(MEMORY[0x277CCDA40]);
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    cloudSyncManager = [WeakRetained cloudSyncManager];
    v15 = [objc_alloc(MEMORY[0x277CCD140]) initWithStateSyncRequest:v12];
    *v25 = MEMORY[0x277D85DD0];
    *&v25[8] = 3221225472;
    *&v25[16] = __47__HDSyncRequester__requestStateSyncWithReason___block_invoke;
    v26 = &unk_278616020;
    selfCopy2 = self;
    v16 = v11;
    v28 = v16;
    [cloudSyncManager syncWithRequest:v15 reason:v16 completion:v25];
  }

  v17 = reasonCopy;
  v18 = objc_loadWeakRetained(&self->_profile);
  daemon = [v18 daemon];
  behavior = [daemon behavior];
  supportsNanoSync = [behavior supportsNanoSync];

  if (supportsNanoSync)
  {
    v22 = objc_loadWeakRetained(&self->_profile);
    nanoSyncManager = [v22 nanoSyncManager];
    *v25 = MEMORY[0x277D85DD0];
    *&v25[8] = 3221225472;
    *&v25[16] = __46__HDSyncRequester__requestNanoSyncWithReason___block_invoke;
    v26 = &unk_278616020;
    selfCopy2 = self;
    v28 = v17;
    [nanoSyncManager syncHealthDataWithOptions:0 reason:v28 completion:v25];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __47__HDSyncRequester__requestStateSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  if (!a2)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v13 = *(a1 + 32);
    v9 = v6;
    v14 = objc_opt_class();
    v15 = *(a1 + 40);
    v16 = 138543874;
    v17 = v14;
    v18 = 2114;
    v19 = v15;
    v20 = 2114;
    v21 = v5;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Cloud sync request failure for reason '%{public}@': %{public}@", &v16, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v6;
    v10 = objc_opt_class();
    v11 = *(a1 + 40);
    v16 = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cloud sync request success for reason '%{public}@'", &v16, 0x16u);
LABEL_4:
  }

LABEL_6:

  v12 = *MEMORY[0x277D85DE8];
}

void __46__HDSyncRequester__requestNanoSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC328];
  v7 = *MEMORY[0x277CCC328];
  if (!a2)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v13 = *(a1 + 32);
    v9 = v6;
    v14 = objc_opt_class();
    v15 = *(a1 + 40);
    v16 = 138543874;
    v17 = v14;
    v18 = 2114;
    v19 = v15;
    v20 = 2114;
    v21 = v5;
    _os_log_error_impl(&dword_228986000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] NanoSync failure for reason '%{public}@': %{public}@", &v16, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = v6;
    v10 = objc_opt_class();
    v11 = *(a1 + 40);
    v16 = 138543618;
    v17 = v10;
    v18 = 2114;
    v19 = v11;
    _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] NanoSync success for reason '%{public}@'", &v16, 0x16u);
LABEL_4:
  }

LABEL_6:

  v12 = *MEMORY[0x277D85DE8];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end