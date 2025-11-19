@interface LACDTOLocationPrewarmController
- (LACDTOLocationPrewarmController)initWithLocationProvider:(id)a3 strategy:(id)a4 workQueue:(id)a5;
- (void)_prewarmWithCompletion:(id)a3;
- (void)notificationCenter:(id)a3 didReceiveNotification:(__CFString *)a4;
- (void)prewarmWithCompletion:(id)a3;
@end

@implementation LACDTOLocationPrewarmController

- (LACDTOLocationPrewarmController)initWithLocationProvider:(id)a3 strategy:(id)a4 workQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = LACDTOLocationPrewarmController;
  v12 = [(LACDTOLocationPrewarmController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_locationProvider, a3);
    objc_storeStrong(&v13->_strategy, a4);
    objc_storeStrong(&v13->_workQueue, a5);
  }

  return v13;
}

- (void)notificationCenter:(id)a3 didReceiveNotification:(__CFString *)a4
{
  if (LACDarwinNotificationsEqual(a4, @"com.apple.springboard.lockstate"))
  {
    objc_initWeak(&location, self);
    workQueue = self->_workQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __77__LACDTOLocationPrewarmController_notificationCenter_didReceiveNotification___block_invoke;
    v6[3] = &unk_1E7A95380;
    objc_copyWeak(&v7, &location);
    dispatch_async(workQueue, v6);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __77__LACDTOLocationPrewarmController_notificationCenter_didReceiveNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained prewarmWithCompletion:&__block_literal_global_30];
    WeakRetained = v2;
  }
}

- (void)prewarmWithCompletion:(id)a3
{
  v4 = a3;
  if (self->_running)
  {
    v5 = LACLogDTOLocation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [LACDTOLocationPrewarmController prewarmWithCompletion:v5];
    }

    v4[2](v4, 1);
  }

  else
  {
    self->_running = 1;
    objc_initWeak(&location, self);
    v6 = LACLogDTOLocation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Will start location prewarm", buf, 2u);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__LACDTOLocationPrewarmController_prewarmWithCompletion___block_invoke;
    v7[3] = &unk_1E7A977A8;
    objc_copyWeak(&v9, &location);
    v8 = v4;
    [(LACDTOLocationPrewarmController *)self _prewarmWithCompletion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __57__LACDTOLocationPrewarmController_prewarmWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = LACLogDTOLocation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = NSStringFromLACDTOLocationPrewarmResult(a2);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "Did finish location prewarm with result: %{public}@", &v8, 0xCu);
    }

    WeakRetained[8] = 0;
    (*(*(a1 + 32) + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_prewarmWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  strategy = self->_strategy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__LACDTOLocationPrewarmController__prewarmWithCompletion___block_invoke;
  v7[3] = &unk_1E7A977D0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(LACDTOLocationPrewarmStrategy *)strategy checkNeedsPrewarmWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __58__LACDTOLocationPrewarmController__prewarmWithCompletion___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      v6 = *(WeakRetained + 2);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __58__LACDTOLocationPrewarmController__prewarmWithCompletion___block_invoke_2;
      v7[3] = &unk_1E7A95BC8;
      v8 = *(a1 + 32);
      [v6 checkIsInFamiliarLocationWithCompletion:v7];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

@end