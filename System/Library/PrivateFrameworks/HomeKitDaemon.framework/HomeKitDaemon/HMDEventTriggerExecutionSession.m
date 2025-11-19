@interface HMDEventTriggerExecutionSession
+ (id)logCategory;
- (BOOL)containsSecureActionSet;
- (BOOL)needsUserConfirmationForDevice:(id)a3;
- (HMDEventTriggerExecutionSession)initWithEventTrigger:(id)a3 predicateUtilities:(id)a4 triggerEvent:(id)a5 causingDevice:(id)a6 workQueue:(id)a7 actionSets:(id)a8 evaluationCondition:(id)a9 recurrences:(id)a10 endEvents:(id)a11 msgDispatcher:(id)a12;
- (NSString)description;
- (id)_monitoringEventsFromActionSetResponse:(id)a3;
- (id)didOccurEvent:(id)a3 causingDevice:(id)a4;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)durationEndEvents;
- (id)valueInActionSetWriteResponse:(id)a3 actionSetUUID:(id)a4 accUUID:(id)a5 serviceID:(id)a6 characteristicID:(id)a7;
- (void)_activateDurationEvents;
- (void)_activateEvents:(id)a3;
- (void)_activateMonitoringEvents;
- (void)_addEvent:(id)a3 causingDevice:(id)a4;
- (void)_callExecutionComplete:(id)a3 callDelegate:(BOOL)a4;
- (void)_callExecutionCompleteIfNoMoreOutstandingRequests;
- (void)_directlyExecuteActionSetsWithCompletionHandler:(id)a3;
- (void)_evaluateFiringTrigger;
- (void)_executeTriggerAfterEvaluatingCondition:(id)a3;
- (void)_handleActionSetExecutionResponse:(id)a3 actionSetError:(id)a4 completion:(id)a5;
- (void)_handleMonitoringEvent:(id)a3;
- (void)_removeUserDialog;
- (void)_restoreState;
- (void)_submitAnalyticsData:(id)a3;
- (void)_userResponse:(unint64_t)a3 device:(id)a4 completionHandler:(id)a5;
- (void)addEvent:(id)a3 causingDevice:(id)a4;
- (void)cancelSessionIfWaitingForUserResponse;
- (void)evaluateFiringTrigger;
- (void)handleSessionPlaybackStateUpdatedNotification:(id)a3;
- (void)postponeRestoreIfWaitingForEndEvent;
- (void)setExecutionState:(unint64_t)a3;
- (void)timerDidFire:(id)a3;
- (void)userResponse:(unint64_t)a3 device:(id)a4 completionHandler:(id)a5;
@end

@implementation HMDEventTriggerExecutionSession

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDEventTriggerSession *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDEventTriggerExecutionSession_timerDidFire___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __48__HMDEventTriggerExecutionSession_timerDidFire___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) secureTriggerConfirmationTimer];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@No user has responded to the confirmation yet, declaring confirmation denied", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = *(a1 + 32);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [v22 _callExecutionComplete:v23];

    [*(a1 + 32) setSecureTriggerConfirmationTimer:0];
  }

  else
  {
    v4 = [*(a1 + 32) startCharacteristicsMonitorTimer];
    v5 = *(a1 + 40);

    if (v4 == v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Start char monitor timer has fired, activating monitoring events", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v10 = [*(a1 + 32) monitorEvents];
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v25 + 1) + 8 * i);
            v16 = [v15 characteristic];
            v17 = [v16 value];
            [v15 setEventValue:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v12);
      }

      [*(a1 + 32) setStartCharacteristicsMonitorTimer:0];
      [*(a1 + 32) _activateMonitoringEvents];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)didOccurEvent:(id)a3 causingDevice:(id)a4
{
  v5 = a3;
  v6 = [(HMDEventTriggerSession *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HMDEventTriggerExecutionSession_didOccurEvent_causingDevice___block_invoke;
  v9[3] = &unk_27868A750;
  v9[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_async(v6, v9);

  return 0;
}

void __63__HMDEventTriggerExecutionSession_didOccurEvent_causingDevice___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) endEvents];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v24 = 138543618;
      v25 = v7;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@End Event has occurred, declaring execution complete, %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _restoreState];
  }

  v9 = [*(a1 + 32) endEvents];
  if ([v9 containsObject:*(a1 + 40)])
  {

LABEL_7:
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v24 = 138543618;
      v25 = v13;
      v26 = 2114;
      v27 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Monitored Event %{public}@ has occurred", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) _handleMonitoringEvent:*(a1 + 40)];
    goto LABEL_17;
  }

  v15 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [*(a1 + 32) monitorEvents];
    v17 = [v16 containsObject:*(a1 + 40)];

    if (v17)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 32);
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = *(a1 + 40);
    v24 = 138543618;
    v25 = v21;
    v26 = 2112;
    v27 = v22;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Received a delegate callback on event occurrence from %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
LABEL_17:
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_callExecutionCompleteIfNoMoreOutstandingRequests
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDEventTriggerExecutionSession *)self writeRequests];
  if ([v3 count])
  {

LABEL_4:
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMDEventTriggerExecutionSession *)v7 writeRequests];
      v11 = [v10 description];
      v12 = [(HMDEventTriggerExecutionSession *)v7 mediaProfiles];
      v18 = 138543874;
      v19 = v9;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Not ending the trigger execution session because there are write requests left %@ or media profiles %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    goto LABEL_7;
  }

  v4 = [(HMDEventTriggerExecutionSession *)self mediaProfiles];
  v5 = [v4 count];

  if (v5)
  {
    goto LABEL_4;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@No more write requests in restore list, declaring execution complete", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  [(HMDEventTriggerExecutionSession *)v15 _callExecutionComplete:0];
LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleSessionPlaybackStateUpdatedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD09A8]];
  v6 = [(HMDEventTriggerSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__HMDEventTriggerExecutionSession_handleSessionPlaybackStateUpdatedNotification___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, block);
}

