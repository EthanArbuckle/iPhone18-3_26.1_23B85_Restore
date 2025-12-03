@interface PKApplicationAuthorizationHandleRequest_Virtual
- (PKApplicationAuthorizationHandleRequest_Virtual)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKApplicationAuthorizationHandleRequest_Virtual

- (PKApplicationAuthorizationHandleRequest_Virtual)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PKApplicationAuthorizationHandleRequest_Virtual;
  return [(PKApplicationAuthorizationHandleRequest *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = PKApplicationAuthorizationHandleRequest_Virtual;
  [(PKApplicationAuthorizationHandleRequest *)&v3 encodeWithCoder:coder];
}

@end