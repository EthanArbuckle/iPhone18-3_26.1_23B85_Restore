@interface LACDTOFeatureController
- (LACDTOFeatureController)initWithKVStore:(id)store requirementsDataSource:(id)source featureFlags:(id)flags workQueue:(id)queue;
- (void)_checkIsFeatureEnabledWithCompletion:(id)completion;
- (void)_enableFeatureActivatingGracePeriod:(BOOL)period completion:(id)completion;
- (void)_fetchDeviceHintsCurrentConnection:(id)connection completion:(id)completion;
- (void)_fetchRequirementsWithCompletion:(id)completion;
- (void)_setFeatureEnablementMode:(id)mode context:(id)context connection:(id)connection completion:(id)completion;
- (void)_setFeatureStrictModeEnabled:(BOOL)enabled context:(id)context connection:(id)connection completion:(id)completion;
- (void)_setValue:(id)value forKey:(int64_t)key contextUUID:(id)d connection:(id)connection completion:(id)completion;
- (void)checkCanEnableFeatureWithCompletion:(id)completion;
- (void)checkIsFeatureAvailableWithCompletion:(id)completion;
- (void)checkIsFeatureEnabledWithCompletion:(id)completion;
- (void)checkIsFeatureStrictModeEnabledWithCompletion:(id)completion;
- (void)checkIsFeatureSupportedWithCompletion:(id)completion;
- (void)disableFeatureStrictModeWithContext:(id)context completion:(id)completion;
- (void)disableFeatureWithContext:(id)context completion:(id)completion;
- (void)enableFeatureActivatingGracePeriodWithCompletion:(id)completion;
- (void)enableFeatureStrictModeWithCompletion:(id)completion;
- (void)enableFeatureWithCompletion:(id)completion;
- (void)fetchStateWithCompletion:(id)completion;
@end

@implementation LACDTOFeatureController

- (LACDTOFeatureController)initWithKVStore:(id)store requirementsDataSource:(id)source featureFlags:(id)flags workQueue:(id)queue
{
  storeCopy = store;
  sourceCopy = source;
  flagsCopy = flags;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = LACDTOFeatureController;
  v15 = [(LACDTOFeatureController *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_kvStore, store);
    objc_storeStrong(&v16->_requirementsDataSource, source);
    objc_storeStrong(&v16->_featureFlags, flags);
    v17 = objc_alloc_init(LACDTOFeatureEnablementModeCoder);
    enablementModeCoder = v16->_enablementModeCoder;
    v16->_enablementModeCoder = v17;

    objc_storeStrong(&v16->_workQueue, queue);
  }

  return v16;
}

- (void)fetchStateWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__LACDTOFeatureController_fetchStateWithCompletion___block_invoke;
  v6[3] = &unk_1E7A97FB0;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(LACDTOFeatureController *)self checkIsFeatureSupportedWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __52__LACDTOFeatureController_fetchStateWithCompletion___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__LACDTOFeatureController_fetchStateWithCompletion___block_invoke_2;
    v6[3] = &unk_1E7A97F88;
    v6[4] = WeakRetained;
    v7 = *(a1 + 32);
    v8 = a2;
    [v5 checkIsFeatureAvailableWithCompletion:v6];
  }
}

void __52__LACDTOFeatureController_fetchStateWithCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__LACDTOFeatureController_fetchStateWithCompletion___block_invoke_3;
    v5[3] = &unk_1E7A97F60;
    v5[4] = v2;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = a2;
    [v2 checkIsFeatureEnabledWithCompletion:v5];
  }
}

void __52__LACDTOFeatureController_fetchStateWithCompletion___block_invoke_3(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__LACDTOFeatureController_fetchStateWithCompletion___block_invoke_4;
    v5[3] = &unk_1E7A97F38;
    v5[4] = v2;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = a2;
    [v2 checkIsFeatureStrictModeEnabledWithCompletion:v5];
  }
}

void __52__LACDTOFeatureController_fetchStateWithCompletion___block_invoke_4(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__LACDTOFeatureController_fetchStateWithCompletion___block_invoke_5;
    v5[3] = &unk_1E7A97F10;
    v5[4] = v2;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 49);
    v9 = a2;
    [v2 _fetchRequirementsWithCompletion:v5];
  }
}

