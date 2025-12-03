@interface _HDAuthorizationRequest
- (id)description;
- (void)invokeCompletionHandlerWithSuccess:(void *)success error:;
@end

@implementation _HDAuthorizationRequest

- (void)invokeCompletionHandlerWithSuccess:(void *)success error:
{
  successCopy = success;
  if (self)
  {
    v6 = *(self + 8);
    if (v6)
    {
      v7 = successCopy;
      (*(v6 + 16))(v6, *(self + 16), a2);
      successCopy = v7;
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uUIDString = [(NSUUID *)self->_identifier UUIDString];
  v6 = [v3 stringWithFormat:@"<%@:%p id:%@>", v4, self, uUIDString];

  return v6;
}

@end