@interface CAMViewfinderStillImageCaptureTestHarness
- (BOOL)executeAction;
- (BOOL)shouldAttemptAction;
- (CAMViewfinderStillImageCaptureTestHarness)initWithTestName:(id)a3 maxStillImageCount:(unint64_t)a4 expectedNumberOfCapturesPerRequest:(unint64_t)a5 viewfinderViewController:(id)a6 performingWarmupCapture:(BOOL)a7 forCaptureMode:(int64_t)a8 delayBetweenCaptures:(double)a9 capturesOnTouchDown:(BOOL)a10;
- (void)cancelTesting;
- (void)failedTestWithReason:(id)a3;
- (void)startTesting;
- (void)stopTesting;
- (void)viewfinderViewController:(id)a3 didReceiveStillImageRequestDidCompleteCapture:(id)a4 error:(id)a5;
- (void)viewfinderViewController:(id)a3 didReceiveStillImageRequestDidCompleteStillImageCapture:(id)a4 withResponse:(id)a5 error:(id)a6;
- (void)viewfinderViewController:(id)a3 didUpdateImageWellWithRequest:(id)a4 response:(id)a5 error:(id)a6;
- (void)viewfinderViewController:(id)a3 willCaptureStillImageForRequest:(id)a4;
@end

@implementation CAMViewfinderStillImageCaptureTestHarness

- (CAMViewfinderStillImageCaptureTestHarness)initWithTestName:(id)a3 maxStillImageCount:(unint64_t)a4 expectedNumberOfCapturesPerRequest:(unint64_t)a5 viewfinderViewController:(id)a6 performingWarmupCapture:(BOOL)a7 forCaptureMode:(int64_t)a8 delayBetweenCaptures:(double)a9 capturesOnTouchDown:(BOOL)a10
{
  v17 = a6;
  v22.receiver = self;
  v22.super_class = CAMViewfinderStillImageCaptureTestHarness;
  v18 = [(CAMPerformanceTestHarness *)&v22 initWithTestName:a3];
  if (v18)
  {
    v19 = objc_alloc_init(MEMORY[0x1E696AB50]);
    requestIDs = v18->__requestIDs;
    v18->__requestIDs = v19;

    v18->__performWarmupCapture = a7;
    v18->__maxStillImageCount = a4;
    v18->__waitingOnWarmupCapture = a7;
    v18->__expectedNumberOfResponsesPerRequest = a5;
    v18->__delayBetweenCaptures = a9;
    objc_storeStrong(&v18->__viewfinderViewController, a6);
    v18->__capturesOnTouchDown = a10;
  }

  return v18;
}

- (void)startTesting
{
  if ([(CAMViewfinderStillImageCaptureTestHarness *)self isStillDuringVideo])
  {
    v3 = +[CAMCaptureCapabilities capabilities];
    if (([v3 isStillDuringVideoSupportedForMode:{-[CAMViewfinderStillImageCaptureTestHarness _mode](self, "_mode")}] & 1) == 0)
    {
      [(CAMViewfinderStillImageCaptureTestHarness *)self failedTestWithReason:@"Stills during video is not supported for this device and mode"];
    }
  }

  v4 = [(CAMViewfinderStillImageCaptureTestHarness *)self testIntervalometer];
  if ([(CAMViewfinderStillImageCaptureTestHarness *)self _performWarmupCapture])
  {
    [v4 manuallyGenerateRequest];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CAMViewfinderStillImageCaptureTestHarness;
    [(CAMPerformanceTestHarness *)&v5 startTesting];
    [v4 startGeneratingRequests];
  }
}

