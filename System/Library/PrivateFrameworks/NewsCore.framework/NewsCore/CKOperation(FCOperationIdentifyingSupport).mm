@interface CKOperation(FCOperationIdentifyingSupport)
- (id)longOperationDescription;
- (id)shortOperationDescription;
@end

@implementation CKOperation(FCOperationIdentifyingSupport)

- (id)shortOperationDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = [a1 operationID];
  v5 = [v2 stringWithFormat:@"<%@ %@>", v3, v4];

  return v5;
}

- (id)longOperationDescription
{
  v2 = FCStringFromQualityOfService([a1 qualityOfService]);
  v3 = FCStringFromQueuePriority([a1 queuePriority]);
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = [a1 operationID];
  v7 = [v4 stringWithFormat:@"<%@ %@, qos=%@, priority=%@>", v5, v6, v2, v3];

  return v7;
}

@end