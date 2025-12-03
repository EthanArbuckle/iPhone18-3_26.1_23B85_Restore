@interface CAMPerformanceTestHarness
- (CAMPerformanceTestHarness)initWithTestName:(id)name;
- (CAMPerformanceTestHarnessDelegate)delegate;
- (void)failedTestWithReason:(id)reason;
- (void)startSubtestWithName:(id)name;
- (void)startSubtestWithName:(id)name withMetrics:(id)metrics;
- (void)startTesting;
- (void)stopSubtestWithName:(id)name;
- (void)stopTesting;
@end

@implementation CAMPerformanceTestHarness

- (CAMPerformanceTestHarness)initWithTestName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = CAMPerformanceTestHarness;
  v5 = [(CAMPerformanceTestHarness *)&v10 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    testName = v5->_testName;
    v5->_testName = v6;

    v8 = v5;
  }

  return v5;
}

- (void)startTesting
{
  [(CAMPerformanceTestHarness *)self setRunningTest:1];
  delegate = [(CAMPerformanceTestHarness *)self delegate];
  [delegate willStartTestHarness:self];

  startHandler = [(CAMPerformanceTestHarness *)self startHandler];
  if (startHandler)
  {
    v5 = startHandler;
    startHandler[2]();
    startHandler = v5;
  }
}

- (void)stopTesting
{
  [(CAMPerformanceTestHarness *)self setRunningTest:0];
  delegate = [(CAMPerformanceTestHarness *)self delegate];
  [delegate willEndTestHarness:self];

  completionHandler = [(CAMPerformanceTestHarness *)self completionHandler];
  if (completionHandler)
  {
    v5 = completionHandler;
    completionHandler[2]();
    completionHandler = v5;
  }
}

- (void)failedTestWithReason:(id)reason
{
  reasonCopy = reason;
  delegate = [(CAMPerformanceTestHarness *)self delegate];
  [delegate didFailTestHarness:self withReason:reasonCopy];
}

- (void)startSubtestWithName:(id)name
{
  nameCopy = name;
  delegate = [(CAMPerformanceTestHarness *)self delegate];
  [delegate didStartSubtest:self withName:nameCopy withMetrics:0];
}

- (void)startSubtestWithName:(id)name withMetrics:(id)metrics
{
  metricsCopy = metrics;
  nameCopy = name;
  delegate = [(CAMPerformanceTestHarness *)self delegate];
  [delegate didStartSubtest:self withName:nameCopy withMetrics:metricsCopy];
}

- (void)stopSubtestWithName:(id)name
{
  nameCopy = name;
  delegate = [(CAMPerformanceTestHarness *)self delegate];
  [delegate didStopSubtest:self withName:nameCopy];
}

- (CAMPerformanceTestHarnessDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end