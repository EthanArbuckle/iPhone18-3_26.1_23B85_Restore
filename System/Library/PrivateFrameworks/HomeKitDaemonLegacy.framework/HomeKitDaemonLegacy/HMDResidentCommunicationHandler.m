@interface HMDResidentCommunicationHandler
+ (id)createResponseSubset:(id)a3 overallError:(id)a4 readRequest:(id)a5 error:(id *)a6;
+ (id)logCategory;
+ (void)_clearAllGeneratedRequests:(id)a3 error:(id)a4;
+ (void)_clearAllPendingRequests:(id)a3 error:(id)a4;
+ (void)_processResponseForMultireadRequest:(id)a3 overallError:(id)a4 response:(id)a5;
- (BOOL)containsDevice:(id)a3;
- (HMDDevice)preferredDevice;
- (HMDMessageDispatcher)remoteDispatcher;
- (HMDResidentCommunicationHandler)initWithHome:(id)a3 remoteDispatcher:(id)a4;
- (NSString)description;
- (id)deviceForType:(int64_t)a3;
- (id)logIdentifier;
- (int64_t)preferredDeviceType;
- (void)_processResponse:(id)a3 overallError:(id)a4 messageIdentifier:(id)a5;
- (void)_sendMultipleCharacteristicRead;
- (void)dealloc;
- (void)redispatchMessage:(id)a3 target:(id)a4 responseQueue:(id)a5;
- (void)removeDeviceForType:(int64_t)a3;
- (void)setDevice:(id)a3 forType:(int64_t)a4;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDResidentCommunicationHandler

