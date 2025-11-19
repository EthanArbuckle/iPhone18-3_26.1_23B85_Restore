@interface LKUsers
- (LKUsers)initWithUsers:(id)a3;
@end

@implementation LKUsers

- (LKUsers)initWithUsers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LKUsers;
  v6 = [(LKUsers *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_students, a3);
  }

  return v7;
}

@end