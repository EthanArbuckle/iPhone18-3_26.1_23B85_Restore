@interface HMDRemoteMessageForwarder
+ (id)logCategory;
+ (id)remoteMessageForwarderUUIDFromUUID:(id)a3;
- (HMDHome)home;
- (HMDRemoteMessageForwarder)initWithHome:(id)a3 UUID:(id)a4 workQueue:(id)a5;
- (id)messageForForwardedMessage:(id)a3;
- (void)configureWithMessageDispatcher:(id)a3;
- (void)handleResponseMessage:(id)a3;
- (void)redispatchToResidentMessage:(id)a3;
@end

@implementation HMDRemoteMessageForwarder

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)handleResponseMessage:(id)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteMessageForwarder *)self workQueue];
  dispatch_assert_queue_V2(v5);

  [v4 respondWithSuccess];
  v6 = [v4 dictionaryForKey:@"HMDRemoteMessageForwarderPayloadKey"];
  v38[0] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  v8 = [v4 unarchivedObjectForKey:@"HMDRemoteMessageForwarderErrorKey" ofClasses:v7];

  v9 = objc_alloc(MEMORY[0x277CCAD78]);
  v10 = [v4 stringForKey:@"HMDRemoteMessageForwarderOriginalMessageUUIDStringKey"];
  v11 = [v9 initWithUUIDString:v10];

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v4 name];
    v17 = [v4 identifier];
    *buf = 138544130;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v17;
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Handling response message with name: %@, identifier: %@, originalMessageIdentifier: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  v18 = [(HMDRemoteMessageForwarder *)v13 messagesByIdentifier];
  v19 = [v18 objectForKeyedSubscript:v11];

  if (v19)
  {
    [v19 respondWithPayload:v6 error:v8];
    v20 = [(HMDRemoteMessageForwarder *)v13 messagesByIdentifier];
    v21 = [v4 identifier];
    [v20 setObject:0 forKeyedSubscript:v21];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v13;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v4 name];
      [v4 identifier];
      v27 = v29 = v22;
      *buf = 138543874;
      v31 = v25;
      v32 = 2112;
      v33 = v26;
      v34 = 2112;
      v35 = v27;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Did not find a cached message for message response with name: %@, identifier: %@", buf, 0x20u);

      v22 = v29;
    }

    objc_autoreleasePoolPop(v22);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)messageForForwardedMessage:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteMessageForwarder *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 name];
    *buf = 138543618;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Determining message for message with name: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = [v4 stringForKey:@"HMDRemoteMessageForwarderOriginalMessageUUIDStringKey"];
  if ([v4 isRemote] && v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
    v13 = objc_autoreleasePoolPush();
    v14 = v7;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v16;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Message with original message identifier: %@, is remote, returning a copy and responding to the original.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [v4 mutableCopy];
    [v4 respondWithSuccess];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __56__HMDRemoteMessageForwarder_messageForForwardedMessage___block_invoke;
    v26[3] = &unk_278686658;
    v27 = v12;
    v28 = v14;
    v29 = v4;
    v18 = v4;
    v19 = v12;
    [v17 setResponseHandler:v26];

    v4 = v17;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = v7;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Message was not forwarded, returning as is.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

void __56__HMDRemoteMessageForwarder_messageForForwardedMessage___block_invoke(id *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionary];
  [v7 setObject:v6 forKeyedSubscript:@"HMDRemoteMessageForwarderPayloadKey"];
  if (v5)
  {
    v8 = encodeRootObjectForIncomingXPCMessage(v5, 0);
    [v7 setObject:v8 forKeyedSubscript:@"HMDRemoteMessageForwarderErrorKey"];
  }

  else
  {
    [v7 setObject:0 forKeyedSubscript:@"HMDRemoteMessageForwarderErrorKey"];
  }

  v9 = [a1[4] UUIDString];
  [v7 setObject:v9 forKeyedSubscript:@"HMDRemoteMessageForwarderOriginalMessageUUIDStringKey"];

  v10 = [HMDRemoteMessage alloc];
  v11 = [HMDRemoteDeviceMessageDestination alloc];
  v12 = [a1[5] UUID];
  v13 = [a1[6] remoteSourceDevice];
  v14 = [(HMDRemoteDeviceMessageDestination *)v11 initWithTarget:v12 device:v13];
  v15 = [(HMDRemoteMessage *)v10 initWithName:@"HMDRemoteMessageForwarderResponseMessage" destination:v14 payload:v7 type:0 timeout:1 secure:0.0];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __56__HMDRemoteMessageForwarder_messageForForwardedMessage___block_invoke_2;
  v29[3] = &unk_278686658;
  v16 = a1[6];
  v29[4] = a1[5];
  v30 = v16;
  v31 = a1[4];
  [(HMDRemoteMessage *)v15 setResponseHandler:v29];
  v17 = objc_autoreleasePoolPush();
  v18 = a1[5];
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v20 = v28 = v6;
    v21 = [a1[6] name];
    v22 = v5;
    v23 = a1[4];
    [(HMDRemoteMessage *)v15 identifier];
    v24 = v27 = v17;
    *buf = 138544130;
    v33 = v20;
    v34 = 2112;
    v35 = v21;
    v36 = 2112;
    v37 = v23;
    v5 = v22;
    v38 = 2112;
    v39 = v24;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Sending response message for message with name: %@, originalMessageIdentifier: %@, responseMessageIdentifier: %@", buf, 0x2Au);

    v17 = v27;
    v6 = v28;
  }

  objc_autoreleasePoolPop(v17);
  v25 = [a1[5] messageDispatcher];
  [v25 sendMessage:v15];

  v26 = *MEMORY[0x277D85DE8];
}

