@interface IMRuntimeTest
+ (id)logHandle;
+ (id)testName;
+ (void)testLog:(id)log;
- (id)logHandle;
- (id)testName;
- (void)dispatchAfter:(double)after block:(id)block;
- (void)finishTest;
- (void)finishTestAfterInterval:(double)interval;
- (void)runTest:(id)test;
- (void)testLog:(id)log;
@end

@implementation IMRuntimeTest

+ (id)logHandle
{
  if (qword_1EB30AEF0 != -1)
  {
    sub_1A88C214C();
  }

  v3 = qword_1EB30AEE8;

  return v3;
}

- (id)logHandle
{
  v2 = objc_opt_class();

  return [v2 logHandle];
}

- (void)finishTest
{
  [(IMRuntimeTest *)self tearDown];
  testRun = [(IMRuntimeTest *)self testRun];
  [testRun stop];

  completion = [(IMRuntimeTest *)self completion];
  [(IMRuntimeTest *)self setCompletion:0];
  [(IMRuntimeTest *)self testLog:@"Finished test"];
  if (completion)
  {
    testRun2 = [(IMRuntimeTest *)self testRun];
    completion[2](completion, testRun2);
  }
}

- (void)runTest:(id)test
{
  testCopy = test;
  [(IMRuntimeTest *)self testLog:@"Starting test"];
  [(IMRuntimeTest *)self setCompletion:testCopy];

  v5 = [objc_alloc(-[IMRuntimeTest testRunClass](self "testRunClass"))];
  [(IMRuntimeTest *)self setTestRun:v5];

  [(IMRuntimeTest *)self setUp];
  testRun = [(IMRuntimeTest *)self testRun];
  [testRun start];

  MEMORY[0x1EEE66B58](self, sel_startTest);
}

- (id)testName
{
  v2 = objc_opt_class();

  return [v2 testName];
}

+ (id)testName
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)dispatchAfter:(double)after block:(id)block
{
  block = block;
  [(IMRuntimeTest *)self testLog:@"Scheduling test block for %f seconds", *&after];
  v6 = dispatch_time(0, (after * 1000000000.0));
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

- (void)finishTestAfterInterval:(double)interval
{
  [(IMRuntimeTest *)self testLog:@"Will finish test in %f seconds", *&interval];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A8675A00;
  v5[3] = &unk_1E7828050;
  v5[4] = self;
  [(IMRuntimeTest *)self dispatchAfter:v5 block:interval];
}

- (void)testLog:(id)log
{
  v3 = MEMORY[0x1E696AEC0];
  logCopy = log;
  v5 = [[v3 alloc] initWithFormat:logCopy arguments:&v6];

  [objc_opt_class() testLog:{@"%@", v5}];
}

+ (void)testLog:(id)log
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  logCopy = log;
  v6 = [[v4 alloc] initWithFormat:logCopy arguments:&v14];

  logHandle = [self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    testName = [self testName];
    *buf = 138412546;
    v10 = testName;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1A85E5000, logHandle, OS_LOG_TYPE_INFO, "%@: %@", buf, 0x16u);
  }
}

@end