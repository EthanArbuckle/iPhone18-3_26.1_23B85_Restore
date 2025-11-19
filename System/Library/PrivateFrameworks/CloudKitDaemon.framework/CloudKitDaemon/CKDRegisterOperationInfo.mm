@interface CKDRegisterOperationInfo
- (CKDRegisterOperationInfo)initWithOptions:(unint64_t)a3;
@end

@implementation CKDRegisterOperationInfo

- (CKDRegisterOperationInfo)initWithOptions:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = CKDRegisterOperationInfo;
  result = [(CKDRegisterOperationInfo *)&v5 init];
  if (result)
  {
    result->_options = a3;
  }

  return result;
}

@end