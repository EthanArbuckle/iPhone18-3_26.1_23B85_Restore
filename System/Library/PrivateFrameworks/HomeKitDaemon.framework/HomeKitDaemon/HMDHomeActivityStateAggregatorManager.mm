@interface HMDHomeActivityStateAggregatorManager
+ (BOOL)isReportAllowed:(id)a3 sourceDevice:(id)a4;
+ (id)logCategory;
- (BOOL)deserializeUserActivityReportFromSerializedReport:(id)a3 outContributorType:(unint64_t *)a4 outIsUnset:(BOOL *)a5 outReportPayload:(id *)a6;
- (BOOL)deserializeUserActivityReportsFromMessage:(id)a3 outReports:(id *)a4;
- (BOOL)isAdaptiveTemperatureAutomationsEnabledInHome:(id)a3 shouldWaitToConfigure:(BOOL *)a4;
- (BOOL)isContributionAllowedByUser:(id)a3 forContributorType:(unint64_t)a4;
- (HMDHomeActivityStateAggregatorManager)initWithDataSource:(id)a3 initialStateHoldDetails:(id)a4;
- (HMDHomeUserActivityStatesDetails)userActivityStatesDetails;
- (id)_aggregatorOfType:(unint64_t)a3;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)logIdentifier;
- (id)nextRefreshTimestamp;
- (void)_handleUserActivityStateChanged;
- (void)_processUserPresenceWithAuthStatus:(id)a3 regionStatus:(id)a4 updateReason:(id)a5 forUser:(id)a6 fromDevice:(id)a7;
- (void)auditAggegators;
- (void)configureWithPresenceReceiver:(id)a3 completion:(id)a4;
- (void)handleAdaptiveTemperatureAutomationsNotificationToUpdateEnabledContributors:(id)a3;
- (void)handleBackgroundTaskTimerFired:(id)a3;
- (void)handleCancelHoldMessage:(id)a3;
- (void)handleHomeUserRemovedNotification:(id)a3;
- (void)handleRefreshTimerFired;
- (void)handleRemovedAccessory:(id)a3;
- (void)handleUserActivityReportUpdated:(id)a3;
- (void)handleUserRequestToUpdateHomeActivityState:(id)a3;
- (void)handleUserRestrictedGuestScheduleEnded:(id)a3;
- (void)handleUserRestrictedGuestScheduleStarted:(id)a3;
- (void)processUserPresenceWithAuthStatus:(id)a3 regionStatus:(id)a4 updateReason:(id)a5 forUser:(id)a6 fromDevice:(id)a7;
- (void)registerForNotifications;
- (void)scheduleRefreshTimer;
- (void)stateMachineDidTransitionToActivityState:(unint64_t)a3 withHoldInfo:(id)a4 transitionalStateEndDate:(id)a5 reason:(int64_t)a6;
- (void)unconfigure;
- (void)updateEnabledContributors;
@end

@implementation HMDHomeActivityStateAggregatorManager

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionary];
  if (self)
  {
    self = self->_aggregators;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__HMDHomeActivityStateAggregatorManager_dumpStateWithPrivacyLevel___block_invoke;
  v8[3] = &unk_27867A800;
  v6 = v5;
  v9 = v6;
  v10 = a3;
  [(HMDHomeActivityStateAggregatorManager *)self hmf_enumerateWithAutoreleasePoolUsingBlock:v8];

  return v6;
}

void __67__HMDHomeActivityStateAggregatorManager_dumpStateWithPrivacyLevel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [objc_opt_class() shortDescription];
  v4 = [v3 dumpStateWithPrivacyLevel:*(a1 + 40)];

  [*(a1 + 32) setObject:v4 forKeyedSubscript:v5];
}

- (id)logIdentifier
{
  if (self)
  {
    self = self->_dataSource;
  }

  return [(HMDHomeActivityStateAggregatorManager *)self logIdentifier];
}

