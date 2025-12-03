@interface HMDThreadNetworkStateChangeEvent
- (HMDThreadNetworkStateChangeEvent)initWithEventType:(int64_t)type eventValue:(unint64_t)value;
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
  _eventTypeToString = [(HMDThreadNetworkStateChangeEvent *)self _eventTypeToString];
  _eventValueToString = [(HMDThreadNetworkStateChangeEvent *)self _eventValueToString];
  v7 = [v3 stringWithFormat:@"%@ [%@/%@]", v4, _eventTypeToString, _eventValueToString];

  return v7;
}

- (id)_eventValueToString
{
  eventType = [(HMDThreadNetworkStateChangeEvent *)self eventType];
  if (eventType == 1)
  {
    _nodeTypeValueToString = [(HMDThreadNetworkStateChangeEvent *)self _nodeTypeValueToString];
  }

  else if (eventType)
  {
    _nodeTypeValueToString = @"unknown";
  }

  else
  {
    _nodeTypeValueToString = [(HMDThreadNetworkStateChangeEvent *)self _connectionStateValueToString];
  }

  return _nodeTypeValueToString;
}

- (id)_nodeTypeValueToString
{
  eventValue = [(HMDThreadNetworkStateChangeEvent *)self eventValue];
  if ((eventValue - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_278673318[eventValue - 1];
  }
}

- (id)_connectionStateValueToString
{
  eventValue = [(HMDThreadNetworkStateChangeEvent *)self eventValue];
  if (eventValue > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_2786732F8[eventValue];
  }
}

- (id)_eventTypeToString
{
  eventType = [(HMDThreadNetworkStateChangeEvent *)self eventType];
  v3 = @"unknown";
  if (eventType == 1)
  {
    v3 = @"nodeType";
  }

  if (eventType)
  {
    return v3;
  }

  else
  {
    return @"connectionState";
  }
}

- (HMDThreadNetworkStateChangeEvent)initWithEventType:(int64_t)type eventValue:(unint64_t)value
{
  v7.receiver = self;
  v7.super_class = HMDThreadNetworkStateChangeEvent;
  result = [(HMDThreadNetworkStateChangeEvent *)&v7 init];
  if (result)
  {
    result->_eventType = type;
    result->_eventValue = value;
  }

  return result;
}

@end