@interface HMDRemoteLoginAnisetteDataProviderBridge
+ (id)logCategory;
- (HMDRemoteLoginAnisetteDataProviderBridge)initWithCoder:(id)a3;
- (HMDRemoteLoginAnisetteDataProviderBridge)initWithUUID:(id)a3;
- (id)logIdentifier;
- (void)_handleMessage:(id)a3;
- (void)_registerXPCRelayForMessageName:(id)a3;
- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4 remoteMessageSender:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)registerForMessages;
@end

@implementation HMDRemoteLoginAnisetteDataProviderBridge

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDRemoteLoginAnisetteDataProviderBridge *)self uuid];
  [v4 encodeObject:v5 forKey:@"kIdentifierKey"];
}

- (HMDRemoteLoginAnisetteDataProviderBridge)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDRemoteLoginAnisetteDataProviderBridge *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIdentifierKey"];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (void)_handleMessage:(id)a3
{
  v4 = a3;
  v8 = [(HMDRemoteLoginAnisetteDataProviderBridge *)self remoteMessageSender];
  v5 = [v4 name];
  v6 = [v4 messagePayload];
  v7 = [v4 responseHandler];

  [v8 sendRemoteMessageWithName:v5 payload:v6 responseHandler:v7];
}

- (void)_registerXPCRelayForMessageName:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteLoginAnisetteDataProviderBridge *)self msgDispatcher];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v5 registerForMessage:v4 receiver:self policies:v7 selector:sel__handleMessage_];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  v3 = [MEMORY[0x277CD1D30] messageName];
  [(HMDRemoteLoginAnisetteDataProviderBridge *)self _registerXPCRelayForMessageName:v3];

  v4 = [MEMORY[0x277CD1E90] messageName];
  [(HMDRemoteLoginAnisetteDataProviderBridge *)self _registerXPCRelayForMessageName:v4];

  v5 = [MEMORY[0x277CD19D8] messageName];
  [(HMDRemoteLoginAnisetteDataProviderBridge *)self _registerXPCRelayForMessageName:v5];

  v6 = [MEMORY[0x277CD1A40] messageName];
  [(HMDRemoteLoginAnisetteDataProviderBridge *)self _registerXPCRelayForMessageName:v6];

  v7 = [MEMORY[0x277CD1B08] messageName];
  [(HMDRemoteLoginAnisetteDataProviderBridge *)self _registerXPCRelayForMessageName:v7];
}

- (void)configureWithWorkQueue:(id)a3 messageDispatcher:(id)a4 remoteMessageSender:(id)a5
{
  v9 = a5;
  v8 = a4;
  [(HMDRemoteLoginAnisetteDataProviderBridge *)self setWorkQueue:a3];
  [(HMDRemoteLoginAnisetteDataProviderBridge *)self setMsgDispatcher:v8];

  [(HMDRemoteLoginAnisetteDataProviderBridge *)self setRemoteMessageSender:v9];
}

- (id)logIdentifier
{
  v2 = [(HMDRemoteLoginAnisetteDataProviderBridge *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (HMDRemoteLoginAnisetteDataProviderBridge)initWithUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDRemoteLoginAnisetteDataProviderBridge;
  v6 = [(HMDRemoteLoginAnisetteDataProviderBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_109100 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_109100, &__block_literal_global_109101);
  }

  v3 = logCategory__hmf_once_v1_109102;

  return v3;
}

uint64_t __55__HMDRemoteLoginAnisetteDataProviderBridge_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_109102;
  logCategory__hmf_once_v1_109102 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end