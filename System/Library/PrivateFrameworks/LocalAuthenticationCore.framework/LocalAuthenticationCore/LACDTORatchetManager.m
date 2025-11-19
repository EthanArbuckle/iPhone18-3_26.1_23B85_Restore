@interface LACDTORatchetManager
- (BOOL)isFeatureAvailable;
- (BOOL)isFeatureEnabled;
- (BOOL)isFeatureStrictModeEnabled;
- (BOOL)isFeatureSupported;
- (BOOL)isSensorTrusted;
- (LACDTORatchetManager)initWithContextProvider:(id)a3;
- (LACDTORatchetState)ratchetState;
- (id)_remoteObjectProxyWithErrorHandler:(id)a3;
- (void)_performArmRequestWithIdentifier:(id)a3 context:(id)a4 options:(id)a5 completion:(id)a6;
- (void)addObserver:(id)a3;
- (void)cancelArmRequestWithIdentifier:(id)a3 reason:(id)a4 completion:(id)a5;
- (void)checkCanEnableFeatureWithCompletion:(id)a3;
- (void)disableFeatureStrictModeWithContext:(id)a3 completion:(id)a4;
- (void)disableFeatureWithContext:(id)a3 completion:(id)a4;
- (void)enableFeatureActivatingGracePeriodWithReply:(id)a3;
- (void)enableFeatureStrictModeWithCompletion:(id)a3;
- (void)enableFeatureWithReply:(id)a3;
- (void)notificationCenter:(id)a3 didReceiveNotification:(__CFString *)a4;
- (void)performArmRequestWithIdentifier:(id)a3 context:(id)a4 options:(id)a5 completion:(id)a6;
- (void)removeObserver:(id)a3;
- (void)reset;
- (void)stateCompositeInContext:(id)a3 completion:(id)a4;
- (void)stateCompositeWithCompletion:(id)a3;
- (void)stateInContext:(id)a3 completion:(id)a4;
- (void)stateWithCompletion:(id)a3;
@end

@implementation LACDTORatchetManager

- (LACDTORatchetManager)initWithContextProvider:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = LACDTORatchetManager;
  v5 = [(LACDTORatchetManager *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = v6;

    v8 = +[LACDarwinNotificationCenter sharedInstance];
    notificationCenter = v5->_notificationCenter;
    v5->_notificationCenter = v8;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__LACDTORatchetManager_initWithContextProvider___block_invoke;
    v13[3] = &unk_1E7A959E8;
    v14 = v4;
    v10 = __48__LACDTORatchetManager_initWithContextProvider___block_invoke(v13);
    remoteObjectProxy = v5->_remoteObjectProxy;
    v5->_remoteObjectProxy = v10;
  }

  return v5;
}

LACDTOServiceXPCClient *__48__LACDTORatchetManager_initWithContextProvider___block_invoke(uint64_t a1)
{
  v1 = [[LACDTORatchetEndpointProvider alloc] initWithContextProvider:*(a1 + 32)];
  v2 = [[LACDTOServiceXPCClient alloc] initWithEndpointProvider:v1];

  return v2;
}

