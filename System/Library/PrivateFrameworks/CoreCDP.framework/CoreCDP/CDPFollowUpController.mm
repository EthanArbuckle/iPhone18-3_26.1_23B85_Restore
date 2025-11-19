@interface CDPFollowUpController
- (BOOL)clearFollowUpWithContext:(id)a3 error:(id *)a4;
- (BOOL)postFollowUpWithContext:(id)a3 error:(id *)a4;
- (CDPFollowUpController)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CDPFollowUpController

- (CDPFollowUpController)init
{
  v6.receiver = self;
  v6.super_class = CDPFollowUpController;
  v2 = [(CDPFollowUpController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CDPDaemonConnection);
    daemonConn = v2->_daemonConn;
    v2->_daemonConn = v3;
  }

  return v2;
}

- (BOOL)postFollowUpWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = _os_activity_create(&dword_1DED99000, "cdp: post follow up", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  daemonConn = self->_daemonConn;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __55__CDPFollowUpController_postFollowUpWithContext_error___block_invoke;
  v13[3] = &unk_1E869D758;
  v13[4] = &v18;
  v9 = [(CDPDaemonConnection *)daemonConn synchronousDaemonWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__CDPFollowUpController_postFollowUpWithContext_error___block_invoke_17;
  v12[3] = &unk_1E869DAA0;
  v12[4] = &v14;
  v12[5] = &v18;
  [v9 postFollowUpWithContext:v6 completion:v12];
  if (a4)
  {
    *a4 = v19[5];
  }

  v10 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  os_activity_scope_leave(&state);
  return v10;
}

void __55__CDPFollowUpController_postFollowUpWithContext_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __55__CDPFollowUpController_postFollowUpWithContext_error___block_invoke_cold_1(v4, v5);
  }
}

void __55__CDPFollowUpController_postFollowUpWithContext_error___block_invoke_17(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = a2;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "Posted follow ups (%{BOOL}d) with error: %@", v10, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)clearFollowUpWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = _os_activity_create(&dword_1DED99000, "cdp: clear follow up", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  daemonConn = self->_daemonConn;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __56__CDPFollowUpController_clearFollowUpWithContext_error___block_invoke;
  v13[3] = &unk_1E869D758;
  v13[4] = &v18;
  v9 = [(CDPDaemonConnection *)daemonConn synchronousDaemonWithErrorHandler:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__CDPFollowUpController_clearFollowUpWithContext_error___block_invoke_19;
  v12[3] = &unk_1E869DAA0;
  v12[4] = &v14;
  v12[5] = &v18;
  [v9 clearFollowUpWithContext:v6 completion:v12];
  if (a4)
  {
    *a4 = v19[5];
  }

  v10 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  os_activity_scope_leave(&state);
  return v10;
}

void __56__CDPFollowUpController_clearFollowUpWithContext_error___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __56__CDPFollowUpController_clearFollowUpWithContext_error___block_invoke_cold_1(v4, v5);
  }
}

void __56__CDPFollowUpController_clearFollowUpWithContext_error___block_invoke_19(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = a2;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1DED99000, v6, OS_LOG_TYPE_DEFAULT, "Cleared follow ups (%{BOOL}d) with error: %@", v10, 0x12u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(CDPFollowUpController *)self invalidate];
  v3.receiver = self;
  v3.super_class = CDPFollowUpController;
  [(CDPFollowUpController *)&v3 dealloc];
}

- (void)invalidate
{
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(CDPFollowUpController *)v3 invalidate];
  }

  daemonConn = self->_daemonConn;
  if (daemonConn)
  {
    v5 = [(CDPDaemonConnection *)daemonConn connection];
    [v5 invalidate];

    v6 = self->_daemonConn;
    self->_daemonConn = 0;
  }
}

void __55__CDPFollowUpController_postFollowUpWithContext_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "XPC Error posting a follow up: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __56__CDPFollowUpController_clearFollowUpWithContext_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "XPC Error cleaning up follow ups: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end