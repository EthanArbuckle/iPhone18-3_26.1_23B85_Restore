@interface HMDMediaSessionRequestMessageInformation
+ (id)logCategory;
- (HMDDevice)remoteSourceDevice;
- (HMDMediaSessionRequestMessageInformation)initWithMessage:(id)message;
- (NSUUID)messageIdentifier;
- (id)attributeDescriptions;
@end

@implementation HMDMediaSessionRequestMessageInformation

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  messageIdentifier = [(HMDMediaSessionRequestMessageInformation *)self messageIdentifier];
  v5 = [v3 initWithName:@"messageIdentifier" value:messageIdentifier];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  remoteSourceDevice = [(HMDMediaSessionRequestMessageInformation *)self remoteSourceDevice];
  v8 = [v6 initWithName:@"remoteSourceDevice" value:remoteSourceDevice];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDDevice)remoteSourceDevice
{
  message = [(HMDMediaSessionRequestMessageInformation *)self message];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = message;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    destination = [v4 destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = destination;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      device = [v7 device];
    }

    else
    {
      device = 0;
    }
  }

  else
  {
    device = 0;
  }

  return device;
}

- (NSUUID)messageIdentifier
{
  message = [(HMDMediaSessionRequestMessageInformation *)self message];
  identifier = [message identifier];

  return identifier;
}

- (HMDMediaSessionRequestMessageInformation)initWithMessage:(id)message
{
  messageCopy = message;
  if (messageCopy)
  {
    v6 = messageCopy;
    v12.receiver = self;
    v12.super_class = HMDMediaSessionRequestMessageInformation;
    v7 = [(HMDMediaSessionRequestMessageInformation *)&v12 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_message, message);
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
  if (logCategory__hmf_once_t2_94920 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_94920, &__block_literal_global_94921);
  }

  v3 = logCategory__hmf_once_v3_94922;

  return v3;
}

uint64_t __55__HMDMediaSessionRequestMessageInformation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_94922;
  logCategory__hmf_once_v3_94922 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end