- (id)_aggregatorOfType:(unint64_t)a3
{
  if (self)
  {
    self = self->_aggregators;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__HMDHomeActivityStateAggregatorManager__aggregatorOfType___block_invoke;
  v5[3] = &__block_descriptor_40_e47_B32__0__HMDHomeActivityStateAggregator_8Q16_B24l;
  v5[4] = a3;
  v3 = [(HMDHomeActivityStateAggregatorManager *)self hmf_objectPassingTest:v5];

  return v3;
}

- (void)stateMachineDidTransitionToActivityState:(unint64_t)a3 withHoldInfo:(id)a4 transitionalStateEndDate:(id)a5 reason:(int64_t)a6
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (a3)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = HMHomeActivityStateToString();
      v21 = 138544130;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v11;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Handling home activity state change %@, %@, %@", &v21, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    if (v13)
    {
      storage = v13->_storage;
    }

    else
    {
      storage = 0;
    }

    [(HMDHomeActivityStateAggregatorManagerStorage *)storage writeHomeActivityState:a3 withHoldInfo:v10 transitionalStateEndDate:v11 reason:a6];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v19;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Declining to handle state change to unknown activity state, with holdInfo: %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleRefreshTimerFired
{
  v2 = self;
  if (self)
  {
    self = self->_dataSource;
  }

  v3 = [(HMDHomeActivityStateAggregatorManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__HMDHomeActivityStateAggregatorManager_handleRefreshTimerFired__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = v2;
  dispatch_async(v3, block);
}

uint64_t __64__HMDHomeActivityStateAggregatorManager_handleRefreshTimerFired__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Handling refresh timer. Evaluating state", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) scheduleRefreshTimer];
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 40);
  }

  else
  {
    v7 = 0;
  }

  result = [v7 probeHomeActivityState];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleBackgroundTaskTimerFired:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKeyedSubscript:@"HMD.BGTM.NK"];

  if (self)
  {
    refreshTimerIdentifier = self->_refreshTimerIdentifier;
  }

  else
  {
    refreshTimerIdentifier = 0;
  }

  if ([v6 isEqualToString:refreshTimerIdentifier])
  {
    [(HMDHomeActivityStateAggregatorManager *)self handleRefreshTimerFired];
  }
}

- (id)nextRefreshTimestamp
{
  if (self)
  {
    aggregators = self->_aggregators;
  }

  else
  {
    aggregators = 0;
  }

  v3 = MEMORY[0x277CBEAA8];
  v4 = aggregators;
  v5 = [v3 distantFuture];
  v6 = [(NSArray *)v4 na_reduceWithInitialValue:v5 reducer:&__block_literal_global_45_137949];

  return v6;
}

id __61__HMDHomeActivityStateAggregatorManager_nextRefreshTimestamp__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 nextRefreshTimestamp];
  v6 = [v4 earlierDate:v5];

  return v6;
}

