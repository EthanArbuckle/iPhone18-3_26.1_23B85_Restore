@interface HMDUserDeviceCapabilitiesRequestManager
+ (id)logCategory;
- (HMDUserDeviceCapabilitiesRequestManager)initWithHomeManager:(id)a3 accountRegistry:(id)a4 messageDispatcher:(id)a5;
- (HMDUserDeviceCapabilitiesRequestManager)initWithHomeManager:(id)a3 accountRegistry:(id)a4 messageDispatcher:(id)a5 timerManager:(id)a6;
- (NSUUID)messageTargetUUID;
- (id)_responseHandlerForTransactionID:(id)a3;
- (id)_selectBestResponseForContext:(id)a3;
- (id)_updateDeviceCapabilities:(id)a3 withDestination:(id)a4;
- (id)homeManager;
- (void)_cancelPendingTimerContexts;
- (void)_completeWithResponse:(id)a3 error:(id)a4 context:(id)a5;
- (void)_handleRequestCapabilitiesXPCRequest:(id)a3;
- (void)_handleResponsePayload:(id)a3 error:(id)a4 transactionID:(id)a5;
- (void)_updateResponseTimeoutForContext:(id)a3;
- (void)electDeviceForUserID:(id)a3 destination:(id)a4 deviceCapabilities:(id)a5 responseTimeout:(double)a6 responseQueue:(id)a7 completionHandler:(id)a8;
- (void)registerForMessages;
- (void)timerManager:(id)a3 didFireForTimerContext:(id)a4;
@end

@implementation HMDUserDeviceCapabilitiesRequestManager

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDUserDeviceCapabilitiesRequestManager *)&self->super.super.super.super.isa homeManager];
  v3 = [v2 messageTargetUUID];

  return v3;
}

- (id)homeManager
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 11);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)_handleRequestCapabilitiesXPCRequest:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 messagePayload];
  v6 = [v5 mutableCopy];

  v7 = [v4 stringForKey:@"kUserIDKey"];
  if (v7)
  {
    v23 = self;
    v24 = v6;
    v8 = [(HMDUserDeviceCapabilitiesRequestManager *)&self->super.super.super.super.isa homeManager];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = [v8 homes];
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v28;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v27 + 1) + 8 * i) users];
          v15 = [v14 hmf_firstObjectWithValue:v7 forKeyPath:@"userID"];

          if (v15)
          {

            v6 = v24;
            [v24 removeObjectForKey:@"kUserIDKey"];
            v16 = [v15 userID];
            v17 = [v24 copy];
            v18 = [v8 workQueue];
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __80__HMDUserDeviceCapabilitiesRequestManager__handleRequestCapabilitiesXPCRequest___block_invoke;
            v25[3] = &unk_27867A9D8;
            v26 = v4;
            [(HMDUserDeviceCapabilitiesRequestManager *)v23 electDeviceForUserID:v16 destination:0 deviceCapabilities:v17 responseTimeout:v18 responseQueue:v25 completionHandler:0.0];

            goto LABEL_12;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"The specified userID is not known" reason:0 suggestion:0];
    [v4 respondWithError:v15];
    v6 = v24;
LABEL_12:
  }

  else
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"UserID must be set in the payload with key %@.", @"kUserIDKey"];
    v21 = [v19 hmErrorWithCode:2 description:@"Cannot send capabilities request because the userID is missing" reason:v20 suggestion:0];

    [v4 respondWithError:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __80__HMDUserDeviceCapabilitiesRequestManager__handleRequestCapabilitiesXPCRequest___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  if (a2)
  {
    [*(a1 + 32) respondWithError:a2];
  }

  else
  {
    v7 = [a4 mutableCopy];
    v8 = [v12 identifier];
    v9 = [v8 UUIDString];
    [v7 setObject:v9 forKeyedSubscript:@"SenderDeviceHandleIdentifier"];

    v10 = *(a1 + 32);
    v11 = [v7 copy];
    [v10 respondWithPayload:v11];
  }
}

