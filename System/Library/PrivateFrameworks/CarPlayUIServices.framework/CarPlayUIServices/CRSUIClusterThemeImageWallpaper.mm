@interface CRSUIClusterThemeImageWallpaper
- (CRSUIClusterThemeImageWallpaper)initWithBSXPCCoder:(id)a3;
- (CRSUIClusterThemeImageWallpaper)initWithLightModeAsset:(id)a3 darkModeAsset:(id)a4 supportsDynamicAppearance:(BOOL)a5;
- (id)assetForInterfaceStyle:(int64_t)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CRSUIClusterThemeImageWallpaper

- (CRSUIClusterThemeImageWallpaper)initWithLightModeAsset:(id)a3 darkModeAsset:(id)a4 supportsDynamicAppearance:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = CRSUIClusterThemeImageWallpaper;
  v11 = [(CRSUIClusterThemeImageWallpaper *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_lightModeAsset, a3);
    objc_storeStrong(&v12->_darkModeAsset, a4);
    v12->_supportsDynamicAppearance = a5;
  }

  return v12;
}

- (id)assetForInterfaceStyle:(int64_t)a3
{
  if (a3 == 2 && [(CRSUIClusterThemeImageWallpaper *)self supportsDynamicAppearance])
  {
    v4 = 16;
  }

  else
  {
    v4 = 8;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  lightModeAsset = self->_lightModeAsset;
  v5 = a3;
  [v5 encodeObject:lightModeAsset forKey:@"lightModeAsset"];
  [v5 encodeObject:self->_darkModeAsset forKey:@"darkModeAsset"];
  [v5 encodeBool:-[CRSUIClusterThemeImageWallpaper supportsDynamicAppearance](self forKey:{"supportsDynamicAppearance"), @"supportsDynamicAppearance"}];
}

- (CRSUIClusterThemeImageWallpaper)initWithBSXPCCoder:(id)a3
{
  v3 = self;
  lightModeAsset = self->_lightModeAsset;
  v5 = a3;
  v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"lightModeAsset"];
  v7 = v3->_lightModeAsset;
  v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"darkModeAsset"];
  v9 = [v5 decodeBoolForKey:@"supportsDynamicAppearance"];

  if (v6)
  {
    v3 = [(CRSUIClusterThemeImageWallpaper *)v3 initWithLightModeAsset:v6 darkModeAsset:v8 supportsDynamicAppearance:v9];
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end