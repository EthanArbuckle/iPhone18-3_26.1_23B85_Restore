@interface CKDOperationInfoHolderOperation
- (CKDOperationInfoHolderOperation)initWithOperationInfo:(id)a3 container:(id)a4 operationType:(int)a5;
@end

@implementation CKDOperationInfoHolderOperation

- (CKDOperationInfoHolderOperation)initWithOperationInfo:(id)a3 container:(id)a4 operationType:(int)a5
{
  v7.receiver = self;
  v7.super_class = CKDOperationInfoHolderOperation;
  result = [(CKDOperation *)&v7 initWithOperationInfo:a3 container:a4];
  if (result)
  {
    result->_operationType = a5;
  }

  return result;
}

@end