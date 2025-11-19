@interface CDPWalrusStateController
- (CDPWalrusStateController)initWithContext:(id)a3;
- (id)_makeAnalyticsEvent:(unint64_t)a3 state:(id)a4 error:(id)a5;
- (id)combinedWalrusStatus:(id *)a3;
- (unint64_t)walrusStatus:(id *)a3;
- (void)_startObservingWalrusStateChangeNotification;
- (void)broadcastWalrusStateChange;
- (void)combinedWalrusStatusWithCompletion:(id)a3;
- (void)pcsKeysForServices:(id)a3 completion:(id)a4;
- (void)repairWalrusStatusWithCompletion:(id)a3;
- (void)updateWalrusStatus:(unint64_t)a3 authenticatedContext:(id)a4 completion:(id)a5;
- (void)walrusStatusWithCompletion:(id)a3;
@end

@implementation CDPWalrusStateController

- (void)_startObservingWalrusStateChangeNotification
{
  v2 = +[CDPWalrusNotificationHandler sharedInstance];
  [v2 startObservingWalrusStateChangeNotification];
}

- (CDPWalrusStateController)initWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CDPWalrusStateController;
  v5 = [(CDPWalrusStateController *)&v9 init];
  if (v5)
  {
    v6 = [CDPContext preflightContext:v4];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

- (void)walrusStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1DED99000, "Walrus: Fetching status.", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = objc_alloc_init(CDPDaemonConnection);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__CDPWalrusStateController_walrusStatusWithCompletion___block_invoke;
  v16[3] = &unk_1E869D588;
  v7 = v4;
  v17 = v7;
  v8 = [(CDPDaemonConnection *)v6 daemonWithErrorHandler:v16];
  context = self->_context;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __55__CDPWalrusStateController_walrusStatusWithCompletion___block_invoke_25;
  v14 = &unk_1E869D730;
  v10 = v7;
  v15 = v10;
  [v8 walrusStatusWithContext:context completion:&v11];
  [(CDPWalrusStateController *)self _startObservingWalrusStateChangeNotification:v11];

  os_activity_scope_leave(&state);
}

void __55__CDPWalrusStateController_walrusStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__CDPWalrusStateController_walrusStatusWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __55__CDPWalrusStateController_walrusStatusWithCompletion___block_invoke_25(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _CDPLogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__CDPWalrusStateController_walrusStatusWithCompletion___block_invoke_25_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __55__CDPWalrusStateController_walrusStatusWithCompletion___block_invoke_25_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

- (unint64_t)walrusStatus:(id *)a3
{
  v5 = _os_activity_create(&dword_1DED99000, "Walrus: Fetching status.", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v6 = objc_alloc_init(CDPDaemonConnection);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__CDPWalrusStateController_walrusStatus___block_invoke;
  v12[3] = &unk_1E869D758;
  v12[4] = &v13;
  v7 = [(CDPDaemonConnection *)v6 synchronousDaemonWithErrorHandler:v12];
  context = self->_context;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __41__CDPWalrusStateController_walrusStatus___block_invoke_27;
  v11[3] = &unk_1E869D780;
  v11[4] = &v13;
  v11[5] = &v19;
  [v7 walrusStatusWithContext:context completion:v11];
  if (a3)
  {
    *a3 = v14[5];
  }

  [(CDPWalrusStateController *)self _startObservingWalrusStateChangeNotification];
  v9 = v20[3];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
  os_activity_scope_leave(&state);

  return v9;
}

void __41__CDPWalrusStateController_walrusStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__CDPWalrusStateController_walrusStatusWithCompletion___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __41__CDPWalrusStateController_walrusStatus___block_invoke_27(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __41__CDPWalrusStateController_walrusStatus___block_invoke_27_cold_1();
    }
  }

  else
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __55__CDPWalrusStateController_walrusStatusWithCompletion___block_invoke_25_cold_2();
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)combinedWalrusStatusWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_1DED99000, "Walrus: Fetching combined status.", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v6 = objc_alloc_init(CDPDaemonConnection);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__CDPWalrusStateController_combinedWalrusStatusWithCompletion___block_invoke;
  v16[3] = &unk_1E869D588;
  v7 = v4;
  v17 = v7;
  v8 = [(CDPDaemonConnection *)v6 daemonWithErrorHandler:v16];
  context = self->_context;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __63__CDPWalrusStateController_combinedWalrusStatusWithCompletion___block_invoke_29;
  v14 = &unk_1E869D7A8;
  v10 = v7;
  v15 = v10;
  [v8 combinedWalrusStatusWithContext:context completion:&v11];
  [(CDPWalrusStateController *)self _startObservingWalrusStateChangeNotification:v11];

  os_activity_scope_leave(&state);
}

