@interface HMDHomeActivityPrimaryState
+ (id)logCategory;
- (BOOL)_transitionToInitialHeldState;
- (HMDHomeActivityPrimaryState)initWithParent:(id)a3;
- (int64_t)handleEvent:(id)a3;
- (unint64_t)probeHomeActivityStateWithTransitionalStateEndDate:(id *)a3;
- (void)handleManualStateChangeRequest:(id)a3;
- (void)handleProbeAndTransitionToState:(id)a3;
- (void)onInitialTransition:(id)a3;
@end

@implementation HMDHomeActivityPrimaryState

- (unint64_t)probeHomeActivityStateWithTransitionalStateEndDate:(id *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [(HMDHomeActivityState *)self homeActivityStateMachine];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 homeAwayAggregator];
    v8 = [v7 computedState];

    v9 = [v6 vacationAggregator];
    v10 = [v9 computedState];

    v11 = [v6 comingHomeAggregator];
    v12 = [v11 computedState];

    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v26 = 138544130;
      v27 = v16;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Probing state with %@ %@ %@", &v26, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [v8 type];
    if (v17 != 2)
    {
      v14 = v17 == 1;
LABEL_16:

      goto LABEL_17;
    }

    v22 = [v10 type];
    if (v22 != 1)
    {
      if (v22)
      {
        goto LABEL_16;
      }

      v23 = [v12 type];
      if (!v23)
      {
        v14 = 2;
        goto LABEL_16;
      }

      if (v23 == 1)
      {
        if (a3)
        {
          *a3 = [v12 transitionalStateEndDate];
        }

        v14 = 6;
        goto LABEL_16;
      }
    }

    if ([v12 type] == 1)
    {
      if (a3)
      {
        *a3 = [v12 transitionalStateEndDate];
      }

      v14 = 7;
    }

    else
    {
      v14 = 4;
    }

    goto LABEL_16;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v21;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Asked to probeHomeActivityState but homeActivityStateMachine was unexpectedly nil", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v18);
  v14 = 0;
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)handleManualStateChangeRequest:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 hmf_numberForKey:@"stateName"];
  v7 = [v6 unsignedIntegerValue];

  if (v7 > 0xA || ((0x729uLL >> v7) & 1) != 0)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = HMDHomeActivityStateTypeToString(v7);
      *buf = 138543618;
      v37 = v25;
      v38 = 2112;
      v39 = v26;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Can't put a HOLD on an invalid state : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v13 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2801];
    [v4 completedWithError:v13];
  }

  else
  {
    v8 = qword_22A587C50[v7];
    v9 = [HMDHomeActivityStateTimedHoldInfo alloc];
    v10 = [(HMDHomeActivityState *)self dataSource];
    v11 = [v10 currentDate];
    v12 = [(HMDHomeActivityState *)self homeActivityStateMachine];
    [v12 holdTimeOutInSeconds];
    v13 = [(HMDHomeActivityStateTimedHoldInfo *)v9 initWithHomeActivityState:v8 activationDate:v11 duration:?];

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = HMDHomeActivityStateTypeToString(v7);
      *buf = 138544130;
      v37 = v17;
      v38 = 2112;
      v39 = v18;
      v40 = 2112;
      v41 = v4;
      v42 = 2112;
      v43 = v13;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@User manually requested to change the home activity state to %@, event: %@, hold info: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{+[HMDHomeActivityStateMachine reasonForStateEvent:](HMDHomeActivityStateMachine, "reasonForStateEvent:", v4, @"holdInfo", @"stateTransitionReason", v13)}];
    v35[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:2];

    v21 = [objc_alloc(MEMORY[0x277D02920]) initWithName:@"requestToApplyHold" userInfo:v20];
    if (-[HMDHomeActivityState lookupAndTransitionToState:withEvent:](v15, "lookupAndTransitionToState:withEvent:", [objc_opt_class() stateType], v21))
    {
      [v4 completedWithError:0];
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = v15;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = HMDHomeActivityStateTypeToString(v7);
        *buf = 138543618;
        v37 = v30;
        v38 = 2112;
        v39 = v31;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Unable to look up and transition to the requested state: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v32 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2801];
      [v4 completedWithError:v32];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)_transitionToInitialHeldState
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeActivityState *)self homeActivityStateMachine];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 initialStateHoldDetails];
    if (v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = self;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        [v5 state];
        v10 = HMHomeActivityStateToString();
        *buf = 138543874;
        v24 = v9;
        v25 = 2112;
        v26 = v10;
        v27 = 2112;
        v28 = v5;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Transitioning to held state %@ with hold info: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v6);
      v21 = @"holdInfo";
      v22 = v5;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v12 = [objc_alloc(MEMORY[0x277D02920]) initWithName:@"requestToApplyHold" userInfo:v11];
      v13 = -[HMDHomeActivityState lookupAndTransitionToState:withEvent:](v7, "lookupAndTransitionToState:withEvent:", [objc_opt_class() stateType], v12);
      if (!v13)
      {
        v14 = objc_autoreleasePoolPush();
        v15 = v7;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          [v5 state];
          v18 = HMHomeActivityStateToString();
          *buf = 138543874;
          v24 = v17;
          v25 = 2112;
          v26 = v18;
          v27 = 2112;
          v28 = v5;
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

- (void)handleProbeAndTransitionToState:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31 = 0;
  v5 = [(HMDHomeActivityPrimaryState *)self probeHomeActivityStateWithTransitionalStateEndDate:&v31];
  v6 = v31;
  if (v5)
  {
    v7 = [(HMDHomeActivityState *)self homeActivityStateMachine];
    v8 = [v7 currentHomeActivityState];

    v9 = [objc_opt_class() stateType];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    v30 = v6;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v13 = v29 = v4;
      v14 = HMDHomeActivityStateTypeToString(v5);
      v15 = [v6 hmf_localTimeDescription];
      v16 = HMDHomeActivityStateTypeToString(v9);
      *buf = 138544130;
      v33 = v13;
      v34 = 2114;
      v35 = v14;
      v36 = 2114;
      v37 = v15;
      v38 = 2114;
      v39 = v16;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Probed state: %{public}@, transitionStateEndDate: %{public}@, current state: %{public}@", buf, 0x2Au);

      v6 = v30;
      v4 = v29;
    }

    objc_autoreleasePoolPop(v10);
    if (v9 == v5)
    {
      v17 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      if (v19)
      {
        v6 = v30;
        [v19 handleProbedTransitionalStateEndDate:v30 withEvent:v4];
LABEL_15:

        goto LABEL_16;
      }
    }

    else
    {
      v19 = [MEMORY[0x277CBEB38] dictionary];
      [v19 setObject:v6 forKeyedSubscript:@"transitionalStateEndDate"];
      v24 = [MEMORY[0x277CCABB0] numberWithInteger:{+[HMDHomeActivityStateMachine reasonForStateEvent:](HMDHomeActivityStateMachine, "reasonForStateEvent:", v4)}];
      [v19 setObject:v24 forKeyedSubscript:@"stateTransitionReason"];

      v25 = objc_alloc(MEMORY[0x277D02920]);
      v26 = [v19 copy];
      v27 = [v25 initWithName:@"startProbe" userInfo:v26];

      [(HMDHomeActivityState *)v11 lookupAndTransitionToState:v5 withEvent:v27];
      [v4 completedWithError:0];
    }

    v6 = v30;
    goto LABEL_15;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = self;
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

- (void)onInitialTransition:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = HMDHomeActivityPrimaryState;
  [(HMDHomeActivityState *)&v5 onInitialTransition:v4];
  if (![(HMDHomeActivityPrimaryState *)self _transitionToInitialHeldState])
  {
    [(HMDHomeActivityPrimaryState *)self handleProbeAndTransitionToState:v4];
  }
}

- (int64_t)handleEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = HMFEqualObjects();

  if (v6)
  {
    [(HMDHomeActivityPrimaryState *)self handleManualStateChangeRequest:v4];
  }

  else
  {
    v7 = [v4 name];
    v8 = HMFEqualObjects();

    if (!v8)
    {
      v9 = 1;
      goto LABEL_7;
    }

    [(HMDHomeActivityPrimaryState *)self handleProbeAndTransitionToState:v4];
  }

  v9 = 2;
LABEL_7:

  return v9;
}

- (HMDHomeActivityPrimaryState)initWithParent:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDHomeActivityPrimaryState;
  v3 = [(HMDHomeActivityState *)&v6 initWithParent:a3];
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