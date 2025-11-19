@interface HMDHomeActivityStateMachine
+ (id)logCategory;
+ (int64_t)reasonForStateEvent:(id)a3;
- (HMDHomeActivityState)currentHomeActivityState;
- (HMDHomeActivityStateMachine)initWithDataSource:(id)a3 aggregators:(id)a4 initialStateHoldDetails:(id)a5;
- (HMDHomeActivityStateMachine)initWithDataSource:(id)a3 aggregators:(id)a4 initialStateHoldDetails:(id)a5 queue:(id)a6;
- (HMDHomeActivityStateMachineTransitionDelegate)stateTransitionDelegate;
- (double)holdTimeOutInSeconds;
- (id)_aggregatorOfType:(unint64_t)a3;
- (id)comingHomeAggregator;
- (id)homeAwayAggregator;
- (id)logIdentifier;
- (id)vacationAggregator;
- (void)cancelOngoingHoldFromUserRequest:(id)a3;
- (void)configure;
- (void)createStateMachine;
- (void)handleHomeActivityStateChange:(unint64_t)a3 withHoldInfo:(id)a4 transitionalStateEndDate:(id)a5 reason:(int64_t)a6;
- (void)handleStateChangeForAggregatorOfType:(unint64_t)a3;
- (void)handleUpdateHomeActivityStateFromUserRequest:(id)a3;
- (void)probeHomeActivityState;
@end

@implementation HMDHomeActivityStateMachine

- (HMDHomeActivityStateMachineTransitionDelegate)stateTransitionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stateTransitionDelegate);

  return WeakRetained;
}

- (id)_aggregatorOfType:(unint64_t)a3
{
  v4 = [(HMDHomeActivityStateMachine *)self aggregators];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDHomeActivityStateMachine__aggregatorOfType___block_invoke;
  v7[3] = &__block_descriptor_40_e47_B32__0__HMDHomeActivityStateAggregator_8Q16_B24l;
  v7[4] = a3;
  v5 = [v4 hmf_objectPassingTest:v7];

  return v5;
}

