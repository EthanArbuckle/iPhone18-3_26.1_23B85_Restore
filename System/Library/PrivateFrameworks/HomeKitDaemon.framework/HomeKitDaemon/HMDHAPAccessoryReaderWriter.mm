@interface HMDHAPAccessoryReaderWriter
+ (id)logCategory;
- (BOOL)_isNotResidentDevice;
- (BOOL)_isPrimaryResidentDevice;
- (BOOL)_isSecondaryResidentDevice;
- (HMDHAPAccessoryReaderWriter)initWithHome:(id)home;
- (HMDHAPAccessoryReaderWriter)initWithHome:(id)home dataSource:(id)source;
- (HMDHome)home;
- (id)_completionHandlerWithContext:(id)context;
- (id)_defaultTaskForCurrentDeviceWithContext:(id)context requests:(id)requests;
- (id)logIdentifier;
- (void)handleRemotelyUpdatedCharacteristicsMessage:(id)message;
- (void)submitReadRequests:(id)requests sourceType:(unint64_t)type requestMessage:(id)message;
- (void)submitWriteRequests:(id)requests sourceType:(unint64_t)type biomeSource:(unint64_t)source requestMessage:(id)message;
- (void)updateRequestExpiryForMessage:(id)message;
@end

@implementation HMDHAPAccessoryReaderWriter

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  home = [(HMDHAPAccessoryReaderWriter *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)_completionHandlerWithContext:(id)context
{
  contextCopy = context;
  home = [(HMDHAPAccessoryReaderWriter *)self home];
  workQueue = [home workQueue];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__HMDHAPAccessoryReaderWriter__completionHandlerWithContext___block_invoke;
  aBlock[3] = &unk_278689668;
  aBlock[4] = self;
  v12 = contextCopy;
  v13 = workQueue;
  v7 = workQueue;
  v8 = contextCopy;
  v9 = _Block_copy(aBlock);

  return v9;
}

void __61__HMDHAPAccessoryReaderWriter__completionHandlerWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 tracker];
  v6 = [v5 pendingTasks];
  v7 = [*(a1 + 40) identifier];
  v8 = [v6 objectForKey:v7];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__HMDHAPAccessoryReaderWriter__completionHandlerWithContext___block_invoke_2;
  v13[3] = &unk_278689640;
  v9 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v14 = v9;
  v15 = v10;
  v16 = v8;
  v17 = v11;
  v12 = v8;
  [v12 finishTaskWithCharacteristicResponses:v4 completion:v13];
}

