@interface CRSUIClusterThemeLayoutPreview
- (CRSUIClusterThemeLayoutPreview)initWithAsset:(id)asset lightModeStateForPaletteID:(id)d darkModeStateForPaletteID:(id)iD supportsDynamicAppearance:(BOOL)appearance;
- (CRSUIClusterThemeLayoutPreview)initWithBSXPCCoder:(id)coder;
- (id)stateForPaletteIDWithInterfaceStyle:(int64_t)style;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CRSUIClusterThemeLayoutPreview

- (CRSUIClusterThemeLayoutPreview)initWithAsset:(id)asset lightModeStateForPaletteID:(id)d darkModeStateForPaletteID:(id)iD supportsDynamicAppearance:(BOOL)appearance
{
  assetCopy = asset;
  dCopy = d;
  iDCopy = iD;
  v17.receiver = self;
  v17.super_class = CRSUIClusterThemeLayoutPreview;
  v14 = [(CRSUIClusterThemeLayoutPreview *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_asset, asset);
    objc_storeStrong(&v15->_lightModeStateForPaletteID, d);
    objc_storeStrong(&v15->_darkModeStateForPaletteID, iD);
    v15->_supportsDynamicAppearance = appearance;
  }

  return v15;
}

- (id)stateForPaletteIDWithInterfaceStyle:(int64_t)style
{
  if (style == 2 && [(CRSUIClusterThemeLayoutPreview *)self supportsDynamicAppearance])
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

- (CRSUIClusterThemeLayoutPreview)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asset"];
  v6 = [coderCopy decodeBoolForKey:@"supportsDynamicAppearance"];
  if ([coderCopy containsValueForKey:@"lightModeStateForPaletteID"])
  {
    v7 = [coderCopy decodeDictionaryOfClass:objc_opt_class() forKey:@"lightModeStateForPaletteID"];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  v8 = v7;
  if ([coderCopy containsValueForKey:@"darkModeStateForPaletteID"])
  {
    v9 = [coderCopy decodeDictionaryOfClass:objc_opt_class() forKey:@"darkModeStateForPaletteID"];
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
  selfCopy = 0;
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
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  asset = [(CRSUIClusterThemeLayoutPreview *)self asset];
  [coderCopy encodeObject:asset forKey:@"asset"];

  [coderCopy encodeDictionary:self->_lightModeStateForPaletteID forKey:@"lightModeStateForPaletteID"];
  [coderCopy encodeDictionary:self->_darkModeStateForPaletteID forKey:@"darkModeStateForPaletteID"];
  [coderCopy encodeBool:-[CRSUIClusterThemeLayoutPreview supportsDynamicAppearance](self forKey:{"supportsDynamicAppearance"), @"supportsDynamicAppearance"}];
}

@end