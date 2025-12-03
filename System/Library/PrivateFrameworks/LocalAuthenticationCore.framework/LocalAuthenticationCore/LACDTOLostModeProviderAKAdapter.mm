@interface LACDTOLostModeProviderAKAdapter
- (LACDTOLostModeProviderAKAdapter)initWithWorkQueue:(id)queue deviceInfo:(id)info;
- (void)_lostModeStateWithCompletion:(id)completion;
- (void)lostModeStateWithCompletion:(id)completion;
@end

@implementation LACDTOLostModeProviderAKAdapter

- (LACDTOLostModeProviderAKAdapter)initWithWorkQueue:(id)queue deviceInfo:(id)info
{
  queueCopy = queue;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = LACDTOLostModeProviderAKAdapter;
  v9 = [(LACDTOLostModeProviderAKAdapter *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_workQueue, queue);
    objc_storeStrong(&v10->_deviceInfo, info);
  }

  return v10;
}

- (void)lostModeStateWithCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  lostModeState = self->_lostModeState;
  if (lostModeState)
  {
    v6 = [MEMORY[0x1E695DF00] now];
    v7 = [(LACDTOLostModeState *)lostModeState isValid:v6];

    if (v7)
    {
      v8 = LACLogDTOLostMode();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = self->_lostModeState;
        *buf = 138543618;
        selfCopy2 = self;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ will use cached value %@", buf, 0x16u);
      }

      completionCopy[2](completionCopy, self->_lostModeState);
      goto LABEL_11;
    }

    v10 = self->_lostModeState;
  }

  else
  {
    v10 = 0;
  }

  self->_lostModeState = 0;

  v11 = LACLogDTOLostMode();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ will start query", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__LACDTOLostModeProviderAKAdapter_lostModeStateWithCompletion___block_invoke;
  v13[3] = &unk_1E7A96880;
  objc_copyWeak(&v15, buf);
  v14 = completionCopy;
  [(LACDTOLostModeProviderAKAdapter *)self _lostModeStateWithCompletion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
}

void __63__LACDTOLostModeProviderAKAdapter_lostModeStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__LACDTOLostModeProviderAKAdapter_lostModeStateWithCompletion___block_invoke_2;
    v10[3] = &unk_1E7A96858;
    v11 = v6;
    v12 = v8;
    v14 = *(a1 + 32);
    v13 = v5;
    dispatch_async(v9, v10);
  }
}

void __63__LACDTOLostModeProviderAKAdapter_lostModeStateWithCompletion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = LACLogDTOLostMode();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__LACDTOLostModeProviderAKAdapter_lostModeStateWithCompletion___block_invoke_2_cold_1(a1, v2, v5);
    }

    v6 = *(a1 + 56);
    v7 = +[LACDTOLostModeState nullInstance];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v12 = 138543618;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish query with value: %@", &v12, 0x16u);
    }

    objc_storeStrong((*(a1 + 40) + 16), *(a1 + 48));
    v10 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_lostModeStateWithCompletion:(id)completion
{
  v20[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (getAKDeviceListRequestContextClass() && getAKAccountManagerClass() && getAKAppleIDAuthenticationControllerClass())
  {
    serialNumber = [(LACDTODeviceInfoProvider *)self->_deviceInfo serialNumber];
    v6 = serialNumber;
    if (serialNumber && [serialNumber length])
    {
      sharedInstance = [getAKAccountManagerClass() sharedInstance];
      sharedInstance2 = [getAKAccountManagerClass() sharedInstance];
      primaryAuthKitAccount = [sharedInstance2 primaryAuthKitAccount];
      v10 = [sharedInstance altDSIDForAccount:primaryAuthKitAccount];

      if (v10 && [v10 length])
      {
        v11 = objc_alloc_init(getAKDeviceListRequestContextClass());
        [v11 setAltDSID:v10];
        v20[0] = v6;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
        [v11 setSerialNumbers:v12];

        [v11 setFetchDeviceSafetyState:1];
        v13 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __64__LACDTOLostModeProviderAKAdapter__lostModeStateWithCompletion___block_invoke;
        v16[3] = &unk_1E7A968D0;
        v19 = completionCopy;
        v17 = v6;
        v18 = v13;
        v14 = v13;
        [v14 deviceListWithContext:v11 completion:v16];
      }

      else
      {
        v11 = [LACError errorWithCode:-1000 debugDescription:@"Could not determine altDISD for account"];
        (*(completionCopy + 2))(completionCopy, 0, v11);
      }
    }

    else
    {
      v10 = [LACError errorWithCode:-1000 debugDescription:@"Could not determine device SN"];
      (*(completionCopy + 2))(completionCopy, 0, v10);
    }
  }

  else
  {
    v6 = [LACError errorWithCode:-1020 debugDescription:@"Missing AuthKit dependencies"];
    (*(completionCopy + 2))(completionCopy, 0, v6);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __64__LACDTOLostModeProviderAKAdapter__lostModeStateWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v7 = [v5 deviceList];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __64__LACDTOLostModeProviderAKAdapter__lostModeStateWithCompletion___block_invoke_2;
    v18[3] = &unk_1E7A968A8;
    v19 = *(a1 + 32);
    v8 = [v7 indexOfObjectPassingTest:v18];

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = *(a1 + 48);
      v10 = [LACError errorWithCode:-1000 debugDescription:@"Could not determine safety state. Device not found."];
      (*(v9 + 16))(v9, 0, v10);
    }

    else
    {
      v11 = [v6 deviceList];
      v10 = [v11 objectAtIndex:v8];

      v12 = [v10 deviceRestrictionState];
      v13 = v12;
      if (v12)
      {
        v14 = [v12 reason] != 1;
        v15 = *(a1 + 48);
        v16 = [[LACDTOLostModeState alloc] initWithIsInLostMode:v14 confirmed:1];
        (*(v15 + 16))(v15, v16, 0);
      }

      else
      {
        v17 = *(a1 + 48);
        v16 = [LACError errorWithCode:-1000 debugDescription:@"Could not determine safety state. Missing value"];
        (*(v17 + 16))(v17, 0, v16);
      }
    }
  }
}

uint64_t __64__LACDTOLostModeProviderAKAdapter__lostModeStateWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = [a2 serialNumber];
  *a4 = [v6 isEqualToString:*(a1 + 32)];

  return *a4;
}

void __63__LACDTOLostModeProviderAKAdapter_lostModeStateWithCompletion___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = *a2;
  v6 = 138543618;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  _os_log_error_impl(&dword_1B0233000, log, OS_LOG_TYPE_ERROR, "%{public}@ did finish query with error: %{public}@", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end