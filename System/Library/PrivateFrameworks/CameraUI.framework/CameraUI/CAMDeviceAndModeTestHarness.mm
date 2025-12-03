@interface CAMDeviceAndModeTestHarness
- (CAMDeviceAndModeTestHarness)initWithTestName:(id)name devicePosition:(int64_t)position captureMode:(int64_t)mode viewFinderViewControl:(id)control;
- (void)startTesting;
@end

@implementation CAMDeviceAndModeTestHarness

- (CAMDeviceAndModeTestHarness)initWithTestName:(id)name devicePosition:(int64_t)position captureMode:(int64_t)mode viewFinderViewControl:(id)control
{
  controlCopy = control;
  v16.receiver = self;
  v16.super_class = CAMDeviceAndModeTestHarness;
  v12 = [(CAMModeAndDeviceConfigurationTestHarness *)&v16 initWithTestName:name];
  v13 = v12;
  if (v12)
  {
    v12->__desiredPosition = position;
    v12->__desiredMode = mode;
    objc_storeStrong(&v12->__viewController, control);
    v14 = v13;
  }

  return v13;
}

- (void)startTesting
{
  v12.receiver = self;
  v12.super_class = CAMDeviceAndModeTestHarness;
  [(CAMModeAndDeviceConfigurationTestHarness *)&v12 startTesting];
  _viewController = [(CAMDeviceAndModeTestHarness *)self _viewController];
  currentCaptureMode = [_viewController currentCaptureMode];
  v5 = [_viewController currentCaptureDevice] - 1;
  if (v5 > 0xA)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1A3A689F0[v5];
  }

  _desiredMode = [(CAMDeviceAndModeTestHarness *)self _desiredMode];
  _desiredPosition = [(CAMDeviceAndModeTestHarness *)self _desiredPosition];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__CAMDeviceAndModeTestHarness_startTesting__block_invoke;
  aBlock[3] = &unk_1E76F77B0;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (_desiredMode == currentCaptureMode && _desiredPosition == v6)
  {
    (*(v9 + 2))(v9);
  }

  else
  {
    [(CAMModeAndDeviceConfigurationTestHarness *)self registerHandler:v9 forChangeToMode:_desiredMode devicePosition:_desiredPosition];
    [_viewController changeToMode:_desiredMode device:_desiredPosition == 1];
  }
}

@end