void __52__LACDTOFeatureController_fetchStateWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__LACDTOFeatureController_fetchStateWithCompletion___block_invoke_6;
    v7[3] = &unk_1E7A97EE8;
    v9 = *(a1 + 48);
    v8 = v3;
    v6 = __52__LACDTOFeatureController_fetchStateWithCompletion___block_invoke_6(v7);
    (*(v5 + 16))(v5, v6);
  }
}

LACDTOMutableFeatureState *__52__LACDTOFeatureController_fetchStateWithCompletion___block_invoke_6(uint64_t a1)
{
  v2 = objc_alloc_init(LACDTOMutableFeatureState);
  [(LACDTOMutableFeatureState *)v2 setIsSupported:*(a1 + 40)];
  [(LACDTOMutableFeatureState *)v2 setIsAvailable:*(a1 + 41)];
  [(LACDTOMutableFeatureState *)v2 setIsEnabled:*(a1 + 42)];
  [(LACDTOMutableFeatureState *)v2 setIsStrictModeEnabled:*(a1 + 43)];
  [(LACDTOMutableFeatureState *)v2 setRequirements:*(a1 + 32)];

  return v2;
}

- (void)checkIsFeatureEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_workQueue);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__LACDTOFeatureController_checkIsFeatureEnabledWithCompletion___block_invoke;
  v6[3] = &unk_1E7A97FD8;
  v7 = completionCopy;
  v5 = completionCopy;
  [(LACDTOFeatureController *)self _checkIsFeatureEnabledWithCompletion:v6];
}

void __63__LACDTOFeatureController_checkIsFeatureEnabledWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 isEnabled], v5);
}

- (void)checkIsFeatureStrictModeEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_workQueue);
  objc_initWeak(&location, self);
  kvStore = self->_kvStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__LACDTOFeatureController_checkIsFeatureStrictModeEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7A959C0;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [(LACDTOKVStore *)kvStore valueForKey:4 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __73__LACDTOFeatureController_checkIsFeatureStrictModeEnabledWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = LACLogDTOFeature();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __73__LACDTOFeatureController_checkIsFeatureStrictModeEnabledWithCompletion___block_invoke_cold_1();
      }

      v10 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v5 BOOLValue];
        v12 = "NO";
        if (v11)
        {
          v12 = "YES";
        }

        v15 = 136315138;
        v16 = v12;
        _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "isFeatureStrictModeEnabled: %s", &v15, 0xCu);
      }

      v13 = *(a1 + 32);
      [v5 BOOLValue];
      v10 = *(v13 + 16);
    }

    v10();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)checkIsFeatureSupportedWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  workQueue = self->_workQueue;
  completionCopy = completion;
  dispatch_assert_queue_V2(workQueue);
  if ([(LACDTOFeatureRequirementsDataSource *)self->_requirementsDataSource isPhone])
  {
    v6 = LACLogDTOFeature();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "isFeatureSupported: YES", &v11, 2u);
    }

    completionCopy[2](completionCopy, 1, 0);
    v7 = completionCopy;
  }

  else
  {
    v8 = +[LACLocalization dtoErrorDeviceTypeNotSupported];
    v7 = [LACError errorWithCode:-1027 localizedDescription:v8];

    v9 = LACLogDTOFeature();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "isFeatureSupported: NO (%{public}@)", &v11, 0xCu);
    }

    (completionCopy)[2](completionCopy, 0, v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)checkIsFeatureAvailableWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_workQueue);
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__LACDTOFeatureController_checkIsFeatureAvailableWithCompletion___block_invoke;
  v6[3] = &unk_1E7A97FB0;
  objc_copyWeak(&v8, &location);
  v5 = completionCopy;
  v7 = v5;
  [(LACDTOFeatureController *)self checkIsFeatureSupportedWithCompletion:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __65__LACDTOFeatureController_checkIsFeatureAvailableWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (v5 || (a2 & 1) == 0)
    {
      v9 = *(*(a1 + 32) + 16);
LABEL_10:
      v9();
      goto LABEL_15;
    }

    if ([WeakRetained[2] hasPasscodeSetForCurrentUser])
    {
      if (([v7[2] hasBiometricEnrollmentsForCurrentUser] & 1) == 0)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __65__LACDTOFeatureController_checkIsFeatureAvailableWithCompletion___block_invoke_10;
        v14[3] = &unk_1E7A97C78;
        v15 = *(a1 + 32);
        [v7 checkIsFeatureEnabledWithCompletion:v14];

        goto LABEL_15;
      }

      v8 = LACLogDTOFeature();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "isFeatureAvailable: YES", buf, 2u);
      }

      v9 = *(*(a1 + 32) + 16);
      goto LABEL_10;
    }

    v10 = +[LACLocalization dtoErrorPasscodeNotSet];
    v11 = [LACError errorWithCode:-5 localizedDescription:v10];

    v12 = LACLogDTOFeature();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_1B0233000, v12, OS_LOG_TYPE_DEFAULT, "isFeatureAvailable: NO (%{public}@)", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

