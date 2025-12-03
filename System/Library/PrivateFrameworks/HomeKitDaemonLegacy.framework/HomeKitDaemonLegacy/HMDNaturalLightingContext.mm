@interface HMDNaturalLightingContext
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (HMDNaturalLightingContext)initWithCoder:(id)coder;
- (HMDNaturalLightingContext)initWithCurve:(id)curve timeZone:(id)zone;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDNaturalLightingContext

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  curve = [(HMDNaturalLightingContext *)self curve];
  v5 = [v3 initWithName:@"Curve" value:curve];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  timeZone = [(HMDNaturalLightingContext *)self timeZone];
  v8 = [v6 initWithName:@"Time Zone" value:timeZone];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (unint64_t)hash
{
  curve = [(HMDNaturalLightingContext *)self curve];
  v4 = [curve hash];

  timeZone = [(HMDNaturalLightingContext *)self timeZone];
  v6 = [timeZone hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
    curve = [v6 curve];
    curve2 = [(HMDNaturalLightingContext *)self curve];
    if ([curve isEqual:curve2])
    {
      timeZone = [v7 timeZone];
      timeZone2 = [v7 timeZone];
      v12 = [timeZone isEqual:timeZone2];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  curve = [(HMDNaturalLightingContext *)self curve];
  [coderCopy encodeObject:curve forKey:@"HHNLC.cck"];

  timeZone = [(HMDNaturalLightingContext *)self timeZone];
  [coderCopy encodeObject:timeZone forKey:@"HHNLC.tzk"];
}

- (HMDNaturalLightingContext)initWithCoder:(id)coder
{
  v19 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HHNLC.cck"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HHNLC.tzk"];
    if (v6)
    {
      selfCopy2 = [(HMDNaturalLightingContext *)self initWithCurve:v5 timeZone:v6];
      v8 = selfCopy2;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v14;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode time zone", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v8 = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode curve", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (HMDNaturalLightingContext)initWithCurve:(id)curve timeZone:(id)zone
{
  curveCopy = curve;
  zoneCopy = zone;
  v14.receiver = self;
  v14.super_class = HMDNaturalLightingContext;
  v8 = [(HMDNaturalLightingContext *)&v14 init];
  if (v8)
  {
    v9 = [curveCopy copy];
    curve = v8->_curve;
    v8->_curve = v9;

    v11 = [zoneCopy copy];
    timeZone = v8->_timeZone;
    v8->_timeZone = v11;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_183593 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_183593, &__block_literal_global_183594);
  }

  v3 = logCategory__hmf_once_v4_183595;

  return v3;
}

uint64_t __40__HMDNaturalLightingContext_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_183595;
  logCategory__hmf_once_v4_183595 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end