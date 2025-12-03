@interface HMDUserDeviceCapabilitiesRequestManager
+ (id)logCategory;
- (HMDUserDeviceCapabilitiesRequestManager)initWithHomeManager:(id)manager accountRegistry:(id)registry messageDispatcher:(id)dispatcher;
- (HMDUserDeviceCapabilitiesRequestManager)initWithHomeManager:(id)manager accountRegistry:(id)registry messageDispatcher:(id)dispatcher timerManager:(id)timerManager;
- (NSUUID)messageTargetUUID;
- (id)_responseHandlerForTransactionID:(id)d;
- (id)_selectBestResponseForContext:(id)context;
- (id)_updateDeviceCapabilities:(id)capabilities withDestination:(id)destination;
- (id)homeManager;
- (void)_cancelPendingTimerContexts;
- (void)_completeWithResponse:(id)response error:(id)error context:(id)context;
- (void)_handleRequestCapabilitiesXPCRequest:(id)request;
- (void)_handleResponsePayload:(id)payload error:(id)error transactionID:(id)d;
- (void)_updateResponseTimeoutForContext:(id)context;
- (void)electDeviceForUserID:(id)d destination:(id)destination deviceCapabilities:(id)capabilities responseTimeout:(double)timeout responseQueue:(id)queue completionHandler:(id)handler;
- (void)registerForMessages;
- (void)timerManager:(id)manager didFireForTimerContext:(id)context;
@end

@implementation HMDUserDeviceCapabilitiesRequestManager

- (NSUUID)messageTargetUUID
{
  homeManager = [(HMDUserDeviceCapabilitiesRequestManager *)&self->super.super.super.super.isa homeManager];
  messageTargetUUID = [homeManager messageTargetUUID];

  return messageTargetUUID;
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

- (void)_handleRequestCapabilitiesXPCRequest:(id)request
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  messagePayload = [requestCopy messagePayload];
  v6 = [messagePayload mutableCopy];

  v7 = [requestCopy stringForKey:@"kUserIDKey"];
  if (v7)
  {
    selfCopy = self;
    v24 = v6;
    homeManager = [(HMDUserDeviceCapabilitiesRequestManager *)&self->super.super.super.super.isa homeManager];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    homes = [homeManager homes];
    v10 = [homes countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(homes);
          }

          users = [*(*(&v27 + 1) + 8 * i) users];
          v15 = [users hmf_firstObjectWithValue:v7 forKeyPath:@"userID"];

          if (v15)
          {

            v6 = v24;
            [v24 removeObjectForKey:@"kUserIDKey"];
            userID = [v15 userID];
            v17 = [v24 copy];
            workQueue = [homeManager workQueue];
            v25[0] = MEMORY[0x277D85DD0];
            v25[1] = 3221225472;
            v25[2] = __80__HMDUserDeviceCapabilitiesRequestManager__handleRequestCapabilitiesXPCRequest___block_invoke;
            v25[3] = &unk_27867A9D8;
            v26 = requestCopy;
            [(HMDUserDeviceCapabilitiesRequestManager *)selfCopy electDeviceForUserID:userID destination:0 deviceCapabilities:v17 responseTimeout:workQueue responseQueue:v25 completionHandler:0.0];

            goto LABEL_12;
          }
        }

        v11 = [homes countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"The specified userID is not known" reason:0 suggestion:0];
    [requestCopy respondWithError:v15];
    v6 = v24;
LABEL_12:
  }

  else
  {
    v19 = MEMORY[0x277CCA9B8];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"UserID must be set in the payload with key %@.", @"kUserIDKey"];
    v21 = [v19 hmErrorWithCode:2 description:@"Cannot send capabilities request because the userID is missing" reason:v20 suggestion:0];

    [requestCopy respondWithError:v21];
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

