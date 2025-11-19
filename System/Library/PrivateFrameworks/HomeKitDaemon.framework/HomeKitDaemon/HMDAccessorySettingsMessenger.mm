@interface HMDAccessorySettingsMessenger
+ (id)logCategory;
- (HMDAccessorySettingsMessenger)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4 messageRouter:(id)a5 messageHandler:(id)a6 logEventSubmitter:(id)a7;
- (id)fetchLogEventFromMessage:(id)a3;
- (id)logIdentifier;
- (void)registerForMessagesWithHome:(id)a3;
- (void)routeAccessorySettingsFetchRequestMessage:(id)a3;
- (void)routeAccessorySettingsUpdateRequestMessage:(id)a3;
- (void)sendFetchAccessorySettingsRequestWithAccessoryUUID:(id)a3 keyPaths:(id)a4 completionHandler:(id)a5;
- (void)sendUpdateAccessorySettingRequestWithAccessoryUUID:(id)a3 keyPath:(id)a4 settingValue:(id)a5 completionHandler:(id)a6;
- (void)updateAndPostFetchSettingsEvent:(id)a3 responsePayload:(id)a4 responseError:(id)a5;
@end

@implementation HMDAccessorySettingsMessenger

- (void)routeAccessorySettingsUpdateRequestMessage:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Routing accessory settings update request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = v4;
  v10 = [(HMDAccessorySettingsMessenger *)v6 messageRouter];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__HMDAccessorySettingsMessenger_routeAccessorySettingsUpdateRequestMessage___block_invoke;
  v13[3] = &unk_2786858B0;
  v13[4] = v6;
  v14 = v9;
  v11 = v9;
  [v10 routeMessage:v11 localHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __76__HMDAccessorySettingsMessenger_routeAccessorySettingsUpdateRequestMessage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) messageHandler];
  [v2 handleAccessorySettingsUpdateRequestMessage:*(a1 + 40)];
}

- (void)routeAccessorySettingsFetchRequestMessage:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v31 = v8;
    v32 = 2112;
    v33 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Routing accessory settings fetch request message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = v4;
  if ([v9 isRemote] & 1) != 0 || (objc_msgSend(v9, "isSecureRemote"))
  {
    v10 = 0;
    v11 = v9;
  }

  else
  {
    v12 = [(HMDAccessorySettingsMessenger *)v6 fetchLogEventFromMessage:v9];
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

    v18 = [v13 responseHandler];
    objc_initWeak(buf, v6);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __75__HMDAccessorySettingsMessenger_routeAccessorySettingsFetchRequestMessage___block_invoke;
    v26[3] = &unk_278685EC0;
    objc_copyWeak(&v29, buf);
    v10 = v12;
    v27 = v10;
    v19 = v18;
    v28 = v19;
    [v17 setResponseHandler:v26];
    v11 = v17;

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  v20 = v11;
  v21 = [(HMDAccessorySettingsMessenger *)v6 messageRouter];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __75__HMDAccessorySettingsMessenger_routeAccessorySettingsFetchRequestMessage___block_invoke_2;
  v24[3] = &unk_2786858B0;
  v24[4] = v6;
  v25 = v20;
  v22 = v20;
  [v21 routeMessage:v22 localHandler:v24];

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
  v2 = [(HMDAccessorySettingsMessenger *)self messageTargetUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)sendUpdateAccessorySettingRequestWithAccessoryUUID:(id)a3 keyPath:(id)a4 settingValue:(id)a5 completionHandler:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138544130;
    v35 = v17;
    v36 = 2112;
    v37 = v10;
    v38 = 2112;
    v39 = v11;
    v40 = 2112;
    v41 = v12;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Sending update request with accessoryUUID: %@ keypath: %@ value: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [objc_alloc(MEMORY[0x277CD17B8]) initWithAccessoryUUID:v10 keyPath:v11 settingValue:v12];
  v19 = objc_alloc(MEMORY[0x277D0F820]);
  v20 = [(HMDAccessorySettingsMessenger *)v15 messageTargetUUID];
  v21 = [v19 initWithTarget:v20];

  v22 = objc_alloc(MEMORY[0x277D0F848]);
  v23 = *MEMORY[0x277CCEDC8];
  v24 = [v18 payloadCopy];
  v25 = [v22 initWithName:v23 destination:v21 payload:v24];

  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __123__HMDAccessorySettingsMessenger_sendUpdateAccessorySettingRequestWithAccessoryUUID_keyPath_settingValue_completionHandler___block_invoke;
  v31 = &unk_278685AF8;
  v32 = v15;
  v33 = v13;
  v26 = v13;
  [v25 setResponseHandler:&v28];
  [(HMDAccessorySettingsMessenger *)v15 routeAccessorySettingsUpdateRequestMessage:v25, v28, v29, v30, v31, v32];

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

- (void)updateAndPostFetchSettingsEvent:(id)a3 responsePayload:(id)a4 responseError:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  mach_absolute_time();
  [v8 setResponseTimeStamp:UpTicksToMilliseconds()];
  if (v10)
  {
    [v8 setError:v10];
LABEL_3:
    v11 = [v8 keyPaths];
    [v8 setFailedKeyPaths:v11];

LABEL_4:
    v12 = [(HMDAccessorySettingsMessenger *)self logEventSubmitter];
    [v12 submitLogEvent:v8];
    goto LABEL_5;
  }

  if (!v9)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = self;
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
    [v8 setError:v36];

    goto LABEL_3;
  }

  v14 = [objc_alloc(MEMORY[0x277CD17A8]) initWithPayload:v9];
  if (v14)
  {
    v15 = v14;
    v43 = self;
    v44 = v9;
    v16 = MEMORY[0x277CBEB18];
    v17 = [v14 fetchResults];
    v18 = [v16 arrayWithCapacity:{objc_msgSend(v17, "count")}];

    v19 = MEMORY[0x277CBEB18];
    v20 = [v15 fetchResults];
    v21 = [v19 arrayWithCapacity:{objc_msgSend(v20, "count")}];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v42 = v15;
    v22 = [v15 fetchResults];
    v23 = [v22 countByEnumeratingWithState:&v45 objects:v49 count:16];
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
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v45 + 1) + 8 * i);
          v28 = [v27 setting];

          v29 = [v27 keyPath];
          if (v28)
          {
            [v18 addObject:v29];
          }

          else
          {
            [v21 addObject:v29];

            v29 = [v27 error];
            [v8 setError:v29];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v24);
    }

    v30 = [v18 copy];
    [v8 setSucceededKeyPaths:v30];

    v31 = [v21 copy];
    [v8 setFailedKeyPaths:v31];

    v10 = 0;
    v9 = v44;
    self = v43;
    goto LABEL_4;
  }

  v37 = objc_autoreleasePoolPush();
  v38 = self;
  v39 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v40 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v40;
    v52 = 2112;
    v53 = v9;
    _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode fetch request response payload: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v37);
  v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  [v8 setError:v41];

  v12 = [v8 keyPaths];
  [v8 setFailedKeyPaths:v12];
