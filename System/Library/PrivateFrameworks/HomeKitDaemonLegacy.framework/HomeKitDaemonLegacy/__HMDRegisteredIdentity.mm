@interface __HMDRegisteredIdentity
- (__HMDRegisteredIdentity)init;
- (__HMDRegisteredIdentity)initWithIdentity:(id)identity;
- (id)debugDescription;
- (id)description;
@end

@implementation __HMDRegisteredIdentity

- (id)description
{
  identity = [(__HMDRegisteredIdentity *)self identity];
  v3 = [identity description];

  return v3;
}

- (id)debugDescription
{
  identity = [(__HMDRegisteredIdentity *)self identity];
  v3 = [identity debugDescription];

  return v3;
}

- (__HMDRegisteredIdentity)initWithIdentity:(id)identity
{
  identityCopy = identity;
  if (identityCopy)
  {
    v12.receiver = self;
    v12.super_class = __HMDRegisteredIdentity;
    v5 = [(__HMDRegisteredIdentity *)&v12 init];
    if (v5)
    {
      v6 = [identityCopy copy];
      identity = v5->_identity;
      v5->_identity = v6;

      array = [MEMORY[0x277CBEB18] array];
      registeredObjects = v5->_registeredObjects;
      v5->_registeredObjects = array;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (__HMDRegisteredIdentity)init
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