@interface __HMDRegisteredIdentity
- (__HMDRegisteredIdentity)init;
- (__HMDRegisteredIdentity)initWithIdentity:(id)a3;
- (id)debugDescription;
- (id)description;
@end

@implementation __HMDRegisteredIdentity

- (id)description
{
  v2 = [(__HMDRegisteredIdentity *)self identity];
  v3 = [v2 description];

  return v3;
}

- (id)debugDescription
{
  v2 = [(__HMDRegisteredIdentity *)self identity];
  v3 = [v2 debugDescription];

  return v3;
}

- (__HMDRegisteredIdentity)initWithIdentity:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12.receiver = self;
    v12.super_class = __HMDRegisteredIdentity;
    v5 = [(__HMDRegisteredIdentity *)&v12 init];
    if (v5)
    {
      v6 = [v4 copy];
      identity = v5->_identity;
      v5->_identity = v6;

      v8 = [MEMORY[0x277CBEB18] array];
      registeredObjects = v5->_registeredObjects;
      v5->_registeredObjects = v8;
    }

    self = v5;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
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