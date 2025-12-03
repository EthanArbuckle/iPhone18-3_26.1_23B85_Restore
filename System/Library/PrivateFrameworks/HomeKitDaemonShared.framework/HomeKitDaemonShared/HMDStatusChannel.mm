@interface HMDStatusChannel
+ (id)logCategory;
- (HMDStatusChannel)initWithChannelPrefix:(id)prefix identifier:(id)identifier queue:(id)queue logEventSubmitter:(id)submitter idsIdentifierProvider:(id)provider;
- (HMDStatusChannel)initWithChannelPrefix:(id)prefix identifier:(id)identifier queue:(id)queue netMonitor:(id)monitor timerProvider:(id)provider presenceProvider:(id)presenceProvider logEventSubmitter:(id)submitter idsIdentifierProvider:(id)self0;
- (id)_createBackoffTimerWithMinimumTimeInterval:(double)interval maximumTimeInterval:(double)timeInterval;
- (id)_createTimerWithTimeout:(double)timeout;
- (id)_recordsFromPresence:(id)presence;
- (id)_urisFromSKHandles:(id)handles;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)invitedURIs;
- (id)presencePayload;
- (void)_addDelegate:(id)delegate;
- (void)_assertPresenceWithIsRetry:(BOOL)retry;
- (void)_checkForInitialStatusKitCloudKitImportAndSubscribe;
- (void)_deassertPresenceWithIsRetry:(BOOL)retry;
- (void)_handleAssertionLogTimerFired;
- (void)_handlePresentDevicesChangedForPresence:(id)presence;
- (void)_requestPublishShouldDebounce:(BOOL)debounce;
- (void)_setInvitedUsers:(id)users withCompletion:(id)completion;
- (void)_startAssertionLogTimer;
- (void)_stopAssertionLogTimer;
- (void)_stopPostRegainNetworkConnectivityTimer;
- (void)_stopPublishing;
- (void)_subscribeToStatusKitWithIsRetry:(BOOL)retry;
- (void)_unsubscribeFromStatusKitWithIsRetry:(BOOL)retry;
- (void)addDelegate:(id)delegate withCompletion:(id)completion;
- (void)dealloc;
- (void)initialCloudKitImportReceived:(id)received;
- (void)networkMonitorIsReachable:(id)reachable;
- (void)networkMonitorIsUnreachable:(id)unreachable;
- (void)presentDevicesChangedForPresence:(id)presence;
- (void)publishRecordWithPayload:(id)payload shouldDebounce:(BOOL)debounce withCompletion:(id)completion;
- (void)setInvitedUsers:(id)users withCompletion:(id)completion;
- (void)startWithCompletion:(id)completion;
- (void)stopPublishingWithCompletion:(id)completion;
- (void)stopWithCompletion:(id)completion;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDStatusChannel

- (void)_handleAssertionLogTimerFired
{
  v42 = *MEMORY[0x277D85DE8];
  idsIdentifierProvider = [(HMDStatusChannel *)self idsIdentifierProvider];
  getCurrentDeviceId = [idsIdentifierProvider getCurrentDeviceId];

  presenceChannel = [(HMDStatusChannel *)self presenceChannel];
  presentDevices = [presenceChannel presentDevices];

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __49__HMDStatusChannel__handleAssertionLogTimerFired__block_invoke;
  v24[3] = &unk_27976FB48;
  v7 = getCurrentDeviceId;
  v25 = v7;
  [presentDevices na_any:v24];
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    localPayload = [(HMDStatusChannel *)selfCopy localPayload];
    HMFBooleanToString();
    v12 = v22 = v7;
    lastPublishTimestamp = [(HMDStatusChannel *)selfCopy lastPublishTimestamp];
    [(HMDStatusChannel *)selfCopy lastStopPublishTimestamp];
    v14 = v23 = v8;
    v15 = HMFBooleanToString();
    v20 = presentDevices;
    v16 = [presentDevices count];
    [(HMDStatusChannel *)selfCopy isConnected];
    v17 = HMFBooleanToString();
    lastConnectivityChangeTimestamp = [(HMDStatusChannel *)selfCopy lastConnectivityChangeTimestamp];
    *buf = 138545154;
    v27 = v11;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = lastPublishTimestamp;
    v32 = 2112;
    v33 = v14;
    v34 = 2112;
    v35 = v15;
    v36 = 2048;
    v37 = v16;
    presentDevices = v20;
    v38 = 2112;
    v39 = v17;
    v40 = 2112;
    v41 = lastConnectivityChangeTimestamp;
    _os_log_impl(&dword_2540F2000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Asserting: %@, last assertion: %@, last de-assertion: %@, assertion in channel: %@ (%lu), connected: %@, last connection change: %@", buf, 0x52u);

    v8 = v23;
    v7 = v22;
  }

  objc_autoreleasePoolPop(v8);
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __49__HMDStatusChannel__handleAssertionLogTimerFired__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDStatusChannelRecord alloc] initWithPresentDevice:v3];

  v5 = [(HMDStatusChannelRecord *)v4 idsIdentifier];
  v6 = [v5 hmf_isEqualToUUID:*(a1 + 32)];

  return v6;
}

- (void)_stopAssertionLogTimer
{
  assertionLogTimer = [(HMDStatusChannel *)self assertionLogTimer];
  [assertionLogTimer cancel];

  [(HMDStatusChannel *)self setAssertionLogTimer:0];
}

- (void)_startAssertionLogTimer
{
  assertionLogTimer = [(HMDStatusChannel *)self assertionLogTimer];

  if (!assertionLogTimer)
  {
    timerProvider = [(HMDStatusChannel *)self timerProvider];
    v5 = [timerProvider timerWithTimeInterval:4 options:600.0];
    [(HMDStatusChannel *)self setAssertionLogTimer:v5];

    assertionLogTimer2 = [(HMDStatusChannel *)self assertionLogTimer];
    [assertionLogTimer2 setDelegate:self];

    queue = self->_queue;
    assertionLogTimer3 = [(HMDStatusChannel *)self assertionLogTimer];
    [assertionLogTimer3 setDelegateQueue:queue];

    assertionLogTimer4 = [(HMDStatusChannel *)self assertionLogTimer];
    [assertionLogTimer4 resume];
  }
}

- (id)_createBackoffTimerWithMinimumTimeInterval:(double)interval maximumTimeInterval:(double)timeInterval
{
  v19 = *MEMORY[0x277D85DE8];
  timerProvider = [(HMDStatusChannel *)self timerProvider];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    timerProvider2 = [(HMDStatusChannel *)self timerProvider];
    v10 = [timerProvider2 backoffTimerWithMinimumTimeInterval:2 maximumTimeInterval:0 exponentialFactor:interval options:timeInterval];

    [v10 setDelegate:self];
    [v10 setDelegateQueue:self->_queue];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&dword_2540F2000, v13, OS_LOG_TYPE_ERROR, "%{public}@The timerProvider does not implement backoff timer", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_createTimerWithTimeout:(double)timeout
{
  timerProvider = [(HMDStatusChannel *)self timerProvider];
  v6 = [timerProvider timerWithTimeInterval:0 options:timeout];

  [v6 setDelegate:self];
  [v6 setDelegateQueue:self->_queue];
  [v6 resume];

  return v6;
}

- (id)_urisFromSKHandles:(id)handles
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [handles na_map:&__block_literal_global_122];
  v5 = [v3 setWithArray:v4];

  return v5;
}

