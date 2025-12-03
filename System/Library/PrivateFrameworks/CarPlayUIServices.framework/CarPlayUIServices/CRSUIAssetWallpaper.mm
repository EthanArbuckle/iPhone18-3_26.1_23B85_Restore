@interface CRSUIAssetWallpaper
- (BOOL)isEqual:(id)equal;
- (CRSUIAssetWallpaper)initWithIdentifier:(id)identifier displayID:(id)d layoutID:(id)iD cacheID:(id)cacheID traits:(id)traits;
- (NSString)description;
- (NSString)identifier;
- (id)data;
@end

@implementation CRSUIAssetWallpaper

- (CRSUIAssetWallpaper)initWithIdentifier:(id)identifier displayID:(id)d layoutID:(id)iD cacheID:(id)cacheID traits:(id)traits
{
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  cacheIDCopy = cacheID;
  traitsCopy = traits;
  v27.receiver = self;
  v27.super_class = CRSUIAssetWallpaper;
  v17 = [(CRSUIAssetWallpaper *)&v27 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    wallpaperIdentifier = v17->_wallpaperIdentifier;
    v17->_wallpaperIdentifier = v18;

    v20 = [dCopy copy];
    displayID = v17->_displayID;
    v17->_displayID = v20;

    v22 = [iDCopy copy];
    layoutID = v17->_layoutID;
    v17->_layoutID = v22;

    v24 = [cacheIDCopy copy];
    cacheID = v17->_cacheID;
    v17->_cacheID = v24;

    objc_storeStrong(&v17->_traits, traits);
  }

  return v17;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  wallpaperIdentifier = [(CRSUIAssetWallpaper *)self wallpaperIdentifier];
  [v3 appendString:wallpaperIdentifier withName:@"identifier"];

  displayID = [(CRSUIAssetWallpaper *)self displayID];
  [v3 appendString:displayID withName:@"displayID"];

  layoutID = [(CRSUIAssetWallpaper *)self layoutID];
  [v3 appendString:layoutID withName:@"layoutID"];

  traits = [(CRSUIAssetWallpaper *)self traits];
  v8 = [v3 appendObject:traits withName:@"traits"];

  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    data = [(CRSUIAssetWallpaper *)self data];
    data2 = [v8 data];
    v11 = [data isEqual:data2];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)data
{
  v3 = objc_alloc(MEMORY[0x277CF8A08]);
  wallpaperIdentifier = [(CRSUIAssetWallpaper *)self wallpaperIdentifier];
  displayID = [(CRSUIAssetWallpaper *)self displayID];
  layoutID = [(CRSUIAssetWallpaper *)self layoutID];
  v7 = [v3 initWithWallpaperIdentifier:wallpaperIdentifier displayID:displayID layoutID:layoutID];

  return v7;
}

- (NSString)identifier
{
  data = [(CRSUIAssetWallpaper *)self data];
  identifier = [data identifier];

  return identifier;
}

@end