- (void)timerManager:(id)a3 didFireForTimerContext:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v10 transactionID];
      v26 = 138543618;
      v27 = v14;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Response timer fired", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    os_unfair_lock_lock_with_options();
    [v10 setTimerContext:0];
    v16 = [(HMDUserDeviceCapabilitiesRequestManager *)v12 _selectBestResponseForContext:v10];
    v17 = [v16 objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
    if (!(v16 | v17))
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v12;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v22;
        v23 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: We should only get here if we received a response", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v24 = [[HMDAssertionLogEvent alloc] initWithReason:@"We should only get here if we received a response"];
      v25 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v25 submitLogEvent:v24];

      v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    }

    [(HMDUserDeviceCapabilitiesRequestManager *)v12 _completeWithResponse:v16 error:v17 context:v10];

    os_unfair_lock_unlock(&v12->_lock);
    [(HMDUserDeviceCapabilitiesRequestManager *)v12 _cancelPendingTimerContexts];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_cancelPendingTimerContexts
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self)
  {
    timerContextsToCancel = self->_timerContextsToCancel;
  }

  else
  {
    timerContextsToCancel = 0;
  }

  v4 = timerContextsToCancel;
  v5 = [(NSMutableArray *)v4 copy];

  if (self)
  {
    v6 = self->_timerContextsToCancel;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [(NSMutableArray *)v7 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        if (self)
        {
          timerManager = self->_timerManager;
        }

        else
        {
          timerManager = 0;
        }

        [(HMFTimerManager *)timerManager cancelTimerForContext:*(*(&v15 + 1) + 8 * v11++), v15];
      }

      while (v9 != v11);
      v13 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v9 = v13;
    }

    while (v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateResponseTimeoutForContext:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [v4 timerContext];

  if (v5)
  {
    if (self)
    {
      timerContextsToCancel = self->_timerContextsToCancel;
    }

    else
    {
      timerContextsToCancel = 0;
    }

    v7 = timerContextsToCancel;
    v8 = [v4 timerContext];
    [(NSMutableArray *)v7 addObject:v8];
  }

  v9 = [v4 receivedResponses];
  v10 = [v9 count];

  v11 = remotePendingResponseTimerNanoseconds / ((1000000000 * v10 + 1000000000) * remotePendingResponseDecayScale);
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v4 transactionID];
    v20 = 138543874;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2048;
    v25 = v11;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Updating response timeout to %llu seconds", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  if (v13)
  {
    timerManager = v13->_timerManager;
  }

  else
  {
    timerManager = 0;
  }

  v18 = [(HMFTimerManager *)timerManager startTimerWithTimeInterval:v4 object:v11];
  [v4 setTimerContext:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_completeWithResponse:(id)a3 error:(id)a4 context:(id)a5
{
  v63[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_assert_owner(&self->_lock);
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = v11;
  v13 = 0;
  if (!v8 || v9)
  {
    v14 = v11;
  }

  else
  {
    v48 = [v8 hmf_stringForKey:@"kIDSMessageSourceIDKey"];
    v13 = [HMDDeviceHandle deviceHandleForDestination:?];
    v14 = [v8 mutableCopy];

    v63[0] = @"kIDSMessageSourceIDKey";
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
    [v14 removeObjectsForKeys:v15];

    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v10 transactionID];
      *buf = 138544130;
      v56 = v19;
      v57 = 2114;
      v58 = v20;
      v59 = 2112;
      v60 = v13;
      v61 = 2114;
      v62 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Elected device %@ with capabilities: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v16);
    v21 = [v8 hmf_numberForKey:@"kHomedVersionKey"];
    if (v21)
    {
      v47 = v14;
      v22 = [HMDHomeKitVersion alloc];
      v23 = [v21 stringValue];
      v24 = [(HMDHomeKitVersion *)v22 initWithString:v23];

      v54 = 0;
      v25 = [(HMDRemoteMessageTransport *)v17 accountRegistry];
      v26 = [v25 deviceForHandle:v13 exists:&v54];

      if (v54 == 1)
      {
        v27 = [v26 version];
        v28 = [v27 isEqualToVersion:v24];

        if ((v28 & 1) == 0)
        {
          v29 = objc_autoreleasePoolPush();
          v30 = v17;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v32 = v46 = v30;
            *buf = 138543618;
            v56 = v32;
            v57 = 2112;
            v58 = v26;
            _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Updating the device, %@, with the election parameters", buf, 0x16u);

            v30 = v46;
          }

          objc_autoreleasePoolPop(v29);
          [v26 updateVersion:v24];
        }
      }

      v14 = v47;
    }

    v9 = 0;
  }

  v33 = [v10 responseQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDUserDeviceCapabilitiesRequestManager__completeWithResponse_error_context___block_invoke;
  block[3] = &unk_2786891E0;
  v34 = v10;
  v50 = v34;
  v35 = v9;
  v51 = v35;
  v36 = v13;
  v52 = v36;
  v37 = v14;
  v53 = v37;
  dispatch_async(v33, block);

  if (self)
  {
    requestContexts = self->_requestContexts;
  }

  else
  {
    requestContexts = 0;
  }

  v39 = requestContexts;
  v40 = [v34 transactionID];
  [(NSMutableDictionary *)v39 removeObjectForKey:v40];

  v41 = [v34 timerContext];

  if (v41)
  {
    if (self)
    {
      timerContextsToCancel = self->_timerContextsToCancel;
    }

    else
    {
      timerContextsToCancel = 0;
    }

    v43 = timerContextsToCancel;
    v44 = [v34 timerContext];
    [(NSMutableArray *)v43 addObject:v44];

    [v34 setTimerContext:0];
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __79__HMDUserDeviceCapabilitiesRequestManager__completeWithResponse_error_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

- (id)_selectBestResponseForContext:(id)a3
{
  v4 = a3;
  v5 = [v4 receivedResponses];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 receivedResponses];
    v8 = [v4 requestedCapabilities];
    v9 = [(HMDRemoteMessageTransport *)self matchResponse:v7 requestedCapabilities:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_handleResponsePayload:(id)a3 error:(id)a4 transactionID:(id)a5
{
  v73 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self)
  {
    requestContexts = self->_requestContexts;
  }

  else
  {
    requestContexts = 0;
  }

  v12 = [(NSMutableDictionary *)requestContexts objectForKeyedSubscript:v10];
  if (v12)
  {
    v58 = v10;
    v13 = v9;
    v14 = [v8 hmf_BOOLForKey:@"kRemoteMessageIsFinalResponseKey"];
    v15 = [v8 hmf_stringForKey:@"kIDSMessageSourceIDKey"];
    v16 = [v8 mutableCopy];
    [v16 removeObjectForKey:@"kRemoteMessageIsFinalResponseKey"];
    v17 = [v16 copy];

    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v22 = v21 = v15;
      v23 = HMFBooleanToString();
      *buf = 138544899;
      v60 = v22;
      v61 = 2114;
      v62 = v58;
      v63 = 2160;
      v64 = 1752392040;
      v65 = 2112;
      v66 = v21;
      v67 = 2112;
      v68 = v23;
      v69 = 2113;
      v70 = v17;
      v71 = 2112;
      v72 = v13;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Received response from %{mask.hash}@, isFinal: %@, payload: %{private}@, error: %@", buf, 0x48u);

      v15 = v21;
    }

    objc_autoreleasePoolPop(v18);
    v24 = [v12 destinationAddress];
    v25 = [v24 isEqualToString:v15];

    if (v25)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v19;
      v28 = HMFGetOSLogHandle();
      v10 = v58;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v60 = v29;
        v61 = 2114;
        v62 = v58;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Received response to directed message", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v9 = v13;
      [(HMDUserDeviceCapabilitiesRequestManager *)v27 _completeWithResponse:v17 error:v13 context:v12];
    }

    else
    {
      v10 = v58;
      if ([v17 count])
      {
        v30 = [v12 receivedResponses];
        [v30 addObject:v17];
      }

      v31 = [v12 requestedCapabilities];
      v32 = [(HMDRemoteMessageTransport *)v19 doesResponse:v17 matchAllCapabilities:v31];

      v9 = v13;
      if (v32)
      {
        v33 = objc_autoreleasePoolPush();
        v34 = v19;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v60 = v36;
          v61 = 2114;
          v62 = v58;
          _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Response matched all capabilities", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
        v37 = [(HMDUserDeviceCapabilitiesRequestManager *)v34 _selectBestResponseForContext:v12];

        v38 = [v37 objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

        [(HMDUserDeviceCapabilitiesRequestManager *)v34 _completeWithResponse:v37 error:v38 context:v12];
        v9 = v38;
        v17 = v37;
      }

      else if (v14)
      {
        v39 = [(HMDUserDeviceCapabilitiesRequestManager *)v19 _selectBestResponseForContext:v12];
        v40 = v39;
        if (v39)
        {
          v41 = v39;

          v42 = [v41 objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

          v9 = v42;
          v17 = v41;
        }

        v43 = objc_autoreleasePoolPush();
        v44 = v19;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = HMFGetLogIdentifier();
          [v12 receivedResponses];
          v47 = v9;
          v49 = v48 = v15;
          v50 = [v49 count];
          *buf = 138544387;
          v60 = v46;
          v61 = 2114;
          v62 = v58;
          v63 = 2048;
          v64 = v50;
          v65 = 2113;
          v66 = v17;
          v67 = 2112;
          v68 = v47;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Received %lu responses and is final. Responding with payload: %{private}@, error: %@", buf, 0x34u);

          v15 = v48;
          v9 = v47;
        }

        objc_autoreleasePoolPop(v43);
        [(HMDUserDeviceCapabilitiesRequestManager *)v44 _completeWithResponse:v17 error:v9 context:v12];

        v10 = v58;
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        v52 = v19;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          v55 = [v12 receivedResponses];
          v56 = [v55 count];
          *buf = 138543874;
          v60 = v54;
          v61 = 2114;
          v62 = v58;
          v63 = 2048;
          v64 = v56;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Received %lu responses so far but they do not match all capabilities", buf, 0x20u);

          v10 = v58;
        }

        objc_autoreleasePoolPop(v51);
        [(HMDUserDeviceCapabilitiesRequestManager *)v52 _updateResponseTimeoutForContext:v12];
      }
    }

    v8 = v17;
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (id)_responseHandlerForTransactionID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__HMDUserDeviceCapabilitiesRequestManager__responseHandlerForTransactionID___block_invoke;
  aBlock[3] = &unk_278687F40;
  objc_copyWeak(&v10, &location);
  v9 = v4;
  v5 = v4;
  v6 = _Block_copy(aBlock);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

void __76__HMDUserDeviceCapabilitiesRequestManager__responseHandlerForTransactionID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    os_unfair_lock_lock_with_options();
    [(os_unfair_lock_s *)WeakRetained _handleResponsePayload:v5 error:v7 transactionID:*(a1 + 32)];
    os_unfair_lock_unlock(WeakRetained + 20);
    [(os_unfair_lock_s *)WeakRetained _cancelPendingTimerContexts];
  }
}

