@interface IMRuntimeTest
+ (id)logHandle;
+ (id)testName;
+ (void)testLog:(id)a3;
- (id)logHandle;
- (id)testName;
- (void)dispatchAfter:(double)a3 block:(id)a4;
- (void)finishTest;
- (void)finishTestAfterInterval:(double)a3;
- (void)runTest:(id)a3;
- (void)testLog:(id)a3;
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
  v3 = [(IMRuntimeTest *)self testRun];
  [v3 stop];

  v5 = [(IMRuntimeTest *)self completion];
  [(IMRuntimeTest *)self setCompletion:0];
  [(IMRuntimeTest *)self testLog:@"Finished test"];
  if (v5)
  {
    v4 = [(IMRuntimeTest *)self testRun];
    v5[2](v5, v4);
  }
}

- (void)runTest:(id)a3
{
  v4 = a3;
  [(IMRuntimeTest *)self testLog:@"Starting test"];
  [(IMRuntimeTest *)self setCompletion:v4];

  v5 = [objc_alloc(-[IMRuntimeTest testRunClass](self "testRunClass"))];
  [(IMRuntimeTest *)self setTestRun:v5];

  [(IMRuntimeTest *)self setUp];
  v6 = [(IMRuntimeTest *)self testRun];
  [v6 start];

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

- (void)dispatchAfter:(double)a3 block:(id)a4
{
  block = a4;
  [(IMRuntimeTest *)self testLog:@"Scheduling test block for %f seconds", *&a3];
  v6 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

- (void)finishTestAfterInterval:(double)a3
{
  [(IMRuntimeTest *)self testLog:@"Will finish test in %f seconds", *&a3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A8675A00;
  v5[3] = &unk_1E7828050;
  v5[4] = self;
  [(IMRuntimeTest *)self dispatchAfter:v5 block:a3];
}

- (void)testLog:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithFormat:v4 arguments:&v6];

  [objc_opt_class() testLog:{@"%@", v5}];
}

+ (void)testLog:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v14];

  v7 = [a1 logHandle];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [a1 testName];
    *buf = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "%@: %@", buf, 0x16u);
  }
}

@end