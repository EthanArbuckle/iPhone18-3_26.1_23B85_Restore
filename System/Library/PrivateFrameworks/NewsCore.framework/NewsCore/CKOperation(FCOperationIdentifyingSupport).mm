@interface CKOperation(FCOperationIdentifyingSupport)
- (id)longOperationDescription;
- (id)shortOperationDescription;
@end

@implementation CKOperation(FCOperationIdentifyingSupport)

- (id)shortOperationDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  operationID = [self operationID];
  v5 = [v2 stringWithFormat:@"<%@ %@>", v3, operationID];

  return v5;
}

- (id)longOperationDescription
{
  v2 = FCStringFromQualityOfService([self qualityOfService]);
  v3 = FCStringFromQueuePriority([self queuePriority]);
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  operationID = [self operationID];
  v7 = [v4 stringWithFormat:@"<%@ %@, qos=%@, priority=%@>", v5, operationID, v2, v3];

  return v7;
}

@end