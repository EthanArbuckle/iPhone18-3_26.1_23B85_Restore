@interface CRSUIWallpaperTraits
- (CRSUIWallpaperTraits)initWithCoder:(id)coder;
- (CRSUIWallpaperTraits)initWithSupportsDynamicAppearance:(BOOL)appearance supportsDashboardPlatterMaterials:(BOOL)materials iconLabelsRequireBackground:(BOOL)background hideRoundedCorners:(BOOL)corners black:(BOOL)black;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRSUIWallpaperTraits

- (CRSUIWallpaperTraits)initWithSupportsDynamicAppearance:(BOOL)appearance supportsDashboardPlatterMaterials:(BOOL)materials iconLabelsRequireBackground:(BOOL)background hideRoundedCorners:(BOOL)corners black:(BOOL)black
{
  v13.receiver = self;
  v13.super_class = CRSUIWallpaperTraits;
  result = [(CRSUIWallpaperTraits *)&v13 init];
  if (result)
  {
    result->_supportsDynamicAppearance = appearance;
    result->_supportsDashboardPlatterMaterials = materials;
    result->_iconLabelsRequireBackground = background;
    result->_hideRoundedCorners = corners;
    result->_black = black;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[CRSUIWallpaperTraits supportsDynamicAppearance](self withName:{"supportsDynamicAppearance"), @"supportsDynamicAppearance"}];
  v5 = [v3 appendBool:-[CRSUIWallpaperTraits supportsDashboardPlatterMaterials](self withName:{"supportsDashboardPlatterMaterials"), @"supportsDashboardPlatterMaterials"}];
  v6 = [v3 appendBool:-[CRSUIWallpaperTraits iconLabelsRequireBackground](self withName:{"iconLabelsRequireBackground"), @"iconLabelsRequireBackground"}];
  v7 = [v3 appendBool:-[CRSUIWallpaperTraits hideRoundedCorners](self withName:{"hideRoundedCorners"), @"hideRoundedCorners"}];
  v8 = [v3 appendBool:-[CRSUIWallpaperTraits isBlack](self withName:{"isBlack"), @"black"}];
  build = [v3 build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[CRSUIWallpaperTraits supportsDynamicAppearance](self forKey:{"supportsDynamicAppearance"), @"supportsDynamicAppearance"}];
  [coderCopy encodeBool:-[CRSUIWallpaperTraits supportsDashboardPlatterMaterials](self forKey:{"supportsDashboardPlatterMaterials"), @"supportsDashboardPlatterMaterials"}];
  [coderCopy encodeBool:-[CRSUIWallpaperTraits iconLabelsRequireBackground](self forKey:{"iconLabelsRequireBackground"), @"iconLabelsRequireBackground"}];
  [coderCopy encodeBool:-[CRSUIWallpaperTraits hideRoundedCorners](self forKey:{"hideRoundedCorners"), @"hideRoundedCorners"}];
  [coderCopy encodeBool:-[CRSUIWallpaperTraits isBlack](self forKey:{"isBlack"), @"black"}];
}

- (CRSUIWallpaperTraits)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"supportsDynamicAppearance"];
  v6 = [coderCopy decodeBoolForKey:@"supportsDashboardPlatterMaterials"];
  v7 = [coderCopy decodeBoolForKey:@"iconLabelsRequireBackground"];
  v8 = [coderCopy decodeBoolForKey:@"hideRoundedCorners"];
  v9 = [coderCopy decodeBoolForKey:@"black"];

  return [(CRSUIWallpaperTraits *)self initWithSupportsDynamicAppearance:v5 supportsDashboardPlatterMaterials:v6 iconLabelsRequireBackground:v7 hideRoundedCorners:v8 black:v9];
}

@end