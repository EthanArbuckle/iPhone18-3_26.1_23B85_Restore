@interface PKApplicationAuthorizationHandleRequest_Virtual
- (PKApplicationAuthorizationHandleRequest_Virtual)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKApplicationAuthorizationHandleRequest_Virtual

- (PKApplicationAuthorizationHandleRequest_Virtual)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKApplicationAuthorizationHandleRequest_Virtual;
  return [(PKApplicationAuthorizationHandleRequest *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = PKApplicationAuthorizationHandleRequest_Virtual;
  [(PKApplicationAuthorizationHandleRequest *)&v3 encodeWithCoder:a3];
}

@end