- (BOOL)isFeatureEnabled
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = LACLogDTOClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[LACDTORatchetManager isFeatureEnabled]";
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v4 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:&__block_literal_global_3];
  v5 = [v4 isFeatureEnabled];

  v6 = LACLogDTOClient();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    if (v5)
    {
      v7 = "YES";
    }

    v10 = 136315138;
    v11 = v7;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "isFeatureEnabled returned %s", &v10, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isFeatureSupported
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = LACLogDTOClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[LACDTORatchetManager isFeatureSupported]";
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v4 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:&__block_literal_global_8];
  v5 = [v4 isFeatureSupported];

  v6 = LACLogDTOClient();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    if (v5)
    {
      v7 = "YES";
    }

    v10 = 136315394;
    v11 = "[LACDTORatchetManager isFeatureSupported]";
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%s returned %s", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isFeatureAvailable
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = LACLogDTOClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[LACDTORatchetManager isFeatureAvailable]";
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v4 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:&__block_literal_global_10];
  v5 = [v4 isFeatureAvailable];

  v6 = LACLogDTOClient();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    if (v5)
    {
      v7 = "YES";
    }

    v10 = 136315394;
    v11 = "[LACDTORatchetManager isFeatureAvailable]";
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%s returned %s", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isFeatureStrictModeEnabled
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = LACLogDTOClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[LACDTORatchetManager isFeatureStrictModeEnabled]";
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v4 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:&__block_literal_global_12];
  v5 = [v4 isFeatureStrictModeEnabled];

  v6 = LACLogDTOClient();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    if (v5)
    {
      v7 = "YES";
    }

    v10 = 136315394;
    v11 = "[LACDTORatchetManager isFeatureStrictModeEnabled]";
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%s returned %s", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isSensorTrusted
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = LACLogDTOClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[LACDTORatchetManager isSensorTrusted]";
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  v4 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:&__block_literal_global_14];
  v5 = [v4 isSensorTrusted];

  v6 = LACLogDTOClient();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    if (v5)
    {
      v7 = "YES";
    }

    v10 = 136315394;
    v11 = "[LACDTORatchetManager isSensorTrusted]";
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%s returned %s", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (LACDTORatchetState)ratchetState
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = LACLogDTOClient();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[LACDTORatchetManager ratchetState]";
    _os_log_impl(&dword_1B0233000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v4 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:&__block_literal_global_16];
  v5 = [v4 ratchetState];

  v6 = LACLogDTOClient();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[LACDTORatchetManager ratchetState]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%s returned %{public}@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)stateWithCompletion:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogDTOClient();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[LACDTORatchetManager stateWithCompletion:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__LACDTORatchetManager_stateWithCompletion___block_invoke;
  v13[3] = &unk_1E7A95A10;
  v6 = v4;
  v14 = v6;
  v7 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__LACDTORatchetManager_stateWithCompletion___block_invoke_17;
  v10[3] = &unk_1E7A95A38;
  objc_copyWeak(&v12, buf);
  v8 = v6;
  v11 = v8;
  [v7 ratchetStateWithCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x1E69E9840];
}

void __44__LACDTORatchetManager_stateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44__LACDTORatchetManager_stateWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __44__LACDTORatchetManager_stateWithCompletion___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = LACLogDTOClient();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __44__LACDTORatchetManager_stateWithCompletion___block_invoke_cold_1();
      }

      v10 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[LACDTORatchetManager stateWithCompletion:]_block_invoke";
        v14 = 2114;
        v15 = v5;
        _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "%s finished with state: %{public}@", &v12, 0x16u);
      }

      v10 = *(*(a1 + 32) + 16);
    }

    v10();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)stateCompositeWithCompletion:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogDTOClient();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[LACDTORatchetManager stateCompositeWithCompletion:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__LACDTORatchetManager_stateCompositeWithCompletion___block_invoke;
  v13[3] = &unk_1E7A95A10;
  v6 = v4;
  v14 = v6;
  v7 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__LACDTORatchetManager_stateCompositeWithCompletion___block_invoke_19;
  v10[3] = &unk_1E7A95A60;
  objc_copyWeak(&v12, buf);
  v8 = v6;
  v11 = v8;
  [v7 ratchetStateCompositeWithCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x1E69E9840];
}

