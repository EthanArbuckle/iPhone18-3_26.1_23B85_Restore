@interface __HMDLegacyResidentUser
+ (void)initialize;
- (__HMDLegacyResidentUser)initWithResidentUser:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation __HMDLegacyResidentUser

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(__HMDLegacyResidentUser *)self residentUser];
  [v5 encodeWithCoder:v4];
}

- (__HMDLegacyResidentUser)initWithResidentUser:(id)a3
{
  v5 = a3;
  v6 = [v5 accountHandle];
  v7 = [v5 home];
  v8 = [v5 pairingIdentity];
  v12.receiver = self;
  v12.super_class = __HMDLegacyResidentUser;
  v9 = -[HMDUser initWithAccountHandle:home:pairingIdentity:privilege:](&v12, sel_initWithAccountHandle_home_pairingIdentity_privilege_, v6, v7, v8, [v5 privilege]);

  if (v9)
  {
    v10 = [v5 uuid];
    [(HMDUser *)v9 _setUuidUnsafely:v10];

    objc_storeStrong(&v9->_residentUser, a3);
  }

  return v9;
}

+ (void)initialize
{
  v3 = MEMORY[0x277CCAAB0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setClassName:v5 forClass:a1];
}

@end