- (HMDMessageDispatcher)remoteDispatcher
{
  WeakRetained = objc_loadWeakRetained(&self->_remoteDispatcher);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDResidentCommunicationHandler *)self homeUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_processResponse:(id)a3 overallError:(id)a4 messageIdentifier:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(HMDResidentCommunicationHandler *)self workQueue];
  dispatch_assert_queue_V2(v10);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = [(HMDResidentCommunicationHandler *)self dispatchedReadRequests];
  v12 = [v11 copy];

  v13 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v38 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v37 + 1) + 8 * v16);
      v18 = [v17 identifier];
      v19 = [v18 isEqual:v9];

      if (v19)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v20 = [(HMDResidentCommunicationHandler *)self dispatchedReadRequests];
    v21 = [v20 objectForKey:v17];

    v22 = [(HMDResidentCommunicationHandler *)self dispatchedReadRequests];
    [v22 removeObjectForKey:v17];

    if (!v21)
    {
      goto LABEL_16;
    }

    v23 = v36;
    [HMDResidentCommunicationHandler _processResponseForMultireadRequest:v21 overallError:v8 response:v36];
    numOutstandingReadRequests = self->_numOutstandingReadRequests;
    self->_numOutstandingReadRequests = numOutstandingReadRequests - 1;
    if (numOutstandingReadRequests == 1)
    {
      v34 = [(HMDResidentCommunicationHandler *)self multiReadCoalesceTimer];

      if (v34)
      {
        v35 = [(HMDResidentCommunicationHandler *)self multiReadCoalesceTimer];
        [v35 cancel];

        [(HMDResidentCommunicationHandler *)self setMultiReadCoalesceTimer:0];
        [(HMDResidentCommunicationHandler *)self _sendMultipleCharacteristicRead];
      }
    }

    else if (numOutstandingReadRequests <= 0)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@*** invalid reference counter for resident communication read coalese handler", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
      self->_numOutstandingReadRequests = 0;
    }
  }

  else
  {
LABEL_9:

LABEL_16:
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    v23 = v36;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v32;
      v43 = 2112;
      v44 = v9;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Cannot find the message with identifier %@ in the dispatched multi-read requests", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v21 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_sendMultipleCharacteristicRead
{
  v93 = *MEMORY[0x277D85DE8];
  v2 = [(HMDResidentCommunicationHandler *)self workQueue];
  dispatch_assert_queue_V2(v2);

  v3 = [(HMDResidentCommunicationHandler *)self pendingReadRequests];
  v4 = [v3 count];

  if (v4)
  {
    v74 = [MEMORY[0x277CBEB38] dictionary];
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v5 = [(HMDResidentCommunicationHandler *)self pendingReadRequests];
    v6 = [v5 copy];

    obj = v6;
    v76 = [v6 countByEnumeratingWithState:&v82 objects:v92 count:16];
    if (v76)
    {
      v75 = *v83;
      v72 = *MEMORY[0x277CD25F8];
      v71 = *MEMORY[0x277CD2140];
      v73 = 9;
      *&v7 = 138543362;
      v68 = v7;
      do
      {
        for (i = 0; i != v76; ++i)
        {
          if (*v83 != v75)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v82 + 1) + 8 * i);
          v10 = [v9 accessoryUUID];
          v11 = [v10 UUIDString];

          if (v11)
          {
            v12 = [v74 hmf_mutableDictionaryForKey:v11];
            if (!v12)
            {
              v12 = [MEMORY[0x277CBEB38] dictionary];
              [v74 setObject:v12 forKey:v11];
            }

            v13 = [v9 readMessage];
            v14 = [v13 messagePayload];
            v15 = [v14 hmf_numberForKey:v72];
            v16 = HAPInstanceIDFromValue();

            v17 = [v16 stringValue];
            v18 = [(HMDAssertionLogEvent *)v12 hmf_mutableArrayForKey:v17];

            if (!v18)
            {
              v18 = [MEMORY[0x277CBEB18] array];
              v19 = [v16 stringValue];
              [(HMDAssertionLogEvent *)v12 setObject:v18 forKey:v19];
            }

            v20 = [v9 readMessage];
            v21 = [v20 messagePayload];
            v22 = [v21 hmf_numberForKey:v71];
            v23 = HAPInstanceIDFromValue();

            if (([v18 containsObject:v23] & 1) == 0)
            {
              [v18 addObject:v23];
            }

            v24 = [v9 readMessage];
            [v24 qualityOfService];
            v25 = HMFQualityOfServiceCompare() == -1;

            if (v25)
            {
              v26 = [v9 readMessage];
              v73 = [v26 qualityOfService];
            }
          }

          else
          {
            v27 = objc_autoreleasePoolPush();
            v28 = self;
            v29 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v30 = HMFGetLogIdentifier();
              *buf = 138543618;
              v89 = v30;
              v90 = 2112;
              v91 = v9;
              _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Ignoring bad request with nil accessory: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v27);
            v31 = objc_autoreleasePoolPush();
            v32 = v28;
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
            {
              v34 = HMFGetLogIdentifier();
              *buf = v68;
              v89 = v34;
              _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Accessory UUID cannot be nil", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v31);
            v12 = [[HMDAssertionLogEvent alloc] initWithReason:@"Accessory UUID cannot be nil"];
            v16 = +[HMDMetricsManager sharedLogEventSubmitter];
            [v16 submitLogEvent:v12];
          }
        }

        v76 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
      }

      while (v76);
    }

    else
    {
      v73 = 9;
    }

    v86[0] = *MEMORY[0x277CCE7A8];
    v39 = [v74 copy];
    v87[0] = v39;
    v86[1] = *MEMORY[0x277CD0640];
    v40 = [(HMDResidentCommunicationHandler *)self homeUUID];
    v41 = [v40 UUIDString];
    v87[1] = v41;
    v77 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];

    v42 = [MEMORY[0x277CCAD78] UUID];
    v43 = objc_alloc(MEMORY[0x277D0F820]);
    v44 = [(HMDResidentCommunicationHandler *)self homeUUID];
    v45 = [v43 initWithTarget:v44];

    v46 = [MEMORY[0x277D0F848] messageWithName:@"kMultipleCharacteristicReadRequestKey" qualityOfService:v73 destination:v45 payload:v77];
    [v46 setIdentifier:v42];
    objc_initWeak(&location, self);
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __66__HMDResidentCommunicationHandler__sendMultipleCharacteristicRead__block_invoke;
    v78[3] = &unk_279733AE8;
    objc_copyWeak(&v80, &location);
    v47 = v42;
    v79 = v47;
    [v46 setResponseHandler:v78];
    v48 = [(HMDResidentCommunicationHandler *)self dispatchedReadRequests];
    v49 = [(HMDResidentCommunicationHandler *)self pendingReadRequests];
    v50 = [v49 copy];
    [v48 setObject:v50 forKey:v46];

    v51 = [(HMDResidentCommunicationHandler *)self pendingReadRequests];
    [v51 removeAllObjects];

    v52 = [(HMDResidentCommunicationHandler *)self remoteDispatcher];
    if (v52)
    {
      ++self->_numOutstandingReadRequests;
      v53 = [(HMDResidentCommunicationHandler *)self preferredDevice];
      v54 = [(HMDResidentCommunicationHandler *)self homeUUID];
      v55 = [v53 remoteDestinationString];
      v56 = [v53 remoteDestinationString];
      v57 = [(HMDResidentCommunicationHandler *)self workQueue];
      v58 = [v46 responseHandler];
      [v52 sendSecureMessage:v46 target:v54 userID:v55 destination:v56 responseQueue:v57 responseHandler:v58];

      v59 = objc_autoreleasePoolPush();
      v60 = self;
      v61 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        v62 = HMFGetLogIdentifier();
        *buf = 138543618;
        v89 = v62;
        v90 = 2112;
        v91 = v47;
        _os_log_impl(&dword_2531F8000, v61, OS_LOG_TYPE_INFO, "%{public}@Sent off the multi-read request with identifier: %@ and adding it to tracking list", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v59);
    }

    else
    {
      v63 = objc_autoreleasePoolPush();
      v64 = self;
      v65 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v66 = HMFGetLogIdentifier();
        *buf = 138543362;
        v89 = v66;
        _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_ERROR, "%{public}@IDS dispatcher is invalid, reporting error", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v63);
      v53 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
      [(HMDResidentCommunicationHandler *)v64 _processResponse:0 overallError:v53 messageIdentifier:v47];
    }

    objc_destroyWeak(&v80);
    objc_destroyWeak(&location);
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v89 = v38;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@No pending read requests to combine?", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
  }

  v67 = *MEMORY[0x277D85DE8];
}

