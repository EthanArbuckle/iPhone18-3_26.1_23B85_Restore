@interface CKUnitTestRunner
+ (id)sharedInstance;
- (void)_dumpResults:(id)results;
- (void)runUnitTestBundleAtPath:(id)path writeToFile:(BOOL)file;
- (void)unitTestRunner:(id)runner didReceiveOutput:(id)output;
@end

@implementation CKUnitTestRunner

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[CKUnitTestRunner sharedInstance];
  }

  v3 = sharedInstance_sRunner;

  return v3;
}

void __34__CKUnitTestRunner_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKUnitTestRunner);
  v1 = sharedInstance_sRunner;
  sharedInstance_sRunner = v0;
}

- (void)runUnitTestBundleAtPath:(id)path writeToFile:(BOOL)file
{
  fileCopy = file;
  pathCopy = path;
  [(CKUnitTestRunner *)self setShouldWrite:fileCopy];
  v7 = objc_alloc_init(MEMORY[0x1E69A8318]);
  [v7 setDelegate:self];
  [(CKUnitTestRunner *)self setRunner:v7];
  if (fileCopy)
  {
    lastPathComponent = [pathCopy lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Results.log", stringByDeletingPathExtension];
    v11 = [@"/tmp/" stringByAppendingPathComponent:v10];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [defaultManager fileExistsAtPath:v11];

    if (v13)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager2 removeItemAtPath:v11 error:0];
    }

    pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"MobileSMS invoking App test for %@\n", pathCopy];
    v23 = 0;
    [pathCopy writeToFile:v11 atomically:1 encoding:4 error:&v23];
    v16 = v23;
    v17 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:v11];
    if (!v17 || v16)
    {
      NSLog(&cfstr_ErrorFailedToG.isa, v11, v16);
    }

    [(CKUnitTestRunner *)self setFileHandle:v17];
  }

  v22 = 0;
  v18 = [v7 runTestsInBundleAtPath:pathCopy error:&v22];
  v19 = v22;
  [(CKUnitTestRunner *)self _dumpResults:v18];
  fileHandle = [(CKUnitTestRunner *)self fileHandle];

  if (fileHandle)
  {
    fileHandle2 = [(CKUnitTestRunner *)self fileHandle];
    [fileHandle2 closeFile];
  }

  if ([v18 hasSucceeded])
  {
    exit(0);
  }

  exit([v18 failureCount]);
}

- (void)_dumpResults:(id)results
{
  v4 = MEMORY[0x1E696AEC0];
  resultsCopy = results;
  testCaseCount = [resultsCopy testCaseCount];
  failureCount = [resultsCopy failureCount];
  hasSucceeded = [resultsCopy hasSucceeded];

  v9 = @"NO";
  if (hasSucceeded)
  {
    v9 = @"YES";
  }

  v13 = [v4 stringWithFormat:@"\n|-----------------Testing Complete--------------------|\n|>>> Test Cases %tu\n|>>> Failed Tests %lu\n|>>> Suite Passed %@\n|-----------------------------------------------------|", testCaseCount, failureCount, v9];
  fileHandle = [(CKUnitTestRunner *)self fileHandle];
  [fileHandle seekToEndOfFile];

  v11 = [v13 dataUsingEncoding:4];
  fileHandle2 = [(CKUnitTestRunner *)self fileHandle];
  [fileHandle2 writeData:v11];
}

- (void)unitTestRunner:(id)runner didReceiveOutput:(id)output
{
  outputCopy = output;
  if ([(CKUnitTestRunner *)self shouldWrite]&& ([(CKUnitTestRunner *)self fileHandle], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    fileHandle = [(CKUnitTestRunner *)self fileHandle];
    [fileHandle seekToEndOfFile];

    v7 = [outputCopy dataUsingEncoding:4];
    fileHandle2 = [(CKUnitTestRunner *)self fileHandle];
    [fileHandle2 writeData:v7];
  }

  else
  {
    NSLog(&stru_1F04293B8.isa, outputCopy);
  }
}

@end