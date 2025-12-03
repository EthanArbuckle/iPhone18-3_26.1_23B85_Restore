@interface HMDClientConnection
+ (id)logCategory;
- (HMDClientConnection)initWithHomeManager:(id)manager queue:(id)queue messageDispatcher:(id)dispatcher;
- (HMDClientConnection)initWithHomeManager:(id)manager queue:(id)queue messageDispatcher:(id)dispatcher dataSource:(id)source;
- (HMDHomeManager)homeManager;
- (void)_handleHH1EOLStatusRequest:(id)request;
- (void)_handleSiriCommand:(id)command;
- (void)_handleSiriIntentRequest:(id)request;
- (void)_handleSiriSyncDataRequest:(id)request;
- (void)_registerForMessages;
- (void)dealloc;
@end

@implementation HMDClientConnection

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)_handleHH1EOLStatusRequest:(id)request
{
  v26 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  messagePayload = [requestCopy messagePayload];
  v6 = [messagePayload objectForKey:*MEMORY[0x277CCFBE8]];

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
    homeManager = [(HMDClientConnection *)self homeManager];
    v11 = [homeManager isHH1EOLForResidentDeviceRunningSoftwareVersion:v9];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{v11, *MEMORY[0x277CCFBE0]}];
    v21 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    [requestCopy respondWithPayload:v13];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      messagePayload2 = [requestCopy messagePayload];
      *buf = 138543618;
      v23 = v17;
      v24 = 2112;
      v25 = messagePayload2;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Received invalid HMClientConnectionFetchHH1EOLStatusForResidentDeviceMessage, payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    homeManager = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [requestCopy respondWithError:homeManager];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_handleSiriIntentRequest:(id)request
{
  v43 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy dataForKey:*MEMORY[0x277CD2690]];
  if (v5)
  {
    v36 = 0;
    responseHandler2 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v36];
    v7 = v36;
    if (responseHandler2)
    {
      v8 = [[HMDAssistantIntent alloc] initWithIntent:responseHandler2];
      homeManager = [(HMDClientConnection *)self homeManager];
      v10 = [homeManager isDataSyncInProgressWithMessage:requestCopy];
      v11 = [requestCopy numberForKey:*MEMORY[0x277CD26A0]];
      [v11 unsignedIntegerValue];

      v35 = HMStringFromIntentRequestType();
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
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
        gatherer = [MEMORY[0x277CCA9B8] hmErrorWithCode:77];
        responseHandler = [requestCopy responseHandler];
        (responseHandler)[2](responseHandler, gatherer, 0);
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
        gatherer = [homeManager gatherer];
        [(HMDAssistantIntent *)v8 performWithGather:gatherer message:requestCopy];
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
      homeManager = [requestCopy responseHandler];
      (homeManager)[2](homeManager, v8, 0);
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    responseHandler2 = [requestCopy responseHandler];
    (responseHandler2)[2](responseHandler2, v7, 0);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_handleSiriSyncDataRequest:(id)request
{
  requestCopy = request;
  homeManager = [(HMDClientConnection *)self homeManager];
  [homeManager handleSiriSyncDataRequest:requestCopy];
}

- (void)_handleSiriCommand:(id)command
{
  v74 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  v5 = objc_alloc(MEMORY[0x277D0F770]);
  v6 = MEMORY[0x277CCACA8];
  v7 = MEMORY[0x259C01AE0](self, a2);
  v8 = [v6 stringWithFormat:@"%@, %s:%ld", v7, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/Messaging/XPC/HMDClientConnection.m", 155];
  v48 = [v5 initWithName:v8];

  homeManager = [(HMDClientConnection *)self homeManager];
  val = [homeManager accessoryBrowser];
  name = [commandCopy name];
  v46 = [val beginActiveAssertionWithReason:name];

  messagePayload = [commandCopy messagePayload];
  v49 = [messagePayload objectForKeyedSubscript:@"kSiriCommandKey"];

  v11 = [MEMORY[0x277CCAAC8] deserializeObjectWithData:v49 allowedClass:objc_opt_class() frameworkClasses:&unk_286627190];
  [v11 setHomeManager:homeManager];
  aceId = [v11 aceId];
  [v48 setClientMetricIdentifier:aceId];

  identifier = [commandCopy identifier];
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    uUIDString = [identifier UUIDString];
    aceId2 = [v11 aceId];
    serverValidity = [v11 serverValidity];
    hm_shortDescription = [v11 hm_shortDescription];
    *buf = 138544386;
    v65 = v16;
    v66 = 2114;
    v67 = uUIDString;
    v68 = 2114;
    v69 = aceId2;
    v70 = 2114;
    v71 = serverValidity;
    v72 = 2112;
    v73 = hm_shortDescription;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Incoming Siri command(%{public}@) serverValidity %{public}@:\n%@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  v21 = [homeManager isDataSyncInProgressWithMessage:commandCopy];
  dataSource = [(HMDClientConnection *)selfCopy dataSource];
  carPlayDataSource = [dataSource carPlayDataSource];

  if (v21)
  {
    goto LABEL_4;
  }

  dataSource2 = [(HMDClientConnection *)selfCopy dataSource];
  if (![dataSource2 supportsDeviceLock])
  {
    goto LABEL_12;
  }

  dataSource3 = [(HMDClientConnection *)selfCopy dataSource];
  if (![dataSource3 isDeviceLocked] || objc_msgSend(homeManager, "isAccessAllowedWhenLocked"))
  {

LABEL_12:
LABEL_13:
    workQueue = [(HMDClientConnection *)selfCopy workQueue];
    msgDispatcher = [(HMDClientConnection *)selfCopy msgDispatcher];
    v26 = [HMDAssistantCommandExecutor executorWithCommand:v11 workQueue:workQueue messageDispatcher:msgDispatcher];

    commandsBeingExecuted = [(HMDClientConnection *)selfCopy commandsBeingExecuted];
    [commandsBeingExecuted addObject:v26];

    objc_initWeak(buf, selfCopy);
    objc_initWeak(&location, val);
    objc_initWeak(&from, v26);
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __42__HMDClientConnection__handleSiriCommand___block_invoke;
    v53[3] = &unk_27972C1F8;
    objc_copyWeak(&v58, buf);
    objc_copyWeak(&v59, &from);
    objc_copyWeak(&v60, &location);
    v54 = identifier;
    v55 = v11;
    v56 = commandCopy;
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

  synchronouslyFetchIsCarPlayConnectedStatus = [carPlayDataSource synchronouslyFetchIsCarPlayConnectedStatus];

  if (synchronouslyFetchIsCarPlayConnectedStatus)
  {
    goto LABEL_13;
  }

LABEL_4:
  commandsBeingExecuted2 = [(HMDClientConnection *)selfCopy commandsBeingExecuted];
  v24 = [commandsBeingExecuted2 count] == 0;

  if (v24)
  {
    [val endActiveAssertion:v46];
  }

  v25 = objc_alloc_init(MEMORY[0x277D47350]);
  v26 = v25;
  if (v21)
  {
    [v25 setCommandOutcome:*MEMORY[0x277D480E0]];
    array = [MEMORY[0x277CBEA60] array];
    [v26 setActionResults:array];
    v28 = @"Data sync in progress";
  }

  else
  {
    [v25 setCommandOutcome:*MEMORY[0x277D480D0]];
    array = objc_alloc_init(MEMORY[0x277D47338]);
    [array setOutcome:*MEMORY[0x277D47E18]];
    v63 = array;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
    [v26 setActionResults:v34];

    v28 = @"HomeKit access not allowed when device is locked";
  }

  dictionary = [v26 dictionary];
  v36 = objc_autoreleasePoolPush();
  v37 = selfCopy;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = HMFGetLogIdentifier();
    aceId3 = [v11 aceId];
    hm_headerDescription = [v26 hm_headerDescription];
    *buf = 138544130;
    v65 = v39;
    v66 = 2112;
    v67 = v28;
    v68 = 2112;
    v69 = aceId3;
    v70 = 2112;
    v71 = hm_headerDescription;
    _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@%@ - response for Siri command(%@): %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v36);
  responseHandler = [commandCopy responseHandler];
  (responseHandler)[2](responseHandler, 0, dictionary);

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
  msgDispatcher = [(HMDClientConnection *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

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
  msgDispatcher = [(HMDClientConnection *)self msgDispatcher];
  [msgDispatcher registerForMessage:*MEMORY[0x277CD2698] receiver:self policies:v5 selector:sel__handleSiriIntentRequest_];

  v12[0] = v3;
  v12[1] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  msgDispatcher2 = [(HMDClientConnection *)self msgDispatcher];
  [msgDispatcher2 registerForMessage:*MEMORY[0x277CCFBF0] receiver:self policies:v7 selector:sel__handleSiriCommand_];

  msgDispatcher3 = [(HMDClientConnection *)self msgDispatcher];
  [msgDispatcher3 registerForMessage:*MEMORY[0x277CCFBF8] receiver:self policies:v7 selector:sel__handleSiriSyncDataRequest_];

  msgDispatcher4 = [(HMDClientConnection *)self msgDispatcher];
  [msgDispatcher4 registerForMessage:*MEMORY[0x277CCFBD8] receiver:self policies:v7 selector:sel__handleHH1EOLStatusRequest_];

  v11 = *MEMORY[0x277D85DE8];
}

- (HMDClientConnection)initWithHomeManager:(id)manager queue:(id)queue messageDispatcher:(id)dispatcher dataSource:(id)source
{
  managerCopy = manager;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = HMDClientConnection;
  v14 = [(HMDClientConnection *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_homeManager, managerCopy);
    objc_storeStrong(&v15->_dataSource, source);
    objc_storeStrong(&v15->_workQueue, queue);
    objc_storeStrong(&v15->_msgDispatcher, dispatcher);
    array = [MEMORY[0x277CBEB18] array];
    commandsBeingExecuted = v15->_commandsBeingExecuted;
    v15->_commandsBeingExecuted = array;

    [(HMDClientConnection *)v15 _registerForMessages];
  }

  return v15;
}

- (HMDClientConnection)initWithHomeManager:(id)manager queue:(id)queue messageDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  managerCopy = manager;
  v11 = objc_alloc_init(HMDClientConnectionDataSource);
  v12 = [(HMDClientConnection *)self initWithHomeManager:managerCopy queue:queueCopy messageDispatcher:dispatcherCopy dataSource:v11];

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