void __81__HMDEventTriggerExecutionSession_handleSessionPlaybackStateUpdatedNotification___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v39 = v5;
    v40 = 2112;
    v41 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Received notification userInfo %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) eventTrigger];
  v8 = [v7 home];
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*(a1 + 48)];
  v10 = [v8 mediaSessionWithUUID:v9];

  v11 = [v10 mediaProfiles];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = [*(a1 + 32) mediaProfiles];
  v13 = [v12 copy];

  v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v31 = v10;
    v16 = 0;
    v17 = *v34;
    v18 = v13;
    do
    {
      v19 = 0;
      v32 = v15;
      do
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v18);
        }

        v20 = *(*(&v33 + 1) + 8 * v19);
        if ([v11 containsObject:v20])
        {
          v21 = objc_autoreleasePoolPush();
          v22 = *(a1 + 32);
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v24 = v17;
            v25 = v11;
            v26 = a1;
            v28 = v27 = v18;
            *buf = 138543618;
            v39 = v28;
            v40 = 2112;
            v41 = v20;
            _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Removing the media profile as it was changed, %@", buf, 0x16u);

            v18 = v27;
            a1 = v26;
            v11 = v25;
            v17 = v24;
            v15 = v32;
          }

          objc_autoreleasePoolPop(v21);
          v29 = [*(a1 + 32) mediaProfiles];
          [v29 removeObject:v20];

          v16 = 1;
        }

        ++v19;
      }

      while (v15 != v19);
      v15 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v15);

    v10 = v31;
    if (v16)
    {
      [*(a1 + 32) _callExecutionCompleteIfNoMoreOutstandingRequests];
    }
  }

  else
  {
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_handleMonitoringEvent:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v27 = v4;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [(HMDEventTriggerExecutionSession *)self writeRequests];
  v8 = [v7 copy];

  v9 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      v12 = 0;
      v28 = v10;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * v12);
        v14 = [v6 characteristic];
        v15 = [v14 service];
        v16 = [v13 service];

        if (v15 == v16)
        {
          v17 = objc_autoreleasePoolPush();
          v18 = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v20 = v11;
            v21 = v6;
            v22 = v8;
            v24 = v23 = self;
            *buf = 138543618;
            v34 = v24;
            v35 = 2112;
            v36 = v13;
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Removing the write requests on characteristic as it was changed, %@", buf, 0x16u);

            self = v23;
            v8 = v22;
            v6 = v21;
            v11 = v20;
            v10 = v28;
          }

          objc_autoreleasePoolPop(v17);
          v25 = [(HMDEventTriggerExecutionSession *)v18 writeRequests];
          [v25 removeObjectForKey:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v10);
  }

  [(HMDEventTriggerExecutionSession *)self _callExecutionCompleteIfNoMoreOutstandingRequests];
  v26 = *MEMORY[0x277D85DE8];
}

- (void)_restoreState
{
  v49 = *MEMORY[0x277D85DE8];
  if ([(HMDEventTriggerExecutionSession *)self restoreInProgress])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@State restoration is already in progress, ignoring", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    [(HMDEventTriggerExecutionSession *)self setRestoreInProgress:1];
    v7 = [(HMDEventTriggerSession *)self eventTrigger];
    v8 = [v7 home];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEB18] array];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v10 = [(HMDEventTriggerExecutionSession *)self writeRequests];
      v11 = [v10 countByEnumeratingWithState:&v32 objects:v48 count:16];
      if (v11)
      {
        v12 = *v33;
        do
        {
          v13 = 0;
          do
          {
            if (*v33 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v32 + 1) + 8 * v13);
            v15 = [(HMDEventTriggerExecutionSession *)self writeRequests];
            v16 = [v15 objectForKey:v14];
            [v9 addObject:v16];

            ++v13;
          }

          while (v11 != v13);
          v11 = [v10 countByEnumeratingWithState:&v32 objects:v48 count:16];
        }

        while (v11);
      }

      objc_initWeak(&location, self);
      v17 = [MEMORY[0x277CCAD78] UUID];
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v36 = 0uLL;
        if (v17)
        {
          [v17 getUUIDBytes:&v36];
        }

        else
        {
          v36 = *MEMORY[0x277D0F960];
        }

        v37 = v36;
        v26 = [v9 count];
        *buf = 138544386;
        v39 = v21;
        v40 = 1042;
        v41 = 16;
        v42 = 2098;
        v43 = &v37;
        v44 = 2114;
        v45 = v19;
        v46 = 2048;
        v47 = v26;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Executing write requests with identifier: %{public,uuid_t}.16P from event trigger execution session: %{public}@ count: %lu", buf, 0x30u);
      }

      objc_autoreleasePoolPop(v18);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __48__HMDEventTriggerExecutionSession__restoreState__block_invoke;
      v28[3] = &unk_278687F40;
      objc_copyWeak(&v30, &location);
      v29 = v8;
      [v29 writeCharacteristicValues:v9 source:3 biomeSource:0 identifier:v17 transport:0 qualityOfService:-1 withCompletionHandler:v28];
      [(HMDEventTriggerExecutionSession *)v19 setExecutionState:5];

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v39 = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to get valid Home reference", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      [(HMDEventTriggerExecutionSession *)v23 _callExecutionComplete:v9];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __48__HMDEventTriggerExecutionSession__restoreState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__HMDEventTriggerExecutionSession__restoreState__block_invoke_2;
    aBlock[3] = &unk_27868A250;
    aBlock[4] = WeakRetained;
    v6 = _Block_copy(aBlock);
    v7 = [v5 mediaProfiles];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [HMDMediaPlaybackAction alloc];
      v10 = [MEMORY[0x277CCAD78] UUID];
      v11 = [v5 mediaProfiles];
      v12 = [(HMDMediaPlaybackAction *)v9 initWithUUID:v10 mediaProfiles:v11 playbackState:2 volume:0 playbackArchive:0 actionSet:0];

      v13 = [*(a1 + 32) mediaActionRouter];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48__HMDEventTriggerExecutionSession__restoreState__block_invoke_4;
      v14[3] = &unk_278689A68;
      v16 = v6;
      v15 = v3;
      [v13 routeMediaActionForExecution:v12 source:3 clientName:@"com.apple.homed" completion:v14];
    }

    else
    {
      (*(v6 + 2))(v6, v3);
    }
  }
}

void __48__HMDEventTriggerExecutionSession__restoreState__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__HMDEventTriggerExecutionSession__restoreState__block_invoke_3;
  v6[3] = &unk_27868A750;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __48__HMDEventTriggerExecutionSession__restoreState__block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    a2 = *(a1 + 32);
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
}

- (void)_removeUserDialog
{
  v3 = [(HMDEventTriggerExecutionSession *)self userConfirmationSession];
  v4 = [(HMDEventTriggerExecutionSession *)self causingDevices];
  [v3 _removeUserDialog:v4];

  v5 = [(HMDEventTriggerExecutionSession *)self causingDevices];
  [v5 removeAllObjects];
}

