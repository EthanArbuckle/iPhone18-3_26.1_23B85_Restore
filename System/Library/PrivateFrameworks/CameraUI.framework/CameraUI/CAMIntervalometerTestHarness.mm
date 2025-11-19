@interface CAMIntervalometerTestHarness
- (BOOL)_hasReceivedExpectedNumberOfResponsesForPersistenceUUID:(id)a3 failureReason:(id *)a4;
- (BOOL)_hasReceivedExpectedNumberOfResponsesForRequestsWithFailureReason:(id *)a3;
- (BOOL)_shouldDelayBeforeCapturing;
- (BOOL)intervalometer:(id)a3 didGenerateCaptureRequest:(id)a4;
- (CAMIntervalometerTestHarness)initWithTestName:(id)a3 expectedNumberOfCapturesPerRequest:(unint64_t)a4 captureController:(id)a5 performingWarmupCapture:(BOOL)a6 forCaptureMode:(int64_t)a7 delayBetweenCaptures:(double)a8;
- (void)failedTestWithReason:(id)a3;
- (void)intervalometer:(id)a3 didReachMaximumCountWithRequest:(id)a4;
- (void)startTesting;
- (void)stillImageRequestDidCompleteCapture:(id)a3 error:(id)a4;
- (void)stillImageRequestDidCompleteStillImageCapture:(id)a3 withResponse:(id)a4 error:(id)a5;
- (void)stopTesting;
@end

@implementation CAMIntervalometerTestHarness

- (CAMIntervalometerTestHarness)initWithTestName:(id)a3 expectedNumberOfCapturesPerRequest:(unint64_t)a4 captureController:(id)a5 performingWarmupCapture:(BOOL)a6 forCaptureMode:(int64_t)a7 delayBetweenCaptures:(double)a8
{
  v15 = a5;
  v21.receiver = self;
  v21.super_class = CAMIntervalometerTestHarness;
  v16 = [(CAMPerformanceTestHarness *)&v21 initWithTestName:a3];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_captureController, a5);
    v17->_mode = a7;
    v17->_expectedNumberOfResponsesPerRequest = a4;
    v18 = [MEMORY[0x1E695DF90] dictionary];
    numberOfResponsesForRequest = v17->_numberOfResponsesForRequest;
    v17->_numberOfResponsesForRequest = v18;

    v17->_performWarmupCapture = a6;
    v17->_delayBetweenCaptures = a8;
    v17->_lastCaptureCompletionTime = 0.0;
  }

  return v17;
}

- (void)startTesting
{
  if (self->_performWarmupCapture)
  {
    v3 = [(CAMIntervalometerTestHarness *)self testIntervalometer];
    [v3 manuallyGenerateRequest];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CAMIntervalometerTestHarness;
    [(CAMPerformanceTestHarness *)&v4 startTesting];
    [(CAMCaptureRequestIntervalometer *)self->_testIntervalometer startGeneratingRequests];
  }
}

- (void)stopTesting
{
  testIntervalometer = self->_testIntervalometer;
  if (testIntervalometer)
  {
    self->_testIntervalometer = 0;
  }

  v7 = 0;
  v4 = [(CAMIntervalometerTestHarness *)self _hasReceivedExpectedNumberOfResponsesForRequestsWithFailureReason:&v7];
  v5 = v7;
  if (!v4)
  {
    [(CAMIntervalometerTestHarness *)self failedTestWithReason:v5];
  }

  v6.receiver = self;
  v6.super_class = CAMIntervalometerTestHarness;
  [(CAMPerformanceTestHarness *)&v6 stopTesting];
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
  v6.super_class = CAMIntervalometerTestHarness;
  [(CAMPerformanceTestHarness *)&v6 failedTestWithReason:v4];
}

- (void)stillImageRequestDidCompleteStillImageCapture:(id)a3 withResponse:(id)a4 error:(id)a5
{
  v11 = a5;
  v7 = [a3 persistenceUUID];
  if (v11)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Capture failed with error: %@", v11];
    [(CAMIntervalometerTestHarness *)self failedTestWithReason:v8];
  }

  v9 = [(NSMutableDictionary *)self->_numberOfResponsesForRequest objectForKeyedSubscript:v7];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "unsignedIntegerValue") + 1}];
  [(NSMutableDictionary *)self->_numberOfResponsesForRequest setObject:v10 forKeyedSubscript:v7];

  if (self->_performWarmupCapture && [(CAMIntervalometerTestHarness *)self _hasReceivedExpectedNumberOfResponsesForPersistenceUUID:v7 failureReason:0])
  {
    self->_performWarmupCapture = 0;
    self->_waitingOnWarmupCapture = 0;
    [(CAMIntervalometerTestHarness *)self startTesting];
  }
}

