@interface CRSUIAssetWallpaper
- (BOOL)isEqual:(id)a3;
- (CRSUIAssetWallpaper)initWithIdentifier:(id)a3 displayID:(id)a4 layoutID:(id)a5 cacheID:(id)a6 traits:(id)a7;
- (NSString)description;
- (NSString)identifier;
- (id)data;
@end

@implementation CRSUIAssetWallpaper

- (CRSUIAssetWallpaper)initWithIdentifier:(id)a3 displayID:(id)a4 layoutID:(id)a5 cacheID:(id)a6 traits:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = CRSUIAssetWallpaper;
  v17 = [(CRSUIAssetWallpaper *)&v27 init];
  if (v17)
  {
    v18 = [v12 copy];
    wallpaperIdentifier = v17->_wallpaperIdentifier;
    v17->_wallpaperIdentifier = v18;

    v20 = [v13 copy];
    displayID = v17->_displayID;
    v17->_displayID = v20;

    v22 = [v14 copy];
    layoutID = v17->_layoutID;
    v17->_layoutID = v22;

    v24 = [v15 copy];
    cacheID = v17->_cacheID;
    v17->_cacheID = v24;

    objc_storeStrong(&v17->_traits, a7);
  }

  return v17;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(CRSUIAssetWallpaper *)self wallpaperIdentifier];
  [v3 appendString:v4 withName:@"identifier"];

  v5 = [(CRSUIAssetWallpaper *)self displayID];
  [v3 appendString:v5 withName:@"displayID"];

  v6 = [(CRSUIAssetWallpaper *)self layoutID];
  [v3 appendString:v6 withName:@"layoutID"];

  v7 = [(CRSUIAssetWallpaper *)self traits];
  v8 = [v3 appendObject:v7 withName:@"traits"];

  v9 = [v3 build];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
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
    v9 = [(CRSUIAssetWallpaper *)self data];
    v10 = [v8 data];
    v11 = [v9 isEqual:v10];
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
  v4 = [(CRSUIAssetWallpaper *)self wallpaperIdentifier];
  v5 = [(CRSUIAssetWallpaper *)self displayID];
  v6 = [(CRSUIAssetWallpaper *)self layoutID];
  v7 = [v3 initWithWallpaperIdentifier:v4 displayID:v5 layoutID:v6];

  return v7;
}

- (NSString)identifier
{
  v2 = [(CRSUIAssetWallpaper *)self data];
  v3 = [v2 identifier];

  return v3;
}

@end