@interface CKDRegisterOperationInfo
- (CKDRegisterOperationInfo)initWithOptions:(unint64_t)options;
@end

@implementation CKDRegisterOperationInfo

- (CKDRegisterOperationInfo)initWithOptions:(unint64_t)options
{
  v5.receiver = self;
  v5.super_class = CKDRegisterOperationInfo;
  result = [(CKDRegisterOperationInfo *)&v5 init];
  if (result)
  {
    result->_options = options;
  }

  return result;
}

@end