@interface HMDHierarchicalStateMachine
+ (id)logCategory;
- (HMDHierarchicalStateMachine)initWithQueue:(id)queue allowSelfStateTransitions:(BOOL)transitions;
- (HMDHierarchicalStateMachineState)currentHSMState;
- (HMDHierarchicalStateMachineState)initialState;
- (id)stateWithName:(id)name;
- (void)_start;
- (void)currentHSMStateWithCompletion:(id)completion;
- (void)dealloc;
- (void)dispatchEvent:(id)event;
- (void)dispatchEvent:(id)event userInfo:(id)info;
- (void)dispatchEvent:(id)event userInfo:(id)info completion:(id)completion;
- (void)setHSMInternalCurrentState:(id)state;
- (void)setInitialState:(id)state;
- (void)setStates:(id)states;
- (void)start;
- (void)transitionToState:(id)state;
- (void)transitionToState:(id)state withEvent:(id)event;
@end

@implementation HMDHierarchicalStateMachine

- (HMDHierarchicalStateMachineState)currentHSMState
{
  WeakRetained = objc_loadWeakRetained(&self->_currentHSMState);

  return WeakRetained;
}

- (void)setHSMInternalCurrentState:(id)state
{
  stateCopy = state;
  queue = [(HMDHierarchicalStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HMDHierarchicalStateMachine *)self setCurrentHSMState:stateCopy];

  [(HMDHierarchicalStateMachine *)self setEventCausingStateTransition:0];
}

- (id)stateWithName:(id)name
{
  nameCopy = name;
  queue = [(HMDHierarchicalStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  cuStateMachine = [(HMDHierarchicalStateMachine *)self cuStateMachine];
  states = [cuStateMachine states];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__HMDHierarchicalStateMachine_stateWithName___block_invoke;
  v14[3] = &unk_27868A7C8;
  v15 = nameCopy;
  v8 = nameCopy;
  v9 = [states na_firstObjectPassingTest:v14];

  v10 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

uint64_t __45__HMDHierarchicalStateMachine_stateWithName___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

- (void)currentHSMStateWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(HMDHierarchicalStateMachine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDHierarchicalStateMachine_currentHSMStateWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __61__HMDHierarchicalStateMachine_currentHSMStateWithCompletion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) currentHSMState];
  v2 = _Block_copy(*(a1 + 40));
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2, v4);
  }
}

- (void)setStates:(id)states
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HMDHierarchicalStateMachine_setStates___block_invoke;
  v7[3] = &unk_27868A778;
  v7[4] = self;
  statesCopy = states;
  [statesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
  v5 = [statesCopy copy];

  cuStateMachine = [(HMDHierarchicalStateMachine *)self cuStateMachine];
  [cuStateMachine setStates:v5];
}

- (HMDHierarchicalStateMachineState)initialState
{
  cuStateMachine = [(HMDHierarchicalStateMachine *)self cuStateMachine];
  initialState = [cuStateMachine initialState];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = initialState;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)setInitialState:(id)state
{
  stateCopy = state;
  cuStateMachine = [(HMDHierarchicalStateMachine *)self cuStateMachine];
  [cuStateMachine setInitialState:stateCopy];
}

- (void)transitionToState:(id)state withEvent:(id)event
{
  stateCopy = state;
  eventCopy = event;
  queue = [(HMDHierarchicalStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  currentHSMState = [(HMDHierarchicalStateMachine *)self currentHSMState];
  if (![currentHSMState isEqual:stateCopy])
  {

    goto LABEL_5;
  }

  allowSelfStateTransitions = [(HMDHierarchicalStateMachine *)self allowSelfStateTransitions];

  if (allowSelfStateTransitions)
  {
LABEL_5:
    [(HMDHierarchicalStateMachine *)self setEventCausingStateTransition:eventCopy];
    cuStateMachine = [(HMDHierarchicalStateMachine *)self cuStateMachine];
    [cuStateMachine transitionToState:stateCopy];
  }
}

- (void)transitionToState:(id)state
{
  stateCopy = state;
  queue = [(HMDHierarchicalStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  [(HMDHierarchicalStateMachine *)self transitionToState:stateCopy withEvent:0];
}

- (void)dispatchEvent:(id)event userInfo:(id)info completion:(id)completion
{
  v8 = MEMORY[0x277D02920];
  completionCopy = completion;
  infoCopy = info;
  eventCopy = event;
  v12 = [[v8 alloc] initWithName:eventCopy userInfo:infoCopy completion:completionCopy];

  [(HMDHierarchicalStateMachine *)self dispatchEvent:v12];
}

- (void)dispatchEvent:(id)event userInfo:(id)info
{
  v6 = MEMORY[0x277D02920];
  infoCopy = info;
  eventCopy = event;
  v9 = [[v6 alloc] initWithName:eventCopy userInfo:infoCopy];

  [(HMDHierarchicalStateMachine *)self dispatchEvent:v9];
}

- (void)dispatchEvent:(id)event
{
  eventCopy = event;
  queue = [(HMDHierarchicalStateMachine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMDHierarchicalStateMachine_dispatchEvent___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(queue, v7);
}

void __45__HMDHierarchicalStateMachine_dispatchEvent___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hasStarted];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v14 = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@DispatchEvent: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = [*(a1 + 32) cuStateMachine];
    [v9 dispatchEvent:*(a1 + 40)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Cannot handle event %@ until the state machine has started", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v12 = *(a1 + 40);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v12 completedWithError:v9];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_start
{
  queue = [(HMDHierarchicalStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  cuStateMachine = [(HMDHierarchicalStateMachine *)self cuStateMachine];
  [cuStateMachine start];

  self->_started = 1;
}

- (void)start
{
  queue = [(HMDHierarchicalStateMachine *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDHierarchicalStateMachine_start__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  cuStateMachine = [(HMDHierarchicalStateMachine *)self cuStateMachine];
  [cuStateMachine invalidate];

  v4.receiver = self;
  v4.super_class = HMDHierarchicalStateMachine;
  [(HMDHierarchicalStateMachine *)&v4 dealloc];
}

- (HMDHierarchicalStateMachine)initWithQueue:(id)queue allowSelfStateTransitions:(BOOL)transitions
{
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = HMDHierarchicalStateMachine;
  v8 = [(HMDHierarchicalStateMachine *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D02928]);
    cuStateMachine = v8->_cuStateMachine;
    v8->_cuStateMachine = v9;

    objc_storeStrong(&v8->_queue, queue);
    v8->_allowSelfStateTransitions = transitions;
  }

  return v8;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_285849 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_285849, &__block_literal_global_285850);
  }

  v3 = logCategory__hmf_once_v7_285851;

  return v3;
}

void __42__HMDHierarchicalStateMachine_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_285851;
  logCategory__hmf_once_v7_285851 = v1;
}

@end