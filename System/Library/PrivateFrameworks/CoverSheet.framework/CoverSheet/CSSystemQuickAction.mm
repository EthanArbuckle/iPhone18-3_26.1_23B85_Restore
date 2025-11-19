@interface CSSystemQuickAction
- (BOOL)_intentIsCameraCaptureIntent:(id)a3;
- (BOOL)allowsInteraction;
- (BOOL)controlInstance:(id)a3 handlePerformAction:(id)a4;
- (CHUISControlViewModel)viewModel;
- (CSSystemQuickAction)initWithQuickActionControlIdentity:(id)a3 instance:(id)a4 delegate:(id)a5;
- (int64_t)appearance;
- (void)controlInstanceViewModelDidChange:(id)a3;
- (void)dealloc;
- (void)fireAction;
- (void)touchBegan;
- (void)touchEnded;
@end

@implementation CSSystemQuickAction

- (CSSystemQuickAction)initWithQuickActionControlIdentity:(id)a3 instance:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CSSystemQuickAction;
  v12 = [(CSSystemQuickAction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_controlIdentity, a3);
    objc_storeStrong(&v13->_controlInstance, a4);
    objc_storeWeak(&v13->_systemQuickActionDelegate, v11);
    [(CHUISControlInstance *)v13->_controlInstance setDelegate:v13];
    [(CHUISControlInstance *)v13->_controlInstance registerObserver:v13];
  }

  return v13;
}

- (void)dealloc
{
  [(CHUISControlInstance *)self->_controlInstance invalidate];
  v3.receiver = self;
  v3.super_class = CSSystemQuickAction;
  [(CSSystemQuickAction *)&v3 dealloc];
}

- (int64_t)appearance
{
  v3 = [(CSSystemQuickAction *)self viewModel];
  v4 = [v3 isDisabled];

  if (v4)
  {
    return 2;
  }

  v6 = [(CSSystemQuickAction *)self viewModel];
  v7 = [v6 isRedacted];

  return v7;
}

- (BOOL)allowsInteraction
{
  v2 = [(CSSystemQuickAction *)self viewModel];
  v3 = [v2 isDisabled];

  return v3 ^ 1;
}

- (BOOL)_intentIsCameraCaptureIntent:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 linkAction];
  v4 = [v3 systemProtocols];
  v5 = [v4 bs_firstObjectPassingTest:&__block_literal_global_20];

  v6 = v5 != 0;
  return v6;
}

uint64_t __52__CSSystemQuickAction__intentIsCameraCaptureIntent___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = [MEMORY[0x277D23938] cameraCaptureProtocol];
  v4 = [v3 identifier];
  v5 = [v2 isEqualToString:v4];

  return v5;
}

- (void)touchBegan
{
  WeakRetained = objc_loadWeakRetained(&self->_systemQuickActionDelegate);
  [WeakRetained systemQuickActionTouchBegan:self];
}

- (void)fireAction
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = SBLogDashBoard();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CHSControlIdentity *)self->_controlIdentity kind];
    *buf = 138543618;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_21EB05000, v3, OS_LOG_TYPE_DEFAULT, "[Quick Action] Will fire action %{public}@: %{public}@", buf, 0x16u);
  }

  controlInstance = self->_controlInstance;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__CSSystemQuickAction_fireAction__block_invoke;
  v6[3] = &unk_27838D4D8;
  v6[4] = self;
  [(CHUISControlInstance *)controlInstance performControlActionWithCompletion:v6];
}

void __33__CSSystemQuickAction_fireAction__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SBLogDashBoard();
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __33__CSSystemQuickAction_fireAction__block_invoke_cold_1(v3, WeakRetained);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_21EB05000, WeakRetained, OS_LOG_TYPE_DEFAULT, "[Quick Action] Fired action successfully: %@", &v7, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [WeakRetained systemQuickActionActionFired:*(a1 + 32)];
  }
}

- (void)touchEnded
{
  WeakRetained = objc_loadWeakRetained(&self->_systemQuickActionDelegate);
  [WeakRetained systemQuickActionTouchEnded:self];
}

- (BOOL)controlInstance:(id)a3 handlePerformAction:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SBLogDashBoard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CHSControlIdentity *)self->_controlIdentity kind];
    v18 = 138543618;
    v19 = self;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "[Quick Action] Handling perform action %{public}@: %{public}@", &v18, 0x16u);
  }

  v8 = [v5 descriptor];
  v9 = [v8 actionMetadata];
  v10 = [v9 isCameraCapture];

  if (v10)
  {
    v11 = [v5 control];
    v12 = [v11 extensionIdentity];
    v13 = [v12 containerBundleIdentifier];

    v14 = SBLogDashBoard();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = v13;
      _os_log_impl(&dword_21EB05000, v14, OS_LOG_TYPE_DEFAULT, "[Quick Action] Launching capture application/extension for containing bundle identifier: %{public}@", &v18, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_systemQuickActionDelegate);
    if (objc_opt_respondsToSelector())
    {
      v16 = [WeakRetained systemQuickActionLaunchCaptureApplication:v13];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)controlInstanceViewModelDidChange:(id)a3
{
  v4 = [(CSQuickAction *)self delegate];
  [v4 isSelectedDidChangeForAction:self];
  [v4 allowsInteractionDidChangeForAction:self];
}

- (CHUISControlViewModel)viewModel
{
  v3 = [(CSSystemQuickAction *)self controlInstance];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 viewModel];
  }

  else
  {
    v9 = [(CSSystemQuickAction *)self controlInstance];
    v10 = objc_opt_class();
    v11 = v9;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v8 = [v13 viewModel];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void __33__CSSystemQuickAction_fireAction__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_21EB05000, a2, OS_LOG_TYPE_ERROR, "[Quick Action] Performing control action failed: %{public}@", &v4, 0xCu);
}

@end