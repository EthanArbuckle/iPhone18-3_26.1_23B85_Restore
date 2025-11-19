@interface IMUnitTestRunner
- (BOOL)_loadFrameworksIfNeeded:(id *)a3;
- (IMUnitTestRunner)init;
- (IMUnitTestRunner)initWithLogger:(id)a3 bundleLoader:(id)a4;
- (IMUnitTestRunner)initWithLogger:(id)a3 bundleLoader:(id)a4 frameworkLoader:(id)a5;
- (IMUnitTestRunnerDelegate)delegate;
- (id)dateFormatter;
- (id)descriptionFromResult:(id)a3;
- (id)pathToPluginBundle:(id)a3;
- (id)runTestsInBundleAtPath:(id)a3 error:(id *)a4;
- (id)runTestsInBundleNamed:(id)a3 error:(id *)a4;
- (int64_t)runTestsInBundleAtPath:(id)a3;
- (void)log:(id)a3;
- (void)testCase:(id)a3 didFailWithDescription:(id)a4 inFile:(id)a5 atLine:(unint64_t)a6;
- (void)testCaseDidFinish:(id)a3;
- (void)testCaseWillStart:(id)a3;
- (void)testLogWithFormat:(id)a3;
- (void)testSuite:(id)a3 didFailWithDescription:(id)a4 inFile:(id)a5 atLine:(unint64_t)a6;
- (void)testSuiteDidFinish:(id)a3;
- (void)testSuiteWillStart:(id)a3;
@end

@implementation IMUnitTestRunner

- (IMUnitTestRunner)initWithLogger:(id)a3 bundleLoader:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IMUnitTestRunner;
  v9 = [(IMUnitTestRunner *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_logger, a3);
    objc_storeStrong(&v10->_bundleLoader, a4);
  }

  return v10;
}

- (IMUnitTestRunner)initWithLogger:(id)a3 bundleLoader:(id)a4 frameworkLoader:(id)a5
{
  v9 = a5;
  v10 = [(IMUnitTestRunner *)self initWithLogger:a3 bundleLoader:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_frameworkLoader, a5);
  }

  return v11;
}

- (IMUnitTestRunner)init
{
  v3 = objc_alloc_init(IMUnitTestLogger);
  v4 = [[IMUnitTestBundleLoader alloc] initWithLogger:v3];
  v5 = [[IMUnitTestFrameworkLoader alloc] initWithLogger:v3 bundleLoader:v4];
  v6 = [(IMUnitTestRunner *)self initWithLogger:v3 bundleLoader:v4 frameworkLoader:v5];

  return v6;
}

- (void)testLogWithFormat:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v10];

  v7 = [(IMUnitTestRunner *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(IMUnitTestRunner *)self delegate];
    [v9 unitTestRunner:self didReceiveOutput:v6];
  }

  else
  {
    v9 = [(IMUnitTestRunner *)self logger];
    [v9 writeOutputToStdout:v6];
  }
}