- (void)scheduleRefreshTimer
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeActivityStateAggregatorManager *)self nextRefreshTimestamp];
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  v5 = [v3 isEqualToDate:v4];

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@No need to schedule refresh timer.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    if (v7)
    {
      dataSource = v7->_dataSource;
    }

    else
    {
      dataSource = 0;
    }

    v12 = dataSource;
    v13 = [(HMDHomeActivityStateManagerDataSource *)v12 backgroundTaskManager];
    v14 = v13;
    if (v7)
    {
      refreshTimerIdentifier = v7->_refreshTimerIdentifier;
    }

    else
    {
      refreshTimerIdentifier = 0;
    }

    [v13 cancelTaskWithIdentifier:refreshTimerIdentifier onObserver:v7];
  }

  else
  {
    if (v9)
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v3 hmf_localTimeDescription];
      *buf = 138543618;
      v31 = v16;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Scheduling refresh timer firing at %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    if (v7)
    {
      v18 = v7->_dataSource;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
    v20 = [(HMDHomeActivityStateManagerDataSource *)v19 backgroundTaskManager];
    if (v7)
    {
      v21 = v7->_refreshTimerIdentifier;
    }

    else
    {
      v21 = 0;
    }

    v29 = 0;
    v22 = v21;
    v23 = [v20 scheduleTaskWithIdentifier:v22 fireDate:v3 onObserver:v7 selector:sel_handleBackgroundTaskTimerFired_ error:&v29];
    v14 = v29;

    if ((v23 & 1) == 0)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v7;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v27;
        v32 = 2112;
        v33 = v14;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to schedule refresh timer with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeUserRemovedNotification:(id)a3
{
  if (self)
  {
    if (![(HMDHomeActivityStateManagerDataSource *)self->_dataSource hasFinishedLoadingHomeData])
    {
      return;
    }

    dataSource = self->_dataSource;
  }

  else
  {
    v6 = [0 hasFinishedLoadingHomeData];
    dataSource = 0;
    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  v5 = [(HMDHomeActivityStateManagerDataSource *)dataSource queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDHomeActivityStateAggregatorManager_handleHomeUserRemovedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)auditAggegators
{
  v2 = self;
  if (self)
  {
    self = self->_dataSource;
  }

  v3 = [(HMDHomeActivityStateAggregatorManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (v2)
  {
    aggregators = v2->_aggregators;
  }

  else
  {
    aggregators = 0;
  }

  v5 = aggregators;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HMDHomeActivityStateAggregatorManager_auditAggegators__block_invoke;
  v8[3] = &unk_27867A7B8;
  v8[4] = &v9;
  [(NSArray *)v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];

  if (*(v10 + 24) == 1)
  {
    if (v2)
    {
      homeActivityStateMachine = v2->_homeActivityStateMachine;
    }

    else
    {
      homeActivityStateMachine = 0;
    }

    v7 = homeActivityStateMachine;
    [(HMDHomeActivityStateMachine *)v7 probeHomeActivityState];
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __56__HMDHomeActivityStateAggregatorManager_auditAggegators__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 auditUserMap];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

- (void)handleUserRestrictedGuestScheduleEnded:(id)a3
{
  v4 = a3;
  if (self)
  {
    dataSource = self->_dataSource;
  }

  else
  {
    dataSource = 0;
  }

  v6 = dataSource;
  v7 = [(HMDHomeActivityStateManagerDataSource *)v6 queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __80__HMDHomeActivityStateAggregatorManager_handleUserRestrictedGuestScheduleEnded___block_invoke;
  v9[3] = &unk_27868A750;

  v10 = v4;
  v11 = self;
  v8 = v4;
  dispatch_async(v7, v9);
}

void __80__HMDHomeActivityStateAggregatorManager_handleUserRestrictedGuestScheduleEnded___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kUserUUIDKey"];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling RG schedule ended for user %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 56);
    }

    else
    {
      v9 = 0;
    }

    [v9 handleRestrictedGuestScheduleEndedForUserUUID:v3];
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(v10 + 40);
    }

    else
    {
      v11 = 0;
    }

    [v11 probeHomeActivityState];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleUserRestrictedGuestScheduleStarted:(id)a3
{
  v4 = a3;
  if (self)
  {
    dataSource = self->_dataSource;
  }

  else
  {
    dataSource = 0;
  }

  v6 = dataSource;
  v7 = [(HMDHomeActivityStateManagerDataSource *)v6 queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HMDHomeActivityStateAggregatorManager_handleUserRestrictedGuestScheduleStarted___block_invoke;
  v9[3] = &unk_27868A750;

  v10 = v4;
  v11 = self;
  v8 = v4;
  dispatch_async(v7, v9);
}

void __82__HMDHomeActivityStateAggregatorManager_handleUserRestrictedGuestScheduleStarted___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"kUserUUIDKey"];

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling RG schedule started for user %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 56);
    }

    else
    {
      v9 = 0;
    }

    [v9 handleRestrictedGuestScheduleStartedForUserUUID:v3];
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(v10 + 40);
    }

    else
    {
      v11 = 0;
    }

    [v11 probeHomeActivityState];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (HMDHomeUserActivityStatesDetails)userActivityStatesDetails
{
  if (self)
  {
    self = self->_homeAwayStateAggregator;
  }

  return [(HMDHomeActivityStateAggregatorManager *)self userActivityStatesDetails];
}

- (void)_processUserPresenceWithAuthStatus:(id)a3 regionStatus:(id)a4 updateReason:(id)a5 forUser:(id)a6 fromDevice:(id)a7
{
  v20 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (self)
  {
    v16 = [(HMDHomeActivityStateManagerDataSource *)self->_dataSource queue];
    dispatch_assert_queue_V2(v16);

    homeAwayStateAggregator = self->_homeAwayStateAggregator;
  }

  else
  {
    v19 = [0 queue];
    dispatch_assert_queue_V2(v19);

    homeAwayStateAggregator = 0;
  }

  v18 = [(HMDHomeActivityHomeAwayAggregator *)homeAwayStateAggregator processUserPresenceWithAuthStatus:v20 regionStatus:v12 updateReason:v13 forUser:v14 fromDevice:v15];
  [(HMDHomeActivityStateAggregatorManager *)self scheduleRefreshTimer];
  if (v18)
  {
    [(HMDHomeActivityStateAggregatorManager *)self _handleUserActivityStateChanged];
  }
}

- (void)processUserPresenceWithAuthStatus:(id)a3 regionStatus:(id)a4 updateReason:(id)a5 forUser:(id)a6 fromDevice:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (self)
  {
    dataSource = self->_dataSource;
  }

  else
  {
    dataSource = 0;
  }

  v18 = dataSource;
  v19 = [(HMDHomeActivityStateManagerDataSource *)v18 queue];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __120__HMDHomeActivityStateAggregatorManager_processUserPresenceWithAuthStatus_regionStatus_updateReason_forUser_fromDevice___block_invoke;
  v25[3] = &unk_278683598;
  v25[4] = self;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;

  v30 = v16;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v24 = v12;
  dispatch_async(v19, v25);
}

- (void)handleCancelHoldMessage:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    dataSource = self->_dataSource;
  }

  else
  {
    dataSource = 0;
  }

  v6 = [(HMDHomeActivityStateManagerDataSource *)dataSource queue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v4 shortDescription];
    v14 = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received %{public}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (self)
  {
    homeActivityStateMachine = v8->_homeActivityStateMachine;
  }

  else
  {
    homeActivityStateMachine = 0;
  }

  [(HMDHomeActivityStateMachine *)homeActivityStateMachine cancelOngoingHoldFromUserRequest:v4];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleUserRequestToUpdateHomeActivityState:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    dataSource = self->_dataSource;
  }

  else
  {
    dataSource = 0;
  }

  v6 = [(HMDHomeActivityStateManagerDataSource *)dataSource queue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v4 shortDescription];
    v14 = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received %{public}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (self)
  {
    homeActivityStateMachine = v8->_homeActivityStateMachine;
  }

  else
  {
    homeActivityStateMachine = 0;
  }

  [(HMDHomeActivityStateMachine *)homeActivityStateMachine handleUpdateHomeActivityStateFromUserRequest:v4];

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isContributionAllowedByUser:(id)a3 forContributorType:(unint64_t)a4
{
  v5 = [a3 isRestrictedGuest] ^ 1;
  if (a4 == 1)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (BOOL)deserializeUserActivityReportFromSerializedReport:(id)a3 outContributorType:(unint64_t *)a4 outIsUnset:(BOOL *)a5 outReportPayload:(id *)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [v10 hmf_numberForKey:@"contributorType"];
  if (v11)
  {
    v12 = [v10 hmf_numberForKey:@"isUnset"];
    if (v12)
    {
      v13 = [v10 hmf_dictionaryForKey:@"report"];
      v14 = [v12 BOOLValue];
      if (v13)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        if (a4)
        {
          *a4 = [v11 unsignedIntegerValue];
        }

        if (a5)
        {
          *a5 = [v12 BOOLValue];
        }

        if (a6)
        {
          v16 = v13;
          *a6 = v13;
        }
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = self;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          v31 = 138543874;
          v32 = v28;
          v33 = 2112;
          v34 = @"report";
          v35 = 2112;
          v36 = v10;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Reports entry is missing the %@ key: %@", &v31, 0x20u);
        }

        objc_autoreleasePoolPop(v25);
      }
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v31 = 138543874;
        v32 = v24;
        v33 = 2112;
        v34 = @"isUnset";
        v35 = 2112;
        v36 = v10;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Reports entry is missing the %@ key: %@", &v31, 0x20u);
      }

      objc_autoreleasePoolPop(v21);
      v15 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v31 = 138543874;
      v32 = v20;
      v33 = 2112;
      v34 = @"contributorType";
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Reports entry is missing the %@ key: %@", &v31, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v15 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)deserializeUserActivityReportsFromMessage:(id)a3 outReports:(id *)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 arrayForKey:@"reports"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94__HMDHomeActivityStateAggregatorManager_deserializeUserActivityReportsFromMessage_outReports___block_invoke;
  v19[3] = &unk_27867A790;
  v19[4] = self;
  v8 = [v7 na_map:v19];

  v9 = [v8 count];
  if (v9)
  {
    if (a4)
    {
      v10 = v8;
      *a4 = v8;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v6 shortDescription];
      v16 = [v6 messagePayload];
      *buf = 138543874;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Reports missing in payload for message: %{public}@, payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9 != 0;
}

