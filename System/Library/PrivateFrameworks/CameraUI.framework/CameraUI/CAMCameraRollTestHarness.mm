@interface CAMCameraRollTestHarness
- (CAMCameraRollTestHarness)initWithTestName:(id)name viewfinderViewController:(id)controller testingAnimation:(BOOL)animation testingWarmPresentation:(BOOL)presentation awaitPreload:(BOOL)preload settlingDelay:(double)delay;
- (void)_dismissCameraRollImmediately;
- (void)_handlePUDisplayLinkStarted:(id)started;
- (void)_presentCameraRollAnimated;
- (void)startTesting;
- (void)stopTesting;
@end

@implementation CAMCameraRollTestHarness

- (CAMCameraRollTestHarness)initWithTestName:(id)name viewfinderViewController:(id)controller testingAnimation:(BOOL)animation testingWarmPresentation:(BOOL)presentation awaitPreload:(BOOL)preload settlingDelay:(double)delay
{
  controllerCopy = controller;
  v20.receiver = self;
  v20.super_class = CAMCameraRollTestHarness;
  v16 = [(CAMPerformanceTestHarness *)&v20 initWithTestName:name];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_viewfinderViewController, controller);
    v17->_awaitPreload = preload;
    v17->_settlingDelay = delay;
    v17->_testingWarmPresentation = presentation;
    v17->_testingAnimation = animation;
    v18 = v17;
  }

  return v17;
}

- (void)startTesting
{
  isTestingAnimation = [(CAMCameraRollTestHarness *)self isTestingAnimation];
  awaitPreload = [(CAMCameraRollTestHarness *)self awaitPreload];
  testingWarmPresentation = [(CAMCameraRollTestHarness *)self testingWarmPresentation];
  [(CAMCameraRollTestHarness *)self settlingDelay];
  v7 = v6;
  viewfinderViewController = [(CAMCameraRollTestHarness *)self viewfinderViewController];
  [viewfinderViewController setCameraRollControllerTestDelegate:self];

  if (testingWarmPresentation)
  {
    [(CAMCameraRollTestHarness *)self _presentCameraRollAnimated];
    [(CAMCameraRollTestHarness *)self _dismissCameraRollImmediately];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__CAMCameraRollTestHarness_startTesting__block_invoke;
  aBlock[3] = &unk_1E76F7850;
  aBlock[4] = self;
  v22 = isTestingAnimation;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (v7 > 0.0)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __40__CAMCameraRollTestHarness_startTesting__block_invoke_3;
    v18[3] = &unk_1E76F7E18;
    v20 = v7;
    v19 = v9;
    v10 = _Block_copy(v18);
  }

  if (awaitPreload)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    delegate = [mEMORY[0x1E69DC668] delegate];

    cameraRollController = [delegate cameraRollController];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __40__CAMCameraRollTestHarness_startTesting__block_invoke_4;
    v15[3] = &unk_1E76F7E40;
    v16 = cameraRollController;
    v17 = v10;
    v14 = cameraRollController;
    v10 = _Block_copy(v15);
  }

  v10[2](v10);
}

void __40__CAMCameraRollTestHarness_startTesting__block_invoke(uint64_t a1)
{
  v5.receiver = *(a1 + 32);
  v5.super_class = CAMCameraRollTestHarness;
  objc_msgSendSuper2(&v5, sel_startTesting);
  [*(a1 + 32) _presentCameraRollAnimated];
  if (*(a1 + 40) == 1)
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 addObserver:*(a1 + 32) selector:sel__handlePUDisplayLinkStarted_ name:*MEMORY[0x1E69C49A8] object:0];
  }

  else
  {
    v3 = *MEMORY[0x1E69DDA98];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __40__CAMCameraRollTestHarness_startTesting__block_invoke_2;
    v4[3] = &unk_1E76F77B0;
    v4[4] = *(a1 + 32);
    [v3 installCACommitCompletionBlock:v4];
  }
}

void __40__CAMCameraRollTestHarness_startTesting__block_invoke_3(uint64_t a1)
{
  v2 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
  v3 = *(a1 + 32);
  v4 = MEMORY[0x1E69E96A0];

  dispatch_after(v2, v4, v3);
}

- (void)stopTesting
{
  v4.receiver = self;
  v4.super_class = CAMCameraRollTestHarness;
  [(CAMPerformanceTestHarness *)&v4 stopTesting];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(CAMCameraRollTestHarness *)self _dismissCameraRollImmediately];
}

- (void)_handlePUDisplayLinkStarted:(id)started
{
  viewfinderViewController = [(CAMCameraRollTestHarness *)self viewfinderViewController];
  presentedViewController = [viewfinderViewController presentedViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = presentedViewController;
    v7 = *MEMORY[0x1E69DDA98];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__CAMCameraRollTestHarness__handlePUDisplayLinkStarted___block_invoke;
    v11[3] = &unk_1E76F77B0;
    v11[4] = self;
    [v7 installCACommitCompletionBlock:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__CAMCameraRollTestHarness__handlePUDisplayLinkStarted___block_invoke_2;
    v9[3] = &unk_1E76F7960;
    v9[4] = self;
    v10 = v6;
    v8 = v6;
    [v8 ppt_installTransitionAnimationCompletionHandler:v9];
  }
}

void __56__CAMCameraRollTestHarness__handlePUDisplayLinkStarted___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) stopSubtestWithName:@"animation"];
  v2 = [*(a1 + 40) topViewController];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__CAMCameraRollTestHarness__handlePUDisplayLinkStarted___block_invoke_3;
  v3[3] = &unk_1E76F7988;
  v3[4] = *(a1 + 32);
  [v2 ppt_notifyWhenDeferredProcessingIsDoneAndFinalImageDisplayedWithTimeout:v3 handler:30.0];
}

uint64_t __56__CAMCameraRollTestHarness__handlePUDisplayLinkStarted___block_invoke_3(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if ((a2 & 1) == 0)
  {
    [v3 stopSubtestWithName:@"TimeToSharp"];
    v3 = *(a1 + 32);
  }

  return [v3 stopTesting];
}

- (void)_presentCameraRollAnimated
{
  viewfinderViewController = [(CAMCameraRollTestHarness *)self viewfinderViewController];
  [(CAMPerformanceTestHarness *)self startSubtestWithName:@"TimeToSharp" withMetrics:&unk_1F16C9110];
  [viewfinderViewController simulateImageWellTap];
}

- (void)_dismissCameraRollImmediately
{
  viewfinderViewController = [(CAMCameraRollTestHarness *)self viewfinderViewController];
  [viewfinderViewController dismissViewControllerAnimated:1 completion:0];
}

@end