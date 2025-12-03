@interface LACPreboardLauncher
- (LACPreboardLauncher)initWithLifecycleManager:(id)manager;
- (id)_alternateSystemApp;
- (void)_finishLaunchingWithError:(id)error;
- (void)_terminateApp:(id)app;
- (void)alternateSystemApp:(id)app didExitWithStatus:(int)status;
- (void)alternateSystemApp:(id)app didFailToLaunchWithError:(id)error;
- (void)alternateSystemApp:(id)app didTerminateWithSignal:(int)signal;
- (void)alternateSystemAppDidLaunch:(id)launch;
- (void)launchPreboardWithCompletion:(id)completion;
@end

@implementation LACPreboardLauncher

- (LACPreboardLauncher)initWithLifecycleManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = LACPreboardLauncher;
  v6 = [(LACPreboardLauncher *)&v14 init];
  v7 = v6;
  if (v6)
  {
    launchCompletion = v6->_launchCompletion;
    v6->_launchCompletion = 0;

    objc_storeStrong(&v7->_lifecycleManager, manager);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [LACConcurrencyUtilities createUserInitiatedSerialQueueWithIdentifier:v10];
    workQueue = v7->_workQueue;
    v7->_workQueue = v11;
  }

  return v7;
}

- (void)launchPreboardWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__LACPreboardLauncher_launchPreboardWithCompletion___block_invoke;
  v7[3] = &unk_1E7A95568;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__LACPreboardLauncher_launchPreboardWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _alternateSystemApp];
    if (v4)
    {
      v5 = *(a1 + 40);
      if (*(*(a1 + 32) + 8))
      {
        v6 = [_TtC23LocalAuthenticationCore23LACPreboardErrorBuilder genericErrorWithMessage:@"Preboard is already launched"];
        (*(v5 + 16))(v5, v6);
      }

      else
      {
        v9 = _Block_copy(*(a1 + 40));
        v10 = *(a1 + 32);
        v11 = *(v10 + 8);
        *(v10 + 8) = v9;

        [v4 setDelegate:v3];
        [v4 activate];
        v6 = LACLogPreboard();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_1B0233000, v6, OS_LOG_TYPE_DEFAULT, "Preboard activated", v12, 2u);
        }
      }
    }

    else
    {
      v7 = *(a1 + 40);
      v8 = [_TtC23LocalAuthenticationCore23LACPreboardErrorBuilder genericErrorWithMessage:@"Unable to load BKSAlternateSystemApp"];
      (*(v7 + 16))(v7, v8);
    }
  }
}

- (void)alternateSystemAppDidLaunch:(id)launch
{
  v4 = LACLogPreboard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B0233000, v4, OS_LOG_TYPE_DEFAULT, "Preboard launched", v5, 2u);
  }

  [(LACPreboardLauncher *)self _finishLaunchingWithError:0];
}

- (void)alternateSystemApp:(id)app didFailToLaunchWithError:(id)error
{
  errorCopy = error;
  v6 = LACLogPreboard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [LACPreboardLauncher alternateSystemApp:errorCopy didFailToLaunchWithError:v6];
  }

  [(LACPreboardLauncher *)self _finishLaunchingWithError:errorCopy];
}

- (void)alternateSystemApp:(id)app didTerminateWithSignal:(int)signal
{
  v10 = *MEMORY[0x1E69E9840];
  appCopy = app;
  v7 = LACLogPreboard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = signal;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Preboard terminated with signal: %d", v9, 8u);
  }

  [(LACPreboardLauncher *)self _terminateApp:appCopy];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)alternateSystemApp:(id)app didExitWithStatus:(int)status
{
  v10 = *MEMORY[0x1E69E9840];
  appCopy = app;
  v7 = LACLogPreboard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = status;
    _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Preboard exited with code: %d", v9, 8u);
  }

  [(LACPreboardLauncher *)self _terminateApp:appCopy];
  v8 = *MEMORY[0x1E69E9840];
}

- (id)_alternateSystemApp
{
  if (getBKSAlternateSystemAppClass())
  {
    v2 = [objc_alloc(getBKSAlternateSystemAppClass()) initWithBundleId:@"com.apple.PreBoard"];
  }

  else
  {
    v3 = LACLogPreboard();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(LACPreboardLauncher *)v3 _alternateSystemApp];
    }

    v2 = 0;
  }

  return v2;
}

- (void)_terminateApp:(id)app
{
  appCopy = app;
  v5 = +[LACSysUtility sharedInstance];
  txmSecurityBootMode = [v5 txmSecurityBootMode];

  if (txmSecurityBootMode)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__LACPreboardLauncher__terminateApp___block_invoke_2;
    block[3] = &unk_1E7A955B0;
    v10 = appCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    v8 = LACLogPreboard();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [LACPreboardLauncher _terminateApp:v8];
    }

    [(LACDeviceLifecycleManaging *)self->_lifecycleManager rebootDeviceWithReason:@"Boot mode not completed" forced:1 completion:&__block_literal_global];
  }
}

- (void)_finishLaunchingWithError:(id)error
{
  errorCopy = error;
  launchCompletion = self->_launchCompletion;
  if (launchCompletion)
  {
    v9 = errorCopy;
    v6 = _Block_copy(launchCompletion);
    v7 = self->_launchCompletion;
    self->_launchCompletion = 0;

    if (v9)
    {
      v8 = [_TtC23LocalAuthenticationCore23LACPreboardErrorBuilder genericErrorWithUnderlyingError:?];
    }

    else
    {
      v8 = 0;
    }

    v6[2](v6, v8);
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)alternateSystemApp:(uint64_t)a1 didFailToLaunchWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "Preboard did not launch with error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end