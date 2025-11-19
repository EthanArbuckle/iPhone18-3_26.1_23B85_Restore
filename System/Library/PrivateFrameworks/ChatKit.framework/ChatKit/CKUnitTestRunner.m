@interface CKUnitTestRunner
+ (id)sharedInstance;
- (void)_dumpResults:(id)a3;
- (void)runUnitTestBundleAtPath:(id)a3 writeToFile:(BOOL)a4;
- (void)unitTestRunner:(id)a3 didReceiveOutput:(id)a4;
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

- (void)runUnitTestBundleAtPath:(id)a3 writeToFile:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(CKUnitTestRunner *)self setShouldWrite:v4];
  v7 = objc_alloc_init(MEMORY[0x1E69A8318]);
  [v7 setDelegate:self];
  [(CKUnitTestRunner *)self setRunner:v7];
  if (v4)
  {
    v8 = [v6 lastPathComponent];
    v9 = [v8 stringByDeletingPathExtension];

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Results.log", v9];
    v11 = [@"/tmp/" stringByAppendingPathComponent:v10];

    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [v12 fileExistsAtPath:v11];

    if (v13)
    {
      v14 = [MEMORY[0x1E696AC08] defaultManager];
      [v14 removeItemAtPath:v11 error:0];
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"MobileSMS invoking App test for %@\n", v6];
    v23 = 0;
    [v15 writeToFile:v11 atomically:1 encoding:4 error:&v23];
    v16 = v23;
    v17 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:v11];
    if (!v17 || v16)
    {
      NSLog(&cfstr_ErrorFailedToG.isa, v11, v16);
    }

    [(CKUnitTestRunner *)self setFileHandle:v17];
  }

  v22 = 0;
  v18 = [v7 runTestsInBundleAtPath:v6 error:&v22];
  v19 = v22;
  [(CKUnitTestRunner *)self _dumpResults:v18];
  v20 = [(CKUnitTestRunner *)self fileHandle];

  if (v20)
  {
    v21 = [(CKUnitTestRunner *)self fileHandle];
    [v21 closeFile];
  }

  if ([v18 hasSucceeded])
  {
    exit(0);
  }

  exit([v18 failureCount]);
}

- (void)_dumpResults:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v5 testCaseCount];
  v7 = [v5 failureCount];
  v8 = [v5 hasSucceeded];

  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v13 = [v4 stringWithFormat:@"\n|-----------------Testing Complete--------------------|\n|>>> Test Cases %tu\n|>>> Failed Tests %lu\n|>>> Suite Passed %@\n|-----------------------------------------------------|", v6, v7, v9];
  v10 = [(CKUnitTestRunner *)self fileHandle];
  [v10 seekToEndOfFile];

  v11 = [v13 dataUsingEncoding:4];
  v12 = [(CKUnitTestRunner *)self fileHandle];
  [v12 writeData:v11];
}

- (void)unitTestRunner:(id)a3 didReceiveOutput:(id)a4
{
  v9 = a4;
  if ([(CKUnitTestRunner *)self shouldWrite]&& ([(CKUnitTestRunner *)self fileHandle], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(CKUnitTestRunner *)self fileHandle];
    [v6 seekToEndOfFile];

    v7 = [v9 dataUsingEncoding:4];
    v8 = [(CKUnitTestRunner *)self fileHandle];
    [v8 writeData:v7];
  }

  else
  {
    NSLog(&stru_1F04293B8.isa, v9);
  }
}

@end