- (void)_submitAnalyticsData:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277CBEB18];
  v6 = [(HMDEventTriggerExecutionSession *)self triggerEvents];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = [(HMDEventTriggerExecutionSession *)self triggerEvents];
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    do
    {
      v12 = 0;
      do
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v44 + 1) + 8 * v12) analyticsTriggerEventData];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v10);
  }

  v14 = [HomeKitEventTriggerExecutionSessionLogEvent alloc];
  [(HMDEventTriggerExecutionSession *)self executionStartTime];
  v16 = v15;
  v17 = [(HMDEventTriggerSession *)self sessionID];
  v18 = [v17 UUIDString];
  v19 = [(HomeKitEventTriggerExecutionSessionLogEvent *)v14 initWithStartTime:v18 sessionID:v16];

  v20 = [v7 copy];
  v21 = [(HomeKitEventTriggerExecutionSessionLogEvent *)v19 analyticsData];
  [v21 setTriggerEvents:v20];

  v22 = MEMORY[0x277CBEB18];
  v23 = [(HMDEventTriggerExecutionSession *)self endEvents];
  v24 = [v22 arrayWithCapacity:{objc_msgSend(v23, "count")}];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = [(HMDEventTriggerExecutionSession *)self endEvents];
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    do
    {
      v29 = 0;
      do
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v40 + 1) + 8 * v29) analyticsTriggerEventData];
        [v24 addObject:v30];

        ++v29;
      }

      while (v27 != v29);
      v27 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v27);
  }

  v31 = [v24 copy];
  v32 = [(HomeKitEventTriggerExecutionSessionLogEvent *)v19 analyticsData];
  [v32 setEndEvents:v31];

  v33 = [(HMDEventTriggerExecutionSession *)self executionState];
  v34 = [(HomeKitEventTriggerExecutionSessionLogEvent *)v19 analyticsData];
  [v34 setExecutionState:v33];

  v35 = [v4 code];
  v36 = [(HomeKitEventTriggerExecutionSessionLogEvent *)v19 analyticsData];
  [v36 setResultErrorCode:v35];

  v37 = +[HMDMetricsManager sharedLogEventSubmitter];
  [v37 submitLogEvent:v19 error:v4];

  objc_autoreleasePoolPop(context);
  v38 = *MEMORY[0x277D85DE8];
}

- (void)_callExecutionComplete:(id)a3 callDelegate:(BOOL)a4
{
  v4 = a4;
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(HMDEventTriggerExecutionSession *)self executionCompleteCalled])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Execution complete already called, ignoring", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = [(HMDEventTriggerExecutionSession *)self triggerEvents];
    v12 = [v11 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v43;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v42 + 1) + 8 * i);
          if ([v16 conformsToProtocol:&unk_283EDE370])
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          if (v18)
          {
            [v18 didEndExecutionSession:self];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v13);
    }

    [(HMDEventTriggerExecutionSession *)self _removeUserDialog];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_INFO);
    v37 = v6;
    if (v4)
    {
      if (v22)
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v23;
        v49 = 2114;
        v50 = v6;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Informing that trigger action set execution is complete with error %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v24 = [(HMDEventTriggerSession *)v20 eventTrigger];
      [v24 executionComplete:v20 error:v6];
    }

    else
    {
      if (v22)
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v25;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Not calling the delegate", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
    }

    [(HMDEventTriggerExecutionSession *)v20 setSecureTriggerConfirmationTimer:0];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = [(HMDEventTriggerExecutionSession *)v20 endEvents];
    v27 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v39;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v38 + 1) + 8 * j);
          v32 = objc_autoreleasePoolPush();
          v33 = v20;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v48 = v35;
            v49 = 2112;
            v50 = v31;
            _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Deactivating end event %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v32);
          [v31 _activate:0 completionHandler:0];
        }

        v28 = [v26 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v28);
    }

    v6 = v37;
    if (!v37)
    {
      [(HMDEventTriggerExecutionSession *)v20 setExecutionState:6];
    }

    [(HMDEventTriggerExecutionSession *)v20 setExecutionCompleteCalled:1];
    [(HMDEventTriggerExecutionSession *)v20 _submitAnalyticsData:v37];
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (id)valueInActionSetWriteResponse:(id)a3 actionSetUUID:(id)a4 accUUID:(id)a5 serviceID:(id)a6 characteristicID:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = [a3 hmf_dictionaryForKey:a4];
  v15 = [v14 hmf_dictionaryForKey:v13];

  v16 = [v15 hmf_dictionaryForKey:v12];

  v17 = [v16 hmf_dictionaryForKey:v11];

  v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277CD21B8]];

  return v18;
}

