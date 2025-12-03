@interface HMDCameraSettingProactiveReader
+ (id)_streamingStatusForResponse:(id)response;
+ (id)logCategory;
- (BOOL)hasPendingNegotiateMessageForSessionWithIdentifier:(id)identifier;
- (HMDCameraSettingProactiveReader)initWithWorkQueue:(id)queue sessionID:(id)d accessory:(id)accessory message:(id)message streamControlMessageHandlers:(id)handlers streamPreferences:(id)preferences logIdentifier:(id)identifier;
- (HMDCameraSettingProactiveReader)initWithWorkQueue:(id)queue sessionID:(id)d accessory:(id)accessory message:(id)message streamControlMessageHandlers:(id)handlers streamPreferences:(id)preferences logIdentifier:(id)identifier logEventSubmitter:(id)self0;
- (HMDCameraSettingProactiveReaderDelegate)delegate;
- (HMDHAPAccessory)accessory;
- (id)_availableStreamControlMessageHandlersForReadResponses:(id)responses;
- (id)_inUseStreamControlMessageHandlersForReadResponses:(id)responses;
- (void)_callDidCompleteReadDelegateCallback;
- (void)_handleStreamStatusMultireadResponse:(id)response;
- (void)handleMessage:(id)message;
- (void)readSetting;
@end

@implementation HMDCameraSettingProactiveReader

