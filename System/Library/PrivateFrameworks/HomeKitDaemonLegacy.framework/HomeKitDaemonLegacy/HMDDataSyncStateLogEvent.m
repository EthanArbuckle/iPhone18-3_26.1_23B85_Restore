@interface HMDDataSyncStateLogEvent
- (HMDDataSyncStateLogEvent)initWithDataSyncState:(unint64_t)a3;
@end

@implementation HMDDataSyncStateLogEvent

- (HMDDataSyncStateLogEvent)initWithDataSyncState:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDDataSyncStateLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_dataSyncState = a3;
  }

  return result;
}

@end