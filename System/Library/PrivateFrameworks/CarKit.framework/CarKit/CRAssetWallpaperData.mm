@interface CRAssetWallpaperData
- (BOOL)isEqual:(id)equal;
- (CRAssetWallpaperData)initWithBSXPCCoder:(id)coder;
- (CRAssetWallpaperData)initWithCoder:(id)coder;
- (CRAssetWallpaperData)initWithDictionary:(id)dictionary;
- (CRAssetWallpaperData)initWithWallpaperIdentifier:(id)identifier displayID:(id)d layoutID:(id)iD;
- (NSString)description;
- (NSString)identifier;
- (id)asDictionary;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRAssetWallpaperData

- (CRAssetWallpaperData)initWithWallpaperIdentifier:(id)identifier displayID:(id)d layoutID:(id)iD
{
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  v19.receiver = self;
  v19.super_class = CRAssetWallpaperData;
  v11 = [(CRAssetWallpaperData *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    wallpaperID = v11->_wallpaperID;
    v11->_wallpaperID = v12;

    v14 = [dCopy copy];
    displayID = v11->_displayID;
    v11->_displayID = v14;

    v16 = [iDCopy copy];
    layoutID = v11->_layoutID;
    v11->_layoutID = v16;
  }

  return v11;
}

- (NSString)identifier
{
  v3 = MEMORY[0x1E696AEC0];
  displayID = [(CRAssetWallpaperData *)self displayID];
  layoutID = [(CRAssetWallpaperData *)self layoutID];
  wallpaperID = [(CRAssetWallpaperData *)self wallpaperID];
  v7 = [v3 stringWithFormat:@"%@:%@:%@", displayID, layoutID, wallpaperID];

  return v7;
}

- (CRAssetWallpaperData)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  v5 = [dictionaryCopy objectForKey:@"displayIdentifier"];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  v7 = [dictionaryCopy objectForKey:@"layoutIdentifier"];
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  objc_opt_class();
  v9 = [dictionaryCopy objectForKey:@"wallpaperIdentifier"];
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  selfCopy = 0;
  if (v6 && v8 && v10)
  {
    self = [(CRAssetWallpaperData *)self initWithWallpaperIdentifier:v10 displayID:v6 layoutID:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)asDictionary
{
  v14[3] = *MEMORY[0x1E69E9840];
  displayID = [(CRAssetWallpaperData *)self displayID];
  if (displayID)
  {
    v4 = displayID;
    layoutID = [(CRAssetWallpaperData *)self layoutID];
    if (layoutID)
    {
      v6 = layoutID;
      wallpaperID = [(CRAssetWallpaperData *)self wallpaperID];

      if (wallpaperID)
      {
        v13[0] = @"displayIdentifier";
        displayID2 = [(CRAssetWallpaperData *)self displayID];
        v14[0] = displayID2;
        v13[1] = @"layoutIdentifier";
        layoutID2 = [(CRAssetWallpaperData *)self layoutID];
        v14[1] = layoutID2;
        v13[2] = @"wallpaperIdentifier";
        wallpaperID2 = [(CRAssetWallpaperData *)self wallpaperID];
        v14[2] = wallpaperID2;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  displayID2 = CarGeneralLogging();
  if (os_log_type_enabled(displayID2, OS_LOG_TYPE_FAULT))
  {
    [(CRSystemWallpaperData *)self asDictionary];
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    wallpaperID = [(CRAssetWallpaperData *)self wallpaperID];
    wallpaperID2 = [v5 wallpaperID];
    if ([wallpaperID isEqualToString:wallpaperID2])
    {
      displayID = [(CRAssetWallpaperData *)self displayID];
      displayID2 = [v5 displayID];
      if ([displayID isEqualToString:displayID2])
      {
        layoutID = [(CRAssetWallpaperData *)self layoutID];
        layoutID2 = [v5 layoutID];
        v12 = [layoutID isEqualToString:layoutID2];
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
  identifier = [(CRAssetWallpaperData *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ {identifier: %@}", v4, identifier];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  displayID = self->_displayID;
  coderCopy = coder;
  [coderCopy encodeObject:displayID forKey:@"displayIdentifier"];
  [coderCopy encodeObject:self->_layoutID forKey:@"layoutIdentifier"];
  [coderCopy encodeObject:self->_wallpaperID forKey:@"wallpaperIdentifier"];
}

- (CRAssetWallpaperData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wallpaperIdentifier"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(CRAssetWallpaperData *)self initWithWallpaperIdentifier:v7 displayID:v5 layoutID:v6];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  displayID = self->_displayID;
  coderCopy = coder;
  [coderCopy encodeObject:displayID forKey:@"displayIdentifier"];
  [coderCopy encodeObject:self->_layoutID forKey:@"layoutIdentifier"];
  [coderCopy encodeObject:self->_wallpaperID forKey:@"wallpaperIdentifier"];
}

- (CRAssetWallpaperData)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"layoutIdentifier"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wallpaperIdentifier"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(CRAssetWallpaperData *)self initWithWallpaperIdentifier:v7 displayID:v5 layoutID:v6];
    selfCopy = self;
  }

  return selfCopy;
}

@end