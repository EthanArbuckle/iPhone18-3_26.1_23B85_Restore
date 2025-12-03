@interface __HMFWiFiAssertion
- (BOOL)acquire:(id *)acquire;
- (__HMFWiFiAssertion)initWithName:(id)name;
- (__HMFWiFiAssertion)initWithOptions:(unint64_t)options manager:(id)manager reason:(id)reason;
- (void)invalidate;
@end

@implementation __HMFWiFiAssertion

- (__HMFWiFiAssertion)initWithName:(id)name
{
  nameCopy = name;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (__HMFWiFiAssertion)initWithOptions:(unint64_t)options manager:(id)manager reason:(id)reason
{
  managerCopy = manager;
  reasonCopy = reason;
  if (!managerCopy)
  {
    _HMFPreconditionFailure(@"manager");
  }

  v11 = reasonCopy;
  if (!reasonCopy)
  {
    _HMFPreconditionFailure(@"reason");
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  if ([v11 length])
  {
    v14 = [v13 stringByAppendingFormat:@".%@", v11];

    v13 = v14;
  }

  v18.receiver = self;
  v18.super_class = __HMFWiFiAssertion;
  v15 = [(HMFAssertion *)&v18 initWithName:v13];
  v16 = v15;
  if (v15)
  {
    v15->_options = options;
    objc_storeStrong(&v15->_manager, manager);
    v16->super._valid = 0;
  }

  return v16;
}

- (BOOL)acquire:(id *)acquire
{
  v6.receiver = self;
  v6.super_class = __HMFWiFiAssertion;
  v4 = [(HMFAssertion *)&v6 acquire:acquire];
  if (v4)
  {
    [(HMFWiFiManager *)self->_manager __updateActiveAssertions];
  }

  return v4;
}

- (void)invalidate
{
  if ([(HMFAssertion *)self isValid])
  {
    [(HMFWiFiManager *)self->_manager __updateActiveAssertions];
  }

  v3.receiver = self;
  v3.super_class = __HMFWiFiAssertion;
  [(HMFAssertion *)&v3 invalidate];
}

@end