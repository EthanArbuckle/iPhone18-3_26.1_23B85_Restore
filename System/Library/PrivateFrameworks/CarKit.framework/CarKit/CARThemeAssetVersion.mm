@interface CARThemeAssetVersion
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToThemeAssetVersion:(id)a3;
- (CARThemeAssetVersion)initWithCoder:(id)a3;
- (CARThemeAssetVersion)initWithIdentifier:(id)a3 iOSContentVersion:(id)a4 accessoryContentVersion:(id)a5;
- (id)description;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CARThemeAssetVersion

- (CARThemeAssetVersion)initWithIdentifier:(id)a3 iOSContentVersion:(id)a4 accessoryContentVersion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CARThemeAssetVersion;
  v12 = [(CARThemeAssetVersion *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_iOSContentVersion, a4);
    objc_storeStrong(&v13->_accessoryContentVersion, a5);
  }

  return v13;
}

- (CARThemeAssetVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iOSContentVersion"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AccessoryContentVersion"];

  v8 = [(CARThemeAssetVersion *)self initWithIdentifier:v5 iOSContentVersion:v6 accessoryContentVersion:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CARThemeAssetVersion *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(CARThemeAssetVersion *)self iOSContentVersion];
  [v4 encodeObject:v6 forKey:@"iOSContentVersion"];

  v7 = [(CARThemeAssetVersion *)self accessoryContentVersion];
  [v4 encodeObject:v7 forKey:@"AccessoryContentVersion"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CARThemeAssetVersion *)self isEqualToThemeAssetVersion:v4];
  }

  return v5;
}

- (BOOL)isEqualToThemeAssetVersion:(id)a3
{
  v4 = a3;
  v5 = [(CARThemeAssetVersion *)self identifier];
  v6 = [v4 identifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(CARThemeAssetVersion *)self iOSContentVersion];
    v8 = [v4 iOSContentVersion];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(CARThemeAssetVersion *)self accessoryContentVersion];
      v10 = [v4 accessoryContentVersion];
      v11 = [v9 isEqualToNumber:v10];
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(CARThemeAssetVersion *)self iOSContentVersion];
  v6 = [v4 iOSContentVersion];
  v7 = v6;
  if (v5)
  {
    if ([v5 isEqualToString:@"0"] && objc_msgSend(v7, "isEqualToString:", @"0") || (v8 = objc_msgSend(v5, "cr_buildVersionCompare:", v7)) == 0)
    {
      v9 = [(CARThemeAssetVersion *)self accessoryContentVersion];
      v10 = [v4 accessoryContentVersion];
      v8 = [v9 compare:v10];
    }
  }

  else if (v6)
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
  v5 = [(CARThemeAssetVersion *)self identifier];
  v6 = [(CARThemeAssetVersion *)self iOSContentVersion];
  v7 = [(CARThemeAssetVersion *)self accessoryContentVersion];
  v8 = [v3 stringWithFormat:@"%@ [id: %@, iOS version: %@, accessory version: %@]", v4, v5, v6, v7];

  return v8;
}

@end