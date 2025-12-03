@interface HMDIDSMessageContext
- (HMDIDSMessageContext)init;
- (HMDIDSMessageContext)initWithIdentifier:(id)identifier destination:(id)destination userInfo:(id)info;
@end

@implementation HMDIDSMessageContext

- (HMDIDSMessageContext)initWithIdentifier:(id)identifier destination:(id)destination userInfo:(id)info
{
  identifierCopy = identifier;
  destinationCopy = destination;
  infoCopy = info;
  selfCopy = 0;
  if (identifierCopy && destinationCopy)
  {
    v18.receiver = self;
    v18.super_class = HMDIDSMessageContext;
    v12 = [(HMDIDSMessageContext *)&v18 init];
    if (v12)
    {
      v13 = [identifierCopy copy];
      identifier = v12->_identifier;
      v12->_identifier = v13;

      objc_storeStrong(&v12->_destination, destination);
      v15 = [infoCopy copy];
      userInfo = v12->_userInfo;
      v12->_userInfo = v15;
    }

    self = v12;
    selfCopy = self;
  }

  return selfCopy;
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