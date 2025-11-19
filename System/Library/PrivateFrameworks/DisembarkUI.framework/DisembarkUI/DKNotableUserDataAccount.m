@interface DKNotableUserDataAccount
- (DKNotableUserDataAccount)initWithProfilePicture:(id)a3 name:(id)a4 username:(id)a5;
@end

@implementation DKNotableUserDataAccount

- (DKNotableUserDataAccount)initWithProfilePicture:(id)a3 name:(id)a4 username:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = DKNotableUserDataAccount;
  v12 = [(DKNotableUserDataAccount *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_profilePicture, a3);
    objc_storeStrong(&v13->_name, a4);
    objc_storeStrong(&v13->_username, a5);
  }

  return v13;
}

@end