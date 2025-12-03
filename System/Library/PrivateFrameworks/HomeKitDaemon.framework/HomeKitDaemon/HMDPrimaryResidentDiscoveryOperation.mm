@interface HMDPrimaryResidentDiscoveryOperation
+ (id)logCategory;
- (HMDHome)home;
- (HMDPrimaryResidentDiscoveryOperation)initWithHome:(id)home messageDispatcher:(id)dispatcher featuresDataSource:(id)source context:(id)context;
- (HMDResidentDeviceManagerContext)context;
- (void)cancel;
- (void)cancelWithError:(id)error;
- (void)channel:(id)channel didObservePrimaryResidentChange:(id)change;
- (void)checkResidentStatusChannelForPrimary;
- (void)finish;
- (void)main;
- (void)residentStatusChannelCleanup;
- (void)run;
- (void)sendIDSAccountMessage;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDPrimaryResidentDiscoveryOperation

void __61__HMDPrimaryResidentDiscoveryOperation_sendIDSAccountMessage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    [*(*(a1 + 32) + 352) setAccountMessageNoPrimaryResolved:1];
    [*(*(a1 + 32) + 352) setAccountMessageError:v5];
    v8 = [*(a1 + 32) initialDiscoveryAttemptCompletionPromise];
    [v8 rejectWithError:v5];
  }

  else
  {
    v8 = [v6 hmf_UUIDForKey:@"uuid"];
    if (v8)
    {
      v9 = [*(a1 + 32) initialDiscoveryAttemptCompletionPromise];
      [v9 fulfillWithNoValue];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 32);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Primary resident UUID in the response is nil", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v9 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      [*(*(a1 + 32) + 352) setAccountMessageNoPrimaryResolved:1];
      [*(*(a1 + 32) + 352) setAccountMessageError:v9];
      v14 = [*(a1 + 32) initialDiscoveryAttemptCompletionPromise];
      [v14 rejectWithError:v9];
    }
  }

  v15 = [*(a1 + 32) responseHandler];
  (v15)[2](v15, v5, v7);

  v16 = *MEMORY[0x277D85DE8];
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDResidentDeviceManagerContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (void)channel:(id)channel didObservePrimaryResidentChange:(id)change
{
  v5 = [(HMFOperation *)self underlyingQueue:channel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__HMDPrimaryResidentDiscoveryOperation_channel_didObservePrimaryResidentChange___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)timerDidFire:(id)fire
{
  v34 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  if (([(HMDPrimaryResidentDiscoveryOperation *)self isCancelled]& 1) == 0)
  {
    sendAccountMessageTimer = [(HMDPrimaryResidentDiscoveryOperation *)self sendAccountMessageTimer];

    if (sendAccountMessageTimer == fireCopy)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Primary resident not found via StatusKit, falling back to PrimaryResidentDiscoveryMessage", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      context = [(HMDPrimaryResidentDiscoveryOperation *)selfCopy context];
      residentStatusChannel = [context residentStatusChannel];
      presentResidentStatuses = [residentStatusChannel presentResidentStatuses];
      v14 = [presentResidentStatuses count];

      [(HMDPrimaryResidentDiscoveryLogEvent *)selfCopy->_logEvent setResidentChannelActive:v14 != 0];
      if (v14)
      {
        [(HMDPrimaryResidentDiscoveryLogEvent *)selfCopy->_logEvent setResidentChannelActiveNoPrimaryResolved:1];
        v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [(HMDPrimaryResidentDiscoveryLogEvent *)selfCopy->_logEvent setResidentChannelActiveResolvePrimaryError:v15];
      }

      [(HMDPrimaryResidentDiscoveryOperation *)selfCopy residentStatusChannelCleanup];
      [(HMDPrimaryResidentDiscoveryOperation *)selfCopy sendIDSAccountMessage];
    }

    else
    {
      sendToNextDestinationTimer = [(HMDPrimaryResidentDiscoveryOperation *)self sendToNextDestinationTimer];

      if (sendToNextDestinationTimer == fireCopy)
      {
        candidateDestinationsEnumerator = [(HMDPrimaryResidentDiscoveryOperation *)self candidateDestinationsEnumerator];
        nextObject = [candidateDestinationsEnumerator nextObject];

        if (nextObject)
        {
          v18 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = HMFGetLogIdentifier();
            device = [nextObject device];
            shortDescription = [device shortDescription];
            *buf = 138543618;
            v31 = v21;
            v32 = 2114;
            v33 = shortDescription;
            _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Attempting next candidate via Rapport: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
          v24 = [HMDRemoteMessage alloc];
          v25 = [(HMDRemoteMessage *)v24 initWithName:@"primaryResidentDiscovery" qualityOfService:9 destination:nextObject payload:MEMORY[0x277CBEC10] type:0 timeout:0 secure:15.0 restriction:8];
          responseHandler = [(HMDPrimaryResidentDiscoveryOperation *)selfCopy2 responseHandler];
          [(HMDRemoteMessage *)v25 setResponseHandler:responseHandler];

          messageDispatcher = [(HMDPrimaryResidentDiscoveryOperation *)selfCopy2 messageDispatcher];
          [messageDispatcher sendMessage:v25];
        }

        else
        {
          v25 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
          [(HMMLogEvent *)self->_logEvent setError:v25];
        }
      }

      else
      {
        v29.receiver = self;
        v29.super_class = HMDPrimaryResidentDiscoveryOperation;
        [(HMFOperation *)&v29 timerDidFire:fireCopy];
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)residentStatusChannelCleanup
{
  home = [(HMDPrimaryResidentDiscoveryOperation *)self home];
  v4 = home;
  if (home)
  {
    v11 = home;
    supportsResidentSelection = [home supportsResidentSelection];
    v4 = v11;
    if (supportsResidentSelection)
    {
      currentUser = [v11 currentUser];
      isRestrictedGuest = [currentUser isRestrictedGuest];

      v4 = v11;
      if ((isRestrictedGuest & 1) == 0)
      {
        context = [(HMDPrimaryResidentDiscoveryOperation *)self context];
        residentStatusChannel = [context residentStatusChannel];

        [residentStatusChannel removeObserver:self];
        manager = [residentStatusChannel manager];
        [manager removeClientWithIdentifier:@"primary.resident.discovery.operation"];

        v4 = v11;
      }
    }
  }
}

- (void)cancelWithError:(id)error
{
  v6.receiver = self;
  v6.super_class = HMDPrimaryResidentDiscoveryOperation;
  [(HMFOperation *)&v6 cancelWithError:error];
  sendToNextDestinationTimer = [(HMDPrimaryResidentDiscoveryOperation *)self sendToNextDestinationTimer];
  [sendToNextDestinationTimer suspend];

  sendAccountMessageTimer = [(HMDPrimaryResidentDiscoveryOperation *)self sendAccountMessageTimer];
  [sendAccountMessageTimer suspend];

  [(HMDPrimaryResidentDiscoveryOperation *)self residentStatusChannelCleanup];
}

- (void)finish
{
  v5.receiver = self;
  v5.super_class = HMDPrimaryResidentDiscoveryOperation;
  [(HMFOperation *)&v5 finish];
  sendToNextDestinationTimer = [(HMDPrimaryResidentDiscoveryOperation *)self sendToNextDestinationTimer];
  [sendToNextDestinationTimer suspend];

  sendAccountMessageTimer = [(HMDPrimaryResidentDiscoveryOperation *)self sendAccountMessageTimer];
  [sendAccountMessageTimer suspend];
}

- (void)sendIDSAccountMessage
{
  v41 = *MEMORY[0x277D85DE8];
  home = [(HMDPrimaryResidentDiscoveryOperation *)self home];
  v4 = home;
  if (home)
  {
    owner = [home owner];
    account = [owner account];
    handles = [account handles];
    firstObject = [handles firstObject];

    if (firstObject)
    {
      v9 = [HMDRemoteAccountMessageDestination alloc];
      uuid = [v4 uuid];
      v11 = [(HMDRemoteAccountMessageDestination *)v9 initWithTarget:uuid handle:firstObject multicast:1];

      [(HMDRemoteAccountMessageDestination *)v11 setRestrictToResidentCapable:1];
      v12 = [HMDRemoteMessage alloc];
      v13 = [(HMDRemoteMessage *)v12 initWithName:@"primaryResidentDiscovery" qualityOfService:-1 destination:v11 payload:MEMORY[0x277CBEC10] type:0 timeout:0 secure:60.0];
      [(HMDPrimaryResidentDiscoveryLogEvent *)self->_logEvent setAccountMessageSent:1];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __61__HMDPrimaryResidentDiscoveryOperation_sendIDSAccountMessage__block_invoke;
      v34[3] = &unk_278689DC0;
      v34[4] = self;
      [(HMDRemoteMessage *)v13 setResponseHandler:v34];
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        candidateDestinations = [(HMDPrimaryResidentDiscoveryOperation *)selfCopy candidateDestinations];
        *buf = 138543874;
        v36 = v17;
        v37 = 2112;
        v38 = v11;
        v39 = 2114;
        v40 = candidateDestinations;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Multicasting request to %@ and then %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      messageDispatcher = [(HMDPrimaryResidentDiscoveryOperation *)selfCopy messageDispatcher];
      [messageDispatcher sendMessage:v13];

      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Starting timer for next destination request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      sendToNextDestinationTimer = [(HMDPrimaryResidentDiscoveryOperation *)v21 sendToNextDestinationTimer];
      [sendToNextDestinationTimer resume];
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v36 = v32;
        _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Could not find any account handles for home owner during primary resident discovery operation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      [(HMDPrimaryResidentDiscoveryOperation *)selfCopy2 cancel];
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v36 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Home was removed during primary resident discovery operation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    [(HMDPrimaryResidentDiscoveryOperation *)selfCopy3 cancel];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)checkResidentStatusChannelForPrimary
{
  v39 = *MEMORY[0x277D85DE8];
  underlyingQueue = [(HMFOperation *)self underlyingQueue];
  dispatch_assert_queue_V2(underlyingQueue);

  if (([(HMDPrimaryResidentDiscoveryOperation *)self isCancelled]& 1) == 0 && ![(HMFOperation *)self isFinished])
  {
    home = [(HMDPrimaryResidentDiscoveryOperation *)self home];
    if (home)
    {
      context = [(HMDPrimaryResidentDiscoveryOperation *)self context];
      residentStatusChannel = [context residentStatusChannel];

      currentPrimaryResident = [residentStatusChannel currentPrimaryResident];
      if (currentPrimaryResident)
      {
        v8 = MEMORY[0x277CBEB98];
        enabledResidents = [home enabledResidents];
        v10 = [v8 setWithArray:enabledResidents];
        v11 = [currentPrimaryResident matchingDeviceFromResidentDevices:v10];
        currentPrimaryResident = self->_currentPrimaryResident;
        self->_currentPrimaryResident = v11;

        if (self->_currentPrimaryResident)
        {
          currentPrimaryResident2 = [residentStatusChannel currentPrimaryResident];
          generationID = [currentPrimaryResident2 generationID];
          currentPrimaryResidentGenerationID = self->_currentPrimaryResidentGenerationID;
          self->_currentPrimaryResidentGenerationID = generationID;

          [(HMDPrimaryResidentDiscoveryLogEvent *)self->_logEvent setResidentChannelActive:1];
          v16 = objc_autoreleasePoolPush();
          selfCopy = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = HMFGetLogIdentifier();
            idsIdentifier = [currentPrimaryResident idsIdentifier];
            v21 = self->_currentPrimaryResidentGenerationID;
            v33 = 138543874;
            v34 = v19;
            v35 = 2114;
            v36 = idsIdentifier;
            v37 = 2112;
            v38 = v21;
            _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Primary resident located via StatusKit: %{public}@ - generation ID: %@", &v33, 0x20u);
          }

          objc_autoreleasePoolPop(v16);
          initialDiscoveryAttemptCompletionPromise = [(HMDPrimaryResidentDiscoveryOperation *)selfCopy initialDiscoveryAttemptCompletionPromise];
          [initialDiscoveryAttemptCompletionPromise fulfillWithNoValue];

          [(HMDPrimaryResidentDiscoveryOperation *)selfCopy residentStatusChannelCleanup];
          [(HMDPrimaryResidentDiscoveryOperation *)selfCopy finish];
        }

        else
        {
          v27 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = HMFGetLogIdentifier();
            enabledResidents2 = [home enabledResidents];
            v33 = 138543874;
            v34 = v30;
            v35 = 2112;
            v36 = currentPrimaryResident;
            v37 = 2112;
            v38 = enabledResidents2;
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Primary resident indicated by StatusKit: %@ not found, enabled residents: %@", &v33, 0x20u);
          }

          objc_autoreleasePoolPop(v27);
        }
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v33 = 138543362;
        v34 = v26;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Home was removed during primary resident discovery operation", &v33, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v29 = *MEMORY[0x277D85DE8];
  if (([(HMDPrimaryResidentDiscoveryOperation *)self isCancelled]& 1) == 0)
  {
    home = [(HMDPrimaryResidentDiscoveryOperation *)self home];
    v4 = home;
    if (!home)
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Home was nil during primary resident discovery operation", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      [(HMDPrimaryResidentDiscoveryOperation *)selfCopy cancel];
      goto LABEL_20;
    }

    if ([home isOwnerUser] && (objc_msgSend(v4, "hasAnyResident") & 1) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v14;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Home has 0 residents, not attempting to discover primary", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      residentStatusChannel = [MEMORY[0x277CCA9B8] hmErrorWithCode:91];
      initialDiscoveryAttemptCompletionPromise = [(HMDPrimaryResidentDiscoveryOperation *)selfCopy2 initialDiscoveryAttemptCompletionPromise];
      [initialDiscoveryAttemptCompletionPromise rejectWithError:residentStatusChannel];

      [(HMDPrimaryResidentDiscoveryOperation *)selfCopy2 cancelWithError:residentStatusChannel];
    }

    else
    {
      if (![v4 supportsResidentSelection] || (objc_msgSend(v4, "currentUser"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isRestrictedGuest"), v5, (v6 & 1) != 0))
      {
        [(HMDPrimaryResidentDiscoveryOperation *)self sendIDSAccountMessage];
LABEL_20:

        goto LABEL_21;
      }

      context = [(HMDPrimaryResidentDiscoveryOperation *)self context];
      residentStatusChannel = [context residentStatusChannel];

      if (!residentStatusChannel)
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543362;
          v28 = v21;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Resident Status Channel is nil", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
      }

      [residentStatusChannel addObserver:self];
      manager = [residentStatusChannel manager];
      [manager addClientWithIdentifier:@"primary.resident.discovery.operation"];

      underlyingQueue = [(HMFOperation *)self underlyingQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__HMDPrimaryResidentDiscoveryOperation_main__block_invoke;
      block[3] = &unk_27868A728;
      block[4] = self;
      dispatch_async(underlyingQueue, block);

      sendAccountMessageTimer = [(HMDPrimaryResidentDiscoveryOperation *)self sendAccountMessageTimer];
      [sendAccountMessageTimer resume];
    }

    goto LABEL_20;
  }

LABEL_21:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v2.receiver = self;
  v2.super_class = HMDPrimaryResidentDiscoveryOperation;
  [(HMFOperation *)&v2 cancel];
}

- (void)run
{
  defaultScheduler = [MEMORY[0x277D0F8F0] defaultScheduler];
  v3 = [defaultScheduler performOperation:self];
}

- (HMDPrimaryResidentDiscoveryOperation)initWithHome:(id)home messageDispatcher:(id)dispatcher featuresDataSource:(id)source context:(id)context
{
  homeCopy = home;
  dispatcherCopy = dispatcher;
  sourceCopy = source;
  contextCopy = context;
  v50.receiver = self;
  v50.super_class = HMDPrimaryResidentDiscoveryOperation;
  v14 = [(HMFOperation *)&v50 initWithTimeout:120.0];
  objc_storeWeak(&v14->_home, homeCopy);
  uuid = [homeCopy uuid];
  uUIDString = [uuid UUIDString];
  logIdentifier = v14->_logIdentifier;
  v14->_logIdentifier = uUIDString;

  objc_storeStrong(&v14->_messageDispatcher, dispatcher);
  objc_storeStrong(&v14->_featuresDataSource, source);
  objc_storeWeak(&v14->_context, contextCopy);
  v18 = [MEMORY[0x277D0F7C0] futureForOperation:v14];
  completionFuture = v14->_completionFuture;
  v14->_completionFuture = v18;

  v20 = [MEMORY[0x277D0F7C0] futureWithPromise:&v14->_initialDiscoveryAttemptCompletionPromise];
  initialDiscoveryAttemptCompletionFuture = v14->_initialDiscoveryAttemptCompletionFuture;
  v14->_initialDiscoveryAttemptCompletionFuture = v20;

  v22 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:2 options:15.0];
  sendAccountMessageTimer = v14->_sendAccountMessageTimer;
  v14->_sendAccountMessageTimer = v22;

  [(HMFTimer *)v14->_sendAccountMessageTimer setDelegate:v14];
  underlyingQueue = [(HMFOperation *)v14 underlyingQueue];
  [(HMFTimer *)v14->_sendAccountMessageTimer setDelegateQueue:underlyingQueue];

  v25 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:6 options:1.0];
  sendToNextDestinationTimer = v14->_sendToNextDestinationTimer;
  v14->_sendToNextDestinationTimer = v25;

  [(HMFTimer *)v14->_sendToNextDestinationTimer setDelegate:v14];
  underlyingQueue2 = [(HMFOperation *)v14 underlyingQueue];
  [(HMFTimer *)v14->_sendToNextDestinationTimer setDelegateQueue:underlyingQueue2];

  v28 = [HMDPrimaryResidentDiscoveryLogEvent alloc];
  uuid2 = [homeCopy uuid];
  v30 = [(HMDPrimaryResidentDiscoveryLogEvent *)v28 initWithHomeUUID:uuid2];
  logEvent = v14->_logEvent;
  v14->_logEvent = v30;

  objc_initWeak(&location, v14);
  objc_initWeak(&from, homeCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__HMDPrimaryResidentDiscoveryOperation_initWithHome_messageDispatcher_featuresDataSource_context___block_invoke;
  aBlock[3] = &unk_278676640;
  objc_copyWeak(&v46, &location);
  objc_copyWeak(&v47, &from);
  v32 = _Block_copy(aBlock);
  responseHandler = v14->_responseHandler;
  v14->_responseHandler = v32;

  uuid3 = [homeCopy uuid];
  enabledResidents = [homeCopy enabledResidents];
  v36 = [enabledResidents sortedArrayUsingComparator:&__block_literal_global_82204];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __98__HMDPrimaryResidentDiscoveryOperation_initWithHome_messageDispatcher_featuresDataSource_context___block_invoke_2;
  v43[3] = &unk_278676688;
  v37 = uuid3;
  v44 = v37;
  v38 = [v36 na_map:v43];
  candidateDestinations = v14->_candidateDestinations;
  v14->_candidateDestinations = v38;

  objectEnumerator = [(NSArray *)v14->_candidateDestinations objectEnumerator];
  candidateDestinationsEnumerator = v14->_candidateDestinationsEnumerator;
  v14->_candidateDestinationsEnumerator = objectEnumerator;

  objc_destroyWeak(&v47);
  objc_destroyWeak(&v46);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v14;
}

void __98__HMDPrimaryResidentDiscoveryOperation_initWithHome_messageDispatcher_featuresDataSource_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    if (v8 && ([WeakRetained isCancelled] & 1) == 0)
    {
      v9 = [v6 hmf_UUIDForKey:@"uuid"];
      if (v9)
      {
        v10 = [v8 enabledResidents];
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __98__HMDPrimaryResidentDiscoveryOperation_initWithHome_messageDispatcher_featuresDataSource_context___block_invoke_12;
        v44[3] = &unk_2786850E0;
        v11 = v9;
        v45 = v11;
        v12 = [v10 na_firstObjectPassingTest:v44];
        v13 = WeakRetained[42];
        WeakRetained[42] = v12;

        if (!WeakRetained[42])
        {
          v14 = [v6 hmf_stringForKey:@"kIDSMessageSourceIDKey"];
          v15 = [HMDDeviceHandle deviceHandleForDestination:v14];
          v16 = +[HMDAccountRegistry sharedRegistry];
          v43 = v15;
          v17 = [v16 deviceForHandle:v15];

          v42 = v17;
          v18 = [[HMDResidentDevice alloc] initWithDevice:v17 home:v8];
          v19 = WeakRetained[42];
          WeakRetained[42] = v18;

          context = objc_autoreleasePoolPush();
          v20 = WeakRetained;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v40 = v14;
            v23 = v22 = v11;
            v24 = WeakRetained[42];
            *buf = 138543618;
            v47 = v23;
            v48 = 2112;
            v49 = v24;
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Creating new primary resident %@ because the one that responded was unknown", buf, 0x16u);

            v11 = v22;
            v14 = v40;
          }

          objc_autoreleasePoolPop(context);
        }

        v25 = [v6 hmf_UUIDForKey:@"gen"];
        v26 = WeakRetained[43];
        WeakRetained[43] = v25;

        v27 = objc_autoreleasePoolPush();
        v28 = WeakRetained;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = HMFGetLogIdentifier();
          v31 = v11;
          v32 = v30;
          v33 = WeakRetained[43];
          *buf = 138543874;
          v47 = v30;
          v48 = 2114;
          v49 = v31;
          v50 = 2112;
          v51 = v33;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Primary resident located: %{public}@ - generation ID: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v27);
        [v28 finish];
        v34 = v45;
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = WeakRetained;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543618;
          v47 = v38;
          v48 = 2112;
          v49 = v5;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Received invalid/error response, forcing next destination: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v35);
        v34 = [v36 sendToNextDestinationTimer];
        [v34 fire];
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

HMDRemoteDeviceMessageDestination *__98__HMDPrimaryResidentDiscoveryOperation_initWithHome_messageDispatcher_featuresDataSource_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCurrentDevice])
  {
    v4 = 0;
  }

  else
  {
    v5 = [HMDRemoteDeviceMessageDestination alloc];
    v6 = *(a1 + 32);
    v7 = [v3 device];
    v4 = [(HMDRemoteDeviceMessageDestination *)v5 initWithTarget:v6 device:v7];
  }

  return v4;
}

uint64_t __98__HMDPrimaryResidentDiscoveryOperation_initWithHome_messageDispatcher_featuresDataSource_context___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 isReachable];
  v7 = [v5 isReachable];

  if (v6 == v7)
  {
    v8 = 0;
  }

  else if ([v4 isReachable])
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

uint64_t __98__HMDPrimaryResidentDiscoveryOperation_initWithHome_messageDispatcher_featuresDataSource_context___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_82220 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_82220, &__block_literal_global_40_82221);
  }

  v3 = logCategory__hmf_once_v17_82222;

  return v3;
}

void __51__HMDPrimaryResidentDiscoveryOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17_82222;
  logCategory__hmf_once_v17_82222 = v1;
}

@end