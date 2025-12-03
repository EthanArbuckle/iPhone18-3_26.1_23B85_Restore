@interface IMUnitTestRunner
- (BOOL)_loadFrameworksIfNeeded:(id *)needed;
- (IMUnitTestRunner)init;
- (IMUnitTestRunner)initWithLogger:(id)logger bundleLoader:(id)loader;
- (IMUnitTestRunner)initWithLogger:(id)logger bundleLoader:(id)loader frameworkLoader:(id)frameworkLoader;
- (IMUnitTestRunnerDelegate)delegate;
- (id)dateFormatter;
- (id)descriptionFromResult:(id)result;
- (id)pathToPluginBundle:(id)bundle;
- (id)runTestsInBundleAtPath:(id)path error:(id *)error;
- (id)runTestsInBundleNamed:(id)named error:(id *)error;
- (int64_t)runTestsInBundleAtPath:(id)path;
- (void)log:(id)log;
- (void)testCase:(id)case didFailWithDescription:(id)description inFile:(id)file atLine:(unint64_t)line;
- (void)testCaseDidFinish:(id)finish;
- (void)testCaseWillStart:(id)start;
- (void)testLogWithFormat:(id)format;
- (void)testSuite:(id)suite didFailWithDescription:(id)description inFile:(id)file atLine:(unint64_t)line;
- (void)testSuiteDidFinish:(id)finish;
- (void)testSuiteWillStart:(id)start;
@end

@implementation IMUnitTestRunner

- (IMUnitTestRunner)initWithLogger:(id)logger bundleLoader:(id)loader
{
  loggerCopy = logger;
  loaderCopy = loader;
  v12.receiver = self;
  v12.super_class = IMUnitTestRunner;
  v9 = [(IMUnitTestRunner *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_logger, logger);
    objc_storeStrong(&v10->_bundleLoader, loader);
  }

  return v10;
}

- (IMUnitTestRunner)initWithLogger:(id)logger bundleLoader:(id)loader frameworkLoader:(id)frameworkLoader
{
  frameworkLoaderCopy = frameworkLoader;
  v10 = [(IMUnitTestRunner *)self initWithLogger:logger bundleLoader:loader];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_frameworkLoader, frameworkLoader);
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

- (void)testLogWithFormat:(id)format
{
  v4 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v10];

  delegate = [(IMUnitTestRunner *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(IMUnitTestRunner *)self delegate];
    [delegate2 unitTestRunner:self didReceiveOutput:v6];
  }

  else
  {
    delegate2 = [(IMUnitTestRunner *)self logger];
    [delegate2 writeOutputToStdout:v6];
  }
}

