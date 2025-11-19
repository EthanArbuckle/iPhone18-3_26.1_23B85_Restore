@interface HMDHomeActivityStateVacationTransitionLogEvent
- (HMDHomeActivityStateVacationTransitionLogEvent)initWithReason:(unint64_t)a3;
@end

@implementation HMDHomeActivityStateVacationTransitionLogEvent

- (HMDHomeActivityStateVacationTransitionLogEvent)initWithReason:(unint64_t)a3
{
  if (a3 == 1)
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
      result->_reason = a3;
    }
  }

  return result;
}

@end