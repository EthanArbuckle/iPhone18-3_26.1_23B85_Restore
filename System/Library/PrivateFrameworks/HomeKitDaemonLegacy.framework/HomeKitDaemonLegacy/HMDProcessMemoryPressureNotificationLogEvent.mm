@interface HMDProcessMemoryPressureNotificationLogEvent
- (HMDProcessMemoryPressureNotificationLogEvent)initWithProcessMemoryEvent:(int64_t)a3 dataSyncState:(unint64_t)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)processMemoryStateString;
@end

@implementation HMDProcessMemoryPressureNotificationLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"processMemoryState";
  v3 = [(HMDProcessMemoryPressureNotificationLogEvent *)self processMemoryStateString];
  v8[1] = @"dataSyncState";
  v9[0] = v3;
  [(HMDProcessMemoryPressureNotificationLogEvent *)self dataSyncState];
  v4 = HMHomeManagerDataSyncStateToString();
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)processMemoryStateString
{
  v2 = [(HMDProcessMemoryPressureNotificationLogEvent *)self processMemoryEvent];
  v3 = @"HMFProcessMemoryStateUnknown";
  if (v2 == 5)
  {
    v3 = @"HMFProcessMemoryStateCritical";
  }

  if (v2 == 4)
  {
    return @"HMFProcessMemoryStateWarning";
  }

  else
  {
    return v3;
  }
}

- (HMDProcessMemoryPressureNotificationLogEvent)initWithProcessMemoryEvent:(int64_t)a3 dataSyncState:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = HMDProcessMemoryPressureNotificationLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_processMemoryEvent = a3;
    result->_dataSyncState = a4;
  }

  return result;
}

@end