@interface HMDThreadNetworkStateChangeEvent
- (HMDThreadNetworkStateChangeEvent)initWithEventType:(int64_t)a3 eventValue:(unint64_t)a4;
- (id)_connectionStateValueToString;
- (id)_eventTypeToString;
- (id)_eventValueToString;
- (id)_nodeTypeValueToString;
- (id)description;
@end

@implementation HMDThreadNetworkStateChangeEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = HMDThreadNetworkStateChangeEvent;
  v4 = [(HMDThreadNetworkStateChangeEvent *)&v9 description];
  v5 = [(HMDThreadNetworkStateChangeEvent *)self _eventTypeToString];
  v6 = [(HMDThreadNetworkStateChangeEvent *)self _eventValueToString];
  v7 = [v3 stringWithFormat:@"%@ [%@/%@]", v4, v5, v6];

  return v7;
}

- (id)_eventValueToString
{
  v3 = [(HMDThreadNetworkStateChangeEvent *)self eventType];
  if (v3 == 1)
  {
    v4 = [(HMDThreadNetworkStateChangeEvent *)self _nodeTypeValueToString];
  }

  else if (v3)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = [(HMDThreadNetworkStateChangeEvent *)self _connectionStateValueToString];
  }

  return v4;
}

- (id)_nodeTypeValueToString
{
  v2 = [(HMDThreadNetworkStateChangeEvent *)self eventValue];
  if ((v2 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_279723978[v2 - 1];
  }
}

- (id)_connectionStateValueToString
{
  v2 = [(HMDThreadNetworkStateChangeEvent *)self eventValue];
  if (v2 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279723958[v2];
  }
}

- (id)_eventTypeToString
{
  v2 = [(HMDThreadNetworkStateChangeEvent *)self eventType];
  v3 = @"unknown";
  if (v2 == 1)
  {
    v3 = @"nodeType";
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return @"connectionState";
  }
}

- (HMDThreadNetworkStateChangeEvent)initWithEventType:(int64_t)a3 eventValue:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = HMDThreadNetworkStateChangeEvent;
  result = [(HMDThreadNetworkStateChangeEvent *)&v7 init];
  if (result)
  {
    result->_eventType = a3;
    result->_eventValue = a4;
  }

  return result;
}

@end