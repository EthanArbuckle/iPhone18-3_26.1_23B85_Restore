@interface LACDTOLocationController
- (LACDTOLocationController)initWithLocationProvider:(id)a3 monitor:(id)a4 workQueue:(id)a5;
- (void)checkIsInFamiliarLocationWithCompletion:(id)a3;
- (void)locationMonitor:(id)a3 didReceiveLocationState:(id)a4;
- (void)setLocationState:(id)a3;
@end

@implementation LACDTOLocationController

- (LACDTOLocationController)initWithLocationProvider:(id)a3 monitor:(id)a4 workQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = LACDTOLocationController;
  v12 = [(LACDTOLocationController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_locationProvider, a3);
    objc_storeStrong(&v13->_monitor, a4);
    objc_storeStrong(&v13->_workQueue, a5);
    [(LACDTOLocationMonitor *)v13->_monitor setDelegate:v13];
  }

  return v13;
}

- (void)setLocationState:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(LACDTOLocationController *)self workQueue];
  dispatch_assert_queue_V2(v6);

  p_locationState = &self->_locationState;
  if (![(LACDTOLocationState *)self->_locationState isEqual:v5])
  {
    v8 = *p_locationState;
    objc_storeStrong(&self->_locationState, a3);
    if (v8)
    {
      v9 = [(LACDTOLocationState *)v8 rawValue];
      if (v9 != [(LACDTOLocationState *)*p_locationState rawValue])
      {
        v10 = LACLogDTOState();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138543874;
          v15 = self;
          v16 = 2112;
          v17 = v8;
          v18 = 2112;
          v19 = v5;
          _os_log_impl(&dword_1B0233000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ DSLMode changed from: %@ to %@", &v14, 0x20u);
        }

        v11 = [[LACDTOEvent alloc] initWithRawValue:1 value:v5];
        v12 = [(LACDTOLocationController *)self eventBus];
        [v12 dispatchEvent:v11 sender:self];
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)checkIsInFamiliarLocationWithCompletion:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(LACDTOLocationController *)self workQueue];
  dispatch_assert_queue_V2(v5);

  objc_initWeak(&location, self);
  v6 = LACLogDTOLocation();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = self;
    _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ will start query", buf, 0xCu);
  }

  locationProvider = self->_locationProvider;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__LACDTOLocationController_checkIsInFamiliarLocationWithCompletion___block_invoke;
  v10[3] = &unk_1E7A958A8;
  objc_copyWeak(&v12, &location);
  v8 = v4;
  v11 = v8;
  [(LACDTOLocationProvider *)locationProvider checkIsInFamiliarLocationWithCompletion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  v9 = *MEMORY[0x1E69E9840];
}

void __68__LACDTOLocationController_checkIsInFamiliarLocationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = LACLogDTOLocation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      v8 = WeakRetained;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_1B0233000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ did finish query %@", &v7, 0x16u);
    }

    [WeakRetained setLocationState:v3];
    (*(*(a1 + 32) + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)locationMonitor:(id)a3 didReceiveLocationState:(id)a4
{
  if (self->_monitor == a3)
  {
    [(LACDTOLocationController *)self setLocationState:a4];
  }
}

@end