- (void)timerManager:(id)manager didFireForTimerContext:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  contextCopy = context;
  object = [contextCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = object;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      transactionID = [v10 transactionID];
      v26 = 138543618;
      v27 = v14;
      v28 = 2114;
      v29 = transactionID;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Response timer fired", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    os_unfair_lock_lock_with_options();
    [v10 setTimerContext:0];
    v16 = [(HMDUserDeviceCapabilitiesRequestManager *)selfCopy _selectBestResponseForContext:v10];
    v17 = [v16 objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
    if (!(v16 | v17))
    {
      v19 = objc_autoreleasePoolPush();
      v20 = selfCopy;
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

    [(HMDUserDeviceCapabilitiesRequestManager *)selfCopy _completeWithResponse:v16 error:v17 context:v10];

    os_unfair_lock_unlock(&selfCopy->_lock);
    [(HMDUserDeviceCapabilitiesRequestManager *)selfCopy _cancelPendingTimerContexts];
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

- (void)_updateResponseTimeoutForContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_lock);
  timerContext = [contextCopy timerContext];

  if (timerContext)
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
    timerContext2 = [contextCopy timerContext];
    [(NSMutableArray *)v7 addObject:timerContext2];
  }

  receivedResponses = [contextCopy receivedResponses];
  v10 = [receivedResponses count];

  v11 = remotePendingResponseTimerNanoseconds / ((1000000000 * v10 + 1000000000) * remotePendingResponseDecayScale);
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    transactionID = [contextCopy transactionID];
    v20 = 138543874;
    v21 = v15;
    v22 = 2114;
    v23 = transactionID;
    v24 = 2048;
    v25 = v11;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@[%{public}@] Updating response timeout to %llu seconds", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  if (selfCopy)
  {
    timerManager = selfCopy->_timerManager;
  }

  else
  {
    timerManager = 0;
  }

  v18 = [(HMFTimerManager *)timerManager startTimerWithTimeInterval:contextCopy object:v11];
  [contextCopy setTimerContext:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_completeWithResponse:(id)response error:(id)error context:(id)context
{
  v63[1] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  contextCopy = context;
  os_unfair_lock_assert_owner(&self->_lock);
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = v11;
  v13 = 0;
  if (!responseCopy || errorCopy)
  {
    v14 = v11;
  }

  else
  {
    v48 = [responseCopy hmf_stringForKey:@"kIDSMessageSourceIDKey"];
    v13 = [HMDDeviceHandle deviceHandleForDestination:?];
    v14 = [responseCopy mutableCopy];

    v63[0] = @"kIDSMessageSourceIDKey";
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
    [v14 removeObjectsForKeys:v15];

    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      transactionID = [contextCopy transactionID];
      *buf = 138544130;
      v56 = v19;
      v57 = 2114;
      v58 = transactionID;
      v59 = 2112;
      v60 = v13;
      v61 = 2114;
      v62 = v14;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Elected device %@ with capabilities: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v16);
    v21 = [responseCopy hmf_numberForKey:@"kHomedVersionKey"];
    if (v21)
    {
      v47 = v14;
      v22 = [HMDHomeKitVersion alloc];
      stringValue = [v21 stringValue];
      v24 = [(HMDHomeKitVersion *)v22 initWithString:stringValue];

      v54 = 0;
      accountRegistry = [(HMDRemoteMessageTransport *)selfCopy accountRegistry];
      v26 = [accountRegistry deviceForHandle:v13 exists:&v54];

      if (v54 == 1)
      {
        version = [v26 version];
        v28 = [version isEqualToVersion:v24];

        if ((v28 & 1) == 0)
        {
          v29 = objc_autoreleasePoolPush();
          v30 = selfCopy;
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

    errorCopy = 0;
  }

  responseQueue = [contextCopy responseQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__HMDUserDeviceCapabilitiesRequestManager__completeWithResponse_error_context___block_invoke;
  block[3] = &unk_2786891E0;
  v34 = contextCopy;
  v50 = v34;
  v35 = errorCopy;
  v51 = v35;
  v36 = v13;
  v52 = v36;
  v37 = v14;
  v53 = v37;
  dispatch_async(responseQueue, block);

  if (self)
  {
    requestContexts = self->_requestContexts;
  }

  else
  {
    requestContexts = 0;
  }

  v39 = requestContexts;
  transactionID2 = [v34 transactionID];
  [(NSMutableDictionary *)v39 removeObjectForKey:transactionID2];

  timerContext = [v34 timerContext];

  if (timerContext)
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
    timerContext2 = [v34 timerContext];
    [(NSMutableArray *)v43 addObject:timerContext2];

    [v34 setTimerContext:0];
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __79__HMDUserDeviceCapabilitiesRequestManager__completeWithResponse_error_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

- (id)_selectBestResponseForContext:(id)context
{
  contextCopy = context;
  receivedResponses = [contextCopy receivedResponses];
  v6 = [receivedResponses count];

  if (v6)
  {
    receivedResponses2 = [contextCopy receivedResponses];
    requestedCapabilities = [contextCopy requestedCapabilities];
    v9 = [(HMDRemoteMessageTransport *)self matchResponse:receivedResponses2 requestedCapabilities:requestedCapabilities];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_handleResponsePayload:(id)payload error:(id)error transactionID:(id)d
{
  v73 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  errorCopy = error;
  dCopy = d;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self)
  {
    requestContexts = self->_requestContexts;
  }

  else
  {
    requestContexts = 0;
  }

  v12 = [(NSMutableDictionary *)requestContexts objectForKeyedSubscript:dCopy];
  if (v12)
  {
    v58 = dCopy;
    v13 = errorCopy;
    v14 = [payloadCopy hmf_BOOLForKey:@"kRemoteMessageIsFinalResponseKey"];
    v15 = [payloadCopy hmf_stringForKey:@"kIDSMessageSourceIDKey"];
    v16 = [payloadCopy mutableCopy];
    [v16 removeObjectForKey:@"kRemoteMessageIsFinalResponseKey"];
    v17 = [v16 copy];

    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    destinationAddress = [v12 destinationAddress];
    v25 = [destinationAddress isEqualToString:v15];

    if (v25)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      dCopy = v58;
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
      errorCopy = v13;
      [(HMDUserDeviceCapabilitiesRequestManager *)v27 _completeWithResponse:v17 error:v13 context:v12];
    }

    else
    {
      dCopy = v58;
      if ([v17 count])
      {
        receivedResponses = [v12 receivedResponses];
        [receivedResponses addObject:v17];
      }

      requestedCapabilities = [v12 requestedCapabilities];
      v32 = [(HMDRemoteMessageTransport *)selfCopy doesResponse:v17 matchAllCapabilities:requestedCapabilities];

      errorCopy = v13;
      if (v32)
      {
        v33 = objc_autoreleasePoolPush();
        v34 = selfCopy;
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
        errorCopy = v38;
        v17 = v37;
      }

      else if (v14)
      {
        v39 = [(HMDUserDeviceCapabilitiesRequestManager *)selfCopy _selectBestResponseForContext:v12];
        v40 = v39;
        if (v39)
        {
          v41 = v39;

          v42 = [v41 objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

          errorCopy = v42;
          v17 = v41;
        }

        v43 = objc_autoreleasePoolPush();
        v44 = selfCopy;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = HMFGetLogIdentifier();
          [v12 receivedResponses];
          v47 = errorCopy;
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
          errorCopy = v47;
        }

        objc_autoreleasePoolPop(v43);
        [(HMDUserDeviceCapabilitiesRequestManager *)v44 _completeWithResponse:v17 error:errorCopy context:v12];

        dCopy = v58;
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        v52 = selfCopy;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          v54 = HMFGetLogIdentifier();
          receivedResponses2 = [v12 receivedResponses];
          v56 = [receivedResponses2 count];
          *buf = 138543874;
          v60 = v54;
          v61 = 2114;
          v62 = v58;
          v63 = 2048;
          v64 = v56;
          _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Received %lu responses so far but they do not match all capabilities", buf, 0x20u);

          dCopy = v58;
        }

        objc_autoreleasePoolPop(v51);
        [(HMDUserDeviceCapabilitiesRequestManager *)v52 _updateResponseTimeoutForContext:v12];
      }
    }

    payloadCopy = v17;
  }

  v57 = *MEMORY[0x277D85DE8];
}

- (id)_responseHandlerForTransactionID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__HMDUserDeviceCapabilitiesRequestManager__responseHandlerForTransactionID___block_invoke;
  aBlock[3] = &unk_278687F40;
  objc_copyWeak(&v10, &location);
  v9 = dCopy;
  v5 = dCopy;
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

- (id)_updateDeviceCapabilities:(id)capabilities withDestination:(id)destination
{
  capabilitiesCopy = capabilities;
  destinationCopy = destination;
  if (destinationCopy)
  {
    v7 = capabilitiesCopy;
  }

  else
  {
    if (capabilitiesCopy)
    {
      dictionary = [capabilitiesCopy mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    v7 = dictionary;
    v9 = [dictionary hmf_dictionaryForKey:@"kRequestedCapabilitiesKey"];
    dictionary2 = [v9 mutableCopy];

    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    }

    [dictionary2 setObject:&unk_283E72F98 forKeyedSubscript:@"kHomedVersionKey"];
    [v7 setObject:dictionary2 forKeyedSubscript:@"kRequestedCapabilitiesKey"];
  }

  return v7;
}

- (void)electDeviceForUserID:(id)d destination:(id)destination deviceCapabilities:(id)capabilities responseTimeout:(double)timeout responseQueue:(id)queue completionHandler:(id)handler
{
  v68 = *MEMORY[0x277D85DE8];
  dCopy = d;
  destinationCopy = destination;
  queue = queue;
  handlerCopy = handler;
  v55 = destinationCopy;
  v56 = [(HMDUserDeviceCapabilitiesRequestManager *)self _updateDeviceCapabilities:capabilities withDestination:destinationCopy];
  if (timeout == 0.0)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    timeout = 60.0;
  }

  messageTargetUUID = [(HMDUserDeviceCapabilitiesRequestManager *)self messageTargetUUID];
  accountRegistry = [(HMDRemoteMessageTransport *)self accountRegistry];
  v57 = [HMDMessageDispatcher destinationWithTarget:messageTargetUUID userID:dCopy destination:v55 multicast:1 accountRegistry:accountRegistry];

  if (v57)
  {
    v21 = [[HMDRemoteMessage alloc] initWithName:@"kElectDeviceForIDSSessionKey" qualityOfService:9 destination:v57 payload:v56 type:0 timeout:0 secure:timeout restriction:-1 sendOptions:2];
    transactionIdentifier = [(HMDRemoteMessage *)v21 transactionIdentifier];
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
      selfCopy2 = self;
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
    remoteDestinationString = [v51 remoteDestinationString];
    v28 = [(__HMDRequestedCapabilitiesContext *)v26 initWithTransactionID:transactionIdentifier requestedCapabilities:v50 destinationAddress:remoteDestinationString responseQueue:queue completionHandler:handlerCopy];

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
    [(NSMutableDictionary *)v30 setObject:v28 forKeyedSubscript:transactionIdentifier];

    os_unfair_lock_unlock(&self->_lock);
    v31 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      identifier = [(HMDRemoteMessage *)v21 identifier];
      shortDescription = [v56 shortDescription];
      *buf = 138544130;
      v61 = v34;
      v62 = 2114;
      v63 = transactionIdentifier;
      v64 = 2114;
      v65 = identifier;
      v66 = 2114;
      v67 = shortDescription;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Sending message %{public}@ to elect device with capabilities: %{public}@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v31);
    v37 = [(HMDUserDeviceCapabilitiesRequestManager *)selfCopy3 _responseHandlerForTransactionID:transactionIdentifier];
    [(HMDRemoteMessage *)v21 setResponseHandler:v37];

    if (self)
    {
      messageDispatcher = selfCopy3->_messageDispatcher;
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
    selfCopy4 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543874;
      v61 = v42;
      v62 = 2112;
      v63 = dCopy;
      v64 = 2112;
      v65 = v55;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot elect device: could not create message destination for userID: %@, destination: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v39);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __143__HMDUserDeviceCapabilitiesRequestManager_electDeviceForUserID_destination_deviceCapabilities_responseTimeout_responseQueue_completionHandler___block_invoke;
    block[3] = &unk_278688B80;
    v59 = handlerCopy;
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

- (HMDUserDeviceCapabilitiesRequestManager)initWithHomeManager:(id)manager accountRegistry:(id)registry messageDispatcher:(id)dispatcher timerManager:(id)timerManager
{
  managerCopy = manager;
  dispatcherCopy = dispatcher;
  timerManagerCopy = timerManager;
  v20.receiver = self;
  v20.super_class = HMDUserDeviceCapabilitiesRequestManager;
  v13 = [(HMDRemoteMessageTransport *)&v20 initWithAccountRegistry:registry];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_homeManager, managerCopy);
    objc_storeStrong(&v14->_messageDispatcher, dispatcher);
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestContexts = v14->_requestContexts;
    v14->_requestContexts = v15;

    objc_storeStrong(&v14->_timerManager, timerManager);
    [(HMFTimerManager *)v14->_timerManager setDelegate:v14];
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    timerContextsToCancel = v14->_timerContextsToCancel;
    v14->_timerContextsToCancel = v17;
  }

  return v14;
}

- (HMDUserDeviceCapabilitiesRequestManager)initWithHomeManager:(id)manager accountRegistry:(id)registry messageDispatcher:(id)dispatcher
{
  v8 = MEMORY[0x277D0F930];
  dispatcherCopy = dispatcher;
  registryCopy = registry;
  managerCopy = manager;
  v12 = [[v8 alloc] initWithOptions:0];
  v13 = [(HMDUserDeviceCapabilitiesRequestManager *)self initWithHomeManager:managerCopy accountRegistry:registryCopy messageDispatcher:dispatcherCopy timerManager:v12];

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