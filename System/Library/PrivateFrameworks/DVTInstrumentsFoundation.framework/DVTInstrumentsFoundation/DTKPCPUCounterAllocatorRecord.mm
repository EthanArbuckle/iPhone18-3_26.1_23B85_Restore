@interface DTKPCPUCounterAllocatorRecord
- (DTKPCPUCounterAllocatorRecord)initWithName:(id)name nameOrAlias:(id)alias counterName:(id)counterName kpepEvent:(kpep_event *)event isPMI:(BOOL)i hwIdx:(unint64_t)idx;
@end

@implementation DTKPCPUCounterAllocatorRecord

- (DTKPCPUCounterAllocatorRecord)initWithName:(id)name nameOrAlias:(id)alias counterName:(id)counterName kpepEvent:(kpep_event *)event isPMI:(BOOL)i hwIdx:(unint64_t)idx
{
  nameCopy = name;
  aliasCopy = alias;
  counterNameCopy = counterName;
  v21.receiver = self;
  v21.super_class = DTKPCPUCounterAllocatorRecord;
  v18 = [(DTKPCPUCounterAllocatorRecord *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventName, name);
    objc_storeStrong(&v19->_eventOrAliasName, alias);
    objc_storeStrong(&v19->_counterName, counterName);
    v19->_isPMI = i;
    v19->_kpepEvent = event;
    v19->_hwIdx = idx;
  }

  return v19;
}

@end