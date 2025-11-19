@interface HMDClientConnection
+ (id)logCategory;
- (HMDClientConnection)initWithHomeManager:(id)a3 queue:(id)a4 messageDispatcher:(id)a5;
- (HMDClientConnection)initWithHomeManager:(id)a3 queue:(id)a4 messageDispatcher:(id)a5 dataSource:(id)a6;
- (HMDHomeManager)homeManager;
- (void)_handleHH1EOLStatusRequest:(id)a3;
- (void)_handleSiriCommand:(id)a3;
- (void)_handleSiriIntentRequest:(id)a3;
- (void)_handleSiriSyncDataRequest:(id)a3;
- (void)_registerForMessages;
- (void)dealloc;
@end

@implementation HMDClientConnection

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)_handleHH1EOLStatusRequest:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 messagePayload];
  v6 = [v5 objectForKey:*MEMORY[0x277CCFBE8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [objc_alloc(MEMORY[0x277D0F8F8]) initWithString:v8];
  if (v9)
  {
    v10 = [(HMDClientConnection *)self homeManager];
    v11 = [v10 isHH1EOLForResidentDeviceRunningSoftwareVersion:v9];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{v11, *MEMORY[0x277CCFBE0]}];
    v21 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [v4 respondWithPayload:v13];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v4 messagePayload];
      *buf = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Received invalid HMClientConnectionFetchHH1EOLStatusForResidentDeviceMessage, payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v4 respondWithError:v10];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleSiriIntentRequest:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 dataForKey:*MEMORY[0x277CD2690]];
  if (v5)
  {
    v36 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v36];
    v7 = v36;
    if (v6)
    {
      v8 = [[HMDAssistantIntent alloc] initWithIntent:v6];
      v9 = [(HMDClientConnection *)self homeManager];
      v10 = [v9 isDataSyncInProgressWithMessage:v4];
      v11 = [v4 numberForKey:*MEMORY[0x277CD26A0]];
      [v11 unsignedIntegerValue];

      v35 = HMStringFromIntentRequestType();
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (v10)
      {
        if (v15)
        {
          v33 = HMFGetLogIdentifier();
          v16 = *MEMORY[0x277CD0750];
          v17 = HMINControlHomeIntentShortDescription();
          *buf = 138543874;
          v38 = v33;
          v39 = 2112;
          v40 = v35;
          v41 = 2112;
          v42 = v17;
          v18 = v17;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Error - Data sync in progress - Unable to %@ intent [ %@ ] ", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v12);
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:77];
        v20 = [v4 responseHandler];
        (v20)[2](v20, v19, 0);
      }

      else
      {
        if (v15)
        {
          HMFGetLogIdentifier();
          v29 = v34 = v12;
          v30 = *MEMORY[0x277CD0758];
          v31 = HMINControlHomeIntentShortDescription();
          *buf = 138543874;
          v38 = v29;
          v39 = 2112;
          v40 = v35;
          v41 = 2112;
          v42 = v31;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Received to %@ intent: [ %@ ]", buf, 0x20u);

          v12 = v34;
        }

        objc_autoreleasePoolPop(v12);
        v19 = [v9 gatherer];
        [(HMDAssistantIntent *)v8 performWithGather:v19 message:v4];
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543618;
        v38 = v28;
        v39 = 2112;
        v40 = v7;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Failed to unarchive control home intent from the message payload data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      v9 = [v4 responseHandler];
      (v9)[2](v9, v8, 0);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Error - Did not get the intent", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v6 = [v4 responseHandler];
    (v6)[2](v6, v7, 0);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_handleSiriSyncDataRequest:(id)a3
{
  v4 = a3;
  v5 = [(HMDClientConnection *)self homeManager];
  [v5 handleSiriSyncDataRequest:v4];
}

- (void)_handleSiriCommand:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v52 = a3;
  v5 = objc_alloc(MEMORY[0x277D0F770]);
  v6 = MEMORY[0x277CCACA8];
  v7 = MEMORY[0x259C01AE0](self, a2);
  v8 = [v6 stringWithFormat:@"%@, %s:%ld", v7, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Messaging/XPC/HMDClientConnection.m", 155];
  v48 = [v5 initWithName:v8];

  v51 = [(HMDClientConnection *)self homeManager];
  val = [v51 accessoryBrowser];
  v9 = [v52 name];
  v46 = [val beginActiveAssertionWithReason:v9];

  v10 = [v52 messagePayload];
  v49 = [v10 objectForKeyedSubscript:@"kSiriCommandKey"];

  v11 = [MEMORY[0x277CCAAC8] deserializeObjectWithData:v49 allowedClass:objc_opt_class() frameworkClasses:&unk_286627190];
  [v11 setHomeManager:v51];
  v12 = [v11 aceId];
  [v48 setClientMetricIdentifier:v12];

  v47 = [v52 identifier];
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v47 UUIDString];
    v18 = [v11 aceId];
    v19 = [v11 serverValidity];
    v20 = [v11 hm_shortDescription];
    *buf = 138544386;
    v65 = v16;
    v66 = 2114;
    v67 = v17;
    v68 = 2114;
    v69 = v18;
    v70 = 2114;
    v71 = v19;
    v72 = 2112;
    v73 = v20;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Incoming Siri command(%{public}@) serverValidity %{public}@:\n%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  v21 = [v51 isDataSyncInProgressWithMessage:v52];
  v22 = [(HMDClientConnection *)v14 dataSource];
  v45 = [v22 carPlayDataSource];

  if (v21)
  {
    goto LABEL_4;
  }

  v29 = [(HMDClientConnection *)v14 dataSource];
  if (![v29 supportsDeviceLock])
  {
    goto LABEL_12;
  }

  v30 = [(HMDClientConnection *)v14 dataSource];
  if (![v30 isDeviceLocked] || objc_msgSend(v51, "isAccessAllowedWhenLocked"))
  {

LABEL_12:
LABEL_13:
    v31 = [(HMDClientConnection *)v14 workQueue];
    v32 = [(HMDClientConnection *)v14 msgDispatcher];
    v26 = [HMDAssistantCommandExecutor executorWithCommand:v11 workQueue:v31 messageDispatcher:v32];

    v33 = [(HMDClientConnection *)v14 commandsBeingExecuted];
    [v33 addObject:v26];

    objc_initWeak(buf, v14);
    objc_initWeak(&location, val);
    objc_initWeak(&from, v26);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __42__HMDClientConnection__handleSiriCommand___block_invoke;
    v53[3] = &unk_27972C1F8;
    objc_copyWeak(&v58, buf);
    objc_copyWeak(&v59, &from);
    objc_copyWeak(&v60, &location);
    v54 = v47;
    v55 = v11;
    v56 = v52;
    v57 = v46;
    [v26 performWithCompletion:v53];

    objc_destroyWeak(&v60);
    objc_destroyWeak(&v59);
    objc_destroyWeak(&v58);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
    goto LABEL_18;
  }

  v44 = [v45 synchronouslyFetchIsCarPlayConnectedStatus];

  if (v44)
  {
    goto LABEL_13;
  }

LABEL_4:
  v23 = [(HMDClientConnection *)v14 commandsBeingExecuted];
  v24 = [v23 count] == 0;

  if (v24)
  {
    [val endActiveAssertion:v46];
  }

  v25 = objc_alloc_init(MEMORY[0x277D47350]);
  v26 = v25;
  if (v21)
  {
    [v25 setCommandOutcome:*MEMORY[0x277D480E0]];
    v27 = [MEMORY[0x277CBEA60] array];
    [v26 setActionResults:v27];
    v28 = @"Data sync in progress";
  }

  else
  {
    [v25 setCommandOutcome:*MEMORY[0x277D480D0]];
    v27 = objc_alloc_init(MEMORY[0x277D47338]);
    [v27 setOutcome:*MEMORY[0x277D47E18]];
    v63 = v27;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    [v26 setActionResults:v34];

    v28 = @"HomeKit access not allowed when device is locked";
  }

  v35 = [v26 dictionary];
  v36 = objc_autoreleasePoolPush();
  v37 = v14;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = HMFGetLogIdentifier();
    v40 = [v11 aceId];
    v41 = [v26 hm_headerDescription];
    *buf = 138544130;
    v65 = v39;
    v66 = 2112;
    v67 = v28;
    v68 = 2112;
    v69 = v40;
    v70 = 2112;
    v71 = v41;
    _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@%@ - response for Siri command(%@): %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v36);
  v42 = [v52 responseHandler];
  (v42)[2](v42, 0, v35);

LABEL_18:
  v43 = *MEMORY[0x277D85DE8];
}