id __94__HMDHomeActivityStateAggregatorManager_deserializeUserActivityReportsFromMessage_outReports___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Received a report that is not a dictionary: %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_handleUserActivityStateChanged
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Probing state due to received user activity reports", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if (v4)
  {
    homeActivityStateMachine = v4->_homeActivityStateMachine;
  }

  else
  {
    homeActivityStateMachine = 0;
  }

  [(HMDHomeActivityStateMachine *)homeActivityStateMachine probeHomeActivityState];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleUserActivityReportUpdated:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    dataSource = self->_dataSource;
  }

  else
  {
    dataSource = 0;
  }

  v6 = [(HMDHomeActivityStateManagerDataSource *)dataSource queue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v4 shortDescription];
    *buf = 138543618;
    v46 = v10;
    v47 = 2114;
    v48 = v11;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Received %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (self)
  {
    v12 = v8->_dataSource;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(HMDHomeActivityStateManagerDataSource *)v12 home];
  if (v13)
  {
    v44 = 0;
    v14 = [(HMDHomeActivityStateAggregatorManager *)v8 deserializeUserActivityReportsFromMessage:v4 outReports:&v44];
    v15 = v44;
    if (v14)
    {
      v16 = [v4 userForHome:v13];
      v17 = objc_autoreleasePoolPush();
      v18 = v8;
      v19 = HMFGetOSLogHandle();
      v20 = v19;
      if (v16)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [v16 shortDescription];
          *buf = 138543618;
          v46 = v21;
          v47 = 2114;
          v48 = v22;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Received user activity reports for user: %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v37 = MEMORY[0x277D85DD0];
        v38 = 3221225472;
        v39 = __73__HMDHomeActivityStateAggregatorManager_handleUserActivityReportUpdated___block_invoke;
        v40 = &unk_27867A768;
        v41 = v18;
        v23 = v16;
        v42 = v23;
        v24 = v4;
        v43 = v24;
        v25 = [v15 na_map:&v37];
        v26 = [v25 count];
        if (v26 == [v15 count])
        {
          [(HMDHomeActivityStateAggregatorManager *)v18 scheduleRefreshTimer];
          if ([v25 na_any:&__block_literal_global_37_137973])
          {
            [(HMDHomeActivityStateAggregatorManager *)v18 _handleUserActivityStateChanged];
          }

          [v24 respondWithSuccess];
        }

        else
        {
          v35 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          [v24 respondWithError:v35];
        }
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          v32 = [v4 shortDescription];
          v33 = [v13 shortDescription];
          *buf = 138543874;
          v46 = v31;
          v47 = 2114;
          v48 = v32;
          v49 = 2114;
          v50 = v33;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the user from the message: %{public}@ in Home: %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v17);
        v34 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        [v4 respondWithError:v34];

        v23 = 0;
      }
    }

    else
    {
      v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v4 respondWithError:v23];
    }
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = v8;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Home was unexpectedly nil when asked to handleUserActivityReportUpdated", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
  }

  v36 = *MEMORY[0x277D85DE8];
}

