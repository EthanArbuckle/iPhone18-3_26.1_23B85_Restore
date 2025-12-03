@interface CKDOperationInfoHolderOperation
- (CKDOperationInfoHolderOperation)initWithOperationInfo:(id)info container:(id)container operationType:(int)type;
@end

@implementation CKDOperationInfoHolderOperation

- (CKDOperationInfoHolderOperation)initWithOperationInfo:(id)info container:(id)container operationType:(int)type
{
  v7.receiver = self;
  v7.super_class = CKDOperationInfoHolderOperation;
  result = [(CKDOperation *)&v7 initWithOperationInfo:info container:container];
  if (result)
  {
    result->_operationType = type;
  }

  return result;
}

@end