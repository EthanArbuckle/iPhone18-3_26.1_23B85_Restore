@interface HMDProcessMemoryPressureNotificationLogEvent
- (HMDProcessMemoryPressureNotificationLogEvent)initWithProcessMemoryEvent:(int64_t)event dataSyncState:(unint64_t)state;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)processMemoryStateString;
@end

@implementation HMDProcessMemoryPressureNotificationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"processMemoryState";
  processMemoryStateString = [(HMDProcessMemoryPressureNotificationLogEvent *)self processMemoryStateString];
  v8[1] = @"dataSyncState";
  v9[0] = processMemoryStateString;
  [(HMDProcessMemoryPressureNotificationLogEvent *)self dataSyncState];
  v4 = HMHomeManagerDataSyncStateToString();
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)processMemoryStateString
{
  processMemoryEvent = [(HMDProcessMemoryPressureNotificationLogEvent *)self processMemoryEvent];
  v3 = @"HMFProcessMemoryStateUnknown";
  if (processMemoryEvent == 5)
  {
    v3 = @"HMFProcessMemoryStateCritical";
  }

  if (processMemoryEvent == 4)
  {
    return @"HMFProcessMemoryStateWarning";
  }

  else
  {
    return v3;
  }
}

- (HMDProcessMemoryPressureNotificationLogEvent)initWithProcessMemoryEvent:(int64_t)event dataSyncState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = HMDProcessMemoryPressureNotificationLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_processMemoryEvent = event;
    result->_dataSyncState = state;
  }

  return result;
}

@end