- (id)comingHomeAggregator
{
  v2 = [(HMDHomeActivityStateMachine *)self _aggregatorOfType:3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {

    return v4;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    return [(HMDHomeActivityStateMachine *)v6 vacationAggregator];
  }
}

- (id)vacationAggregator
{
  v2 = [(HMDHomeActivityStateMachine *)self _aggregatorOfType:4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {

    return v4;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    return [(HMDHomeActivityStateMachine *)v6 homeAwayAggregator];
  }
}

- (id)homeAwayAggregator
{
  v2 = [(HMDHomeActivityStateMachine *)self _aggregatorOfType:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {

    return v4;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    [(HMDHomeActivityStateMachine *)v6 holdTimeOutInSeconds];
  }

  return result;
}

- (double)holdTimeOutInSeconds
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHomeActivityStateMachine *)self dataSource];
  v4 = [v3 preferences];
  v5 = [v4 preferenceForKey:@"HMDHomeActivityStateDefaultHoldTimeoutInSeconds"];
  v6 = [v5 numberValue];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Using user-defined default hold timeout: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [v6 doubleValue];
    v13 = v12;
  }

  else
  {
    if (v10)
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2048;
      v20 = 0x40BC200000000000;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Using the default hold timeout: %f", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = 7200.0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)logIdentifier
{
  v2 = [(HMDHomeActivityStateMachine *)self dataSource];
  v3 = [v2 logIdentifier];

  return v3;
}

- (void)handleStateChangeForAggregatorOfType:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMDHomeActivityStateContributorTypeAsString(a3);
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Received state change notification from %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomeActivityStateMachine *)v6 probeHomeActivityState];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)probeHomeActivityState
{
  v3 = [(HMDHierarchicalStateMachine *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDHomeActivityStateMachine_probeHomeActivityState__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __53__HMDHomeActivityStateMachine_probeHomeActivityState__block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"probingReason";
  v5[1] = @"stateTransitionReason";
  v6[0] = &unk_283E73D48;
  v6[1] = &unk_283E73D60;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = [objc_alloc(MEMORY[0x277D02920]) initWithName:@"startProbe" userInfo:v2];
  [*(a1 + 32) dispatchEvent:v3];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)cancelOngoingHoldFromUserRequest:(id)a3
{
  v4 = a3;
  v5 = [(HMDHierarchicalStateMachine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDHomeActivityStateMachine_cancelOngoingHoldFromUserRequest___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __64__HMDHomeActivityStateMachine_cancelOngoingHoldFromUserRequest___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentHomeActivityState];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 activityStateHoldInfo];
      *buf = 138543618;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@User requested to cancel the ongoing HOLD : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v19 = @"stateTransitionReason";
    v20 = &unk_283E73D30;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v12 = objc_alloc(MEMORY[0x277D02920]);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64__HMDHomeActivityStateMachine_cancelOngoingHoldFromUserRequest___block_invoke_57;
    v17[3] = &unk_27868A250;
    v18 = *(a1 + 40);
    v13 = [v12 initWithName:@"cancelHoldRequested" userInfo:v11 completion:v17];
    [*(a1 + 32) dispatchEvent:v13];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v14;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Cannot cancel the HOLD as there is none in place", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v15 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2803];
    [v15 respondWithError:v11];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdateHomeActivityStateFromUserRequest:(id)a3
{
  v4 = a3;
  v5 = [(HMDHierarchicalStateMachine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HMDHomeActivityStateMachine_handleUpdateHomeActivityStateFromUserRequest___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __76__HMDHomeActivityStateMachine_handleUpdateHomeActivityStateFromUserRequest___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) numberForKey:*MEMORY[0x277CCFDD8]];
  if (!v2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_ERROR, "%{public}@Home activity state name was not present in the message payload", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    goto LABEL_16;
  }

  if ((HMIsValidHMHomeActivityStateType() & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v15;
      v39 = 2112;
      v40 = v2;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Invalid home activity state specified : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v10 = *(a1 + 32);
    v16 = MEMORY[0x277CCA9B8];
    v17 = 2801;
    goto LABEL_15;
  }

  v3 = *(a1 + 40);
  if (([objc_opt_class() canHoldBeAppliedToState:{objc_msgSend(v2, "unsignedIntValue")}] & 1) == 0)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 40);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      [v2 unsignedIntValue];
      v22 = HMHomeActivityStateToString();
      *buf = 138543618;
      v38 = v21;
      v39 = 2112;
      v40 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not apply hold to a transitional state: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v10 = *(a1 + 32);
    v16 = MEMORY[0x277CCA9B8];
    v17 = 2804;
LABEL_15:
    v11 = [v16 hmPrivateErrorWithCode:v17];
LABEL_16:
    v23 = v11;
    [v10 respondWithError:v11];
    goto LABEL_17;
  }

  v4 = [v2 unsignedIntegerValue];
  if (v4 > 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_22A587C10[v4];
  }

  v25 = objc_autoreleasePoolPush();
  v26 = *(a1 + 40);
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v29 = HMDHomeActivityStateTypeToString(v5);
    *buf = 138543618;
    v38 = v28;
    v39 = 2112;
    v40 = v29;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@User requested to manually change the home activity state to : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
  v35[0] = @"stateName";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
  v35[1] = @"stateTransitionReason";
  v36[0] = v30;
  v36[1] = &unk_283E73D18;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];

  v31 = objc_alloc(MEMORY[0x277D02920]);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __76__HMDHomeActivityStateMachine_handleUpdateHomeActivityStateFromUserRequest___block_invoke_53;
  v33[3] = &unk_27868A250;
  v34 = *(a1 + 32);
  v32 = [v31 initWithName:@"manualStateChangeRequested" userInfo:v23 completion:v33];
  [*(a1 + 40) dispatchEvent:v32];

LABEL_17:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)handleHomeActivityStateChange:(unint64_t)a3 withHoldInfo:(id)a4 transitionalStateEndDate:(id)a5 reason:(int64_t)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = [(HMDHomeActivityStateMachine *)self stateTransitionDelegate];
  v13 = v12;
  if (v12)
  {
    [v12 stateMachineDidTransitionToActivityState:a3 withHoldInfo:v10 transitionalStateEndDate:v11 reason:a6];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Asked to handleHomeActivityStateChange but stateTransitionDelegate was unexpectedly nil", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (HMDHomeActivityState)currentHomeActivityState
{
  v2 = [(HMDHierarchicalStateMachine *)self currentHSMState];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)createStateMachine
{
  v18[8] = *MEMORY[0x277D85DE8];
  v3 = [HMDHomeActivityRootState alloc];
  v4 = [(HMDHomeActivityStateMachine *)self dataSource];
  v5 = [(HMDHomeActivityState *)v3 initWithParent:0 dataSource:v4];

  v17 = v5;
  v6 = [[HMDHomeActivityPrimaryState alloc] initWithParent:v5];
  v7 = [(HMDHomeActivityState *)[HMDHomeActivityAwayState alloc] initWithParent:v6];
  v8 = [(HMDHomeActivityState *)[HMDHomeActivityVacationState alloc] initWithParent:v7];
  v9 = [(HMDHomeActivityState *)[HMDHomeActivityComingHomeFromVacationState alloc] initWithParent:v8];
  v10 = [(HMDHomeActivityState *)[HMDHomeActivityComingHomeState alloc] initWithParent:v7];
  v11 = [(HMDHomeActivityState *)[HMDHomeActivityHomeState alloc] initWithParent:v6];
  v12 = [[HMDHomeActivityHoldState alloc] initWithParent:v6];
  v18[0] = v5;
  v18[1] = v6;
  v18[2] = v7;
  v18[3] = v8;
  v18[4] = v9;
  v18[5] = v10;
  v18[6] = v11;
  v18[7] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:8];
  v14 = [v13 mutableCopy];

  v15 = [v14 copy];
  [(HMDHierarchicalStateMachine *)self setStates:v15];

  [(HMDHierarchicalStateMachine *)self setInitialState:v6];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)configure
{
  v3 = [(HMDHierarchicalStateMachine *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDHomeActivityStateMachine_configure__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __40__HMDHomeActivityStateMachine_configure__block_invoke(uint64_t a1)
{
  [*(a1 + 32) createStateMachine];
  v2 = [*(a1 + 32) aggregators];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__HMDHomeActivityStateMachine_configure__block_invoke_2;
  v4[3] = &unk_27867F208;
  v4[4] = *(a1 + 32);
  [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v4];

  return [*(a1 + 32) _start];
}

- (HMDHomeActivityStateMachine)initWithDataSource:(id)a3 aggregators:(id)a4 initialStateHoldDetails:(id)a5 queue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = HMDHomeActivityStateMachine;
  v14 = [(HMDHierarchicalStateMachine *)&v17 initWithQueue:a6 allowSelfStateTransitions:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_dataSource, a3);
    objc_storeStrong(&v15->_aggregators, a4);
    objc_storeStrong(&v15->_initialStateHoldDetails, a5);
  }

  return v15;
}

- (HMDHomeActivityStateMachine)initWithDataSource:(id)a3 aggregators:(id)a4 initialStateHoldDetails:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = HMDispatchQueueNameString();
  v12 = [v11 UTF8String];
  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create(v12, v13);

  v15 = [(HMDHomeActivityStateMachine *)self initWithDataSource:v10 aggregators:v9 initialStateHoldDetails:v8 queue:v14];
  return v15;
}

+ (int64_t)reasonForStateEvent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"stateTransitionReason"];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 hmf_numberForKey:@"stateTransitionReason"];

    v9 = [v8 unsignedIntValue];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Asked to fetch HMDHomeActivityStateTransitionReason from event %@, but key was unset", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_197419 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_197419, &__block_literal_global_197420);
  }

  v3 = logCategory__hmf_once_v11_197421;

  return v3;
}

void __42__HMDHomeActivityStateMachine_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_197421;
  logCategory__hmf_once_v11_197421 = v1;
}

@end