@interface HMDHomeActivityPrimaryState
+ (id)logCategory;
- (BOOL)_transitionToInitialHeldState;
- (HMDHomeActivityPrimaryState)initWithParent:(id)parent;
- (int64_t)handleEvent:(id)event;
- (unint64_t)probeHomeActivityStateWithTransitionalStateEndDate:(id *)date;
- (void)handleManualStateChangeRequest:(id)request;
- (void)handleProbeAndTransitionToState:(id)state;
- (void)onInitialTransition:(id)transition;
@end

@implementation HMDHomeActivityPrimaryState

- (unint64_t)probeHomeActivityStateWithTransitionalStateEndDate:(id *)date
{
  v34 = *MEMORY[0x277D85DE8];
  homeActivityStateMachine = [(HMDHomeActivityState *)self homeActivityStateMachine];
  v6 = homeActivityStateMachine;
  if (homeActivityStateMachine)
  {
    homeAwayAggregator = [homeActivityStateMachine homeAwayAggregator];
    computedState = [homeAwayAggregator computedState];

    vacationAggregator = [v6 vacationAggregator];
    computedState2 = [vacationAggregator computedState];

    comingHomeAggregator = [v6 comingHomeAggregator];
    computedState3 = [comingHomeAggregator computedState];

    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v26 = 138544130;
      v27 = v16;
      v28 = 2112;
      v29 = computedState;
      v30 = 2112;
      v31 = computedState2;
      v32 = 2112;
      v33 = computedState3;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Probing state with %@ %@ %@", &v26, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    type = [computedState type];
    if (type != 2)
    {
      selfCopy = type == 1;
LABEL_16:

      goto LABEL_17;
    }

    type2 = [computedState2 type];
    if (type2 != 1)
    {
      if (type2)
      {
        goto LABEL_16;
      }

      type3 = [computedState3 type];
      if (!type3)
      {
        selfCopy = 2;
        goto LABEL_16;
      }

      if (type3 == 1)
      {
        if (date)
        {
          *date = [computedState3 transitionalStateEndDate];
        }

        selfCopy = 6;
        goto LABEL_16;
      }
    }

    if ([computedState3 type] == 1)
    {
      if (date)
      {
        *date = [computedState3 transitionalStateEndDate];
      }

      selfCopy = 7;
    }

    else
    {
      selfCopy = 4;
    }

    goto LABEL_16;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v21;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Asked to probeHomeActivityState but homeActivityStateMachine was unexpectedly nil", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  selfCopy = 0;
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)handleManualStateChangeRequest:(id)request
{
  v44 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  userInfo = [requestCopy userInfo];
  v6 = [userInfo hmf_numberForKey:@"stateName"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue > 0xA || ((0x729uLL >> unsignedIntegerValue) & 1) != 0)
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = HMDHomeActivityStateTypeToString(unsignedIntegerValue);
      *buf = 138543618;
      v37 = v25;
      v38 = 2112;
      v39 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Can't put a HOLD on an invalid state : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v13 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2801];
    [requestCopy completedWithError:v13];
  }

  else
  {
    v8 = qword_22A587C50[unsignedIntegerValue];
    v9 = [HMDHomeActivityStateTimedHoldInfo alloc];
    dataSource = [(HMDHomeActivityState *)self dataSource];
    currentDate = [dataSource currentDate];
    homeActivityStateMachine = [(HMDHomeActivityState *)self homeActivityStateMachine];
    [homeActivityStateMachine holdTimeOutInSeconds];
    v13 = [(HMDHomeActivityStateTimedHoldInfo *)v9 initWithHomeActivityState:v8 activationDate:currentDate duration:?];

    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = HMDHomeActivityStateTypeToString(unsignedIntegerValue);
      *buf = 138544130;
      v37 = v17;
      v38 = 2112;
      v39 = v18;
      v40 = 2112;
      v41 = requestCopy;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@User manually requested to change the home activity state to %@, event: %@, hold info: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{+[HMDHomeActivityStateMachine reasonForStateEvent:](HMDHomeActivityStateMachine, "reasonForStateEvent:", requestCopy, @"holdInfo", @"stateTransitionReason", v13)}];
    v35[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:2];

    v21 = [objc_alloc(MEMORY[0x277D02920]) initWithName:@"requestToApplyHold" userInfo:v20];
    if (-[HMDHomeActivityState lookupAndTransitionToState:withEvent:](selfCopy2, "lookupAndTransitionToState:withEvent:", [objc_opt_class() stateType], v21))
    {
      [requestCopy completedWithError:0];
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = selfCopy2;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = HMDHomeActivityStateTypeToString(unsignedIntegerValue);
        *buf = 138543618;
        v37 = v30;
        v38 = 2112;
        v39 = v31;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to look up and transition to the requested state: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v32 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2801];
      [requestCopy completedWithError:v32];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)_transitionToInitialHeldState
{
  v29 = *MEMORY[0x277D85DE8];
  homeActivityStateMachine = [(HMDHomeActivityState *)self homeActivityStateMachine];
  v4 = homeActivityStateMachine;
  if (homeActivityStateMachine)
  {
    initialStateHoldDetails = [homeActivityStateMachine initialStateHoldDetails];
    if (initialStateHoldDetails)
    {
      v6 = objc_autoreleasePoolPush();
      selfCopy = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        [initialStateHoldDetails state];
        v10 = HMHomeActivityStateToString();
        *buf = 138543874;
        v24 = v9;
        v25 = 2112;
        v26 = v10;
        v27 = 2112;
        v28 = initialStateHoldDetails;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Transitioning to held state %@ with hold info: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v6);
      v21 = @"holdInfo";
      v22 = initialStateHoldDetails;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v12 = [objc_alloc(MEMORY[0x277D02920]) initWithName:@"requestToApplyHold" userInfo:v11];
      v13 = -[HMDHomeActivityState lookupAndTransitionToState:withEvent:](selfCopy, "lookupAndTransitionToState:withEvent:", [objc_opt_class() stateType], v12);
      if (!v13)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = selfCopy;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          [initialStateHoldDetails state];
          v18 = HMHomeActivityStateToString();
          *buf = 138543874;
          v24 = v17;
          v25 = 2112;
          v26 = v18;
          v27 = 2112;
          v28 = initialStateHoldDetails;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to look up and transition to held state %@ with hold info: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)handleProbeAndTransitionToState:(id)state
{
  v40 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v31 = 0;
  v5 = [(HMDHomeActivityPrimaryState *)self probeHomeActivityStateWithTransitionalStateEndDate:&v31];
  v6 = v31;
  if (v5)
  {
    homeActivityStateMachine = [(HMDHomeActivityState *)self homeActivityStateMachine];
    currentHomeActivityState = [homeActivityStateMachine currentHomeActivityState];

    stateType = [objc_opt_class() stateType];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    v30 = v6;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v13 = v29 = stateCopy;
      v14 = HMDHomeActivityStateTypeToString(v5);
      hmf_localTimeDescription = [v6 hmf_localTimeDescription];
      v16 = HMDHomeActivityStateTypeToString(stateType);
      *buf = 138544130;
      v33 = v13;
      v34 = 2114;
      v35 = v14;
      v36 = 2114;
      v37 = hmf_localTimeDescription;
      v38 = 2114;
      v39 = v16;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Probed state: %{public}@, transitionStateEndDate: %{public}@, current state: %{public}@", buf, 0x2Au);

      v6 = v30;
      stateCopy = v29;
    }

    objc_autoreleasePoolPop(v10);
    if (stateType == v5)
    {
      v17 = currentHomeActivityState;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      dictionary = v18;

      if (dictionary)
      {
        v6 = v30;
        [dictionary handleProbedTransitionalStateEndDate:v30 withEvent:stateCopy];
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:v6 forKeyedSubscript:@"transitionalStateEndDate"];
      v24 = [MEMORY[0x277CCABB0] numberWithInteger:{+[HMDHomeActivityStateMachine reasonForStateEvent:](HMDHomeActivityStateMachine, "reasonForStateEvent:", stateCopy)}];
      [dictionary setObject:v24 forKeyedSubscript:@"stateTransitionReason"];

      v25 = objc_alloc(MEMORY[0x277D02920]);
      v26 = [dictionary copy];
      v27 = [v25 initWithName:@"startProbe" userInfo:v26];

      [(HMDHomeActivityState *)selfCopy lookupAndTransitionToState:v5 withEvent:v27];
      [stateCopy completedWithError:0];
    }

    v6 = v30;
    goto LABEL_15;
  }

  v20 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v23;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Probed an unknown state", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
LABEL_16:

  v28 = *MEMORY[0x277D85DE8];
}

