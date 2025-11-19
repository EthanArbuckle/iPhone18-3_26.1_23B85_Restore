@interface HMDCoreDataCloudKitOperationLogEvent
- (HMDCoreDataCloudKitOperationLogEvent)initWithOperationType:(unint64_t)a3;
- (HMDCoreDataCloudKitOperationLogEvent)initWithOperationType:(unint64_t)a3 interval:(double)a4;
@end

@implementation HMDCoreDataCloudKitOperationLogEvent

- (HMDCoreDataCloudKitOperationLogEvent)initWithOperationType:(unint64_t)a3 interval:(double)a4
{
  v7.receiver = self;
  v7.super_class = HMDCoreDataCloudKitOperationLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_operationType = a3;
    result->_interval = a4;
  }

  return result;
}

- (HMDCoreDataCloudKitOperationLogEvent)initWithOperationType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDCoreDataCloudKitOperationLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_operationType = a3;
  }

  return result;
}

@end