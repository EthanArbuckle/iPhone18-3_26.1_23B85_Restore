@interface LACUIPackagedViewStateController
- (LACUIPackagedViewStateController)initWithLayer:(id)a3;
- (LACUIPackagedViewStateController)initWithPlatformStateController:(id)a3;
- (void)setState:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation LACUIPackagedViewStateController

- (LACUIPackagedViewStateController)initWithLayer:(id)a3
{
  v4 = a3;
  v5 = [[LACUIPackagedViewPlatformStateController alloc] initWithLayer:v4];

  v6 = [(LACUIPackagedViewStateController *)self initWithPlatformStateController:v5];
  return v6;
}

- (LACUIPackagedViewStateController)initWithPlatformStateController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LACUIPackagedViewStateController;
  v6 = [(LACUIPackagedViewStateController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_stateController, a3);
    [(LACUIPackagedViewPlatformStateController *)v7->_stateController setDelegate:v7];
  }

  return v7;
}

- (void)setState:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  stateController = self->_stateController;
  v11 = [v8 name];
  LOBYTE(stateController) = [(LACUIPackagedViewPlatformStateController *)stateController hasState:v11];

  if (stateController)
  {
    v12 = [LACUIPackagedViewState alloc];
    v13 = [(LACUIPackagedViewPlatformStateController *)self->_stateController state];
    v14 = [(LACUIPackagedViewState *)v12 initWithName:v13];

    v15 = [(LACUIPackagedViewState *)v14 name];
    v16 = [v8 containsStateNamed:v15];

    if (v16)
    {
      v9[2](v9, 1);
    }

    else
    {
      [(LACUIPackagedViewStateController *)self _clearPendingTransitionWithFlag:0];
      v17 = [[LACUIPackagedViewStateTransition alloc] initWithFromState:v14 toState:v8 completion:v9];
      pendingStateTransition = self->_pendingStateTransition;
      self->_pendingStateTransition = v17;

      v19 = self->_stateController;
      v20 = [v8 name];
      [(LACUIPackagedViewPlatformStateController *)v19 setState:v20 speed:v6];

      if (v6)
      {
        v21 = [v8 animationOptions];
        v22 = [v21 maxDuration];
        v23 = v22;
        if (!v22)
        {
          v22 = &unk_2868271A8;
        }

        [v22 floatValue];
        v25 = v24;

        if (v25 > 0.0)
        {
          v26 = v25;
          if (v26 < 1.79769313e308)
          {
            objc_initWeak(&location, self);
            v27 = dispatch_time(0, (v26 * 1000000000.0));
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __65__LACUIPackagedViewStateController_setState_animated_completion___block_invoke;
            block[3] = &unk_27981E848;
            objc_copyWeak(&v30, &location);
            v29 = v8;
            dispatch_after(v27, MEMORY[0x277D85CD0], block);

            objc_destroyWeak(&v30);
            objc_destroyWeak(&location);
          }
        }
      }

      else
      {
        [(LACUIPackagedViewStateController *)self _clearPendingTransitionWithFlag:1];
      }
    }
  }

  else
  {
    v9[2](v9, 0);
  }
}

void __65__LACUIPackagedViewStateController_setState_animated_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 2))
  {
    if (LA_LOG_LACUIPackagedViewStateController_once != -1)
    {
      __65__LACUIPackagedViewStateController_setState_animated_completion___block_invoke_cold_1();
    }

    v4 = LA_LOG_LACUIPackagedViewStateController_log;
    if (os_log_type_enabled(LA_LOG_LACUIPackagedViewStateController_log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_256063000, v4, OS_LOG_TYPE_DEFAULT, "Calling completion for %{public}@ after reaching duration limit", &v7, 0xCu);
    }

    [v3 _clearPendingTransitionWithFlag:1];
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end