@interface HMMTRSoftwareUpdateProviderApplyUpdateResponseParams
- (HMMTRSoftwareUpdateProviderApplyUpdateResponseParams)initWithAction:(id)action delayedActionTime:(id)time;
@end

@implementation HMMTRSoftwareUpdateProviderApplyUpdateResponseParams

- (HMMTRSoftwareUpdateProviderApplyUpdateResponseParams)initWithAction:(id)action delayedActionTime:(id)time
{
  actionCopy = action;
  timeCopy = time;
  v12.receiver = self;
  v12.super_class = HMMTRSoftwareUpdateProviderApplyUpdateResponseParams;
  v9 = [(HMMTRSoftwareUpdateProviderApplyUpdateResponseParams *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_action, action);
    objc_storeStrong(&v10->_delayedActionTime, time);
  }

  return v10;
}

@end