void __63__CDPWalrusStateController_combinedWalrusStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__CDPWalrusStateController_combinedWalrusStatusWithCompletion___block_invoke_cold_1();
  }

  v5 = objc_alloc_init(CDPCombinedWalrusStatus);
  (*(*(a1 + 32) + 16))();
}

void __63__CDPWalrusStateController_combinedWalrusStatusWithCompletion___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__CDPWalrusStateController_combinedWalrusStatusWithCompletion___block_invoke_29_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __63__CDPWalrusStateController_combinedWalrusStatusWithCompletion___block_invoke_29_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

- (id)combinedWalrusStatus:(id *)a3
{
  v5 = _os_activity_create(&dword_1DED99000, "Walrus: Fetching combined status.", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v6 = objc_alloc_init(CDPDaemonConnection);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__CDPWalrusStateController_combinedWalrusStatus___block_invoke;
  v12[3] = &unk_1E869D758;
  v12[4] = &v13;
  v7 = [(CDPDaemonConnection *)v6 synchronousDaemonWithErrorHandler:v12];
  context = self->_context;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__CDPWalrusStateController_combinedWalrusStatus___block_invoke_31;
  v11[3] = &unk_1E869D7D0;
  v11[4] = &v13;
  v11[5] = &v19;
  [v7 combinedWalrusStatusWithContext:context completion:v11];
  if (a3)
  {
    *a3 = v14[5];
  }

  v9 = v20[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  os_activity_scope_leave(&state);

  return v9;
}

void __49__CDPWalrusStateController_combinedWalrusStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__CDPWalrusStateController_combinedWalrusStatusWithCompletion___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __49__CDPWalrusStateController_combinedWalrusStatus___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__CDPWalrusStateController_combinedWalrusStatusWithCompletion___block_invoke_29_cold_1();
    }
  }

  else
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __49__CDPWalrusStateController_combinedWalrusStatus___block_invoke_31_cold_2(a1, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(*(a1 + 40) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v5;
}

- (void)repairWalrusStatusWithCompletion:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&dword_1DED99000, "Walrus: Repair walrus status.", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = objc_alloc_init(CDPDaemonConnection);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__CDPWalrusStateController_repairWalrusStatusWithCompletion___block_invoke;
  v11[3] = &unk_1E869D588;
  v6 = v3;
  v12 = v6;
  v7 = [(CDPDaemonConnection *)v5 daemonWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CDPWalrusStateController_repairWalrusStatusWithCompletion___block_invoke_32;
  v9[3] = &unk_1E869D588;
  v8 = v6;
  v10 = v8;
  [v7 repairWalrusWithCompletion:v9];

  os_activity_scope_leave(&state);
}

void __61__CDPWalrusStateController_repairWalrusStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__CDPWalrusStateController_repairWalrusStatusWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __61__CDPWalrusStateController_repairWalrusStatusWithCompletion___block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _CDPLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__CDPWalrusStateController_repairWalrusStatusWithCompletion___block_invoke_32_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)broadcastWalrusStateChange
{
  v3 = objc_alloc_init(CDPDaemonConnection);
  v2 = [(CDPDaemonConnection *)v3 synchronousDaemonWithErrorHandler:&__block_literal_global_2];
  [v2 broadcastWalrusStateChange];
}

void __54__CDPWalrusStateController_broadcastWalrusStateChange__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __55__CDPWalrusStateController_walrusStatusWithCompletion___block_invoke_cold_1();
  }
}

- (id)_makeAnalyticsEvent:(unint64_t)a3 state:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E6985DB0] analyticsEventWithContext:self->_context eventName:@"com.apple.corecdp.walrusStateChange" category:0x1F5A168E0];
  v11 = v10;
  v12 = *MEMORY[0x1E6985E40];
  if (v9)
  {
    [v10 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v12];
    [v11 populateUnderlyingErrorsStartingWithRootError:v9];
  }

  else
  {
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v12];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v11 setObject:v13 forKeyedSubscript:@"targetWalrusStatus"];

  if (v8)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "escrowWalrusStatus")}];
    [v11 setObject:v14 forKeyedSubscript:@"escrowWalrusStatus"];

    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "octagonWalrusStatus")}];
    [v11 setObject:v15 forKeyedSubscript:@"octagonWalrusStatus"];

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "pcsWalrusStatus")}];
    [v11 setObject:v16 forKeyedSubscript:@"pcsWalrusStatus"];
  }

  return v11;
}

