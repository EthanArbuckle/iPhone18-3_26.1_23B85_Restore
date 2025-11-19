@interface HMDRPIdentity
+ (id)identityWithRPIdentity:(id)a3;
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRPIdentity:(id)a3;
- (HMDRPIdentity)init;
- (HMDRPIdentity)initWithCoder:(id)a3;
- (HMDRPIdentity)initWithDeviceIRK:(id)a3;
- (id)logIdentifier;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDRPIdentity

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDRPIdentity *)self deviceIRK];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CCFC68]];
}

- (HMDRPIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCFC68]];

  v6 = [(HMDRPIdentity *)self initWithDeviceIRK:v5];
  return v6;
}

- (id)logIdentifier
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)isEqualToRPIdentity:(id)a3
{
  v4 = a3;
  v5 = [(HMDRPIdentity *)self deviceIRK];
  v6 = [v4 deviceIRKData];

  LOBYTE(v4) = [v5 isEqualToData:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (v6)
    {
      v8 = [(HMDRPIdentity *)v6 deviceIRK];
      v9 = [(HMDRPIdentity *)self deviceIRK];
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
  v2 = [(HMDRPIdentity *)self deviceIRK];
  v3 = [v2 hash];

  return v3;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMDRPIdentity)initWithDeviceIRK:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = HMDRPIdentity;
    v5 = [(HMDRPIdentity *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      deviceIRK = v5->_deviceIRK;
      v5->_deviceIRK = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
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

+ (id)identityWithRPIdentity:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277D0F7F8];
    v4 = a3;
    v5 = [v3 alloc];
    v6 = *MEMORY[0x277D0F1B8];
    v7 = *MEMORY[0x277D0F1B0];
    v8 = [v4 deviceIRKData];

    v9 = [v5 initWithType:v6 size:v7 data:v8];
    v10 = [objc_alloc(objc_opt_class()) initWithDeviceIRK:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end