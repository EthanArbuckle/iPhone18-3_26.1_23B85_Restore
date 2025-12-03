@interface CARThemeAssetVersion
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToThemeAssetVersion:(id)version;
- (CARThemeAssetVersion)initWithCoder:(id)coder;
- (CARThemeAssetVersion)initWithIdentifier:(id)identifier iOSContentVersion:(id)version accessoryContentVersion:(id)contentVersion;
- (id)description;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CARThemeAssetVersion

- (CARThemeAssetVersion)initWithIdentifier:(id)identifier iOSContentVersion:(id)version accessoryContentVersion:(id)contentVersion
{
  identifierCopy = identifier;
  versionCopy = version;
  contentVersionCopy = contentVersion;
  v15.receiver = self;
  v15.super_class = CARThemeAssetVersion;
  v12 = [(CARThemeAssetVersion *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_iOSContentVersion, version);
    objc_storeStrong(&v13->_accessoryContentVersion, contentVersion);
  }

  return v13;
}

- (CARThemeAssetVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iOSContentVersion"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AccessoryContentVersion"];

  v8 = [(CARThemeAssetVersion *)self initWithIdentifier:v5 iOSContentVersion:v6 accessoryContentVersion:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CARThemeAssetVersion *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  iOSContentVersion = [(CARThemeAssetVersion *)self iOSContentVersion];
  [coderCopy encodeObject:iOSContentVersion forKey:@"iOSContentVersion"];

  accessoryContentVersion = [(CARThemeAssetVersion *)self accessoryContentVersion];
  [coderCopy encodeObject:accessoryContentVersion forKey:@"AccessoryContentVersion"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CARThemeAssetVersion *)self isEqualToThemeAssetVersion:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToThemeAssetVersion:(id)version
{
  versionCopy = version;
  identifier = [(CARThemeAssetVersion *)self identifier];
  identifier2 = [versionCopy identifier];
  if ([identifier isEqualToString:identifier2])
  {
    iOSContentVersion = [(CARThemeAssetVersion *)self iOSContentVersion];
    iOSContentVersion2 = [versionCopy iOSContentVersion];
    if ([iOSContentVersion isEqualToString:iOSContentVersion2])
    {
      accessoryContentVersion = [(CARThemeAssetVersion *)self accessoryContentVersion];
      accessoryContentVersion2 = [versionCopy accessoryContentVersion];
      v11 = [accessoryContentVersion isEqualToNumber:accessoryContentVersion2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  iOSContentVersion = [(CARThemeAssetVersion *)self iOSContentVersion];
  iOSContentVersion2 = [compareCopy iOSContentVersion];
  v7 = iOSContentVersion2;
  if (iOSContentVersion)
  {
    if ([iOSContentVersion isEqualToString:@"0"] && objc_msgSend(v7, "isEqualToString:", @"0") || (v8 = objc_msgSend(iOSContentVersion, "cr_buildVersionCompare:", v7)) == 0)
    {
      accessoryContentVersion = [(CARThemeAssetVersion *)self accessoryContentVersion];
      accessoryContentVersion2 = [compareCopy accessoryContentVersion];
      v8 = [accessoryContentVersion compare:accessoryContentVersion2];
    }
  }

  else if (iOSContentVersion2)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = CARThemeAssetVersion;
  v4 = [(CARThemeAssetVersion *)&v10 description];
  identifier = [(CARThemeAssetVersion *)self identifier];
  iOSContentVersion = [(CARThemeAssetVersion *)self iOSContentVersion];
  accessoryContentVersion = [(CARThemeAssetVersion *)self accessoryContentVersion];
  v8 = [v3 stringWithFormat:@"%@ [id: %@, iOS version: %@, accessory version: %@]", v4, identifier, iOSContentVersion, accessoryContentVersion];

  return v8;
}

@end