@interface HMDCameraSettingProactiveReader
+ (id)_streamingStatusForResponse:(id)a3;
+ (id)logCategory;
- (BOOL)hasPendingNegotiateMessageForSessionWithIdentifier:(id)a3;
- (HMDCameraSettingProactiveReader)initWithWorkQueue:(id)a3 sessionID:(id)a4 accessory:(id)a5 message:(id)a6 streamControlMessageHandlers:(id)a7 streamPreferences:(id)a8 logIdentifier:(id)a9;
- (HMDCameraSettingProactiveReader)initWithWorkQueue:(id)a3 sessionID:(id)a4 accessory:(id)a5 message:(id)a6 streamControlMessageHandlers:(id)a7 streamPreferences:(id)a8 logIdentifier:(id)a9 logEventSubmitter:(id)a10;
- (HMDCameraSettingProactiveReaderDelegate)delegate;
- (HMDHAPAccessory)accessory;
- (id)_availableStreamControlMessageHandlersForReadResponses:(id)a3;
- (id)_inUseStreamControlMessageHandlersForReadResponses:(id)a3;
- (void)_callDidCompleteReadDelegateCallback;
- (void)_handleStreamStatusMultireadResponse:(id)a3;
- (void)handleMessage:(id)a3;
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
  v3 = [(HMDCameraSettingProactiveReader *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDCameraSettingProactiveReader *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 cameraSettingProactiveReaderDidCompleteRead:self];
  }
}

- (id)_inUseStreamControlMessageHandlersForReadResponses:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSettingProactiveReader *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraSettingProactiveReader *)self streamControlMessageHandlers];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__HMDCameraSettingProactiveReader__inUseStreamControlMessageHandlersForReadResponses___block_invoke;
  v15[3] = &unk_27867A478;
  v7 = v4;
  v16 = v7;
  v17 = self;
  v8 = [v6 na_filter:v15];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Found inUseStreamControlMessageHandlers: %@", buf, 0x16u);
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
  v11[3] = &unk_27867A450;
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

- (id)_availableStreamControlMessageHandlersForReadResponses:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSettingProactiveReader *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraSettingProactiveReader *)self streamControlMessageHandlers];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HMDCameraSettingProactiveReader__availableStreamControlMessageHandlersForReadResponses___block_invoke;
  v15[3] = &unk_27867A478;
  v7 = v4;
  v16 = v7;
  v17 = self;
  v8 = [v6 na_filter:v15];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Found availableStreamControlMessageHandlers: %@", buf, 0x16u);
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
  v11[3] = &unk_27867A450;
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

- (void)_handleStreamStatusMultireadResponse:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSettingProactiveReader *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraSettingProactiveReader *)self pendingNegotiateMessage];
  if (v6)
  {
    v7 = [(HMDCameraSettingProactiveReader *)self _availableStreamControlMessageHandlersForReadResponses:v4];
    v8 = [(HMDCameraSettingProactiveReader *)self _inUseStreamControlMessageHandlersForReadResponses:v4];
    v9 = -[HMDCameraSettingProactiveReaderLogEvent initWithAvailableStreamHandlerCount:inUseStreamHandlerCount:]([HMDCameraSettingProactiveReaderLogEvent alloc], "initWithAvailableStreamHandlerCount:inUseStreamHandlerCount:", [v7 count], objc_msgSend(v8, "count"));
    if (![v6 isEntitledForSPIAccess])
    {
      goto LABEL_10;
    }

    v10 = [(HMDCameraSettingProactiveReader *)self streamPreferences];
    v11 = [v10 minimumRequiredAvailableOrInUseStreams];

    if (v11 < 1)
    {
      goto LABEL_10;
    }

    v12 = [v7 count];
    v13 = [v8 count] + v12;
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v17 = v43 = v13;
      [(HMDCameraSettingProactiveReader *)v15 streamPreferences];
      v18 = v42 = v14;
      *buf = 138543874;
      v45 = v17;
      v46 = 2048;
      v47 = v43;
      v48 = 2048;
      v49 = [v18 minimumRequiredAvailableOrInUseStreams];
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Comparing availableOrInUseStreamsCount: %ld, against minimumRequiredAvailableOrInUseStreams: %ld", buf, 0x20u);

      v14 = v42;
      v13 = v43;
    }

    objc_autoreleasePoolPop(v14);
    v19 = [(HMDCameraSettingProactiveReader *)v15 streamPreferences];
    v20 = [v19 minimumRequiredAvailableOrInUseStreams];

    if (v13 < v20)
    {
      v21 = objc_autoreleasePoolPush();
      self = v15;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v45 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@availableOrInUseStreamsCount is less than minimumRequiredAvailableOrInUseStreams, so not starting stream", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:14];
      [v6 respondWithError:v24];
      v25 = [(HMDCameraSettingProactiveReader *)self logEventSubmitter];
      v26 = v25;
      v27 = v9;
      v28 = v24;
    }

    else
    {
LABEL_10:
      v29 = [v7 anyObject];
      if (!v29)
      {
        v35 = objc_autoreleasePoolPush();
        v36 = self;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v45 = v38;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@No camera streaming service is available", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v35);
        v39 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1019];
        [v6 respondWithError:v39];
        v40 = [(HMDCameraSettingProactiveReader *)v36 logEventSubmitter];
        [v40 submitLogEvent:v9 error:v39];

        [(HMDCameraSettingProactiveReader *)v36 _callDidCompleteReadDelegateCallback];
        v24 = 0;
        goto LABEL_19;
      }

      v24 = v29;
      [v29 handleMessage:v6];
      v25 = [(HMDCameraSettingProactiveReader *)self logEventSubmitter];
      v26 = v25;
      v27 = v9;
      v28 = 0;
    }

    [v25 submitLogEvent:v27 error:v28];

    [(HMDCameraSettingProactiveReader *)self _callDidCompleteReadDelegateCallback];
