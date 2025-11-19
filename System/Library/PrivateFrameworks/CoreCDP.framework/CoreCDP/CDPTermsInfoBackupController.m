@interface CDPTermsInfoBackupController
- (CDPTermsInfoBackupController)init;
- (void)fetchTermsAcceptanceForAccount:(id)a3 completion:(id)a4;
- (void)saveTermsAcceptance:(id)a3 completion:(id)a4;
@end

@implementation CDPTermsInfoBackupController

- (CDPTermsInfoBackupController)init
{
  v6.receiver = self;
  v6.super_class = CDPTermsInfoBackupController;
  v2 = [(CDPTermsInfoBackupController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CDPDaemonConnection);
    daemonConn = v2->_daemonConn;
    v2->_daemonConn = v3;
  }

  return v2;
}

- (void)saveTermsAcceptance:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1DED99000, "cdp/saveTermsAcceptance", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__CDPTermsInfoBackupController_saveTermsAcceptance_completion___block_invoke;
  v19[3] = &unk_1E869D588;
  v9 = v7;
  v20 = v9;
  v10 = MEMORY[0x1E12CA380](v19);
  v11 = [(CDPTermsInfoBackupController *)self daemonConn];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __63__CDPTermsInfoBackupController_saveTermsAcceptance_completion___block_invoke_17;
  v17 = &unk_1E869D588;
  v12 = v10;
  v18 = v12;
  v13 = [v11 synchronousDaemonWithErrorHandler:&v14];

  [v13 saveTermsAcceptance:v6 completion:{v12, v14, v15, v16, v17}];
  os_activity_scope_leave(&state);
}

void __63__CDPTermsInfoBackupController_saveTermsAcceptance_completion___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "Saving of terms acceptance completed with error %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __63__CDPTermsInfoBackupController_saveTermsAcceptance_completion___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__CDPTermsInfoBackupController_saveTermsAcceptance_completion___block_invoke_17_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchTermsAcceptanceForAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _os_activity_create(&dword_1DED99000, "cdp/fetchTermsAcceptance", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__CDPTermsInfoBackupController_fetchTermsAcceptanceForAccount_completion___block_invoke;
  v19[3] = &unk_1E869D628;
  v9 = v7;
  v20 = v9;
  v10 = MEMORY[0x1E12CA380](v19);
  v11 = [(CDPTermsInfoBackupController *)self daemonConn];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __74__CDPTermsInfoBackupController_fetchTermsAcceptanceForAccount_completion___block_invoke_19;
  v17 = &unk_1E869D588;
  v12 = v10;
  v18 = v12;
  v13 = [v11 synchronousDaemonWithErrorHandler:&v14];

  [v13 fetchTermsAcceptanceForAccount:v6 completion:{v12, v14, v15, v16, v17}];
  os_activity_scope_leave(&state);
}

void __74__CDPTermsInfoBackupController_fetchTermsAcceptanceForAccount_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Fetched terms acceptance completed with error %@ and result %@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

void __74__CDPTermsInfoBackupController_fetchTermsAcceptanceForAccount_completion___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __74__CDPTermsInfoBackupController_fetchTermsAcceptanceForAccount_completion___block_invoke_19_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

void __63__CDPTermsInfoBackupController_saveTermsAcceptance_completion___block_invoke_17_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "XPC Error while attempting to save terms info: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __74__CDPTermsInfoBackupController_fetchTermsAcceptanceForAccount_completion___block_invoke_19_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "XPC Error while attempting to fetch terms info: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end