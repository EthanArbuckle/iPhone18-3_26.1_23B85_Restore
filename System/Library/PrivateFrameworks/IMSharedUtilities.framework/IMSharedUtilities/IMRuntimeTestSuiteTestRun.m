@interface IMRuntimeTestSuiteTestRun
- (IMRuntimeTestSuiteTestRun)init;
@end

@implementation IMRuntimeTestSuiteTestRun

- (IMRuntimeTestSuiteTestRun)init
{
  v6.receiver = self;
  v6.super_class = IMRuntimeTestSuiteTestRun;
  v2 = [(IMRuntimeTestSuiteTestRun *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    testRuns = v2->_testRuns;
    v2->_testRuns = v3;
  }

  return v2;
}

@end