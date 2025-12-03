@interface HMDRecordOperationLogEvent
- (HMDRecordOperationLogEvent)initWithSize:(unint64_t)size isLegacy:(BOOL)legacy;
@end

@implementation HMDRecordOperationLogEvent

- (HMDRecordOperationLogEvent)initWithSize:(unint64_t)size isLegacy:(BOOL)legacy
{
  v7.receiver = self;
  v7.super_class = HMDRecordOperationLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_size = size;
    result->_legacy = legacy;
  }

  return result;
}

@end