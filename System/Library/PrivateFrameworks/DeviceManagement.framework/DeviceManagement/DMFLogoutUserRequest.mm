@interface DMFLogoutUserRequest
- (Class)classForCoder;
@end

@implementation DMFLogoutUserRequest

- (Class)classForCoder
{
  v4.receiver = self;
  v4.super_class = DMFLogoutUserRequest;
  classForCoder = [(DMFLogOutUserRequest *)&v4 classForCoder];

  return classForCoder;
}

@end