id __73__HMDHomeActivityStateAggregatorManager_handleUserActivityReportUpdated___block_invoke(id *a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v46 = 0;
  v45 = 0;
  v4 = a1[4];
  v44 = 0;
  v5 = [v4 deserializeUserActivityReportFromSerializedReport:v3 outContributorType:&v46 outIsUnset:&v45 outReportPayload:&v44];
  v6 = v44;
  v7 = 0;
  if (v5)
  {
    v8 = [a1[4] _aggregatorOfType:v46];
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

    if (!v10)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = a1[4];
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = HMDHomeActivityStateContributorTypeAsString(v46);
        *buf = 138543618;
        v48 = v28;
        v49 = 2114;
        v50 = v29;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unable to find aggregator for given type: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v7 = MEMORY[0x277CBEC28];
      goto LABEL_27;
    }

    if ([a1[4] isContributionAllowedByUser:a1[5] forContributorType:v46])
    {
      if ((v45 & 1) == 0)
      {
        v11 = a1[4];
        if (v11)
        {
          v11 = v11[2];
        }

        v12 = a1[5];
        v13 = a1[6];
        v14 = v11;
        v15 = [v13 remoteSourceDevice];
        v16 = [v14 reportFromMessagePayload:v6 withUser:v12 sourceDevice:v15];

        v17 = [a1[6] remoteSourceDevice];
        v18 = [HMDHomeActivityStateAggregatorManager isReportAllowed:v16 sourceDevice:v17];

        v19 = objc_autoreleasePoolPush();
        v20 = a1[4];
        v21 = HMFGetOSLogHandle();
        v22 = v21;
        if (!v18)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            v43 = HMDHomeActivityStateContributorTypeAsString(v46);
            *buf = 138543874;
            v48 = v42;
            v49 = 2112;
            v50 = v6;
            v51 = 2114;
            v52 = v43;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalid payload: %@, for contributor type: %{public}@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v19);
          v7 = MEMORY[0x277CBEC28];
          goto LABEL_26;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543618;
          v48 = v23;
          v49 = 2112;
          v50 = v16;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@New user activity report: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v24 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v10, "handleUpdateFromDetector:", v16)}];
