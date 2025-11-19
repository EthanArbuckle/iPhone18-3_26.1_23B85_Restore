@interface HMDIDSMessageContext
- (HMDIDSMessageContext)init;
- (HMDIDSMessageContext)initWithIdentifier:(id)a3 destination:(id)a4 userInfo:(id)a5;
@end

@implementation HMDIDSMessageContext

- (HMDIDSMessageContext)initWithIdentifier:(id)a3 destination:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 0;
  if (v8 && v9)
  {
    v18.receiver = self;
    v18.super_class = HMDIDSMessageContext;
    v12 = [(HMDIDSMessageContext *)&v18 init];
    if (v12)
    {
      v13 = [v8 copy];
      identifier = v12->_identifier;
      v12->_identifier = v13;

      objc_storeStrong(&v12->_destination, a4);
      v15 = [v10 copy];
      userInfo = v12->_userInfo;
      v12->_userInfo = v15;
    }

    self = v12;
    v11 = self;
  }

  return v11;
}

- (HMDIDSMessageContext)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end