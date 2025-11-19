@interface CAMViewfinderVideoCaptureTestHarness
- (CAMViewfinderVideoCaptureTestHarness)initWithTestName:(id)a3 viewfinderViewController:(id)a4 videoDurationInSeconds:(double)a5 initialDelayInSeconds:(double)a6 captureCTMVideo:(BOOL)a7;
- (void)_endCaptureWithError:(id)a3;
- (void)_startCapture;
- (void)startTesting;
@end

@implementation CAMViewfinderVideoCaptureTestHarness

- (CAMViewfinderVideoCaptureTestHarness)initWithTestName:(id)a3 viewfinderViewController:(id)a4 videoDurationInSeconds:(double)a5 initialDelayInSeconds:(double)a6 captureCTMVideo:(BOOL)a7
{
  v13 = a4;
  v17.receiver = self;
  v17.super_class = CAMViewfinderVideoCaptureTestHarness;
  v14 = [(CAMPerformanceTestHarness *)&v17 initWithTestName:a3];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->__viewfinderViewController, a4);
    v15->__videoDurationInSeconds = a5;
    v15->__initialDelayInSeconds = a6;
    v15->__captureCTMVideo = a7;
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
  v3 = [(CAMViewfinderVideoCaptureTestHarness *)self _viewfinderViewController];
  [(CAMPerformanceTestHarness *)self stopSubtestWithName:@"TimeToStartRecording"];
  v4 = [(CAMViewfinderVideoCaptureTestHarness *)self startVideoHandler];

  if (v4)
  {
    v5 = [(CAMViewfinderVideoCaptureTestHarness *)self startVideoHandler];
    v5[2]();
  }

  if (![(CAMViewfinderVideoCaptureTestHarness *)self _captureCTMVideo])
  {
    [(CAMViewfinderVideoCaptureTestHarness *)self _videoDurationInSeconds];
    v7 = dispatch_time(0, (v6 * 1000000000.0));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__CAMViewfinderVideoCaptureTestHarness__startCapture__block_invoke;
    v8[3] = &unk_1E76F7960;
    v9 = v3;
    v10 = self;
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

- (void)_endCaptureWithError:(id)a3
{
  v9 = a3;
  v4 = [(CAMViewfinderVideoCaptureTestHarness *)self endVideoHandler];

  if (v4)
  {
    v5 = [(CAMViewfinderVideoCaptureTestHarness *)self endVideoHandler];
    v5[2]();
  }

  if (v9)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = [v9 localizedDescription];
    v8 = [v6 stringWithFormat:@"Error from videoRequestDidCompleteCapture: %@", v7];
    [(CAMPerformanceTestHarness *)self failedTestWithReason:v8];
  }

  else
  {
    [(CAMPerformanceTestHarness *)self stopTesting];
  }
}

@end