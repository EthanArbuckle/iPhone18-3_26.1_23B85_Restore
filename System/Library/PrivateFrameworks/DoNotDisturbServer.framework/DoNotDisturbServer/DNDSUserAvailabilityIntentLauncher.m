@interface DNDSUserAvailabilityIntentLauncher
- (DNDSUserAvailabilityIntentLauncher)initWithApplicationRecord:(id)a3 available:(BOOL)a4;
- (void)_cleanupWithError:(id)a3 completion:(id)a4;
- (void)launchIntentExtensionWithCompletion:(id)a3;
@end

@implementation DNDSUserAvailabilityIntentLauncher

- (DNDSUserAvailabilityIntentLauncher)initWithApplicationRecord:(id)a3 available:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = DNDSUserAvailabilityIntentLauncher;
  v8 = [(DNDSUserAvailabilityIntentLauncher *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_applicationRecord, a3);
    v9->_available = a4;
  }

  return v9;
}

- (void)launchIntentExtensionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CD4150]);
  v6 = objc_alloc(MEMORY[0x277CD3C30]);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:!self->_available];
  v8 = [v6 initWithIsFocused:v7];
  v9 = [v5 initWithFocusStatus:v8];

  v10 = [(LSApplicationRecord *)self->_applicationRecord bundleIdentifier];
  [v9 _setLaunchId:v10];

  v11 = [objc_alloc(MEMORY[0x277D21520]) initWithIntent:v9];
  connection = self->_connection;
  self->_connection = v11;

  objc_initWeak(&location, self);
  [(INCExtensionConnection *)self->_connection setRequiresTCC:0];
  v13 = self->_connection;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke;
  v24[3] = &unk_278F8AE78;
  objc_copyWeak(&v26, &location);
  v14 = v4;
  v25 = v14;
  [(INCExtensionConnection *)v13 setTimeoutHandler:v24];
  v15 = self->_connection;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke_4;
  v21[3] = &unk_278F8AE78;
  objc_copyWeak(&v23, &location);
  v16 = v14;
  v22 = v16;
  [(INCExtensionConnection *)v15 setInterruptionHandler:v21];
  v17 = self->_connection;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke_5;
  v19[3] = &unk_278F8AEC8;
  v19[4] = self;
  v18 = v16;
  v20 = v18;
  [(INCExtensionConnection *)v17 resumeWithCompletionHandler:v19];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_ERROR))
  {
    __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _cleanupWithError:v3 completion:*(a1 + 32)];
  }
}

void __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_ERROR))
  {
    __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke_4_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _cleanupWithError:v3 completion:*(a1 + 32)];
  }
}

void __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_ERROR))
    {
      __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke_5_cold_1();
    }

    [*(a1 + 32) _cleanupWithError:v7 completion:*(a1 + 40)];
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke_6;
    v9[3] = &unk_278F8AEA0;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v5 handleIntentWithCompletionHandler:v9];
  }
}

void __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(DNDSLogStateProvider, OS_LOG_TYPE_ERROR))
    {
      __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke_6_cold_1();
    }

    v11 = *(a1 + 32);
    v12 = [v7 underlyingError];
    [v11 _cleanupWithError:v12 completion:*(a1 + 40)];
  }

  else if ((atomic_exchange((*(a1 + 32) + 25), 1u) & 1) == 0)
  {
    [*(*(a1 + 32) + 8) reset];
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    *(v8 + 8) = 0;

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v5, 0);
    }
  }
}

- (void)_cleanupWithError:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ((atomic_exchange(&self->_completionFiredFlag._Value, 1u) & 1) == 0)
  {
    [(INCExtensionConnection *)self->_connection reset];
    connection = self->_connection;
    self->_connection = 0;

    if (v6)
    {
      v6[2](v6, 0, v8);
    }
  }
}

void __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "INCExtensionConnection timeout!! %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke_4_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "INCExtensionConnection interrupted!! %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke_5_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "INCExtensionConnection resumeWithCompletionHandler error!! %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __74__DNDSUserAvailabilityIntentLauncher_launchIntentExtensionWithCompletion___block_invoke_6_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0(&dword_24912E000, v0, v1, "INCExtensionConnection proxy handle error!! %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end