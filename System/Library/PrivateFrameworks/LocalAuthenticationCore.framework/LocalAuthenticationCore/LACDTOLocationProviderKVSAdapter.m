@interface LACDTOLocationProviderKVSAdapter
- (LACDTOLocationProviderKVSAdapter)initWithKVStore:(id)a3;
- (void)checkIsInFamiliarLocationWithCompletion:(id)a3;
@end

@implementation LACDTOLocationProviderKVSAdapter

- (LACDTOLocationProviderKVSAdapter)initWithKVStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACDTOLocationProviderKVSAdapter;
  v6 = [(LACDTOLocationProviderKVSAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_kvStore, a3);
  }

  return v7;
}

- (void)checkIsInFamiliarLocationWithCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogDTOLostMode();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = self;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will start query", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  kvStore = self->_kvStore;
  v7 = __76__LACDTOLocationProviderKVSAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__LACDTOLocationProviderKVSAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_2;
  v10[3] = &unk_1E7A959C0;
  objc_copyWeak(&v12, buf);
  v8 = v4;
  v11 = v8;
  [(LACDTOKVStore *)kvStore processReadRequest:v7 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x1E69E9840];
}

LACDTOMutableKVStoreReadRequest *__76__LACDTOLocationProviderKVSAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke()
{
  v0 = [[LACDTOMutableKVStoreReadRequest alloc] initWithKey:1];
  [(LACDTOMutableKVStoreReadRequest *)v0 setBypassEntitlements:1];

  return v0;
}

void __76__LACDTOLocationProviderKVSAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = LACLogDTOLocation();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __76__LACDTOLocationProviderKVSAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_2_cold_1(WeakRetained, v6, v8);
      }

      v9 = *(a1 + 32);
      v10 = +[LACDTOLocationState nullInstance];
      (*(v9 + 16))(v9, v10);
    }

    else
    {
      v11 = LACLogDTOLostMode();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = WeakRetained;
        _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish query", &v16, 0xCu);
      }

      if (v5)
      {
        v12 = [v5 data];
        if ([v12 length])
        {
          v13 = [v5 integerValue];
        }

        else
        {
          v13 = -1;
        }
      }

      else
      {
        v13 = -1;
      }

      v14 = *(a1 + 32);
      v10 = [[LACDTOLocationState alloc] initWithRawValue:v13 confirmed:0];
      (*(v14 + 16))(v14, v10);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __76__LACDTOLocationProviderKVSAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "%{public}@ did finish query with error: (%{public}@)", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end