@interface HMDRPIdentity
+ (id)identityWithRPIdentity:(id)identity;
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRPIdentity:(id)identity;
- (HMDRPIdentity)init;
- (HMDRPIdentity)initWithCoder:(id)coder;
- (HMDRPIdentity)initWithDeviceIRK:(id)k;
- (id)logIdentifier;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDRPIdentity

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deviceIRK = [(HMDRPIdentity *)self deviceIRK];
  [coderCopy encodeObject:deviceIRK forKey:*MEMORY[0x277CCFC68]];
}

- (HMDRPIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCFC68]];

  v6 = [(HMDRPIdentity *)self initWithDeviceIRK:v5];
  return v6;
}

- (id)logIdentifier
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)isEqualToRPIdentity:(id)identity
{
  identityCopy = identity;
  deviceIRK = [(HMDRPIdentity *)self deviceIRK];
  deviceIRKData = [identityCopy deviceIRKData];

  LOBYTE(identityCopy) = [deviceIRK isEqualToData:deviceIRKData];
  return identityCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (v6)
    {
      deviceIRK = [(HMDRPIdentity *)v6 deviceIRK];
      deviceIRK2 = [(HMDRPIdentity *)self deviceIRK];
      v10 = HMFEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  deviceIRK = [(HMDRPIdentity *)self deviceIRK];
  v3 = [deviceIRK hash];

  return v3;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMDRPIdentity)initWithDeviceIRK:(id)k
{
  kCopy = k;
  if (kCopy)
  {
    v10.receiver = self;
    v10.super_class = HMDRPIdentity;
    v5 = [(HMDRPIdentity *)&v10 init];
    if (v5)
    {
      v6 = [kCopy copy];
      deviceIRK = v5->_deviceIRK;
      v5->_deviceIRK = v6;
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

- (HMDRPIdentity)init
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

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_76647 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_76647, &__block_literal_global_76648);
  }

  v3 = logCategory__hmf_once_v2_76649;

  return v3;
}

uint64_t __28__HMDRPIdentity_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_76649;
  logCategory__hmf_once_v2_76649 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)identityWithRPIdentity:(id)identity
{
  if (identity)
  {
    v3 = MEMORY[0x277D0F7F8];
    identityCopy = identity;
    v5 = [v3 alloc];
    v6 = *MEMORY[0x277D0F1B8];
    v7 = *MEMORY[0x277D0F1B0];
    deviceIRKData = [identityCopy deviceIRKData];

    v9 = [v5 initWithType:v6 size:v7 data:deviceIRKData];
    v10 = [objc_alloc(objc_opt_class()) initWithDeviceIRK:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end