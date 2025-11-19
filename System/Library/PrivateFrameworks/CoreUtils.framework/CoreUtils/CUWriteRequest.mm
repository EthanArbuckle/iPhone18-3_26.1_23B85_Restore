@interface CUWriteRequest
- (CUWriteRequest)init;
@end

@implementation CUWriteRequest

- (CUWriteRequest)init
{
  v3.receiver = self;
  v3.super_class = CUWriteRequest;
  result = [(CUWriteRequest *)&v3 init];
  if (result)
  {
    result->_bytesIOArray = result->_iov;
    result->_bytesIOMaxCount = 16;
  }

  return result;
}

@end