- (id)_monitoringEventsFromActionSetResponse:(id)a3
{
  v131 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v90 = [MEMORY[0x277CBEB18] array];
  v5 = [(HMDEventTriggerSession *)self eventTrigger];
  v91 = [v5 home];

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = v4;
  v75 = [obj countByEnumeratingWithState:&v115 objects:v130 count:16];
  if (v75)
  {
    v74 = *v116;
    v6 = *MEMORY[0x277CD21E8];
    v96 = *MEMORY[0x277CD21B8];
    v94 = self;
    v77 = *MEMORY[0x277CD21E8];
    do
    {
      v7 = 0;
      do
      {
        if (*v116 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v76 = v7;
        v92 = *(*(&v115 + 1) + 8 * v7);
        v8 = [obj hmf_dictionaryForKey:?];
        v80 = [v8 hmf_dictionaryForKey:v6];
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v9 = v8;
        v82 = [v9 countByEnumeratingWithState:&v111 objects:v129 count:16];
        if (v82)
        {
          v10 = *v112;
          v78 = v9;
          v79 = *v112;
          do
          {
            v11 = 0;
            do
            {
              if (*v112 != v10)
              {
                v12 = v11;
                objc_enumerationMutation(v9);
                v11 = v12;
              }

              v83 = v11;
              v13 = *(*(&v111 + 1) + 8 * v11);
              if ((HMFEqualObjects() & 1) == 0)
              {
                v86 = [v80 hmf_dictionaryForKey:v13];
                v14 = [v9 hmf_dictionaryForKey:v13];
                v98 = v13;
                v15 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
                v16 = [v91 accessoryWithUUID:v15];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v17 = v16;
                }

                else
                {
                  v17 = 0;
                }

                v18 = v17;

                v99 = v18;
                if (!v18)
                {
                  v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v98];
                  v20 = [v91 mediaProfileWithUUID:v19];

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v21 = v20;
                  }

                  else
                  {
                    v21 = 0;
                  }

                  v22 = v21;

                  if (v22)
                  {
                    v23 = [v22 uniqueIdentifier];
                    v24 = [v86 objectForKey:v23];

                    if ([v24 playbackState] == 1)
                    {

                      goto LABEL_69;
                    }

                    v25 = [(HMDEventTriggerExecutionSession *)self mediaProfiles];
                    [v25 addObject:v22];
                  }
                }

                v109 = 0u;
                v110 = 0u;
                v107 = 0u;
                v108 = 0u;
                v22 = v14;
                v87 = [v22 countByEnumeratingWithState:&v107 objects:v128 count:16];
                if (v87)
                {
                  v81 = v14;
                  v84 = *v108;
                  v85 = v22;
                  while (1)
                  {
                    v26 = 0;
                    do
                    {
                      if (*v108 != v84)
                      {
                        objc_enumerationMutation(v22);
                      }

                      v88 = v26;
                      v27 = *(*(&v107 + 1) + 8 * v26);
                      v28 = [v22 hmf_dictionaryForKey:v27];
                      v97 = [v86 hmf_dictionaryForKey:v27];
                      v103 = 0u;
                      v104 = 0u;
                      v105 = 0u;
                      v106 = 0u;
                      v95 = v28;
                      v101 = [v95 countByEnumeratingWithState:&v103 objects:v127 count:16];
                      if (v101)
                      {
                        v100 = *v104;
                        v102 = v27;
                        do
                        {
                          v29 = 0;
                          do
                          {
                            if (*v104 != v100)
                            {
                              objc_enumerationMutation(v95);
                            }

                            v30 = *(*(&v103 + 1) + 8 * v29);
                            v31 = HAPInstanceIDFromValue();
                            v32 = HAPInstanceIDFromValue();
                            v33 = [v99 findCharacteristic:v31 forService:v32];

                            if (v33)
                            {
                              v34 = [v97 objectForKey:v30];
                              v35 = [v34 objectForKey:v96];
                              v36 = [v33 type];
                              v37 = isRestoreSupportedForCharacteristic();

                              if (!v37)
                              {
                                goto LABEL_39;
                              }

                              if (v35 && ([v35 isEqual:MEMORY[0x277CBEC28]] & 1) == 0)
                              {
                                v67 = objc_autoreleasePoolPush();
                                v68 = self;
                                v69 = HMFGetOSLogHandle();
                                if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
                                {
                                  v70 = HMFGetLogIdentifier();
                                  *buf = 138543618;
                                  v120 = v70;
                                  v121 = 2112;
                                  v122 = v33;
                                  _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_INFO, "%{public}@Did not create write request for characteristic because it was ON prior to trigger, %@", buf, 0x16u);
                                }

                                objc_autoreleasePoolPop(v67);
                              }

                              else
                              {
                                v38 = [v33 authorizationData];
                                v39 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v33 value:MEMORY[0x277CBEC28] authorizationData:v38 type:1];

                                v40 = [(HMDEventTriggerExecutionSession *)self writeRequests];
                                [v40 setObject:v39 forKey:v33];

LABEL_39:
                                v41 = objc_autoreleasePoolPush();
                                v42 = self;
                                v43 = HMFGetOSLogHandle();
                                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                                {
                                  v44 = HMFGetLogIdentifier();
                                  v45 = v44;
                                  *buf = 138544130;
                                  v46 = "Did not create";
                                  if (v37)
                                  {
                                    v46 = "Created";
                                  }

                                  v120 = v44;
                                  v47 = "is not";
                                  if (v37)
                                  {
                                    v47 = "is";
                                  }

                                  v121 = 2080;
                                  v122 = v46;
                                  v123 = 2080;
                                  v124 = v47;
                                  v125 = 2112;
                                  v126 = v33;
                                  _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@%s write request for characteristic because characteristic type %s supported for Duration Event, %@", buf, 0x2Au);
                                }

                                objc_autoreleasePoolPop(v41);
                                v48 = [(HMDEventTriggerExecutionSession *)v42 valueInActionSetWriteResponse:obj actionSetUUID:v92 accUUID:v98 serviceID:v102 characteristicID:v30];
                                if (v48)
                                {
                                  v49 = [HMDCharacteristicEventModel alloc];
                                  v50 = [MEMORY[0x277CCAD78] UUID];
                                  v51 = [(HMDBackingStoreModelObject *)v49 initWithUUID:v50];

                                  [(HMDCharacteristicEventModel *)v51 setAccessory:v98];
                                  v52 = HAPInstanceIDFromValue();
                                  [(HMDCharacteristicEventModel *)v51 setServiceID:v52];

                                  v53 = HAPInstanceIDFromValue();
                                  [(HMDCharacteristicEventModel *)v51 setCharacteristicID:v53];

                                  [(HMDCharacteristicEventModel *)v51 setEventValue:v48];
                                  v54 = [(HMDCharacteristicEvent *)[HMDCharacteristicMonitorEvent alloc] initWithModel:v51 home:v91];
                                  if (v54)
                                  {
                                    [v90 addObject:v54];
                                    self = v94;
                                  }

                                  else
                                  {
                                    v63 = objc_autoreleasePoolPush();
                                    v64 = v42;
                                    v65 = HMFGetOSLogHandle();
                                    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
                                    {
                                      HMFGetLogIdentifier();
                                      v66 = v89 = v63;
                                      *buf = 138543618;
                                      v120 = v66;
                                      v121 = 2112;
                                      v122 = v33;
                                      _os_log_impl(&dword_229538000, v65, OS_LOG_TYPE_ERROR, "%{public}@Failed to create monitor event for %@", buf, 0x16u);

                                      v63 = v89;
                                    }

                                    objc_autoreleasePoolPop(v63);
                                    self = v94;
                                  }
                                }

                                else
                                {
                                  v59 = objc_autoreleasePoolPush();
                                  v60 = v42;
                                  v61 = HMFGetOSLogHandle();
                                  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
                                  {
                                    v62 = HMFGetLogIdentifier();
                                    *buf = 138543618;
                                    v120 = v62;
                                    v121 = 2112;
                                    v122 = v33;
                                    _os_log_impl(&dword_229538000, v61, OS_LOG_TYPE_ERROR, "%{public}@No value reported in action set result, Not creating the monitor event for %@", buf, 0x16u);
                                  }

                                  objc_autoreleasePoolPop(v59);
                                  self = v94;
                                }

                                v27 = v102;
                              }

                              goto LABEL_60;
                            }

                            v55 = objc_autoreleasePoolPush();
                            v56 = self;
                            v57 = HMFGetOSLogHandle();
                            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                            {
                              v58 = HMFGetLogIdentifier();
                              *buf = 138544130;
                              v120 = v58;
                              v121 = 2112;
                              v122 = v98;
                              v123 = 2112;
                              v124 = v27;
                              v125 = 2112;
                              v126 = v30;
                              _os_log_impl(&dword_229538000, v57, OS_LOG_TYPE_ERROR, "%{public}@Could not find the characteristic %@/%@/%@", buf, 0x2Au);
                            }

                            objc_autoreleasePoolPop(v55);
LABEL_60:

                            ++v29;
                          }

                          while (v101 != v29);
                          v71 = [v95 countByEnumeratingWithState:&v103 objects:v127 count:16];
                          v101 = v71;
                        }

                        while (v71);
                      }

                      v26 = v88 + 1;
                      v22 = v85;
                    }

                    while (v88 + 1 != v87);
                    v87 = [v85 countByEnumeratingWithState:&v107 objects:v128 count:16];
                    if (!v87)
                    {
                      v6 = v77;
                      v9 = v78;
                      v14 = v81;
                      break;
                    }
                  }
                }

LABEL_69:

                v10 = v79;
              }

              v11 = v83 + 1;
            }

            while (v83 + 1 != v82);
            v82 = [v9 countByEnumeratingWithState:&v111 objects:v129 count:16];
          }

          while (v82);
        }

        v7 = v76 + 1;
      }

      while (v76 + 1 != v75);
      v75 = [obj countByEnumeratingWithState:&v115 objects:v130 count:16];
    }

    while (v75);
  }

  v72 = *MEMORY[0x277D85DE8];

  return v90;
}

