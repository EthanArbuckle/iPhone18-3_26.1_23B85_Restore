@interface CAMViewfinderStillImageCaptureTestHarness
- (BOOL)executeAction;
- (BOOL)shouldAttemptAction;
- (CAMViewfinderStillImageCaptureTestHarness)initWithTestName:(id)name maxStillImageCount:(unint64_t)count expectedNumberOfCapturesPerRequest:(unint64_t)request viewfinderViewController:(id)controller performingWarmupCapture:(BOOL)capture forCaptureMode:(int64_t)mode delayBetweenCaptures:(double)captures capturesOnTouchDown:(BOOL)self0;
- (void)cancelTesting;
- (void)failedTestWithReason:(id)reason;
- (void)startTesting;
- (void)stopTesting;
- (void)viewfinderViewController:(id)controller didReceiveStillImageRequestDidCompleteCapture:(id)capture error:(id)error;
- (void)viewfinderViewController:(id)controller didReceiveStillImageRequestDidCompleteStillImageCapture:(id)capture withResponse:(id)response error:(id)error;
- (void)viewfinderViewController:(id)controller didUpdateImageWellWithRequest:(id)request response:(id)response error:(id)error;
- (void)viewfinderViewController:(id)controller willCaptureStillImageForRequest:(id)request;
@end

@implementation CAMViewfinderStillImageCaptureTestHarness