LABEL_15:

  v13 = *MEMORY[0x1E69E9840];
}

void __65__LACDTOFeatureController_checkIsFeatureAvailableWithCompletion___block_invoke_10(uint64_t a1, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a3 || !a2)
  {
    v5 = +[LACLocalization dtoErrorBiometryNotEnrolled];
    v6 = [LACError errorWithCode:-7 localizedDescription:v5];

    v7 = LACLogDTOFeature();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "isFeatureAvailable: NO (%{public}@)", &v9, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = LACLogDTOFeature();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "isFeatureAvailable = isFeatureEnabled = YES", &v9, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)checkCanEnableFeatureWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_workQueue);
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__LACDTOFeatureController_checkCanEnableFeatureWithCompletion___block_invoke;
  v8[3] = &unk_1E7A98000;
  objc_copyWeak(&v11, &location);
  v6 = completionCopy;
  v10 = v6;
  v7 = currentConnection;
  v9 = v7;
  [(LACDTOFeatureController *)self checkIsFeatureAvailableWithCompletion:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __63__LACDTOFeatureController_checkCanEnableFeatureWithCompletion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 && (a2 & 1) == 0)
    {
      __63__LACDTOFeatureController_checkCanEnableFeatureWithCompletion___block_invoke_cold_1();
    }

    if (v5)
    {
      v8 = LACLogDTOFeature();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v5;
        _os_log_impl(&dword_1B0233000, v8, OS_LOG_TYPE_DEFAULT, "isFeatureEnabled: NO (%{public}@)", &v10, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      [WeakRetained _fetchDeviceHintsCurrentConnection:*(a1 + 32) completion:*(a1 + 40)];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)enableFeatureWithCompletion:(id)completion
{
  workQueue = self->_workQueue;
  completionCopy = completion;
  dispatch_assert_queue_V2(workQueue);
  [(LACDTOFeatureController *)self _enableFeatureActivatingGracePeriod:0 completion:completionCopy];
}

- (void)enableFeatureActivatingGracePeriodWithCompletion:(id)completion
{
  workQueue = self->_workQueue;
  completionCopy = completion;
  dispatch_assert_queue_V2(workQueue);
  [(LACDTOFeatureController *)self _enableFeatureActivatingGracePeriod:1 completion:completionCopy];
}

- (void)disableFeatureWithContext:(id)context completion:(id)completion
{
  workQueue = self->_workQueue;
  completionCopy = completion;
  contextCopy = context;
  dispatch_assert_queue_V2(workQueue);
  v10 = +[LACDTOFeatureEnablementMode disabled];
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  [(LACDTOFeatureController *)self _setFeatureEnablementMode:v10 context:contextCopy connection:currentConnection completion:completionCopy];
}

- (void)enableFeatureStrictModeWithCompletion:(id)completion
{
  workQueue = self->_workQueue;
  completionCopy = completion;
  dispatch_assert_queue_V2(workQueue);
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  [(LACDTOFeatureController *)self _setFeatureStrictModeEnabled:1 context:0 connection:currentConnection completion:completionCopy];
}

- (void)disableFeatureStrictModeWithContext:(id)context completion:(id)completion
{
  workQueue = self->_workQueue;
  completionCopy = completion;
  contextCopy = context;
  dispatch_assert_queue_V2(workQueue);
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  [(LACDTOFeatureController *)self _setFeatureStrictModeEnabled:0 context:contextCopy connection:currentConnection completion:completionCopy];
}

- (void)_checkIsFeatureEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_workQueue);
  objc_initWeak(&location, self);
  kvStore = self->_kvStore;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__LACDTOFeatureController__checkIsFeatureEnabledWithCompletion___block_invoke;
  v7[3] = &unk_1E7A959C0;
  objc_copyWeak(&v9, &location);
  v6 = completionCopy;
  v8 = v6;
  [(LACDTOKVStore *)kvStore valueForKey:0 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __64__LACDTOFeatureController__checkIsFeatureEnabledWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = LACLogDTOFeature();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __64__LACDTOFeatureController__checkIsFeatureEnabledWithCompletion___block_invoke_cold_1();
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v10 = [WeakRetained[4] decode:v5];
      v11 = LACLogDTOFeature();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v10;
        _os_log_impl(&dword_1B0233000, v11, OS_LOG_TYPE_DEFAULT, "isFeatureEnabled: %@", &v13, 0xCu);
      }

      (*(*(a1 + 32) + 16))();
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_enableFeatureActivatingGracePeriod:(BOOL)period completion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_workQueue);
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__LACDTOFeatureController__enableFeatureActivatingGracePeriod_completion___block_invoke;
  v10[3] = &unk_1E7A98050;
  objc_copyWeak(&v13, &location);
  v8 = completionCopy;
  v12 = v8;
  periodCopy = period;
  v9 = currentConnection;
  v11 = v9;
  [(LACDTOFeatureController *)self checkCanEnableFeatureWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __74__LACDTOFeatureController__enableFeatureActivatingGracePeriod_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      v9 = LACLogDTOFeature();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v6;
        _os_log_impl(&dword_1B0233000, v9, OS_LOG_TYPE_DEFAULT, "isFeatureEnabled: NO (%{public}@)", buf, 0xCu);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __74__LACDTOFeatureController__enableFeatureActivatingGracePeriod_completion___block_invoke_15;
      v17[3] = &unk_1E7A98028;
      v18 = *(a1 + 56);
      v17[4] = WeakRetained;
      v10 = __74__LACDTOFeatureController__enableFeatureActivatingGracePeriod_completion___block_invoke_15(v17);
      v11 = *(a1 + 32);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __74__LACDTOFeatureController__enableFeatureActivatingGracePeriod_completion___block_invoke_2;
      v13[3] = &unk_1E7A95648;
      objc_copyWeak(&v16, (a1 + 48));
      v15 = *(a1 + 40);
      v14 = v5;
      [v8 _setFeatureEnablementMode:v10 context:0 connection:v11 completion:v13];

      objc_destroyWeak(&v16);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

id __74__LACDTOFeatureController__enableFeatureActivatingGracePeriod_completion___block_invoke_15(uint64_t a1)
{
  if (*(a1 + 40) & 1) != 0 && ([*(*(a1 + 32) + 24) featureFlagDimpleKeyGracePeriodEnabled])
  {
    if ([*(*(a1 + 32) + 24) featureFlagDimpleKeyGracePeriodUnlimitedEnabled])
    {
      +[LACDTOFeatureEnablementMode enabledWithGracePeriodUnlimited];
    }

    else
    {
      +[LACDTOFeatureEnablementMode enabledWithGracePeriod];
    }
    v2 = ;
  }

  else
  {
    v2 = +[LACDTOFeatureEnablementMode enabled];
  }

  return v2;
}

void __74__LACDTOFeatureController__enableFeatureActivatingGracePeriod_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = LACLogDTOFeature();
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __74__LACDTOFeatureController__enableFeatureActivatingGracePeriod_completion___block_invoke_2_cold_1();
      }

      v7 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "isFeatureEnabled: YES", v9, 2u);
      }

      v8 = *(a1 + 32);
      v7 = *(*(a1 + 40) + 16);
    }

    v7();
  }
}

