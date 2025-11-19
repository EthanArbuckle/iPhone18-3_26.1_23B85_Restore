@interface LACDTOLocationProviderPersistenceDecorator
- (LACDTOLocationProviderPersistenceDecorator)initWithLocationProvider:(id)a3 store:(id)a4 featureFlags:(id)a5 cacheEnabled:(BOOL)a6;
- (id)_kvsValueForLocationState:(id)a3;
- (void)checkIsInFamiliarLocationWithCompletion:(id)a3;
@end

@implementation LACDTOLocationProviderPersistenceDecorator

- (LACDTOLocationProviderPersistenceDecorator)initWithLocationProvider:(id)a3 store:(id)a4 featureFlags:(id)a5 cacheEnabled:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = LACDTOLocationProviderPersistenceDecorator;
  v14 = [(LACDTOLocationProviderPersistenceDecorator *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_locationProvider, a3);
    objc_storeStrong(&v15->_store, a4);
    objc_storeStrong(&v15->_featureFlags, a5);
    v15->_isCacheEnabled = a6;
    locationState = v15->_locationState;
    v15->_locationState = 0;
  }

  return v15;
}

- (void)checkIsInFamiliarLocationWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  locationProvider = self->_locationProvider;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __86__LACDTOLocationProviderPersistenceDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke;
  v7[3] = &unk_1E7A958A8;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(LACDTOLocationProvider *)locationProvider checkIsInFamiliarLocationWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __86__LACDTOLocationProviderPersistenceDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if (*(WeakRetained + 40) == 1 && (v7 = WeakRetained + 4, WeakRetained[4]) && (v8 = [v4 rawValue], v8 == objc_msgSend(*v7, "rawValue")))
    {
      objc_storeStrong(v6 + 4, a2);
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v9 = v6[2];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __86__LACDTOLocationProviderPersistenceDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke_2;
      v16[3] = &unk_1E7A96228;
      v16[4] = v6;
      v10 = v4;
      v17 = v10;
      v11 = __86__LACDTOLocationProviderPersistenceDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke_2(v16);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __86__LACDTOLocationProviderPersistenceDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke_3;
      v12[3] = &unk_1E7A96250;
      objc_copyWeak(&v15, (a1 + 40));
      v13 = v10;
      v14 = *(a1 + 32);
      [v9 processWriteRequest:v11 completion:v12];

      objc_destroyWeak(&v15);
    }
  }
}

LACDTOMutableKVStoreWriteRequest *__86__LACDTOLocationProviderPersistenceDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [LACDTOMutableKVStoreWriteRequest alloc];
  v3 = [*(a1 + 32) _kvsValueForLocationState:*(a1 + 40)];
  v4 = [(LACDTOMutableKVStoreWriteRequest *)v2 initWithKey:1 value:v3];

  [(LACDTOMutableKVStoreWriteRequest *)v4 setBypassEntitlements:1];

  return v4;
}

void __86__LACDTOLocationProviderPersistenceDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    if (v3)
    {
      v6 = LACLogDTOLocation();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __86__LACDTOLocationProviderPersistenceDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke_3_cold_1(WeakRetained, v3, v6);
      }

      v7 = +[LACDTOLocationState nullInstance];

      v5 = v7;
    }

    v8 = WeakRetained[4];
    WeakRetained[4] = v5;
    v9 = v5;

    (*(*(a1 + 40) + 16))();
  }
}

- (id)_kvsValueForLocationState:(id)a3
{
  v4 = a3;
  if ([v4 rawValue] == -1)
  {
    v5 = 0;
  }

  else
  {
    if ((-[LACFeatureFlagsProviderDTO featureFlagDimpleKeyZeroDelayRatchetEnabled](self->_featureFlags, "featureFlagDimpleKeyZeroDelayRatchetEnabled") & 1) != 0 || [v4 rawValue] != 2)
    {
      v9 = [LACDTOKVStoreValue alloc];
      v8 = [v4 rawValue];
      v7 = v9;
    }

    else
    {
      v6 = LACLogDTOLocation();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(LACDTOLocationProviderPersistenceDecorator *)self _kvsValueForLocationState:v6];
      }

      v7 = [LACDTOKVStoreValue alloc];
      v8 = LACDTOLocationStateRawValueAwayFromFamiliarLocation;
    }

    v5 = [(LACDTOKVStoreValue *)v7 initWithByte:v8];
  }

  return v5;
}

void __86__LACDTOLocationProviderPersistenceDecorator_checkIsInFamiliarLocationWithCompletion___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "%{public}@ did finish query with error %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_kvsValueForLocationState:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "%{public}@ RZD is disabled. Falling back to previous location value", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end