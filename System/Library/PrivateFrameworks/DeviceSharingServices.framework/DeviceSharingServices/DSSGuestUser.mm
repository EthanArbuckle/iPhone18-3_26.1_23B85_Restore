@interface DSSGuestUser
+ (id)newGuestUser;
- (DSSGuestUser)init;
- (DSSGuestUser)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DSSGuestUser

+ (id)newGuestUser
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCAD78] UUID];
  [v2 setUuid:v3];
  [v2 setManagedAssetsProfileUUID:v3];
  v4 = [v2 copy];

  return v4;
}

- (DSSGuestUser)init
{
  v3.receiver = self;
  v3.super_class = DSSGuestUser;
  return [(DSSGuestUser *)&v3 init];
}

- (DSSGuestUser)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DSSGuestUser;
  v5 = [(DSSGuestUser *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    if (!v5->_uuid)
    {
      v8 = [MEMORY[0x277CCA9B8] dss_errorWithCode:10];
      [v4 failWithError:v8];
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"managedAssetsProfileUUID"];
    managedAssetsProfileUUID = v5->_managedAssetsProfileUUID;
    v5->_managedAssetsProfileUUID = v9;

    if (!v5->_managedAssetsProfileUUID)
    {
      v11 = [MEMORY[0x277CCA9B8] dss_errorWithCode:10];
      [v4 failWithError:v11];
    }

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSwitchTime"];
    lastSwitchTime = v5->_lastSwitchTime;
    v5->_lastSwitchTime = v12;

    v5->_hasSeenGuestSafetyNotice = [v4 decodeBoolForKey:@"hasSeenGuestSafetyNotice"];
    v5->_temporaryUser = [v4 decodeBoolForKey:@"temporaryUser"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeObject:self->_managedAssetsProfileUUID forKey:@"managedAssetsProfileUUID"];
  [v5 encodeBool:self->_hasSeenGuestSafetyNotice forKey:@"hasSeenGuestSafetyNotice"];
  [v5 encodeBool:self->_temporaryUser forKey:@"temporaryUser"];
  [v5 encodeObject:self->_lastSwitchTime forKey:@"lastSwitchTime"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  _DSSGuestUserCreateCopy(self, v5, a3);
  return objc_claimAutoreleasedReturnValue();
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  _DSSGuestUserCreateCopy(self, v5, a3);
  return objc_claimAutoreleasedReturnValue();
}

@end