- (void)_setFeatureEnablementMode:(id)mode context:(id)context connection:(id)connection completion:(id)completion
{
  modeCopy = mode;
  contextCopy = context;
  connectionCopy = connection;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __83__LACDTOFeatureController__setFeatureEnablementMode_context_connection_completion___block_invoke;
  v18[3] = &unk_1E7A98078;
  objc_copyWeak(&v23, &location);
  v14 = completionCopy;
  v22 = v14;
  v15 = modeCopy;
  v19 = v15;
  v16 = contextCopy;
  v20 = v16;
  v17 = connectionCopy;
  v21 = v17;
  [(LACDTOFeatureController *)self _checkIsFeatureEnabledWithCompletion:v18];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __83__LACDTOFeatureController__setFeatureEnablementMode_context_connection_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = *(*(a1 + 56) + 16);
LABEL_7:
      v8();
      goto LABEL_8;
    }

    v9 = [*(a1 + 32) isEnabled];
    if (v9 == [v5 isEnabled])
    {
      v8 = *(*(a1 + 56) + 16);
      goto LABEL_7;
    }

    v10 = [WeakRetained[4] encode:*(a1 + 32)];
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__LACDTOFeatureController__setFeatureEnablementMode_context_connection_completion___block_invoke_2;
    v13[3] = &unk_1E7A95648;
    objc_copyWeak(&v16, (a1 + 64));
    v15 = *(a1 + 56);
    v14 = *(a1 + 32);
    [WeakRetained _setValue:v10 forKey:0 contextUUID:v11 connection:v12 completion:v13];

    objc_destroyWeak(&v16);
  }

