@interface HMDHierarchicalStateMachineState
+ (id)logCategory;
- (HMDHierarchicalStateMachine)hsm;
- (HMDHierarchicalStateMachineState)initWithName:(id)name parent:(id)parent;
- (int64_t)_internalEventHandler:(id)handler;
- (void)_registerForEventHandler;
- (void)handleEnterEvent:(id)event;
- (void)handleExitEvent:(id)event;
- (void)onInitialTransition:(id)transition;
@end

@implementation HMDHierarchicalStateMachineState

- (HMDHierarchicalStateMachine)hsm
{
  WeakRetained = objc_loadWeakRetained(&self->_hsm);

  return WeakRetained;
}

- (int64_t)_internalEventHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDHierarchicalStateMachineState *)self hsm];
  eventCausingStateTransition = [v6 eventCausingStateTransition];
  v8 = eventCausingStateTransition;
  if (eventCausingStateTransition)
  {
    v9 = eventCausingStateTransition;
  }

  else
  {
    v9 = handlerCopy;
  }

  v10 = v9;

  enterState = [MEMORY[0x277D02920] enterState];

  if (enterState == handlerCopy)
  {
    [(HMDHierarchicalStateMachineState *)self handleEnterEvent:v10];
LABEL_11:
    v14 = 2;
    goto LABEL_12;
  }

  exitState = [MEMORY[0x277D02920] exitState];

  if (exitState == handlerCopy)
  {
    [(HMDHierarchicalStateMachineState *)self handleExitEvent:v10];
    goto LABEL_11;
  }

  initialTransition = [MEMORY[0x277D02920] initialTransition];

  if (initialTransition == handlerCopy)
  {
    [(HMDHierarchicalStateMachineState *)self onInitialTransition:v10];
    goto LABEL_11;
  }

  v14 = [(HMDHierarchicalStateMachineState *)self handleEvent:handlerCopy];
LABEL_12:

  objc_autoreleasePoolPop(v5);
  return v14;
}

- (void)_registerForEventHandler
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__HMDHierarchicalStateMachineState__registerForEventHandler__block_invoke;
  v3[3] = &unk_278675A00;
  objc_copyWeak(&v4, &location);
  [(CUState *)self setEventHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

uint64_t __60__HMDHierarchicalStateMachineState__registerForEventHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _internalEventHandler:v3];

  return v5;
}

- (void)onInitialTransition:(id)transition
{
  v22 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [(CUState *)selfCopy name];
    name2 = [transitionCopy name];
    userInfo = [transitionCopy userInfo];
    v14 = 138544130;
    v15 = v8;
    v16 = 2112;
    v17 = name;
    v18 = 2112;
    v19 = name2;
    v20 = 2112;
    v21 = userInfo;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@%@.onInitialTransition: %@ / %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = [(HMDHierarchicalStateMachineState *)selfCopy hsm];
  [v12 setHSMInternalCurrentState:selfCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleExitEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [(CUState *)selfCopy name];
    name2 = [eventCopy name];
    userInfo = [eventCopy userInfo];
    v13 = 138544130;
    v14 = v8;
    v15 = 2112;
    v16 = name;
    v17 = 2112;
    v18 = name2;
    v19 = 2112;
    v20 = userInfo;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@%@.handleExitEvent: %@ / %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleEnterEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    name = [(CUState *)selfCopy name];
    name2 = [eventCopy name];
    userInfo = [eventCopy userInfo];
    v13 = 138544130;
    v14 = v8;
    v15 = 2112;
    v16 = name;
    v17 = 2112;
    v18 = name2;
    v19 = 2112;
    v20 = userInfo;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@%@.handleEnterEvent: %@ / %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (HMDHierarchicalStateMachineState)initWithName:(id)name parent:(id)parent
{
  v7.receiver = self;
  v7.super_class = HMDHierarchicalStateMachineState;
  v4 = [(CUState *)&v7 initWithName:name parent:parent];
  v5 = v4;
  if (v4)
  {
    [(HMDHierarchicalStateMachineState *)v4 _registerForEventHandler];
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_78825 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_78825, &__block_literal_global_78826);
  }

  v3 = logCategory__hmf_once_v4_78827;

  return v3;
}

void __47__HMDHierarchicalStateMachineState_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_78827;
  logCategory__hmf_once_v4_78827 = v1;
}

@end