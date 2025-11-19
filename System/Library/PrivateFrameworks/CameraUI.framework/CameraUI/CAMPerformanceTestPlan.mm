@interface CAMPerformanceTestPlan
- (CAMPerformanceTestPlan)initWithTestName:(id)a3;
- (id)_findHarnessAfter:(id)a3;
- (void)_failedTestWithReason:(id)a3;
- (void)_runHarnessAfter:(id)a3;
- (void)_startTesting;
- (void)_stopTesting;
- (void)queueHarness:(id)a3;
- (void)runHarness:(id)a3;
- (void)runWithSecondsDelay:(unint64_t)a3;
- (void)startSubtestWithName:(id)a3 withMetrics:(id)a4;
- (void)stopSubtestWithName:(id)a3;
- (void)willEndTestHarness:(id)a3;
- (void)willStartTestHarness:(id)a3;
@end

@implementation CAMPerformanceTestPlan

- (CAMPerformanceTestPlan)initWithTestName:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CAMPerformanceTestPlan;
  v5 = [(CAMPerformanceTestPlan *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    testName = v5->_testName;
    v5->_testName = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    harnesses = v5->__harnesses;
    v5->__harnesses = v8;

    v10 = v5;
  }

  return v5;
}

- (void)queueHarness:(id)a3
{
  v5 = a3;
  v4 = [(CAMPerformanceTestPlan *)self _harnesses];
  [v4 addObject:v5];

  [v5 setDelegate:self];
}

- (void)runWithSecondsDelay:(unint64_t)a3
{
  if (a3)
  {
    v4 = dispatch_time(0, 1000000000 * a3);
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

- (void)runHarness:(id)a3
{
  v3 = a3;
  if (([v3 isRunningTest] & 1) == 0)
  {
    [v3 startTesting];
  }
}

- (void)_startTesting
{
  v6 = [(CAMPerformanceTestPlan *)self testName];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 startedTest:v6];

  v4 = [(CAMPerformanceTestPlan *)self startHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
  }
}

- (void)_stopTesting
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  testName = self->_testName;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__CAMPerformanceTestPlan__stopTesting__block_invoke;
  v5[3] = &unk_1E76F77B0;
  v5[4] = self;
  [v3 finishedTest:testName extraResults:0 withTeardownBlock:v5];
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

- (void)_failedTestWithReason:(id)a3
{
  v4 = MEMORY[0x1E69DC668];
  v5 = a3;
  v7 = [v4 sharedApplication];
  v6 = [(CAMPerformanceTestPlan *)self testName];
  [v7 failedTest:v6 withFailure:v5];
}

- (void)_runHarnessAfter:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = [(CAMPerformanceTestPlan *)self _findHarnessAfter:v4];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = [(CAMPerformanceTestPlan *)self _harnesses];
    v5 = [v6 firstObject];

    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (([v5 isRunningTest] & 1) == 0)
  {
    [v5 startTesting];
  }

LABEL_7:
}

- (id)_findHarnessAfter:(id)a3
{
  v4 = a3;
  v5 = [(CAMPerformanceTestPlan *)self _harnesses];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (-[CAMPerformanceTestPlan _harnesses](self, "_harnesses"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count] - 1, v7, v6 >= v8))
  {
    v10 = 0;
  }

  else
  {
    v9 = [(CAMPerformanceTestPlan *)self _harnesses];
    v10 = [v9 objectAtIndexedSubscript:v6 + 1];
  }

  return v10;
}

- (void)startSubtestWithName:(id)a3 withMetrics:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(CAMPerformanceTestPlan *)self testName];
  v8 = [MEMORY[0x1E69DC668] sharedApplication];
  [v8 startedSubTest:v7 forTest:v9 withMetrics:v6];
}

- (void)stopSubtestWithName:(id)a3
{
  v4 = a3;
  v6 = [(CAMPerformanceTestPlan *)self testName];
  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  [v5 finishedSubTest:v4 forTest:v6];
}

- (void)willStartTestHarness:(id)a3
{
  v4 = a3;
  if (!-[CAMPerformanceTestPlan _hasTriggeredTestStart](self, "_hasTriggeredTestStart") && ([v4 isSetupHarness] & 1) == 0)
  {
    [(CAMPerformanceTestPlan *)self set_hasTriggeredTestStart:1];
    [(CAMPerformanceTestPlan *)self _startTesting];
  }

  [(CAMPerformanceTestPlan *)self set_startedHarnesses:[(CAMPerformanceTestPlan *)self _startedHarnesses]+ 1];
}

- (void)willEndTestHarness:(id)a3
{
  v7 = a3;
  [(CAMPerformanceTestPlan *)self set_completedHarnesses:[(CAMPerformanceTestPlan *)self _completedHarnesses]+ 1];
  v4 = [(CAMPerformanceTestPlan *)self _completedHarnesses];
  v5 = [(CAMPerformanceTestPlan *)self _harnesses];
  v6 = [v5 count];

  if (v4 >= v6)
  {
    if ([(CAMPerformanceTestPlan *)self _hasTriggeredTestStart])
    {
      [(CAMPerformanceTestPlan *)self _stopTesting];
    }
  }

  else
  {
    [(CAMPerformanceTestPlan *)self _runHarnessAfter:v7];
  }
}

@end