LABEL_25:
        v7 = v24;
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = a1[4];
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [a1[5] shortDescription];
        v35 = HMDHomeActivityStateContributorTypeAsString(v46);
        *buf = 138543874;
        v48 = v33;
        v49 = 2114;
        v50 = v34;
        v51 = 2114;
        v52 = v35;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@User: %{public}@ is not allowed to contribute %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v30);
      v45 = 1;
    }

    v16 = [v10 removeActivityReportForUser:a1[5]];
    if (v16)
    {
      v36 = objc_autoreleasePoolPush();
      v37 = a1[4];
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = HMFGetLogIdentifier();
        *buf = 138543874;
        v48 = v39;
        v49 = 2112;
        v50 = v16;
        v51 = 2112;
        v52 = v10;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Removed report: %@, for aggregator: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v36);
    }

    v24 = [MEMORY[0x277CCABB0] numberWithInt:v16 != 0];
    goto LABEL_25;
  }

LABEL_28:

  v40 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isAdaptiveTemperatureAutomationsEnabledInHome:(id)a3 shouldWaitToConfigure:(BOOL *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  v8 = [v6 hapAccessories];
  v9 = [v8 na_filter:&__block_literal_global_137984];

  if (![v9 count])
  {
    goto LABEL_12;
  }

  if (([v9 na_any:&__block_literal_global_25_137985] & 1) == 0)
  {
    v11 = [v9 na_filter:&__block_literal_global_27_137986];
    if ([v11 count])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [v11 shortDescription];
        v19 = 138543618;
        v20 = v15;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Some Valencia thermostats are not configured yet: %@", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      if (a4)
      {
        *a4 = 1;
      }
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v10 = 1;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __109__HMDHomeActivityStateAggregatorManager_isAdaptiveTemperatureAutomationsEnabledInHome_shouldWaitToConfigure___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isConfiguredAsValenciaThermostat])
  {
    v3 = [v2 isAdaptiveTemperatureAutomationsEnabled];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __109__HMDHomeActivityStateAggregatorManager_isAdaptiveTemperatureAutomationsEnabledInHome_shouldWaitToConfigure___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 supportsAdaptiveTemperatureAutomations];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)updateEnabledContributors
{
  v2 = self;
  v26 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self = self->_dataSource;
  }

  v3 = [(HMDHomeActivityStateAggregatorManager *)self home];
  if (v3)
  {
    v21 = 0;
    v4 = [(HMDHomeActivityStateAggregatorManager *)v2 isAdaptiveTemperatureAutomationsEnabledInHome:v3 shouldWaitToConfigure:&v21];
    if ((v21 & 1) == 0)
    {
      v5 = v4;
      v6 = [&unk_283E758F0 mutableCopy];
      v7 = v6;
      if (v5)
      {
        [v6 addObject:&unk_283E72F68];
        [v7 addObject:&unk_283E72F80];
      }

      v8 = objc_autoreleasePoolPush();
      v9 = v2;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [v7 na_map:&__block_literal_global_197206];
        *buf = 138543618;
        v23 = v11;
        v24 = 2114;
        v25 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Enabled Contributors: %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      if (v2)
      {
        storage = v9->_storage;
      }

      else
      {
        storage = 0;
      }

      v14 = storage;
      v15 = [v7 copy];
      [(HMDHomeActivityStateAggregatorManagerStorage *)v14 writeEnabledContributors:v15];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v2;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Not updating enabledContributors - Home is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedAccessory:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 shortDescription];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling removed accessory: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomeActivityStateAggregatorManager *)v6 updateEnabledContributors];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleAdaptiveTemperatureAutomationsNotificationToUpdateEnabledContributors:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 object];
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

  v8 = [v7 home];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v25 = 138544130;
      v26 = v14;
      v27 = 2112;
      v28 = v4;
      v29 = 2112;
      v30 = v7;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalid object in notification: %@, hapAccessory: %@, home: %@", &v25, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (self)
    {
      dataSource = self->_dataSource;
    }

    else
    {
      dataSource = 0;
    }

    v16 = dataSource;
    v17 = [(HMDHomeActivityStateManagerDataSource *)v16 home];

    if (v9 == v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [v4 name];
        v23 = [v7 shortDescription];
        v25 = 138543874;
        v26 = v21;
        v27 = 2112;
        v28 = v22;
        v29 = 2112;
        v30 = v23;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Handling %@ for %@", &v25, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      [(HMDHomeActivityStateAggregatorManager *)v19 updateEnabledContributors];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  if (self)
  {
    configureFuture = self->_configureFuture;
  }

  else
  {
    configureFuture = 0;
  }

  v4 = configureFuture;
  v5 = objc_alloc(MEMORY[0x277D0F7A8]);
  if (self)
  {
    dataSource = self->_dataSource;
  }

  else
  {
    dataSource = 0;
  }

  v7 = dataSource;
  v8 = [(HMDHomeActivityStateManagerDataSource *)v7 queue];
  v9 = [v5 initWithQueue:v8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__HMDHomeActivityStateAggregatorManager_unconfigure__block_invoke;
  v11[3] = &unk_278689CB0;
  v11[4] = self;
  v10 = [(HMFFuture *)v4 inContext:v9 then:v11];
}

uint64_t __52__HMDHomeActivityStateAggregatorManager_unconfigure__block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Unconfiguring", &v16, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[1];
  }

  v9 = v8;
  v10 = [v9 backgroundTaskManager];
  v11 = v10;
  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 48);
  }

  else
  {
    v13 = 0;
  }

  [v10 cancelTaskWithIdentifier:v13 onObserver:?];

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)registerForNotifications
{
  if (self)
  {
    v3 = self->_dataSource;
    v4 = [(HMDHomeActivityStateManagerDataSource *)v3 notificationCenter];
    [v4 addObserver:self selector:sel_handleUserRestrictedGuestScheduleStarted_ name:@"HMDUserRestrictedGuestScheduleStartedNotification" object:0];

    dataSource = self->_dataSource;
  }

  else
  {
    v18 = [0 notificationCenter];
    [v18 addObserver:0 selector:sel_handleUserRestrictedGuestScheduleStarted_ name:@"HMDUserRestrictedGuestScheduleStartedNotification" object:0];

    dataSource = 0;
  }

  v6 = dataSource;
  v7 = [(HMDHomeActivityStateManagerDataSource *)v6 notificationCenter];
  [v7 addObserver:self selector:sel_handleUserRestrictedGuestScheduleEnded_ name:@"HMDUserRestrictedGuestScheduleEndedNotification" object:0];

  if (self)
  {
    v8 = self->_dataSource;
  }

  else
  {
    v8 = 0;
  }

  v19 = [(HMDHomeActivityStateManagerDataSource *)v8 home];
  if (v19)
  {
    if (self)
    {
      v9 = self->_dataSource;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = [(HMDHomeActivityStateManagerDataSource *)v10 notificationCenter];
    [v11 addObserver:self selector:sel_handleHomeUserRemovedNotification_ name:@"HMDHomeUserRemovedNotification" object:v19];
  }

  if (self)
  {
    v12 = self->_dataSource;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = [(HMDHomeActivityStateManagerDataSource *)v13 notificationCenter];
  [v14 addObserver:self selector:sel_handleAdaptiveTemperatureAutomationsNotificationToUpdateEnabledContributors_ name:@"HMDAccessoryConfiguredAsValenciaThermostat" object:0];

  if (self)
  {
    v15 = self->_dataSource;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [(HMDHomeActivityStateManagerDataSource *)v16 notificationCenter];
  [v17 addObserver:self selector:sel_handleAdaptiveTemperatureAutomationsNotificationToUpdateEnabledContributors_ name:@"HMDAccessoryValenciaStateEnabledAttributeChanged" object:0];
}

- (void)configureWithPresenceReceiver:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [v6 setDelegate:self];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = v11;
    if (v9)
    {
      aggregators = v9->_aggregators;
    }

    else
    {
      aggregators = 0;
    }

    *buf = 138543618;
    v28 = v11;
    v29 = 2112;
    v30 = aggregators;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring aggregators: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = dispatch_group_create();
  if (v9)
  {
    v15 = v9->_aggregators;
  }

  else
  {
    v15 = 0;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __82__HMDHomeActivityStateAggregatorManager_configureWithPresenceReceiver_completion___block_invoke;
  v24[3] = &unk_27867A740;
  v16 = v14;
  v25 = v16;
  v26 = v9;
  [(NSArray *)v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
  if (v9)
  {
    dataSource = v9->_dataSource;
  }

  else
  {
    dataSource = 0;
  }

  v18 = dataSource;
  v19 = [(HMDHomeActivityStateManagerDataSource *)v18 queue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __82__HMDHomeActivityStateAggregatorManager_configureWithPresenceReceiver_completion___block_invoke_6;
  v22[3] = &unk_27868A7A0;
  v22[4] = v9;
  v23 = v7;
  v20 = v7;
  dispatch_group_notify(v16, v19, v22);

  v21 = *MEMORY[0x277D85DE8];
}

void __82__HMDHomeActivityStateAggregatorManager_configureWithPresenceReceiver_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HMDHomeActivityStateAggregatorManager_configureWithPresenceReceiver_completion___block_invoke_2;
  v6[3] = &unk_27868A010;
  v4 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v5 configureWithCompletionHandler:v6];
}

uint64_t __82__HMDHomeActivityStateAggregatorManager_configureWithPresenceReceiver_completion___block_invoke_6(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Configuring state machine", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[5];
  }

  v7 = v6;
  v8 = [v7 homeAwayAggregator];
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 40);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 vacationAggregator];
  [v11 setHomeAwayAggregator:v8];

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 40);
  }

  else
  {
    v13 = 0;
  }

  [v13 setStateTransitionDelegate:?];
  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(v14 + 40);
  }

  else
  {
    v15 = 0;
  }

  [v15 configure];
  [*(a1 + 32) registerForNotifications];
  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v19;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Evaluating enabled contributors", &v24, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  [*(a1 + 32) updateEnabledContributors];
  v20 = *(a1 + 32);
  if (v20)
  {
    v21 = *(v20 + 64);
  }

  else
  {
    v21 = 0;
  }

  [v21 fulfillWithNoValue];
  result = (*(*(a1 + 40) + 16))();
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void __82__HMDHomeActivityStateAggregatorManager_configureWithPresenceReceiver_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v8 = 138543618;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Configured aggregator: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  dispatch_group_leave(*(a1 + 48));
  v7 = *MEMORY[0x277D85DE8];
}

