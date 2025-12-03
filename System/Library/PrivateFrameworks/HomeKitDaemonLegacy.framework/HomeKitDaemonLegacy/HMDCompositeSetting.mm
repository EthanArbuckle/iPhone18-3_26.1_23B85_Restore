@interface HMDCompositeSetting
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualValue:(id)value;
- (HMDCompositeSetting)initWithReadVersion:(id)version writeVersion:(id)writeVersion;
- (id)attributeDescriptions;
@end

@implementation HMDCompositeSetting

- (BOOL)isEqualValue:(id)value
{
  valueCopy = value;
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
  readVersion = [(HMDCompositeSetting *)self readVersion];
  v5 = [v3 initWithName:@"readVersion" value:readVersion];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  writeVersion = [(HMDCompositeSetting *)self writeVersion];
  v8 = [v6 initWithName:@"writeVersion" value:writeVersion];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
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
    readVersion = [(HMDCompositeSetting *)v6 readVersion];
    readVersion2 = [(HMDCompositeSetting *)self readVersion];
    if ([readVersion isEqualToVersion:readVersion2])
    {
      writeVersion = [(HMDCompositeSetting *)v6 writeVersion];
      writeVersion2 = [(HMDCompositeSetting *)self writeVersion];
      v11 = [writeVersion isEqualToVersion:writeVersion2];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HMDCompositeSetting)initWithReadVersion:(id)version writeVersion:(id)writeVersion
{
  versionCopy = version;
  writeVersionCopy = writeVersion;
  v12.receiver = self;
  v12.super_class = HMDCompositeSetting;
  v9 = [(HMDCompositeSetting *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_readVersion, version);
    objc_storeStrong(&v10->_writeVersion, writeVersion);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_28115 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_28115, &__block_literal_global_28116);
  }

  v3 = logCategory__hmf_once_v2_28117;

  return v3;
}

uint64_t __34__HMDCompositeSetting_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v2_28117;
  logCategory__hmf_once_v2_28117 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end