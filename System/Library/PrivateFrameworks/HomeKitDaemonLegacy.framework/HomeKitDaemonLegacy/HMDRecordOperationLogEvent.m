@interface HMDRecordOperationLogEvent
- (HMDRecordOperationLogEvent)initWithSize:(unint64_t)a3 isLegacy:(BOOL)a4;
@end

@implementation HMDRecordOperationLogEvent

- (HMDRecordOperationLogEvent)initWithSize:(unint64_t)a3 isLegacy:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = HMDRecordOperationLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_size = a3;
    result->_legacy = a4;
  }

  return result;
}

@end