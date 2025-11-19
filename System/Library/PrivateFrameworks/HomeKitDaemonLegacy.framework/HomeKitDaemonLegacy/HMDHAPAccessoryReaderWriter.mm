@interface HMDHAPAccessoryReaderWriter
+ (id)logCategory;
- (BOOL)_isNotResidentDevice;
- (BOOL)_isPrimaryResidentDevice;
- (BOOL)_isSecondaryResidentDevice;
- (HMDHAPAccessoryReaderWriter)initWithHome:(id)a3;
- (HMDHAPAccessoryReaderWriter)initWithHome:(id)a3 dataSource:(id)a4;
- (HMDHome)home;
- (id)_completionHandlerWithContext:(id)a3;
- (id)_defaultTaskForCurrentDeviceWithContext:(id)a3 requests:(id)a4;
- (id)logIdentifier;
- (void)handleRemotelyUpdatedCharacteristicsMessage:(id)a3;
- (void)submitReadRequests:(id)a3 sourceType:(unint64_t)a4 requestMessage:(id)a5;
- (void)submitWriteRequests:(id)a3 sourceType:(unint64_t)a4 biomeSource:(unint64_t)a5 requestMessage:(id)a6;
- (void)updateRequestExpiryForMessage:(id)a3;
@end

@implementation HMDHAPAccessoryReaderWriter

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDHAPAccessoryReaderWriter *)self home];
  v3 = [v2 uuid];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)_completionHandlerWithContext:(id)a3
{
  v4 = a3;
  v5 = [(HMDHAPAccessoryReaderWriter *)self home];
  v6 = [v5 workQueue];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__HMDHAPAccessoryReaderWriter__completionHandlerWithContext___block_invoke;
  aBlock[3] = &unk_279735448;
  aBlock[4] = self;
  v12 = v4;
  v13 = v6;
  v7 = v6;
  v8 = v4;
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
  v13[3] = &unk_279735420;
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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Done sending all responses with error: %{public}@. Execution Time: %.3fs. Remaining Tasks: %{public}@", &v29, 0x34u);

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
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Done sending multi-part response(s)[%@] with error: %@. Execution Time: %.3fs. %@", &v29, 0x3Eu);

      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v12);
  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isPrimaryResidentDevice
{
  v2 = [(HMDHAPAccessoryReaderWriter *)self home];
  v3 = [v2 isCurrentDevicePrimaryResident];

  return v3;
}

- (BOOL)_isSecondaryResidentDevice
{
  v2 = [(HMDHAPAccessoryReaderWriter *)self home];
  if ([v2 isCurrentDeviceAvailableResident])
  {
    v3 = [v2 isCurrentDevicePrimaryResident] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)_isNotResidentDevice
{
  v2 = [(HMDHAPAccessoryReaderWriter *)self home];
  v3 = [v2 isCurrentDeviceAvailableResident];

  return v3 ^ 1;
}

- (void)submitWriteRequests:(id)a3 sourceType:(unint64_t)a4 biomeSource:(unint64_t)a5 requestMessage:(id)a6
{
  v50 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  v13 = MEMORY[0x277CCABB0];
  v14 = [(HMDHAPAccessoryReaderWriter *)self tracker];
  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "nextTaskIdentifier")}];

  [(HMDHAPAccessoryReaderWriter *)self updateRequestExpiryForMessage:v12];
  v16 = [HMDHAPAccessoryTaskContext alloc];
  v17 = [(HMDHAPAccessoryReaderWriter *)self home];
  v18 = MEMORY[0x277CCACA8];
  v19 = MEMORY[0x259C01AE0](self, a2);
  v20 = [v18 stringWithFormat:@"%@, %s:%ld", v19, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/HMDHAPAccessoryReaderWriter.m", 2587];
  v21 = [(HMDHAPAccessoryTaskContext *)v16 initWithIdentifier:v15 operationType:1 home:v17 sourceType:a4 biomeSource:a5 requestMessage:v12 name:v20];

  v22 = [(HMDHAPAccessoryReaderWriter *)self _defaultTaskForCurrentDeviceWithContext:v21 requests:v11];
  v23 = objc_autoreleasePoolPush();
  v24 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    [v12 shortDescription];
    v38 = v15;
    v27 = v39 = v11;
    v28 = MEMORY[0x277CCABB0];
    [(HMDHAPAccessoryReaderWriter *)v24 tracker];
    v29 = v37 = v23;
    [v29 pendingTasks];
    v30 = v36 = v21;
    v31 = [v28 numberWithUnsignedInteger:{objc_msgSend(v30, "count")}];
    v32 = MEMORY[0x277CCABB0];
    [v12 timeout];
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
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Executing with request: %{public}@. Current Tasks: %{public}@. Request Timeout %{public}@", buf, 0x34u);

    v11 = v39;
    v21 = v36;

    v23 = v37;
    v15 = v38;
  }

  objc_autoreleasePoolPop(v23);
  v34 = [(HMDHAPAccessoryReaderWriter *)v24 tracker];
  [v34 executeTask:v22];

  v35 = *MEMORY[0x277D85DE8];
}