void __66__HMDResidentCommunicationHandler__sendMultipleCharacteristicRead__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained workQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__HMDResidentCommunicationHandler__sendMultipleCharacteristicRead__block_invoke_2;
  v11[3] = &unk_279734870;
  v11[4] = WeakRetained;
  v12 = v6;
  v13 = v5;
  v14 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDResidentCommunicationHandler *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDResidentCommunicationHandler_timerDidFire___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __48__HMDResidentCommunicationHandler_timerDidFire___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) multiReadCoalesceTimer];

  if (v2 == v3)
  {
    [*(a1 + 40) setMultiReadCoalesceTimer:0];
    v9 = *(a1 + 40);
    v10 = *MEMORY[0x277D85DE8];

    [v9 _sendMultipleCharacteristicRead];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Read request timer is not matching", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = *MEMORY[0x277D85DE8];
  }
}

- (void)redispatchMessage:(id)a3 target:(id)a4 responseQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDResidentCommunicationHandler *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__HMDResidentCommunicationHandler_redispatchMessage_target_responseQueue___block_invoke;
  v15[3] = &unk_279734870;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __74__HMDResidentCommunicationHandler_redispatchMessage_target_responseQueue___block_invoke(uint64_t a1)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) messagePayload];
  v3 = [v2 mutableCopy];

  v57[0] = @"kIDSMessageSourceIDKey";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
  [v3 removeObjectsForKeys:v4];

  v5 = *(a1 + 32);
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

  if (!v7)
  {
    v5 = [*(a1 + 32) mutableCopy];
  }

  [v5 setMessagePayload:v3];
  [v5 setSecureRemote:1];
  v8 = [objc_alloc(MEMORY[0x277D0F820]) initWithTarget:*(a1 + 40)];
  [v5 setDestination:v8];
  v9 = [v5 name];
  v10 = [v9 isEqualToString:@"kCharacteristicReadRequestKey"];

  if (v10)
  {
    v11 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCF0B0]];
    if (v11 && (v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11]) != 0)
    {
      v13 = v12;
      v14 = [[HMDRemoteReadRequestMessage alloc] initWithReadMessage:v5 accessoryUUID:v12 responseQueue:*(a1 + 56)];
      v15 = [*(a1 + 48) pendingReadRequests];
      [v15 addObject:v14];

      v16 = [*(a1 + 48) multiReadCoalesceTimer];

      if (!v16)
      {
        if (*(*(a1 + 48) + 12) < 1)
        {
          v42 = objc_autoreleasePoolPush();
          v43 = *(a1 + 48);
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v45 = contextb = v42;
            *buf = 138543362;
            v52 = v45;
            _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Sending read request immediately.  Will collect further incoming read packets", buf, 0xCu);

            v42 = contextb;
          }

          objc_autoreleasePoolPop(v42);
          [*(a1 + 48) _sendMultipleCharacteristicRead];
        }

        else
        {
          v17 = [MEMORY[0x277D0F8D0] sharedPreferences];
          v18 = [v17 preferenceForKey:@"residentReadCoalesceTimeout_ms"];
          v19 = [v18 numberValue];

          if (!v19)
          {
            context = objc_autoreleasePoolPush();
            v20 = *(a1 + 48);
            v21 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v47 = HMFGetLogIdentifier();
              *buf = 138543362;
              v52 = v47;
              _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@*** resident communication handler read coalesce timeout missing from preferences", buf, 0xCu);
            }

            objc_autoreleasePoolPop(context);
          }

          [v19 doubleValue];
          v23 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:v22 / 1000.0];
          [*(a1 + 48) setMultiReadCoalesceTimer:v23];

          v24 = *(a1 + 48);
          v25 = [v24 multiReadCoalesceTimer];
          [v25 setDelegate:v24];

          v26 = [*(a1 + 48) multiReadCoalesceTimer];
          [v26 resume];

          v27 = objc_autoreleasePoolPush();
          v28 = *(a1 + 48);
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v30 = contexta = v19;
            *buf = 138543362;
            v52 = v30;
            _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Kicked off the multi-read request timer", buf, 0xCu);

            v19 = contexta;
          }

          objc_autoreleasePoolPop(v27);
        }
      }
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      v37 = *(a1 + 48);
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = HMFGetLogIdentifier();
        v40 = [*(a1 + 32) shortDescription];
        *buf = 138543874;
        v52 = v39;
        v53 = 2112;
        v54 = v40;
        v55 = 2112;
        v56 = v3;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Request message: %@ cannot be redispatched due to invalid payload: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v36);
      v41 = *(a1 + 32);
      v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v41 respondWithError:v13];
    }
  }

  else
  {
    v11 = [*(a1 + 48) preferredDevice];
    [v5 name];

    [v11 identifier];
    v13 = [*(a1 + 48) remoteDispatcher];
    v31 = *(a1 + 40);
    v32 = [v11 remoteDestinationString];
    v33 = [v11 remoteDestinationString];
    v34 = *(a1 + 56);
    v35 = [v5 responseHandler];
    [v13 sendSecureMessage:v5 target:v31 userID:v32 destination:v33 responseQueue:v34 responseHandler:v35];
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (int64_t)preferredDeviceType
{
  v3 = [(HMDResidentCommunicationHandler *)self deviceMapping];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = [(HMDResidentCommunicationHandler *)self deviceMapping];
  v6 = [v5 objectForKey:&unk_286627AD8];

  if (v6)
  {
    return 2;
  }

  v8 = [(HMDResidentCommunicationHandler *)self deviceMapping];
  v9 = [v8 objectForKey:&unk_286627AF0];

  return v9 != 0;
}

- (HMDDevice)preferredDevice
{
  v3 = [(HMDResidentCommunicationHandler *)self preferredDeviceType];

  return [(HMDResidentCommunicationHandler *)self deviceForType:v3];
}

- (id)deviceForType:(int64_t)a3
{
  v4 = [(HMDResidentCommunicationHandler *)self deviceMapping];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [v4 objectForKey:v5];

  return v6;
}

- (BOOL)containsDevice:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDResidentCommunicationHandler *)self deviceMapping];
  v6 = [v5 copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [v7 objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)removeDeviceForType:(int64_t)a3
{
  v5 = [(HMDResidentCommunicationHandler *)self deviceMapping];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    if ([(HMDResidentCommunicationHandler *)self preferredDeviceType]== a3)
    {
      v8 = [(HMDResidentCommunicationHandler *)self dispatchedReadRequests];
      v9 = [v8 copy];

      v10 = [(HMDResidentCommunicationHandler *)self dispatchedReadRequests];
      [v10 removeAllObjects];

      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
      [HMDResidentCommunicationHandler _clearAllGeneratedRequests:v9 error:v11];
    }

    v13 = [(HMDResidentCommunicationHandler *)self deviceMapping];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [v13 removeObjectForKey:v12];
  }
}