LABEL_8:
}

void __83__LACDTOFeatureController__setFeatureEnablementMode_context_connection_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    (*(*(a1 + 40) + 16))();
    if (!v8)
    {
      v4 = [LACDTOEvent alloc];
      v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isEnabled")}];
      v6 = [(LACDTOEvent *)v4 initWithRawValue:2 value:v5];

      v7 = [WeakRetained eventBus];
      [v7 dispatchEvent:v6 sender:WeakRetained];
    }
  }
}

- (void)_setFeatureStrictModeEnabled:(BOOL)enabled context:(id)context connection:(id)connection completion:(id)completion
{
  contextCopy = context;
  connectionCopy = connection;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __86__LACDTOFeatureController__setFeatureStrictModeEnabled_context_connection_completion___block_invoke;
  v16[3] = &unk_1E7A980C8;
  objc_copyWeak(&v20, &location);
  v13 = completionCopy;
  v19 = v13;
  enabledCopy = enabled;
  v14 = contextCopy;
  v17 = v14;
  v15 = connectionCopy;
  v18 = v15;
  [(LACDTOFeatureController *)self checkIsFeatureStrictModeEnabledWithCompletion:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __86__LACDTOFeatureController__setFeatureStrictModeEnabled_context_connection_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = *(*(a1 + 48) + 16);
    }

    else
    {
      if (*(a1 + 64) != a2)
      {
        v8 = [[LACDTOKVStoreValue alloc] initWithBoolValue:*(a1 + 64)];
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __86__LACDTOFeatureController__setFeatureStrictModeEnabled_context_connection_completion___block_invoke_2;
        v11[3] = &unk_1E7A980A0;
        objc_copyWeak(&v13, (a1 + 56));
        v12 = *(a1 + 48);
        v14 = *(a1 + 64);
        [WeakRetained _setValue:v8 forKey:4 contextUUID:v9 connection:v10 completion:v11];

        objc_destroyWeak(&v13);
        goto LABEL_7;
      }

      v7 = *(*(a1 + 48) + 16);
    }

    v7();
  }

LABEL_7:
}

void __86__LACDTOFeatureController__setFeatureStrictModeEnabled_context_connection_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
    if (!v8)
    {
      v4 = [LACDTOEvent alloc];
      v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
      v6 = [(LACDTOEvent *)v4 initWithRawValue:3 value:v5];

      v7 = [WeakRetained eventBus];
      [v7 dispatchEvent:v6 sender:WeakRetained];
    }
  }
}

- (void)_setValue:(id)value forKey:(int64_t)key contextUUID:(id)d connection:(id)connection completion:(id)completion
{
  kvStore = self->_kvStore;
  if (d)
  {
    [(LACDTOKVStore *)kvStore setValue:value forKey:key contextUUID:d connection:connection completion:completion];
  }

  else
  {
    [(LACDTOKVStore *)kvStore setValue:value forKey:key connection:connection completion:completion];
  }
}

