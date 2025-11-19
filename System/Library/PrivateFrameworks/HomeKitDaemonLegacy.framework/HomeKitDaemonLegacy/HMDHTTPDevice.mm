@interface HMDHTTPDevice
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMDHTTPDevice)init;
- (HMDHTTPDevice)initWithIdentifier:(id)a3;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)logIdentifier;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation HMDHTTPDevice

- (id)logIdentifier
{
  v2 = [(HMDHTTPDevice *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HMDHTTPDevice *)v4 identifier];
      v6 = [(HMDHTTPDevice *)self identifier];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(HMDHTTPDevice *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [objc_opt_class() shortDescription];
  if (v3)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_286509E58;
  }

  v8 = [(HMDHTTPDevice *)self identifier];
  v9 = [v8 UUIDString];
  v10 = [v5 stringWithFormat:@"<%@%@, Identifier = %@>", v6, v7, v9];

  if (v3)
  {
  }

  return v10;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDHTTPDevice *)self identifier];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (HMDHTTPDevice)initWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v15.receiver = self;
    v15.super_class = HMDHTTPDevice;
    v5 = [(HMDHTTPDevice *)&v15 init];
    if (v5)
    {
      v6 = [v4 copy];
      identifier = v5->_identifier;
      v5->_identifier = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = +[HMDHTTPDevice description];
      *buf = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%@] A valid identifier is required", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (HMDHTTPDevice)init
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [(HMDHTTPDevice *)self initWithIdentifier:v3];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_43685 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_43685, &__block_literal_global_43686);
  }

  v3 = logCategory__hmf_once_v2_43687;

  return v3;
}

uint64_t __28__HMDHTTPDevice_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_43687;
  logCategory__hmf_once_v2_43687 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end