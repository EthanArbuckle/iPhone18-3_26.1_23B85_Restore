@interface IMRuntimeTestRun
- (IMRuntimeTestRun)initWithTest:(id)test;
@end

@implementation IMRuntimeTestRun

- (IMRuntimeTestRun)initWithTest:(id)test
{
  testCopy = test;
  v9.receiver = self;
  v9.super_class = IMRuntimeTestRun;
  v6 = [(IMRuntimeTestRun *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_test, test);
  }

  return v7;
}

@end