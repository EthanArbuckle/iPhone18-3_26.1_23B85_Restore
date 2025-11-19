@interface NSOperation(FCOperationIdentifyingSupport)
- (id)longOperationDescription;
@end

@implementation NSOperation(FCOperationIdentifyingSupport)

- (id)longOperationDescription
{
  v2 = FCStringFromQualityOfService([a1 qualityOfService]);
  v3 = FCStringFromQueuePriority([a1 queuePriority]);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ qos=%@, priority=%@>", objc_opt_class(), v2, v3];

  return v4;
}

@end