- (void)onInitialTransition:(id)transition
{
  transitionCopy = transition;
  v5.receiver = self;
  v5.super_class = HMDHomeActivityPrimaryState;
  [(HMDHomeActivityState *)&v5 onInitialTransition:transitionCopy];
  if (![(HMDHomeActivityPrimaryState *)self _transitionToInitialHeldState])
  {
    [(HMDHomeActivityPrimaryState *)self handleProbeAndTransitionToState:transitionCopy];
  }
}

- (int64_t)handleEvent:(id)event
{
  eventCopy = event;
  name = [eventCopy name];
  v6 = HMFEqualObjects();

  if (v6)
  {
    [(HMDHomeActivityPrimaryState *)self handleManualStateChangeRequest:eventCopy];
  }

  else
  {
    name2 = [eventCopy name];
    v8 = HMFEqualObjects();

    if (!v8)
    {
      v9 = 1;
      goto LABEL_7;
    }

    [(HMDHomeActivityPrimaryState *)self handleProbeAndTransitionToState:eventCopy];
  }

  v9 = 2;
LABEL_7:

  return v9;
}

- (HMDHomeActivityPrimaryState)initWithParent:(id)parent
{
  v6.receiver = self;
  v6.super_class = HMDHomeActivityPrimaryState;
  v3 = [(HMDHomeActivityState *)&v6 initWithParent:parent];
  v4 = v3;
  if (v3)
  {
    [(HMDHomeActivityState *)v3 setAutoNotifySubsystemsAboutStateChange:0];
  }

  return v4;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12, &__block_literal_global_7392);
  }

  v3 = logCategory__hmf_once_v13;

  return v3;
}

void __42__HMDHomeActivityPrimaryState_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13;
  logCategory__hmf_once_v13 = v1;
}

@end