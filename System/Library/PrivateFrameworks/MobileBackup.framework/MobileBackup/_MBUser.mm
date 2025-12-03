@interface _MBUser
+ (_MBUser)currentUser;
- (_MBUser)initWithUser:(id)user;
- (id)description;
@end

@implementation _MBUser

+ (_MBUser)currentUser
{
  v2 = [_MBUser alloc];
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentUser = [mEMORY[0x1E69DF068] currentUser];
  v5 = [(_MBUser *)v2 initWithUser:currentUser];

  return v5;
}

- (_MBUser)initWithUser:(id)user
{
  userCopy = user;
  if (!userCopy)
  {
    [_MBUser initWithUser:];
  }

  v5 = userCopy;
  v9.receiver = self;
  v9.super_class = _MBUser;
  v6 = [(_MBUser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_isPrimaryUser = 1;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%s: %p; isPrimaryUser=%d>", class_getName(v4), self, self->_isPrimaryUser];
}

@end