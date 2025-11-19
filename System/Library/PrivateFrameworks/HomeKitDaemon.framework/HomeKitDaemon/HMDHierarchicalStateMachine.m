@interface HMDHierarchicalStateMachine
+ (id)logCategory;
- (HMDHierarchicalStateMachine)initWithQueue:(id)a3 allowSelfStateTransitions:(BOOL)a4;
- (HMDHierarchicalStateMachineState)currentHSMState;
- (HMDHierarchicalStateMachineState)initialState;
- (id)stateWithName:(id)a3;
- (void)_start;
- (void)currentHSMStateWithCompletion:(id)a3;
- (void)dealloc;
- (void)dispatchEvent:(id)a3;
- (void)dispatchEvent:(id)a3 userInfo:(id)a4;
- (void)dispatchEvent:(id)a3 userInfo:(id)a4 completion:(id)a5;
- (void)setHSMInternalCurrentState:(id)a3;
- (void)setInitialState:(id)a3;
- (void)setStates:(id)a3;
- (void)start;
- (void)transitionToState:(id)a3;
- (void)transitionToState:(id)a3 withEvent:(id)a4;
@end

@implementation HMDHierarchicalStateMachine

- (HMDHierarchicalStateMachineState)currentHSMState
{
  WeakRetained = objc_loadWeakRetained(&self->_currentHSMState);

  return WeakRetained;
}

- (void)setHSMInternalCurrentState:(id)a3
{
  v4 = a3;
  v5 = [(HMDHierarchicalStateMachine *)self queue];
  dispatch_assert_queue_V2(v5);

  [(HMDHierarchicalStateMachine *)self setCurrentHSMState:v4];

  [(HMDHierarchicalStateMachine *)self setEventCausingStateTransition:0];
}

- (id)stateWithName:(id)a3
{
  v4 = a3;
  v5 = [(HMDHierarchicalStateMachine *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDHierarchicalStateMachine *)self cuStateMachine];
  v7 = [v6 states];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__HMDHierarchicalStateMachine_stateWithName___block_invoke;
  v14[3] = &unk_27868A7C8;
  v15 = v4;
  v8 = v4;
  v9 = [v7 na_firstObjectPassingTest:v14];

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

- (void)currentHSMStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDHierarchicalStateMachine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDHierarchicalStateMachine_currentHSMStateWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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

- (void)setStates:(id)a3
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HMDHierarchicalStateMachine_setStates___block_invoke;
  v7[3] = &unk_27868A778;
  v7[4] = self;
  v4 = a3;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v7];
  v5 = [v4 copy];

  v6 = [(HMDHierarchicalStateMachine *)self cuStateMachine];
  [v6 setStates:v5];
}

- (HMDHierarchicalStateMachineState)initialState
{
  v2 = [(HMDHierarchicalStateMachine *)self cuStateMachine];
  v3 = [v2 initialState];

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

  return v4;
}

- (void)setInitialState:(id)a3
{
  v4 = a3;
  v5 = [(HMDHierarchicalStateMachine *)self cuStateMachine];
  [v5 setInitialState:v4];
}

- (void)transitionToState:(id)a3 withEvent:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(HMDHierarchicalStateMachine *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = [(HMDHierarchicalStateMachine *)self currentHSMState];
  if (![v8 isEqual:v11])
  {

    goto LABEL_5;
  }

  v9 = [(HMDHierarchicalStateMachine *)self allowSelfStateTransitions];

  if (v9)
  {
LABEL_5:
    [(HMDHierarchicalStateMachine *)self setEventCausingStateTransition:v6];
    v10 = [(HMDHierarchicalStateMachine *)self cuStateMachine];
    [v10 transitionToState:v11];
  }
}

- (void)transitionToState:(id)a3
{
  v5 = a3;
  v4 = [(HMDHierarchicalStateMachine *)self queue];
  dispatch_assert_queue_V2(v4);

  [(HMDHierarchicalStateMachine *)self transitionToState:v5 withEvent:0];
}

- (void)dispatchEvent:(id)a3 userInfo:(id)a4 completion:(id)a5
{
  v8 = MEMORY[0x277D02920];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithName:v11 userInfo:v10 completion:v9];

  [(HMDHierarchicalStateMachine *)self dispatchEvent:v12];
}

- (void)dispatchEvent:(id)a3 userInfo:(id)a4
{
  v6 = MEMORY[0x277D02920];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithName:v8 userInfo:v7];

  [(HMDHierarchicalStateMachine *)self dispatchEvent:v9];
}

- (void)dispatchEvent:(id)a3
{
  v4 = a3;
  v5 = [(HMDHierarchicalStateMachine *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HMDHierarchicalStateMachine_dispatchEvent___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
  v3 = [(HMDHierarchicalStateMachine *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDHierarchicalStateMachine *)self cuStateMachine];
  [v4 start];

  self->_started = 1;
}

- (void)start
{
  v3 = [(HMDHierarchicalStateMachine *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDHierarchicalStateMachine_start__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)dealloc
{
  v3 = [(HMDHierarchicalStateMachine *)self cuStateMachine];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = HMDHierarchicalStateMachine;
  [(HMDHierarchicalStateMachine *)&v4 dealloc];
}

- (HMDHierarchicalStateMachine)initWithQueue:(id)a3 allowSelfStateTransitions:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = HMDHierarchicalStateMachine;
  v8 = [(HMDHierarchicalStateMachine *)&v12 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D02928]);
    cuStateMachine = v8->_cuStateMachine;
    v8->_cuStateMachine = v9;

    objc_storeStrong(&v8->_queue, a3);
    v8->_allowSelfStateTransitions = a4;
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