id __42__HMDStatusChannel__skHandlesFromUserIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D680C0];
  v3 = a2;
  v4 = [[v2 alloc] initWithString:v3];

  return v4;
}

id __40__HMDStatusChannel__skHandlesFromUsers___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D680C0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 userID];

  v6 = [v4 initWithString:v5];

  return v6;
}

- (void)_setInvitedUsers:(id)users withCompletion:(id)completion
{
  v64 = *MEMORY[0x277D85DE8];
  usersCopy = users;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  presenceChannel = [(HMDStatusChannel *)self presenceChannel];
  invitedHandles = [presenceChannel invitedHandles];
  v9 = [(HMDStatusChannel *)self _urisFromSKHandles:invitedHandles];

  allObjects = [v9 allObjects];
  v45 = [allObjects mutableCopy];

  array = [MEMORY[0x277CBEB18] array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v12 = usersCopy;
  v13 = [v12 countByEnumeratingWithState:&v55 objects:v63 count:16];
  selfCopy = self;
  if (v13)
  {
    v15 = v13;
    v16 = *v56;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v56 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v55 + 1) + 8 * i);
        userID = [v18 userID];
        v20 = [v9 containsObject:userID];

        userID2 = [v18 userID];
        if (v20)
        {
          [v45 removeObject:userID2];
        }

        else
        {
          [array addObject:userID2];
        }

        self = selfCopy;
      }

      v15 = [v12 countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v15);
  }

  if ([array count] || objc_msgSend(v45, "count"))
  {
    v41 = [(HMDStatusChannel *)self _skHandlesFromUserIDs:array];
    v40 = [(HMDStatusChannel *)self _skHandlesFromUserIDs:v45];
    *buf = 0;
    v54 = 0;
    v22 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
    v23 = [MEMORY[0x277D0F7C0] futureWithPromise:&v54];
    v24 = [objc_alloc(MEMORY[0x277D0F7A8]) initWithQueue:self->_queue];
    v25 = MEMORY[0x277D0F7C0];
    v42 = v23;
    v43 = v22;
    v59[0] = v22;
    v59[1] = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    v27 = [v25 allSettled:v26];

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __52__HMDStatusChannel__setInvitedUsers_withCompletion___block_invoke;
    v52[3] = &unk_27976FA98;
    v53 = completionCopy;
    v28 = [v27 inContext:v24 then:v52];
    if ([v40 count])
    {
      presenceChannel2 = [(HMDStatusChannel *)self presenceChannel];
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __52__HMDStatusChannel__setInvitedUsers_withCompletion___block_invoke_2;
      v49[3] = &unk_27976FAC0;
      v49[4] = self;
      v50 = v12;
      v51 = *buf;
      [presenceChannel2 removeInvitedHandles:v40 completion:v49];
    }

    else
    {
      [*buf fulfillWithNoValue];
    }

    v30 = v41;
    if ([v41 count])
    {
      presenceChannel3 = [(HMDStatusChannel *)selfCopy presenceChannel];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __52__HMDStatusChannel__setInvitedUsers_withCompletion___block_invoke_112;
      v46[3] = &unk_27976FAC0;
      v46[4] = selfCopy;
      v47 = v12;
      v48 = v54;
      [presenceChannel3 inviteHandlesFromPrimaryAccountHandle:v41 completion:v46];
    }

    else
    {
      [v54 fulfillWithNoValue];
    }

    v32 = completionCopy;
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      channelName = [(HMDStatusChannel *)selfCopy2 channelName];
      *buf = 138543618;
      *&buf[4] = v37;
      v61 = 2112;
      v62 = channelName;
      _os_log_impl(&dword_2540F2000, v36, OS_LOG_TYPE_INFO, "%{public}@No users detected to add or remove from channel %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    v32 = completionCopy;
    v39 = MEMORY[0x259C04830](completionCopy);
    v30 = v39;
    if (v39)
    {
      (*(v39 + 16))(v39, 0);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __52__HMDStatusChannel__setInvitedUsers_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [MEMORY[0x277CBEB68] null];
          v11 = [v9 isEqual:v10];

          if ((v11 & 1) == 0)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    (*(*(a1 + 32) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

void __52__HMDStatusChannel__setInvitedUsers_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) channelName];
    v15 = 138544130;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_2540F2000, v6, OS_LOG_TYPE_INFO, "%{public}@remove users %@ from channel %@ complete with error %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [HMDStatusChannelManagementLogEvent alloc];
  v11 = [*(a1 + 32) channelPrefix];
  v12 = [(HMDStatusChannelManagementLogEvent *)v10 initWithChannelPrefix:v11 isRetry:0 action:4];

  if (v3)
  {
    [(HMMLogEvent *)v12 setError:v3];
    [*(a1 + 48) rejectWithError:v3];
  }

  else
  {
    [*(a1 + 48) fulfillWithNoValue];
  }

  v13 = [*(a1 + 32) logEventSubmitter];
  [v13 submitLogEvent:v12];

  v14 = *MEMORY[0x277D85DE8];
}

void __52__HMDStatusChannel__setInvitedUsers_withCompletion___block_invoke_112(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) channelName];
    v15 = 138544130;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_2540F2000, v6, OS_LOG_TYPE_INFO, "%{public}@Add users %@ to channel %@ complete with error %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [HMDStatusChannelManagementLogEvent alloc];
  v11 = [*(a1 + 32) channelPrefix];
  v12 = [(HMDStatusChannelManagementLogEvent *)v10 initWithChannelPrefix:v11 isRetry:0 action:3];

  if (v3)
  {
    [(HMMLogEvent *)v12 setError:v3];
    [*(a1 + 48) rejectWithError:v3];
  }

  else
  {
    [*(a1 + 48) fulfillWithNoValue];
  }

  v13 = [*(a1 + 32) logEventSubmitter];
  [v13 submitLogEvent:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_addDelegate:(id)delegate
{
  v22 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  dispatch_assert_queue_V2(self->_queue);
  statusDelegates = [(HMDStatusChannel *)self statusDelegates];
  [statusDelegates addObject:delegateCopy];

  if ([(HMDStatusChannel *)self subscribed])
  {
    if (self->_isConnected && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        isConnected = self->_isConnected;
        v11 = HMFBooleanToString();
        v18 = 138543618;
        v19 = v9;
        v20 = 2112;
        v21 = v11;
        _os_log_impl(&dword_2540F2000, v8, OS_LOG_TYPE_INFO, "%{public}@Calling didObserveRecordUpdate on added delegate because isConnected: %@", &v18, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      currentRecords = [(HMDStatusChannel *)selfCopy currentRecords];
      [delegateCopy channel:selfCopy didObserveRecordUpdate:currentRecords];
    }

    if (objc_opt_respondsToSelector())
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v18 = 138543362;
        v19 = v16;
        _os_log_impl(&dword_2540F2000, v15, OS_LOG_TYPE_INFO, "%{public}@Calling didObserveConnectionChange on added delegate", &v18, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      [delegateCopy channel:selfCopy2 didObserveConnectionChange:{-[HMDStatusChannel isConnected](selfCopy2, "isConnected")}];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_stopPostRegainNetworkConnectivityTimer
{
  postRegainNetworkConnectivityTimer = [(HMDStatusChannel *)self postRegainNetworkConnectivityTimer];
  [postRegainNetworkConnectivityTimer cancel];

  [(HMDStatusChannel *)self setPostRegainNetworkConnectivityTimer:0];
}

- (void)_unsubscribeFromStatusKitWithIsRetry:(BOOL)retry
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_2540F2000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Unsubscribing with isRetry: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  presenceChannel = [(HMDStatusChannel *)selfCopy presenceChannel];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__HMDStatusChannel__unsubscribeFromStatusKitWithIsRetry___block_invoke;
  v12[3] = &unk_27976FA20;
  v12[4] = selfCopy;
  retryCopy = retry;
  [presenceChannel releaseTransientSubscriptionAssertionWithCompletion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __57__HMDStatusChannel__unsubscribeFromStatusKitWithIsRetry___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__HMDStatusChannel__unsubscribeFromStatusKitWithIsRetry___block_invoke_2;
  block[3] = &unk_27976F9F8;
  block[4] = v4;
  v8 = v3;
  v9 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, block);
}

void __57__HMDStatusChannel__unsubscribeFromStatusKitWithIsRetry___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v27 = 138543618;
    v28 = v5;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_2540F2000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Presence channel unsubscribe completed with error %@", &v27, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [HMDStatusChannelManagementLogEvent alloc];
  v8 = [*(a1 + 32) channelPrefix];
  v9 = [(HMDStatusChannelManagementLogEvent *)v7 initWithChannelPrefix:v8 isRetry:*(a1 + 48) action:2];

  v10 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v11 = [v10 logEventSubmitter];
    [v11 submitLogEvent:v9 error:*(a1 + 40)];

    v12 = [*(a1 + 32) unsubscribeRetryTimer];

    if (!v12)
    {
      v13 = [*(a1 + 32) _createBackoffTimerWithMinimumTimeInterval:5.0 maximumTimeInterval:300.0];
      [*(a1 + 32) setUnsubscribeRetryTimer:v13];
    }

    v14 = [*(a1 + 32) unsubscribeRetryTimer];
    [v14 resume];

    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 32) unsubscribeRetryTimer];
      v20 = [v19 fireDate];
      [v20 timeIntervalSinceNow];
      v21 = *(a1 + 40);
      v27 = 138543874;
      v28 = v18;
      v29 = 2048;
      v30 = v22;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&dword_2540F2000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to unsubscribe from status kit.  Will retry in %f seconds.  Error %@", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    v23 = v10[5];
    v10[5] = 0;

    [*(a1 + 32) setSubscribed:0];
    v24 = [*(a1 + 32) unsubscribeRetryTimer];
    [v24 cancel];

    [*(a1 + 32) setUnsubscribeRetryTimer:0];
    v25 = [*(a1 + 32) logEventSubmitter];
    [v25 submitLogEvent:v9];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_subscribeToStatusKitWithIsRetry:(BOOL)retry
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMFBooleanToString();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_2540F2000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Subscribing with isRetry: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  presenceChannel = [(HMDStatusChannel *)selfCopy presenceChannel];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__HMDStatusChannel__subscribeToStatusKitWithIsRetry___block_invoke;
  v12[3] = &unk_27976FA20;
  v12[4] = selfCopy;
  retryCopy = retry;
  [presenceChannel retainTransientSubscriptionAssertionWithCompletion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __53__HMDStatusChannel__subscribeToStatusKitWithIsRetry___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDStatusChannel__subscribeToStatusKitWithIsRetry___block_invoke_2;
  block[3] = &unk_27976F9F8;
  block[4] = v4;
  v8 = v3;
  v9 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, block);
}

void __53__HMDStatusChannel__subscribeToStatusKitWithIsRetry___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v31 = 138543618;
    v32 = v5;
    v33 = 2112;
    v34 = v6;
    _os_log_impl(&dword_2540F2000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Presence channel subscribe completed with error %@", &v31, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [HMDStatusChannelManagementLogEvent alloc];
  v8 = [*(a1 + 32) channelPrefix];
  v9 = [(HMDStatusChannelManagementLogEvent *)v7 initWithChannelPrefix:v8 isRetry:*(a1 + 48) action:1];

  v10 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v11 = [v10 logEventSubmitter];
    [v11 submitLogEvent:v9 error:*(a1 + 40)];

    v12 = [*(a1 + 32) subscribeRetryTimer];

    if (!v12)
    {
      v13 = [*(a1 + 32) _createBackoffTimerWithMinimumTimeInterval:5.0 maximumTimeInterval:300.0];
      [*(a1 + 32) setSubscribeRetryTimer:v13];
    }

    v14 = [*(a1 + 32) subscribeRetryTimer];
    [v14 resume];

    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [*(a1 + 32) subscribeRetryTimer];
      v20 = [v19 fireDate];
      [v20 timeIntervalSinceNow];
      v21 = *(a1 + 40);
      v31 = 138543874;
      v32 = v18;
      v33 = 2048;
      v34 = v22;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_2540F2000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to subscribe to status kit.  Will retry in %f seconds.  Error %@", &v31, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
  }

  else
  {
    [v10 setSubscribed:1];
    v23 = [*(a1 + 32) subscribeRetryTimer];
    [v23 cancel];

    [*(a1 + 32) setSubscribeRetryTimer:0];
    v24 = [*(a1 + 32) logEventSubmitter];
    [v24 submitLogEvent:v9];

    v25 = [*(a1 + 32) localPayload];

    if (v25)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        v31 = 138543362;
        v32 = v29;
        _os_log_impl(&dword_2540F2000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Requesting publish now that we are subscribed", &v31, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      [*(a1 + 32) _requestPublishShouldDebounce:0];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_checkForInitialStatusKitCloudKitImportAndSubscribe
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if ([(HMDStatusChannel *)self initialStatusKitCloudKitImportOccurred])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_2540F2000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Initial StatusKit CloudKit import has occurred already, subscribing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMDStatusChannel *)selfCopy _subscribeToStatusKitWithIsRetry:0];
  }

  else
  {
    presenceChannel = [(HMDStatusChannel *)self presenceChannel];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__HMDStatusChannel__checkForInitialStatusKitCloudKitImportAndSubscribe__block_invoke;
    v9[3] = &unk_27976FA70;
    v9[4] = self;
    [presenceChannel hasInitialCloudKitImportOccurredWithCompletion:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __71__HMDStatusChannel__checkForInitialStatusKitCloudKitImportAndSubscribe__block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__HMDStatusChannel__checkForInitialStatusKitCloudKitImportAndSubscribe__block_invoke_2;
  v4[3] = &unk_27976FA48;
  v4[4] = v2;
  v5 = a2;
  dispatch_async(v3, v4);
}

void __71__HMDStatusChannel__checkForInitialStatusKitCloudKitImportAndSubscribe__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = HMFBooleanToString();
    v17 = 138543618;
    v18 = v5;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_2540F2000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received completion with initial StatusKit CloudKit import has occurred: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setInitialStatusKitCloudKitImportOccurred:*(a1 + 40)];
  v8 = [*(a1 + 32) initialStatusKitCloudKitImportOccurred];
  v9 = *(a1 + 32);
  if (v8)
  {
    [v9 _subscribeToStatusKitWithIsRetry:0];
  }

  else
  {
    v10 = [v9 initialStatusKitCloudKitImportTimer];

    if (!v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v14;
        _os_log_impl(&dword_2540F2000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Initial StatusKit CloudKit import has not occurred, starting timer", &v17, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [*(a1 + 32) _createTimerWithTimeout:300.0];
      [*(a1 + 32) setInitialStatusKitCloudKitImportTimer:v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_recordsFromPresence:(id)presence
{
  v19 = *MEMORY[0x277D85DE8];
  presenceCopy = presence;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  presentDevices = [presenceCopy presentDevices];
  v7 = [presentDevices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(presentDevices);
        }

        v11 = [[HMDStatusChannelRecord alloc] initWithPresentDevice:*(*(&v14 + 1) + 8 * i)];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [presentDevices countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_stopPublishing
{
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2540F2000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping publishing", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  localPayload = selfCopy->_localPayload;
  selfCopy->_localPayload = 0;

  [(HMDStatusChannel *)selfCopy _deassertPresenceWithIsRetry:0];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_requestPublishShouldDebounce:(BOOL)debounce
{
  debounceCopy = debounce;
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (debounceCopy)
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      publishDebounceTimer = [(HMDStatusChannel *)selfCopy publishDebounceTimer];
      [publishDebounceTimer isRunning];
      v10 = HMFBooleanToString();
      v19 = 138543618;
      v20 = v8;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_2540F2000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Requesting publish, debounce timer running: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    publishDebounceTimer2 = [(HMDStatusChannel *)selfCopy publishDebounceTimer];

    if (!publishDebounceTimer2)
    {
      v12 = [(HMDStatusChannel *)selfCopy _createTimerWithTimeout:5.0];
      [(HMDStatusChannel *)selfCopy setPublishDebounceTimer:v12];
    }
  }

  else
  {
    publishDebounceTimer3 = [(HMDStatusChannel *)self publishDebounceTimer];
    [publishDebounceTimer3 cancel];

    [(HMDStatusChannel *)self setPublishDebounceTimer:0];
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_2540F2000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Requesting publish without debounce", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDStatusChannel *)selfCopy2 _assertPresenceWithIsRetry:0];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_deassertPresenceWithIsRetry:(BOOL)retry
{
  dispatch_assert_queue_V2(self->_queue);
  presenceChannel = [(HMDStatusChannel *)self presenceChannel];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HMDStatusChannel__deassertPresenceWithIsRetry___block_invoke;
  v6[3] = &unk_27976FA20;
  v6[4] = self;
  retryCopy = retry;
  [presenceChannel releasePresenceWithCompletion:v6];
}

void __49__HMDStatusChannel__deassertPresenceWithIsRetry___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__HMDStatusChannel__deassertPresenceWithIsRetry___block_invoke_2;
  block[3] = &unk_27976F9F8;
  block[4] = v4;
  v8 = v3;
  v9 = *(a1 + 40);
  v6 = v3;
  dispatch_async(v5, block);
}

void __49__HMDStatusChannel__deassertPresenceWithIsRetry___block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v26 = 138543618;
    v27 = v5;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_2540F2000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Presence channel stop publishing completed with error %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [HMDStatusChannelManagementLogEvent alloc];
  v8 = [*(a1 + 32) channelPrefix];
  v9 = [(HMDStatusChannelManagementLogEvent *)v7 initWithChannelPrefix:v8 isRetry:*(a1 + 48) action:2];

  if (*(a1 + 40))
  {
    v10 = [*(a1 + 32) logEventSubmitter];
    [v10 submitLogEvent:v9 error:*(a1 + 40)];

    v11 = [*(a1 + 32) stopPublishRetryTimer];

    if (!v11)
    {
      v12 = [*(a1 + 32) _createBackoffTimerWithMinimumTimeInterval:5.0 maximumTimeInterval:300.0];
      [*(a1 + 32) setStopPublishRetryTimer:v12];
    }

    v13 = [*(a1 + 32) stopPublishRetryTimer];
    [v13 resume];

    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [*(a1 + 32) stopPublishRetryTimer];
      v19 = [v18 fireDate];
      [v19 timeIntervalSinceNow];
      v20 = *(a1 + 40);
      v26 = 138543874;
      v27 = v17;
      v28 = 2048;
      v29 = v21;
      v30 = 2112;
      v31 = v20;
      _os_log_impl(&dword_2540F2000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to stop publishing to status kit.  Will retry in %f seconds.  Error %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v22 = [MEMORY[0x277CBEAA8] now];
    [*(a1 + 32) setLastStopPublishTimestamp:v22];

    v23 = [*(a1 + 32) stopPublishRetryTimer];
    [v23 cancel];

    [*(a1 + 32) setStopPublishRetryTimer:0];
    v24 = [*(a1 + 32) logEventSubmitter];
    [v24 submitLogEvent:v9];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_assertPresenceWithIsRetry:(BOOL)retry
{
  v28 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  presencePayload = [(HMDStatusChannel *)self presencePayload];
  if (presencePayload)
  {
    v6 = HMFRandomUInt32();
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v10;
      v24 = 2112;
      v25 = presencePayload;
      v26 = 1024;
      v27 = v6;
      _os_log_impl(&dword_2540F2000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Asserting presence with payload: %@ and identifier: %u", buf, 0x1Cu);
    }

    objc_autoreleasePoolPop(v7);
    presenceChannel = [(HMDStatusChannel *)selfCopy presenceChannel];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__HMDStatusChannel__assertPresenceWithIsRetry___block_invoke;
    v18[3] = &unk_27976F9D0;
    v18[4] = selfCopy;
    v19 = presencePayload;
    v20 = v6;
    retryCopy = retry;
    [presenceChannel assertPresenceWithPresencePayload:v19 completion:v18];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      localPayload = [(HMDStatusChannel *)selfCopy2 localPayload];
      *buf = 138543618;
      v23 = v15;
      v24 = 2112;
      v25 = localPayload;
      _os_log_impl(&dword_2540F2000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil presence payload, local payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __47__HMDStatusChannel__assertPresenceWithIsRetry___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__HMDStatusChannel__assertPresenceWithIsRetry___block_invoke_2;
  v8[3] = &unk_27976F9A8;
  v8[4] = v5;
  v9 = v4;
  v10 = v3;
  v11 = *(a1 + 48);
  v12 = *(a1 + 52);
  v7 = v3;
  dispatch_async(v6, v8);
}

void __47__HMDStatusChannel__assertPresenceWithIsRetry___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v28 = 138544130;
    v29 = v5;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    v34 = 1024;
    v35 = v8;
    _os_log_impl(&dword_2540F2000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Set presence payload: %@ completed with error: %@. Identifier: %u ", &v28, 0x26u);
  }

  objc_autoreleasePoolPop(v2);
  if (*(a1 + 48))
  {
    v9 = [*(a1 + 32) publishRetryTimer];

    if (!v9)
    {
      v10 = [*(a1 + 32) _createBackoffTimerWithMinimumTimeInterval:5.0 maximumTimeInterval:300.0];
      [*(a1 + 32) setPublishRetryTimer:v10];
    }

    v11 = [*(a1 + 32) publishRetryTimer];
    [v11 resume];

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 40);
      v17 = [*(a1 + 32) publishRetryTimer];
      v18 = [v17 fireDate];
      [v18 timeIntervalSinceNow];
      v19 = *(a1 + 56);
      v28 = 138544130;
      v29 = v15;
      v30 = 2112;
      v31 = v16;
      v32 = 2048;
      v33 = v20;
      v34 = 1024;
      v35 = v19;
      _os_log_impl(&dword_2540F2000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to set presence payload %@. Will retry in %f seconds. Identifier: %u", &v28, 0x26u);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v21 = [MEMORY[0x277CBEAA8] now];
    [*(a1 + 32) setLastPublishTimestamp:v21];

    v22 = [*(a1 + 32) publishRetryTimer];
    [v22 cancel];

    [*(a1 + 32) setPublishRetryTimer:0];
    [*(a1 + 32) _startAssertionLogTimer];
  }

  v23 = [HMDStatusChannelPublishLogEvent alloc];
  v24 = [*(a1 + 32) channelPrefix];
  v25 = [(HMDStatusChannelPublishLogEvent *)v23 initWithChannelPrefix:v24 isRetry:*(a1 + 60)];

  v26 = [*(a1 + 32) logEventSubmitter];
  [v26 submitLogEvent:v25 error:*(a1 + 48)];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_handlePresentDevicesChangedForPresence:(id)presence
{
  v24 = *MEMORY[0x277D85DE8];
  presenceCopy = presence;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(HMDStatusChannel *)self _recordsFromPresence:presenceCopy];
  currentRecords = self->_currentRecords;
  self->_currentRecords = v5;

  v7 = [MEMORY[0x277CBEAA8] now];
  [(HMDStatusChannel *)self setLastObserveTimestamp:v7];

  v8 = MEMORY[0x277CCABB0];
  currentRecords = [(HMDStatusChannel *)self currentRecords];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(currentRecords, "count")}];
  [(HMDStatusChannel *)self setLastObserveDeviceCount:v10];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  statusDelegates = [(HMDStatusChannel *)self statusDelegates];
  v12 = [statusDelegates countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(statusDelegates);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          currentRecords2 = [(HMDStatusChannel *)self currentRecords];
          [v16 channel:self didObserveRecordUpdate:currentRecords2];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [statusDelegates countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)presencePayload
{
  v24 = *MEMORY[0x277D85DE8];
  idsIdentifierProvider = [(HMDStatusChannel *)self idsIdentifierProvider];
  getCurrentDeviceId = [idsIdentifierProvider getCurrentDeviceId];

  if (getCurrentDeviceId)
  {
    v5 = MEMORY[0x277CBEB38];
    uUIDString = [getCurrentDeviceId UUIDString];
    v20[1] = @"SC.ck.pt";
    v21[0] = uUIDString;
    v7 = [MEMORY[0x277CBEAA8] now];
    v21[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v9 = [v5 dictionaryWithDictionary:v8];

    localPayload = [(HMDStatusChannel *)self localPayload];
    [v9 addEntriesFromDictionary:localPayload];

    v11 = objc_alloc(MEMORY[0x277D68108]);
    v12 = [v9 copy];
    v13 = [v11 initWithDictionary:v12];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v17;
      _os_log_impl(&dword_2540F2000, v16, OS_LOG_TYPE_ERROR, "%{public}@Attempting to generate presence payload but current device IDS Identifier is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)timerDidFire:(id)fire
{
  v59 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  dispatch_assert_queue_V2(self->_queue);
  publishRetryTimer = [(HMDStatusChannel *)self publishRetryTimer];

  if (publishRetryTimer == fireCopy)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v57 = 138543362;
      v58 = v16;
      _os_log_impl(&dword_2540F2000, v15, OS_LOG_TYPE_INFO, "%{public}@Publish retry timer fired", &v57, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    publishRetryTimer2 = [(HMDStatusChannel *)selfCopy publishRetryTimer];
    [publishRetryTimer2 suspend];

    v18 = selfCopy;
    v19 = 1;
    goto LABEL_13;
  }

  stopPublishRetryTimer = [(HMDStatusChannel *)self stopPublishRetryTimer];

  if (stopPublishRetryTimer == fireCopy)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v57 = 138543362;
      v58 = v23;
      _os_log_impl(&dword_2540F2000, v22, OS_LOG_TYPE_INFO, "%{public}@Stop publish retry timer fired", &v57, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    stopPublishRetryTimer2 = [(HMDStatusChannel *)selfCopy2 stopPublishRetryTimer];
    [stopPublishRetryTimer2 suspend];

    [(HMDStatusChannel *)selfCopy2 _deassertPresenceWithIsRetry:1];
    goto LABEL_24;
  }

  subscribeRetryTimer = [(HMDStatusChannel *)self subscribeRetryTimer];

  if (subscribeRetryTimer == fireCopy)
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v57 = 138543362;
      v58 = v28;
      _os_log_impl(&dword_2540F2000, v27, OS_LOG_TYPE_INFO, "%{public}@Subscribe retry timer fired", &v57, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    subscribeRetryTimer2 = [(HMDStatusChannel *)selfCopy3 subscribeRetryTimer];
    [subscribeRetryTimer2 suspend];

    v30 = selfCopy3;
    v31 = 1;
    goto LABEL_20;
  }

  unsubscribeRetryTimer = [(HMDStatusChannel *)self unsubscribeRetryTimer];

  if (unsubscribeRetryTimer == fireCopy)
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v57 = 138543362;
      v58 = v35;
      _os_log_impl(&dword_2540F2000, v34, OS_LOG_TYPE_INFO, "%{public}@Unsubscribe retry timer fired", &v57, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    unsubscribeRetryTimer2 = [(HMDStatusChannel *)selfCopy4 unsubscribeRetryTimer];
    [unsubscribeRetryTimer2 suspend];

    [(HMDStatusChannel *)selfCopy4 _unsubscribeFromStatusKitWithIsRetry:1];
    goto LABEL_24;
  }

  publishDebounceTimer = [(HMDStatusChannel *)self publishDebounceTimer];

  if (publishDebounceTimer == fireCopy)
  {
    [(HMDStatusChannel *)self setPublishDebounceTimer:0];
    v38 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      v57 = 138543362;
      v58 = v41;
      _os_log_impl(&dword_2540F2000, v40, OS_LOG_TYPE_INFO, "%{public}@Publish debounce timer fired", &v57, 0xCu);
    }

    objc_autoreleasePoolPop(v38);
    v18 = selfCopy5;
    v19 = 0;
LABEL_13:
    [(HMDStatusChannel *)v18 _assertPresenceWithIsRetry:v19];
    goto LABEL_24;
  }

  initialStatusKitCloudKitImportTimer = [(HMDStatusChannel *)self initialStatusKitCloudKitImportTimer];

  if (initialStatusKitCloudKitImportTimer != fireCopy)
  {
    postRegainNetworkConnectivityTimer = [(HMDStatusChannel *)self postRegainNetworkConnectivityTimer];

    if (postRegainNetworkConnectivityTimer == fireCopy)
    {
      v50 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = HMFGetLogIdentifier();
        v57 = 138543362;
        v58 = v53;
        _os_log_impl(&dword_2540F2000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@Post network connectivity regain timer fired", &v57, 0xCu);
      }

      objc_autoreleasePoolPop(v50);
      [(HMDStatusChannel *)selfCopy6 _stopPostRegainNetworkConnectivityTimer];
      selfCopy6->_isConnected = 1;
      v54 = [MEMORY[0x277CBEAA8] now];
      lastConnectivityChangeTimestamp = selfCopy6->_lastConnectivityChangeTimestamp;
      selfCopy6->_lastConnectivityChangeTimestamp = v54;

      presenceChannel = [(HMDStatusChannel *)selfCopy6 presenceChannel];
      [(HMDStatusChannel *)selfCopy6 _handlePresentDevicesChangedForPresence:presenceChannel];
    }

    else
    {
      assertionLogTimer = [(HMDStatusChannel *)self assertionLogTimer];

      if (assertionLogTimer == fireCopy)
      {
        [(HMDStatusChannel *)self _handleAssertionLogTimerFired];
      }
    }

    goto LABEL_24;
  }

  [(HMDStatusChannel *)self setInitialStatusKitCloudKitImportTimer:0];
  v42 = objc_autoreleasePoolPush();
  selfCopy7 = self;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = HMFGetLogIdentifier();
    v57 = 138543362;
    v58 = v45;
    _os_log_impl(&dword_2540F2000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@Initial StatusKit CloudKit import timer fired", &v57, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
  if (![(HMDStatusChannel *)selfCopy7 initialStatusKitCloudKitImportOccurred])
  {
    v46 = objc_autoreleasePoolPush();
    v47 = selfCopy7;
    v48 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = HMFGetLogIdentifier();
      v57 = 138543362;
      v58 = v49;
      _os_log_impl(&dword_2540F2000, v48, OS_LOG_TYPE_DEFAULT, "%{public}@Marking initial StatusKit CloudKit import as has having occurred (even though it didn't yet)", &v57, 0xCu);
    }

    objc_autoreleasePoolPop(v46);
    [(HMDStatusChannel *)v47 setInitialStatusKitCloudKitImportOccurred:1];
    if ([(HMDStatusChannel *)v47 started])
    {
      v30 = v47;
      v31 = 0;
LABEL_20:
      [(HMDStatusChannel *)v30 _subscribeToStatusKitWithIsRetry:v31];
    }
  }

LABEL_24:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)networkMonitorIsUnreachable:(id)unreachable
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HMDStatusChannel_networkMonitorIsUnreachable___block_invoke;
  block[3] = &unk_27976F960;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __48__HMDStatusChannel_networkMonitorIsUnreachable___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v5;
    _os_log_impl(&dword_2540F2000, v4, OS_LOG_TYPE_INFO, "%{public}@Received network is unreachable from NetMonitor", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) started];
  if (result)
  {
    *(*(a1 + 32) + 16) = 0;
    v7 = [MEMORY[0x277CBEAA8] now];
    v8 = *(a1 + 32);
    v9 = *(v8 + 208);
    *(v8 + 208) = v7;

    v10 = [*(a1 + 32) postRegainNetworkConnectivityTimer];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 32);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v14;
        _os_log_impl(&dword_2540F2000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping post regain network connectivity timer because network is unreachable again", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      [*(a1 + 32) _stopPostRegainNetworkConnectivityTimer];
    }

    result = [*(a1 + 32) _informNetworkChange:0];
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)networkMonitorIsReachable:(id)reachable
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HMDStatusChannel_networkMonitorIsReachable___block_invoke;
  block[3] = &unk_27976F960;
  block[4] = self;
  dispatch_async(queue, block);
}

void __46__HMDStatusChannel_networkMonitorIsReachable___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v5;
    _os_log_impl(&dword_2540F2000, v4, OS_LOG_TYPE_INFO, "%{public}@Received network is reachable from NetMonitor", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 32) started])
  {
    [*(a1 + 32) _informNetworkChange:1];
    if ([*(a1 + 32) receivedInitialChannelState])
    {
      if (([*(a1 + 32) isConnected] & 1) == 0)
      {
        v6 = [*(a1 + 32) postRegainNetworkConnectivityTimer];

        if (!v6)
        {
          v7 = objc_autoreleasePoolPush();
          v8 = *(a1 + 32);
          v9 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = HMFGetLogIdentifier();
            v20 = 138543362;
            v21 = v10;
            _os_log_impl(&dword_2540F2000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Starting post network connectivity regain timer", &v20, 0xCu);
          }

          objc_autoreleasePoolPop(v7);
          v11 = [*(a1 + 32) timerProvider];
          v12 = [v11 timerWithTimeInterval:0 options:60.0];
          [*(a1 + 32) setPostRegainNetworkConnectivityTimer:v12];

          v13 = *(a1 + 32);
          v14 = [v13 postRegainNetworkConnectivityTimer];
          [v14 setDelegate:v13];

          v15 = *(a1 + 32);
          v16 = v15[1];
          v17 = [v15 postRegainNetworkConnectivityTimer];
          [v17 setDelegateQueue:v16];

          v18 = [*(a1 + 32) postRegainNetworkConnectivityTimer];
          [v18 resume];
        }
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)initialCloudKitImportReceived:(id)received
{
  v14 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_2540F2000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Initial StatusKit CloudKit import received callback triggered", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  initialStatusKitCloudKitImportTimer = [(HMDStatusChannel *)selfCopy initialStatusKitCloudKitImportTimer];

  if (initialStatusKitCloudKitImportTimer)
  {
    initialStatusKitCloudKitImportTimer2 = [(HMDStatusChannel *)selfCopy initialStatusKitCloudKitImportTimer];
    [initialStatusKitCloudKitImportTimer2 cancel];

    [(HMDStatusChannel *)selfCopy setInitialStatusKitCloudKitImportTimer:0];
  }

  if (![(HMDStatusChannel *)selfCopy initialStatusKitCloudKitImportOccurred])
  {
    [(HMDStatusChannel *)selfCopy setInitialStatusKitCloudKitImportOccurred:1];
    if ([(HMDStatusChannel *)selfCopy started])
    {
      [(HMDStatusChannel *)selfCopy _subscribeToStatusKitWithIsRetry:0];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)presentDevicesChangedForPresence:(id)presence
{
  v27 = *MEMORY[0x277D85DE8];
  presenceCopy = presence;
  dispatch_assert_queue_V2(self->_queue);
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v25 = 138543362;
    v26 = v8;
    _os_log_impl(&dword_2540F2000, v7, OS_LOG_TYPE_INFO, "%{public}@Present devices changed", &v25, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  selfCopy->_isConnected = 1;
  v9 = [MEMORY[0x277CBEAA8] now];
  lastConnectivityChangeTimestamp = selfCopy->_lastConnectivityChangeTimestamp;
  selfCopy->_lastConnectivityChangeTimestamp = v9;

  if (![(HMDStatusChannel *)selfCopy receivedInitialChannelState])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v14;
      _os_log_impl(&dword_2540F2000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Received initial channel state", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDStatusChannel *)v12 setReceivedInitialChannelState:1];
  }

  postRegainNetworkConnectivityTimer = [(HMDStatusChannel *)selfCopy postRegainNetworkConnectivityTimer];

  if (postRegainNetworkConnectivityTimer)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = selfCopy;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = HMFGetLogIdentifier();
      v25 = 138543362;
      v26 = v19;
      _os_log_impl(&dword_2540F2000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Stopping post regain network connectivity timer because we received a callback from StatusKit", &v25, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    [(HMDStatusChannel *)v17 _stopPostRegainNetworkConnectivityTimer];
  }

  v20 = [HMDStatusChannelObserveLogEvent alloc];
  channelPrefix = [(HMDStatusChannel *)selfCopy channelPrefix];
  v22 = [(HMDStatusChannelObserveLogEvent *)v20 initWithChannelPrefix:channelPrefix];

  logEventSubmitter = [(HMDStatusChannel *)selfCopy logEventSubmitter];
  [logEventSubmitter submitLogEvent:v22];

  [(HMDStatusChannel *)selfCopy _handlePresentDevicesChangedForPresence:presenceCopy];
  v24 = *MEMORY[0x277D85DE8];
}

- (id)invitedURIs
{
  v20 = *MEMORY[0x277D85DE8];
  presenceChannel = [(HMDStatusChannel *)self presenceChannel];

  if (presenceChannel)
  {
    array = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    presenceChannel2 = [(HMDStatusChannel *)self presenceChannel];
    invitedHandles = [presenceChannel2 invitedHandles];

    v7 = [invitedHandles countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(invitedHandles);
          }

          handleString = [*(*(&v15 + 1) + 8 * i) handleString];
          [array addObject:handleString];
        }

        v8 = [invitedHandles countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v12 = [array copy];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)setInvitedUsers:(id)users withCompletion:(id)completion
{
  usersCopy = users;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDStatusChannel_setInvitedUsers_withCompletion___block_invoke;
  block[3] = &unk_27976F938;
  block[4] = self;
  v12 = usersCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = usersCopy;
  dispatch_async(queue, block);
}

- (void)addDelegate:(id)delegate withCompletion:(id)completion
{
  delegateCopy = delegate;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HMDStatusChannel_addDelegate_withCompletion___block_invoke;
  block[3] = &unk_27976F938;
  block[4] = self;
  v12 = delegateCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = delegateCopy;
  dispatch_async(queue, block);
}

uint64_t __47__HMDStatusChannel_addDelegate_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _addDelegate:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v31[7] = *MEMORY[0x277D85DE8];
  v30[0] = @"Last Observe Timestamp";
  lastObserveTimestamp = [(HMDStatusChannel *)self lastObserveTimestamp];
  localTimeDescription = [lastObserveTimestamp localTimeDescription];
  v5 = localTimeDescription;
  if (localTimeDescription)
  {
    v6 = localTimeDescription;
  }

  else
  {
    v6 = &stru_28662C2A8;
  }

  v31[0] = v6;
  v30[1] = @"Last Observe Device Count";
  lastObserveDeviceCount = [(HMDStatusChannel *)self lastObserveDeviceCount];
  v8 = lastObserveDeviceCount;
  if (lastObserveDeviceCount)
  {
    v9 = lastObserveDeviceCount;
  }

  else
  {
    v9 = &stru_28662C2A8;
  }

  v31[1] = v9;
  v30[2] = @"Last Publish Timestamp";
  lastPublishTimestamp = [(HMDStatusChannel *)self lastPublishTimestamp];
  localTimeDescription2 = [lastPublishTimestamp localTimeDescription];
  v11 = localTimeDescription2;
  if (localTimeDescription2)
  {
    v12 = localTimeDescription2;
  }

  else
  {
    v12 = &stru_28662C2A8;
  }

  v31[2] = v12;
  v30[3] = @"Last Publish Payload";
  localPayload = [(HMDStatusChannel *)self localPayload];
  v14 = localPayload;
  if (localPayload)
  {
    v15 = localPayload;
  }

  else
  {
    v15 = &stru_28662C2A8;
  }

  v31[3] = v15;
  v30[4] = @"Last Stop Publish Timestamp";
  lastStopPublishTimestamp = [(HMDStatusChannel *)self lastStopPublishTimestamp];
  localTimeDescription3 = [lastStopPublishTimestamp localTimeDescription];
  v18 = localTimeDescription3;
  if (localTimeDescription3)
  {
    v19 = localTimeDescription3;
  }

  else
  {
    v19 = &stru_28662C2A8;
  }

  v31[4] = v19;
  v30[5] = @"Last Connectivity Change Timestamp";
  lastConnectivityChangeTimestamp = [(HMDStatusChannel *)self lastConnectivityChangeTimestamp];
  localTimeDescription4 = [lastConnectivityChangeTimestamp localTimeDescription];
  v22 = localTimeDescription4;
  if (localTimeDescription4)
  {
    v23 = localTimeDescription4;
  }

  else
  {
    v23 = &stru_28662C2A8;
  }

  v31[5] = v23;
  v30[6] = @"Last Connectivity State";
  [(HMDStatusChannel *)self isConnected];
  v24 = NSStringFromBOOL();
  v31[6] = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:7];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)stopPublishingWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDStatusChannel_stopPublishingWithCompletion___block_invoke;
  v7[3] = &unk_27976F8E8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

uint64_t __49__HMDStatusChannel_stopPublishingWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopPublishing];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)publishRecordWithPayload:(id)payload shouldDebounce:(BOOL)debounce withCompletion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__HMDStatusChannel_publishRecordWithPayload_shouldDebounce_withCompletion___block_invoke;
  v13[3] = &unk_27976F910;
  v13[4] = self;
  v14 = payloadCopy;
  debounceCopy = debounce;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = payloadCopy;
  dispatch_async(queue, v13);
}

uint64_t __75__HMDStatusChannel_publishRecordWithPayload_shouldDebounce_withCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _publishRecordWithPayload:*(a1 + 40) shouldDebounce:*(a1 + 56)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)stopWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HMDStatusChannel_stopWithCompletion___block_invoke;
  v7[3] = &unk_27976F8E8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

uint64_t __39__HMDStatusChannel_stopWithCompletion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) started];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 32) channelName];
      v20 = 138543618;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_2540F2000, v5, OS_LOG_TYPE_INFO, "%{public}@Stopping Presence Channel %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = [*(a1 + 32) presenceChannel];
    [v9 removeDelegate:*(a1 + 32)];

    [*(a1 + 32) setStarted:0];
    v10 = [*(a1 + 32) subscribeRetryTimer];
    [v10 cancel];

    [*(a1 + 32) setSubscribeRetryTimer:0];
    v11 = [*(a1 + 32) initialStatusKitCloudKitImportTimer];
    [v11 cancel];

    [*(a1 + 32) setInitialStatusKitCloudKitImportTimer:0];
    v12 = [*(a1 + 32) publishRetryTimer];
    [v12 cancel];

    [*(a1 + 32) setPublishRetryTimer:0];
    [*(a1 + 32) _stopPostRegainNetworkConnectivityTimer];
    [*(a1 + 32) _stopAssertionLogTimer];
    *(*(a1 + 32) + 16) = 0;
    *(*(a1 + 32) + 20) = 0;
    v13 = [MEMORY[0x277CBEAA8] now];
    [*(a1 + 32) setLastConnectivityChangeTimestamp:v13];

    v14 = [MEMORY[0x277CBEB98] set];
    v15 = *(a1 + 32);
    v16 = *(v15 + 24);
    *(v15 + 24) = v14;

    [*(a1 + 32) _unsubscribeFromStatusKitWithIsRetry:0];
  }

  else
  {
    if (v6)
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v17;
      _os_log_impl(&dword_2540F2000, v5, OS_LOG_TYPE_INFO, "%{public}@Presence channel already stopped", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)startWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HMDStatusChannel_startWithCompletion___block_invoke;
  v7[3] = &unk_27976F8E8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

uint64_t __40__HMDStatusChannel_startWithCompletion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) started];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v7;
      _os_log_impl(&dword_2540F2000, v6, OS_LOG_TYPE_INFO, "%{public}@Presence channel already started", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) channelName];
      v10 = [*(a1 + 32) netMonitor];
      [v10 isReachable];
      v11 = HMFBooleanToString();
      v23 = 138543874;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_2540F2000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Starting Presence Channel %@ with NetMonitor reachable: %@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v12 = [*(a1 + 32) presenceProvider];
    v13 = [*(a1 + 32) channelName];
    v14 = [*(a1 + 32) channelPrefix];
    v15 = [v12 createPresenceWithChannelName:v13 serviceIdentifier:v14];
    v16 = *(a1 + 32);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    v18 = [*(a1 + 32) presenceChannel];
    [v18 addDelegate:*(a1 + 32) queue:*(*(a1 + 32) + 8)];

    [*(a1 + 32) setStarted:1];
    v19 = [*(a1 + 32) unsubscribeRetryTimer];
    [v19 cancel];

    [*(a1 + 32) setUnsubscribeRetryTimer:0];
    *(*(a1 + 32) + 16) = 0;
    v20 = [MEMORY[0x277CBEAA8] now];
    [*(a1 + 32) setLastConnectivityChangeTimestamp:v20];

    [*(a1 + 32) _checkForInitialStatusKitCloudKitImportAndSubscribe];
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  presenceChannel = [(HMDStatusChannel *)self presenceChannel];

  if (presenceChannel)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_2540F2000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Deallocating Presence Channel", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    presenceChannel2 = [(HMDStatusChannel *)selfCopy presenceChannel];
    [presenceChannel2 removeDelegate:selfCopy];

    presenceChannel3 = [(HMDStatusChannel *)selfCopy presenceChannel];
    [presenceChannel3 releaseTransientSubscriptionAssertionWithCompletion:&__block_literal_global];

    presenceChannel = selfCopy->_presenceChannel;
    selfCopy->_presenceChannel = 0;
  }

  v12.receiver = self;
  v12.super_class = HMDStatusChannel;
  [(HMDStatusChannel *)&v12 dealloc];
  v11 = *MEMORY[0x277D85DE8];
}