- (id)_updateDeviceCapabilities:(id)a3 withDestination:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    if (v5)
    {
      v8 = [v5 mutableCopy];
    }

    else
    {
      v8 = [MEMORY[0x277CBEB38] dictionary];
    }

    v7 = v8;
    v9 = [v8 hmf_dictionaryForKey:@"kRequestedCapabilitiesKey"];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = [MEMORY[0x277CBEB38] dictionary];
    }

    [v10 setObject:&unk_283E72F98 forKeyedSubscript:@"kHomedVersionKey"];
    [v7 setObject:v10 forKeyedSubscript:@"kRequestedCapabilitiesKey"];
  }

  return v7;
}

- (void)electDeviceForUserID:(id)a3 destination:(id)a4 deviceCapabilities:(id)a5 responseTimeout:(double)a6 responseQueue:(id)a7 completionHandler:(id)a8
{
  v68 = *MEMORY[0x277D85DE8];
  v54 = a3;
  v14 = a4;
  queue = a7;
  v53 = a8;
  v55 = v14;
  v56 = [(HMDUserDeviceCapabilitiesRequestManager *)self _updateDeviceCapabilities:a5 withDestination:v14];
  if (a6 == 0.0)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v61 = v18;
      v62 = 2048;
      v63 = 0x404E000000000000;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Response timeout is not set. Defaulting to %.0f", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    a6 = 60.0;
  }

  v19 = [(HMDUserDeviceCapabilitiesRequestManager *)self messageTargetUUID];
  v20 = [(HMDRemoteMessageTransport *)self accountRegistry];
  v57 = [HMDMessageDispatcher destinationWithTarget:v19 userID:v54 destination:v55 multicast:1 accountRegistry:v20];

  if (v57)
  {
    v21 = [[HMDRemoteMessage alloc] initWithName:@"kElectDeviceForIDSSessionKey" qualityOfService:9 destination:v57 payload:v56 type:0 timeout:0 secure:a6 restriction:-1 sendOptions:2];
    v22 = [(HMDRemoteMessage *)v21 transactionIdentifier];
    v23 = v57;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0;
    }

    v51 = v25;

    if ((isKindOfClass & 1) == 0)
    {
      v44 = objc_autoreleasePoolPush();
      v45 = self;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543362;
        v61 = v47;
        _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Destination is not for a remote type", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v44);
      v48 = [[HMDAssertionLogEvent alloc] initWithReason:@"Destination is not for a remote type"];
      v49 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v49 submitLogEvent:v48];
    }

    v50 = [v56 hmf_dictionaryForKey:@"kRequestedCapabilitiesKey"];
    v26 = [__HMDRequestedCapabilitiesContext alloc];
    v27 = [v51 remoteDestinationString];
    v28 = [(__HMDRequestedCapabilitiesContext *)v26 initWithTransactionID:v22 requestedCapabilities:v50 destinationAddress:v27 responseQueue:queue completionHandler:v53];

    os_unfair_lock_lock_with_options();
    if (self)
    {
      requestContexts = self->_requestContexts;
    }

    else
    {
      requestContexts = 0;
    }

    v30 = requestContexts;
    [(NSMutableDictionary *)v30 setObject:v28 forKeyedSubscript:v22];

    os_unfair_lock_unlock(&self->_lock);
    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [(HMDRemoteMessage *)v21 identifier];
      v36 = [v56 shortDescription];
      *buf = 138544130;
      v61 = v34;
      v62 = 2114;
      v63 = v22;
      v64 = 2114;
      v65 = v35;
      v66 = 2114;
      v67 = v36;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Sending message %{public}@ to elect device with capabilities: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v31);
    v37 = [(HMDUserDeviceCapabilitiesRequestManager *)v32 _responseHandlerForTransactionID:v22];
    [(HMDRemoteMessage *)v21 setResponseHandler:v37];

    if (self)
    {
      messageDispatcher = v32->_messageDispatcher;
    }

    else
    {
      messageDispatcher = 0;
    }

    [(HMDMessageDispatcher *)messageDispatcher sendMessage:v21 completionHandler:0];
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    v40 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543874;
      v61 = v42;
      v62 = 2112;
      v63 = v54;
      v64 = 2112;
      v65 = v55;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot elect device: could not create message destination for userID: %@, destination: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v39);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __143__HMDUserDeviceCapabilitiesRequestManager_electDeviceForUserID_destination_deviceCapabilities_responseTimeout_responseQueue_completionHandler___block_invoke;
    block[3] = &unk_278688B80;
    v59 = v53;
    dispatch_async(queue, block);
    v21 = v59;
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __143__HMDUserDeviceCapabilitiesRequestManager_electDeviceForUserID_destination_deviceCapabilities_responseTimeout_responseQueue_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  (*(v1 + 16))(v1, v2, 0, MEMORY[0x277CBEC10]);
}