- (BOOL)_loadFrameworksIfNeeded:(id *)a3
{
  if (MEMORY[0x1AC570AA0](@"XCTestSuite", @"/Developer/Library/Frameworks/XCTest.framework"))
  {
    [(IMUnitTestRunner *)self testLogWithFormat:@"XCTest classes already loaded, no need to load frameworks..."];
    return 1;
  }

  else
  {
    v6 = [(IMUnitTestRunner *)self frameworkLoader];

    if (v6)
    {
      [(IMUnitTestRunner *)self testLogWithFormat:@"Attempting to load XCTest frameworks..."];
      v7 = [(IMUnitTestRunner *)self frameworkLoader];
      v11 = 0;
      v5 = [v7 loadTestFrameworks:&v11];
      v8 = v11;

      if (v5)
      {
        [(IMUnitTestRunner *)self testLogWithFormat:@"Frameworks loaded ok..."];
      }

      else
      {
        if (!v8)
        {
          v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMUnitTestRunnerErrorDomain" code:1 userInfo:0];
        }

        [(IMUnitTestRunner *)self testLogWithFormat:@"Failed to load test frameworks with error: %@", v8];
        if (a3)
        {
          v9 = v8;
          *a3 = v8;
        }
      }
    }

    else
    {
      [(IMUnitTestRunner *)self testLogWithFormat:@"Framework loader is nil, unable to proceed"];
      if (a3)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"IMUnitTestRunnerErrorDomain" code:1 userInfo:0];
        *a3 = v5 = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

- (id)runTestsInBundleAtPath:(id)a3 error:(id *)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(IMUnitTestRunner *)self testLogWithFormat:@"Starting tests for bundle at path: %@", v6];
  v52[0] = 0;
  v7 = [(IMUnitTestRunner *)self _loadFrameworksIfNeeded:v52];
  v8 = v52[0];
  if (v7)
  {
    v9 = MEMORY[0x1AC570AA0](@"XCTestSuite", @"/Developer/Library/Frameworks/XCTest.framework");
    v10 = MEMORY[0x1AC570AA0](@"XCTestObservationCenter", @"/Developer/Library/Frameworks/XCTest.framework");
    if (v9)
    {
      v11 = v10;
      v12 = [(IMUnitTestRunner *)self bundleLoader];
      v51 = v8;
      v13 = [v12 loadTestBundle:v6 bundle:0 error:&v51];
      v14 = v51;

      if (v13)
      {
        v15 = [(IMUnitTestRunner *)self delegate];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          v17 = [(IMUnitTestRunner *)self delegate];
          [v17 unitTestRunner:self willRunTestsInBundleAtPath:v6];
        }

        v46 = [v9 testSuiteForBundlePath:v6];
        if (v46)
        {
          if (v11)
          {
            v18 = [v11 sharedTestObservationCenter];
            [v18 addTestObserver:self];

            v19 = [v46 name];
            [(IMUnitTestRunner *)self testLogWithFormat:@"Starting test suite %@:", v19];

            v20 = [v46 tests];
            -[IMUnitTestRunner testLogWithFormat:](self, "testLogWithFormat:", @"Found %ld tests", [v20 count]);
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v21 = v20;
            v22 = [v21 countByEnumeratingWithState:&v47 objects:v53 count:16];
            if (v22)
            {
              v23 = *v48;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v48 != v23)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v25 = [*(*(&v47 + 1) + 8 * i) name];
                  [(IMUnitTestRunner *)self testLogWithFormat:@"Test: %@", v25];
                }

                v22 = [v21 countByEnumeratingWithState:&v47 objects:v53 count:16];
              }

              while (v22);
            }

            v26 = NSStringFromClass([v46 testRunClass]);
            [(IMUnitTestRunner *)self testLogWithFormat:@"XCTestSuite testRun class: %@", v26];

            [v46 runTest];
            v9 = [v46 testRun];
            if (v9)
            {
              v27 = [(IMUnitTestRunner *)self descriptionFromResult:v9];
              [(IMUnitTestRunner *)self testLogWithFormat:@"Finished tests for bundle at path: %@, with result: %@", v6, v27];

              v28 = [(IMUnitTestRunner *)self delegate];
              v29 = objc_opt_respondsToSelector();

              if (v29)
              {
                v30 = [(IMUnitTestRunner *)self delegate];
                [v30 unitTestRunner:self didRunTestsInBundleAtPath:v6 results:v9];
              }

              v31 = v9;
            }

            else
            {
              [(IMUnitTestRunner *)self testLogWithFormat:@"XCTest suite returned a nil test run, all tests failed"];
              v42 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMUnitTestRunnerErrorDomain" code:5 userInfo:0];

              v14 = v42;
            }
          }

          else
          {
            [(IMUnitTestRunner *)self testLogWithFormat:@"XCTestObservationCenter is unavailable, all tests failed."];
            [MEMORY[0x1E696ABC0] errorWithDomain:@"IMUnitTestRunnerErrorDomain" code:2 userInfo:0];
            v9 = 0;
            v14 = v21 = v14;
          }

          v35 = 1;
        }

        else
        {
          v35 = 0;
        }

LABEL_34:
        v8 = v14;
        if (!a4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      v39 = [(IMUnitTestRunner *)self delegate];
      v40 = objc_opt_respondsToSelector();

      if (v40)
      {
        v41 = [(IMUnitTestRunner *)self delegate];
        [v41 unitTestRunner:self runningTestsInBundleAtPath:v6 failedWithError:v14];
      }
    }

    else
    {
      [(IMUnitTestRunner *)self testLogWithFormat:@"XCTest classes not found, tests will not be run"];
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMUnitTestRunnerErrorDomain" code:2 userInfo:0];

      v36 = [(IMUnitTestRunner *)self delegate];
      v37 = objc_opt_respondsToSelector();

      if (v37)
      {
        v38 = [(IMUnitTestRunner *)self delegate];
        [v38 unitTestRunner:self runningTestsInBundleAtPath:v6 failedWithError:v14];
      }
    }

    v9 = 0;
    v35 = 1;
    goto LABEL_34;
  }

  [(IMUnitTestRunner *)self testLogWithFormat:@"Unable to run tests at path: %@", v6];
  v32 = [(IMUnitTestRunner *)self delegate];
  v33 = objc_opt_respondsToSelector();

  if (v33)
  {
    v34 = [(IMUnitTestRunner *)self delegate];
    [v34 unitTestRunner:self runningTestsInBundleAtPath:v6 failedWithError:v8];
  }

  v9 = 0;
  v35 = 1;
  if (a4)
  {
LABEL_35:
    v43 = v8;
    *a4 = v8;
  }

