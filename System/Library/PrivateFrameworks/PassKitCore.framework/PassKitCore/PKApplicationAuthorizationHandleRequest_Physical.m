@interface PKApplicationAuthorizationHandleRequest_Physical
- (PKApplicationAuthorizationHandleRequest_Physical)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplicationAuthorizationHandleRequest_Physical

- (PKApplicationAuthorizationHandleRequest_Physical)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKApplicationAuthorizationHandleRequest_Physical;
  return [(PKApplicationAuthorizationHandleRequest *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = PKApplicationAuthorizationHandleRequest_Physical;
  [(PKApplicationAuthorizationHandleRequest *)&v3 encodeWithCoder:a3];
}

@end