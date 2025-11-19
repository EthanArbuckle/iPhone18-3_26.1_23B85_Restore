@interface HMDHierarchicalStateMachineState
+ (id)logCategory;
- (HMDHierarchicalStateMachine)hsm;
- (HMDHierarchicalStateMachineState)initWithName:(id)a3 parent:(id)a4;
- (int64_t)_internalEventHandler:(id)a3;
- (void)_registerForEventHandler;
- (void)handleEnterEvent:(id)a3;
- (void)handleExitEvent:(id)a3;
- (void)onInitialTransition:(id)a3;
@end

@implementation HMDHierarchicalStateMachineState

- (HMDHierarchicalStateMachine)hsm
{
  WeakRetained = objc_loadWeakRetained(&self->_hsm);

  return WeakRetained;
}

- (int64_t)_internalEventHandler:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDHierarchicalStateMachineState *)self hsm];
  v7 = [v6 eventCausingStateTransition];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  v10 = v9;

  v11 = [MEMORY[0x277D02920] enterState];

  if (v11 == v4)
  {
    [(HMDHierarchicalStateMachineState *)self handleEnterEvent:v10];
LABEL_11:
    v14 = 2;
    goto LABEL_12;
  }

  v12 = [MEMORY[0x277D02920] exitState];

  if (v12 == v4)
  {
    [(HMDHierarchicalStateMachineState *)self handleExitEvent:v10];
    goto LABEL_11;
  }

  v13 = [MEMORY[0x277D02920] initialTransition];

  if (v13 == v4)
  {
    [(HMDHierarchicalStateMachineState *)self onInitialTransition:v10];
    goto LABEL_11;
  }

  v14 = [(HMDHierarchicalStateMachineState *)self handleEvent:v4];
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

- (void)onInitialTransition:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(CUState *)v6 name];
    v10 = [v4 name];
    v11 = [v4 userInfo];
    v14 = 138544130;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@%@.onInitialTransition: %@ / %@", &v14, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = [(HMDHierarchicalStateMachineState *)v6 hsm];
  [v12 setHSMInternalCurrentState:v6];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)handleExitEvent:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(CUState *)v6 name];
    v10 = [v4 name];
    v11 = [v4 userInfo];
    v13 = 138544130;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@%@.handleExitEvent: %@ / %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)handleEnterEvent:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(CUState *)v6 name];
    v10 = [v4 name];
    v11 = [v4 userInfo];
    v13 = 138544130;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@%@.handleEnterEvent: %@ / %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (HMDHierarchicalStateMachineState)initWithName:(id)a3 parent:(id)a4
{
  v7.receiver = self;
  v7.super_class = HMDHierarchicalStateMachineState;
  v4 = [(CUState *)&v7 initWithName:a3 parent:a4];
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