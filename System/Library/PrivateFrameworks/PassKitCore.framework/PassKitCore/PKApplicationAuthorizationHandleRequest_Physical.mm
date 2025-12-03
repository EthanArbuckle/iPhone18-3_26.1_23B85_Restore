@interface PKApplicationAuthorizationHandleRequest_Physical
- (PKApplicationAuthorizationHandleRequest_Physical)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplicationAuthorizationHandleRequest_Physical

- (PKApplicationAuthorizationHandleRequest_Physical)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PKApplicationAuthorizationHandleRequest_Physical;
  return [(PKApplicationAuthorizationHandleRequest *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = PKApplicationAuthorizationHandleRequest_Physical;
  [(PKApplicationAuthorizationHandleRequest *)&v3 encodeWithCoder:coder];
}

@end