- (void)_fetchDeviceHintsCurrentConnection:(id)connection completion:(id)completion
{
  connectionCopy = connection;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__11;
  v14[4] = __Block_byref_object_dispose__11;
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  kvStore = self->_kvStore;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__LACDTOFeatureController__fetchDeviceHintsCurrentConnection_completion___block_invoke;
  v10[3] = &unk_1E7A98118;
  objc_copyWeak(&v13, &location);
  v12 = v14;
  v9 = completionCopy;
  v11 = v9;
  [(LACDTOKVStore *)kvStore valueForKey:3 connection:connectionCopy completion:v10];

  objc_destroyWeak(&v13);
  _Block_object_dispose(v14, 8);

  objc_destroyWeak(&location);
}

void __73__LACDTOFeatureController__fetchDeviceHintsCurrentConnection_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = LACLogDTOFeature();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __73__LACDTOFeatureController__fetchDeviceHintsCurrentConnection_completion___block_invoke_cold_1();
      }
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "BOOLValue")}];
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:2];
    [v10 setObject:v9 forKeyedSubscript:v11];

    v12 = WeakRetained[2];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __73__LACDTOFeatureController__fetchDeviceHintsCurrentConnection_completion___block_invoke_23;
    v15[3] = &unk_1E7A980F0;
    objc_copyWeak(&v17, (a1 + 48));
    v14 = *(a1 + 32);
    v13 = v14;
    v16 = v14;
    [v12 hasLocationServicesEnabledWithCompletion:v15];

    objc_destroyWeak(&v17);
  }
}

void __73__LACDTOFeatureController__fetchDeviceHintsCurrentConnection_completion___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = LACLogDTOFeature();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __73__LACDTOFeatureController__fetchDeviceHintsCurrentConnection_completion___block_invoke_23_cold_1();
      }
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "BOOLValue")}];
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    [v10 setObject:v9 forKeyedSubscript:v11];

    v12 = WeakRetained[2];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __73__LACDTOFeatureController__fetchDeviceHintsCurrentConnection_completion___block_invoke_24;
    v15[3] = &unk_1E7A980F0;
    objc_copyWeak(&v17, (a1 + 48));
    v14 = *(a1 + 32);
    v13 = v14;
    v16 = v14;
    [v12 hasHSA2AccountWithCompletion:v15];

    objc_destroyWeak(&v17);
  }
}

void __73__LACDTOFeatureController__fetchDeviceHintsCurrentConnection_completion___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = LACLogDTOFeature();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __73__LACDTOFeatureController__fetchDeviceHintsCurrentConnection_completion___block_invoke_24_cold_1();
      }
    }

    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "BOOLValue")}];
    v10 = *(*(*(a1 + 40) + 8) + 40);
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    [v10 setObject:v9 forKeyedSubscript:v11];

    v12 = *(*(*(a1 + 40) + 8) + 40);
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_fetchRequirementsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(LACDTOMutableFeatureRequirements);
  [(LACDTOMutableFeatureRequirements *)v5 setHasPasscodeSet:[(LACDTOFeatureRequirementsDataSource *)self->_requirementsDataSource hasPasscodeSetForCurrentUser]];
  [(LACDTOMutableFeatureRequirements *)v5 setHasBiometricEnrollments:[(LACDTOFeatureRequirementsDataSource *)self->_requirementsDataSource hasBiometricEnrollmentsForCurrentUser]];
  completionCopy[2](completionCopy, v5);
}

void __73__LACDTOFeatureController_checkIsFeatureStrictModeEnabledWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "isFeatureStrictModeEnabled: NO (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__LACDTOFeatureController__checkIsFeatureEnabledWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "isFeatureEnabled: NO (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __74__LACDTOFeatureController__enableFeatureActivatingGracePeriod_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "isFeatureEnabled: NO (error: %{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __73__LACDTOFeatureController__fetchDeviceHintsCurrentConnection_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Could not fetch biometric liveness (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __73__LACDTOFeatureController__fetchDeviceHintsCurrentConnection_completion___block_invoke_23_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Could not fetch LocationServices status (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __73__LACDTOFeatureController__fetchDeviceHintsCurrentConnection_completion___block_invoke_24_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1(&dword_1B0233000, v0, v1, "Could not fetch HSA2Account (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end