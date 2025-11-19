@interface HMDHomeActivityState
+ (id)logCategory;
+ (unint64_t)stateType;
- (BOOL)lookupAndTransitionToState:(unint64_t)a3 withEvent:(id)a4;
- (HMDHomeActivityState)currentHomeActivityState;
- (HMDHomeActivityState)initWithParent:(id)a3;
- (HMDHomeActivityState)initWithParent:(id)a3 dataSource:(id)a4;
- (HMDHomeActivityStateMachine)homeActivityStateMachine;
- (id)logIdentifier;
- (void)checkAndNotifyAllConsumersAboutStateChangeDueToEvent:(id)a3;
- (void)notifyStateChangeToAllConsumers:(unint64_t)a3 withHoldInfo:(id)a4 transitionalStateEndDate:(id)a5 reason:(int64_t)a6;
- (void)onInitialTransition:(id)a3;
@end

@implementation HMDHomeActivityState

- (id)logIdentifier
{
  v2 = [(HMDHomeActivityState *)self dataSource];
  v3 = [v2 logIdentifier];

  return v3;
}

- (HMDHomeActivityStateMachine)homeActivityStateMachine
{
  v3 = [(HMDHierarchicalStateMachineState *)self hsm];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDHierarchicalStateMachineState *)self hsm];
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

  return v6;
}

- (HMDHomeActivityState)currentHomeActivityState
{
  v3 = [(HMDHierarchicalStateMachineState *)self hsm];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDHomeActivityState *)self homeActivityStateMachine];
  v6 = [v5 currentHSMState];

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

  return v7;
}

- (void)onInitialTransition:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMDHomeActivityState;
  [(HMDHierarchicalStateMachineState *)&v13 onInitialTransition:v4];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v4 name];
    *buf = 138543874;
    v15 = v8;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@onInitialTransition : %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDHomeActivityState *)v6 checkAndNotifyAllConsumersAboutStateChangeDueToEvent:v4];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)checkAndNotifyAllConsumersAboutStateChangeDueToEvent:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() stateType];
  if (v5 > 0xA || ((0x729uLL >> v5) & 1) != 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Not notifying state change because it is unknown. Event: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v6 = qword_22A587C50[v5];
    v7 = [v4 userInfo];
    v8 = [v7 hmf_dateForKey:@"transitionalStateEndDate"];

    [(HMDHomeActivityState *)self notifyStateChangeToAllConsumers:v6 withHoldInfo:0 transitionalStateEndDate:v8 reason:[HMDHomeActivityStateMachine reasonForStateEvent:v4]];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)notifyStateChangeToAllConsumers:(unint64_t)a3 withHoldInfo:(id)a4 transitionalStateEndDate:(id)a5 reason:(int64_t)a6
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = [(HMDHomeActivityState *)self homeActivityStateMachine];
  v13 = v12;
  if (v12)
  {
    [v12 handleHomeActivityStateChange:a3 withHoldInfo:v10 transitionalStateEndDate:v11 reason:a6];
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Asked to notifyStateChangeToAllConsumers but homeActivityStateMachine was unexpectedly nil", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)lookupAndTransitionToState:(unint64_t)a3 withEvent:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HMDHierarchicalStateMachineState *)self hsm];
  v8 = HMDHomeActivityStateTypeToString(a3);
  v9 = [v7 stateWithName:v8];

  if (v9)
  {
    [v7 transitionToState:v9 withEvent:v6];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = HMDHomeActivityStateTypeToString(a3);
      v17 = 138543618;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the state : %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9 != 0;
}

- (HMDHomeActivityState)initWithParent:(id)a3
{
  v4 = a3;
  v5 = [v4 dataSource];
  v6 = [(HMDHomeActivityState *)self initWithParent:v4 dataSource:v5];

  return v6;
}

- (HMDHomeActivityState)initWithParent:(id)a3 dataSource:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() stateType];
  v10 = HMDHomeActivityStateTypeToString(v9);
  v13.receiver = self;
  v13.super_class = HMDHomeActivityState;
  v11 = [(HMDHierarchicalStateMachineState *)&v13 initWithName:v10 parent:v8];

  if (v11)
  {
    objc_storeStrong(&v11->_dataSource, a4);
    v11->_autoNotifySubsystemsAboutStateChange = 1;
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_53140 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_53140, &__block_literal_global_53141);
  }

  v3 = logCategory__hmf_once_v7_53142;

  return v3;
}

void __35__HMDHomeActivityState_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_53142;
  logCategory__hmf_once_v7_53142 = v1;
}

+ (unint64_t)stateType
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end