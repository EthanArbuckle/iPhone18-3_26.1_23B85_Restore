@interface HMDDataSyncStateLogEvent
- (HMDDataSyncStateLogEvent)initWithDataSyncState:(unint64_t)state;
@end

@implementation HMDDataSyncStateLogEvent

- (HMDDataSyncStateLogEvent)initWithDataSyncState:(unint64_t)state
{
  v5.receiver = self;
  v5.super_class = HMDDataSyncStateLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_dataSyncState = state;
  }

  return result;
}

@end