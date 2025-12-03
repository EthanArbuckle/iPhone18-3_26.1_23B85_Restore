@interface CADClientBlockOperation
- (CADClientBlockOperation)initWithToken:(unsigned int)token;
@end

@implementation CADClientBlockOperation

- (CADClientBlockOperation)initWithToken:(unsigned int)token
{
  v5.receiver = self;
  v5.super_class = CADClientBlockOperation;
  result = [(NSBlockOperation *)&v5 init];
  if (result)
  {
    result->_token = token;
  }

  return result;
}

@end