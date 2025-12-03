@interface HMDHomeActivityStateVacationTransitionLogEvent
- (HMDHomeActivityStateVacationTransitionLogEvent)initWithReason:(unint64_t)reason;
@end

@implementation HMDHomeActivityStateVacationTransitionLogEvent

- (HMDHomeActivityStateVacationTransitionLogEvent)initWithReason:(unint64_t)reason
{
  if (reason == 1)
  {
    v5 = _HMFPreconditionFailure();
    return HMDHomeActivityVacationStateChangeReasonAsString(v5);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = HMDHomeActivityStateVacationTransitionLogEvent;
    result = [(HMMLogEvent *)&v6 init];
    if (result)
    {
      result->_reason = reason;
    }
  }

  return result;
}

@end