@interface DSSMutableGuestUser
+ (id)newGuestUser;
- (DSSMutableGuestUser)init;
- (DSSMutableGuestUser)initWithCoder:(id)coder;
@end

@implementation DSSMutableGuestUser

+ (id)newGuestUser
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___DSSMutableGuestUser;
  v2 = objc_msgSendSuper2(&v5, sel_newGuestUser);
  v3 = [v2 mutableCopy];

  return v3;
}

- (DSSMutableGuestUser)init
{
  v3.receiver = self;
  v3.super_class = DSSMutableGuestUser;
  return [(DSSGuestUser *)&v3 init];
}

- (DSSMutableGuestUser)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = DSSMutableGuestUser;
  return [(DSSGuestUser *)&v4 initWithCoder:coder];
}

@end