- (void)registerForMessages
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (isInternalBuild())
  {
    if (self)
    {
      messageDispatcher = self->_messageDispatcher;
    }

    else
    {
      messageDispatcher = 0;
    }

    v4 = messageDispatcher;
    v5 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v8[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(HMDMessageDispatcher *)v4 registerForMessage:@"hm.reqcap" receiver:self policies:v6 selector:sel__handleRequestCapabilitiesXPCRequest_];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (HMDUserDeviceCapabilitiesRequestManager)initWithHomeManager:(id)a3 accountRegistry:(id)a4 messageDispatcher:(id)a5 timerManager:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v20.receiver = self;
  v20.super_class = HMDUserDeviceCapabilitiesRequestManager;
  v13 = [(HMDRemoteMessageTransport *)&v20 initWithAccountRegistry:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_homeManager, v10);
    objc_storeStrong(&v14->_messageDispatcher, a5);
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestContexts = v14->_requestContexts;
    v14->_requestContexts = v15;

    objc_storeStrong(&v14->_timerManager, a6);
    [(HMFTimerManager *)v14->_timerManager setDelegate:v14];
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    timerContextsToCancel = v14->_timerContextsToCancel;
    v14->_timerContextsToCancel = v17;
  }

  return v14;
}

- (HMDUserDeviceCapabilitiesRequestManager)initWithHomeManager:(id)a3 accountRegistry:(id)a4 messageDispatcher:(id)a5
{
  v8 = MEMORY[0x277D0F930];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithOptions:0];
  v13 = [(HMDUserDeviceCapabilitiesRequestManager *)self initWithHomeManager:v11 accountRegistry:v10 messageDispatcher:v9 timerManager:v12];

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t20_139245 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t20_139245, &__block_literal_global_139246);
  }

  v3 = logCategory__hmf_once_v21_139247;

  return v3;
}

void __54__HMDUserDeviceCapabilitiesRequestManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v21_139247;
  logCategory__hmf_once_v21_139247 = v1;
}

@end