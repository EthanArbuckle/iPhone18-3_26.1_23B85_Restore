@interface IMRuntimeTestSuite
+ (void)runTestsIfNeededWithRepeatCount:(int64_t)count withCount:(int64_t)withCount;
- (IMRuntimeTestSuite)init;
- (NSTimer)timer;
- (void)_cancelTimer;
- (void)_startNextTest;
- (void)addTest:(id)test;
- (void)currentTestDidFinish;
- (void)removeTest:(id)test;
- (void)startTest;
@end

@implementation IMRuntimeTestSuite

- (IMRuntimeTestSuite)init
{
  v6.receiver = self;
  v6.super_class = IMRuntimeTestSuite;
  v2 = [(IMRuntimeTestSuite *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    tests = v2->_tests;
    v2->_tests = v3;
  }

  return v2;
}

- (void)addTest:(id)test
{
  testCopy = test;
  testName = [testCopy testName];
  [(IMRuntimeTest *)self testLog:@"added test: %@", testName];

  [(NSMutableArray *)self->_tests addObject:testCopy];
}

- (void)removeTest:(id)test
{
  testCopy = test;
  testName = [testCopy testName];
  [(IMRuntimeTest *)self testLog:@"removed test: %@", testName];

  [(NSMutableArray *)self->_tests removeObject:testCopy];
}

- (void)startTest
{
  [(IMRuntimeTest *)self testLog:@"starting test suite"];
  v3 = [(NSMutableArray *)self->_tests mutableCopy];
  runningTests = self->_runningTests;
  self->_runningTests = v3;

  MEMORY[0x1EEE66B58](self, sel_currentTestDidFinish);
}

- (void)_cancelTimer
{
  timer = [(IMRuntimeTestSuite *)self timer];
  if (timer)
  {
    v4 = timer;
    [timer invalidate];
    [(IMRuntimeTestSuite *)self setTimer:0];
    timer = v4;
  }
}

- (void)_startNextTest
{
  v3 = [(NSMutableArray *)self->_runningTests objectAtIndex:0];
  currentTest = self->_currentTest;
  self->_currentTest = v3;

  testName = [(IMRuntimeTest *)self->_currentTest testName];
  [(IMRuntimeTest *)self testLog:@"starting next test in suite: %@", testName];

  [(NSMutableArray *)self->_runningTests removeObjectAtIndex:0];
  v6 = self->_currentTest;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A869F114;
  v7[3] = &unk_1E7828FB8;
  v7[4] = self;
  [(IMRuntimeTest *)v6 runTest:v7];
}

- (void)currentTestDidFinish
{
  testName = [(IMRuntimeTest *)self->_currentTest testName];
  [(IMRuntimeTest *)self testLog:@"current test in test suite did finish: %@", testName];

  if ([(NSMutableArray *)self->_tests count]&& [(NSMutableArray *)self->_runningTests count])
  {
    [(IMRuntimeTestSuite *)self _cancelTimer];
    v4 = MEMORY[0x1E695DFF0];
    [(IMRuntimeTestSuite *)self testStartDelay];
    v5 = [v4 scheduledTimerWithTimeInterval:self target:sel__timerExpired_ selector:0 userInfo:0 repeats:?];
    [(IMRuntimeTestSuite *)self setTimer:v5];
  }

  else
  {

    MEMORY[0x1EEE66B58](self, sel_finishTest);
  }
}

+ (void)runTestsIfNeededWithRepeatCount:(int64_t)count withCount:(int64_t)withCount
{
  if (withCount >= count)
  {

    [self testLog:{@"Not repeating tests, all done"}];
  }

  else
  {
    v7 = objc_alloc_init(objc_opt_class());
    [v7 testSuiteStartDelay];
    [self testLog:{@"running test batch %ld of %ld in %f seconds", withCount, count, v8}];
    [v7 testSuiteStartDelay];
    v10 = dispatch_time(0, (v9 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A869F360;
    block[3] = &unk_1E7829000;
    withCountCopy = withCount;
    countCopy = count;
    v13 = v7;
    selfCopy = self;
    v11 = v7;
    dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  }
}

- (NSTimer)timer
{
  WeakRetained = objc_loadWeakRetained(&self->_timer);

  return WeakRetained;
}

@end