@interface HDSyncRequester
- (HDProfile)profile;
- (HDSyncRequester)init;
- (HDSyncRequester)initWithProfile:(id)a3;
- (void)requestSyncsWithReason:(id)a3 options:(unint64_t)a4;
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

- (HDSyncRequester)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HDSyncRequester;
  v5 = [(HDSyncRequester *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
  }

  return v6;
}

- (void)requestSyncsWithReason:(id)a3 options:(unint64_t)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC328];
  if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *v25 = 138543618;
    *&v25[4] = objc_opt_class();
    *&v25[12] = 2114;
    *&v25[14] = v6;
    _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requesting syncs for '%{public}@'", v25, 0x16u);
  }

  v9 = _Block_copy(self->_unitTesting_willRequestSyncsHandler);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, v6, a4);
  }

  if ((a4 & 1) == 0)
  {
    v11 = v6;
    v12 = objc_alloc_init(MEMORY[0x277CCDA40]);
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v14 = [WeakRetained cloudSyncManager];
    v15 = [objc_alloc(MEMORY[0x277CCD140]) initWithStateSyncRequest:v12];
    *v25 = MEMORY[0x277D85DD0];
    *&v25[8] = 3221225472;
    *&v25[16] = __47__HDSyncRequester__requestStateSyncWithReason___block_invoke;
    v26 = &unk_278616020;
    v27 = self;
    v16 = v11;
    v28 = v16;
    [v14 syncWithRequest:v15 reason:v16 completion:v25];
  }

  v17 = v6;
  v18 = objc_loadWeakRetained(&self->_profile);
  v19 = [v18 daemon];
  v20 = [v19 behavior];
  v21 = [v20 supportsNanoSync];

  if (v21)
  {
    v22 = objc_loadWeakRetained(&self->_profile);
    v23 = [v22 nanoSyncManager];
    *v25 = MEMORY[0x277D85DD0];
    *&v25[8] = 3221225472;
    *&v25[16] = __46__HDSyncRequester__requestNanoSyncWithReason___block_invoke;
    v26 = &unk_278616020;
    v27 = self;
    v28 = v17;
    [v23 syncHealthDataWithOptions:0 reason:v28 completion:v25];
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