@interface FSModuleIdentity
- (FSModuleIdentity)initWithApplicationExtensionRecord:(id)a3 isEnabled:(BOOL)a4 isSystem:(BOOL)a5;
- (FSModuleIdentity)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSModuleIdentity

- (FSModuleIdentity)initWithApplicationExtensionRecord:(id)a3 isEnabled:(BOOL)a4 isSystem:(BOOL)a5
{
  v8 = a3;
  v31.receiver = self;
  v31.super_class = FSModuleIdentity;
  v9 = [(FSModuleIdentity *)&v31 init];
  if (v9)
  {
    v10 = [v8 bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v10;

    v12 = [v8 infoDictionary];
    v13 = [v12 objectForKey:@"EXAppExtensionAttributes" ofClass:objc_opt_class()];
    attributes = v9->_attributes;
    v9->_attributes = v13;

    v15 = [v8 URL];
    url = v9->_url;
    v9->_url = v15;

    v17 = [v8 uniqueIdentifier];
    uuid = v9->_uuid;
    v9->_uuid = v17;

    v19 = MEMORY[0x277CCACA8];
    v20 = [v8 uniqueIdentifier];
    v21 = [v19 stringWithFormat:@"Extension identity [%@]: %@ platform: %u", v20, v9->_bundleIdentifier, objc_msgSend(v8, "platform")];
    desc = v9->_desc;
    v9->_desc = v21;

    v9->_enabled = a4;
    v9->_system = a5;
    v23 = [v8 localizedName];
    localizedName = v9->_localizedName;
    v9->_localizedName = v23;

    v25 = [v8 teamIdentifier];
    teamID = v9->_teamID;
    v9->_teamID = v25;

    v27 = [v8 infoDictionary];
    v28 = [v27 objectForKey:@"Application-Group" ofClass:objc_opt_class()];
    applicationGroup = v9->_applicationGroup;
    v9->_applicationGroup = v28;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  bundleIdentifier = self->_bundleIdentifier;
  v5 = a3;
  [v5 encodeObject:bundleIdentifier forKey:@"FSModuleIdentity.bundleID"];
  [v5 encodeObject:self->_attributes forKey:@"FSModuleIdentity.attributes"];
  [v5 encodeObject:self->_url forKey:@"FSModuleIdentity.url"];
  [v5 encodeObject:self->_uuid forKey:@"FSModuleIdentity.uuid"];
  [v5 encodeObject:self->_desc forKey:@"FSModuleIdentity.description"];
  [v5 encodeBool:self->_enabled forKey:@"FSModuleIdentity.enabled"];
  [v5 encodeBool:self->_system forKey:@"FSModuleIdentity.system"];
  [v5 encodeObject:self->_localizedName forKey:@"FSModuleIdentity.locName"];
  [v5 encodeObject:self->_teamID forKey:@"MIteam"];
}

- (FSModuleIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSModuleIdentity.bundleID"];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v5;

  v7 = +[FSKitConstants plistTypes];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"FSModuleIdentity.attributes"];
  attributes = self->_attributes;
  self->_attributes = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSModuleIdentity.url"];
  url = self->_url;
  self->_url = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSModuleIdentity.uuid"];
  uuid = self->_uuid;
  self->_uuid = v12;

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSModuleIdentity.description"];
  desc = self->_desc;
  self->_desc = v14;

  self->_enabled = [v4 decodeBoolForKey:@"FSModuleIdentity.enabled"];
  self->_system = [v4 decodeBoolForKey:@"FSModuleIdentity.system"];
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSModuleIdentity.locName"];
  localizedName = self->_localizedName;
  self->_localizedName = v16;

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MIteam"];

  teamID = self->_teamID;
  self->_teamID = v18;

  return self;
}

@end