void __53__LACDTORatchetManager_stateCompositeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __53__LACDTORatchetManager_stateCompositeWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __53__LACDTORatchetManager_stateCompositeWithCompletion___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = LACLogDTOClient();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __53__LACDTORatchetManager_stateCompositeWithCompletion___block_invoke_cold_1();
      }

      v10 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[LACDTORatchetManager stateCompositeWithCompletion:]_block_invoke";
        v14 = 2114;
        v15 = v5;
        _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "%s finished with state: %{public}@", &v12, 0x16u);
      }

      v10 = *(*(a1 + 32) + 16);
    }

    v10();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)checkCanEnableFeatureWithCompletion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogDTOClient();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[LACDTORatchetManager checkCanEnableFeatureWithCompletion:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__LACDTORatchetManager_checkCanEnableFeatureWithCompletion___block_invoke;
  v12[3] = &unk_1E7A95A10;
  v6 = v4;
  v13 = v6;
  v7 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__LACDTORatchetManager_checkCanEnableFeatureWithCompletion___block_invoke_21;
  v10[3] = &unk_1E7A95A88;
  v11 = v6;
  v8 = v6;
  [v7 checkCanEnableFeatureWithCompletion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __60__LACDTORatchetManager_checkCanEnableFeatureWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __60__LACDTORatchetManager_checkCanEnableFeatureWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __60__LACDTORatchetManager_checkCanEnableFeatureWithCompletion___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogDTOClient();
  v8 = 16 * (v6 != 0);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = 136315650;
    v11 = "[LACDTORatchetManager checkCanEnableFeatureWithCompletion:]_block_invoke";
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1B0233000, v7, v8, "%s finished with result: %{public}@, error: %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69E9840];
}

- (void)enableFeatureWithReply:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogDTOClient();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[LACDTORatchetManager enableFeatureWithReply:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__LACDTORatchetManager_enableFeatureWithReply___block_invoke;
  v12[3] = &unk_1E7A95A10;
  v6 = v4;
  v13 = v6;
  v7 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__LACDTORatchetManager_enableFeatureWithReply___block_invoke_23;
  v10[3] = &unk_1E7A95A88;
  v11 = v6;
  v8 = v6;
  [v7 enableFeatureWithCompletion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __47__LACDTORatchetManager_enableFeatureWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__LACDTORatchetManager_enableFeatureWithReply___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __47__LACDTORatchetManager_enableFeatureWithReply___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogDTOClient();
  v8 = 16 * (v6 != 0);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = 136315650;
    v11 = "[LACDTORatchetManager enableFeatureWithReply:]_block_invoke";
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1B0233000, v7, v8, "%s finished with result: %{public}@, error: %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69E9840];
}

- (void)enableFeatureActivatingGracePeriodWithReply:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogDTOClient();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[LACDTORatchetManager enableFeatureActivatingGracePeriodWithReply:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__LACDTORatchetManager_enableFeatureActivatingGracePeriodWithReply___block_invoke;
  v12[3] = &unk_1E7A95A10;
  v6 = v4;
  v13 = v6;
  v7 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__LACDTORatchetManager_enableFeatureActivatingGracePeriodWithReply___block_invoke_24;
  v10[3] = &unk_1E7A95A88;
  v11 = v6;
  v8 = v6;
  [v7 enableFeatureActivatingGracePeriodWithCompletion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __68__LACDTORatchetManager_enableFeatureActivatingGracePeriodWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__LACDTORatchetManager_enableFeatureActivatingGracePeriodWithReply___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __68__LACDTORatchetManager_enableFeatureActivatingGracePeriodWithReply___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogDTOClient();
  v8 = 16 * (v6 != 0);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = 136315650;
    v11 = "[LACDTORatchetManager enableFeatureActivatingGracePeriodWithReply:]_block_invoke";
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1B0233000, v7, v8, "%s finished with result: %{public}@, error: %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69E9840];
}

- (void)disableFeatureWithContext:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = LACLogDTOClient();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[LACDTORatchetManager disableFeatureWithContext:completion:]";
    _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__LACDTORatchetManager_disableFeatureWithContext_completion___block_invoke;
  v16[3] = &unk_1E7A95A10;
  v9 = v6;
  v17 = v9;
  v10 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v16];
  v11 = [v7 uuid];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__LACDTORatchetManager_disableFeatureWithContext_completion___block_invoke_25;
  v14[3] = &unk_1E7A95A10;
  v15 = v9;
  v12 = v9;
  [v10 disableFeatureWithContext:v11 completion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __61__LACDTORatchetManager_disableFeatureWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__LACDTORatchetManager_disableFeatureWithContext_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __61__LACDTORatchetManager_disableFeatureWithContext_completion___block_invoke_25(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogDTOClient();
  v5 = 16 * (v3 != 0);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 136315394;
    v8 = "[LACDTORatchetManager disableFeatureWithContext:completion:]_block_invoke";
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B0233000, v4, v5, "%s finished with error: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)enableFeatureStrictModeWithCompletion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogDTOClient();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[LACDTORatchetManager enableFeatureStrictModeWithCompletion:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__LACDTORatchetManager_enableFeatureStrictModeWithCompletion___block_invoke;
  v12[3] = &unk_1E7A95A10;
  v6 = v4;
  v13 = v6;
  v7 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__LACDTORatchetManager_enableFeatureStrictModeWithCompletion___block_invoke_26;
  v10[3] = &unk_1E7A95A10;
  v11 = v6;
  v8 = v6;
  [v7 enableFeatureStrictModeWithCompletion:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __62__LACDTORatchetManager_enableFeatureStrictModeWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__LACDTORatchetManager_enableFeatureStrictModeWithCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __62__LACDTORatchetManager_enableFeatureStrictModeWithCompletion___block_invoke_26(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogDTOClient();
  v5 = 16 * (v3 != 0);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 136315394;
    v8 = "[LACDTORatchetManager enableFeatureStrictModeWithCompletion:]_block_invoke";
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B0233000, v4, v5, "%s finished with error: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)disableFeatureStrictModeWithContext:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = LACLogDTOClient();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[LACDTORatchetManager disableFeatureStrictModeWithContext:completion:]";
    _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__LACDTORatchetManager_disableFeatureStrictModeWithContext_completion___block_invoke;
  v16[3] = &unk_1E7A95A10;
  v9 = v6;
  v17 = v9;
  v10 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v16];
  v11 = [v7 uuid];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__LACDTORatchetManager_disableFeatureStrictModeWithContext_completion___block_invoke_27;
  v14[3] = &unk_1E7A95A10;
  v15 = v9;
  v12 = v9;
  [v10 disableFeatureStrictModeWithContext:v11 completion:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __71__LACDTORatchetManager_disableFeatureStrictModeWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __71__LACDTORatchetManager_disableFeatureStrictModeWithContext_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __71__LACDTORatchetManager_disableFeatureStrictModeWithContext_completion___block_invoke_27(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogDTOClient();
  v5 = 16 * (v3 != 0);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 136315394;
    v8 = "[LACDTORatchetManager disableFeatureStrictModeWithContext:completion:]_block_invoke";
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B0233000, v4, v5, "%s finished with error: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogDTOClient();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[LACDTORatchetManager addObserver:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  [(NSHashTable *)self->_observers addObject:v4];
  if (![(LACDarwinNotificationCenter *)self->_notificationCenter hasObserver:self])
  {
    [(LACDarwinNotificationCenter *)self->_notificationCenter addObserver:self notification:@"com.apple.LocalAuthentication.ratchet.StateDidChange"];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogDTOClient();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[LACDTORatchetManager removeObserver:]";
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
  }

  [(NSHashTable *)self->_observers removeObject:v4];
  if (![(NSHashTable *)self->_observers count])
  {
    [(LACDarwinNotificationCenter *)self->_notificationCenter removeObserver:self];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)reset
{
  [(NSHashTable *)self->_observers removeAllObjects];
  notificationCenter = self->_notificationCenter;

  [(LACDarwinNotificationCenter *)notificationCenter removeObserver:self];
}

- (void)performArmRequestWithIdentifier:(id)a3 context:(id)a4 options:(id)a5 completion:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = LACLogDTOClient();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v20 = "[LACDTORatchetManager performArmRequestWithIdentifier:context:options:completion:]";
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v10;
    v25 = 2114;
    v26 = v12;
    _os_log_impl(&dword_1B0233000, v14, OS_LOG_TYPE_DEFAULT, "%s context:%{public}@ identifier:%{public}@ options:%{public}@", buf, 0x2Au);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__LACDTORatchetManager_performArmRequestWithIdentifier_context_options_completion___block_invoke;
  v17[3] = &unk_1E7A95A88;
  v18 = v13;
  v15 = v13;
  [(LACDTORatchetManager *)self _performArmRequestWithIdentifier:v10 context:v11 options:v12 completion:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __83__LACDTORatchetManager_performArmRequestWithIdentifier_context_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogDTOClient();
  v8 = 16 * (v6 != 0);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = 136315650;
    v11 = "[LACDTORatchetManager performArmRequestWithIdentifier:context:options:completion:]_block_invoke";
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1B0233000, v7, v8, "%s finished with result: %{public}@, error: %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69E9840];
}

- (void)stateInContext:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = LACLogDTOClient();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[LACDTORatchetManager stateInContext:completion:]";
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__LACDTORatchetManager_stateInContext_completion___block_invoke;
  v9[3] = &unk_1E7A95AB0;
  v10 = v5;
  v7 = v5;
  [(LACDTORatchetManager *)self stateWithCompletion:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __50__LACDTORatchetManager_stateInContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogDTOClient();
  v8 = 16 * (v6 != 0);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = 136315650;
    v11 = "[LACDTORatchetManager stateInContext:completion:]_block_invoke";
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1B0233000, v7, v8, "%s finished with result: %{public}@, error: %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69E9840];
}

- (void)stateCompositeInContext:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = LACLogDTOClient();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[LACDTORatchetManager stateCompositeInContext:completion:]";
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__LACDTORatchetManager_stateCompositeInContext_completion___block_invoke;
  v9[3] = &unk_1E7A95AD8;
  v10 = v5;
  v7 = v5;
  [(LACDTORatchetManager *)self stateCompositeWithCompletion:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __59__LACDTORatchetManager_stateCompositeInContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = LACLogDTOClient();
  v8 = 16 * (v6 != 0);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = 136315650;
    v11 = "[LACDTORatchetManager stateCompositeInContext:completion:]_block_invoke";
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_1B0233000, v7, v8, "%s finished with result: %{public}@, error: %{public}@", &v10, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x1E69E9840];
}

- (void)cancelArmRequestWithIdentifier:(id)a3 reason:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = LACLogDTOClient();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[LACDTORatchetManager cancelArmRequestWithIdentifier:reason:completion:]";
    v22 = 2114;
    v23 = v8;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%s identifier:%{public}@, reason:%{public}@", buf, 0x20u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __73__LACDTORatchetManager_cancelArmRequestWithIdentifier_reason_completion___block_invoke;
  v18[3] = &unk_1E7A95A10;
  v12 = v10;
  v19 = v12;
  v13 = [(LACDTORatchetManager *)self _remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__LACDTORatchetManager_cancelArmRequestWithIdentifier_reason_completion___block_invoke_28;
  v16[3] = &unk_1E7A95A10;
  v17 = v12;
  v14 = v12;
  [v13 cancelPendingEvaluationWithRatchetIdentifier:v8 reason:v9 completion:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __73__LACDTORatchetManager_cancelArmRequestWithIdentifier_reason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LACLogDTOClient();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__LACDTORatchetManager_cancelArmRequestWithIdentifier_reason_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __73__LACDTORatchetManager_cancelArmRequestWithIdentifier_reason_completion___block_invoke_28(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = LACLogDTOClient();
  v5 = 16 * (v3 != 0);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 136315394;
    v8 = "[LACDTORatchetManager cancelArmRequestWithIdentifier:reason:completion:]_block_invoke";
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_1B0233000, v4, v5, "%s finished with error: %{public}@", &v7, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_performArmRequestWithIdentifier:(id)a3 context:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  objc_initWeak(&location, self);
  v14 = [(LACDTORatchetManager *)self _armPolicy];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __84__LACDTORatchetManager__performArmRequestWithIdentifier_context_options_completion___block_invoke;
  v24[3] = &unk_1E7A95B00;
  v15 = v12;
  v25 = v15;
  v16 = v10;
  v26 = v16;
  v17 = __84__LACDTORatchetManager__performArmRequestWithIdentifier_context_options_completion___block_invoke(v24);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__LACDTORatchetManager__performArmRequestWithIdentifier_context_options_completion___block_invoke_2;
  v20[3] = &unk_1E7A95B50;
  objc_copyWeak(&v23, &location);
  v18 = v11;
  v21 = v18;
  v19 = v13;
  v22 = v19;
  [v18 evaluateCorePolicy:v14 options:v17 reply:v20];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

id __84__LACDTORatchetManager__performArmRequestWithIdentifier_context_options_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v5 = v4;

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:1066];
  [v5 setObject:v6 forKeyedSubscript:v7];

  return v5;
}

void __84__LACDTORatchetManager__performArmRequestWithIdentifier_context_options_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v8 = a1[4];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__LACDTORatchetManager__performArmRequestWithIdentifier_context_options_completion___block_invoke_3;
    v9[3] = &unk_1E7A95B28;
    objc_copyWeak(&v14, a1 + 6);
    v13 = a1[5];
    v10 = v6;
    v11 = a1[4];
    v12 = v5;
    [WeakRetained stateCompositeInContext:v8 completion:v9];

    objc_destroyWeak(&v14);
  }
}

void __84__LACDTORatchetManager__performArmRequestWithIdentifier_context_options_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v39[5] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v6)
    {
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = [v8 userInfo];
        v10 = [v9 mutableCopy];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = objc_opt_new();
        }

        v26 = v12;

        v27 = [v5 ratchetState];
        [v26 setObject:v27 forKeyedSubscript:@"RatchetState"];

        [v26 setObject:v5 forKeyedSubscript:@"RatchetStateComposite"];
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = [*(a1 + 32) domain];
        v30 = [v28 initWithDomain:v29 code:objc_msgSend(*(a1 + 32) userInfo:{"code"), v26}];

        (*(*(a1 + 56) + 16))();
      }

      else
      {
        v34 = *(a1 + 56);
        v37 = [MEMORY[0x1E696AD98] numberWithInteger:21];
        v38[0] = v37;
        v39[0] = *(a1 + 40);
        v36 = [MEMORY[0x1E696AD98] numberWithInteger:22];
        v38[1] = v36;
        v35 = [v5 ratchetState];
        v39[1] = v35;
        v33 = [MEMORY[0x1E696AD98] numberWithInteger:23];
        v38[2] = v33;
        v39[2] = v5;
        v32 = [MEMORY[0x1E696AD98] numberWithInteger:1];
        v38[3] = v32;
        v13 = *(a1 + 48);
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:1];
        v15 = [v13 objectForKeyedSubscript:v14];
        v16 = v15;
        v17 = MEMORY[0x1E695E110];
        if (v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = MEMORY[0x1E695E110];
        }

        v39[3] = v18;
        v19 = [MEMORY[0x1E696AD98] numberWithInteger:3];
        v38[4] = v19;
        v20 = *(a1 + 48);
        v21 = [MEMORY[0x1E696AD98] numberWithInteger:3];
        v22 = [v20 objectForKeyedSubscript:v21];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = v17;
        }

        v39[4] = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:5];
        (*(v34 + 16))(v34, v25, 0);
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)notificationCenter:(id)a3 didReceiveNotification:(__CFString *)a4
{
  if (self->_notificationCenter == a3)
  {
    v9[3] = v4;
    v9[4] = v5;
    if (LACDarwinNotificationsEqual(a4, @"com.apple.LocalAuthentication.ratchet.StateDidChange"))
    {
      objc_initWeak(v9, self);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __66__LACDTORatchetManager_notificationCenter_didReceiveNotification___block_invoke;
      v7[3] = &unk_1E7A95380;
      objc_copyWeak(&v8, v9);
      dispatch_async(MEMORY[0x1E69E96A0], v7);
      objc_destroyWeak(&v8);
      objc_destroyWeak(v9);
    }
  }
}

