@interface DSSGuestUser
+ (id)newGuestUser;
- (DSSGuestUser)init;
- (DSSGuestUser)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DSSGuestUser

+ (id)newGuestUser
{
  v2 = objc_opt_new();
  uUID = [MEMORY[0x277CCAD78] UUID];
  [v2 setUuid:uUID];
  [v2 setManagedAssetsProfileUUID:uUID];
  v4 = [v2 copy];

  return v4;
}

- (DSSGuestUser)init
{
  v3.receiver = self;
  v3.super_class = DSSGuestUser;
  return [(DSSGuestUser *)&v3 init];
}

- (DSSGuestUser)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = DSSGuestUser;
  v5 = [(DSSGuestUser *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    if (!v5->_uuid)
    {
      v8 = [MEMORY[0x277CCA9B8] dss_errorWithCode:10];
      [coderCopy failWithError:v8];
    }

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"managedAssetsProfileUUID"];
    managedAssetsProfileUUID = v5->_managedAssetsProfileUUID;
    v5->_managedAssetsProfileUUID = v9;

    if (!v5->_managedAssetsProfileUUID)
    {
      v11 = [MEMORY[0x277CCA9B8] dss_errorWithCode:10];
      [coderCopy failWithError:v11];
    }

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastSwitchTime"];
    lastSwitchTime = v5->_lastSwitchTime;
    v5->_lastSwitchTime = v12;

    v5->_hasSeenGuestSafetyNotice = [coderCopy decodeBoolForKey:@"hasSeenGuestSafetyNotice"];
    v5->_temporaryUser = [coderCopy decodeBoolForKey:@"temporaryUser"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_managedAssetsProfileUUID forKey:@"managedAssetsProfileUUID"];
  [coderCopy encodeBool:self->_hasSeenGuestSafetyNotice forKey:@"hasSeenGuestSafetyNotice"];
  [coderCopy encodeBool:self->_temporaryUser forKey:@"temporaryUser"];
  [coderCopy encodeObject:self->_lastSwitchTime forKey:@"lastSwitchTime"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  _DSSGuestUserCreateCopy(self, v5, zone);
  return objc_claimAutoreleasedReturnValue();
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  _DSSGuestUserCreateCopy(self, v5, zone);
  return objc_claimAutoreleasedReturnValue();
}

@end