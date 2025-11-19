@interface NetworkCursor
- (NetworkCursor)init;
- (id).cxx_construct;
@end

@implementation NetworkCursor

- (NetworkCursor)init
{
  v3.receiver = self;
  v3.super_class = NetworkCursor;
  result = [(NetworkCursor *)&v3 init];
  if (result)
  {
    result->_stateType = 0;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end