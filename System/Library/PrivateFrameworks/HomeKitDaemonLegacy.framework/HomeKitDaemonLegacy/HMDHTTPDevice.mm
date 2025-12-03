@interface HMDHTTPDevice
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMDHTTPDevice)init;
- (HMDHTTPDevice)initWithIdentifier:(id)identifier;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)logIdentifier;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation HMDHTTPDevice

- (id)logIdentifier
{
  identifier = [(HMDHTTPDevice *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(HMDHTTPDevice *)equalCopy identifier];
      identifier2 = [(HMDHTTPDevice *)self identifier];
      v7 = [identifier isEqual:identifier2];
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
  identifier = [(HMDHTTPDevice *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_286509E58;
  }

  identifier = [(HMDHTTPDevice *)self identifier];
  uUIDString = [identifier UUIDString];
  v10 = [v5 stringWithFormat:@"<%@%@, Identifier = %@>", shortDescription, v7, uUIDString];

  if (pointerCopy)
  {
  }

  return v10;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  identifier = [(HMDHTTPDevice *)self identifier];
  uUIDString = [identifier UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (HMDHTTPDevice)initWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v15.receiver = self;
    v15.super_class = HMDHTTPDevice;
    v5 = [(HMDHTTPDevice *)&v15 init];
    if (v5)
    {
      v6 = [identifierCopy copy];
      identifier = v5->_identifier;
      v5->_identifier = v6;
    }

    self = v5;
    selfCopy = self;
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
    selfCopy = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (HMDHTTPDevice)init
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v4 = [(HMDHTTPDevice *)self initWithIdentifier:uUID];

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