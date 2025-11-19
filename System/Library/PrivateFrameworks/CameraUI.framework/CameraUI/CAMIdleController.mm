@interface CAMIdleController
- (BOOL)_isIdleTimerIndefinitelyDisabled;
- (CAMIdleController)init;
- (void)_delayIdleTimerByTimeInterval:(double)a3;
- (void)_delayIdleTimerByTimeIntervalUnlessIndefinitelyDisabled:(double)a3;
- (void)_immediatelyEnableApplicationIdleTimer;
- (void)_indefinitelyDisableApplicationIdleTimer;
- (void)_teardownEnableIdleTimer;
- (void)dealloc;
- (void)startUpdatingIdleTimer;
- (void)stillImageRequestDidStopCapturingStillImage:(id)a3;
- (void)stopUpdatingIdleTimer;
@end

@implementation CAMIdleController

- (CAMIdleController)init
{
  v7.receiver = self;
  v7.super_class = CAMIdleController;
  v2 = [(CAMIdleController *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_updatingIdleTimer = 0;
    enableIdleTimer = v2->_enableIdleTimer;
    v2->_enableIdleTimer = 0;

    v5 = v3;
  }

  return v3;
}

- (void)startUpdatingIdleTimer
{
  [(CAMIdleController *)self _setUpdatingIdleTimer:1];

  [(CAMIdleController *)self _delayIdleTimerByTimeIntervalUnlessIndefinitelyDisabled:300.0];
}

- (BOOL)_isIdleTimerIndefinitelyDisabled
{
  v2 = [(CAMIdleController *)self _enableIdleTimer];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  v4 = [v3 isIdleTimerDisabled];

  return (v2 == 0) & v4;
}

- (void)dealloc
{
  [(CAMIdleController *)self _immediatelyEnableApplicationIdleTimer];
  v3.receiver = self;
  v3.super_class = CAMIdleController;
  [(CAMIdleController *)&v3 dealloc];
}

- (void)stopUpdatingIdleTimer
{
  [(CAMIdleController *)self _immediatelyEnableApplicationIdleTimer];

  [(CAMIdleController *)self _setUpdatingIdleTimer:0];
}

- (void)stillImageRequestDidStopCapturingStillImage:(id)a3
{
  v4 = [a3 textAnalysisIdentifier];
  if (v4)
  {
    v5 = 30.0;
  }

  else
  {
    v5 = 300.0;
  }

  [(CAMIdleController *)self _delayIdleTimerByTimeIntervalUnlessIndefinitelyDisabled:v5];
}

- (void)_delayIdleTimerByTimeIntervalUnlessIndefinitelyDisabled:(double)a3
{
  if (![(CAMIdleController *)self _isIdleTimerIndefinitelyDisabled])
  {

    [(CAMIdleController *)self _delayIdleTimerByTimeInterval:a3];
  }
}

- (void)_delayIdleTimerByTimeInterval:(double)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(CAMIdleController *)self isUpdatingIdleTimer])
  {
    v5 = [MEMORY[0x1E69DC668] sharedApplication];
    [v5 setIdleTimerDisabled:1];

    v6 = [(CAMIdleController *)self _enableIdleTimer];
    [v6 invalidate];
    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E695DFF0];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __51__CAMIdleController__delayIdleTimerByTimeInterval___block_invoke;
    v13 = &unk_1E76F7B88;
    objc_copyWeak(&v14, &location);
    v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:&v10 block:a3];
    [(CAMIdleController *)self _setEnableIdleTimer:v8, v10, v11, v12, v13];
    v9 = os_log_create("com.apple.camera", "IdleController");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v17 = a3;
      _os_log_impl(&dword_1A3640000, v9, OS_LOG_TYPE_DEFAULT, "Delaying application idle timer by %f seconds", buf, 0xCu);
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __51__CAMIdleController__delayIdleTimerByTimeInterval___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _immediatelyEnableApplicationIdleTimer];
}

- (void)_teardownEnableIdleTimer
{
  v3 = [(CAMIdleController *)self _enableIdleTimer];
  [v3 invalidate];

  [(CAMIdleController *)self _setEnableIdleTimer:0];
}

- (void)_immediatelyEnableApplicationIdleTimer
{
  if ([(CAMIdleController *)self isUpdatingIdleTimer])
  {
    [(CAMIdleController *)self _teardownEnableIdleTimer];
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 setIdleTimerDisabled:0];

    v4 = os_log_create("com.apple.camera", "IdleController");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "Immediately enabling application idle timer", v5, 2u);
    }
  }
}

- (void)_indefinitelyDisableApplicationIdleTimer
{
  if ([(CAMIdleController *)self isUpdatingIdleTimer])
  {
    [(CAMIdleController *)self _teardownEnableIdleTimer];
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 setIdleTimerDisabled:1];

    v4 = os_log_create("com.apple.camera", "IdleController");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A3640000, v4, OS_LOG_TYPE_DEFAULT, "Disabling application idle timer indefinitely", v5, 2u);
    }
  }
}

@end