- (BOOL)_loadFrameworksIfNeeded:(id *)needed
{
  if (MEMORY[0x1AC570AA0](@"XCTestSuite", @"/Developer/Library/Frameworks/XCTest.framework"))
  {
    [(IMUnitTestRunner *)self testLogWithFormat:@"XCTest classes already loaded, no need to load frameworks..."];
    return 1;
  }

  else
  {
    frameworkLoader = [(IMUnitTestRunner *)self frameworkLoader];

    if (frameworkLoader)
    {
      [(IMUnitTestRunner *)self testLogWithFormat:@"Attempting to load XCTest frameworks..."];
      frameworkLoader2 = [(IMUnitTestRunner *)self frameworkLoader];
      v11 = 0;
      v5 = [frameworkLoader2 loadTestFrameworks:&v11];
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
        if (needed)
        {
          v9 = v8;
          *needed = v8;
        }
      }
    }

    else
    {
      [(IMUnitTestRunner *)self testLogWithFormat:@"Framework loader is nil, unable to proceed"];
      if (needed)
      {
        [MEMORY[0x1E696ABC0] errorWithDomain:@"IMUnitTestRunnerErrorDomain" code:1 userInfo:0];
        *needed = v5 = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

- (id)runTestsInBundleAtPath:(id)path error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  [(IMUnitTestRunner *)self testLogWithFormat:@"Starting tests for bundle at path: %@", pathCopy];
  v52[0] = 0;
  v7 = [(IMUnitTestRunner *)self _loadFrameworksIfNeeded:v52];
  v8 = v52[0];
  if (v7)
  {
    testRun = MEMORY[0x1AC570AA0](@"XCTestSuite", @"/Developer/Library/Frameworks/XCTest.framework");
    v10 = MEMORY[0x1AC570AA0](@"XCTestObservationCenter", @"/Developer/Library/Frameworks/XCTest.framework");
    if (testRun)
    {
      v11 = v10;
      bundleLoader = [(IMUnitTestRunner *)self bundleLoader];
      v51 = v8;
      v13 = [bundleLoader loadTestBundle:pathCopy bundle:0 error:&v51];
      v14 = v51;

      if (v13)
      {
        delegate = [(IMUnitTestRunner *)self delegate];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          delegate2 = [(IMUnitTestRunner *)self delegate];
          [delegate2 unitTestRunner:self willRunTestsInBundleAtPath:pathCopy];
        }

        v46 = [testRun testSuiteForBundlePath:pathCopy];
        if (v46)
        {
          if (v11)
          {
            sharedTestObservationCenter = [v11 sharedTestObservationCenter];
            [sharedTestObservationCenter addTestObserver:self];

            name = [v46 name];
            [(IMUnitTestRunner *)self testLogWithFormat:@"Starting test suite %@:", name];

            tests = [v46 tests];
            -[IMUnitTestRunner testLogWithFormat:](self, "testLogWithFormat:", @"Found %ld tests", [tests count]);
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v21 = tests;
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

                  name2 = [*(*(&v47 + 1) + 8 * i) name];
                  [(IMUnitTestRunner *)self testLogWithFormat:@"Test: %@", name2];
                }

                v22 = [v21 countByEnumeratingWithState:&v47 objects:v53 count:16];
              }

              while (v22);
            }

            v26 = NSStringFromClass([v46 testRunClass]);
            [(IMUnitTestRunner *)self testLogWithFormat:@"XCTestSuite testRun class: %@", v26];

            [v46 runTest];
            testRun = [v46 testRun];
            if (testRun)
            {
              v27 = [(IMUnitTestRunner *)self descriptionFromResult:testRun];
              [(IMUnitTestRunner *)self testLogWithFormat:@"Finished tests for bundle at path: %@, with result: %@", pathCopy, v27];

              delegate3 = [(IMUnitTestRunner *)self delegate];
              v29 = objc_opt_respondsToSelector();

              if (v29)
              {
                delegate4 = [(IMUnitTestRunner *)self delegate];
                [delegate4 unitTestRunner:self didRunTestsInBundleAtPath:pathCopy results:testRun];
              }

              v31 = testRun;
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
            testRun = 0;
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
        if (!error)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      delegate5 = [(IMUnitTestRunner *)self delegate];
      v40 = objc_opt_respondsToSelector();

      if (v40)
      {
        delegate6 = [(IMUnitTestRunner *)self delegate];
        [delegate6 unitTestRunner:self runningTestsInBundleAtPath:pathCopy failedWithError:v14];
      }
    }

    else
    {
      [(IMUnitTestRunner *)self testLogWithFormat:@"XCTest classes not found, tests will not be run"];
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMUnitTestRunnerErrorDomain" code:2 userInfo:0];

      delegate7 = [(IMUnitTestRunner *)self delegate];
      v37 = objc_opt_respondsToSelector();

      if (v37)
      {
        delegate8 = [(IMUnitTestRunner *)self delegate];
        [delegate8 unitTestRunner:self runningTestsInBundleAtPath:pathCopy failedWithError:v14];
      }
    }

    testRun = 0;
    v35 = 1;
    goto LABEL_34;
  }

  [(IMUnitTestRunner *)self testLogWithFormat:@"Unable to run tests at path: %@", pathCopy];
  delegate9 = [(IMUnitTestRunner *)self delegate];
  v33 = objc_opt_respondsToSelector();

  if (v33)
  {
    delegate10 = [(IMUnitTestRunner *)self delegate];
    [delegate10 unitTestRunner:self runningTestsInBundleAtPath:pathCopy failedWithError:v8];
  }

  testRun = 0;
  v35 = 1;
  if (error)
  {
LABEL_35:
    v43 = v8;
    *error = v8;
  }

LABEL_36:
  if ((v35 | 2) == 2)
  {
    v44 = 0;
  }

  else
  {
    v44 = testRun;
  }

  return v44;
}

- (int64_t)runTestsInBundleAtPath:(id)path
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v4 = [(IMUnitTestRunner *)self runTestsInBundleAtPath:path error:&v22];
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

  totalFailureCount = [v16 totalFailureCount];
  return totalFailureCount;
}

- (id)pathToPluginBundle:(id)bundle
{
  v3 = MEMORY[0x1E696AAE8];
  bundleCopy = bundle;
  mainBundle = [v3 mainBundle];
  bundleURL = [mainBundle bundleURL];
  path = [bundleURL path];

  v8 = [path stringByAppendingPathComponent:@"/Contents/Plugins/"];

  v9 = [v8 stringByAppendingPathComponent:bundleCopy];

  return v9;
}

- (id)runTestsInBundleNamed:(id)named error:(id *)error
{
  v6 = [(IMUnitTestRunner *)self pathToPluginBundle:named];
  v7 = [(IMUnitTestRunner *)self runTestsInBundleAtPath:v6 error:error];

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

- (id)descriptionFromResult:(id)result
{
  if (result)
  {
    v20 = MEMORY[0x1E696AEC0];
    resultCopy = result;
    if ([resultCopy hasSucceeded])
    {
      v5 = "passed";
    }

    else
    {
      v5 = "failed";
    }

    dateFormatter = [(IMUnitTestRunner *)self dateFormatter];
    stopDate = [resultCopy stopDate];
    v8 = [dateFormatter stringFromDate:stopDate];
    executionCount = [resultCopy executionCount];
    v10 = "";
    if ([resultCopy executionCount] == 1)
    {
      v11 = "";
    }

    else
    {
      v11 = "s";
    }

    totalFailureCount = [resultCopy totalFailureCount];
    if ([resultCopy totalFailureCount] != 1)
    {
      v10 = "s";
    }

    unexpectedExceptionCount = [resultCopy unexpectedExceptionCount];
    [resultCopy testDuration];
    v15 = v14;
    [resultCopy totalDuration];
    v17 = v16;

    v18 = [v20 stringWithFormat:@"Tests %s at %@.\n\t Executed %lu test%s, with %lu failure%s (%lu unexpected) in %.3f (%.3f) seconds\n", v5, v8, executionCount, v11, totalFailureCount, v10, unexpectedExceptionCount, v15, v17];
  }

  else
  {
    v18 = @"*** TESTS FAILED: No results to report on (XCTestResult is nil)...";
  }

  return v18;
}

- (void)testSuiteWillStart:(id)start
{
  startCopy = start;
  name = [startCopy name];
  dateFormatter = [(IMUnitTestRunner *)self dateFormatter];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [dateFormatter stringFromDate:date];
  [(IMUnitTestRunner *)self testLogWithFormat:@"Test Suite '%@' started at %@\n", name, v7];

  delegate = [(IMUnitTestRunner *)self delegate];
  LOBYTE(dateFormatter) = objc_opt_respondsToSelector();

  if (dateFormatter)
  {
    delegate2 = [(IMUnitTestRunner *)self delegate];
    name2 = [startCopy name];
    [delegate2 unitTestRunner:self testSuiteWillStart:name2];
  }
}

- (void)testSuite:(id)suite didFailWithDescription:(id)description inFile:(id)file atLine:(unint64_t)line
{
  suiteCopy = suite;
  descriptionCopy = description;
  fileCopy = file;
  v12 = fileCopy;
  v13 = MEMORY[0x1E696AEC0];
  if (fileCopy)
  {
    v14 = fileCopy;
  }

  else
  {
    v14 = @"<unknown>";
  }

  if (fileCopy)
  {
    lineCopy = line;
  }

  else
  {
    lineCopy = 0;
  }

  name = [suiteCopy name];
  descriptionCopy = [v13 stringWithFormat:@"%@:%lu: error: %@ : %@\n", v14, lineCopy, name, descriptionCopy];

  failedTests = self->_failedTests;
  if (!failedTests)
  {
    array = [MEMORY[0x1E695DF70] array];
    v20 = self->_failedTests;
    self->_failedTests = array;

    failedTests = self->_failedTests;
  }

  [(NSMutableArray *)failedTests addObject:descriptionCopy];
  [(IMUnitTestRunner *)self testLogWithFormat:@"%@", descriptionCopy];
  delegate = [(IMUnitTestRunner *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    delegate2 = [(IMUnitTestRunner *)self delegate];
    name2 = [suiteCopy name];
    [delegate2 unitTestRunner:self testSuite:name2 didFailWithDescription:descriptionCopy inFile:v12 atLine:line];
  }
}

- (void)testSuiteDidFinish:(id)finish
{
  finishCopy = finish;
  testRun = [finishCopy testRun];
  name = [finishCopy name];
  hasSucceeded = [testRun hasSucceeded];
  v6 = "failed";
  if (hasSucceeded)
  {
    v6 = "passed";
  }

  v22 = v6;
  dateFormatter = [(IMUnitTestRunner *)self dateFormatter];
  stopDate = [testRun stopDate];
  v9 = [dateFormatter stringFromDate:stopDate];
  executionCount = [testRun executionCount];
  v11 = "";
  if ([testRun executionCount] == 1)
  {
    v12 = "";
  }

  else
  {
    v12 = "s";
  }

  totalFailureCount = [testRun totalFailureCount];
  if ([testRun totalFailureCount] != 1)
  {
    v11 = "s";
  }

  unexpectedExceptionCount = [testRun unexpectedExceptionCount];
  [testRun testDuration];
  v16 = v15;
  [testRun totalDuration];
  [(IMUnitTestRunner *)self testLogWithFormat:@"Test Suite '%@' %s at %@.\n\t Executed %lu test%s, with %lu failure%s (%lu unexpected) in %.3f (%.3f) seconds\n", name, v22, v9, executionCount, v12, totalFailureCount, v11, unexpectedExceptionCount, v16, v17];

  delegate = [(IMUnitTestRunner *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    delegate2 = [(IMUnitTestRunner *)self delegate];
    name2 = [finishCopy name];
    [delegate2 unitTestRunner:self testSuiteDidFinish:name2 withResult:testRun];
  }
}

- (void)testCaseWillStart:(id)start
{
  startCopy = start;
  name = [startCopy name];
  [(IMUnitTestRunner *)self testLogWithFormat:@"Test Case '%@' started.\n", name];

  delegate = [(IMUnitTestRunner *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(IMUnitTestRunner *)self delegate];
    name2 = [startCopy name];
    [delegate2 unitTestRunner:self testCaseWillStart:name2];
  }
}

- (void)testCase:(id)case didFailWithDescription:(id)description inFile:(id)file atLine:(unint64_t)line
{
  caseCopy = case;
  descriptionCopy = description;
  fileCopy = file;
  v12 = fileCopy;
  if (fileCopy)
  {
    v13 = fileCopy;
  }

  else
  {
    v13 = @"<unknown>";
  }

  if (fileCopy)
  {
    lineCopy = line;
  }

  else
  {
    lineCopy = 0;
  }

  name = [caseCopy name];
  [(IMUnitTestRunner *)self testLogWithFormat:@"%@:%lu: error: %@ : %@\n", v13, lineCopy, name, descriptionCopy];

  delegate = [(IMUnitTestRunner *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    delegate2 = [(IMUnitTestRunner *)self delegate];
    name2 = [caseCopy name];
    [delegate2 unitTestRunner:self testCase:name2 didFailWithDescription:descriptionCopy inFile:v12 atLine:line];
  }
}

- (void)testCaseDidFinish:(id)finish
{
  finishCopy = finish;
  testRun = [finishCopy testRun];
  name = [finishCopy name];
  if ([testRun hasSucceeded])
  {
    v6 = "passed";
  }

  else
  {
    v6 = "failed";
  }

  [testRun totalDuration];
  [(IMUnitTestRunner *)self testLogWithFormat:@"Test Case '%@' %s (%.3f seconds).\n", name, v6, v7];

  delegate = [(IMUnitTestRunner *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(IMUnitTestRunner *)self delegate];
    name2 = [finishCopy name];
    [delegate2 unitTestRunner:self testCaseDidFinish:name2 withResult:testRun];
  }
}

- (void)log:(id)log
{
  v4 = MEMORY[0x1E696AEC0];
  logCopy = log;
  v6 = [[v4 alloc] initWithFormat:logCopy arguments:&v8];

  logger = [(IMUnitTestRunner *)self logger];
  [logger writeOutputToStdout:v6];
}

- (IMUnitTestRunnerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end