@interface CRSUIWallpaperTraits
- (CRSUIWallpaperTraits)initWithCoder:(id)a3;
- (CRSUIWallpaperTraits)initWithSupportsDynamicAppearance:(BOOL)a3 supportsDashboardPlatterMaterials:(BOOL)a4 iconLabelsRequireBackground:(BOOL)a5 hideRoundedCorners:(BOOL)a6 black:(BOOL)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRSUIWallpaperTraits

- (CRSUIWallpaperTraits)initWithSupportsDynamicAppearance:(BOOL)a3 supportsDashboardPlatterMaterials:(BOOL)a4 iconLabelsRequireBackground:(BOOL)a5 hideRoundedCorners:(BOOL)a6 black:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = CRSUIWallpaperTraits;
  result = [(CRSUIWallpaperTraits *)&v13 init];
  if (result)
  {
    result->_supportsDynamicAppearance = a3;
    result->_supportsDashboardPlatterMaterials = a4;
    result->_iconLabelsRequireBackground = a5;
    result->_hideRoundedCorners = a6;
    result->_black = a7;
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
  v9 = [v3 build];

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[CRSUIWallpaperTraits supportsDynamicAppearance](self forKey:{"supportsDynamicAppearance"), @"supportsDynamicAppearance"}];
  [v4 encodeBool:-[CRSUIWallpaperTraits supportsDashboardPlatterMaterials](self forKey:{"supportsDashboardPlatterMaterials"), @"supportsDashboardPlatterMaterials"}];
  [v4 encodeBool:-[CRSUIWallpaperTraits iconLabelsRequireBackground](self forKey:{"iconLabelsRequireBackground"), @"iconLabelsRequireBackground"}];
  [v4 encodeBool:-[CRSUIWallpaperTraits hideRoundedCorners](self forKey:{"hideRoundedCorners"), @"hideRoundedCorners"}];
  [v4 encodeBool:-[CRSUIWallpaperTraits isBlack](self forKey:{"isBlack"), @"black"}];
}

- (CRSUIWallpaperTraits)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"supportsDynamicAppearance"];
  v6 = [v4 decodeBoolForKey:@"supportsDashboardPlatterMaterials"];
  v7 = [v4 decodeBoolForKey:@"iconLabelsRequireBackground"];
  v8 = [v4 decodeBoolForKey:@"hideRoundedCorners"];
  v9 = [v4 decodeBoolForKey:@"black"];

  return [(CRSUIWallpaperTraits *)self initWithSupportsDynamicAppearance:v5 supportsDashboardPlatterMaterials:v6 iconLabelsRequireBackground:v7 hideRoundedCorners:v8 black:v9];
}

@end