- (void)stopTesting
{
  testIntervalometer = self->_testIntervalometer;
  if (testIntervalometer)
  {
    self->_testIntervalometer = 0;
  }

  v4 = [(CAMViewfinderStillImageCaptureTestHarness *)self _requestIDs];
  v5 = [v4 count];

  if (v5)
  {
    [(CAMViewfinderStillImageCaptureTestHarness *)self failedTestWithReason:@"Ended test before receiving all responses"];
  }

  v6.receiver = self;
  v6.super_class = CAMViewfinderStillImageCaptureTestHarness;
  [(CAMPerformanceTestHarness *)&v6 stopTesting];
}

- (void)cancelTesting
{
  testIntervalometer = self->_testIntervalometer;
  if (testIntervalometer)
  {
    [(CAMViewfinderActionIntervalometer *)testIntervalometer stopAttemptingActions];
    v4 = self->_testIntervalometer;
    self->_testIntervalometer = 0;
  }

  v5.receiver = self;
  v5.super_class = CAMViewfinderStillImageCaptureTestHarness;
  [(CAMPerformanceTestHarness *)&v5 stopTesting];
}

- (void)failedTestWithReason:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = CAMViewfinderStillImageCaptureTestHarness;
  [(CAMPerformanceTestHarness *)&v6 failedTestWithReason:v4];
}

- (void)viewfinderViewController:(id)a3 didReceiveStillImageRequestDidCompleteStillImageCapture:(id)a4 withResponse:(id)a5 error:(id)a6
{
  v13 = a6;
  v8 = [a4 persistenceUUID];
  if (v13)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Capture failed with error: %@", v13];
    [(CAMViewfinderStillImageCaptureTestHarness *)self failedTestWithReason:v9];
  }

  v10 = [(CAMViewfinderStillImageCaptureTestHarness *)self _requestIDs];
  [v10 removeObject:v8];

  if ([(CAMViewfinderStillImageCaptureTestHarness *)self _performWarmupCapture])
  {
    v11 = [(CAMViewfinderStillImageCaptureTestHarness *)self _requestIDs];
    v12 = [v11 countForObject:v8];

    if (!v12)
    {
      [(CAMViewfinderStillImageCaptureTestHarness *)self set_performWarmupCapture:0];
      [(CAMViewfinderStillImageCaptureTestHarness *)self set_waitingOnWarmupCapture:0];
      [(CAMViewfinderStillImageCaptureTestHarness *)self startTesting];
    }
  }
}

- (void)viewfinderViewController:(id)a3 didReceiveStillImageRequestDidCompleteCapture:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = dispatch_time(0, 1000000000);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __122__CAMViewfinderStillImageCaptureTestHarness_viewfinderViewController_didReceiveStillImageRequestDidCompleteCapture_error___block_invoke;
  v9[3] = &unk_1E76F7960;
  v10 = v6;
  v11 = self;
  v8 = v6;
  dispatch_after(v7, MEMORY[0x1E69E96A0], v9);
}

void __122__CAMViewfinderStillImageCaptureTestHarness_viewfinderViewController_didReceiveStillImageRequestDidCompleteCapture_error___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) persistenceUUID];
  v3 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 40) _finalRequestPersistenceUUID];
    v5 = [*(a1 + 40) _generatedRequestsCount];
    v6 = [*(a1 + 40) _maxStillImageCount];
    *buf = 138544130;
    v13 = v2;
    v14 = 2114;
    v15 = v4;
    v16 = 2048;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_1A3640000, v3, OS_LOG_TYPE_DEFAULT, "CAMViewfinderStillImageCaptureTestHarness didReceiveStillImageRequestDidCompleteCapture, persistenceUUID:%{public}@, finalRequestPersistenceUUID:%{public}@, generatedRequestsCount:%ld, _maxStillImageCount:%ld", buf, 0x2Au);
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not receive correct number of callbacks for %@", v2];
  v8 = [*(a1 + 40) _requestIDs];
  v9 = [v8 countForObject:v2];

  if (v9)
  {
    [*(a1 + 40) failedTestWithReason:v7];
  }

  v10 = [*(a1 + 40) _finalRequestPersistenceUUID];
  v11 = [v2 isEqualToString:v10];

  if (v11)
  {
    [*(a1 + 40) stopTesting];
  }
}

