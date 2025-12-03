@interface HMDRemoteLoginAnisetteDataProviderBridge
+ (id)logCategory;
- (HMDRemoteLoginAnisetteDataProviderBridge)initWithCoder:(id)coder;
- (HMDRemoteLoginAnisetteDataProviderBridge)initWithUUID:(id)d;
- (id)logIdentifier;
- (void)_handleMessage:(id)message;
- (void)_registerXPCRelayForMessageName:(id)name;
- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher remoteMessageSender:(id)sender;
- (void)encodeWithCoder:(id)coder;
- (void)registerForMessages;
@end

@implementation HMDRemoteLoginAnisetteDataProviderBridge

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(HMDRemoteLoginAnisetteDataProviderBridge *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"kIdentifierKey"];
}

- (HMDRemoteLoginAnisetteDataProviderBridge)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HMDRemoteLoginAnisetteDataProviderBridge *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIdentifierKey"];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (void)_handleMessage:(id)message
{
  messageCopy = message;
  remoteMessageSender = [(HMDRemoteLoginAnisetteDataProviderBridge *)self remoteMessageSender];
  name = [messageCopy name];
  messagePayload = [messageCopy messagePayload];
  responseHandler = [messageCopy responseHandler];

  [remoteMessageSender sendRemoteMessageWithName:name payload:messagePayload responseHandler:responseHandler];
}

- (void)_registerXPCRelayForMessageName:(id)name
{
  v9[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  msgDispatcher = [(HMDRemoteLoginAnisetteDataProviderBridge *)self msgDispatcher];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [msgDispatcher registerForMessage:nameCopy receiver:self policies:v7 selector:sel__handleMessage_];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessages
{
  messageName = [MEMORY[0x277CD1D30] messageName];
  [(HMDRemoteLoginAnisetteDataProviderBridge *)self _registerXPCRelayForMessageName:messageName];

  messageName2 = [MEMORY[0x277CD1E90] messageName];
  [(HMDRemoteLoginAnisetteDataProviderBridge *)self _registerXPCRelayForMessageName:messageName2];

  messageName3 = [MEMORY[0x277CD19D8] messageName];
  [(HMDRemoteLoginAnisetteDataProviderBridge *)self _registerXPCRelayForMessageName:messageName3];

  messageName4 = [MEMORY[0x277CD1A40] messageName];
  [(HMDRemoteLoginAnisetteDataProviderBridge *)self _registerXPCRelayForMessageName:messageName4];

  messageName5 = [MEMORY[0x277CD1B08] messageName];
  [(HMDRemoteLoginAnisetteDataProviderBridge *)self _registerXPCRelayForMessageName:messageName5];
}

- (void)configureWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher remoteMessageSender:(id)sender
{
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  [(HMDRemoteLoginAnisetteDataProviderBridge *)self setWorkQueue:queue];
  [(HMDRemoteLoginAnisetteDataProviderBridge *)self setMsgDispatcher:dispatcherCopy];

  [(HMDRemoteLoginAnisetteDataProviderBridge *)self setRemoteMessageSender:senderCopy];
}

- (id)logIdentifier
{
  uuid = [(HMDRemoteLoginAnisetteDataProviderBridge *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (HMDRemoteLoginAnisetteDataProviderBridge)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HMDRemoteLoginAnisetteDataProviderBridge;
  v6 = [(HMDRemoteLoginAnisetteDataProviderBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, d);
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