LABEL_36:
  if ((v35 | 2) == 2)
  {
    v44 = 0;
  }

  else
  {
    v44 = v9;
  }

  return v44;
}

- (int64_t)runTestsInBundleAtPath:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v4 = [(IMUnitTestRunner *)self runTestsInBundleAtPath:a3 error:&v22];
  v15 = v22;
  [(IMUnitTestRunner *)self testLogWithFormat:&stru_1F1BB91F0];
  [(IMUnitTestRunner *)self logBanner:@"Messages Test Results"];
  v16 = v4;
  v5 = [(IMUnitTestRunner *)self descriptionFromResult:v4];
  [(IMUnitTestRunner *)self testLogWithFormat:@"%@", v5];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(IMUnitTestRunner *)self failedTests];
  v6 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failure #%ld", ++v8];
        [(IMUnitTestRunner *)self logBanner:v12];

        [(IMUnitTestRunner *)self testLogWithFormat:@"%@\n", v11];
        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v7);
  }

  v13 = [v16 totalFailureCount];
  return v13;
}

- (id)pathToPluginBundle:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 mainBundle];
  v6 = [v5 bundleURL];
  v7 = [v6 path];

  v8 = [v7 stringByAppendingPathComponent:@"/Contents/Plugins/"];

  v9 = [v8 stringByAppendingPathComponent:v4];

  return v9;
}

- (id)runTestsInBundleNamed:(id)a3 error:(id *)a4
{
  v6 = [(IMUnitTestRunner *)self pathToPluginBundle:a3];
  v7 = [(IMUnitTestRunner *)self runTestsInBundleAtPath:v6 error:a4];

  return v7;
}

- (id)dateFormatter
{
  if (qword_1EB30AEC0 != -1)
  {
    sub_1A88C1F6C();
  }

  v3 = qword_1EB30AEB8;

  return v3;
}

- (id)descriptionFromResult:(id)a3
{
  if (a3)
  {
    v20 = MEMORY[0x1E696AEC0];
    v4 = a3;
    if ([v4 hasSucceeded])
    {
      v5 = "passed";
    }

    else
    {
      v5 = "failed";
    }

    v6 = [(IMUnitTestRunner *)self dateFormatter];
    v7 = [v4 stopDate];
    v8 = [v6 stringFromDate:v7];
    v9 = [v4 executionCount];
    v10 = "";
    if ([v4 executionCount] == 1)
    {
      v11 = "";
    }

    else
    {
      v11 = "s";
    }

    v12 = [v4 totalFailureCount];
    if ([v4 totalFailureCount] != 1)
    {
      v10 = "s";
    }

    v13 = [v4 unexpectedExceptionCount];
    [v4 testDuration];
    v15 = v14;
    [v4 totalDuration];
    v17 = v16;

    v18 = [v20 stringWithFormat:@"Tests %s at %@.\n\t Executed %lu test%s, with %lu failure%s (%lu unexpected) in %.3f (%.3f) seconds\n", v5, v8, v9, v11, v12, v10, v13, v15, v17];
  }

  else
  {
    v18 = @"*** TESTS FAILED: No results to report on (XCTestResult is nil)...";
  }

  return v18;
}

- (void)testSuiteWillStart:(id)a3
{
  v11 = a3;
  v4 = [v11 name];
  v5 = [(IMUnitTestRunner *)self dateFormatter];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v5 stringFromDate:v6];
  [(IMUnitTestRunner *)self testLogWithFormat:@"Test Suite '%@' started at %@\n", v4, v7];

  v8 = [(IMUnitTestRunner *)self delegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v9 = [(IMUnitTestRunner *)self delegate];
    v10 = [v11 name];
    [v9 unitTestRunner:self testSuiteWillStart:v10];
  }
}