LABEL_19:

    goto LABEL_20;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    v34 = [(HMDCameraSettingProactiveReader *)v31 sessionID];
    *buf = 138543618;
    v45 = v33;
    v46 = 2112;
    v47 = v34;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Pending negotiate message for session with identifier: %@ has already been handled", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v30);
LABEL_20:

  v41 = *MEMORY[0x277D85DE8];
}

- (void)readSetting
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = [(HMDCameraSettingProactiveReader *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v34 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting proactive read of stream status", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v7 = MEMORY[0x277CBEB18];
  v8 = [(HMDCameraSettingProactiveReader *)v34 streamControlMessageHandlers];
  v35 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v9 = [(HMDCameraSettingProactiveReader *)v34 streamControlMessageHandlers];
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v37 + 1) + 8 * i);
        v17 = [v16 streamManagementService];
        v18 = [v17 findCharacteristicWithType:v14];

        if (v18)
        {
          v19 = [HMDCharacteristicRequest requestWithCharacteristic:v18];
          [v35 addObject:v19];
        }

        else
        {
          v20 = v14;
          v21 = objc_autoreleasePoolPush();
          v22 = v34;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v25 = v24 = v9;
            v26 = [v16 streamManagementService];
            *buf = v32;
            v42 = v25;
            v43 = 2112;
            v44 = v26;
            _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Cannot find the stream status characteristic in the given service %@", buf, 0x16u);

            v9 = v24;
            v13 = v33;
          }

          objc_autoreleasePoolPop(v21);
          v14 = v20;
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v12);
  }

  v27 = [(HMDCameraSettingProactiveReader *)v34 accessory];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  v30 = [(HMDCameraSettingProactiveReader *)v34 workQueue];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __46__HMDCameraSettingProactiveReader_readSetting__block_invoke;
  v36[3] = &unk_278682F48;
  v36[4] = v34;
  [v29 readCharacteristicValues:v35 source:1070 queue:v30 completionHandler:v36];

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
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Received response for proactive read of stream status", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) _handleStreamStatusMultireadResponse:v3];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleMessage:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraSettingProactiveReader *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDCameraSettingProactiveReader *)self pendingNegotiateMessage];

  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v4 shortDescription];
    v28 = 138543618;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Handling message: %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [v4 name];
  if ([v12 isEqualToString:*MEMORY[0x277CCF608]])
  {

LABEL_7:
    v15 = objc_autoreleasePoolPush();
    v16 = v8;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMDCameraSettingProactiveReader *)v16 sessionID];
      v28 = 138543618;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Responding to pending negotiate message for session with identifier: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v20 = [(HMDCameraSettingProactiveReader *)v16 pendingNegotiateMessage];
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [v20 respondWithPayload:0 error:v21];

    [(HMDCameraSettingProactiveReader *)v16 setPendingNegotiateMessage:0];
    [(HMDCameraSettingProactiveReader *)v16 _callDidCompleteReadDelegateCallback];
    [v4 respondWithSuccess];
    goto LABEL_13;
  }

  v13 = [v4 name];
  v14 = [v13 isEqualToString:@"kStopRemoteStreamRequestKey"];

  if (v14)
  {
    goto LABEL_7;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = v8;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v25;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Responding to message with error because it cannot be handled", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  [v4 respondWithError:v26];

LABEL_13:
  v27 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasPendingNegotiateMessageForSessionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDCameraSettingProactiveReader *)self workQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    v6 = [(HMDCameraSettingProactiveReader *)self pendingNegotiateMessage];
    v7 = [v6 stringForKey:@"kCameraSessionID"];

    LOBYTE(v6) = [v7 isEqualToString:v4];
    return v6;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(HMDCameraSettingProactiveReader *)v9 initWithWorkQueue:v10 sessionID:v11 accessory:v12 message:v13 streamControlMessageHandlers:v14 streamPreferences:v15 logIdentifier:v16, v17];
  }
}