- (void)_activateEvents:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDEventTriggerSession *)self eventTrigger];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [v5 msgDispatcher];
        v12 = [(HMDEventTriggerSession *)self workQueue];
        [v10 configure:v5 messageDispatcher:v11 queue:v12 delegate:self];

        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __51__HMDEventTriggerExecutionSession__activateEvents___block_invoke;
        v15[3] = &unk_27868A1D8;
        v15[4] = self;
        v15[5] = v10;
        [v10 _activate:3 completionHandler:v15];
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __51__HMDEventTriggerExecutionSession__activateEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__HMDEventTriggerExecutionSession__activateEvents___block_invoke_2;
    block[3] = &unk_27868A010;
    block[4] = *(a1 + 32);
    v5 = v3;
    v6 = *(a1 + 40);
    v8 = v5;
    v9 = v6;
    dispatch_async(v4, block);
  }
}

uint64_t __51__HMDEventTriggerExecutionSession__activateEvents___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Activating event failed with error %@, %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _callExecutionComplete:*(a1 + 40)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_activateMonitoringEvents
{
  v3 = [(HMDEventTriggerExecutionSession *)self monitorEvents];
  [(HMDEventTriggerExecutionSession *)self _activateEvents:v3];
}

- (void)_activateDurationEvents
{
  v3 = [(HMDEventTriggerExecutionSession *)self durationEndEvents];
  [(HMDEventTriggerExecutionSession *)self _activateEvents:v3];
}

- (void)_handleActionSetExecutionResponse:(id)a3 actionSetError:(id)a4 completion:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDEventTriggerSession *)self eventTrigger];
  [v11 triggerFired];

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *v51 = 138543874;
    *&v51[4] = v15;
    *&v51[12] = 2112;
    *&v51[14] = v9;
    v52 = 2112;
    v53 = v8;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Action set execution responded with error %@ and response %@", v51, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = _Block_copy(v10);
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, v9);
  }

  if (v9)
  {
    v18 = [v9 domain];
    if ([v18 isEqualToString:*MEMORY[0x277CCFD28]])
    {
      v19 = [v9 code];

      if (v19 == 64)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = v13;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *v51 = 138543362;
          *&v51[4] = v23;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Action set has resulted in partial success, proceeding with successful ones", v51, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        goto LABEL_11;
      }
    }

    else
    {
    }

    v33 = v13;
    v34 = v9;
LABEL_22:
    [(HMDEventTriggerExecutionSession *)v33 _callExecutionComplete:v34, *v51];
    goto LABEL_27;
  }

LABEL_11:
  v24 = [(HMDEventTriggerExecutionSession *)v13 endEvents];
  v25 = [v24 count];

  if (!v25)
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v13;
    v37 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
LABEL_21:

      objc_autoreleasePoolPop(v35);
      v33 = v36;
      v34 = 0;
      goto LABEL_22;
    }

    v38 = HMFGetLogIdentifier();
    *v51 = 138543362;
    *&v51[4] = v38;
    v39 = "%{public}@There are no end events, declaring execution is complete";
LABEL_20:
    _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, v39, v51, 0xCu);

    goto LABEL_21;
  }

  v26 = [(HMDEventTriggerExecutionSession *)v13 _monitoringEventsFromActionSetResponse:v8];
  [(HMDEventTriggerExecutionSession *)v13 setMonitorEvents:v26];

  v27 = objc_autoreleasePoolPush();
  v28 = v13;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    v31 = [(HMDEventTriggerExecutionSession *)v28 monitorEvents];
    *v51 = 138543618;
    *&v51[4] = v30;
    *&v51[12] = 2112;
    *&v51[14] = v31;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Created monitoring events %@", v51, 0x16u);
  }

  objc_autoreleasePoolPop(v27);
  v32 = [(HMDEventTriggerExecutionSession *)v28 writeRequests];
  if (![v32 count])
  {
    v40 = [(HMDEventTriggerExecutionSession *)v28 mediaProfiles];
    v41 = [v40 count];

    if (v41)
    {
      goto LABEL_24;
    }

    v35 = objc_autoreleasePoolPush();
    v36 = v28;
    v37 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v38 = HMFGetLogIdentifier();
    *v51 = 138543362;
    *&v51[4] = v38;
    v39 = "%{public}@There are no characteristic writes or media profiles playback actions to perform upon restore, declaring execution is complete";
    goto LABEL_20;
  }

LABEL_24:
  v42 = objc_autoreleasePoolPush();
  v43 = v28;
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = HMFGetLogIdentifier();
    *v51 = 138543362;
    *&v51[4] = v45;
    _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@There are end events with the execution session, activating them", v51, 0xCu);
  }

  objc_autoreleasePoolPop(v42);
  [(HMDEventTriggerExecutionSession *)v43 _activateDurationEvents];
  [(HMDEventTriggerExecutionSession *)v43 setExecutionState:4];
  v46 = objc_alloc(MEMORY[0x277D0F920]);
  v47 = [v46 initWithTimeInterval:1 options:startCharacteristicsMonitorWaitPeriod];
  [(HMDEventTriggerExecutionSession *)v43 setStartCharacteristicsMonitorTimer:v47];

  v48 = [(HMDEventTriggerExecutionSession *)v43 startCharacteristicsMonitorTimer];
  [v48 setDelegate:v43];

  v49 = [(HMDEventTriggerExecutionSession *)v43 startCharacteristicsMonitorTimer];
  [v49 resume];

LABEL_27:
  v50 = *MEMORY[0x277D85DE8];
}

- (void)_directlyExecuteActionSetsWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(HMDEventTriggerExecutionSession *)self setActionSetExecutionInProgress:1];
  [(HMDEventTriggerExecutionSession *)self setSecureTriggerConfirmationTimer:0];
  objc_initWeak(&location, self);
  v5 = [(HMDEventTriggerSession *)self eventTrigger];
  v6 = [(HMDEventTriggerExecutionSession *)self actionSets];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__HMDEventTriggerExecutionSession__directlyExecuteActionSetsWithCompletionHandler___block_invoke;
  v8[3] = &unk_278689728;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  [v5 _executeActionSets:v6 captureCurrentState:1 completionHandler:v8];

  [(HMDEventTriggerExecutionSession *)self setExecutionState:3];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __83__HMDEventTriggerExecutionSession__directlyExecuteActionSetsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __83__HMDEventTriggerExecutionSession__directlyExecuteActionSetsWithCompletionHandler___block_invoke_70;
    v14[3] = &unk_278689AB8;
    v14[4] = v8;
    v15 = v6;
    v16 = v5;
    v17 = *(a1 + 32);
    dispatch_async(v9, v14);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Lost self while executing action set", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_addEvent:(id)a3 causingDevice:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(HMDEventTriggerExecutionSession *)self executionState]> 2)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = HMDEventTriggerExecutionStateAsString([(HMDEventTriggerExecutionSession *)v17 executionState]);
      v33 = 138543618;
      v34 = v19;
      v35 = 2112;
      v36 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Current state has moved beyond waiting for user response: %@", &v33, 0x16u);
    }

    v15 = v16;
    goto LABEL_9;
  }

  v8 = [(HMDEventTriggerExecutionSession *)self causingDevices];
  v9 = [v8 containsObject:v7];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v13)
    {
      v14 = HMFGetLogIdentifier();
      v33 = 138543618;
      v34 = v14;
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Device is already in the causing devices list, %@", &v33, 0x16u);
    }

    v15 = v10;
