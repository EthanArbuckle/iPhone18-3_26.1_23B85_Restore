@interface HMDNaturalLightingContext
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (HMDNaturalLightingContext)initWithCoder:(id)a3;
- (HMDNaturalLightingContext)initWithCurve:(id)a3 timeZone:(id)a4;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDNaturalLightingContext

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDNaturalLightingContext *)self curve];
  v5 = [v3 initWithName:@"Curve" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDNaturalLightingContext *)self timeZone];
  v8 = [v6 initWithName:@"Time Zone" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(HMDNaturalLightingContext *)self curve];
  v4 = [v3 hash];

  v5 = [(HMDNaturalLightingContext *)self timeZone];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
    v8 = [v6 curve];
    v9 = [(HMDNaturalLightingContext *)self curve];
    if ([v8 isEqual:v9])
    {
      v10 = [v7 timeZone];
      v11 = [v7 timeZone];
      v12 = [v10 isEqual:v11];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDNaturalLightingContext *)self curve];
  [v4 encodeObject:v5 forKey:@"HHNLC.cck"];

  v6 = [(HMDNaturalLightingContext *)self timeZone];
  [v4 encodeObject:v6 forKey:@"HHNLC.tzk"];
}

- (HMDNaturalLightingContext)initWithCoder:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HHNLC.cck"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HHNLC.tzk"];
    if (v6)
    {
      v7 = [(HMDNaturalLightingContext *)self initWithCurve:v5 timeZone:v6];
      v8 = v7;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v7 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v14;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode time zone", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v8 = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v7 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode curve", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v8;
}

- (HMDNaturalLightingContext)initWithCurve:(id)a3 timeZone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMDNaturalLightingContext;
  v8 = [(HMDNaturalLightingContext *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    curve = v8->_curve;
    v8->_curve = v9;

    v11 = [v7 copy];
    timeZone = v8->_timeZone;
    v8->_timeZone = v11;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_266576 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_266576, &__block_literal_global_266577);
  }

  v3 = logCategory__hmf_once_v4_266578;

  return v3;
}

void __40__HMDNaturalLightingContext_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_266578;
  logCategory__hmf_once_v4_266578 = v1;
}

@end