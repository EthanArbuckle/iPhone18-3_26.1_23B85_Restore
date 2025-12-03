@interface HMDAccessorySettingsMessenger
+ (id)logCategory;
- (HMDAccessorySettingsMessenger)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher messageRouter:(id)router messageHandler:(id)handler logEventSubmitter:(id)submitter;
- (id)fetchLogEventFromMessage:(id)message;
- (id)logIdentifier;
- (void)registerForMessagesWithHome:(id)home;
- (void)routeAccessorySettingsFetchRequestMessage:(id)message;
- (void)routeAccessorySettingsUpdateRequestMessage:(id)message;
- (void)sendFetchAccessorySettingsRequestWithAccessoryUUID:(id)d keyPaths:(id)paths completionHandler:(id)handler;
- (void)sendUpdateAccessorySettingRequestWithAccessoryUUID:(id)d keyPath:(id)path settingValue:(id)value completionHandler:(id)handler;
- (void)updateAndPostFetchSettingsEvent:(id)event responsePayload:(id)payload responseError:(id)error;
@end

@implementation HMDAccessorySettingsMessenger

- (void)routeAccessorySettingsUpdateRequestMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = messageCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Routing accessory settings update request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = messageCopy;
  messageRouter = [(HMDAccessorySettingsMessenger *)selfCopy messageRouter];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__HMDAccessorySettingsMessenger_routeAccessorySettingsUpdateRequestMessage___block_invoke;
  v13[3] = &unk_2786858B0;
  v13[4] = selfCopy;
  v14 = v9;
  v11 = v9;
  [messageRouter routeMessage:v11 localHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __76__HMDAccessorySettingsMessenger_routeAccessorySettingsUpdateRequestMessage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messageHandler];
  [v2 handleAccessorySettingsUpdateRequestMessage:*(a1 + 40)];
}

- (void)routeAccessorySettingsFetchRequestMessage:(id)message
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = messageCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Routing accessory settings fetch request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = messageCopy;
  if ([v9 isRemote] & 1) != 0 || (objc_msgSend(v9, "isSecureRemote"))
  {
    v10 = 0;
    v11 = v9;
  }

  else
  {
    v12 = [(HMDAccessorySettingsMessenger *)selfCopy fetchLogEventFromMessage:v9];
    v13 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v16 = v13;
    }

    else
    {
      v16 = [v13 mutableCopy];
    }

    v17 = v16;

    responseHandler = [v13 responseHandler];
    objc_initWeak(buf, selfCopy);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __75__HMDAccessorySettingsMessenger_routeAccessorySettingsFetchRequestMessage___block_invoke;
    v26[3] = &unk_278685EC0;
    objc_copyWeak(&v29, buf);
    v10 = v12;
    v27 = v10;
    v19 = responseHandler;
    v28 = v19;
    [v17 setResponseHandler:v26];
    v11 = v17;

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  v20 = v11;
  messageRouter = [(HMDAccessorySettingsMessenger *)selfCopy messageRouter];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __75__HMDAccessorySettingsMessenger_routeAccessorySettingsFetchRequestMessage___block_invoke_2;
  v24[3] = &unk_2786858B0;
  v24[4] = selfCopy;
  v25 = v20;
  v22 = v20;
  [messageRouter routeMessage:v22 localHandler:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __75__HMDAccessorySettingsMessenger_routeAccessorySettingsFetchRequestMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  v8 = *(a1 + 32);
  if (v8)
  {
    [WeakRetained updateAndPostFetchSettingsEvent:v8 responsePayload:v5 responseError:v10];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v10, v5);
  }
}

void __75__HMDAccessorySettingsMessenger_routeAccessorySettingsFetchRequestMessage___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) messageHandler];
  [v2 handleAccessorySettingsFetchRequestMessage:*(a1 + 40)];
}

- (id)logIdentifier
{
  messageTargetUUID = [(HMDAccessorySettingsMessenger *)self messageTargetUUID];
  uUIDString = [messageTargetUUID UUIDString];

  return uUIDString;
}

