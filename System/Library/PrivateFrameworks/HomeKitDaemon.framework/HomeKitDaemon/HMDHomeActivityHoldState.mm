@interface HMDHomeActivityHoldState
+ (id)logCategory;
- (BOOL)applyHoldWithHoldInfo:(id)info;
- (HMDHomeActivityHoldState)initWithParent:(id)parent;
- (int64_t)handleEvent:(id)event;
- (void)cancelHoldAndStartProbeWithProbingReason:(unint64_t)reason transitionReason:(int64_t)transitionReason;
- (void)handleEnterEvent:(id)event;
- (void)handleHoldTimerExpired;
- (void)handleManualStateChangeRequest:(id)request;
- (void)onInitialTransition:(id)transition;
- (void)scheduleHoldExpiredTimerFromHoldInfo:(id)info;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDHomeActivityHoldState

- (void)handleManualStateChangeRequest:(id)request
{
  v37 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  homeActivityStateMachine = [(HMDHomeActivityState *)self homeActivityStateMachine];
  if (homeActivityStateMachine)
  {
    userInfo = [requestCopy userInfo];
    v7 = [userInfo hmf_numberForKey:@"stateName"];
    unsignedIntegerValue = [v7 unsignedIntegerValue];

    if (unsignedIntegerValue > 0xA || ((0x729uLL >> unsignedIntegerValue) & 1) != 0)
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v27 = HMDHomeActivityStateTypeToString(unsignedIntegerValue);
        v29 = 138543618;
        v30 = v26;
        v31 = 2112;
        v32 = v27;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Can't put a HOLD on an invalid state : %@", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v22 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2801];
      v13 = v22;
    }

    else
    {
      v9 = qword_22A587C50[unsignedIntegerValue];
      v10 = [HMDHomeActivityStateTimedHoldInfo alloc];
      dataSource = [(HMDHomeActivityState *)self dataSource];
      currentDate = [dataSource currentDate];
      [homeActivityStateMachine holdTimeOutInSeconds];
      v13 = [(HMDHomeActivityStateTimedHoldInfo *)v10 initWithHomeActivityState:v9 activationDate:currentDate duration:?];

      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = HMDHomeActivityStateTypeToString(unsignedIntegerValue);
        v29 = 138544130;
        v30 = v17;
        v31 = 2112;
        v32 = v18;
        v33 = 2112;
        v34 = requestCopy;
        v35 = 2112;
        v36 = v13;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@User manually requested to change the home activity state to %@, event: %@, hold info: %@", &v29, 0x2Au);
      }

      objc_autoreleasePoolPop(v14);
      [(HMDHomeActivityHoldState *)selfCopy2 setActivityStateHoldInfo:v13];
      [(HMDHomeActivityHoldState *)selfCopy2 applyHoldWithHoldInfo:v13];
      activityStateHoldInfo = [(HMDHomeActivityHoldState *)selfCopy2 activityStateHoldInfo];
      state = [activityStateHoldInfo state];
      activityStateHoldInfo2 = [(HMDHomeActivityHoldState *)selfCopy2 activityStateHoldInfo];
      [(HMDHomeActivityState *)selfCopy2 notifyStateChangeToAllConsumers:state withHoldInfo:activityStateHoldInfo2 transitionalStateEndDate:0 reason:[HMDHomeActivityStateMachine reasonForStateEvent:requestCopy]];

      v22 = 0;
    }

    [requestCopy completedWithError:v22];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)cancelHoldAndStartProbeWithProbingReason:(unint64_t)reason transitionReason:(int64_t)transitionReason
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"probingReason";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
  v12[1] = @"stateTransitionReason";
  v13[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:transitionReason];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v9 = [objc_alloc(MEMORY[0x277D02920]) initWithName:@"startProbe" userInfo:v8];
  homeActivityStateMachine = [(HMDHomeActivityState *)self homeActivityStateMachine];
  [homeActivityStateMachine dispatchEvent:v9];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleHoldTimerExpired
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    activityStateHoldInfo = [(HMDHomeActivityHoldState *)selfCopy activityStateHoldInfo];
    v9 = 138543618;
    v10 = v6;
    v11 = 2112;
    v12 = activityStateHoldInfo;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Hold expired : %@. Going to start probing for next step", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDHomeActivityHoldState *)selfCopy cancelHoldAndStartProbeWithProbingReason:2 transitionReason:2];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  fireCopy = fire;
  homeActivityStateMachine = [(HMDHomeActivityState *)self homeActivityStateMachine];
  queue = [homeActivityStateMachine queue];
  dispatch_assert_queue_V2(queue);

  holdTimer = [(HMDHomeActivityHoldState *)self holdTimer];

  if (holdTimer == fireCopy)
  {

    [(HMDHomeActivityHoldState *)self handleHoldTimerExpired];
  }
}

