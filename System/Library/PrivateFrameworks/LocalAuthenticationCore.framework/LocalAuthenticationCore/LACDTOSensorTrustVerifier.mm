@interface LACDTOSensorTrustVerifier
- (LACDTOSensorTrustVerifier)initWithTrustStateProvider:(id)a3 featureStateProvider:(id)a4 repairStateProvider:(id)a5;
- (void)verifySensorTrustWithCompletion:(id)a3;
@end

@implementation LACDTOSensorTrustVerifier

- (LACDTOSensorTrustVerifier)initWithTrustStateProvider:(id)a3 featureStateProvider:(id)a4 repairStateProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = LACDTOSensorTrustVerifier;
  v12 = [(LACDTOSensorTrustVerifier *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_trustStateProvider, a3);
    objc_storeStrong(&v13->_featureStateProvider, a4);
    objc_storeStrong(&v13->_repairStateProvider, a5);
  }

  return v13;
}

- (void)verifySensorTrustWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(LACDTOSensorTrustVerifyService);
  featureStateProvider = self->_featureStateProvider;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke;
  v9[3] = &unk_1E7A962C8;
  objc_copyWeak(&v12, &location);
  v7 = v4;
  v11 = v7;
  v8 = v5;
  v10 = v8;
  [(LACDTOFeatureStateProviding *)featureStateProvider fetchStateWithCompletion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke_2;
    v7[3] = &unk_1E7A962A0;
    objc_copyWeak(&v11, a1 + 6);
    v10 = a1[5];
    v8 = a1[4];
    v9 = v3;
    [v6 fetchSensorTrustStateWithCompletion:v7];

    objc_destroyWeak(&v11);
  }
}

void __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = *(a1[6] + 2);
LABEL_9:
      v8();
      goto LABEL_10;
    }

    if (([a1[4] shouldVerifySensorTrustWithFeatureState:a1[5] trustState:v5] & 1) == 0)
    {
      v10 = LACLogDTOSensor();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "Skipping redundant repair checks", buf, 2u);
      }

      v8 = *(a1[6] + 2);
      goto LABEL_9;
    }

    v9 = WeakRetained[3];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke_1;
    v11[3] = &unk_1E7A96278;
    objc_copyWeak(&v16, a1 + 7);
    v15 = a1[6];
    v12 = a1[4];
    v13 = a1[5];
    v14 = v5;
    [v9 fetchRepairStateWithCompletion:v11];

    objc_destroyWeak(&v16);
  }

LABEL_10:
}

void __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke_1(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v6)
    {
      v13 = *MEMORY[0x1E696AA08];
      v14[0] = v6;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v9 = [LACError errorWithCode:-1 subcode:31 userInfo:v8];

      v10 = LACLogDTOSensor();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke_1_cold_1(v6, v9, v10);
      }

      v11 = *(*(a1 + 56) + 16);
    }

    else
    {
      v9 = [*(a1 + 32) verifySensorTrustWithFeatureState:*(a1 + 40) trustState:*(a1 + 48) repairState:v5];
      v11 = *(*(a1 + 56) + 16);
    }

    v11();
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __61__LACDTOSensorTrustVerifier_verifySensorTrustWithCompletion___block_invoke_1_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "Mapping %{public}@ into %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end