- (void)sendUpdateAccessorySettingRequestWithAccessoryUUID:(id)d keyPath:(id)path settingValue:(id)value completionHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathCopy = path;
  valueCopy = value;
  handlerCopy = handler;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544130;
    v35 = v17;
    v36 = 2112;
    v37 = dCopy;
    v38 = 2112;
    v39 = pathCopy;
    v40 = 2112;
    v41 = valueCopy;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Sending update request with accessoryUUID: %@ keypath: %@ value: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [objc_alloc(MEMORY[0x277CD17B8]) initWithAccessoryUUID:dCopy keyPath:pathCopy settingValue:valueCopy];
  v19 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDAccessorySettingsMessenger *)selfCopy messageTargetUUID];
  v21 = [v19 initWithTarget:messageTargetUUID];

  v22 = objc_alloc(MEMORY[0x277D0F848]);
  v23 = *MEMORY[0x277CCEDC8];
  payloadCopy = [v18 payloadCopy];
  v25 = [v22 initWithName:v23 destination:v21 payload:payloadCopy];

  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __123__HMDAccessorySettingsMessenger_sendUpdateAccessorySettingRequestWithAccessoryUUID_keyPath_settingValue_completionHandler___block_invoke;
  v31 = &unk_278685AF8;
  v32 = selfCopy;
  v33 = handlerCopy;
  v26 = handlerCopy;
  [v25 setResponseHandler:&v28];
  [(HMDAccessorySettingsMessenger *)selfCopy routeAccessorySettingsUpdateRequestMessage:v25, v28, v29, v30, v31, v32];

  v27 = *MEMORY[0x277D85DE8];
}

void __123__HMDAccessorySettingsMessenger_sendUpdateAccessorySettingRequestWithAccessoryUUID_keyPath_settingValue_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Send update request responded with error: %@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Send update request responded", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateAndPostFetchSettingsEvent:(id)event responsePayload:(id)payload responseError:(id)error
{
  v54 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  payloadCopy = payload;
  errorCopy = error;
  mach_absolute_time();
  [eventCopy setResponseTimeStamp:UpTicksToMilliseconds()];
  if (errorCopy)
  {
    [eventCopy setError:errorCopy];
LABEL_3:
    keyPaths = [eventCopy keyPaths];
    [eventCopy setFailedKeyPaths:keyPaths];

LABEL_4:
    logEventSubmitter = [(HMDAccessorySettingsMessenger *)self logEventSubmitter];
    [logEventSubmitter submitLogEvent:eventCopy];
    goto LABEL_5;
  }

  if (!payloadCopy)
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v51 = v35;
      v52 = 2112;
      v53 = 0;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Send fetch request responded with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    [eventCopy setError:v36];

    goto LABEL_3;
  }

  v14 = [objc_alloc(MEMORY[0x277CD17A8]) initWithPayload:payloadCopy];
  if (v14)
  {
    v15 = v14;
    selfCopy2 = self;
    v44 = payloadCopy;
    v16 = MEMORY[0x277CBEB18];
    fetchResults = [v14 fetchResults];
    v18 = [v16 arrayWithCapacity:{objc_msgSend(fetchResults, "count")}];

    v19 = MEMORY[0x277CBEB18];
    fetchResults2 = [v15 fetchResults];
    v21 = [v19 arrayWithCapacity:{objc_msgSend(fetchResults2, "count")}];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v42 = v15;
    fetchResults3 = [v15 fetchResults];
    v23 = [fetchResults3 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v46;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v46 != v25)
          {
            objc_enumerationMutation(fetchResults3);
          }

          v27 = *(*(&v45 + 1) + 8 * i);
          setting = [v27 setting];

          keyPath = [v27 keyPath];
          if (setting)
          {
            [v18 addObject:keyPath];
          }

          else
          {
            [v21 addObject:keyPath];

            keyPath = [v27 error];
            [eventCopy setError:keyPath];
          }
        }

        v24 = [fetchResults3 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v24);
    }

    v30 = [v18 copy];
    [eventCopy setSucceededKeyPaths:v30];

    v31 = [v21 copy];
    [eventCopy setFailedKeyPaths:v31];

    errorCopy = 0;
    payloadCopy = v44;
    self = selfCopy2;
    goto LABEL_4;
  }

  v37 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v40;
    v52 = 2112;
    v53 = payloadCopy;
    _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode fetch request response payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v37);
  v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  [eventCopy setError:v41];

  logEventSubmitter = [eventCopy keyPaths];
  [eventCopy setFailedKeyPaths:logEventSubmitter];
