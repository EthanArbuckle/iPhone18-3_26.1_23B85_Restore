@interface MLChangeObserver
@end

@implementation MLChangeObserver

void __38___MLChangeObserver_setupTimeoutTimer__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (WeakRetained)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 56);
      v9 = 134218498;
      v10 = WeakRetained;
      v11 = 2114;
      v12 = v5;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "_MLChangeObserver %p - Terminating hanging client %{public}@[%d]", &v9, 0x1Cu);
    }

    os_unfair_lock_lock((*(a1 + 40) + 12));
    [WeakRetained tearDownTaskAssertion];
    [WeakRetained terminateForFailureToPerformDatabasePathChange];
    [WeakRetained tearDownTimeoutTimer];
    os_unfair_lock_unlock((*(a1 + 40) + 12));
  }

  else
  {
    if (v4)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 56);
      v9 = 138543618;
      v10 = v7;
      v11 = 1024;
      LODWORD(v12) = v8;
      _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_DEFAULT, "_MLChangeObserver - Terminating hanging client %{public}@[%d] [aborted: dead connection]", &v9, 0x12u);
    }
  }
}

void __67___MLChangeObserver_terminateForFailureToPerformDatabasePathChange__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ - terminateForFailureToPerformDatabasePathChange - Unable to retrieve remote object proxy - error=%{public}@", &v6, 0x16u);
  }
}

void __58___MLChangeObserver_performDatabasePathChange_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  os_unfair_lock_lock(v4 + 3);
  [*(a1 + 32) tearDownTaskAssertion];
  [*(a1 + 32) tearDownTimeoutTimer];
  os_unfair_lock_unlock((*(a1 + 32) + 12));
  (*(*(a1 + 40) + 16))();
}

void __58___MLChangeObserver_performDatabasePathChange_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_ERROR, "%{public}@ - performDatabasePathChange: - Unable to retrieve remote object proxy - error=%{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void __58___MLChangeObserver_performDatabasePathChange_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.medialibrary", "MultiUser");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - performDatabasePathChange: [done]", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

@end