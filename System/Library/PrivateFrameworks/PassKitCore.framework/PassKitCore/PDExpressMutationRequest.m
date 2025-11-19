@interface PDExpressMutationRequest
- (PDExpressMutationRequest)init;
@end

@implementation PDExpressMutationRequest

- (PDExpressMutationRequest)init
{
  v3.receiver = self;
  v3.super_class = PDExpressMutationRequest;
  result = [(PDExpressMutationRequest *)&v3 init];
  if (result)
  {
    result->_userInitiated = 1;
  }

  return result;
}

@end