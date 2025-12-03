@interface MCProfileInfo
- (MCProfileInfo)initWithCoder:(id)coder;
- (MCProfileInfo)initWithProfile:(id)profile;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MCProfileInfo

- (MCProfileInfo)initWithProfile:(id)profile
{
  profileCopy = profile;
  v21.receiver = self;
  v21.super_class = MCProfileInfo;
  v5 = [(MCProfileInfo *)&v21 init];
  if (v5)
  {
    friendlyName = [profileCopy friendlyName];
    friendlyName = v5->_friendlyName;
    v5->_friendlyName = friendlyName;

    profileDescription = [profileCopy profileDescription];
    profileDescription = v5->_profileDescription;
    v5->_profileDescription = profileDescription;

    identifier = [profileCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    uUID = [profileCopy UUID];
    UUID = v5->_UUID;
    v5->_UUID = uUID;

    organization = [profileCopy organization];
    organization = v5->_organization;
    v5->_organization = organization;

    expiryDate = [profileCopy expiryDate];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = expiryDate;

    installOptions = [profileCopy installOptions];
    v19 = [installOptions objectForKeyedSubscript:@"isInstalledByDeclarativeManagement"];
    v5->_isInstalledByDeclarativeManagement = [v19 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  friendlyName = self->_friendlyName;
  coderCopy = coder;
  [coderCopy encodeObject:friendlyName forKey:@"friendlyName"];
  [coderCopy encodeObject:self->_profileDescription forKey:@"profileDescription"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_UUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_organization forKey:@"organization"];
  [coderCopy encodeObject:self->_expiryDate forKey:@"expiryDate"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInstalledByDeclarativeManagement];
  [coderCopy encodeObject:v6 forKey:@"isInstalledByDeclarativeManagement"];
}

- (MCProfileInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = MCProfileInfo;
  v5 = [(MCProfileInfo *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"friendlyName"];
    friendlyName = v5->_friendlyName;
    v5->_friendlyName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"profileDescription"];
    profileDescription = v5->_profileDescription;
    v5->_profileDescription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organization"];
    organization = v5->_organization;
    v5->_organization = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isInstalledByDeclarativeManagement"];
    v5->_isInstalledByDeclarativeManagement = [v18 BOOLValue];
  }

  return v5;
}

@end