- (void)setDevice:(id)a3 forType:(int64_t)a4
{
  v9 = a3;
  v6 = [(HMDResidentCommunicationHandler *)self deviceForType:a4];
  if (([v6 isEqual:v9] & 1) == 0)
  {
    if (v6)
    {
      [(HMDResidentCommunicationHandler *)self removeDeviceForType:a4];
    }

    if (v9)
    {
      v7 = [(HMDResidentCommunicationHandler *)self deviceMapping];
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
      [v7 setObject:v9 forKey:v8];
    }
  }
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDResidentCommunicationHandler *)self homeUUID];
  v4 = [v3 UUIDString];
  v5 = [v2 stringWithFormat:@"[RCH %@]", v4];

  return v5;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating resident communication handler", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDResidentCommunicationHandler *)v4 pendingReadRequests];
  v8 = [v7 copy];

  v9 = [(HMDResidentCommunicationHandler *)v4 dispatchedReadRequests];
  v10 = [v9 copy];

  v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
  [HMDResidentCommunicationHandler _clearAllGeneratedRequests:v10 error:v11];
  [HMDResidentCommunicationHandler _clearAllPendingRequests:v8 error:v11];

  v13.receiver = v4;
  v13.super_class = HMDResidentCommunicationHandler;
  [(HMDResidentCommunicationHandler *)&v13 dealloc];
  v12 = *MEMORY[0x277D85DE8];
}

