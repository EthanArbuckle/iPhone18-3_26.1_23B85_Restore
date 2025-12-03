@interface CAMDeviceSwitchAnimationTestHarness
+ (id)harnessWithTestName:(id)name viewfinder:(id)viewfinder devicePosition:(int64_t)position;
- (CAMDeviceSwitchAnimationTestHarness)initWithTestName:(id)name viewfinder:(id)viewfinder devicePosition:(int64_t)position;
- (void)ensureCaptureDevicePosition:(int64_t)position mode:(int64_t)mode thenPerform:(id)perform;
- (void)startTesting;
@end

@implementation CAMDeviceSwitchAnimationTestHarness

- (CAMDeviceSwitchAnimationTestHarness)initWithTestName:(id)name viewfinder:(id)viewfinder devicePosition:(int64_t)position
{
  viewfinderCopy = viewfinder;
  v14.receiver = self;
  v14.super_class = CAMDeviceSwitchAnimationTestHarness;
  v10 = [(CAMModeAndDeviceConfigurationTestHarness *)&v14 initWithTestName:name];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_viewfinder, viewfinder);
    v11->_desiredDevicePosition = position;
    v12 = v11;
  }

  return v11;
}

+ (id)harnessWithTestName:(id)name viewfinder:(id)viewfinder devicePosition:(int64_t)position
{
  viewfinderCopy = viewfinder;
  nameCopy = name;
  v9 = [[CAMDeviceSwitchAnimationTestHarness alloc] initWithTestName:nameCopy viewfinder:viewfinderCopy devicePosition:position];

  return v9;
}

- (void)startTesting
{
  v2 = self->_desiredDevicePosition == 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__CAMDeviceSwitchAnimationTestHarness_startTesting__block_invoke;
  v3[3] = &unk_1E76F77B0;
  v3[4] = self;
  [(CAMDeviceSwitchAnimationTestHarness *)self ensureCaptureDevicePosition:v2 mode:0 thenPerform:v3];
}

void __51__CAMDeviceSwitchAnimationTestHarness_startTesting__block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CAMDeviceSwitchAnimationTestHarness_startTesting__block_invoke_2;
  block[3] = &unk_1E76F77B0;
  block[4] = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
}

uint64_t __51__CAMDeviceSwitchAnimationTestHarness_startTesting__block_invoke_2(uint64_t a1)
{
  v6.receiver = *(a1 + 32);
  v6.super_class = CAMDeviceSwitchAnimationTestHarness;
  objc_msgSendSuper2(&v6, sel_startTesting);
  v2 = *(a1 + 32);
  v3 = v2[8];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__CAMDeviceSwitchAnimationTestHarness_startTesting__block_invoke_3;
  v5[3] = &unk_1E76F77B0;
  v5[4] = v2;
  return [v2 ensureCaptureDevicePosition:v3 mode:0 thenPerform:v5];
}

- (void)ensureCaptureDevicePosition:(int64_t)position mode:(int64_t)mode thenPerform:(id)perform
{
  performCopy = perform;
  _configuredMode = [(CAMViewfinderViewController *)self->_viewfinder _configuredMode];
  _configuredDevice = [(CAMViewfinderViewController *)self->_viewfinder _configuredDevice];
  if ((_configuredDevice - 1) > 0xA)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_1A3A6A038[_configuredDevice - 1];
  }

  if (_configuredMode == mode && v10 == position)
  {
    performCopy[2](performCopy);
  }

  else
  {
    [(CAMModeAndDeviceConfigurationTestHarness *)self registerHandler:performCopy forChangeToMode:mode devicePosition:position];
    [(CAMViewfinderViewController *)self->_viewfinder changeToMode:mode device:position == 1 animated:1];
  }
}

@end