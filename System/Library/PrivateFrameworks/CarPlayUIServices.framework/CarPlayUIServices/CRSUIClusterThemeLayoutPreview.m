@interface CRSUIClusterThemeLayoutPreview
- (CRSUIClusterThemeLayoutPreview)initWithAsset:(id)a3 lightModeStateForPaletteID:(id)a4 darkModeStateForPaletteID:(id)a5 supportsDynamicAppearance:(BOOL)a6;
- (CRSUIClusterThemeLayoutPreview)initWithBSXPCCoder:(id)a3;
- (id)stateForPaletteIDWithInterfaceStyle:(int64_t)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CRSUIClusterThemeLayoutPreview

- (CRSUIClusterThemeLayoutPreview)initWithAsset:(id)a3 lightModeStateForPaletteID:(id)a4 darkModeStateForPaletteID:(id)a5 supportsDynamicAppearance:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = CRSUIClusterThemeLayoutPreview;
  v14 = [(CRSUIClusterThemeLayoutPreview *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_asset, a3);
    objc_storeStrong(&v15->_lightModeStateForPaletteID, a4);
    objc_storeStrong(&v15->_darkModeStateForPaletteID, a5);
    v15->_supportsDynamicAppearance = a6;
  }

  return v15;
}

- (id)stateForPaletteIDWithInterfaceStyle:(int64_t)a3
{
  if (a3 == 2 && [(CRSUIClusterThemeLayoutPreview *)self supportsDynamicAppearance])
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

- (CRSUIClusterThemeLayoutPreview)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asset"];
  v6 = [v4 decodeBoolForKey:@"supportsDynamicAppearance"];
  if ([v4 containsValueForKey:@"lightModeStateForPaletteID"])
  {
    v7 = [v4 decodeDictionaryOfClass:objc_opt_class() forKey:@"lightModeStateForPaletteID"];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  v8 = v7;
  if ([v4 containsValueForKey:@"darkModeStateForPaletteID"])
  {
    v9 = [v4 decodeDictionaryOfClass:objc_opt_class() forKey:@"darkModeStateForPaletteID"];
LABEL_8:
    v10 = v9;
    goto LABEL_10;
  }

  if (v6)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    goto LABEL_8;
  }

  v10 = 0;
LABEL_10:
  v11 = 0;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v6;
  }

  if (v5 && v8 && (v12 & 1) == 0)
  {
    self = [(CRSUIClusterThemeLayoutPreview *)self initWithAsset:v5 lightModeStateForPaletteID:v8 darkModeStateForPaletteID:v10 supportsDynamicAppearance:v6];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5 = a3;
  v4 = [(CRSUIClusterThemeLayoutPreview *)self asset];
  [v5 encodeObject:v4 forKey:@"asset"];

  [v5 encodeDictionary:self->_lightModeStateForPaletteID forKey:@"lightModeStateForPaletteID"];
  [v5 encodeDictionary:self->_darkModeStateForPaletteID forKey:@"darkModeStateForPaletteID"];
  [v5 encodeBool:-[CRSUIClusterThemeLayoutPreview supportsDynamicAppearance](self forKey:{"supportsDynamicAppearance"), @"supportsDynamicAppearance"}];
}

@end