void __61__HMDHAPAccessoryReaderWriter__completionHandlerWithContext___block_invoke_2(uint64_t a1, char a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(*(a1 + 32));
  if (a2)
  {
    v9 = [*(a1 + 40) tracker];
    v10 = [*(a1 + 56) identifier];
    [v9 removePendingTaskWithIdentifier:v10];

    v11 = [*(a1 + 56) activity];
    [v11 end];

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 48);
      [v16 executionTimeInterval];
      v18 = v17;
      v19 = MEMORY[0x277CCABB0];
      v20 = [*(a1 + 40) tracker];
      v21 = [v20 pendingTasks];
      v22 = [v19 numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
      v29 = 138544386;
      v30 = v15;
      v31 = 2114;
      v32 = v16;
      v33 = 2114;
      v34 = v8;
      v35 = 2048;
      v36 = v18;
      v37 = 2114;
      v38 = v22;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Done sending all responses with error: %{public}@. Execution Time: %.3fs. Remaining Tasks: %{public}@", &v29, 0x34u);

LABEL_6:
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v23 = *(a1 + 48);
      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
      [*(a1 + 48) executionTimeInterval];
      v26 = v25;
      v27 = [*(a1 + 48) debugDescription];
      v29 = 138544642;
      v30 = v15;
      v31 = 2112;
      v32 = v23;
      v33 = 2112;
      v34 = v24;
      v35 = 2112;
      v36 = v8;
      v37 = 2048;
      v38 = v26;
      v39 = 2112;
      v40 = v27;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Done sending multi-part response(s)[%@] with error: %@. Execution Time: %.3fs. %@", &v29, 0x3Eu);

      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v12);
  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isPrimaryResidentDevice
{
  home = [(HMDHAPAccessoryReaderWriter *)self home];
  isCurrentDevicePrimaryResident = [home isCurrentDevicePrimaryResident];

  return isCurrentDevicePrimaryResident;
}

- (BOOL)_isSecondaryResidentDevice
{
  home = [(HMDHAPAccessoryReaderWriter *)self home];
  if ([home isCurrentDeviceAvailableResident])
  {
    v3 = [home isCurrentDevicePrimaryResident] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)_isNotResidentDevice
{
  home = [(HMDHAPAccessoryReaderWriter *)self home];
  isCurrentDeviceAvailableResident = [home isCurrentDeviceAvailableResident];

  return isCurrentDeviceAvailableResident ^ 1;
}

- (void)submitWriteRequests:(id)requests sourceType:(unint64_t)type biomeSource:(unint64_t)source requestMessage:(id)message
{
  v50 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  messageCopy = message;
  v13 = MEMORY[0x277CCABB0];
  tracker = [(HMDHAPAccessoryReaderWriter *)self tracker];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(tracker, "nextTaskIdentifier")}];

  [(HMDHAPAccessoryReaderWriter *)self updateRequestExpiryForMessage:messageCopy];
  v16 = [HMDHAPAccessoryTaskContext alloc];
  home = [(HMDHAPAccessoryReaderWriter *)self home];
  v18 = MEMORY[0x277CCACA8];
  v19 = MEMORY[0x22AAD2510](self, a2);
  2587 = [v18 stringWithFormat:@"%@, %s:%ld", v19, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/HMDHAPAccessoryReaderWriter.m", 2587];
  v21 = [(HMDHAPAccessoryTaskContext *)v16 initWithIdentifier:v15 operationType:1 home:home sourceType:type biomeSource:source requestMessage:messageCopy name:2587];

  v22 = [(HMDHAPAccessoryReaderWriter *)self _defaultTaskForCurrentDeviceWithContext:v21 requests:requestsCopy];
  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    [messageCopy shortDescription];
    v38 = v15;
    v27 = v39 = requestsCopy;
    v28 = MEMORY[0x277CCABB0];
    [(HMDHAPAccessoryReaderWriter *)selfCopy tracker];
    v29 = v37 = v23;
    [v29 pendingTasks];
    v30 = v36 = v21;
    v31 = [v28 numberWithUnsignedInteger:{objc_msgSend(v30, "count")}];
    v32 = MEMORY[0x277CCABB0];
    [messageCopy timeout];
    v33 = [v32 numberWithDouble:?];
    *buf = 138544386;
    v41 = v26;
    v42 = 2114;
    v43 = v22;
    v44 = 2114;
    v45 = v27;
    v46 = 2114;
    v47 = v31;
    v48 = 2114;
    v49 = v33;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Executing with request: %{public}@. Current Tasks: %{public}@. Request Timeout %{public}@", buf, 0x34u);

    requestsCopy = v39;
    v21 = v36;

    v23 = v37;
    v15 = v38;
  }

  objc_autoreleasePoolPop(v23);
  tracker2 = [(HMDHAPAccessoryReaderWriter *)selfCopy tracker];
  [tracker2 executeTask:v22];

  v35 = *MEMORY[0x277D85DE8];
}

