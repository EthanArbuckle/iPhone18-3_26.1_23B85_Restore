@interface __HMDLegacyResidentUser
+ (void)initialize;
- (__HMDLegacyResidentUser)initWithResidentUser:(id)user;
- (void)encodeWithCoder:(id)coder;
@end

@implementation __HMDLegacyResidentUser

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  residentUser = [(__HMDLegacyResidentUser *)self residentUser];
  [residentUser encodeWithCoder:coderCopy];
}

- (__HMDLegacyResidentUser)initWithResidentUser:(id)user
{
  userCopy = user;
  accountHandle = [userCopy accountHandle];
  home = [userCopy home];
  pairingIdentity = [userCopy pairingIdentity];
  v12.receiver = self;
  v12.super_class = __HMDLegacyResidentUser;
  v9 = -[HMDUser initWithAccountHandle:home:pairingIdentity:privilege:](&v12, sel_initWithAccountHandle_home_pairingIdentity_privilege_, accountHandle, home, pairingIdentity, [userCopy privilege]);

  if (v9)
  {
    uuid = [userCopy uuid];
    [(HMDUser *)v9 _setUuidUnsafely:uuid];

    objc_storeStrong(&v9->_residentUser, user);
  }

  return v9;
}

+ (void)initialize
{
  v3 = MEMORY[0x277CCAAB0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setClassName:v5 forClass:self];
}

@end