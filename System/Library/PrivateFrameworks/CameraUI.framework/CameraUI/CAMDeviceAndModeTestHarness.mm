@interface CAMDeviceAndModeTestHarness
- (CAMDeviceAndModeTestHarness)initWithTestName:(id)a3 devicePosition:(int64_t)a4 captureMode:(int64_t)a5 viewFinderViewControl:(id)a6;
- (void)startTesting;
@end

@implementation CAMDeviceAndModeTestHarness

- (CAMDeviceAndModeTestHarness)initWithTestName:(id)a3 devicePosition:(int64_t)a4 captureMode:(int64_t)a5 viewFinderViewControl:(id)a6
{
  v11 = a6;
  v16.receiver = self;
  v16.super_class = CAMDeviceAndModeTestHarness;
  v12 = [(CAMModeAndDeviceConfigurationTestHarness *)&v16 initWithTestName:a3];
  v13 = v12;
  if (v12)
  {
    v12->__desiredPosition = a4;
    v12->__desiredMode = a5;
    objc_storeStrong(&v12->__viewController, a6);
    v14 = v13;
  }

  return v13;
}

- (void)startTesting
{
  v12.receiver = self;
  v12.super_class = CAMDeviceAndModeTestHarness;
  [(CAMModeAndDeviceConfigurationTestHarness *)&v12 startTesting];
  v3 = [(CAMDeviceAndModeTestHarness *)self _viewController];
  v4 = [v3 currentCaptureMode];
  v5 = [v3 currentCaptureDevice] - 1;
  if (v5 > 0xA)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1A3A689F0[v5];
  }

  v7 = [(CAMDeviceAndModeTestHarness *)self _desiredMode];
  v8 = [(CAMDeviceAndModeTestHarness *)self _desiredPosition];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__CAMDeviceAndModeTestHarness_startTesting__block_invoke;
  aBlock[3] = &unk_1E76F77B0;
  aBlock[4] = self;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (v7 == v4 && v8 == v6)
  {
    (*(v9 + 2))(v9);
  }

  else
  {
    [(CAMModeAndDeviceConfigurationTestHarness *)self registerHandler:v9 forChangeToMode:v7 devicePosition:v8];
    [v3 changeToMode:v7 device:v8 == 1];
  }
}

@end