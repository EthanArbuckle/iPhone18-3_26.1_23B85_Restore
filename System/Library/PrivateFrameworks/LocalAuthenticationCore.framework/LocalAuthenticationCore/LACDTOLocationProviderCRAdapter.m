@interface LACDTOLocationProviderCRAdapter
- (LACDTOLocationProviderCRAdapter)initWithWorkQueue:(id)a3;
- (int64_t)_locationStateRawValueFromLocationEnum:(int64_t)a3;
- (void)_checkIsInFamiliarLocationWithCompletion:(id)a3;
- (void)checkIsInFamiliarLocationWithCompletion:(id)a3;
@end

@implementation LACDTOLocationProviderCRAdapter

- (LACDTOLocationProviderCRAdapter)initWithWorkQueue:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = LACDTOLocationProviderCRAdapter;
  v6 = [(LACDTOLocationProviderCRAdapter *)&v14 init];
  if (v6)
  {
    if (getRTRoutineManagerClass())
    {
      v7 = [getRTRoutineManagerClass() defaultManager];
      manager = v6->_manager;
      v6->_manager = v7;
    }

    objc_storeStrong(&v6->_replyQueue, a3);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [LACConcurrencyUtilities createUserInitiatedSerialQueueWithIdentifier:v10];
    internalQueue = v6->_internalQueue;
    v6->_internalQueue = v11;
  }

  return v6;
}

- (void)checkIsInFamiliarLocationWithCompletion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_manager)
  {
    locationState = self->_locationState;
    if (locationState)
    {
      v6 = [MEMORY[0x1E695DF00] now];
      v7 = [(LACDTOLocationState *)locationState isValid:v6];

      if (v7)
      {
        v8 = LACLogDTOLocation();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = self->_locationState;
          *buf = 138543618;
          v19 = self;
          v20 = 2112;
          v21 = v9;
          _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ will use cached value %@", buf, 0x16u);
        }

        v4[2](v4, self->_locationState);
        goto LABEL_13;
      }

      v12 = self->_locationState;
    }

    else
    {
      v12 = 0;
    }

    self->_locationState = 0;

    objc_initWeak(buf, self);
    internalQueue = self->_internalQueue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __75__LACDTOLocationProviderCRAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke;
    v15[3] = &unk_1E7A957E8;
    objc_copyWeak(&v17, buf);
    v16 = v4;
    dispatch_async(internalQueue, v15);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
    goto LABEL_13;
  }

  v10 = LACLogDTOLocation();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [(LACDTOLocationProviderCRAdapter *)self checkIsInFamiliarLocationWithCompletion:v10];
  }

  v11 = +[LACDTOLocationState nullInstance];
  v4[2](v4, v11);

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
}

void __75__LACDTOLocationProviderCRAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __75__LACDTOLocationProviderCRAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_2;
    v3[3] = &unk_1E7A958A8;
    objc_copyWeak(&v5, (a1 + 40));
    v4 = *(a1 + 32);
    [WeakRetained _checkIsInFamiliarLocationWithCompletion:v3];

    objc_destroyWeak(&v5);
  }
}

void __75__LACDTOLocationProviderCRAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__LACDTOLocationProviderCRAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_3;
    block[3] = &unk_1E7A95568;
    objc_copyWeak(&v10, (a1 + 40));
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, block);

    objc_destroyWeak(&v10);
  }
}

void __75__LACDTOLocationProviderCRAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
    WeakRetained = v4;
  }
}

- (void)_checkIsInFamiliarLocationWithCompletion:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = LACLogDTOLocation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = self;
    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will start query", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = +[LACDTOSignpostEvent locationStatusQueryWillStart];
  [v6 send];

  manager = self->_manager;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__LACDTOLocationProviderCRAdapter__checkIsInFamiliarLocationWithCompletion___block_invoke;
  v10[3] = &unk_1E7A97090;
  objc_copyWeak(&v12, buf);
  v8 = v4;
  v11 = v8;
  [(RTRoutineManager *)manager fetchAuthorizedLocationStatus:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x1E69E9840];
}

void __76__LACDTOLocationProviderCRAdapter__checkIsInFamiliarLocationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[LACDTOSignpostEvent locationStatusQueryDidFinish];
  [v7 send];

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = LACLogDTOLocation();
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __76__LACDTOLocationProviderKVSAdapter_checkIsInFamiliarLocationWithCompletion___block_invoke_2_cold_1(WeakRetained, v6, v10);
      }

      v11 = *(a1 + 32);
      v12 = +[LACDTOLocationState nullInstance];
      (*(v11 + 16))(v11, v12);
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = WeakRetained;
        _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish query", &v16, 0xCu);
      }

      v13 = -[LACDTOLocationState initWithRawValue:confirmed:]([LACDTOLocationState alloc], "initWithRawValue:confirmed:", [WeakRetained _locationStateRawValueFromLocationEnum:{objc_msgSend(v5, "eStatus")}], 1);
      v14 = WeakRetained[2];
      WeakRetained[2] = v13;
      v12 = v13;

      (*(*(a1 + 32) + 16))(*(a1 + 32), v12);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (int64_t)_locationStateRawValueFromLocationEnum:(int64_t)a3
{
  if (a3 > 3)
  {
    v3 = &LACDTOLocationStateRawValueAwayFromFamiliarLocation;
  }

  else
  {
    v3 = off_1E7A970C8[a3];
  }

  return *v3;
}

- (void)checkIsInFamiliarLocationWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "%{public}@ Missing required RTRoutineManager dependency", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end