LABEL_5:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)fetchLogEventFromMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  mach_absolute_time();
  v5 = UpTicksToMilliseconds();
  transport = [messageCopy transport];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = transport;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    name = [v8 name];
    if (name)
    {
      v10 = name;
    }

    else
    {
      v10 = @"unknown xpc client";
    }
  }

  else
  {
    v10 = @"homed";
  }

  v11 = objc_alloc(MEMORY[0x277CD17A0]);
  messagePayload = [messageCopy messagePayload];
  v13 = [v11 initWithPayload:messagePayload];

  if (v13)
  {
    v14 = [HMDFetchAccessorySettingsLogEvent alloc];
    keyPaths = [v13 keyPaths];
    v16 = [(HMDFetchAccessorySettingsLogEvent *)v14 initWithKeyPaths:keyPaths startTime:v5 requestingClientName:v10 error:0];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode fetch request payload for metric generation", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)sendFetchAccessorySettingsRequestWithAccessoryUUID:(id)d keyPaths:(id)paths completionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathsCopy = paths;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v30 = v14;
    v31 = 2112;
    v32 = dCopy;
    v33 = 2112;
    v34 = pathsCopy;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending fetch request with accessoryUUID: %@ keypaths: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [objc_alloc(MEMORY[0x277CD17A0]) initWithAccessoryUUID:dCopy keyPaths:pathsCopy];
  v16 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDAccessorySettingsMessenger *)selfCopy messageTargetUUID];
  v18 = [v16 initWithTarget:messageTargetUUID];

  v19 = objc_alloc(MEMORY[0x277D0F848]);
  v20 = *MEMORY[0x277CCEDB8];
  payloadCopy = [v15 payloadCopy];
  v22 = [v19 initWithName:v20 destination:v18 payload:payloadCopy];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __111__HMDAccessorySettingsMessenger_sendFetchAccessorySettingsRequestWithAccessoryUUID_keyPaths_completionHandler___block_invoke;
  v26[3] = &unk_2786862C0;
  v27 = pathsCopy;
  v28 = handlerCopy;
  v26[4] = selfCopy;
  v23 = pathsCopy;
  v24 = handlerCopy;
  [v22 setResponseHandler:v26];
  [(HMDAccessorySettingsMessenger *)selfCopy routeAccessorySettingsFetchRequestMessage:v22];

  v25 = *MEMORY[0x277D85DE8];
}

void __111__HMDAccessorySettingsMessenger_sendFetchAccessorySettingsRequestWithAccessoryUUID_keyPaths_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CD17A8]) initWithPayload:v6];
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Send fetch request responded", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [v7 fetchResults];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v20;
        v25 = 2112;
        v26 = v6;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode fetch request response payload: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = *(a1 + 48);
      v14 = [MEMORY[0x277CD1788] fetchResultsWithKeyPaths:*(a1 + 40) failureType:3];
    }

    v21 = v14;
    (*(v13 + 16))(v13, v14);
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v18;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Send fetch request responded with error: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = *(a1 + 48);
    v7 = [MEMORY[0x277CD1788] fetchResultsWithKeyPaths:*(a1 + 40) failureType:0];
    (*(v19 + 16))(v19, v7);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)registerForMessagesWithHome:(id)home
{
  v17[3] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:0 remoteAccessRequired:0];
  v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:homeCopy userPrivilege:4 remoteAccessRequired:0];

  messageDispatcher = [(HMDAccessorySettingsMessenger *)self messageDispatcher];
  v10 = *MEMORY[0x277CCEDB8];
  v17[0] = v5;
  v17[1] = v6;
  v17[2] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  [messageDispatcher registerForMessage:v10 receiver:self policies:v11 selector:sel_routeAccessorySettingsFetchRequestMessage_];

  messageDispatcher2 = [(HMDAccessorySettingsMessenger *)self messageDispatcher];
  v13 = *MEMORY[0x277CCEDC8];
  v16[0] = v5;
  v16[1] = v6;
  v16[2] = v8;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [messageDispatcher2 registerForMessage:v13 receiver:self policies:v14 selector:sel_routeAccessorySettingsUpdateRequestMessage_];

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDAccessorySettingsMessenger)initWithMessageTargetUUID:(id)d messageDispatcher:(id)dispatcher messageRouter:(id)router messageHandler:(id)handler logEventSubmitter:(id)submitter
{
  dCopy = d;
  dispatcherCopy = dispatcher;
  routerCopy = router;
  handlerCopy = handler;
  obj = submitter;
  submitterCopy = submitter;
  if (!dCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!dispatcherCopy)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!routerCopy)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!handlerCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v18 = submitterCopy;
  if (!submitterCopy)
  {
LABEL_13:
    v22 = _HMFPreconditionFailure();
    return +[(HMDAccessorySettingsMessenger *)v22];
  }

  v25.receiver = self;
  v25.super_class = HMDAccessorySettingsMessenger;
  v19 = [(HMDAccessorySettingsMessenger *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_messageDispatcher, dispatcher);
    objc_storeStrong(&v20->_messageTargetUUID, d);
    objc_storeStrong(&v20->_messageRouter, router);
    objc_storeStrong(&v20->_messageHandler, handler);
    objc_storeStrong(&v20->_logEventSubmitter, obj);
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_252819 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_252819, &__block_literal_global_252820);
  }

  v3 = logCategory__hmf_once_v12_252821;

  return v3;
}

void __44__HMDAccessorySettingsMessenger_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_252821;
  logCategory__hmf_once_v12_252821 = v1;
}

@end