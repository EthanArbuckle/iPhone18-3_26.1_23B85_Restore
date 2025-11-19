@interface LACDTORatchetHandler
- (LACDTORatchetHandler)initWithContextProvider:(id)a3 sep:(id)a4;
- (void)_ratchetStatusWithCompletion:(id)a3;
- (void)_resetRatchetWithCompletion:(id)a3;
- (void)ratchetStateCompositeWithCompletion:(id)a3;
- (void)ratchetStateWithCompletion:(id)a3;
- (void)restartRatchetWithIdentifier:(id)a3;
@end

@implementation LACDTORatchetHandler

- (LACDTORatchetHandler)initWithContextProvider:(id)a3 sep:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LACDTORatchetHandler;
  v9 = [(LACDTORatchetHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contextProvider, a3);
    objc_storeStrong(&v10->_sep, a4);
  }

  return v10;
}

- (void)restartRatchetWithIdentifier:(id)a3
{
  v4 = a3;
  contextProvider = self->_contextProvider;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__LACDTORatchetHandler_restartRatchetWithIdentifier___block_invoke;
  v7[3] = &unk_1E7A96C00;
  v8 = v4;
  v6 = v4;
  [(LACRemoteContextProviding *)contextProvider createContextWithCompletion:v7];
}

void __53__LACDTORatchetHandler_restartRatchetWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22[6] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v18 = v6;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:1066];
    v21[0] = v8;
    v22[0] = *(a1 + 32);
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:2];
    v21[1] = v9;
    v22[1] = &stru_1F2652748;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:1064];
    v21[2] = v10;
    v11 = objc_opt_new();
    v22[2] = v11;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:1063];
    v21[3] = v12;
    v22[3] = &stru_1F2652748;
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:1075];
    v21[4] = v13;
    v22[4] = MEMORY[0x1E695E118];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:1080];
    v21[5] = v14;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v22[5] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __53__LACDTORatchetHandler_restartRatchetWithIdentifier___block_invoke_3;
    v19[3] = &unk_1E7A96BD8;
    v20 = v5;
    v7 = v18;
    [v20 evaluatePolicy:1026 options:v16 uiDelegate:0 reply:v19];
  }

  else
  {
    v16 = LACLogDTO();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __53__LACDTORatchetHandler_restartRatchetWithIdentifier___block_invoke_cold_1(v7, v16);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __53__LACDTORatchetHandler_restartRatchetWithIdentifier___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = LACLogDTO();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Did finish security delay restart with result: %{public}@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)ratchetStateWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__LACDTORatchetHandler_ratchetStateWithCompletion___block_invoke;
  v6[3] = &unk_1E7A96C28;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(LACDTORatchetHandler *)self _ratchetStatusWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __51__LACDTORatchetHandler_ratchetStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v7 = objc_alloc_init(LACDTORatchetSEPStateParser);
      v8 = *(a1 + 32);
      v9 = [(LACDTORatchetSEPStateParser *)v7 ratchetStateFromState:v10];
      (*(v8 + 16))(v8, v9, 0);
    }
  }
}

- (void)ratchetStateCompositeWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__LACDTORatchetHandler_ratchetStateCompositeWithCompletion___block_invoke;
  v6[3] = &unk_1E7A96C28;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [(LACDTORatchetHandler *)self _ratchetStatusWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __60__LACDTORatchetHandler_ratchetStateCompositeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __60__LACDTORatchetHandler_ratchetStateCompositeWithCompletion___block_invoke_2;
      v9[3] = &unk_1E7A96C50;
      v10 = v5;
      v8 = __60__LACDTORatchetHandler_ratchetStateCompositeWithCompletion___block_invoke_2(v9);
      (*(*(a1 + 32) + 16))();
    }
  }
}

LACDTORatchetStateComposite *__60__LACDTORatchetHandler_ratchetStateCompositeWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(LACDTORatchetSEPStateParser);
  v3 = [(LACDTORatchetSEPStateParser *)v2 watchdogPackFromState:*(a1 + 32)];
  v4 = [(LACDTORatchetSEPStateParser *)v2 ratchetStateFromState:*(a1 + 32)];
  v5 = [(LACDTORatchetSEPStateParser *)v2 gracePeriodStateFromState:*(a1 + 32)];
  v6 = [[LACDTORatchetStateComposite alloc] initWithRatchetState:v4 gracePeriodState:v5 watchdogs:v3];

  return v6;
}

- (void)_resetRatchetWithCompletion:(id)a3
{
  v8 = 0;
  v3 = a3;
  v4 = [LACACMHelper resetRatchet:&v8];
  v5 = v8;
  v6 = v5;
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  (v3)[2](v3, v7);
}

- (void)_ratchetStatusWithCompletion:(id)a3
{
  sep = self->_sep;
  v7 = 0;
  v4 = a3;
  v5 = [(LACDTORatchetSEPInterface *)sep fetchConfigurationAndStatus:&v7];
  v6 = v7;
  v4[2](v4, v5, v6);
}

void __53__LACDTORatchetHandler_restartRatchetWithIdentifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Failed to create context for security delay restart: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end