- (void)updateWalrusStatus:(unint64_t)a3 authenticatedContext:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = _os_activity_create(&dword_1DED99000, "Walrus: Updating status", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  v11 = objc_alloc_init(CDPDaemonConnection);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__CDPWalrusStateController_updateWalrusStatus_authenticatedContext_completion___block_invoke;
  v18[3] = &unk_1E869D7F8;
  v18[4] = self;
  v20 = a3;
  v12 = v9;
  v19 = v12;
  v13 = [(CDPDaemonConnection *)v11 daemonWithErrorHandler:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__CDPWalrusStateController_updateWalrusStatus_authenticatedContext_completion___block_invoke_36;
  v15[3] = &unk_1E869D820;
  v15[4] = self;
  v17 = a3;
  v14 = v12;
  v16 = v14;
  [v13 updateWalrusStatus:a3 authenticatedContext:v8 completion:v15];

  os_activity_scope_leave(&state);
}

void __79__CDPWalrusStateController_updateWalrusStatus_authenticatedContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__CDPWalrusStateController_updateWalrusStatus_authenticatedContext_completion___block_invoke_cold_1();
  }

  v5 = [*(a1 + 32) _makeAnalyticsEvent:*(a1 + 48) state:0 error:v3];
  v6 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
  [v6 sendEvent:v5];

  (*(*(a1 + 40) + 16))();
}

void __79__CDPWalrusStateController_updateWalrusStatus_authenticatedContext_completion___block_invoke_36(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _CDPLogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __79__CDPWalrusStateController_updateWalrusStatus_authenticatedContext_completion___block_invoke_36_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Walrus status update has been completed successfully.", v11, 2u);
  }

  v9 = [*(a1 + 32) _makeAnalyticsEvent:*(a1 + 48) state:v6 error:v5];

  v10 = +[CDPAnalyticsReporterRTC rtcAnalyticsReporter];
  [v10 sendEvent:v9];

  (*(*(a1 + 40) + 16))();
}

- (void)pcsKeysForServices:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _os_activity_create(&dword_1DED99000, "Walrus: Fetch PCS Identities", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = objc_alloc_init(CDPDaemonConnection);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__CDPWalrusStateController_pcsKeysForServices_completion___block_invoke;
  v16[3] = &unk_1E869D588;
  v9 = v6;
  v17 = v9;
  v10 = [(CDPDaemonConnection *)v8 daemonWithErrorHandler:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__CDPWalrusStateController_pcsKeysForServices_completion___block_invoke_38;
  v13[3] = &unk_1E869D848;
  v11 = v5;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  [v10 pcsKeysForServices:v11 completion:v13];

  os_activity_scope_leave(&state);
}

void __58__CDPWalrusStateController_pcsKeysForServices_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__CDPWalrusStateController_pcsKeysForServices_completion___block_invoke_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
  (*(v5 + 16))(v5, v6, v3);
}

void __58__CDPWalrusStateController_pcsKeysForServices_completion___block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__CDPWalrusStateController_pcsKeysForServices_completion___block_invoke_38_cold_1(a1, v6, v7);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __55__CDPWalrusStateController_walrusStatusWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "XPC Error while fetching walrus status: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__CDPWalrusStateController_walrusStatusWithCompletion___block_invoke_25_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to fetch walrus status with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__CDPWalrusStateController_walrusStatusWithCompletion___block_invoke_25_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_1DED99000, v0, v1, "Walrus status - %lu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __41__CDPWalrusStateController_walrusStatus___block_invoke_27_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to fetch walrus status with error - %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__CDPWalrusStateController_combinedWalrusStatusWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "XPC Error while fetching walrus combined status: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__CDPWalrusStateController_combinedWalrusStatusWithCompletion___block_invoke_29_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to fetch walrus combined status with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__CDPWalrusStateController_combinedWalrusStatusWithCompletion___block_invoke_29_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_1DED99000, v0, v1, "Walrus combined status %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __49__CDPWalrusStateController_combinedWalrusStatus___block_invoke_31_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(*(*(a1 + 40) + 8) + 40));
  OUTLINED_FUNCTION_2(&dword_1DED99000, a2, a3, "Walrus combined status %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __61__CDPWalrusStateController_repairWalrusStatusWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "XPC Error while repairing walrus status: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__CDPWalrusStateController_repairWalrusStatusWithCompletion___block_invoke_32_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to repair walrus status with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __79__CDPWalrusStateController_updateWalrusStatus_authenticatedContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "XPC Error while updating walrus status: %{public}@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __79__CDPWalrusStateController_updateWalrusStatus_authenticatedContext_completion___block_invoke_36_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to update walrus status with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__CDPWalrusStateController_pcsKeysForServices_completion___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "XPC Error while fetching PCS identities - %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void __58__CDPWalrusStateController_pcsKeysForServices_completion___block_invoke_38_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = [a2 description];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1DED99000, a3, OS_LOG_TYPE_ERROR, "Failed to fetch PCS identities for services %@ with error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end