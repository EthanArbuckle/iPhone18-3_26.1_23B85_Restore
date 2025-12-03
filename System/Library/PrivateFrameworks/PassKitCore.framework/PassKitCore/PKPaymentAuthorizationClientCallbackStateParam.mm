@interface PKPaymentAuthorizationClientCallbackStateParam
+ (PKPaymentAuthorizationClientCallbackStateParam)paramWithCallbackKind:(int64_t)kind object:(id)object;
- (id)description;
@end

@implementation PKPaymentAuthorizationClientCallbackStateParam

+ (PKPaymentAuthorizationClientCallbackStateParam)paramWithCallbackKind:(int64_t)kind object:(id)object
{
  objectCopy = object;
  param = [self param];
  [param setKind:kind];
  [param setObject:objectCopy];

  return param;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  kind = self->_kind;
  if (kind > 0xA)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79DDA88[kind];
  }

  return [v3 stringWithFormat:@"<%@: %p; kind: %@; object: %@>", v4, self, v6, self->_object];
}

@end