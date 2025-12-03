@interface DKNotableUserDataAccount
- (DKNotableUserDataAccount)initWithProfilePicture:(id)picture name:(id)name username:(id)username;
@end

@implementation DKNotableUserDataAccount

- (DKNotableUserDataAccount)initWithProfilePicture:(id)picture name:(id)name username:(id)username
{
  pictureCopy = picture;
  nameCopy = name;
  usernameCopy = username;
  v15.receiver = self;
  v15.super_class = DKNotableUserDataAccount;
  v12 = [(DKNotableUserDataAccount *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_profilePicture, picture);
    objc_storeStrong(&v13->_name, name);
    objc_storeStrong(&v13->_username, username);
  }

  return v13;
}

@end