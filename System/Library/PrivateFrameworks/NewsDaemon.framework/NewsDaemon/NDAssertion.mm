@interface NDAssertion
- (NDAssertion)init;
- (NDAssertion)initWithName:(id)name options:(int64_t)options;
- (void)dealloc;
@end

@implementation NDAssertion

- (NDAssertion)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NDAssertion init]";
    v10 = 2080;
    v11 = "NDAssertion.m";
    v12 = 1024;
    v13 = 29;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BE24000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NDAssertion init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NDAssertion)initWithName:(id)name options:(int64_t)options
{
  optionsCopy = options;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = NDAssertion;
  v7 = [(NDAssertion *)&v14 init];
  if (v7)
  {
    if (optionsCopy)
    {
      [(__CFString *)nameCopy UTF8String];
      v8 = os_transaction_create();
      transaction = v7->_transaction;
      v7->_transaction = v8;
    }

    if ((optionsCopy & 2) != 0)
    {
      AssertionID = 0;
      if (IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", nameCopy, 0, 0, 0, 60.0, @"TimeoutActionTurnOff", &AssertionID))
      {
        v10 = *MEMORY[0x277D30988];
        if (os_log_type_enabled(*MEMORY[0x277D30988], OS_LOG_TYPE_ERROR))
        {
          [NDAssertion initWithName:nameCopy options:v10];
        }

        v11 = 0;
      }

      else
      {
        v11 = AssertionID;
      }

      v7->_powerAssertionID = v11;
    }
  }

  return v7;
}

- (void)dealloc
{
  if ([(NDAssertion *)self powerAssertionID])
  {
    IOPMAssertionRelease([(NDAssertion *)self powerAssertionID]);
  }

  v3.receiver = self;
  v3.super_class = NDAssertion;
  [(NDAssertion *)&v3 dealloc];
}

- (void)initWithName:(uint64_t)a1 options:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_25BE24000, a2, OS_LOG_TYPE_ERROR, "failed to create a power assertion, name=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end