@interface __HMDPairedAccessoryBrowseAssertion
- (HMDAccessoryBrowser)accessoryBrowser;
- (__HMDPairedAccessoryBrowseAssertion)initWithAccessoryBrowser:(id)a3 reason:(id)a4;
- (__HMDPairedAccessoryBrowseAssertion)initWithName:(id)a3;
- (void)invalidate;
@end

@implementation __HMDPairedAccessoryBrowseAssertion

- (HMDAccessoryBrowser)accessoryBrowser
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryBrowser);

  return WeakRetained;
}

- (void)invalidate
{
  if ([(HMFAssertion *)self isValid])
  {
    v4.receiver = self;
    v4.super_class = __HMDPairedAccessoryBrowseAssertion;
    [(HMFAssertion *)&v4 invalidate];
    v3 = [(__HMDPairedAccessoryBrowseAssertion *)self accessoryBrowser];
    [v3 __inactivate];
  }
}

- (__HMDPairedAccessoryBrowseAssertion)initWithAccessoryBrowser:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_9:
    v15 = _HMFPreconditionFailure();
    [(__HMDPairedAccessoryBrowseAssertion *)v15 initWithName:v16, v17];
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  if ([v8 length])
  {
    v11 = [v10 stringByAppendingFormat:@".%@", v8];

    v10 = v11;
  }

  v18.receiver = self;
  v18.super_class = __HMDPairedAccessoryBrowseAssertion;
  v12 = [(HMFAssertion *)&v18 initWithName:v10];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_accessoryBrowser, v6);
    [v6 __activate];
  }

  return v13;
}

- (__HMDPairedAccessoryBrowseAssertion)initWithName:(id)a3
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

@end