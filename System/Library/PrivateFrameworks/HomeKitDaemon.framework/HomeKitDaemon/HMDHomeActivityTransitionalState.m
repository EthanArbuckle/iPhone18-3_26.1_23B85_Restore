@interface HMDHomeActivityTransitionalState
- (void)handleProbedTransitionalStateEndDate:(id)a3 withEvent:(id)a4;
- (void)onInitialTransition:(id)a3;
@end

@implementation HMDHomeActivityTransitionalState

- (void)handleProbedTransitionalStateEndDate:(id)a3 withEvent:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDHomeActivityTransitionalState *)self transitionalStateEndDate];
  v9 = HMFEqualObjects();

  if ((v9 & 1) == 0)
  {
    v10 = [objc_opt_class() stateType];
    if (v10 > 0xA || ((0x729uLL >> v10) & 1) != 0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v15;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Home activity state is unexpectedly unknown for this state. Event: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      v11 = qword_22A587C50[v10];
      [(HMDHomeActivityTransitionalState *)self setTransitionalStateEndDate:v6];
      [(HMDHomeActivityState *)self notifyStateChangeToAllConsumers:v11 withHoldInfo:0 transitionalStateEndDate:v6 reason:[HMDHomeActivityStateMachine reasonForStateEvent:v7]];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)onInitialTransition:(id)a3
{
  v7.receiver = self;
  v7.super_class = HMDHomeActivityTransitionalState;
  v4 = a3;
  [(HMDHomeActivityState *)&v7 onInitialTransition:v4];
  v5 = [v4 userInfo];

  v6 = [v5 hmf_dateForKey:@"transitionalStateEndDate"];
  [(HMDHomeActivityTransitionalState *)self setTransitionalStateEndDate:v6];
}

@end