- (id)_defaultTaskForCurrentDeviceWithContext:(id)context requests:(id)requests
{
  contextCopy = context;
  requestsCopy = requests;
  operationType = [contextCopy operationType];
  requestMessage = [contextCopy requestMessage];
  v10 = [(HMDHAPAccessoryReaderWriter *)self _cannotForwardMessage:requestMessage];

  v11 = [(HMDHAPAccessoryReaderWriter *)self _completionHandlerWithContext:contextCopy];
  if (v10)
  {
    goto LABEL_12;
  }

  if (-[HMDHAPAccessoryReaderWriter _isNotResidentDevice](self, "_isNotResidentDevice") || -[HMDHAPAccessoryReaderWriter _isSecondaryResidentDevice](self, "_isSecondaryResidentDevice") && ([contextCopy requestMessage], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isRemote"), v16, (v17 & 1) == 0))
  {
    v12 = off_278666180;
    v13 = off_278666178;
  }

  else
  {
    if (!-[HMDHAPAccessoryReaderWriter _isPrimaryResidentDevice](self, "_isPrimaryResidentDevice") || (-[HMDHAPAccessoryReaderWriter dataSource](self, "dataSource"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isWholeHomeBluetoothSupported], v18, (v19 & 1) != 0))
    {
LABEL_12:
      v20 = off_278666158;
      if (operationType)
      {
        v20 = off_278666160;
      }

      v21 = *v20;
      v15 = objc_opt_class();
      goto LABEL_15;
    }

    v12 = off_278666170;
    v13 = off_278666168;
  }

  if (!operationType)
  {
    v12 = v13;
  }

  v14 = *v12;
  v15 = objc_opt_class();
  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_15:
  v22 = [[v15 alloc] initWithContext:contextCopy requests:requestsCopy completion:v11];

  return v22;
}

- (void)submitReadRequests:(id)requests sourceType:(unint64_t)type requestMessage:(id)message
{
  v48 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  messageCopy = message;
  v11 = MEMORY[0x277CCABB0];
  tracker = [(HMDHAPAccessoryReaderWriter *)self tracker];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(tracker, "nextTaskIdentifier")}];

  [(HMDHAPAccessoryReaderWriter *)self updateRequestExpiryForMessage:messageCopy];
  v14 = [HMDHAPAccessoryTaskContext alloc];
  home = [(HMDHAPAccessoryReaderWriter *)self home];
  v16 = MEMORY[0x277CCACA8];
  v17 = MEMORY[0x22AAD2510](self, a2);
  2530 = [v16 stringWithFormat:@"%@, %s:%ld", v17, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables/Sources/homed/HMDHAPAccessoryReaderWriter.m", 2530];
  v19 = [(HMDHAPAccessoryTaskContext *)v14 initWithIdentifier:v13 operationType:0 home:home sourceType:type biomeSource:0 requestMessage:messageCopy name:2530];

  v20 = [(HMDHAPAccessoryReaderWriter *)self _defaultTaskForCurrentDeviceWithContext:v19 requests:requestsCopy];
  v21 = objc_autoreleasePoolPush();
  selfCopy = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    [messageCopy shortDescription];
    v36 = v13;
    v25 = v37 = requestsCopy;
    v26 = MEMORY[0x277CCABB0];
    [(HMDHAPAccessoryReaderWriter *)selfCopy tracker];
    v27 = v35 = v21;
    [v27 pendingTasks];
    v28 = v34 = v19;
    v29 = [v26 numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
    v30 = MEMORY[0x277CCABB0];
    [messageCopy timeout];
    v31 = [v30 numberWithDouble:?];
    *buf = 138544386;
    v39 = v24;
    v40 = 2114;
    v41 = v20;
    v42 = 2114;
    v43 = v25;
    v44 = 2114;
    v45 = v29;
    v46 = 2114;
    v47 = v31;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Executing with request: %{public}@. Current Tasks: %{public}@. Request Timeout %{public}@", buf, 0x34u);

    requestsCopy = v37;
    v19 = v34;

    v21 = v35;
    v13 = v36;
  }

  objc_autoreleasePoolPop(v21);
  tracker2 = [(HMDHAPAccessoryReaderWriter *)selfCopy tracker];
  [tracker2 executeTask:v20];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)updateRequestExpiryForMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    messagePayload = [messageCopy messagePayload];
    if (messagePayload)
    {
      v7 = messagePayload;
      messagePayload2 = [v5 messagePayload];
      v9 = [messagePayload2 objectForKeyedSubscript:@"kRemoteMessageRequestExpiryKey"];

      if (v9)
      {
        v10 = MEMORY[0x277CBEB38];
        messagePayload3 = [v5 messagePayload];
        v12 = [v10 dictionaryWithDictionary:messagePayload3];

        v13 = [v12 hmf_numberForKey:@"kRemoteMessageRequestExpiryKey"];
        [v13 doubleValue];
        v15 = v14;

        v16 = objc_autoreleasePoolPush();
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v21 = 138543618;
          v22 = v19;
          v23 = 2048;
          v24 = v15;
          _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Not updating request expiry of %0.4f at reader writer", &v21, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleRemotelyUpdatedCharacteristicsMessage:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [messageCopy stringForKey:@"kRequestIdentifierKey"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  tracker = [(HMDHAPAccessoryReaderWriter *)self tracker];
  pendingRemoteTasks = [tracker pendingRemoteTasks];

  v8 = [pendingRemoteTasks countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(pendingRemoteTasks);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([v12 supportsMultiPartResponse])
        {
          if (([v12 allResponsesReceived] & 1) == 0)
          {
            requestIdentifier = [v12 requestIdentifier];
            uUIDString = [requestIdentifier UUIDString];
            v15 = [uUIDString isEqualToString:v5];

            if (v15)
            {
              requests = [v12 requests];
              messagePayload = [messageCopy messagePayload];
              v18 = [HMDCharacteristicResponse responsesWithRequests:requests characteristicUpdateDictionary:messagePayload];

              [v12 _receivedRemotelyChangedCharacteristicResponses:v18 message:messageCopy];
            }
          }
        }
      }

      v9 = [pendingRemoteTasks countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (HMDHAPAccessoryReaderWriter)initWithHome:(id)home dataSource:(id)source
{
  homeCopy = home;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = HMDHAPAccessoryReaderWriter;
  v8 = [(HMDHAPAccessoryReaderWriter *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(HMDHAPAccessoryTaskTracker);
    tracker = v8->_tracker;
    v8->_tracker = v9;

    objc_storeWeak(&v8->_home, homeCopy);
    objc_storeStrong(&v8->_dataSource, source);
  }

  return v8;
}

- (HMDHAPAccessoryReaderWriter)initWithHome:(id)home
{
  homeCopy = home;
  v5 = objc_alloc_init(HMDHAPAccessoryReaderWriterDataSource);
  v6 = [(HMDHAPAccessoryReaderWriter *)self initWithHome:homeCopy dataSource:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t50_277178 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t50_277178, &__block_literal_global_489);
  }

  v3 = logCategory__hmf_once_v51_277179;

  return v3;
}

void __42__HMDHAPAccessoryReaderWriter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v51_277179;
  logCategory__hmf_once_v51_277179 = v1;
}

@end