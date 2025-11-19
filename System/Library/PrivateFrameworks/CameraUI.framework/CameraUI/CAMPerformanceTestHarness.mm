@interface CAMPerformanceTestHarness
- (CAMPerformanceTestHarness)initWithTestName:(id)a3;
- (CAMPerformanceTestHarnessDelegate)delegate;
- (void)failedTestWithReason:(id)a3;
- (void)startSubtestWithName:(id)a3;
- (void)startSubtestWithName:(id)a3 withMetrics:(id)a4;
- (void)startTesting;
- (void)stopSubtestWithName:(id)a3;
- (void)stopTesting;
@end

@implementation CAMPerformanceTestHarness

- (CAMPerformanceTestHarness)initWithTestName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CAMPerformanceTestHarness;
  v5 = [(CAMPerformanceTestHarness *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    testName = v5->_testName;
    v5->_testName = v6;

    v8 = v5;
  }

  return v5;
}

- (void)startTesting
{
  [(CAMPerformanceTestHarness *)self setRunningTest:1];
  v3 = [(CAMPerformanceTestHarness *)self delegate];
  [v3 willStartTestHarness:self];

  v4 = [(CAMPerformanceTestHarness *)self startHandler];
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

- (void)stopTesting
{
  [(CAMPerformanceTestHarness *)self setRunningTest:0];
  v3 = [(CAMPerformanceTestHarness *)self delegate];
  [v3 willEndTestHarness:self];

  v4 = [(CAMPerformanceTestHarness *)self completionHandler];
  if (v4)
  {
    v5 = v4;
    v4[2]();
    v4 = v5;
  }
}

- (void)failedTestWithReason:(id)a3
{
  v4 = a3;
  v5 = [(CAMPerformanceTestHarness *)self delegate];
  [v5 didFailTestHarness:self withReason:v4];
}

- (void)startSubtestWithName:(id)a3
{
  v4 = a3;
  v5 = [(CAMPerformanceTestHarness *)self delegate];
  [v5 didStartSubtest:self withName:v4 withMetrics:0];
}

- (void)startSubtestWithName:(id)a3 withMetrics:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CAMPerformanceTestHarness *)self delegate];
  [v8 didStartSubtest:self withName:v7 withMetrics:v6];
}

- (void)stopSubtestWithName:(id)a3
{
  v4 = a3;
  v5 = [(CAMPerformanceTestHarness *)self delegate];
  [v5 didStopSubtest:self withName:v4];
}

- (CAMPerformanceTestHarnessDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end