void __56__HMDRemoteMessageForwarder_messageForForwardedMessage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) name];
      v12 = *(a1 + 48);
      v14 = 138544130;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to send response message for message with name: %@, originalMessageIdentifier: %@, error: %@", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)redispatchToResidentMessage:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDRemoteMessageForwarder *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v4 name];
    v11 = [v4 identifier];
    *buf = 138543874;
    v35 = v9;
    v36 = 2112;
    v37 = v10;
    v38 = 2112;
    v39 = v11;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Redispatching to resident message with name: %@, identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = [(HMDRemoteMessageForwarder *)v7 home];
  if (v12)
  {
    v13 = [v4 mutableCopy];
    v14 = [v4 messagePayload];
    v15 = [v14 mutableCopy];

    v16 = [v4 identifier];
    v17 = [v16 UUIDString];
    [v15 setObject:v17 forKeyedSubscript:@"HMDRemoteMessageForwarderOriginalMessageUUIDStringKey"];

    [v13 setMessagePayload:v15];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __57__HMDRemoteMessageForwarder_redispatchToResidentMessage___block_invoke;
    v31 = &unk_278688370;
    v32 = v7;
    v18 = v4;
    v33 = v18;
    [v13 setResponseHandler:&v28];
    v19 = [(HMDRemoteMessageForwarder *)v7 messagesByIdentifier:v28];
    v20 = [v18 identifier];
    [v19 setObject:v18 forKeyedSubscript:v20];

    v21 = [(HMDRemoteMessageForwarder *)v7 contextUUID];
    v22 = [(HMDRemoteMessageForwarder *)v7 workQueue];
    [v12 redispatchToResidentMessage:v13 target:v21 responseQueue:v22];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v7;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Home property is nil on HMDRemoteMessageForwarder", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __57__HMDRemoteMessageForwarder_redispatchToResidentMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v15 = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to forward message to resident: %@ with error: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 32) messagesByIdentifier];
    v13 = [*(a1 + 40) identifier];
    [v12 setObject:0 forKeyedSubscript:v13];

    [*(a1 + 40) respondWithError:v5];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)configureWithMessageDispatcher:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HMDRemoteMessageForwarder *)self workQueue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HMDRemoteMessageForwarder *)v8 UUID];
    *buf = 138543618;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Configuring HMDRemoteMessageForwarder with UUID: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  objc_storeStrong(&v8->_messageDispatcher, a3);
  if (!v5)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v8;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v15;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Message dispatcher property is nil on HMDRemoteMessageForwarder", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = [(HMDRemoteMessageForwarder *)v8 home];
  if (v16)
  {
    v17 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v18 = [HMDUserMessagePolicy userMessagePolicyWithHome:v16 userPrivilege:0 remoteAccessRequired:0];
    v26[0] = v17;
    v26[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
    v20 = [(HMDRemoteMessageForwarder *)v8 messageDispatcher];
    [v20 registerForMessage:@"HMDRemoteMessageForwarderResponseMessage" receiver:v8 policies:v19 selector:sel_handleResponseMessage_];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v8;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Home property is nil on HMDRemoteMessageForwarder", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (HMDRemoteMessageForwarder)initWithHome:(id)a3 UUID:(id)a4 workQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = HMDRemoteMessageForwarder;
  v11 = [(HMDRemoteMessageForwarder *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_home, v8);
    objc_storeStrong(&v12->_contextUUID, a4);
    v13 = [HMDRemoteMessageForwarder remoteMessageForwarderUUIDFromUUID:v9];
    UUID = v12->_UUID;
    v12->_UUID = v13;

    objc_storeStrong(&v12->_workQueue, a5);
    v15 = [MEMORY[0x277CBEB38] dictionary];
    messagesByIdentifier = v12->_messagesByIdentifier;
    v12->_messagesByIdentifier = v15;
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_117813 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_117813, &__block_literal_global_117814);
  }

  v3 = logCategory__hmf_once_v14_117815;

  return v3;
}

void __40__HMDRemoteMessageForwarder_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_117815;
  logCategory__hmf_once_v14_117815 = v1;
}

+ (id)remoteMessageForwarderUUIDFromUUID:(id)a3
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"CB9FD9B1-29D4-4CA4-97DF-22611DF4AFEC"];
  v6 = MEMORY[0x277CCAD78];
  v7 = [v4 UUIDString];

  v8 = [v7 dataUsingEncoding:4];
  v9 = [v6 hmf_UUIDWithNamespace:v5 data:v8];

  return v9;
}

@end