void __42__HMDClientConnection__handleSiriCommand___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = objc_loadWeakRetained((a1 + 72));
  v47 = objc_loadWeakRetained((a1 + 80));
  if (v5)
  {
    v42 = v8;
    v45 = v6;
    v46 = v5;
    v9 = [objc_alloc(MEMORY[0x277D47350]) initWithDictionary:v5];
    v10 = objc_autoreleasePoolPush();
    v43 = WeakRetained;
    v11 = WeakRetained;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 32) UUIDString];
      v15 = [*(a1 + 40) aceId];
      v16 = [v9 hm_headerDescription];
      *buf = 138544130;
      v54 = v13;
      v55 = 2114;
      v56 = v14;
      v57 = 2114;
      v58 = v15;
      v59 = 2114;
      v60 = v16;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Outgoing Response for Siri command(%{public}@): %{public}@", buf, 0x2Au);
    }

    v44 = a1;

    objc_autoreleasePoolPop(v10);
    v41 = v9;
    [v9 hm_contentDescription];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v17 = v51 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v49;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v49 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v48 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          v24 = v11;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543618;
            v54 = v26;
            v55 = 2112;
            v56 = v22;
            _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@%@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
        }

        v19 = [v17 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v19);
    }

    v6 = v45;
    v5 = v46;
    WeakRetained = v43;
    a1 = v44;
    v8 = v42;
    if (!v45)
    {
      goto LABEL_21;
    }

