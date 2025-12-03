@interface HMDHomeActivityTransitionalState
- (void)handleProbedTransitionalStateEndDate:(id)date withEvent:(id)event;
- (void)onInitialTransition:(id)transition;
@end

@implementation HMDHomeActivityTransitionalState

- (void)handleProbedTransitionalStateEndDate:(id)date withEvent:(id)event
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  eventCopy = event;
  transitionalStateEndDate = [(HMDHomeActivityTransitionalState *)self transitionalStateEndDate];
  v9 = HMFEqualObjects();

  if ((v9 & 1) == 0)
  {
    stateType = [objc_opt_class() stateType];
    if (stateType > 0xA || ((0x729uLL >> stateType) & 1) != 0)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v15;
        v19 = 2112;
        v20 = eventCopy;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Home activity state is unexpectedly unknown for this state. Event: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      v11 = qword_22A587C50[stateType];
      [(HMDHomeActivityTransitionalState *)self setTransitionalStateEndDate:dateCopy];
      [(HMDHomeActivityState *)self notifyStateChangeToAllConsumers:v11 withHoldInfo:0 transitionalStateEndDate:dateCopy reason:[HMDHomeActivityStateMachine reasonForStateEvent:eventCopy]];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)onInitialTransition:(id)transition
{
  v7.receiver = self;
  v7.super_class = HMDHomeActivityTransitionalState;
  transitionCopy = transition;
  [(HMDHomeActivityState *)&v7 onInitialTransition:transitionCopy];
  userInfo = [transitionCopy userInfo];

  v6 = [userInfo hmf_dateForKey:@"transitionalStateEndDate"];
  [(HMDHomeActivityTransitionalState *)self setTransitionalStateEndDate:v6];
}

@end