- (HMDHomeActivityStateAggregatorManager)initWithDataSource:(id)a3 initialStateHoldDetails:(id)a4
{
  v35[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v7 makeHomeActivityHomeAwayAggregator];
  v35[0] = v9;
  v10 = [v7 makeHomeActivityComingHomeAggregator];
  v35[1] = v10;
  v11 = [v7 makeHomeActivityVacationAggregator];
  v35[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
  v13 = [v12 mutableCopy];

  v34.receiver = self;
  v34.super_class = HMDHomeActivityStateAggregatorManager;
  v14 = [(HMDHomeActivityStateAggregatorManager *)&v34 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dataSource, a3);
    v16 = objc_alloc_init(HMDUserActivityReportFactory);
    userActivityReportFactory = v15->_userActivityReportFactory;
    v15->_userActivityReportFactory = v16;

    v18 = [v13 copy];
    aggregators = v15->_aggregators;
    v15->_aggregators = v18;

    v20 = [(HMDHomeActivityStateManagerDataSource *)v15->_dataSource makeHomeActivityStateAggregatorManagerStorage];
    storage = v15->_storage;
    v15->_storage = v20;

    v22 = [(HMDHomeActivityStateManagerDataSource *)v15->_dataSource makeHomeActivityStateMachineWithAggregators:v15->_aggregators initialStateHoldDetails:v8];
    homeActivityStateMachine = v15->_homeActivityStateMachine;
    v15->_homeActivityStateMachine = v22;

    v24 = MEMORY[0x277CCACA8];
    v25 = [v7 home];
    v26 = [v25 uuid];
    v27 = [v26 UUIDString];
    v28 = [v24 stringWithFormat:@"HMDHomeActivityStateAggregatorManager.RefreshTimer.%@", v27];
    refreshTimerIdentifier = v15->_refreshTimerIdentifier;
    v15->_refreshTimerIdentifier = v28;

    objc_storeStrong(&v15->_homeAwayStateAggregator, v9);
    v30 = [MEMORY[0x277D0F7C0] futureWithPromise:&v15->_configurePromise];
    configureFuture = v15->_configureFuture;
    v15->_configureFuture = v30;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t46_138032 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t46_138032, &__block_literal_global_48_138033);
  }

  v3 = logCategory__hmf_once_v47_138034;

  return v3;
}

void __52__HMDHomeActivityStateAggregatorManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v47_138034;
  logCategory__hmf_once_v47_138034 = v1;
}

+ (BOOL)isReportAllowed:(id)a3 sourceDevice:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_11;
  }

  v8 = [v6 contributorType];
  if (v8 == 1 || v8 == 4)
  {
    goto LABEL_7;
  }

  if (v8 != 3)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (v7)
  {
    v9 = [v7 version];
    v10 = +[HMDHomeKitVersion version13];
    v11 = [v9 isAtLeastVersion:v10];

    if ((v11 & 1) == 0)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = a1;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [v7 version];
        v20 = 138543618;
        v21 = v16;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Ignoring Coming Home report because device is too old: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      goto LABEL_11;
    }
  }

LABEL_7:
  v12 = 1;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

@end