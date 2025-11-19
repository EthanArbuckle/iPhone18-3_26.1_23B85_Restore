@interface LACDTOLocationPrewarmStrategy
- (LACDTOLocationPrewarmStrategy)initWithFeatureStateProvider:(id)a3 trustStateProvider:(id)a4 device:(id)a5 keybag:(id)a6;
- (void)checkNeedsPrewarmWithCompletion:(id)a3;
@end

@implementation LACDTOLocationPrewarmStrategy

- (LACDTOLocationPrewarmStrategy)initWithFeatureStateProvider:(id)a3 trustStateProvider:(id)a4 device:(id)a5 keybag:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = LACDTOLocationPrewarmStrategy;
  v15 = [(LACDTOLocationPrewarmStrategy *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_featureStateProvider, a3);
    objc_storeStrong(&v16->_trustStateProvider, a4);
    objc_storeStrong(&v16->_device, a5);
    objc_storeStrong(&v16->_keybag, a6);
  }

  return v16;
}

- (void)checkNeedsPrewarmWithCompletion:(id)a3
{
  v4 = a3;
  if ([(LACKeyBag *)self->_keybag state]!= 5)
  {
    v6 = LACLogDTOLocation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      v7 = "Prewarm skipped because keybag is not unlocked";
LABEL_8:
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, v7, location, 2u);
    }

LABEL_9:

    v4[2](v4, 0);
    goto LABEL_10;
  }

  if (([(LACDTODeviceSetupInfoProvider *)self->_device hasCompletedSetup]& 1) == 0)
  {
    v6 = LACLogDTOLocation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      v7 = "Prewarm skipped because device has not finished setup";
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  objc_initWeak(location, self);
  featureStateProvider = self->_featureStateProvider;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__LACDTOLocationPrewarmStrategy_checkNeedsPrewarmWithCompletion___block_invoke;
  v8[3] = &unk_1E7A95838;
  objc_copyWeak(&v10, location);
  v9 = v4;
  [(LACDTOFeatureStateProviding *)featureStateProvider fetchStateWithCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(location);
LABEL_10:
}

void __65__LACDTOLocationPrewarmStrategy_checkNeedsPrewarmWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([v3 isEnabled])
    {
      if (![v3 isStrictModeEnabled])
      {
        v7 = WeakRetained[2];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __65__LACDTOLocationPrewarmStrategy_checkNeedsPrewarmWithCompletion___block_invoke_1;
        v8[3] = &unk_1E7A95810;
        objc_copyWeak(&v10, (a1 + 40));
        v9 = *(a1 + 32);
        [v7 fetchSensorTrustStateWithCompletion:v8];

        objc_destroyWeak(&v10);
        goto LABEL_11;
      }

      v5 = LACLogDTOLocation();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v6 = "Prewarm skipped because strict mode is enabled";
    }

    else
    {
      v5 = LACLogDTOLocation();
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:

        (*(*(a1 + 32) + 16))();
        goto LABEL_11;
      }

      *buf = 0;
      v6 = "Prewarm skipped because feature is disabled";
    }

    _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    goto LABEL_9;
  }

LABEL_11:
}

void __65__LACDTOLocationPrewarmStrategy_checkNeedsPrewarmWithCompletion___block_invoke_1(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([v3 isDisapproved])
    {
      v5 = *(*(a1 + 32) + 16);
    }

    else
    {
      v6 = LACLogDTOLocation();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Prewarm skipped because sensor is trusted", v7, 2u);
      }

      v5 = *(*(a1 + 32) + 16);
    }

    v5();
  }
}

@end