- (id)_defaultTaskForCurrentDeviceWithContext:(id)a3 requests:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 operationType];
  v9 = [v6 requestMessage];
  v10 = [(HMDHAPAccessoryReaderWriter *)self _cannotForwardMessage:v9];

  v11 = [(HMDHAPAccessoryReaderWriter *)self _completionHandlerWithContext:v6];
  if (v10)
  {
    goto LABEL_12;
  }

  if (-[HMDHAPAccessoryReaderWriter _isNotResidentDevice](self, "_isNotResidentDevice") || -[HMDHAPAccessoryReaderWriter _isSecondaryResidentDevice](self, "_isSecondaryResidentDevice") && ([v6 requestMessage], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isRemote"), v16, (v17 & 1) == 0))
  {
    v12 = off_27971A108;
    v13 = off_27971A100;
  }

  else
  {
    if (!-[HMDHAPAccessoryReaderWriter _isPrimaryResidentDevice](self, "_isPrimaryResidentDevice") || (-[HMDHAPAccessoryReaderWriter dataSource](self, "dataSource"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 isWholeHomeBluetoothSupported], v18, (v19 & 1) != 0))
    {
LABEL_12:
      v20 = off_27971A0E0;
      if (v8)
      {
        v20 = off_27971A0E8;
      }

      v21 = *v20;
      v15 = objc_opt_class();
      goto LABEL_15;
    }

    v12 = off_27971A0F8;
    v13 = off_27971A0F0;
  }

  if (!v8)
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
  v22 = [[v15 alloc] initWithContext:v6 requests:v7 completion:v11];

  return v22;
}

- (void)submitReadRequests:(id)a3 sourceType:(unint64_t)a4 requestMessage:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v11 = MEMORY[0x277CCABB0];
  v12 = [(HMDHAPAccessoryReaderWriter *)self tracker];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "nextTaskIdentifier")}];

  [(HMDHAPAccessoryReaderWriter *)self updateRequestExpiryForMessage:v10];
  v14 = [HMDHAPAccessoryTaskContext alloc];
  v15 = [(HMDHAPAccessoryReaderWriter *)self home];
  v16 = MEMORY[0x277CCACA8];
  v17 = MEMORY[0x259C01AE0](self, a2);
  v18 = [v16 stringWithFormat:@"%@, %s:%ld", v17, "/Library/Caches/com.apple.xbs/Sources/HomeKit_executables_legacy/Sources/homed/HMDHAPAccessoryReaderWriter.m", 2530];
  v19 = [(HMDHAPAccessoryTaskContext *)v14 initWithIdentifier:v13 operationType:0 home:v15 sourceType:a4 biomeSource:0 requestMessage:v10 name:v18];

  v20 = [(HMDHAPAccessoryReaderWriter *)self _defaultTaskForCurrentDeviceWithContext:v19 requests:v9];
  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    [v10 shortDescription];
    v36 = v13;
    v25 = v37 = v9;
    v26 = MEMORY[0x277CCABB0];
    [(HMDHAPAccessoryReaderWriter *)v22 tracker];
    v27 = v35 = v21;
    [v27 pendingTasks];
    v28 = v34 = v19;
    v29 = [v26 numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
    v30 = MEMORY[0x277CCABB0];
    [v10 timeout];
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
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Executing with request: %{public}@. Current Tasks: %{public}@. Request Timeout %{public}@", buf, 0x34u);

    v9 = v37;
    v19 = v34;

    v21 = v35;
    v13 = v36;
  }

  objc_autoreleasePoolPop(v21);
  v32 = [(HMDHAPAccessoryReaderWriter *)v22 tracker];
  [v32 executeTask:v20];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)updateRequestExpiryForMessage:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 messagePayload];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 messagePayload];
      v9 = [v8 objectForKeyedSubscript:@"kRemoteMessageRequestExpiryKey"];

      if (v9)
      {
        v10 = MEMORY[0x277CBEB38];
        v11 = [v5 messagePayload];
        v12 = [v10 dictionaryWithDictionary:v11];

        v13 = [v12 hmf_numberForKey:@"kRemoteMessageRequestExpiryKey"];
        [v13 doubleValue];
        v15 = v14;

        v16 = objc_autoreleasePoolPush();
        v17 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          v21 = 138543618;
          v22 = v19;
          v23 = 2048;
          v24 = v15;
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Not updating request expiry of %0.4f at reader writer", &v21, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleRemotelyUpdatedCharacteristicsMessage:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:@"kRequestIdentifierKey"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(HMDHAPAccessoryReaderWriter *)self tracker];
  v7 = [v6 pendingRemoteTasks];

  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([v12 supportsMultiPartResponse])
        {
          if (([v12 allResponsesReceived] & 1) == 0)
          {
            v13 = [v12 requestIdentifier];
            v14 = [v13 UUIDString];
            v15 = [v14 isEqualToString:v5];

            if (v15)
            {
              v16 = [v12 requests];
              v17 = [v4 messagePayload];
              v18 = [HMDCharacteristicResponse responsesWithRequests:v16 characteristicUpdateDictionary:v17];

              [v12 _receivedRemotelyChangedCharacteristicResponses:v18 message:v4];
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (HMDHAPAccessoryReaderWriter)initWithHome:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HMDHAPAccessoryReaderWriter;
  v8 = [(HMDHAPAccessoryReaderWriter *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(HMDHAPAccessoryTaskTracker);
    tracker = v8->_tracker;
    v8->_tracker = v9;

    objc_storeWeak(&v8->_home, v6);
    objc_storeStrong(&v8->_dataSource, a4);
  }

  return v8;
}

- (HMDHAPAccessoryReaderWriter)initWithHome:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HMDHAPAccessoryReaderWriterDataSource);
  v6 = [(HMDHAPAccessoryReaderWriter *)self initWithHome:v4 dataSource:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t50_189894 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t50_189894, &__block_literal_global_502);
  }

  v3 = logCategory__hmf_once_v51_189895;

  return v3;
}

uint64_t __42__HMDHAPAccessoryReaderWriter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v51_189895;
  logCategory__hmf_once_v51_189895 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end