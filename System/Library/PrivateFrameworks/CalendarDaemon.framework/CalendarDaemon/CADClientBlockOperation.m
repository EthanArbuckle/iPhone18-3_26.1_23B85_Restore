@interface CADClientBlockOperation
- (CADClientBlockOperation)initWithToken:(unsigned int)a3;
@end

@implementation CADClientBlockOperation

- (CADClientBlockOperation)initWithToken:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = CADClientBlockOperation;
  result = [(NSBlockOperation *)&v5 init];
  if (result)
  {
    result->_token = a3;
  }

  return result;
}

@end