- (HMDResidentCommunicationHandler)initWithHome:(id)a3 remoteDispatcher:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = HMDResidentCommunicationHandler;
  v8 = [(HMDResidentCommunicationHandler *)&v20 init];
  if (v8)
  {
    v9 = [v6 uuid];
    homeUUID = v8->_homeUUID;
    v8->_homeUUID = v9;

    v8->_ownerUser = [v6 isOwnerUser];
    v11 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    deviceMapping = v8->_deviceMapping;
    v8->_deviceMapping = v11;

    v13 = [v7 workQueue];
    workQueue = v8->_workQueue;
    v8->_workQueue = v13;

    objc_storeWeak(&v8->_remoteDispatcher, v7);
    v15 = [MEMORY[0x277CBEB18] array];
    pendingReadRequests = v8->_pendingReadRequests;
    v8->_pendingReadRequests = v15;

    v17 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    dispatchedReadRequests = v8->_dispatchedReadRequests;
    v8->_dispatchedReadRequests = v17;

    v8->_numOutstandingReadRequests = 0;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t23 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t23, &__block_literal_global_23215);
  }

  v3 = logCategory__hmf_once_v24;

  return v3;
}

uint64_t __46__HMDResidentCommunicationHandler_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v24;
  logCategory__hmf_once_v24 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (void)_clearAllPendingRequests:(id)a3 error:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = a1;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Clearing off all pending read requests with error: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [HMDResidentCommunicationHandler _processResponseForMultireadRequest:v6 overallError:v7 response:0];

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)_clearAllGeneratedRequests:(id)a3 error:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = a1;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v11;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Clearing off all pending dispatched multi-read requests with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [v12 objectForKey:{*(*(&v19 + 1) + 8 * v16), v19}];
        [HMDResidentCommunicationHandler _processResponseForMultireadRequest:v17 overallError:v7 response:0];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)createResponseSubset:(id)a3 overallError:(id)a4 readRequest:(id)a5 error:(id *)a6
{
  v86 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54];
  }

  v14 = v13;
  if (v10)
  {
    v15 = [v12 readMessage];
    v16 = [v15 messagePayload];

    v77 = v12;
    v17 = [v12 accessoryUUID];
    v18 = *MEMORY[0x277CD25F8];
    v19 = [v16 hmf_numberForKey:*MEMORY[0x277CD25F8]];
    v20 = HAPInstanceIDFromValue();

    v21 = *MEMORY[0x277CD2140];
    v78 = v16;
    v22 = [v16 hmf_numberForKey:*MEMORY[0x277CD2140]];
    v79 = HAPInstanceIDFromValue();

    v23 = [v10 hmf_dictionaryForKey:@"kModifiedCharacteristicsForAccessoryKey"];
    v76 = v23;
    if (v23)
    {
      v24 = v23;
      v74 = a6;
      v25 = [v17 UUIDString];
      v26 = [v24 hmf_dictionaryForKey:v25];

      v75 = v17;
      if (v26)
      {
        v27 = v20;
        v28 = [v20 stringValue];
        v73 = v26;
        v29 = [v26 hmf_dictionaryForKey:v28];

        v72 = v29;
        if (v29)
        {
          v30 = [v79 stringValue];
          v31 = [v29 hmf_dictionaryForKey:v30];

          v12 = v77;
          v71 = v31;
          if (v31)
          {
            v32 = [v31 errorFromDataForKey:*MEMORY[0x277CD2128]];
            if (v32)
            {
              v33 = v32;
              v34 = v32;

              v35 = 0;
              v14 = v34;
              v26 = v73;
              a6 = v74;
              v36 = v75;
            }

            else
            {
              v68 = *MEMORY[0x277CD21B8];
              v70 = [v31 objectForKeyedSubscript:?];
              v67 = *MEMORY[0x277CD21D0];
              v69 = [v31 objectForKeyedSubscript:?];
              if (!v69)
              {
                v69 = [MEMORY[0x277CBEB68] null];
              }

              a6 = v74;
              if (v70)
              {
                v56 = [v10 objectForKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];
                if (!v56)
                {
                  v56 = [MEMORY[0x277CCABB0] numberWithInt:0];
                }

                v80[0] = *MEMORY[0x277CCF0B0];
                v57 = [v75 UUIDString];
                v81[0] = v57;
                v81[1] = v27;
                v80[1] = v18;
                v80[2] = v21;
                v59 = v69;
                v58 = v70;
                v81[2] = v79;
                v81[3] = v70;
                v80[3] = v68;
                v80[4] = v67;
                v80[5] = @"kRemoteMessageTransportAttributionKey";
                v81[4] = v69;
                v81[5] = v56;
                v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:6];

                v14 = 0;
                a6 = v74;
              }

              else
              {
                v60 = objc_autoreleasePoolPush();
                v61 = a1;
                v62 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                {
                  v63 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v83 = v63;
                  _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_ERROR, "%{public}@Value key is missing in the response dictionary", buf, 0xCu);

                  a6 = v74;
                }

                objc_autoreleasePoolPop(v60);
                v35 = 0;
                v59 = v69;
                v58 = 0;
              }

              v26 = v73;
              v36 = v75;
              v33 = 0;
            }
          }

          else
          {
            v52 = objc_autoreleasePoolPush();
            v53 = a1;
            v54 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              v55 = HMFGetLogIdentifier();
              *buf = 138543618;
              v83 = v55;
              v84 = 2112;
              v85 = v79;
              _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_ERROR, "%{public}@Could not find the characteristic instance ID %@ in the service changes", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v52);
            v35 = 0;
            v26 = v73;
            a6 = v74;
            v36 = v75;
          }
        }

        else
        {
          v48 = objc_autoreleasePoolPush();
          v49 = a1;
          v50 = HMFGetOSLogHandle();
          v12 = v77;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = HMFGetLogIdentifier();
            *buf = 138543618;
            v83 = v51;
            v84 = 2112;
            v85 = v27;
            _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Could not find the service instance ID %@ in the accessory changes", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v48);
          v35 = 0;
          a6 = v74;
          v36 = v75;
        }
      }

      else
      {
        v42 = objc_autoreleasePoolPush();
        v43 = a1;
        v44 = HMFGetOSLogHandle();
        v27 = v20;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v46 = v45 = v42;
          v47 = [v75 UUIDString];
          *buf = 138543618;
          v83 = v46;
          v84 = 2112;
          v85 = v47;
          _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Could not find the accessory %@ in the accessory list", buf, 0x16u);

          v42 = v45;
        }

        objc_autoreleasePoolPop(v42);
        v35 = 0;
        a6 = v74;
        v36 = v75;
        v12 = v77;
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = a1;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v41 = v40 = a6;
        *buf = 138543362;
        v83 = v41;
        _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "%{public}@Could not find the modified accessory characteristics key", buf, 0xCu);

        a6 = v40;
      }

      objc_autoreleasePoolPop(v37);
      v35 = 0;
      v36 = v17;
      v27 = v20;
      v12 = v77;
    }

    if (a6)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v35 = 0;
    if (a6)
    {
LABEL_40:
      v64 = v14;
      *a6 = v14;
    }
  }

  v65 = *MEMORY[0x277D85DE8];

  return v35;
}

