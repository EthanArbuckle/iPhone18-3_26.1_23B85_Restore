@interface HMDCoreDataCloudKitOperationLogEvent
- (HMDCoreDataCloudKitOperationLogEvent)initWithOperationType:(unint64_t)type;
- (HMDCoreDataCloudKitOperationLogEvent)initWithOperationType:(unint64_t)type interval:(double)interval;
@end

@implementation HMDCoreDataCloudKitOperationLogEvent

- (HMDCoreDataCloudKitOperationLogEvent)initWithOperationType:(unint64_t)type interval:(double)interval
{
  v7.receiver = self;
  v7.super_class = HMDCoreDataCloudKitOperationLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_operationType = type;
    result->_interval = interval;
  }

  return result;
}

- (HMDCoreDataCloudKitOperationLogEvent)initWithOperationType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = HMDCoreDataCloudKitOperationLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_operationType = type;
  }

  return result;
}

@end