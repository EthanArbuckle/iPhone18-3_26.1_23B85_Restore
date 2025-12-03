@interface CDPKeychainSync
+ (BOOL)isUserVisibleKeychainSyncEnabled;
+ (void)removeNonViewAwarePeersFromCircleWithContext:(id)context completion:(id)completion;
+ (void)synchronizeKeychainSyncForContext:(id)context withCompletion:(id)completion;
@end

@implementation CDPKeychainSync

+ (BOOL)isUserVisibleKeychainSyncEnabled
{
  v2 = _os_activity_create(&dword_1DED99000, "cdp: Keychain Status Check", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  v3 = objc_alloc_init(CDPDaemonConnection);
  v4 = [(CDPDaemonConnection *)v3 synchronousDaemonWithErrorHandler:&__block_literal_global_9];
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "Checking user-visible keychain sync status", buf, 2u);
  }

  *buf = 0;
  v10 = buf;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__CDPKeychainSync_isUserVisibleKeychainSyncEnabled__block_invoke_17;
  v8[3] = &unk_1E869DD10;
  v8[4] = buf;
  [v4 isUserVisibleKeychainSyncEnabledWithCompletion:v8];
  connection = [(CDPDaemonConnection *)v3 connection];
  [connection invalidate];

  LOBYTE(connection) = v10[24];
  _Block_object_dispose(buf, 8);

  os_activity_scope_leave(&state);
  return connection;
}

void __51__CDPKeychainSync_isUserVisibleKeychainSyncEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _CDPLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __51__CDPKeychainSync_isUserVisibleKeychainSyncEnabled__block_invoke_cold_1();
  }
}

void __51__CDPKeychainSync_isUserVisibleKeychainSyncEnabled__block_invoke_17(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"DISABLED";
    if (a2)
    {
      v5 = @"ENABLED";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1DED99000, v4, OS_LOG_TYPE_DEFAULT, "User-visible keychain sync status is %@", &v7, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v6 = *MEMORY[0x1E69E9840];
}

void __68__CDPKeychainSync_setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__CDPKeychainSync_isUserVisibleKeychainSyncEnabled__block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __68__CDPKeychainSync_setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke_25(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 48))
      {
        v8 = @"ENABLED";
      }

      else
      {
        v8 = @"DISABLED";
      }

      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&dword_1DED99000, v7, OS_LOG_TYPE_DEFAULT, "User-visibile keychain sync set to %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __68__CDPKeychainSync_setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke_25_cold_1(a1, v5, v7);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__CDPKeychainSync_setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke_26;
  v12[3] = &unk_1E869DD38;
  v9 = *(a1 + 40);
  v16 = a2;
  v15 = v9;
  v13 = v5;
  v14 = *(a1 + 32);
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __68__CDPKeychainSync_setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke_26(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 56), *(a1 + 32));
  }

  v3 = [*(a1 + 40) connection];
  [v3 invalidate];
}

+ (void)removeNonViewAwarePeersFromCircleWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v7 = _os_activity_create(&dword_1DED99000, "cdp: Remove Legacy Peers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = objc_alloc_init(CDPDaemonConnection);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__CDPKeychainSync_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke;
  v17[3] = &unk_1E869D588;
  v9 = completionCopy;
  v18 = v9;
  v10 = [(CDPDaemonConnection *)v8 daemonWithErrorHandler:v17];
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[CDPKeychainSync removeNonViewAwarePeersFromCircleWithContext:completion:];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__CDPKeychainSync_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke_29;
  v14[3] = &unk_1E869DD88;
  v12 = v9;
  v16 = v12;
  v13 = v8;
  v15 = v13;
  [v10 removeNonViewAwarePeersFromCircleWithContext:contextCopy completion:v14];

  os_activity_scope_leave(&state);
}

void __75__CDPKeychainSync_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__CDPKeychainSync_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __75__CDPKeychainSync_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke_29(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __75__CDPKeychainSync_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke_29_cold_2();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __75__CDPKeychainSync_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke_29_cold_1();
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__CDPKeychainSync_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke_30;
  v10[3] = &unk_1E869DD38;
  v8 = *(a1 + 40);
  v14 = a2;
  v13 = v8;
  v11 = v5;
  v12 = *(a1 + 32);
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __75__CDPKeychainSync_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke_30(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 56), *(a1 + 32));
  }

  v3 = [*(a1 + 40) connection];
  [v3 invalidate];
}

+ (void)synchronizeKeychainSyncForContext:(id)context withCompletion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v7 = _os_activity_create(&dword_1DED99000, "cdp: Synchronize Keychain State", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  v8 = objc_alloc_init(CDPDaemonConnection);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__CDPKeychainSync_synchronizeKeychainSyncForContext_withCompletion___block_invoke;
  v17[3] = &unk_1E869D588;
  v9 = completionCopy;
  v18 = v9;
  v10 = [(CDPDaemonConnection *)v8 daemonWithErrorHandler:v17];
  v11 = _CDPLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[CDPKeychainSync removeNonViewAwarePeersFromCircleWithContext:completion:];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__CDPKeychainSync_synchronizeKeychainSyncForContext_withCompletion___block_invoke_31;
  v14[3] = &unk_1E869DD88;
  v12 = v9;
  v16 = v12;
  v13 = v8;
  v15 = v13;
  [v10 synchronizeUserVisibleKeychainSyncEligibilityForContext:contextCopy completion:v14];

  os_activity_scope_leave(&state);
}

void __68__CDPKeychainSync_synchronizeKeychainSyncForContext_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _CDPLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__CDPKeychainSync_synchronizeKeychainSyncForContext_withCompletion___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __68__CDPKeychainSync_synchronizeKeychainSyncForContext_withCompletion___block_invoke_31(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _CDPLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __68__CDPKeychainSync_synchronizeKeychainSyncForContext_withCompletion___block_invoke_31_cold_2();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __68__CDPKeychainSync_synchronizeKeychainSyncForContext_withCompletion___block_invoke_31_cold_1();
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__CDPKeychainSync_synchronizeKeychainSyncForContext_withCompletion___block_invoke_32;
  v10[3] = &unk_1E869DD38;
  v8 = *(a1 + 40);
  v14 = a2;
  v13 = v8;
  v11 = v5;
  v12 = *(a1 + 32);
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void __68__CDPKeychainSync_synchronizeKeychainSyncForContext_withCompletion___block_invoke_32(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 56), *(a1 + 32));
  }

  v3 = [*(a1 + 40) connection];
  [v3 invalidate];
}

void __51__CDPKeychainSync_isUserVisibleKeychainSyncEnabled__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "XPC Error while checking if user-visible keychain sync is enabled: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__CDPKeychainSync_setUserVisibleKeychainSyncEnabled_withCompletion___block_invoke_25_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = @"DISABLED";
  if (*(a1 + 48))
  {
    v3 = @"ENABLED";
  }

  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1DED99000, log, OS_LOG_TYPE_ERROR, "Failed to set user-visibile keychain sync set to %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __75__CDPKeychainSync_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "XPC Error while remove non-view-aware peers: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __75__CDPKeychainSync_removeNonViewAwarePeersFromCircleWithContext_completion___block_invoke_29_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to remove non-view-aware peers from the circle: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__CDPKeychainSync_synchronizeKeychainSyncForContext_withCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "XPC Error while synchronizing keychain state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__CDPKeychainSync_synchronizeKeychainSyncForContext_withCompletion___block_invoke_31_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, v0, v1, "Failed to synchronize keychain state with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end