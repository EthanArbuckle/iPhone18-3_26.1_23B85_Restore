@interface DAMailboxRequest
- (DAMailboxRequest)init;
@end

@implementation DAMailboxRequest

- (DAMailboxRequest)init
{
  v3.receiver = self;
  v3.super_class = DAMailboxRequest;
  result = [(DAMailboxRequest *)&v3 init];
  if (result)
  {
    result->_bodyFormat = -1;
  }

  return result;
}

@end