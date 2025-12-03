@interface FSModuleIdentity
- (FSModuleIdentity)initWithApplicationExtensionRecord:(id)record isEnabled:(BOOL)enabled isSystem:(BOOL)system;
- (FSModuleIdentity)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSModuleIdentity

- (FSModuleIdentity)initWithApplicationExtensionRecord:(id)record isEnabled:(BOOL)enabled isSystem:(BOOL)system
{
  recordCopy = record;
  v31.receiver = self;
  v31.super_class = FSModuleIdentity;
  v9 = [(FSModuleIdentity *)&v31 init];
  if (v9)
  {
    bundleIdentifier = [recordCopy bundleIdentifier];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = bundleIdentifier;

    infoDictionary = [recordCopy infoDictionary];
    v13 = [infoDictionary objectForKey:@"EXAppExtensionAttributes" ofClass:objc_opt_class()];
    attributes = v9->_attributes;
    v9->_attributes = v13;

    v15 = [recordCopy URL];
    url = v9->_url;
    v9->_url = v15;

    uniqueIdentifier = [recordCopy uniqueIdentifier];
    uuid = v9->_uuid;
    v9->_uuid = uniqueIdentifier;

    v19 = MEMORY[0x277CCACA8];
    uniqueIdentifier2 = [recordCopy uniqueIdentifier];
    v21 = [v19 stringWithFormat:@"Extension identity [%@]: %@ platform: %u", uniqueIdentifier2, v9->_bundleIdentifier, objc_msgSend(recordCopy, "platform")];
    desc = v9->_desc;
    v9->_desc = v21;

    v9->_enabled = enabled;
    v9->_system = system;
    localizedName = [recordCopy localizedName];
    localizedName = v9->_localizedName;
    v9->_localizedName = localizedName;

    teamIdentifier = [recordCopy teamIdentifier];
    teamID = v9->_teamID;
    v9->_teamID = teamIdentifier;

    infoDictionary2 = [recordCopy infoDictionary];
    v28 = [infoDictionary2 objectForKey:@"Application-Group" ofClass:objc_opt_class()];
    applicationGroup = v9->_applicationGroup;
    v9->_applicationGroup = v28;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"FSModuleIdentity.bundleID"];
  [coderCopy encodeObject:self->_attributes forKey:@"FSModuleIdentity.attributes"];
  [coderCopy encodeObject:self->_url forKey:@"FSModuleIdentity.url"];
  [coderCopy encodeObject:self->_uuid forKey:@"FSModuleIdentity.uuid"];
  [coderCopy encodeObject:self->_desc forKey:@"FSModuleIdentity.description"];
  [coderCopy encodeBool:self->_enabled forKey:@"FSModuleIdentity.enabled"];
  [coderCopy encodeBool:self->_system forKey:@"FSModuleIdentity.system"];
  [coderCopy encodeObject:self->_localizedName forKey:@"FSModuleIdentity.locName"];
  [coderCopy encodeObject:self->_teamID forKey:@"MIteam"];
}

- (FSModuleIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSModuleIdentity.bundleID"];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v5;

  v7 = +[FSKitConstants plistTypes];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"FSModuleIdentity.attributes"];
  attributes = self->_attributes;
  self->_attributes = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSModuleIdentity.url"];
  url = self->_url;
  self->_url = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSModuleIdentity.uuid"];
  uuid = self->_uuid;
  self->_uuid = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSModuleIdentity.description"];
  desc = self->_desc;
  self->_desc = v14;

  self->_enabled = [coderCopy decodeBoolForKey:@"FSModuleIdentity.enabled"];
  self->_system = [coderCopy decodeBoolForKey:@"FSModuleIdentity.system"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSModuleIdentity.locName"];
  localizedName = self->_localizedName;
  self->_localizedName = v16;

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MIteam"];

  teamID = self->_teamID;
  self->_teamID = v18;

  return self;
}

@end