- (void)viewfinderViewController:(id)a3 willCaptureStillImageForRequest:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [a4 persistenceUUID];
  [(CAMViewfinderStillImageCaptureTestHarness *)self set_generatedRequestsCount:[(CAMViewfinderStillImageCaptureTestHarness *)self _generatedRequestsCount]+ 1];
  v6 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543874;
    v11 = v5;
    v12 = 2048;
    v13 = [(CAMViewfinderStillImageCaptureTestHarness *)self _generatedRequestsCount];
    v14 = 2048;
    v15 = [(CAMViewfinderStillImageCaptureTestHarness *)self _maxStillImageCount];
    _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "CAMViewfinderStillImageCaptureTestHarness willCaptureStillImageForRequest, persistenceUUID:%{public}@, generatedRequestsCount:%ld, _maxStillImageCount:%ld", &v10, 0x20u);
  }

  v7 = [(CAMViewfinderStillImageCaptureTestHarness *)self _generatedRequestsCount];
  if (v7 == [(CAMViewfinderStillImageCaptureTestHarness *)self _maxStillImageCount])
  {
    [(CAMViewfinderStillImageCaptureTestHarness *)self set_finalRequestPersistenceUUID:v5];
  }

  if ([(CAMViewfinderStillImageCaptureTestHarness *)self _expectedNumberOfResponsesPerRequest])
  {
    v8 = 0;
    do
    {
      v9 = [(CAMViewfinderStillImageCaptureTestHarness *)self _requestIDs];
      [v9 addObject:v5];

      ++v8;
    }

    while ([(CAMViewfinderStillImageCaptureTestHarness *)self _expectedNumberOfResponsesPerRequest]> v8);
  }
}

- (void)viewfinderViewController:(id)a3 didUpdateImageWellWithRequest:(id)a4 response:(id)a5 error:(id)a6
{
  v9 = [(CAMViewfinderStillImageCaptureTestHarness *)self testIntervalometer:a3];
  v7 = [v9 successfullActionCount];
  if (v7 == [(CAMViewfinderStillImageCaptureTestHarness *)self _maxStillImageCount])
  {
    v8 = [(CAMViewfinderStillImageCaptureTestHarness *)self didUpdateFinalThumbnailHandler];

    if (!v8)
    {
      return;
    }

    v9 = [(CAMViewfinderStillImageCaptureTestHarness *)self didUpdateFinalThumbnailHandler];
    v9[2]();
  }
}

- (BOOL)shouldAttemptAction
{
  v3 = [(CAMViewfinderStillImageCaptureTestHarness *)self _viewfinderViewController];
  v4 = [v3 isCapturingPhoto];

  result = [(CAMViewfinderStillImageCaptureTestHarness *)self _allowOverlappingCaptures];
  if (!result && (v4 & 1) == 0)
  {
    [(CAMViewfinderStillImageCaptureTestHarness *)self _lastCaptureCompletionTime];
    if (v6 == 0.0)
    {
      return 1;
    }

    else
    {
      Current = CFAbsoluteTimeGetCurrent();
      [(CAMViewfinderStillImageCaptureTestHarness *)self _lastCaptureCompletionTime];
      v9 = Current - v8;
      [(CAMViewfinderStillImageCaptureTestHarness *)self _delayBetweenCaptures];
      return v9 >= v10;
    }
  }

  return result;
}

- (BOOL)executeAction
{
  v3 = [(CAMViewfinderStillImageCaptureTestHarness *)self isStillDuringVideo];
  v4 = [(CAMViewfinderStillImageCaptureTestHarness *)self _viewfinderViewController];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 takeStillDuringVideoWithTouchUpDelay:0.1];
  }

  else
  {
    v6 = [v4 pressShutterButtonWithTouchUpDelay:0.1];
  }

  v7 = v6;

  return v7;
}

@end