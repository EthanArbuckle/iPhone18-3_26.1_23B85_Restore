@interface HMDMediaSessionRequestMessageInformation
+ (id)logCategory;
- (HMDDevice)remoteSourceDevice;
- (HMDMediaSessionRequestMessageInformation)initWithMessage:(id)a3;
- (NSUUID)messageIdentifier;
- (id)attributeDescriptions;
@end

@implementation HMDMediaSessionRequestMessageInformation

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDMediaSessionRequestMessageInformation *)self messageIdentifier];
  v5 = [v3 initWithName:@"messageIdentifier" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDMediaSessionRequestMessageInformation *)self remoteSourceDevice];
  v8 = [v6 initWithName:@"remoteSourceDevice" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDDevice)remoteSourceDevice
{
  v2 = [(HMDMediaSessionRequestMessageInformation *)self message];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    v5 = [v4 destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      v8 = [v7 device];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSUUID)messageIdentifier
{
  v2 = [(HMDMediaSessionRequestMessageInformation *)self message];
  v3 = [v2 identifier];

  return v3;
}

- (HMDMediaSessionRequestMessageInformation)initWithMessage:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v12.receiver = self;
    v12.super_class = HMDMediaSessionRequestMessageInformation;
    v7 = [(HMDMediaSessionRequestMessageInformation *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_message, a3);
    }

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return +[(HMDMediaSessionRequestMessageInformation *)v10];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_143457 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_143457, &__block_literal_global_143458);
  }

  v3 = logCategory__hmf_once_v3_143459;

  return v3;
}

void __55__HMDMediaSessionRequestMessageInformation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_143459;
  logCategory__hmf_once_v3_143459 = v1;
}

@end