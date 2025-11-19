@interface CRAssetWallpaperData
- (BOOL)isEqual:(id)a3;
- (CRAssetWallpaperData)initWithBSXPCCoder:(id)a3;
- (CRAssetWallpaperData)initWithCoder:(id)a3;
- (CRAssetWallpaperData)initWithDictionary:(id)a3;
- (CRAssetWallpaperData)initWithWallpaperIdentifier:(id)a3 displayID:(id)a4 layoutID:(id)a5;
- (NSString)description;
- (NSString)identifier;
- (id)asDictionary;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRAssetWallpaperData

- (CRAssetWallpaperData)initWithWallpaperIdentifier:(id)a3 displayID:(id)a4 layoutID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = CRAssetWallpaperData;
  v11 = [(CRAssetWallpaperData *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    wallpaperID = v11->_wallpaperID;
    v11->_wallpaperID = v12;

    v14 = [v9 copy];
    displayID = v11->_displayID;
    v11->_displayID = v14;

    v16 = [v10 copy];
    layoutID = v11->_layoutID;
    v11->_layoutID = v16;
  }

  return v11;
}

- (NSString)identifier
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CRAssetWallpaperData *)self displayID];
  v5 = [(CRAssetWallpaperData *)self layoutID];
  v6 = [(CRAssetWallpaperData *)self wallpaperID];
  v7 = [v3 stringWithFormat:@"%@:%@:%@", v4, v5, v6];

  return v7;
}

- (CRAssetWallpaperData)initWithDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKey:@"displayIdentifier"];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  v7 = [v4 objectForKey:@"layoutIdentifier"];
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  v9 = [v4 objectForKey:@"wallpaperIdentifier"];
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0;
  if (v6 && v8 && v10)
  {
    self = [(CRAssetWallpaperData *)self initWithWallpaperIdentifier:v10 displayID:v6 layoutID:v8];
    v11 = self;
  }

  return v11;
}

- (id)asDictionary
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = [(CRAssetWallpaperData *)self displayID];
  if (v3)
  {
    v4 = v3;
    v5 = [(CRAssetWallpaperData *)self layoutID];
    if (v5)
    {
      v6 = v5;
      v7 = [(CRAssetWallpaperData *)self wallpaperID];

      if (v7)
      {
        v13[0] = @"displayIdentifier";
        v8 = [(CRAssetWallpaperData *)self displayID];
        v14[0] = v8;
        v13[1] = @"layoutIdentifier";
        v9 = [(CRAssetWallpaperData *)self layoutID];
        v14[1] = v9;
        v13[2] = @"wallpaperIdentifier";
        v10 = [(CRAssetWallpaperData *)self wallpaperID];
        v14[2] = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    [(CRSystemWallpaperData *)self asDictionary];
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = [(CRAssetWallpaperData *)self wallpaperID];
    v7 = [v5 wallpaperID];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(CRAssetWallpaperData *)self displayID];
      v9 = [v5 displayID];
      if ([v8 isEqualToString:v9])
      {
        v10 = [(CRAssetWallpaperData *)self layoutID];
        v11 = [v5 layoutID];
        v12 = [v10 isEqualToString:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CRAssetWallpaperData;
  v4 = [(CRAssetWallpaperData *)&v8 description];
  v5 = [(CRAssetWallpaperData *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ {identifier: %@}", v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  displayID = self->_displayID;
  v5 = a3;
  [v5 encodeObject:displayID forKey:@"displayIdentifier"];
  [v5 encodeObject:self->_layoutID forKey:@"layoutIdentifier"];
  [v5 encodeObject:self->_wallpaperID forKey:@"wallpaperIdentifier"];
}

- (CRAssetWallpaperData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wallpaperIdentifier"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    v10 = 0;
  }

  else
  {
    self = [(CRAssetWallpaperData *)self initWithWallpaperIdentifier:v7 displayID:v5 layoutID:v6];
    v10 = self;
  }

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  displayID = self->_displayID;
  v5 = a3;
  [v5 encodeObject:displayID forKey:@"displayIdentifier"];
  [v5 encodeObject:self->_layoutID forKey:@"layoutIdentifier"];
  [v5 encodeObject:self->_wallpaperID forKey:@"wallpaperIdentifier"];
}

- (CRAssetWallpaperData)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"layoutIdentifier"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"wallpaperIdentifier"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    v10 = 0;
  }

  else
  {
    self = [(CRAssetWallpaperData *)self initWithWallpaperIdentifier:v7 displayID:v5 layoutID:v6];
    v10 = self;
  }

  return v10;
}

@end