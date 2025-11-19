@interface HMDThreadNetworkBTCallStateEvent
- (HMDThreadNetworkBTCallStateEvent)initWithCallState:(int64_t)a3;
@end

@implementation HMDThreadNetworkBTCallStateEvent

- (HMDThreadNetworkBTCallStateEvent)initWithCallState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDThreadNetworkBTCallStateEvent;
  result = [(HMDThreadNetworkBTCallStateEvent *)&v5 init];
  if (result)
  {
    result->_callState = a3;
  }

  return result;
}

@end