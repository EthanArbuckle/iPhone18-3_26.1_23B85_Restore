@interface HMDThreadNetworkBTCallStateEvent
- (HMDThreadNetworkBTCallStateEvent)initWithCallState:(int64_t)state;
@end

@implementation HMDThreadNetworkBTCallStateEvent

- (HMDThreadNetworkBTCallStateEvent)initWithCallState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = HMDThreadNetworkBTCallStateEvent;
  result = [(HMDThreadNetworkBTCallStateEvent *)&v5 init];
  if (result)
  {
    result->_callState = state;
  }

  return result;
}

@end