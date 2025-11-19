@interface HMDAccessoryDiagnosticsManagerInternal
+ (id)logCategory;
- (HMDAccessory)accessory;
- (HMDAccessoryDiagnosticsManagerInternal)initWithAccessory:(id)a3;
- (NSUUID)messageTargetUUID;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)_handleDiagnosticsTransferRequest:(id)a3;
- (void)_registerForMessages;
- (void)handleDiagnosticsTransferWithOptions:(id)a3 message:(id)a4;
- (void)notifyClientsOfSupportedDiagnostics:(id)a3;
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
  v2 = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  v3 = [v2 logIdentifier];

  return v3;
}

- (id)attributeDescriptions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  v5 = [v4 uuid];
  v6 = [v3 initWithName:@"Accessory UUID" value:v5];
  v10[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)handleDiagnosticsTransferWithOptions:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v2 = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  v3 = [v2 uuid];

  return v3;
}

- (void)notifyClientsOfSupportedDiagnostics:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessoryDiagnosticsManagerInternal *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HMDAccessoryDiagnosticsManagerInternal_notifyClientsOfSupportedDiagnostics___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)_handleDiagnosticsTransferRequest:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v8;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received message to start diagnostics transfer", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDAccessoryDiagnosticsManagerInternal *)v6 accessory];
  v10 = [v9 isReachable];

  if (v10)
  {
    v11 = [v4 messagePayload];
    v12 = [v11 objectForKeyedSubscript:@"kAccessoryDiagnosticsOptions"];

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
    v20 = v6;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Decoded diagnostics options with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    if (v14)
    {
      [v4 respondWithError:v14];
    }

    else
    {
      [(HMDAccessoryDiagnosticsManagerInternal *)v20 handleDiagnosticsTransferWithOptions:v13 message:v4];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v6;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Diagnostics transfer request message: %@ when accessory is not reachable", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    [v4 respondWithError:v14];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryDiagnosticsManagerInternal *)self msgDispatcher];
  v4 = *MEMORY[0x277CCEA30];
  v5 = [HMDXPCMessagePolicy policyWithEntitlements:32773];
  v6 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v12[1] = v6;
  v7 = [(HMDAccessoryDiagnosticsManagerInternal *)self accessory];
  v8 = [v7 home];
  v9 = [HMDUserMessagePolicy userMessagePolicyWithHome:v8 userPrivilege:4 remoteAccessRequired:0];
  v12[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  [v3 registerForMessage:v4 receiver:self policies:v10 selector:sel__handleDiagnosticsTransferRequest_];

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDAccessoryDiagnosticsManagerInternal)initWithAccessory:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HMDAccessoryDiagnosticsManagerInternal;
  v5 = [(HMDAccessoryDiagnosticsManagerInternal *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accessory, v4);
    v7 = [v4 msgDispatcher];
    msgDispatcher = v6->_msgDispatcher;
    v6->_msgDispatcher = v7;

    v9 = [v4 workQueue];
    workQueue = v6->_workQueue;
    v6->_workQueue = v9;

    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];
    v14 = [v11 stringWithFormat:@"%@.HMDAccessoryDiagnosticsManager.%@", @"com.apple.HomeKitDaemon", v13];
    clientIdentifier = v6->_clientIdentifier;
    v6->_clientIdentifier = v14;

    [(HMDAccessoryDiagnosticsManagerInternal *)v6 _registerForMessages];
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_219527 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_219527, &__block_literal_global_219528);
  }

  v3 = logCategory__hmf_once_v4_219529;

  return v3;
}

void __53__HMDAccessoryDiagnosticsManagerInternal_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_219529;
  logCategory__hmf_once_v4_219529 = v1;
}

@end