- (void)scheduleHoldExpiredTimerFromHoldInfo:(id)info
{
  v35 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dataSource = [(HMDHomeActivityState *)self dataSource];
  if (dataSource)
  {
    [(HMDHomeActivityHoldState *)self cancelHoldTimer];
    endDate = [infoCopy endDate];
    currentDate = [dataSource currentDate];
    [endDate timeIntervalSinceDate:currentDate];
    v9 = v8;

    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      endDate2 = [infoCopy endDate];
      hmf_localTimeDescription = [endDate2 hmf_localTimeDescription];
      v16 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
      v29 = 138543874;
      v30 = v13;
      v31 = 2112;
      v32 = hmf_localTimeDescription;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Starting the audit timer to fire at %@, seconds before hold expires: %@", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    if (v9 >= 1.0 && fabs(v9 + -1.0) >= 2.22044605e-16)
    {
      v22 = [dataSource timerWithTimeInterval:1 options:v9];
      [(HMDHomeActivityHoldState *)selfCopy setHoldTimer:v22];

      holdTimer = [(HMDHomeActivityHoldState *)selfCopy holdTimer];
      [holdTimer setDelegate:selfCopy];

      homeActivityStateMachine = [(HMDHomeActivityState *)selfCopy homeActivityStateMachine];
      queue = [homeActivityStateMachine queue];
      holdTimer2 = [(HMDHomeActivityHoldState *)selfCopy holdTimer];
      [holdTimer2 setDelegateQueue:queue];

      holdTimer3 = [(HMDHomeActivityHoldState *)selfCopy holdTimer];
      [holdTimer3 resume];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = selfCopy;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
        v29 = 138543618;
        v30 = v20;
        v31 = 2112;
        v32 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Not scheduling the timer for less than 1 second interval : %@", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      [(HMDHomeActivityHoldState *)v18 handleHoldTimerExpired];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)applyHoldWithHoldInfo:(id)info
{
  v16 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dataSource = [(HMDHomeActivityState *)self dataSource];
  currentDate = [dataSource currentDate];
  v7 = [infoCopy isActiveAtDate:currentDate];

  if (v7)
  {
    [(HMDHomeActivityHoldState *)self scheduleHoldExpiredTimerFromHoldInfo:infoCopy];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Cannot apply Hold since it has already been expired", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)handleEnterEvent:(id)event
{
  v24 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  userInfo = [eventCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"holdInfo"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v19;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot process hold request as hold info is nil. Going to start probing again.", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v9 = objc_autoreleasePoolPush();
    v20 = selfCopy;
    v11 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_13;
    }

    v12 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v12;
    v13 = "%{public}@Cannot process hold request as hold info is nil";
    v14 = v11;
    v15 = OS_LOG_TYPE_FAULT;
    goto LABEL_12;
  }

  [(HMDHomeActivityHoldState *)self setActivityStateHoldInfo:v8];
  if (![(HMDHomeActivityHoldState *)self applyHoldWithHoldInfo:v8])
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      objc_autoreleasePoolPop(v9);
      [(HMDHomeActivityHoldState *)self cancelHoldAndStartProbeWithProbingReason:4 transitionReason:[HMDHomeActivityStateMachine reasonForStateEvent:eventCopy]];
      [eventCopy completedWithError:0];
      goto LABEL_14;
    }

    v12 = HMFGetLogIdentifier();
    v22 = 138543362;
    v23 = v12;
    v13 = "%{public}@Could not apply the hold. Going to request probing again.";
    v14 = v11;
    v15 = OS_LOG_TYPE_ERROR;
LABEL_12:
    _os_log_impl(&dword_229538000, v14, v15, v13, &v22, 0xCu);

    goto LABEL_13;
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)onInitialTransition:(id)transition
{
  v31 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  v22.receiver = self;
  v22.super_class = HMDHomeActivityHoldState;
  [(HMDHomeActivityState *)&v22 onInitialTransition:transitionCopy];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    name = [transitionCopy name];
    activityStateHoldInfo = [(HMDHomeActivityHoldState *)selfCopy activityStateHoldInfo];
    *buf = 138544130;
    v24 = v8;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = name;
    v29 = 2112;
    v30 = activityStateHoldInfo;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@onInitialTransition : %@ / %@ / %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  activityStateHoldInfo2 = [(HMDHomeActivityHoldState *)selfCopy activityStateHoldInfo];

  if (activityStateHoldInfo2)
  {
    activityStateHoldInfo3 = [(HMDHomeActivityHoldState *)selfCopy activityStateHoldInfo];
    state = [activityStateHoldInfo3 state];
    activityStateHoldInfo4 = [(HMDHomeActivityHoldState *)selfCopy activityStateHoldInfo];
    [(HMDHomeActivityState *)selfCopy notifyStateChangeToAllConsumers:state withHoldInfo:activityStateHoldInfo4 transitionalStateEndDate:0 reason:[HMDHomeActivityStateMachine reasonForStateEvent:transitionCopy]];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@We are in hold state without HOLD information. Houston we have a problem!!!", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (int64_t)handleEvent:(id)event
{
  eventCopy = event;
  name = [eventCopy name];
  v6 = HMFEqualObjects();

  if (v6)
  {
    v7 = 1;
    goto LABEL_12;
  }

  name2 = [eventCopy name];
  v9 = HMFEqualObjects();

  if (v9)
  {
    [(HMDHomeActivityHoldState *)self handleManualStateChangeRequest:eventCopy];
LABEL_11:
    v7 = 2;
    goto LABEL_12;
  }

  name3 = [eventCopy name];
  v11 = HMFEqualObjects();

  if (v11)
  {
    [(HMDHomeActivityHoldState *)self cancelHoldAndStartProbeWithProbingReason:3 transitionReason:[HMDHomeActivityStateMachine reasonForStateEvent:eventCopy]];
LABEL_10:
    [eventCopy completedWithError:0];
    goto LABEL_11;
  }

  name4 = [eventCopy name];
  v13 = HMFEqualObjects();

  if (!v13)
  {
    goto LABEL_10;
  }

  userInfo = [eventCopy userInfo];
  v15 = [userInfo hmf_numberForKey:@"probingReason"];

  if (HMFEqualObjects())
  {
    [eventCopy completedWithError:0];
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

LABEL_12:
  return v7;
}

- (HMDHomeActivityHoldState)initWithParent:(id)parent
{
  v6.receiver = self;
  v6.super_class = HMDHomeActivityHoldState;
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
  if (logCategory__hmf_once_t12_74352 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_74352, &__block_literal_global_74353);
  }

  v3 = logCategory__hmf_once_v13_74354;

  return v3;
}

void __39__HMDHomeActivityHoldState_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_74354;
  logCategory__hmf_once_v13_74354 = v1;
}

@end