- (void)stillImageRequestDidCompleteCapture:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = dispatch_time(0, 1000000000);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__CAMIntervalometerTestHarness_stillImageRequestDidCompleteCapture_error___block_invoke;
  v8[3] = &unk_1E76F7960;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_after(v6, MEMORY[0x1E69E96A0], v8);
}

void __74__CAMIntervalometerTestHarness_stillImageRequestDidCompleteCapture_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) persistenceUUID];
  v8 = 0;
  v4 = [v2 _hasReceivedExpectedNumberOfResponsesForPersistenceUUID:v3 failureReason:&v8];
  v5 = v8;

  if ((v4 & 1) == 0)
  {
    [*(a1 + 32) failedTestWithReason:v5];
  }

  v6 = [*(a1 + 40) persistenceUUID];
  v7 = [v6 isEqualToString:*(*(a1 + 32) + 64)];

  if (v7)
  {
    [*(a1 + 32) stopTesting];
  }
}

- (BOOL)_shouldDelayBeforeCapturing
{
  if ([(CAMIntervalometerTestHarness *)self _allowOverlappingCaptures])
  {
    return 0;
  }

  if ([(CUCaptureController *)self->_captureController isCapturingStillImage])
  {
    return 1;
  }

  return self->_lastCaptureCompletionTime != 0.0 && CFAbsoluteTimeGetCurrent() - self->_lastCaptureCompletionTime < self->_delayBetweenCaptures;
}

- (BOOL)intervalometer:(id)a3 didGenerateCaptureRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_captureController;
  if (!self->_waitingOnWarmupCapture && ![(CAMIntervalometerTestHarness *)self _shouldDelayBeforeCapturing]&& ([(CUCaptureController *)v8 isCaptureAvailable]|| ![(CAMIntervalometerTestHarness *)self _allowOverlappingCaptures]))
  {
    v11 = [v7 mutableCopy];
    v12 = +[CAMCaptureCapabilities capabilities];
    v13 = [v12 isCTMVideoCaptureSupportedForMode:self->_mode];

    if (v13)
    {
      [v11 setUserInitiationTime:mach_absolute_time()];
      [v11 setCtmCaptureType:1];
      v25 = 0;
      v14 = [(CUCaptureController *)v8 initiateCTMCaptureWithSettings:v11 error:&v25];
      v15 = v25;
      v16 = v15;
      if (!v14)
      {
        goto LABEL_16;
      }

      v24 = v15;
      LOBYTE(v17) = [(CUCaptureController *)v8 commitCTMCaptureWithRequest:v11 error:&v24];
      v18 = v24;

      v16 = v18;
    }

    else
    {
      v23 = 0;
      v17 = [(CUCaptureController *)v8 captureStillImageWithRequest:v11 error:&v23];
      v16 = v23;
    }

    v19 = (v16 == 0) & v17;
    performWarmupCapture = self->_performWarmupCapture;
    if (performWarmupCapture == 1 && ((v16 == 0) & v17) != 0)
    {
      v16 = 0;
      self->_waitingOnWarmupCapture = 1;
      performWarmupCapture = self->_performWarmupCapture;
    }

    if (v19 & ~performWarmupCapture)
    {
      numberOfResponsesForRequest = self->_numberOfResponsesForRequest;
      v22 = [v7 persistenceUUID];
      [(NSMutableDictionary *)numberOfResponsesForRequest setObject:&unk_1F16C8438 forKeyedSubscript:v22];

      v9 = 1;
LABEL_17:

      goto LABEL_4;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v9 = 0;
LABEL_4:

  return v9;
}

- (void)intervalometer:(id)a3 didReachMaximumCountWithRequest:(id)a4
{
  v5 = [a4 persistenceUUID];
  finalRequestPersistenceUUID = self->_finalRequestPersistenceUUID;
  self->_finalRequestPersistenceUUID = v5;

  MEMORY[0x1EEE66BB8](v5, finalRequestPersistenceUUID);
}

- (BOOL)_hasReceivedExpectedNumberOfResponsesForPersistenceUUID:(id)a3 failureReason:(id *)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_numberOfResponsesForRequest objectForKeyedSubscript:v6];
  v8 = [v7 unsignedIntegerValue];
  v9 = v8;
  expectedNumberOfResponsesPerRequest = self->_expectedNumberOfResponsesPerRequest;
  if (a4 && v8 != expectedNumberOfResponsesPerRequest)
  {
    *a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Did not receive the expected number of reponses for the given test (%lu instead of %lu for persistenceUUID %@)", v8, expectedNumberOfResponsesPerRequest, v6];
  }

  return v9 == expectedNumberOfResponsesPerRequest;
}

- (BOOL)_hasReceivedExpectedNumberOfResponsesForRequestsWithFailureReason:(id *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_numberOfResponsesForRequest allKeys];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![(CAMIntervalometerTestHarness *)self _hasReceivedExpectedNumberOfResponsesForPersistenceUUID:*(*(&v12 + 1) + 8 * i) failureReason:a3])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

@end