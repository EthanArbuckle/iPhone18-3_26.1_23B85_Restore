@interface DTKPCPUCounterAllocatorRecord
- (DTKPCPUCounterAllocatorRecord)initWithName:(id)a3 nameOrAlias:(id)a4 counterName:(id)a5 kpepEvent:(kpep_event *)a6 isPMI:(BOOL)a7 hwIdx:(unint64_t)a8;
@end

@implementation DTKPCPUCounterAllocatorRecord

- (DTKPCPUCounterAllocatorRecord)initWithName:(id)a3 nameOrAlias:(id)a4 counterName:(id)a5 kpepEvent:(kpep_event *)a6 isPMI:(BOOL)a7 hwIdx:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v21.receiver = self;
  v21.super_class = DTKPCPUCounterAllocatorRecord;
  v18 = [(DTKPCPUCounterAllocatorRecord *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventName, a3);
    objc_storeStrong(&v19->_eventOrAliasName, a4);
    objc_storeStrong(&v19->_counterName, a5);
    v19->_isPMI = a7;
    v19->_kpepEvent = a6;
    v19->_hwIdx = a8;
  }

  return v19;
}

@end