LABEL_9:
    objc_autoreleasePoolPop(v15);
    goto LABEL_17;
  }

  if (v13)
  {
    v21 = HMFGetLogIdentifier();
    v33 = 138543618;
    v34 = v21;
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Adding device to ask for confirmation, %@", &v33, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  v22 = [(HMDEventTriggerExecutionSession *)v11 causingDevices];
  [v22 addObject:v7];

  v23 = [(HMDEventTriggerExecutionSession *)v11 triggerEvents];
  v24 = [v23 containsObject:v6];

  if ((v24 & 1) == 0)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v11;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v33 = 138543618;
      v34 = v28;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Adding event as an additional event, %@", &v33, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [(HMDEventTriggerExecutionSession *)v26 triggerEvents];
    [v29 addObject:v6];
  }

  v30 = [(HMDEventTriggerExecutionSession *)v11 userConfirmationSession];
  [v30 askForUserPermission:v7];

  v31 = [(HMDEventTriggerExecutionSession *)v11 secureTriggerConfirmationTimer];
  [v31 resume];

LABEL_17:
  v32 = *MEMORY[0x277D85DE8];
}

- (void)addEvent:(id)a3 causingDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDEventTriggerSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDEventTriggerExecutionSession_addEvent_causingDevice___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_userResponse:(unint64_t)a3 device:(id)a4 completionHandler:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(HMDEventTriggerExecutionSession *)self secureTriggerConfirmationTimer];

  if (!v10)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v49 = 138543362;
      v50 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@There is no confirmation timer running, not processing the confirmation", &v49, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v17 = _Block_copy(v9);
    if (!v17)
    {
      goto LABEL_12;
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = 58;
    goto LABEL_11;
  }

  v11 = [(HMDEventTriggerExecutionSession *)self actionSetExecutionInProgress];
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v49 = 138543362;
      v50 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Action set execution is already in progress", &v49, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v17 = _Block_copy(v9);
    if (!v17)
    {
      goto LABEL_12;
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = 15;
LABEL_11:
    v24 = [v18 hmErrorWithCode:v19];
    v17[2](v17, v24);

LABEL_12:
    goto LABEL_13;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    v27 = HMDUserConfirmationResponseAsString(a3);
    v49 = 138543874;
    v50 = v26;
    v51 = 2112;
    v52 = v8;
    v53 = 2112;
    v54 = v27;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Received response from %@ with %@", &v49, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v43 = objc_autoreleasePoolPush();
      v36 = v13;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        v49 = 138543362;
        v50 = v45;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@User confirms not to execute trigger", &v49, 0xCu);
      }

      objc_autoreleasePoolPop(v43);
      v46 = _Block_copy(v9);
      v47 = v46;
      if (v46)
      {
        (*(v46 + 2))(v46, 0);
      }

      v41 = MEMORY[0x277CCA9B8];
      v42 = 3001;
      goto LABEL_35;
    }

    if (a3 != 4)
    {
      goto LABEL_13;
    }

LABEL_24:
    v32 = [(HMDEventTriggerExecutionSession *)v13 causingDevices];
    [v32 removeObject:v8];

    v33 = [(HMDEventTriggerExecutionSession *)v13 causingDevices];
    v34 = [v33 count];

    if (v34)
    {
      goto LABEL_13;
    }

    v35 = objc_autoreleasePoolPush();
    v36 = v13;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      v49 = 138543362;
      v50 = v38;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@None of the devices have answered the dialog, ending the session", &v49, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    v39 = _Block_copy(v9);
    v40 = v39;
    if (v39)
    {
      (*(v39 + 2))(v39, 0);
    }

    v41 = MEMORY[0x277CCA9B8];
    v42 = 3000;
LABEL_35:
    v48 = [v41 hmInternalErrorWithCode:v42];
    [(HMDEventTriggerExecutionSession *)v36 _callExecutionComplete:v48];

    goto LABEL_13;
  }

  if (a3 == 1)
  {
    goto LABEL_24;
  }

  if (a3 == 2)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v13;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      v49 = 138543362;
      v50 = v31;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@User confirms to execute trigger", &v49, 0xCu);
    }

    objc_autoreleasePoolPop(v28);
    [(HMDEventTriggerExecutionSession *)v29 _removeUserDialog];
    [(HMDEventTriggerExecutionSession *)v29 _directlyExecuteActionSetsWithCompletionHandler:v9];
  }

LABEL_13:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)userResponse:(unint64_t)a3 device:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(HMDEventTriggerSession *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__HMDEventTriggerExecutionSession_userResponse_device_completionHandler___block_invoke;
  v13[3] = &unk_278688B30;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (id)durationEndEvents
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(HMDEventTriggerExecutionSession *)self endEvents];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)postponeRestoreIfWaitingForEndEvent
{
  v3 = [(HMDEventTriggerSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDEventTriggerExecutionSession_postponeRestoreIfWaitingForEndEvent__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __70__HMDEventTriggerExecutionSession_postponeRestoreIfWaitingForEndEvent__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) executionState];
  if (result == 4)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Waiting for end event, received request to postpone the end event", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    result = [*(a1 + 32) _activateDurationEvents];
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cancelSessionIfWaitingForUserResponse
{
  v3 = [(HMDEventTriggerSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HMDEventTriggerExecutionSession_cancelSessionIfWaitingForUserResponse__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __72__HMDEventTriggerExecutionSession_cancelSessionIfWaitingForUserResponse__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) executionState] == 2)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Waiting for user response, received request to cancel the session", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
    [v6 _callExecutionComplete:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)containsSecureActionSet
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HMDEventTriggerExecutionSession *)self actionSets];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) containsSecureCharacteristic])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_executeTriggerAfterEvaluatingCondition:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v53 = v8;
    v54 = 2112;
    v55 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Going to evaluate the trigger After evaluating : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if (v4)
  {
    v50 = @"THIS_OBJECT";
    v9 = [(HMDEventTriggerExecutionSession *)v6 predicateUtilities];
    v51 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];

    v11 = objc_autoreleasePoolPush();
    v12 = v6;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v14;
      v54 = 2112;
      v55 = v10;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Evaluating the trigger predicate using %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [v4 allowEvaluation];
    v15 = [(HMDEventTriggerExecutionSession *)v12 predicateUtilities];
    v16 = [v4 evaluateWithObject:v15 substitutionVariables:v10];

    if ((v16 & 1) == 0)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = v12;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v38;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Trigger condition evaluated to NO, not firing action set", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      v39 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3006];
      [(HMDEventTriggerExecutionSession *)v36 _callExecutionComplete:v39];

      goto LABEL_27;
    }
  }

  v17 = [(HMDEventTriggerExecutionSession *)v6 causingDevices];
  if ([v17 count])
  {
    v18 = [(HMDEventTriggerExecutionSession *)v6 containsSecureActionSet];

    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v6;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Location triggers that contain secure action sets should ask for a confirmation before execution", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v23 = [(HMDEventTriggerExecutionSession *)v20 causingDevices];
      v24 = [v23 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v46;
        do
        {
          v27 = 0;
          do
          {
            if (*v46 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v45 + 1) + 8 * v27);
            v29 = [(HMDEventTriggerExecutionSession *)v20 userConfirmationSession];
            [v29 askForUserPermission:v28];

            ++v27;
          }

          while (v25 != v27);
          v25 = [v23 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v25);
      }

      v30 = [HMDTriggerConfirmationTimer alloc];
      v31 = [(HMDEventTriggerSession *)v20 sessionID];
      v32 = [(HMDTriggerConfirmationTimer *)v30 initWithExecutionSessionID:v31 timeoutInterval:secureTriggerUserResponseTimeoutInSeconds];
      [(HMDEventTriggerExecutionSession *)v20 setSecureTriggerConfirmationTimer:v32];

      v33 = [(HMDEventTriggerExecutionSession *)v20 secureTriggerConfirmationTimer];
      [v33 setDelegate:v20];

      v34 = [(HMDEventTriggerExecutionSession *)v20 secureTriggerConfirmationTimer];
      [v34 resume];

      [(HMDEventTriggerExecutionSession *)v20 setExecutionState:2];
      goto LABEL_27;
    }
  }

  else
  {
  }

  v40 = objc_autoreleasePoolPush();
  v41 = v6;
  v42 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v43;
    _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Directly executing action set as user confirmation is not required", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v40);
  [(HMDEventTriggerExecutionSession *)v41 _directlyExecuteActionSetsWithCompletionHandler:0];
