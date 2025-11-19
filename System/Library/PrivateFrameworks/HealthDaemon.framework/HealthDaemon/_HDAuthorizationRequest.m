@interface _HDAuthorizationRequest
- (id)description;
- (void)invokeCompletionHandlerWithSuccess:(void *)a3 error:;
@end

@implementation _HDAuthorizationRequest

- (void)invokeCompletionHandlerWithSuccess:(void *)a3 error:
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = v5;
      (*(v6 + 16))(v6, *(a1 + 16), a2);
      v5 = v7;
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NSUUID *)self->_identifier UUIDString];
  v6 = [v3 stringWithFormat:@"<%@:%p id:%@>", v4, self, v5];

  return v6;
}

@end