void __27__HMDStatusChannel_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_2540F2000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Released StatusKit transient subscription", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v6 = *MEMORY[0x277D85DE8];
}

- (HMDStatusChannel)initWithChannelPrefix:(id)prefix identifier:(id)identifier queue:(id)queue logEventSubmitter:(id)submitter idsIdentifierProvider:(id)provider
{
  v12 = MEMORY[0x277D0F868];
  providerCopy = provider;
  submitterCopy = submitter;
  queueCopy = queue;
  identifierCopy = identifier;
  prefixCopy = prefix;
  v18 = [[v12 alloc] initWithNetAddress:0];
  v19 = objc_opt_new();
  v20 = objc_alloc_init(HMDSKPresenceProvider);
  v21 = [(HMDStatusChannel *)self initWithChannelPrefix:prefixCopy identifier:identifierCopy queue:queueCopy netMonitor:v18 timerProvider:v19 presenceProvider:v20 logEventSubmitter:submitterCopy idsIdentifierProvider:providerCopy];

  return v21;
}

- (HMDStatusChannel)initWithChannelPrefix:(id)prefix identifier:(id)identifier queue:(id)queue netMonitor:(id)monitor timerProvider:(id)provider presenceProvider:(id)presenceProvider logEventSubmitter:(id)submitter idsIdentifierProvider:(id)self0
{
  prefixCopy = prefix;
  identifierCopy = identifier;
  queueCopy = queue;
  monitorCopy = monitor;
  providerCopy = provider;
  presenceProviderCopy = presenceProvider;
  submitterCopy = submitter;
  identifierProviderCopy = identifierProvider;
  v34.receiver = self;
  v34.super_class = HMDStatusChannel;
  v19 = [(HMDStatusChannel *)&v34 init];
  if (v19)
  {
    v20 = [prefixCopy copy];
    v21 = *(v19 + 7);
    *(v19 + 7) = v20;

    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", *(v19 + 7), identifierCopy];
    v23 = *(v19 + 6);
    *(v19 + 6) = identifierCopy;

    objc_storeStrong(v19 + 1, queue);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v25 = *(v19 + 8);
    *(v19 + 8) = weakObjectsHashTable;

    v26 = [MEMORY[0x277CBEB98] set];
    v27 = *(v19 + 3);
    *(v19 + 3) = v26;

    objc_storeStrong(v19 + 9, monitor);
    objc_storeStrong(v19 + 10, identifierProvider);
    objc_storeStrong(v19 + 11, provider);
    objc_storeStrong(v19 + 12, presenceProvider);
    objc_storeStrong(v19 + 21, submitter);
    [*(v19 + 9) setDelegate:v19];
    *(v19 + 17) = 0;
  }

  return v19;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t25 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t25, &__block_literal_global_86);
  }

  v3 = logCategory__hmf_once_v26;

  return v3;
}

uint64_t __31__HMDStatusChannel_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v26 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end