LABEL_5:

  v13 = *MEMORY[0x277D85DE8];
}

- (id)fetchLogEventFromMessage:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  mach_absolute_time();
  v5 = UpTicksToMilliseconds();
  v6 = [v4 transport];
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

  if (v8)
  {
    v9 = [v8 name];
    if (v9)
    {
      v10 = v9;
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
  v12 = [v4 messagePayload];
  v13 = [v11 initWithPayload:v12];

  if (v13)
  {
    v14 = [HMDFetchAccessorySettingsLogEvent alloc];
    v15 = [v13 keyPaths];
    v16 = [(HMDFetchAccessorySettingsLogEvent *)v14 initWithKeyPaths:v15 startTime:v5 requestingClientName:v10 error:0];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
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

- (void)sendFetchAccessorySettingsRequestWithAccessoryUUID:(id)a3 keyPaths:(id)a4 completionHandler:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v30 = v14;
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Sending fetch request with accessoryUUID: %@ keypaths: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [objc_alloc(MEMORY[0x277CD17A0]) initWithAccessoryUUID:v8 keyPaths:v9];
  v16 = objc_alloc(MEMORY[0x277D0F820]);
  v17 = [(HMDAccessorySettingsMessenger *)v12 messageTargetUUID];
  v18 = [v16 initWithTarget:v17];

  v19 = objc_alloc(MEMORY[0x277D0F848]);
  v20 = *MEMORY[0x277CCEDB8];
  v21 = [v15 payloadCopy];
  v22 = [v19 initWithName:v20 destination:v18 payload:v21];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __111__HMDAccessorySettingsMessenger_sendFetchAccessorySettingsRequestWithAccessoryUUID_keyPaths_completionHandler___block_invoke;
  v26[3] = &unk_2786862C0;
  v27 = v9;
  v28 = v10;
  v26[4] = v12;
  v23 = v9;
  v24 = v10;
  [v22 setResponseHandler:v26];
  [(HMDAccessorySettingsMessenger *)v12 routeAccessorySettingsFetchRequestMessage:v22];

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

- (void)registerForMessagesWithHome:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:0 remoteAccessRequired:0];
  v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:4 remoteAccessRequired:0];

  v9 = [(HMDAccessorySettingsMessenger *)self messageDispatcher];
  v10 = *MEMORY[0x277CCEDB8];
  v17[0] = v5;
  v17[1] = v6;
  v17[2] = v7;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  [v9 registerForMessage:v10 receiver:self policies:v11 selector:sel_routeAccessorySettingsFetchRequestMessage_];

  v12 = [(HMDAccessorySettingsMessenger *)self messageDispatcher];
  v13 = *MEMORY[0x277CCEDC8];
  v16[0] = v5;
  v16[1] = v6;
  v16[2] = v8;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  [v12 registerForMessage:v13 receiver:self policies:v14 selector:sel_routeAccessorySettingsUpdateRequestMessage_];

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDAccessorySettingsMessenger)initWithMessageTargetUUID:(id)a3 messageDispatcher:(id)a4 messageRouter:(id)a5 messageHandler:(id)a6 logEventSubmitter:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  obj = a7;
  v17 = a7;
  if (!v13)
  {
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v14)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v15)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v16)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  v18 = v17;
  if (!v17)
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
    objc_storeStrong(&v19->_messageDispatcher, a4);
    objc_storeStrong(&v20->_messageTargetUUID, a3);
    objc_storeStrong(&v20->_messageRouter, a5);
    objc_storeStrong(&v20->_messageHandler, a6);
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