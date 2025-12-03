@interface CAMViewfinderVideoCaptureTestHarness
- (CAMViewfinderVideoCaptureTestHarness)initWithTestName:(id)name viewfinderViewController:(id)controller videoDurationInSeconds:(double)seconds initialDelayInSeconds:(double)inSeconds captureCTMVideo:(BOOL)video;
- (void)_endCaptureWithError:(id)error;
- (void)_startCapture;
- (void)startTesting;
@end

@implementation CAMViewfinderVideoCaptureTestHarness

- (CAMViewfinderVideoCaptureTestHarness)initWithTestName:(id)name viewfinderViewController:(id)controller videoDurationInSeconds:(double)seconds initialDelayInSeconds:(double)inSeconds captureCTMVideo:(BOOL)video
{
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = CAMViewfinderVideoCaptureTestHarness;
  v14 = [(CAMPerformanceTestHarness *)&v17 initWithTestName:name];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->__viewfinderViewController, controller);
    v15->__videoDurationInSeconds = seconds;
    v15->__initialDelayInSeconds = inSeconds;
    v15->__captureCTMVideo = video;
  }

  return v15;
}

- (void)startTesting
{
  v6.receiver = self;
  v6.super_class = CAMViewfinderVideoCaptureTestHarness;
  [(CAMPerformanceTestHarness *)&v6 startTesting];
  [(CAMViewfinderVideoCaptureTestHarness *)self _initialDelayInSeconds];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CAMViewfinderVideoCaptureTestHarness_startTesting__block_invoke;
  block[3] = &unk_1E76F77B0;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

void __52__CAMViewfinderVideoCaptureTestHarness_startTesting__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) _viewfinderViewController];
  if ([*(a1 + 32) _captureCTMVideo])
  {
    [*(a1 + 32) _videoDurationInSeconds];
    v3 = v2;
  }

  else
  {
    v3 = 0.2;
  }

  v4 = [v6 pressShutterButtonWithTouchUpDelay:objc_msgSend(*(a1 + 32) shutterBehavior:{"_captureCTMVideo"), v3}];
  v5 = *(a1 + 32);
  if (v4)
  {
    [v5 startSubtestWithName:@"TimeToStartRecording" withMetrics:&unk_1F16C9188];
  }

  else
  {
    [v5 failedTestWithReason:@"Unable to start video recording"];
  }
}

- (void)_startCapture
{
  _viewfinderViewController = [(CAMViewfinderVideoCaptureTestHarness *)self _viewfinderViewController];
  [(CAMPerformanceTestHarness *)self stopSubtestWithName:@"TimeToStartRecording"];
  startVideoHandler = [(CAMViewfinderVideoCaptureTestHarness *)self startVideoHandler];

  if (startVideoHandler)
  {
    startVideoHandler2 = [(CAMViewfinderVideoCaptureTestHarness *)self startVideoHandler];
    startVideoHandler2[2]();
  }

  if (![(CAMViewfinderVideoCaptureTestHarness *)self _captureCTMVideo])
  {
    [(CAMViewfinderVideoCaptureTestHarness *)self _videoDurationInSeconds];
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__CAMViewfinderVideoCaptureTestHarness__startCapture__block_invoke;
    v8[3] = &unk_1E76F7960;
    v9 = _viewfinderViewController;
    selfCopy = self;
    dispatch_after(v7, MEMORY[0x1E69E96A0], v8);
  }
}

uint64_t __53__CAMViewfinderVideoCaptureTestHarness__startCapture__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) pressShutterButtonWithTouchUpDelay:0.2];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);

    return [v3 failedTestWithReason:@"Unable to end video recording"];
  }

  return result;
}

- (void)_endCaptureWithError:(id)error
{
  errorCopy = error;
  endVideoHandler = [(CAMViewfinderVideoCaptureTestHarness *)self endVideoHandler];

  if (endVideoHandler)
  {
    endVideoHandler2 = [(CAMViewfinderVideoCaptureTestHarness *)self endVideoHandler];
    endVideoHandler2[2]();
  }

  if (errorCopy)
  {
    v6 = MEMORY[0x1E696AEC0];
    localizedDescription = [errorCopy localizedDescription];
    v8 = [v6 stringWithFormat:@"Error from videoRequestDidCompleteCapture: %@", localizedDescription];
    [(CAMPerformanceTestHarness *)self failedTestWithReason:v8];
  }

  else
  {
    [(CAMPerformanceTestHarness *)self stopTesting];
  }
}

@end