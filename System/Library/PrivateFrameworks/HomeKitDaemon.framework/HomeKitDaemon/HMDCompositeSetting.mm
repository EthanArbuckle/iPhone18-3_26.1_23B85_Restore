@interface HMDCompositeSetting
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualValue:(id)a3;
- (HMDCompositeSetting)initWithReadVersion:(id)a3 writeVersion:(id)a4;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeSetting

- (BOOL)isEqualValue:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"You must override %@ in a subclass", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDCompositeSetting *)self readVersion];
  v5 = [v3 initWithName:@"readVersion" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDCompositeSetting *)self writeVersion];
  v8 = [v6 initWithName:@"writeVersion" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
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
    v7 = [(HMDCompositeSetting *)v6 readVersion];
    v8 = [(HMDCompositeSetting *)self readVersion];
    if ([v7 isEqualToVersion:v8])
    {
      v9 = [(HMDCompositeSetting *)v6 writeVersion];
      v10 = [(HMDCompositeSetting *)self writeVersion];
      v11 = [v9 isEqualToVersion:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HMDCompositeSetting)initWithReadVersion:(id)a3 writeVersion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDCompositeSetting;
  v9 = [(HMDCompositeSetting *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_readVersion, a3);
    objc_storeStrong(&v10->_writeVersion, a4);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_42082 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_42082, &__block_literal_global_42083);
  }

  v3 = logCategory__hmf_once_v2_42084;

  return v3;
}

void __34__HMDCompositeSetting_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_42084;
  logCategory__hmf_once_v2_42084 = v1;
}

@end