- (void)testSuite:(id)a3 didFailWithDescription:(id)a4 inFile:(id)a5 atLine:(unint64_t)a6
{
  v25 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = MEMORY[0x1E696AEC0];
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = @"<unknown>";
  }

  if (v11)
  {
    v15 = a6;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v25 name];
  v17 = [v13 stringWithFormat:@"%@:%lu: error: %@ : %@\n", v14, v15, v16, v10];

  failedTests = self->_failedTests;
  if (!failedTests)
  {
    v19 = [MEMORY[0x1E695DF70] array];
    v20 = self->_failedTests;
    self->_failedTests = v19;

    failedTests = self->_failedTests;
  }

  [(NSMutableArray *)failedTests addObject:v17];
  [(IMUnitTestRunner *)self testLogWithFormat:@"%@", v17];
  v21 = [(IMUnitTestRunner *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    v23 = [(IMUnitTestRunner *)self delegate];
    v24 = [v25 name];
    [v23 unitTestRunner:self testSuite:v24 didFailWithDescription:v10 inFile:v12 atLine:a6];
  }
}

- (void)testSuiteDidFinish:(id)a3
{
  v24 = a3;
  v4 = [v24 testRun];
  v23 = [v24 name];
  v5 = [v4 hasSucceeded];
  v6 = "failed";
  if (v5)
  {
    v6 = "passed";
  }

  v22 = v6;
  v7 = [(IMUnitTestRunner *)self dateFormatter];
  v8 = [v4 stopDate];
  v9 = [v7 stringFromDate:v8];
  v10 = [v4 executionCount];
  v11 = "";
  if ([v4 executionCount] == 1)
  {
    v12 = "";
  }

  else
  {
    v12 = "s";
  }

  v13 = [v4 totalFailureCount];
  if ([v4 totalFailureCount] != 1)
  {
    v11 = "s";
  }

  v14 = [v4 unexpectedExceptionCount];
  [v4 testDuration];
  v16 = v15;
  [v4 totalDuration];
  [(IMUnitTestRunner *)self testLogWithFormat:@"Test Suite '%@' %s at %@.\n\t Executed %lu test%s, with %lu failure%s (%lu unexpected) in %.3f (%.3f) seconds\n", v23, v22, v9, v10, v12, v13, v11, v14, v16, v17];

  v18 = [(IMUnitTestRunner *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(IMUnitTestRunner *)self delegate];
    v21 = [v24 name];
    [v20 unitTestRunner:self testSuiteDidFinish:v21 withResult:v4];
  }
}

- (void)testCaseWillStart:(id)a3
{
  v9 = a3;
  v4 = [v9 name];
  [(IMUnitTestRunner *)self testLogWithFormat:@"Test Case '%@' started.\n", v4];

  v5 = [(IMUnitTestRunner *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(IMUnitTestRunner *)self delegate];
    v8 = [v9 name];
    [v7 unitTestRunner:self testCaseWillStart:v8];
  }
}

- (void)testCase:(id)a3 didFailWithDescription:(id)a4 inFile:(id)a5 atLine:(unint64_t)a6
{
  v20 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"<unknown>";
  }

  if (v11)
  {
    v14 = a6;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v20 name];
  [(IMUnitTestRunner *)self testLogWithFormat:@"%@:%lu: error: %@ : %@\n", v13, v14, v15, v10];

  v16 = [(IMUnitTestRunner *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    v18 = [(IMUnitTestRunner *)self delegate];
    v19 = [v20 name];
    [v18 unitTestRunner:self testCase:v19 didFailWithDescription:v10 inFile:v12 atLine:a6];
  }
}

- (void)testCaseDidFinish:(id)a3
{
  v12 = a3;
  v4 = [v12 testRun];
  v5 = [v12 name];
  if ([v4 hasSucceeded])
  {
    v6 = "passed";
  }

  else
  {
    v6 = "failed";
  }

  [v4 totalDuration];
  [(IMUnitTestRunner *)self testLogWithFormat:@"Test Case '%@' %s (%.3f seconds).\n", v5, v6, v7];

  v8 = [(IMUnitTestRunner *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(IMUnitTestRunner *)self delegate];
    v11 = [v12 name];
    [v10 unitTestRunner:self testCaseDidFinish:v11 withResult:v4];
  }
}

- (void)log:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v8];

  v7 = [(IMUnitTestRunner *)self logger];
  [v7 writeOutputToStdout:v6];
}

- (IMUnitTestRunnerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end