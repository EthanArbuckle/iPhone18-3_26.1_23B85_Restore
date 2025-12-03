@interface HMDAccessoryDiagnosticsManagerInternal
+ (id)logCategory;
- (HMDAccessory)accessory;
- (HMDAccessoryDiagnosticsManagerInternal)initWithAccessory:(id)accessory;
- (NSUUID)messageTargetUUID;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)_handleDiagnosticsTransferRequest:(id)request;
- (void)_registerForMessages;
- (void)handleDiagnosticsTransferWithOptions:(id)options message:(id)message;
- (void)notifyClientsOfSupportedDiagnostics:(id)diagnostics;
- (void)shutDown;
- (void)start;
@end

@implementation HMDAccessoryDiagnosticsManagerInternal

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)logIdentifier
{
  accessory = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  logIdentifier = [accessory logIdentifier];

  return logIdentifier;
}

- (id)attributeDescriptions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  accessory = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  uuid = [accessory uuid];
  v6 = [v3 initWithName:@"Accessory UUID" value:uuid];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)handleDiagnosticsTransferWithOptions:(id)options message:(id)message
{
  optionsCopy = options;
  messageCopy = message;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)shutDown
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)start
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (NSUUID)messageTargetUUID
{
  accessory = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  uuid = [accessory uuid];

  return uuid;
}

- (void)notifyClientsOfSupportedDiagnostics:(id)diagnostics
{
  diagnosticsCopy = diagnostics;
  workQueue = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HMDAccessoryDiagnosticsManagerInternal_notifyClientsOfSupportedDiagnostics___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = diagnosticsCopy;
  selfCopy = self;
  v6 = diagnosticsCopy;
  dispatch_async(workQueue, v7);
}

void __78__HMDAccessoryDiagnosticsManagerInternal_notifyClientsOfSupportedDiagnostics___block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277CBEB38] dictionary];
  if (*(a1 + 32))
  {
    v2 = encodeRootObject();
    [v7 setObject:v2 forKeyedSubscript:*MEMORY[0x277CCEF20]];
  }

  v3 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CCEF28] messagePayload:v7];
  v4 = [*(a1 + 40) msgDispatcher];
  v5 = [*(a1 + 40) accessory];
  v6 = [v5 uuid];
  [v4 sendMessage:v3 target:v6];
}

- (void)_handleDiagnosticsTransferRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received message to start diagnostics transfer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  accessory = [(HMDAccessoryDiagnosticsManagerInternal *)selfCopy accessory];
  isReachable = [accessory isReachable];

  if (isReachable)
  {
    messagePayload = [requestCopy messagePayload];
    v12 = [messagePayload objectForKeyedSubscript:@"kAccessoryDiagnosticsOptions"];

    if (v12)
    {
      v24 = 0;
      v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v24];
      v14 = v24;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    v19 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Decoded diagnostics options with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    if (v14)
    {
      [requestCopy respondWithError:v14];
    }

    else
    {
      [(HMDAccessoryDiagnosticsManagerInternal *)v20 handleDiagnosticsTransferWithOptions:v13 message:requestCopy];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = requestCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Diagnostics transfer request message: %@ when accessory is not reachable", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [requestCopy respondWithError:v14];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v12[3] = *MEMORY[0x277D85DE8];
  msgDispatcher = [(HMDAccessoryDiagnosticsManagerInternal *)self msgDispatcher];
  v4 = *MEMORY[0x277CCEA30];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:32773];
  v6 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v12[1] = v6;
  accessory = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  home = [accessory home];
  v9 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v12[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  [msgDispatcher registerForMessage:v4 receiver:self policies:v10 selector:sel__handleDiagnosticsTransferRequest_];

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDAccessoryDiagnosticsManagerInternal)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v17.receiver = self;
  v17.super_class = HMDAccessoryDiagnosticsManagerInternal;
  v5 = [(HMDAccessoryDiagnosticsManagerInternal *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accessory, accessoryCopy);
    msgDispatcher = [accessoryCopy msgDispatcher];
    msgDispatcher = v6->_msgDispatcher;
    v6->_msgDispatcher = msgDispatcher;

    workQueue = [accessoryCopy workQueue];
    workQueue = v6->_workQueue;
    v6->_workQueue = workQueue;

    v11 = MEMORY[0x277CCACA8];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v14 = [v11 stringWithFormat:@"%@.HMDAccessoryDiagnosticsManager.%@", @"com.apple.HomeKitDaemon", uUIDString];
    clientIdentifier = v6->_clientIdentifier;
    v6->_clientIdentifier = v14;

    [(HMDAccessoryDiagnosticsManagerInternal *)v6 _registerForMessages];
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_43179 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_43179, &__block_literal_global_43180);
  }

  v3 = logCategory__hmf_once_v4_43181;

  return v3;
}

uint64_t __53__HMDAccessoryDiagnosticsManagerInternal_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_43181;
  logCategory__hmf_once_v4_43181 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end