LABEL_27:

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_evaluateFiringTrigger
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = [(HMDEventTriggerExecutionSession *)self recurrences];
  v3 = [v2 count];

  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 components:512 fromDate:v5];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HMDEventTriggerExecutionSession *)v8 recurrences];
    *buf = 138543874;
    v80 = v10;
    v81 = 2112;
    v82 = v11;
    v83 = 2112;
    v84 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@recurrences : %@, dateComponents: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMDEventTriggerExecutionSession *)v8 recurrences];
  v13 = [v12 containsObject:v6];

  if (v13)
  {

LABEL_6:
    v14 = [(HMDEventTriggerExecutionSession *)self evaluationCondition];

    if (v14)
    {
      v58 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v15 = [(HMDEventTriggerExecutionSession *)self predicateUtilities];
      v16 = [(HMDEventTriggerExecutionSession *)self evaluationCondition];
      v76 = 0;
      v57 = [v15 rewritePredicate:v16 currentCharacteristicInPredicate:&v76 characteristicsToRead:v58 homePresence:0];
      v56 = v76;

      v17 = objc_autoreleasePoolPush();
      val = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [(HMDEventTriggerExecutionSession *)val evaluationCondition];
        *buf = 138543874;
        v80 = v19;
        v81 = 2112;
        v82 = v20;
        v83 = 2112;
        v84 = v57;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Evaluation condition : %@, Re-written predicate : %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
      if ([v58 count])
      {
        v21 = [MEMORY[0x277CBEB18] array];
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        obj = v58;
        v22 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
        if (v22)
        {
          v60 = *v73;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v73 != v60)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v72 + 1) + 8 * i);
              v25 = [obj objectForKey:{v24, v56}];
              v26 = objc_autoreleasePoolPush();
              v27 = val;
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                v29 = HMFGetLogIdentifier();
                v30 = [v24 name];
                *buf = 138543618;
                v80 = v29;
                v81 = 2112;
                v82 = v30;
                _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Going to read characteristics from accessory %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v26);
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v31 = v25;
              v32 = [v31 countByEnumeratingWithState:&v68 objects:v77 count:16];
              if (v32)
              {
                v33 = *v69;
                do
                {
                  for (j = 0; j != v32; ++j)
                  {
                    if (*v69 != v33)
                    {
                      objc_enumerationMutation(v31);
                    }

                    v35 = [HMDCharacteristicRequest requestWithCharacteristic:*(*(&v68 + 1) + 8 * j)];
                    [v21 addObject:v35];
                  }

                  v32 = [v31 countByEnumeratingWithState:&v68 objects:v77 count:16];
                }

                while (v32);
              }
            }

            v22 = [obj countByEnumeratingWithState:&v72 objects:v78 count:16];
          }

          while (v22);
        }

        objc_initWeak(&location, val);
        v36 = [(HMDEventTriggerSession *)val eventTrigger];
        v37 = [v36 home];
        v38 = [(HMDEventTriggerExecutionSession *)val description];
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __57__HMDEventTriggerExecutionSession__evaluateFiringTrigger__block_invoke;
        v63[3] = &unk_278689460;
        objc_copyWeak(&v66, &location);
        v39 = v21;
        v64 = v39;
        v65 = v57;
        [v37 readCharacteristicValues:v39 source:3 sourceForLogging:v38 qualityOfService:-1 withCompletionHandler:v63];

        [(HMDEventTriggerExecutionSession *)val setExecutionState:1];
        v40 = objc_autoreleasePoolPush();
        v41 = val;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          v44 = [obj count];
          *buf = 138543618;
          v80 = v43;
          v81 = 2048;
          v82 = v44;
          _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Waiting to read [%lu] characterics before executing the trigger", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v40);
        objc_destroyWeak(&v66);
        objc_destroyWeak(&location);
      }

      else
      {
        [(HMDEventTriggerExecutionSession *)val _executeTriggerAfterEvaluatingCondition:v57];
      }
    }

    else
    {
      [(HMDEventTriggerExecutionSession *)self _executeTriggerAfterEvaluatingCondition:0];
    }

    v50 = objc_autoreleasePoolPush();
    v51 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = HMFGetLogIdentifier();
      v54 = HMDEventTriggerExecutionStateAsString([(HMDEventTriggerExecutionSession *)v51 executionState]);
      *buf = 138543618;
      v80 = v53;
      v81 = 2112;
      v82 = v54;
      _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@EventTrigger Evaluation State : [%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v50);
    goto LABEL_38;
  }

  v45 = objc_autoreleasePoolPush();
  v46 = v8;
  v47 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    v48 = HMFGetLogIdentifier();
    *buf = 138543362;
    v80 = v48;
    _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Trigger not fired since recurrence does not match", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v45);
  v49 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3005];
  [(HMDEventTriggerExecutionSession *)v46 _callExecutionComplete:v49];

LABEL_38:
  v55 = *MEMORY[0x277D85DE8];
}

