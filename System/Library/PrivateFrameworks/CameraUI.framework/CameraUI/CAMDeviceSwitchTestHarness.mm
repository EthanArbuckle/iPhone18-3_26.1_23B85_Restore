@interface CAMDeviceSwitchTestHarness
- (CAMDeviceSwitchTestHarness)initWithTestName:(id)name viewfinderViewController:(id)controller devicePosition:(int64_t)position testingAnimation:(BOOL)animation startingCaptureMode:(int64_t)mode testExtensionSeconds:(double)seconds;
- (void)_internalStopTesting;
- (void)ensureCaptureDevicePosition:(int64_t)position mode:(int64_t)mode thenPerform:(id)perform;
- (void)handleDidOpenViewfinderForReason:(int64_t)reason;
- (void)startTesting;
@end

@implementation CAMDeviceSwitchTestHarness

- (CAMDeviceSwitchTestHarness)initWithTestName:(id)name viewfinderViewController:(id)controller devicePosition:(int64_t)position testingAnimation:(BOOL)animation startingCaptureMode:(int64_t)mode testExtensionSeconds:(double)seconds
{
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = CAMDeviceSwitchTestHarness;
  v16 = [(CAMModeAndDeviceConfigurationTestHarness *)&v20 initWithTestName:name];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_viewfinderViewController, controller);
    v17->_desiredDevicePosition = position;
    v17->_testingAnimation = animation;
    v17->_startingCaptureMode = mode;
    v17->_testExtensionSeconds = seconds;
    v18 = v17;
  }

  return v17;
}

- (void)startTesting
{
  isTestingAnimation = [(CAMDeviceSwitchTestHarness *)self isTestingAnimation];
  desiredDevicePosition = [(CAMDeviceSwitchTestHarness *)self desiredDevicePosition];
  startingCaptureMode = [(CAMDeviceSwitchTestHarness *)self startingCaptureMode];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CAMDeviceSwitchTestHarness_startTesting__block_invoke;
  v6[3] = &unk_1E76FAEE0;
  v6[4] = self;
  v6[5] = desiredDevicePosition;
  v6[6] = startingCaptureMode;
  v7 = isTestingAnimation;
  [(CAMDeviceSwitchTestHarness *)self ensureCaptureDevicePosition:desiredDevicePosition == 0 mode:startingCaptureMode thenPerform:v6];
}

void __42__CAMDeviceSwitchTestHarness_startTesting__block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__CAMDeviceSwitchTestHarness_startTesting__block_invoke_2;
  v3[3] = &unk_1E76FAEE0;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v3);
}

uint64_t __42__CAMDeviceSwitchTestHarness_startTesting__block_invoke_2(uint64_t a1)
{
  v8.receiver = *(a1 + 32);
  v8.super_class = CAMDeviceSwitchTestHarness;
  objc_msgSendSuper2(&v8, sel_startTesting);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__CAMDeviceSwitchTestHarness_startTesting__block_invoke_3;
  v6[3] = &unk_1E76F7850;
  v7 = *(a1 + 56);
  v6[4] = v2;
  return [v2 ensureCaptureDevicePosition:v3 mode:v4 thenPerform:v6];
}

uint64_t __42__CAMDeviceSwitchTestHarness_startTesting__block_invoke_3(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    return [*(result + 32) _internalStopTesting];
  }

  return result;
}

- (void)handleDidOpenViewfinderForReason:(int64_t)reason
{
  v6.receiver = self;
  v6.super_class = CAMDeviceSwitchTestHarness;
  [(CAMModeAndDeviceConfigurationTestHarness *)&v6 handleDidOpenViewfinderForReason:reason];
  isRunningTest = [(CAMPerformanceTestHarness *)self isRunningTest];
  isTestingAnimation = [(CAMDeviceSwitchTestHarness *)self isTestingAnimation];
  if (isRunningTest && isTestingAnimation)
  {
    [(CAMDeviceSwitchTestHarness *)self _internalStopTesting];
  }
}

- (void)_internalStopTesting
{
  [(CAMDeviceSwitchTestHarness *)self testExtensionSeconds];
  if (v3 <= 0.0)
  {

    [(CAMModeAndDeviceConfigurationTestHarness *)self stopTesting];
  }

  else
  {
    v4 = dispatch_time(0, (v3 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__CAMDeviceSwitchTestHarness__internalStopTesting__block_invoke;
    block[3] = &unk_1E76F77B0;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }
}

- (void)ensureCaptureDevicePosition:(int64_t)position mode:(int64_t)mode thenPerform:(id)perform
{
  performCopy = perform;
  viewfinderViewController = [(CAMDeviceSwitchTestHarness *)self viewfinderViewController];
  _configuredMode = [viewfinderViewController _configuredMode];
  _configuredDevice = [viewfinderViewController _configuredDevice];
  if ((_configuredDevice - 1) > 0xA)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_1A3A69A88[_configuredDevice - 1];
  }

  if (_configuredMode == mode && v11 == position)
  {
    performCopy[2](performCopy);
  }

  else
  {
    [(CAMModeAndDeviceConfigurationTestHarness *)self registerHandler:performCopy forChangeToMode:mode devicePosition:position];
    [viewfinderViewController changeToMode:mode device:position == 1 animated:1];
  }
}

@end