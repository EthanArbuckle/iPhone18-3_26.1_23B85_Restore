@interface __HMFWiFiAssertion
- (BOOL)acquire:(id *)a3;
- (__HMFWiFiAssertion)initWithName:(id)a3;
- (__HMFWiFiAssertion)initWithOptions:(unint64_t)a3 manager:(id)a4 reason:(id)a5;
- (void)invalidate;
@end

@implementation __HMFWiFiAssertion

- (__HMFWiFiAssertion)initWithName:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (__HMFWiFiAssertion)initWithOptions:(unint64_t)a3 manager:(id)a4 reason:(id)a5
{
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure(@"manager");
  }

  v11 = v10;
  if (!v10)
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
    v15->_options = a3;
    objc_storeStrong(&v15->_manager, a4);
    v16->super._valid = 0;
  }

  return v16;
}

- (BOOL)acquire:(id *)a3
{
  v6.receiver = self;
  v6.super_class = __HMFWiFiAssertion;
  v4 = [(HMFAssertion *)&v6 acquire:a3];
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