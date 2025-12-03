@interface CDPWebAccessStateController
- (unint64_t)webAccessStatus:(id *)status;
- (void)updateWebAccessStatus:(unint64_t)status completion:(id)completion;
- (void)webAccessStatusWithCompletion:(id)completion;
@end

@implementation CDPWebAccessStateController

- (void)webAccessStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = _os_activity_create(&dword_1DED99000, "Web access: Fetching status.", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v5 = objc_alloc_init(CDPDaemonConnection);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__CDPWebAccessStateController_webAccessStatusWithCompletion___block_invoke;
  v11[3] = &unk_1E869D588;
  v6 = completionCopy;
  v12 = v6;
  v7 = [(CDPDaemonConnection *)v5 daemonWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__CDPWebAccessStateController_webAccessStatusWithCompletion___block_invoke_17;
  v9[3] = &unk_1E869D730;
  v8 = v6;
  v10 = v8;
  [v7 webAccessStatusWithCompletion:v9];

  os_activity_scope_leave(&state);
}

void __61__CDPWebAccessStateController_webAccessStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__CDPWebAccessStateController_webAccessStatusWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __61__CDPWebAccessStateController_webAccessStatusWithCompletion___block_invoke_17(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__CDPWebAccessStateController_webAccessStatusWithCompletion___block_invoke_17_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a2;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "Web access status - %lu", &v9, 0xCu);
    }

    v7 = +[CDPWebAccessNotificationHandler sharedInstance];
    [v7 startObservingWebAccessStateChangeNotification];
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (unint64_t)webAccessStatus:(id *)status
{
  v4 = _os_activity_create(&dword_1DED99000, "Web access: Fetching status.", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v5 = objc_alloc_init(CDPDaemonConnection);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__CDPWebAccessStateController_webAccessStatus___block_invoke;
  v10[3] = &unk_1E869D758;
  v10[4] = &v11;
  v6 = [(CDPDaemonConnection *)v5 synchronousDaemonWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__CDPWebAccessStateController_webAccessStatus___block_invoke_20;
  v9[3] = &unk_1E869D780;
  v9[4] = &v11;
  v9[5] = &v17;
  [v6 webAccessStatusWithCompletion:v9];
  if (status)
  {
    *status = v12[5];
  }

  v7 = v18[3];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  os_activity_scope_leave(&state);

  return v7;
}

void __47__CDPWebAccessStateController_webAccessStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__CDPWebAccessStateController_webAccessStatusWithCompletion___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __47__CDPWebAccessStateController_webAccessStatus___block_invoke_20(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__CDPWebAccessStateController_webAccessStatus___block_invoke_20_cold_1();
    }
  }

  else
  {
    v8 = _CDPLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = a2;
      _os_log_impl(&dword_1DED99000, v8, OS_LOG_TYPE_DEFAULT, "Web access status - %lu", &v10, 0xCu);
    }

    v7 = +[CDPWebAccessNotificationHandler sharedInstance];
    [v7 startObservingWebAccessStateChangeNotification];
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v9 = *MEMORY[0x1E69E9840];
}

- (void)updateWebAccessStatus:(unint64_t)status completion:(id)completion
{
  completionCopy = completion;
  v6 = _os_activity_create(&dword_1DED99000, "Web access: Updating status", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  v7 = objc_alloc_init(CDPDaemonConnection);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__CDPWebAccessStateController_updateWebAccessStatus_completion___block_invoke;
  v13[3] = &unk_1E869D588;
  v8 = completionCopy;
  v14 = v8;
  v9 = [(CDPDaemonConnection *)v7 daemonWithErrorHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__CDPWebAccessStateController_updateWebAccessStatus_completion___block_invoke_21;
  v11[3] = &unk_1E869D588;
  v10 = v8;
  v12 = v10;
  [v9 updateWebAccessStatus:status completion:v11];

  os_activity_scope_leave(&state);
}

void __64__CDPWebAccessStateController_updateWebAccessStatus_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__CDPWebAccessStateController_updateWebAccessStatus_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __64__CDPWebAccessStateController_updateWebAccessStatus_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__CDPWebAccessStateController_updateWebAccessStatus_completion___block_invoke_21_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Web access status update has been completed successfully.", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __61__CDPWebAccessStateController_webAccessStatusWithCompletion___block_invoke_17_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __47__CDPWebAccessStateController_webAccessStatus___block_invoke_20_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __64__CDPWebAccessStateController_updateWebAccessStatus_completion___block_invoke_21_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "Failed to update web access status with error %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end