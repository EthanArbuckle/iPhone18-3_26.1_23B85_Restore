@interface LKUsers
- (LKUsers)initWithUsers:(id)users;
@end

@implementation LKUsers

- (LKUsers)initWithUsers:(id)users
{
  usersCopy = users;
  v9.receiver = self;
  v9.super_class = LKUsers;
  v6 = [(LKUsers *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_students, users);
  }

  return v7;
}

@end