- (HMDCameraSettingProactiveReader)initWithWorkQueue:(id)a3 sessionID:(id)a4 accessory:(id)a5 message:(id)a6 streamControlMessageHandlers:(id)a7 streamPreferences:(id)a8 logIdentifier:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = +[HMDMetricsManager sharedLogEventSubmitter];
  v24 = [(HMDCameraSettingProactiveReader *)self initWithWorkQueue:v22 sessionID:v21 accessory:v20 message:v19 streamControlMessageHandlers:v18 streamPreferences:v17 logIdentifier:v16 logEventSubmitter:v23];

  return v24;
}

- (HMDCameraSettingProactiveReader)initWithWorkQueue:(id)a3 sessionID:(id)a4 accessory:(id)a5 message:(id)a6 streamControlMessageHandlers:(id)a7 streamPreferences:(id)a8 logIdentifier:(id)a9 logEventSubmitter:(id)a10
{
  v16 = a3;
  obj = a4;
  v17 = a4;
  v18 = a5;
  v34 = a6;
  v19 = a6;
  v35 = a7;
  v20 = a7;
  v36 = a8;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  if (!v16)
  {
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v17)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v18)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v19)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v20)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!v21)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  if (!v22)
  {
LABEL_17:
    v31 = _HMFPreconditionFailure();
    return +[(HMDCameraSettingProactiveReader *)v31];
  }

  v24 = v23;
  v25 = v18;
  v38.receiver = self;
  v38.super_class = HMDCameraSettingProactiveReader;
  v26 = [(HMDCameraSettingProactiveReader *)&v38 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_workQueue, a3);
    objc_storeStrong(&v27->_sessionID, obj);
    objc_storeWeak(&v27->_accessory, v25);
    objc_storeStrong(&v27->_pendingNegotiateMessage, v34);
    objc_storeStrong(&v27->_streamControlMessageHandlers, v35);
    objc_storeStrong(&v27->_streamPreferences, v36);
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v22, v17];
    logIdentifier = v27->_logIdentifier;
    v27->_logIdentifier = v28;

    objc_storeStrong(&v27->_logEventSubmitter, a10);
  }

  return v27;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_135625 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_135625, &__block_literal_global_135626);
  }

  v3 = logCategory__hmf_once_v17_135627;

  return v3;
}

void __46__HMDCameraSettingProactiveReader_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17_135627;
  logCategory__hmf_once_v17_135627 = v1;
}

+ (id)_streamingStatusForResponse:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
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
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = HMDStreamingStatusTypeAsString([(HMDStreamingStatus *)v8 streamingStatus]);
      v14 = [v4 request];
      v15 = [v14 characteristic];
      [v15 service];
      v26 = a1;
      v17 = v16 = v9;
      *buf = 138543874;
      v28 = v12;
      v29 = 2114;
      v30 = v13;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Found streaming status: %{public}@ for streaming service: %@", buf, 0x20u);

      v9 = v16;
      a1 = v26;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v18 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v4 value];
      v21 = [v4 request];
      v22 = [v21 characteristic];
      v23 = [v22 service];
      *buf = 138543874;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Received invalid value type: %@ for streaming service: %@ HAPCharacteristicUUID_StreamingStatus characteristic", buf, 0x20u);
    }

    v8 = 0;
  }

  objc_autoreleasePoolPop(v9);
  v24 = *MEMORY[0x277D85DE8];

  return v8;
}

@end