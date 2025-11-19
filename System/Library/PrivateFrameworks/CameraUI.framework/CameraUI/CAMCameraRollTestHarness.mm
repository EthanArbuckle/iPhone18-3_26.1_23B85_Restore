@interface CAMCameraRollTestHarness
- (CAMCameraRollTestHarness)initWithTestName:(id)a3 viewfinderViewController:(id)a4 testingAnimation:(BOOL)a5 testingWarmPresentation:(BOOL)a6 awaitPreload:(BOOL)a7 settlingDelay:(double)a8;
- (void)_dismissCameraRollImmediately;
- (void)_handlePUDisplayLinkStarted:(id)a3;
- (void)_presentCameraRollAnimated;
- (void)startTesting;
- (void)stopTesting;
@end

@implementation CAMCameraRollTestHarness

- (CAMCameraRollTestHarness)initWithTestName:(id)a3 viewfinderViewController:(id)a4 testingAnimation:(BOOL)a5 testingWarmPresentation:(BOOL)a6 awaitPreload:(BOOL)a7 settlingDelay:(double)a8
{
  v15 = a4;
  v20.receiver = self;
  v20.super_class = CAMCameraRollTestHarness;
  v16 = [(CAMPerformanceTestHarness *)&v20 initWithTestName:a3];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_viewfinderViewController, a4);
    v17->_awaitPreload = a7;
    v17->_settlingDelay = a8;
    v17->_testingWarmPresentation = a6;
    v17->_testingAnimation = a5;
    v18 = v17;
  }

  return v17;
}

- (void)startTesting
{
  v3 = [(CAMCameraRollTestHarness *)self isTestingAnimation];
  v4 = [(CAMCameraRollTestHarness *)self awaitPreload];
  v5 = [(CAMCameraRollTestHarness *)self testingWarmPresentation];
  [(CAMCameraRollTestHarness *)self settlingDelay];
  v7 = v6;
  v8 = [(CAMCameraRollTestHarness *)self viewfinderViewController];
  [v8 setCameraRollControllerTestDelegate:self];

  if (v5)
  {
    [(CAMCameraRollTestHarness *)self _presentCameraRollAnimated];
    [(CAMCameraRollTestHarness *)self _dismissCameraRollImmediately];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__CAMCameraRollTestHarness_startTesting__block_invoke;
  aBlock[3] = &unk_1E76F7850;
  aBlock[4] = self;
  v22 = v3;
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

  if (v4)
  {
    v11 = [MEMORY[0x1E69DC668] sharedApplication];
    v12 = [v11 delegate];

    v13 = [v12 cameraRollController];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __40__CAMCameraRollTestHarness_startTesting__block_invoke_4;
    v15[3] = &unk_1E76F7E40;
    v16 = v13;
    v17 = v10;
    v14 = v13;
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(CAMCameraRollTestHarness *)self _dismissCameraRollImmediately];
}

- (void)_handlePUDisplayLinkStarted:(id)a3
{
  v4 = [(CAMCameraRollTestHarness *)self viewfinderViewController];
  v5 = [v4 presentedViewController];
  if (objc_opt_respondsToSelector())
  {
    v6 = v5;
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
  v3 = [(CAMCameraRollTestHarness *)self viewfinderViewController];
  [(CAMPerformanceTestHarness *)self startSubtestWithName:@"TimeToSharp" withMetrics:&unk_1F16C9110];
  [v3 simulateImageWellTap];
}

- (void)_dismissCameraRollImmediately
{
  v2 = [(CAMCameraRollTestHarness *)self viewfinderViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

@end