- (HMDHAPAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDCameraSettingProactiveReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_callDidCompleteReadDelegateCallback
{
  workQueue = [(HMDCameraSettingProactiveReader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  delegate = [(HMDCameraSettingProactiveReader *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate cameraSettingProactiveReaderDidCompleteRead:self];
  }
}

- (id)_inUseStreamControlMessageHandlersForReadResponses:(id)responses
{
  v22 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  workQueue = [(HMDCameraSettingProactiveReader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamControlMessageHandlers = [(HMDCameraSettingProactiveReader *)self streamControlMessageHandlers];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__HMDCameraSettingProactiveReader__inUseStreamControlMessageHandlersForReadResponses___block_invoke;
  v15[3] = &unk_279729BB0;
  v7 = responsesCopy;
  v16 = v7;
  selfCopy = self;
  v8 = [streamControlMessageHandlers na_filter:v15];

  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Found inUseStreamControlMessageHandlers: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

BOOL __86__HMDCameraSettingProactiveReader__inUseStreamControlMessageHandlersForReadResponses___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__HMDCameraSettingProactiveReader__inUseStreamControlMessageHandlersForReadResponses___block_invoke_2;
  v11[3] = &unk_279729B88;
  v5 = v3;
  v12 = v5;
  v6 = [v4 na_firstObjectPassingTest:v11];
  v7 = *(a1 + 40);
  v8 = [objc_opt_class() _streamingStatusForResponse:v6];
  if ([v5 hasStreamSession])
  {
    v9 = 1;
  }

  else if (v8)
  {
    v9 = [v8 streamingStatus] == 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL __86__HMDCameraSettingProactiveReader__inUseStreamControlMessageHandlersForReadResponses___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 request];
  v4 = [v3 characteristic];
  v5 = [v4 service];
  v6 = [*(a1 + 32) streamManagementService];
  v7 = v5 == v6;

  return v7;
}

- (id)_availableStreamControlMessageHandlersForReadResponses:(id)responses
{
  v22 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  workQueue = [(HMDCameraSettingProactiveReader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  streamControlMessageHandlers = [(HMDCameraSettingProactiveReader *)self streamControlMessageHandlers];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HMDCameraSettingProactiveReader__availableStreamControlMessageHandlersForReadResponses___block_invoke;
  v15[3] = &unk_279729BB0;
  v7 = responsesCopy;
  v16 = v7;
  selfCopy = self;
  v8 = [streamControlMessageHandlers na_filter:v15];

  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Found availableStreamControlMessageHandlers: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

BOOL __90__HMDCameraSettingProactiveReader__availableStreamControlMessageHandlersForReadResponses___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__HMDCameraSettingProactiveReader__availableStreamControlMessageHandlersForReadResponses___block_invoke_2;
  v11[3] = &unk_279729B88;
  v5 = v3;
  v12 = v5;
  v6 = [v4 na_firstObjectPassingTest:v11];
  v7 = *(a1 + 40);
  v8 = [objc_opt_class() _streamingStatusForResponse:v6];
  if ([v5 hasStreamSession])
  {
    v9 = 0;
  }

  else if (v8)
  {
    v9 = [v8 streamingStatus] == 0;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

BOOL __90__HMDCameraSettingProactiveReader__availableStreamControlMessageHandlersForReadResponses___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 request];
  v4 = [v3 characteristic];
  v5 = [v4 service];
  v6 = [*(a1 + 32) streamManagementService];
  v7 = v5 == v6;

  return v7;
}

- (void)_handleStreamStatusMultireadResponse:(id)response
{
  v50 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  workQueue = [(HMDCameraSettingProactiveReader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  pendingNegotiateMessage = [(HMDCameraSettingProactiveReader *)self pendingNegotiateMessage];
  if (pendingNegotiateMessage)
  {
    v7 = [(HMDCameraSettingProactiveReader *)self _availableStreamControlMessageHandlersForReadResponses:responseCopy];
    v8 = [(HMDCameraSettingProactiveReader *)self _inUseStreamControlMessageHandlersForReadResponses:responseCopy];
    v9 = -[HMDCameraSettingProactiveReaderLogEvent initWithAvailableStreamHandlerCount:inUseStreamHandlerCount:]([HMDCameraSettingProactiveReaderLogEvent alloc], "initWithAvailableStreamHandlerCount:inUseStreamHandlerCount:", [v7 count], objc_msgSend(v8, "count"));
    if (![pendingNegotiateMessage isEntitledForSPIAccess])
    {
      goto LABEL_10;
    }

    streamPreferences = [(HMDCameraSettingProactiveReader *)self streamPreferences];
    minimumRequiredAvailableOrInUseStreams = [streamPreferences minimumRequiredAvailableOrInUseStreams];

    if (minimumRequiredAvailableOrInUseStreams < 1)
    {
      goto LABEL_10;
    }

    v12 = [v7 count];
    v13 = [v8 count] + v12;
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v17 = v43 = v13;
      [(HMDCameraSettingProactiveReader *)selfCopy streamPreferences];
      v18 = v42 = v14;
      *buf = 138543874;
      v45 = v17;
      v46 = 2048;
      v47 = v43;
      v48 = 2048;
      minimumRequiredAvailableOrInUseStreams2 = [v18 minimumRequiredAvailableOrInUseStreams];
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Comparing availableOrInUseStreamsCount: %ld, against minimumRequiredAvailableOrInUseStreams: %ld", buf, 0x20u);

      v14 = v42;
      v13 = v43;
    }

    objc_autoreleasePoolPop(v14);
    streamPreferences2 = [(HMDCameraSettingProactiveReader *)selfCopy streamPreferences];
    minimumRequiredAvailableOrInUseStreams3 = [streamPreferences2 minimumRequiredAvailableOrInUseStreams];

    if (v13 < minimumRequiredAvailableOrInUseStreams3)
    {
      v21 = objc_autoreleasePoolPush();
      self = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v45 = v23;
        _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@availableOrInUseStreamsCount is less than minimumRequiredAvailableOrInUseStreams, so not starting stream", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:14];
      [pendingNegotiateMessage respondWithError:v24];
      logEventSubmitter = [(HMDCameraSettingProactiveReader *)self logEventSubmitter];
      v26 = logEventSubmitter;
      v27 = v9;
      v28 = v24;
    }

    else
    {
LABEL_10:
      anyObject = [v7 anyObject];
      if (!anyObject)
      {
        v35 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v45 = v38;
          _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@No camera streaming service is available", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v35);
        v39 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1019];
        [pendingNegotiateMessage respondWithError:v39];
        logEventSubmitter2 = [(HMDCameraSettingProactiveReader *)selfCopy2 logEventSubmitter];
        [logEventSubmitter2 submitLogEvent:v9 error:v39];

        [(HMDCameraSettingProactiveReader *)selfCopy2 _callDidCompleteReadDelegateCallback];
        v24 = 0;
        goto LABEL_19;
      }

      v24 = anyObject;
      [anyObject handleMessage:pendingNegotiateMessage];
      logEventSubmitter = [(HMDCameraSettingProactiveReader *)self logEventSubmitter];
      v26 = logEventSubmitter;
      v27 = v9;
      v28 = 0;
    }

    [logEventSubmitter submitLogEvent:v27 error:v28];

    [(HMDCameraSettingProactiveReader *)self _callDidCompleteReadDelegateCallback];
LABEL_19:

    goto LABEL_20;
  }

  v30 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    sessionID = [(HMDCameraSettingProactiveReader *)selfCopy3 sessionID];
    *buf = 138543618;
    v45 = v33;
    v46 = 2112;
    v47 = sessionID;
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Pending negotiate message for session with identifier: %@ has already been handled", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v30);
LABEL_20:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)readSetting
{
  v46 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDCameraSettingProactiveReader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting proactive read of stream status", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v7 = MEMORY[0x277CBEB18];
  streamControlMessageHandlers = [(HMDCameraSettingProactiveReader *)selfCopy streamControlMessageHandlers];
  v35 = [v7 arrayWithCapacity:{objc_msgSend(streamControlMessageHandlers, "count")}];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  streamControlMessageHandlers2 = [(HMDCameraSettingProactiveReader *)selfCopy streamControlMessageHandlers];
  v10 = [streamControlMessageHandlers2 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v38;
    v14 = *MEMORY[0x277CFE6F0];
    *&v11 = 138543618;
    v32 = v11;
    v33 = *v38;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(streamControlMessageHandlers2);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        streamManagementService = [v16 streamManagementService];
        v18 = [streamManagementService findCharacteristicWithType:v14];

        if (v18)
        {
          v19 = [HMDCharacteristicRequest requestWithCharacteristic:v18];
          [v35 addObject:v19];
        }

        else
        {
          v20 = v14;
          v21 = objc_autoreleasePoolPush();
          v22 = selfCopy;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v25 = v24 = streamControlMessageHandlers2;
            streamManagementService2 = [v16 streamManagementService];
            *buf = v32;
            v42 = v25;
            v43 = 2112;
            v44 = streamManagementService2;
            _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot find the stream status characteristic in the given service %@", buf, 0x16u);

            streamControlMessageHandlers2 = v24;
            v13 = v33;
          }

          objc_autoreleasePoolPop(v21);
          v14 = v20;
        }
      }

      v12 = [streamControlMessageHandlers2 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v12);
  }

  accessory = [(HMDCameraSettingProactiveReader *)selfCopy accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = accessory;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  workQueue2 = [(HMDCameraSettingProactiveReader *)selfCopy workQueue];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __46__HMDCameraSettingProactiveReader_readSetting__block_invoke;
  v36[3] = &unk_279730038;
  v36[4] = selfCopy;
  [v29 readCharacteristicValues:v35 source:1070 queue:workQueue2 completionHandler:v36];

  v31 = *MEMORY[0x277D85DE8];
}

void __46__HMDCameraSettingProactiveReader_readSetting__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Received response for proactive read of stream status", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _handleStreamStatusMultireadResponse:v3];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleMessage:(id)message
{
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  workQueue = [(HMDCameraSettingProactiveReader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  pendingNegotiateMessage = [(HMDCameraSettingProactiveReader *)self pendingNegotiateMessage];

  if (!pendingNegotiateMessage)
  {
    _HMFPreconditionFailure();
  }

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    shortDescription = [messageCopy shortDescription];
    v28 = 138543618;
    v29 = v10;
    v30 = 2112;
    v31 = shortDescription;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling message: %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  name = [messageCopy name];
  if ([name isEqualToString:*MEMORY[0x277CCF608]])
  {

LABEL_7:
    v15 = objc_autoreleasePoolPush();
    v16 = selfCopy;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      sessionID = [(HMDCameraSettingProactiveReader *)v16 sessionID];
      v28 = 138543618;
      v29 = v18;
      v30 = 2112;
      v31 = sessionID;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Responding to pending negotiate message for session with identifier: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    pendingNegotiateMessage2 = [(HMDCameraSettingProactiveReader *)v16 pendingNegotiateMessage];
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [pendingNegotiateMessage2 respondWithPayload:0 error:v21];

    [(HMDCameraSettingProactiveReader *)v16 setPendingNegotiateMessage:0];
    [(HMDCameraSettingProactiveReader *)v16 _callDidCompleteReadDelegateCallback];
    [messageCopy respondWithSuccess];
    goto LABEL_13;
  }

  name2 = [messageCopy name];
  v14 = [name2 isEqualToString:@"kStopRemoteStreamRequestKey"];

  if (v14)
  {
    goto LABEL_7;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v25;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Responding to message with error because it cannot be handled", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [messageCopy respondWithError:v26];

LABEL_13:
  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasPendingNegotiateMessageForSessionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(HMDCameraSettingProactiveReader *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (identifierCopy)
  {
    pendingNegotiateMessage = [(HMDCameraSettingProactiveReader *)self pendingNegotiateMessage];
    v7 = [pendingNegotiateMessage stringForKey:@"kCameraSessionID"];

    LOBYTE(pendingNegotiateMessage) = [v7 isEqualToString:identifierCopy];
    return pendingNegotiateMessage;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(HMDCameraSettingProactiveReader *)v9 initWithWorkQueue:v10 sessionID:v11 accessory:v12 message:v13 streamControlMessageHandlers:v14 streamPreferences:v15 logIdentifier:v16, v17];
  }
}

- (HMDCameraSettingProactiveReader)initWithWorkQueue:(id)queue sessionID:(id)d accessory:(id)accessory message:(id)message streamControlMessageHandlers:(id)handlers streamPreferences:(id)preferences logIdentifier:(id)identifier
{
  identifierCopy = identifier;
  preferencesCopy = preferences;
  handlersCopy = handlers;
  messageCopy = message;
  accessoryCopy = accessory;
  dCopy = d;
  queueCopy = queue;
  v23 = +[HMDMetricsManager sharedLogEventSubmitter];
  v24 = [(HMDCameraSettingProactiveReader *)self initWithWorkQueue:queueCopy sessionID:dCopy accessory:accessoryCopy message:messageCopy streamControlMessageHandlers:handlersCopy streamPreferences:preferencesCopy logIdentifier:identifierCopy logEventSubmitter:v23];

  return v24;
}

- (HMDCameraSettingProactiveReader)initWithWorkQueue:(id)queue sessionID:(id)d accessory:(id)accessory message:(id)message streamControlMessageHandlers:(id)handlers streamPreferences:(id)preferences logIdentifier:(id)identifier logEventSubmitter:(id)self0
{
  queueCopy = queue;
  obj = d;
  dCopy = d;
  accessoryCopy = accessory;
  messageCopy = message;
  messageCopy2 = message;
  handlersCopy = handlers;
  handlersCopy2 = handlers;
  preferencesCopy = preferences;
  preferencesCopy2 = preferences;
  identifierCopy = identifier;
  submitterCopy = submitter;
  if (!queueCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!dCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!accessoryCopy)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!messageCopy2)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!handlersCopy2)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!preferencesCopy2)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!identifierCopy)
  {
LABEL_17:
    v31 = _HMFPreconditionFailure();
    return +[(HMDCameraSettingProactiveReader *)v31];
  }

  v24 = submitterCopy;
  v25 = accessoryCopy;
  v38.receiver = self;
  v38.super_class = HMDCameraSettingProactiveReader;
  v26 = [(HMDCameraSettingProactiveReader *)&v38 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_workQueue, queue);
    objc_storeStrong(&v27->_sessionID, obj);
    objc_storeWeak(&v27->_accessory, v25);
    objc_storeStrong(&v27->_pendingNegotiateMessage, messageCopy);
    objc_storeStrong(&v27->_streamControlMessageHandlers, handlersCopy);
    objc_storeStrong(&v27->_streamPreferences, preferencesCopy);
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", identifierCopy, dCopy];
    logIdentifier = v27->_logIdentifier;
    v27->_logIdentifier = dCopy;

    objc_storeStrong(&v27->_logEventSubmitter, submitter);
  }

  return v27;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_89702 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_89702, &__block_literal_global_89703);
  }

  v3 = logCategory__hmf_once_v17_89704;

  return v3;
}

uint64_t __46__HMDCameraSettingProactiveReader_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17_89704;
  logCategory__hmf_once_v17_89704 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)_streamingStatusForResponse:(id)response
{
  v33 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  value = [responseCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = value;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(HAPTLVBase *)[HMDStreamingStatus alloc] initWithTLVData:v7];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMDStreamingStatusTypeAsString([(HMDStreamingStatus *)v8 streamingStatus]);
      request = [responseCopy request];
      characteristic = [request characteristic];
      [characteristic service];
      selfCopy2 = self;
      v17 = v16 = v9;
      *buf = 138543874;
      v28 = v12;
      v29 = 2114;
      v30 = v13;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Found streaming status: %{public}@ for streaming service: %@", buf, 0x20u);

      v9 = v16;
      self = selfCopy2;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      value2 = [responseCopy value];
      request2 = [responseCopy request];
      characteristic2 = [request2 characteristic];
      service = [characteristic2 service];
      *buf = 138543874;
      v28 = v19;
      v29 = 2112;
      v30 = value2;
      v31 = 2112;
      v32 = service;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Received invalid value type: %@ for streaming service: %@ HAPCharacteristicUUID_StreamingStatus characteristic", buf, 0x20u);
    }

    v8 = 0;
  }

  objc_autoreleasePoolPop(v9);
  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

@end