+ (void)_processResponseForMultireadRequest:(id)a3 overallError:(id)a4 response:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v36 = a4;
  v35 = a5;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v8)
  {
    v10 = v8;
    v37 = *v45;
    *&v9 = 138543618;
    v33 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        v13 = [v12 readMessage];
        v14 = [v13 responseHandler];

        if (v14)
        {
          v43 = v36;
          v15 = v36;
          v16 = [HMDResidentCommunicationHandler createResponseSubset:v35 overallError:v15 readRequest:v12 error:&v43];
          v17 = v43;

          v18 = objc_autoreleasePoolPush();
          v19 = a1;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138544130;
            v49 = v21;
            v50 = 2112;
            v51 = v12;
            v52 = 2112;
            v53 = v16;
            v54 = 2112;
            v55 = v17;
            _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@%@ is getting a response %@ with error %@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v18);
          v22 = [v12 responseQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __93__HMDResidentCommunicationHandler__processResponseForMultireadRequest_overallError_response___block_invoke;
          block[3] = &unk_2797355D0;
          v23 = v14;
          v41 = v16;
          v42 = v23;
          v40 = v17;
          v24 = v17;
          v25 = v16;
          dispatch_async(v22, block);
        }

        else
        {
          v26 = objc_autoreleasePoolPush();
          v27 = a1;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            v30 = [v12 readMessage];
            v31 = [v30 identifier];
            *buf = v33;
            v49 = v29;
            v50 = 2112;
            v51 = v31;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Response handler is not set for the request %@, skipping", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v26);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v10);
  }

  v32 = *MEMORY[0x277D85DE8];
}

@end