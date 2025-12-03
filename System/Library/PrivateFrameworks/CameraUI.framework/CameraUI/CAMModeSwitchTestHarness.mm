@interface CAMModeSwitchTestHarness
- (CAMModeSwitchTestHarness)initWithTestName:(id)name viewfinderViewController:(id)controller mode:(int64_t)mode testingAnimation:(BOOL)animation testExtensionSeconds:(double)seconds;
- (void)_ensureCaptureMode:(int64_t)mode thenPerform:(id)perform;
- (void)_internalStopTesting;
- (void)_startTestingAfterModeSwitchIsTestingAnimation:(BOOL)animation;
- (void)handleDidOpenViewfinderForReason:(int64_t)reason;
- (void)startTesting;
@end

@implementation CAMModeSwitchTestHarness

- (CAMModeSwitchTestHarness)initWithTestName:(id)name viewfinderViewController:(id)controller mode:(int64_t)mode testingAnimation:(BOOL)animation testExtensionSeconds:(double)seconds
{
  controllerCopy = controller;
  v18.receiver = self;
  v18.super_class = CAMModeSwitchTestHarness;
  v14 = [(CAMModeAndDeviceConfigurationTestHarness *)&v18 initWithTestName:name];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_viewfinderViewController, controller);
    v15->_desiredMode = mode;
    v15->_testingAnimation = animation;
    v15->_testExtensionSeconds = seconds;
    v16 = v15;
  }

  return v15;
}

- (void)startTesting
{
  isTestingAnimation = [(CAMModeSwitchTestHarness *)self isTestingAnimation];
  v4 = [(CAMModeSwitchTestHarness *)self desiredMode]== 0;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__CAMModeSwitchTestHarness_startTesting__block_invoke;
  v5[3] = &unk_1E76F88B0;
  objc_copyWeak(&v6, &location);
  v7 = isTestingAnimation;
  [(CAMModeSwitchTestHarness *)self _ensureCaptureMode:v4 thenPerform:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __40__CAMModeSwitchTestHarness_startTesting__block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__CAMModeSwitchTestHarness_startTesting__block_invoke_2;
  v3[3] = &unk_1E76F88B0;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = *(a1 + 40);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __40__CAMModeSwitchTestHarness_startTesting__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startTestingAfterModeSwitchIsTestingAnimation:*(a1 + 40)];
}

- (void)_startTestingAfterModeSwitchIsTestingAnimation:(BOOL)animation
{
  v10.receiver = self;
  v10.super_class = CAMModeSwitchTestHarness;
  [(CAMModeAndDeviceConfigurationTestHarness *)&v10 startTesting];
  objc_initWeak(&location, self);
  desiredMode = self->_desiredMode;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__CAMModeSwitchTestHarness__startTestingAfterModeSwitchIsTestingAnimation___block_invoke;
  v6[3] = &unk_1E76F88B0;
  animationCopy = animation;
  objc_copyWeak(&v7, &location);
  [(CAMModeSwitchTestHarness *)self _ensureCaptureMode:desiredMode thenPerform:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __75__CAMModeSwitchTestHarness__startTestingAfterModeSwitchIsTestingAnimation___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _internalStopTesting];
  }
}

- (void)_internalStopTesting
{
  [(CAMModeSwitchTestHarness *)self testExtensionSeconds];
  if (v3 <= 0.0)
  {

    [(CAMModeAndDeviceConfigurationTestHarness *)self stopTesting];
  }

  else
  {
    v4 = dispatch_time(0, (v3 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__CAMModeSwitchTestHarness__internalStopTesting__block_invoke;
    block[3] = &unk_1E76F77B0;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }
}

- (void)handleDidOpenViewfinderForReason:(int64_t)reason
{
  v6.receiver = self;
  v6.super_class = CAMModeSwitchTestHarness;
  [(CAMModeAndDeviceConfigurationTestHarness *)&v6 handleDidOpenViewfinderForReason:reason];
  isRunningTest = [(CAMPerformanceTestHarness *)self isRunningTest];
  isTestingAnimation = [(CAMModeSwitchTestHarness *)self isTestingAnimation];
  if (isRunningTest && isTestingAnimation)
  {
    [(CAMModeSwitchTestHarness *)self _internalStopTesting];
  }
}

- (void)_ensureCaptureMode:(int64_t)mode thenPerform:(id)perform
{
  performCopy = perform;
  viewfinderViewController = [(CAMModeSwitchTestHarness *)self viewfinderViewController];
  _configuredMode = [viewfinderViewController _configuredMode];
  _configuredDevice = [viewfinderViewController _configuredDevice];
  if ((_configuredDevice - 8) >= 4 && _configuredDevice != 1 && _configuredMode == mode)
  {
    performCopy[2]();
  }

  else
  {
    [(CAMModeAndDeviceConfigurationTestHarness *)self registerHandler:performCopy forChangeToMode:mode devicePosition:0];
    [(CAMModeAndDeviceConfigurationTestHarness *)self registerHandler:performCopy forChangeToMode:mode devicePosition:1];
    [viewfinderViewController changeToMode:mode device:0 animated:1];
  }
}

@end