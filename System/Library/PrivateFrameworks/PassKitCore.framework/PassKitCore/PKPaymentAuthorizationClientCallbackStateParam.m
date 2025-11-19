@interface PKPaymentAuthorizationClientCallbackStateParam
+ (PKPaymentAuthorizationClientCallbackStateParam)paramWithCallbackKind:(int64_t)a3 object:(id)a4;
- (id)description;
@end

@implementation PKPaymentAuthorizationClientCallbackStateParam

+ (PKPaymentAuthorizationClientCallbackStateParam)paramWithCallbackKind:(int64_t)a3 object:(id)a4
{
  v6 = a4;
  v7 = [a1 param];
  [v7 setKind:a3];
  [v7 setObject:v6];

  return v7;
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