void __57__HMDEventTriggerExecutionSession__evaluateFiringTrigger__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      *buf = 138543874;
      v25 = v11;
      v26 = 2112;
      v27 = v5;
      v28 = 2112;
      v29 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to fulfill read requests before evaluating trigger due to error (%@), (%@)", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 _callExecutionComplete:v5];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    if (WeakRetained)
    {
      v14 = WeakRetained;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 32);
        *buf = 138543874;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        v28 = 2112;
        v29 = v6;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Finished read requests %@ with response %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      v18 = [v14 workQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __57__HMDEventTriggerExecutionSession__evaluateFiringTrigger__block_invoke_65;
      v22[3] = &unk_27868A750;
      v22[4] = v14;
      v23 = *(a1 + 40);
      dispatch_async(v18, v22);
    }

    else
    {
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        v25 = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Execution session is no more valid", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)evaluateFiringTrigger
{
  v3 = [(HMDEventTriggerSession *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDEventTriggerExecutionSession_evaluateFiringTrigger__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setExecutionState:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMDEventTriggerExecutionStateAsString([(HMDEventTriggerExecutionSession *)v6 executionState]);
    v10 = HMDEventTriggerExecutionStateAsString(a3);
    v12 = 138543874;
    v13 = v8;
    v14 = 2114;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting the execution from %{public}@ to %{public}@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v6->_executionState = a3;
  v11 = *MEMORY[0x277D85DE8];
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v19.receiver = self;
  v19.super_class = HMDEventTriggerExecutionSession;
  v4 = [(HMDEventTriggerSession *)&v19 dumpStateWithPrivacyLevel:a3];
  v5 = [v4 mutableCopy];

  v6 = [(HMDEventTriggerExecutionSession *)self triggerEvents];
  v7 = [v6 description];
  [v5 setObject:v7 forKeyedSubscript:@"triggering event"];

  v8 = [(HMDEventTriggerExecutionSession *)self monitorEvents];
  v9 = [v8 description];
  [v5 setObject:v9 forKeyedSubscript:@"monitored events"];

  [(HMDEventTriggerExecutionSession *)self restoreInProgress];
  v10 = HMFBooleanToString();
  [v5 setObject:v10 forKeyedSubscript:@"restore in progress"];

  v11 = [(HMDEventTriggerExecutionSession *)self writeRequests];
  v12 = [v11 description];
  [v5 setObject:v12 forKeyedSubscript:@"restore writes"];

  v13 = [(HMDEventTriggerExecutionSession *)self mediaProfiles];
  v14 = [v13 description];
  [v5 setObject:v14 forKeyedSubscript:@"pause media profiles"];

  v15 = [(HMDEventTriggerExecutionSession *)self secureTriggerConfirmationTimer];
  v16 = [v15 description];
  [v5 setObject:v16 forKeyedSubscript:@"trigger confirmation timer"];

  v17 = [v5 copy];

  return v17;
}

- (BOOL)needsUserConfirmationForDevice:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDEventTriggerExecutionSession *)self causingDevices];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 device];
    v8 = [v7 account];

    if (v8)
    {
      v6 = [(HMDEventTriggerExecutionSession *)self causingDevices];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __66__HMDEventTriggerExecutionSession_needsUserConfirmationForDevice___block_invoke;
      v15[3] = &unk_278687A10;
      v16 = v7;
      v9 = [v6 na_firstObjectPassingTest:v15];

      LOBYTE(v6) = v9 == 0;
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v18 = v12;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unable to find account for causing device %@, but will still fall back to sending user confirmation", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      LOBYTE(v6) = 1;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __66__HMDEventTriggerExecutionSession_needsUserConfirmationForDevice___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 device];
  v4 = [v2 isSameAccountWithDevice:v3];

  return v4;
}

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDEventTriggerSession *)self logString];
  v4 = [v2 stringWithFormat:@"[Trigger Execution Session: %@]", v3];

  return v4;
}

- (HMDEventTriggerExecutionSession)initWithEventTrigger:(id)a3 predicateUtilities:(id)a4 triggerEvent:(id)a5 causingDevice:(id)a6 workQueue:(id)a7 actionSets:(id)a8 evaluationCondition:(id)a9 recurrences:(id)a10 endEvents:(id)a11 msgDispatcher:(id)a12
{
  v57[1] = *MEMORY[0x277D85DE8];
  v17 = a3;
  obj = a4;
  v52 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v51 = a8;
  v50 = a9;
  v49 = a10;
  v48 = a11;
  v21 = v19;
  v22 = a12;
  v23 = [MEMORY[0x277CCAD78] UUID];
  v55.receiver = self;
  v55.super_class = HMDEventTriggerExecutionSession;
  v54 = v20;
  v24 = [(HMDEventTriggerSession *)&v55 initWithSessionID:v23 eventTrigger:v17 workQueue:v20 msgDispatcher:v22];

  if (v24)
  {
    v57[0] = v18;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:1];
    v26 = [v25 mutableCopy];
    triggerEvents = v24->_triggerEvents;
    v24->_triggerEvents = v26;

    objc_storeStrong(&v24->_predicateUtilities, obj);
    objc_storeStrong(&v24->_actionSets, a8);
    objc_storeStrong(&v24->_evaluationCondition, a9);
    objc_storeStrong(&v24->_recurrences, a10);
    objc_storeStrong(&v24->_endEvents, a11);
    v24->_restoreInProgress = 0;
    v28 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    writeRequests = v24->_writeRequests;
    v24->_writeRequests = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB58]);
    mediaProfiles = v24->_mediaProfiles;
    v24->_mediaProfiles = v30;

    v24->_executionState = 0;
    [MEMORY[0x277D17DC0] currentTime];
    v24->_executionStartTime = v32;
    if (v21)
    {
      v56 = v21;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
      v34 = [v33 mutableCopy];
      causingDevices = v24->_causingDevices;
      v24->_causingDevices = v34;

      v36 = [HMDEventTriggerDevice alloc];
      v37 = [v17 home];
      v38 = [(HMDEventTriggerDevice *)v36 initWithCurrentDeviceForHome:v37];

      v39 = [HMDEventTriggerUserConfirmationSession alloc];
      [(HMDEventTriggerSession *)v24 sessionID];
      v41 = v40 = v21;
      v42 = [(HMDEventTriggerUserConfirmationSession *)v39 initWithSessionID:v41 eventTrigger:v17 workQueue:v54 msgDispatcher:v22 requestingDevice:v38];
      userConfirmationSession = v24->_userConfirmationSession;
      v24->_userConfirmationSession = v42;

      v21 = v40;
      [(HMDEventTriggerUserConfirmationSession *)v24->_userConfirmationSession setExecutionSession:v24];
    }

    v44 = [MEMORY[0x277CCAB98] defaultCenter];
    [v44 addObserver:v24 selector:sel_handleSessionPlaybackStateUpdatedNotification_ name:@"HMDMediaSessionDidUpdatePlaybackStateNotification" object:0];
  }

  v45 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_265246 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_265246, &__block_literal_global_265247);
  }

  v3 = logCategory__hmf_once_v1_265248;

  return v3;
}

void __46__HMDEventTriggerExecutionSession_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_265248;
  logCategory__hmf_once_v1_265248 = v1;
}

@end