void __66__LACDTORatchetManager_notificationCenter_didReceiveNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __66__LACDTORatchetManager_notificationCenter_didReceiveNotification___block_invoke_2;
    v3[3] = &unk_1E7A95B78;
    objc_copyWeak(&v4, (a1 + 32));
    [WeakRetained stateWithCompletion:v3];
    objc_destroyWeak(&v4);
  }
}

void __66__LACDTORatchetManager_notificationCenter_didReceiveNotification___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (!a3 && WeakRetained)
  {
    v8 = LACLogDTOClient();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7[1] count];
      *buf = 67109378;
      v22 = v9;
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "Will notify %d observers about new state: %{public}@", buf, 0x12u);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v7[1];
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v16 + 1) + 8 * v14++) ratchetStateDidChange:{v5, v16}];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)_remoteObjectProxyWithErrorHandler:(id)a3
{
  remoteObjectProxy = self->_remoteObjectProxy;
  if (remoteObjectProxy)
  {
    v4 = remoteObjectProxy;
  }

  else
  {
    v6 = a3;
    v7 = [LACError errorWithCode:-1000 debugDescription:@"Platform not supported"];
    (*(a3 + 2))(v6, v7);
  }

  return remoteObjectProxy;
}

void __44__LACDTORatchetManager_stateWithCompletion___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__LACDTORatchetManager_stateCompositeWithCompletion___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __60__LACDTORatchetManager_checkCanEnableFeatureWithCompletion___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __47__LACDTORatchetManager_enableFeatureWithReply___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __68__LACDTORatchetManager_enableFeatureActivatingGracePeriodWithReply___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__LACDTORatchetManager_disableFeatureWithContext_completion___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__LACDTORatchetManager_enableFeatureStrictModeWithCompletion___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __71__LACDTORatchetManager_disableFeatureStrictModeWithContext_completion___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

void __73__LACDTORatchetManager_cancelArmRequestWithIdentifier_reason_completion___block_invoke_cold_1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_1(&dword_1B0233000, v0, v1, "%s finished with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end