LABEL_18:
    v31 = objc_autoreleasePoolPush();
    v32 = WeakRetained;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [*(a1 + 32) UUIDString];
      *buf = 138543874;
      v54 = v34;
      v55 = 2114;
      v56 = v35;
      v57 = 2114;
      v58 = v6;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Error executing Siri command: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    goto LABEL_21;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = WeakRetained;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543362;
    v54 = v30;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Nil response for Siri command", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v27);
  if (v6)
  {
    goto LABEL_18;
  }

LABEL_21:
  v36 = [*(a1 + 48) responseHandler];
  (v36)[2](v36, v6, v5);

  if (v8)
  {
    v37 = [WeakRetained commandsBeingExecuted];
    [v37 removeObject:v8];

    v38 = [WeakRetained commandsBeingExecuted];
    v39 = [v38 count];

    if (!v39)
    {
      [v47 endActiveAssertion:*(a1 + 56)];
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [(HMDClientConnection *)self msgDispatcher];
  [v3 deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDClientConnection;
  [(HMDClientConnection *)&v4 dealloc];
}

- (void)_registerForMessages
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v4 = [HMDXPCBackgroundMessagePolicy policyWithEntitlementRequirement:1];
  v13[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v6 = [(HMDClientConnection *)self msgDispatcher];
  [v6 registerForMessage:*MEMORY[0x277CD2698] receiver:self policies:v5 selector:sel__handleSiriIntentRequest_];

  v12[0] = v3;
  v12[1] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v8 = [(HMDClientConnection *)self msgDispatcher];
  [v8 registerForMessage:*MEMORY[0x277CCFBF0] receiver:self policies:v7 selector:sel__handleSiriCommand_];

  v9 = [(HMDClientConnection *)self msgDispatcher];
  [v9 registerForMessage:*MEMORY[0x277CCFBF8] receiver:self policies:v7 selector:sel__handleSiriSyncDataRequest_];

  v10 = [(HMDClientConnection *)self msgDispatcher];
  [v10 registerForMessage:*MEMORY[0x277CCFBD8] receiver:self policies:v7 selector:sel__handleHH1EOLStatusRequest_];

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDClientConnection)initWithHomeManager:(id)a3 queue:(id)a4 messageDispatcher:(id)a5 dataSource:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = HMDClientConnection;
  v14 = [(HMDClientConnection *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_homeManager, v10);
    objc_storeStrong(&v15->_dataSource, a6);
    objc_storeStrong(&v15->_workQueue, a4);
    objc_storeStrong(&v15->_msgDispatcher, a5);
    v16 = [MEMORY[0x277CBEB18] array];
    commandsBeingExecuted = v15->_commandsBeingExecuted;
    v15->_commandsBeingExecuted = v16;

    [(HMDClientConnection *)v15 _registerForMessages];
  }

  return v15;
}

- (HMDClientConnection)initWithHomeManager:(id)a3 queue:(id)a4 messageDispatcher:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(HMDClientConnectionDataSource);
  v12 = [(HMDClientConnection *)self initWithHomeManager:v10 queue:v9 messageDispatcher:v8 dataSource:v11];

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_124149 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_124149, &__block_literal_global_124150);
  }

  v3 = logCategory__hmf_once_v13_124151;

  return v3;
}

uint64_t __34__HMDClientConnection_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_124151;
  logCategory__hmf_once_v13_124151 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end