- (CAMViewfinderStillImageCaptureTestHarness)initWithTestName:(id)name maxStillImageCount:(unint64_t)count expectedNumberOfCapturesPerRequest:(unint64_t)request viewfinderViewController:(id)controller performingWarmupCapture:(BOOL)capture forCaptureMode:(int64_t)mode delayBetweenCaptures:(double)captures capturesOnTouchDown:(BOOL)self0
{
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = CAMViewfinderStillImageCaptureTestHarness;
  v18 = [(CAMPerformanceTestHarness *)&v22 initWithTestName:name];
  if (v18)
  {
    v19 = objc_alloc_init(MEMORY[0x1E696AB50]);
    requestIDs = v18->__requestIDs;
    v18->__requestIDs = v19;

    v18->__performWarmupCapture = capture;
    v18->__maxStillImageCount = count;
    v18->__waitingOnWarmupCapture = capture;
    v18->__expectedNumberOfResponsesPerRequest = request;
    v18->__delayBetweenCaptures = captures;
    objc_storeStrong(&v18->__viewfinderViewController, controller);
    v18->__capturesOnTouchDown = down;
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

  testIntervalometer = [(CAMViewfinderStillImageCaptureTestHarness *)self testIntervalometer];
  if ([(CAMViewfinderStillImageCaptureTestHarness *)self _performWarmupCapture])
  {
    [testIntervalometer manuallyGenerateRequest];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CAMViewfinderStillImageCaptureTestHarness;
    [(CAMPerformanceTestHarness *)&v5 startTesting];
    [testIntervalometer startGeneratingRequests];
  }
}

- (void)stopTesting
{
  testIntervalometer = self->_testIntervalometer;
  if (testIntervalometer)
  {
    self->_testIntervalometer = 0;
  }

  _requestIDs = [(CAMViewfinderStillImageCaptureTestHarness *)self _requestIDs];
  v5 = [_requestIDs count];

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

- (void)failedTestWithReason:(id)reason
{
  v9 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = reasonCopy;
    _os_log_impl(&dword_1A3640000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = CAMViewfinderStillImageCaptureTestHarness;
  [(CAMPerformanceTestHarness *)&v6 failedTestWithReason:reasonCopy];
}

- (void)viewfinderViewController:(id)controller didReceiveStillImageRequestDidCompleteStillImageCapture:(id)capture withResponse:(id)response error:(id)error
{
  errorCopy = error;
  persistenceUUID = [capture persistenceUUID];
  if (errorCopy)
  {
    errorCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Capture failed with error: %@", errorCopy];
    [(CAMViewfinderStillImageCaptureTestHarness *)self failedTestWithReason:errorCopy];
  }

  _requestIDs = [(CAMViewfinderStillImageCaptureTestHarness *)self _requestIDs];
  [_requestIDs removeObject:persistenceUUID];

  if ([(CAMViewfinderStillImageCaptureTestHarness *)self _performWarmupCapture])
  {
    _requestIDs2 = [(CAMViewfinderStillImageCaptureTestHarness *)self _requestIDs];
    v12 = [_requestIDs2 countForObject:persistenceUUID];

    if (!v12)
    {
      [(CAMViewfinderStillImageCaptureTestHarness *)self set_performWarmupCapture:0];
      [(CAMViewfinderStillImageCaptureTestHarness *)self set_waitingOnWarmupCapture:0];
      [(CAMViewfinderStillImageCaptureTestHarness *)self startTesting];
    }
  }
}

- (void)viewfinderViewController:(id)controller didReceiveStillImageRequestDidCompleteCapture:(id)capture error:(id)error
{
  captureCopy = capture;
  v7 = dispatch_time(0, 1000000000);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __122__CAMViewfinderStillImageCaptureTestHarness_viewfinderViewController_didReceiveStillImageRequestDidCompleteCapture_error___block_invoke;
  v9[3] = &unk_1E76F7960;
  v10 = captureCopy;
  selfCopy = self;
  v8 = captureCopy;
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

- (void)viewfinderViewController:(id)controller willCaptureStillImageForRequest:(id)request
{
  v16 = *MEMORY[0x1E69E9840];
  persistenceUUID = [request persistenceUUID];
  [(CAMViewfinderStillImageCaptureTestHarness *)self set_generatedRequestsCount:[(CAMViewfinderStillImageCaptureTestHarness *)self _generatedRequestsCount]+ 1];
  v6 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543874;
    v11 = persistenceUUID;
    v12 = 2048;
    _generatedRequestsCount = [(CAMViewfinderStillImageCaptureTestHarness *)self _generatedRequestsCount];
    v14 = 2048;
    _maxStillImageCount = [(CAMViewfinderStillImageCaptureTestHarness *)self _maxStillImageCount];
    _os_log_impl(&dword_1A3640000, v6, OS_LOG_TYPE_DEFAULT, "CAMViewfinderStillImageCaptureTestHarness willCaptureStillImageForRequest, persistenceUUID:%{public}@, generatedRequestsCount:%ld, _maxStillImageCount:%ld", &v10, 0x20u);
  }

  _generatedRequestsCount2 = [(CAMViewfinderStillImageCaptureTestHarness *)self _generatedRequestsCount];
  if (_generatedRequestsCount2 == [(CAMViewfinderStillImageCaptureTestHarness *)self _maxStillImageCount])
  {
    [(CAMViewfinderStillImageCaptureTestHarness *)self set_finalRequestPersistenceUUID:persistenceUUID];
  }

  if ([(CAMViewfinderStillImageCaptureTestHarness *)self _expectedNumberOfResponsesPerRequest])
  {
    v8 = 0;
    do
    {
      _requestIDs = [(CAMViewfinderStillImageCaptureTestHarness *)self _requestIDs];
      [_requestIDs addObject:persistenceUUID];

      ++v8;
    }

    while ([(CAMViewfinderStillImageCaptureTestHarness *)self _expectedNumberOfResponsesPerRequest]> v8);
  }
}

- (void)viewfinderViewController:(id)controller didUpdateImageWellWithRequest:(id)request response:(id)response error:(id)error
{
  didUpdateFinalThumbnailHandler2 = [(CAMViewfinderStillImageCaptureTestHarness *)self testIntervalometer:controller];
  successfullActionCount = [didUpdateFinalThumbnailHandler2 successfullActionCount];
  if (successfullActionCount == [(CAMViewfinderStillImageCaptureTestHarness *)self _maxStillImageCount])
  {
    didUpdateFinalThumbnailHandler = [(CAMViewfinderStillImageCaptureTestHarness *)self didUpdateFinalThumbnailHandler];

    if (!didUpdateFinalThumbnailHandler)
    {
      return;
    }

    didUpdateFinalThumbnailHandler2 = [(CAMViewfinderStillImageCaptureTestHarness *)self didUpdateFinalThumbnailHandler];
    didUpdateFinalThumbnailHandler2[2]();
  }
}

- (BOOL)shouldAttemptAction
{
  _viewfinderViewController = [(CAMViewfinderStillImageCaptureTestHarness *)self _viewfinderViewController];
  isCapturingPhoto = [_viewfinderViewController isCapturingPhoto];

  result = [(CAMViewfinderStillImageCaptureTestHarness *)self _allowOverlappingCaptures];
  if (!result && (isCapturingPhoto & 1) == 0)
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
  isStillDuringVideo = [(CAMViewfinderStillImageCaptureTestHarness *)self isStillDuringVideo];
  _viewfinderViewController = [(CAMViewfinderStillImageCaptureTestHarness *)self _viewfinderViewController];
  v5 = _viewfinderViewController;
  if (isStillDuringVideo)
  {
    v6 = [_viewfinderViewController takeStillDuringVideoWithTouchUpDelay:0.1];
  }

  else
  {
    v6 = [_viewfinderViewController pressShutterButtonWithTouchUpDelay:0.1];
  }

  v7 = v6;

  return v7;
}

@end