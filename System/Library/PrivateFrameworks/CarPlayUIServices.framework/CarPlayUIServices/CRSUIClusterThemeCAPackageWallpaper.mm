@interface CRSUIClusterThemeCAPackageWallpaper
- (CRSUIClusterThemeCAPackageWallpaper)initWithAsset:(id)asset type:(id)type lightModeState:(id)state darkModeState:(id)modeState supportsDynamicAppearance:(BOOL)appearance;
- (CRSUIClusterThemeCAPackageWallpaper)initWithBSXPCCoder:(id)coder;
- (id)stateForInterfaceStyle:(int64_t)style;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CRSUIClusterThemeCAPackageWallpaper

- (CRSUIClusterThemeCAPackageWallpaper)initWithAsset:(id)asset type:(id)type lightModeState:(id)state darkModeState:(id)modeState supportsDynamicAppearance:(BOOL)appearance
{
  assetCopy = asset;
  typeCopy = type;
  stateCopy = state;
  modeStateCopy = modeState;
  v26.receiver = self;
  v26.super_class = CRSUIClusterThemeCAPackageWallpaper;
  v17 = [(CRSUIClusterThemeCAPackageWallpaper *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_asset, asset);
    v19 = [typeCopy copy];
    type = v18->_type;
    v18->_type = v19;

    v21 = [stateCopy copy];
    lightModeState = v18->_lightModeState;
    v18->_lightModeState = v21;

    v23 = [modeStateCopy copy];
    darkModeState = v18->_darkModeState;
    v18->_darkModeState = v23;

    v18->_supportsDynamicAppearance = appearance;
  }

  return v18;
}

- (id)stateForInterfaceStyle:(int64_t)style
{
  if (style == 2 && [(CRSUIClusterThemeCAPackageWallpaper *)self supportsDynamicAppearance])
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

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  asset = [(CRSUIClusterThemeCAPackageWallpaper *)self asset];
  [coderCopy encodeObject:asset forKey:@"asset"];

  type = [(CRSUIClusterThemeCAPackageWallpaper *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  [coderCopy encodeObject:self->_lightModeState forKey:@"lightModeState"];
  [coderCopy encodeObject:self->_darkModeState forKey:@"darkModeState"];
  [coderCopy encodeBool:-[CRSUIClusterThemeCAPackageWallpaper supportsDynamicAppearance](self forKey:{"supportsDynamicAppearance"), @"supportsDynamicAppearance"}];
}

- (CRSUIClusterThemeCAPackageWallpaper)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asset"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lightModeState"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"darkModeState"];
  v9 = [coderCopy decodeBoolForKey:@"supportsDynamicAppearance"];

  selfCopy = 0;
  if (v5 && v6)
  {
    self = [(CRSUIClusterThemeCAPackageWallpaper *)self initWithAsset:v5 type:v6 lightModeState:v7 darkModeState:v8 supportsDynamicAppearance:v9];
    selfCopy = self;
  }

  return selfCopy;
}

@end