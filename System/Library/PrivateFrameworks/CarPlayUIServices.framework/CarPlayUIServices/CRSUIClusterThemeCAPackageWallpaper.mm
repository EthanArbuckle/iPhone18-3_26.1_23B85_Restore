@interface CRSUIClusterThemeCAPackageWallpaper
- (CRSUIClusterThemeCAPackageWallpaper)initWithAsset:(id)a3 type:(id)a4 lightModeState:(id)a5 darkModeState:(id)a6 supportsDynamicAppearance:(BOOL)a7;
- (CRSUIClusterThemeCAPackageWallpaper)initWithBSXPCCoder:(id)a3;
- (id)stateForInterfaceStyle:(int64_t)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CRSUIClusterThemeCAPackageWallpaper

- (CRSUIClusterThemeCAPackageWallpaper)initWithAsset:(id)a3 type:(id)a4 lightModeState:(id)a5 darkModeState:(id)a6 supportsDynamicAppearance:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v26.receiver = self;
  v26.super_class = CRSUIClusterThemeCAPackageWallpaper;
  v17 = [(CRSUIClusterThemeCAPackageWallpaper *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_asset, a3);
    v19 = [v14 copy];
    type = v18->_type;
    v18->_type = v19;

    v21 = [v15 copy];
    lightModeState = v18->_lightModeState;
    v18->_lightModeState = v21;

    v23 = [v16 copy];
    darkModeState = v18->_darkModeState;
    v18->_darkModeState = v23;

    v18->_supportsDynamicAppearance = a7;
  }

  return v18;
}

- (id)stateForInterfaceStyle:(int64_t)a3
{
  if (a3 == 2 && [(CRSUIClusterThemeCAPackageWallpaper *)self supportsDynamicAppearance])
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
  v6 = a3;
  v4 = [(CRSUIClusterThemeCAPackageWallpaper *)self asset];
  [v6 encodeObject:v4 forKey:@"asset"];

  v5 = [(CRSUIClusterThemeCAPackageWallpaper *)self type];
  [v6 encodeObject:v5 forKey:@"type"];

  [v6 encodeObject:self->_lightModeState forKey:@"lightModeState"];
  [v6 encodeObject:self->_darkModeState forKey:@"darkModeState"];
  [v6 encodeBool:-[CRSUIClusterThemeCAPackageWallpaper supportsDynamicAppearance](self forKey:{"supportsDynamicAppearance"), @"supportsDynamicAppearance"}];
}

- (CRSUIClusterThemeCAPackageWallpaper)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asset"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lightModeState"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"darkModeState"];
  v9 = [v4 decodeBoolForKey:@"supportsDynamicAppearance"];

  v10 = 0;
  if (v5 && v6)
  {
    self = [(CRSUIClusterThemeCAPackageWallpaper *)self initWithAsset:v5 type:v6 lightModeState:v7 darkModeState:v8 supportsDynamicAppearance:v9];
    v10 = self;
  }

  return v10;
}

@end