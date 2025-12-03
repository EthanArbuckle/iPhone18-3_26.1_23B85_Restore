@interface CAMPerformanceTestPlan
- (CAMPerformanceTestPlan)initWithTestName:(id)name;
- (id)_findHarnessAfter:(id)after;
- (void)_failedTestWithReason:(id)reason;
- (void)_runHarnessAfter:(id)after;
- (void)_startTesting;
- (void)_stopTesting;
- (void)queueHarness:(id)harness;
- (void)runHarness:(id)harness;
- (void)runWithSecondsDelay:(unint64_t)delay;
- (void)startSubtestWithName:(id)name withMetrics:(id)metrics;
- (void)stopSubtestWithName:(id)name;
- (void)willEndTestHarness:(id)harness;
- (void)willStartTestHarness:(id)harness;
@end

@implementation CAMPerformanceTestPlan

- (CAMPerformanceTestPlan)initWithTestName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = CAMPerformanceTestPlan;
  v5 = [(CAMPerformanceTestPlan *)&v12 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    testName = v5->_testName;
    v5->_testName = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    harnesses = v5->__harnesses;
    v5->__harnesses = v8;

    v10 = v5;
  }

  return v5;
}

- (void)queueHarness:(id)harness
{
  harnessCopy = harness;
  _harnesses = [(CAMPerformanceTestPlan *)self _harnesses];
  [_harnesses addObject:harnessCopy];

  [harnessCopy setDelegate:self];
}

- (void)runWithSecondsDelay:(unint64_t)delay
{
  if (delay)
  {
    v4 = dispatch_time(0, 1000000000 * delay);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__CAMPerformanceTestPlan_runWithSecondsDelay___block_invoke;
    block[3] = &unk_1E76F77B0;
    block[4] = self;
    dispatch_after(v4, MEMORY[0x1E69E96A0], block);
  }

  else
  {

    [(CAMPerformanceTestPlan *)self _runHarnessAfter:?];
  }
}

- (void)runHarness:(id)harness
{
  harnessCopy = harness;
  if (([harnessCopy isRunningTest] & 1) == 0)
  {
    [harnessCopy startTesting];
  }
}

- (void)_startTesting
{
  testName = [(CAMPerformanceTestPlan *)self testName];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] startedTest:testName];

  startHandler = [(CAMPerformanceTestPlan *)self startHandler];
  v5 = startHandler;
  if (startHandler)
  {
    (*(startHandler + 16))(startHandler);
  }
}

- (void)_stopTesting
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  testName = self->_testName;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__CAMPerformanceTestPlan__stopTesting__block_invoke;
  v5[3] = &unk_1E76F77B0;
  v5[4] = self;
  [mEMORY[0x1E69DC668] finishedTest:testName extraResults:0 withTeardownBlock:v5];
}

void __38__CAMPerformanceTestPlan__stopTesting__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) completionHandler];
  if ([*(a1 + 32) settlingDelaySeconds])
  {
    sleep([*(a1 + 32) settlingDelaySeconds]);
  }

  v2 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3);
    v2 = v3;
  }
}

- (void)_failedTestWithReason:(id)reason
{
  v4 = MEMORY[0x1E69DC668];
  reasonCopy = reason;
  sharedApplication = [v4 sharedApplication];
  testName = [(CAMPerformanceTestPlan *)self testName];
  [sharedApplication failedTest:testName withFailure:reasonCopy];
}

- (void)_runHarnessAfter:(id)after
{
  afterCopy = after;
  v7 = afterCopy;
  if (afterCopy)
  {
    firstObject = [(CAMPerformanceTestPlan *)self _findHarnessAfter:afterCopy];
    if (!firstObject)
    {
      goto LABEL_7;
    }
  }

  else
  {
    _harnesses = [(CAMPerformanceTestPlan *)self _harnesses];
    firstObject = [_harnesses firstObject];

    if (!firstObject)
    {
      goto LABEL_7;
    }
  }

  if (([firstObject isRunningTest] & 1) == 0)
  {
    [firstObject startTesting];
  }

LABEL_7:
}

- (id)_findHarnessAfter:(id)after
{
  afterCopy = after;
  _harnesses = [(CAMPerformanceTestPlan *)self _harnesses];
  v6 = [_harnesses indexOfObject:afterCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (-[CAMPerformanceTestPlan _harnesses](self, "_harnesses"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count] - 1, v7, v6 >= v8))
  {
    v10 = 0;
  }

  else
  {
    _harnesses2 = [(CAMPerformanceTestPlan *)self _harnesses];
    v10 = [_harnesses2 objectAtIndexedSubscript:v6 + 1];
  }

  return v10;
}

- (void)startSubtestWithName:(id)name withMetrics:(id)metrics
{
  metricsCopy = metrics;
  nameCopy = name;
  testName = [(CAMPerformanceTestPlan *)self testName];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] startedSubTest:nameCopy forTest:testName withMetrics:metricsCopy];
}

- (void)stopSubtestWithName:(id)name
{
  nameCopy = name;
  testName = [(CAMPerformanceTestPlan *)self testName];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] finishedSubTest:nameCopy forTest:testName];
}

- (void)willStartTestHarness:(id)harness
{
  harnessCopy = harness;
  if (!-[CAMPerformanceTestPlan _hasTriggeredTestStart](self, "_hasTriggeredTestStart") && ([harnessCopy isSetupHarness] & 1) == 0)
  {
    [(CAMPerformanceTestPlan *)self set_hasTriggeredTestStart:1];
    [(CAMPerformanceTestPlan *)self _startTesting];
  }

  [(CAMPerformanceTestPlan *)self set_startedHarnesses:[(CAMPerformanceTestPlan *)self _startedHarnesses]+ 1];
}

- (void)willEndTestHarness:(id)harness
{
  harnessCopy = harness;
  [(CAMPerformanceTestPlan *)self set_completedHarnesses:[(CAMPerformanceTestPlan *)self _completedHarnesses]+ 1];
  _completedHarnesses = [(CAMPerformanceTestPlan *)self _completedHarnesses];
  _harnesses = [(CAMPerformanceTestPlan *)self _harnesses];
  v6 = [_harnesses count];

  if (_completedHarnesses >= v6)
  {
    if ([(CAMPerformanceTestPlan *)self _hasTriggeredTestStart])
    {
      [(CAMPerformanceTestPlan *)self _stopTesting];
    }
  }

  else
  {
    [(CAMPerformanceTestPlan *)self _runHarnessAfter:harnessCopy];
  }
}

@end