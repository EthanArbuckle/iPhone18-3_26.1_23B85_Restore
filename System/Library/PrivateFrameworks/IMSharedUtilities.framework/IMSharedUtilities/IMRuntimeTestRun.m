@interface IMRuntimeTestRun
- (IMRuntimeTestRun)initWithTest:(id)a3;
@end

@implementation IMRuntimeTestRun

- (IMRuntimeTestRun)initWithTest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMRuntimeTestRun;
  v6 = [(IMRuntimeTestRun *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_test, a3);
  }

  return v7;
}

@end