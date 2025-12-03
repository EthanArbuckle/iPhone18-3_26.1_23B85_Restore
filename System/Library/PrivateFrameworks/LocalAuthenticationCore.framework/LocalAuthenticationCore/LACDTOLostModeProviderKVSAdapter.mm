@interface LACDTOLostModeProviderKVSAdapter
- (LACDTOLostModeProviderKVSAdapter)initWithKVStore:(id)store;
- (void)lostModeStateWithCompletion:(id)completion;
@end

@implementation LACDTOLostModeProviderKVSAdapter

- (LACDTOLostModeProviderKVSAdapter)initWithKVStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = LACDTOLostModeProviderKVSAdapter;
  v6 = [(LACDTOLostModeProviderKVSAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_kvStore, store);
  }

  return v7;
}

- (void)lostModeStateWithCompletion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = LACLogDTOLostMode();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will start query", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  kvStore = self->_kvStore;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__LACDTOLostModeProviderKVSAdapter_lostModeStateWithCompletion___block_invoke;
  v9[3] = &unk_1E7A959C0;
  objc_copyWeak(&v11, buf);
  v7 = completionCopy;
  v10 = v7;
  [(LACDTOKVStore *)kvStore valueForKey:2 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x1E69E9840];
}

void __64__LACDTOLostModeProviderKVSAdapter_lostModeStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = LACLogDTOLostMode();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __86__LACDTOLocationProviderPersistenceDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke_3_cold_1(WeakRetained, v6, v9);
      }

      v10 = *(a1 + 32);
      v11 = +[LACDTOLostModeState nullInstance];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = WeakRetained;
        _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish query", &v14, 0xCu);
      }

      v10 = *(a1 + 32);
      v11 = -[LACDTOLostModeState initWithIsInLostMode:]([LACDTOLostModeState alloc], "initWithIsInLostMode:", [v5 BOOLValue]);
    }

    v12 = v11;
    (*(v10 + 16))(v10, v11);
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end