@interface MCProfileInfo
- (MCProfileInfo)initWithCoder:(id)a3;
- (MCProfileInfo)initWithProfile:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MCProfileInfo

- (MCProfileInfo)initWithProfile:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MCProfileInfo;
  v5 = [(MCProfileInfo *)&v21 init];
  if (v5)
  {
    v6 = [v4 friendlyName];
    friendlyName = v5->_friendlyName;
    v5->_friendlyName = v6;

    v8 = [v4 profileDescription];
    profileDescription = v5->_profileDescription;
    v5->_profileDescription = v8;

    v10 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 UUID];
    UUID = v5->_UUID;
    v5->_UUID = v12;

    v14 = [v4 organization];
    organization = v5->_organization;
    v5->_organization = v14;

    v16 = [v4 expiryDate];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v16;

    v18 = [v4 installOptions];
    v19 = [v18 objectForKeyedSubscript:@"isInstalledByDeclarativeManagement"];
    v5->_isInstalledByDeclarativeManagement = [v19 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  friendlyName = self->_friendlyName;
  v5 = a3;
  [v5 encodeObject:friendlyName forKey:@"friendlyName"];
  [v5 encodeObject:self->_profileDescription forKey:@"profileDescription"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_UUID forKey:@"UUID"];
  [v5 encodeObject:self->_organization forKey:@"organization"];
  [v5 encodeObject:self->_expiryDate forKey:@"expiryDate"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInstalledByDeclarativeManagement];
  [v5 encodeObject:v6 forKey:@"isInstalledByDeclarativeManagement"];
}

- (MCProfileInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MCProfileInfo;
  v5 = [(MCProfileInfo *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"friendlyName"];
    friendlyName = v5->_friendlyName;
    v5->_friendlyName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profileDescription"];
    profileDescription = v5->_profileDescription;
    v5->_profileDescription = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"organization"];
    organization = v5->_organization;
    v5->_organization = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isInstalledByDeclarativeManagement"];
    v5->_isInstalledByDeclarativeManagement = [v18 BOOLValue];
  }

  return v5;
}

@end