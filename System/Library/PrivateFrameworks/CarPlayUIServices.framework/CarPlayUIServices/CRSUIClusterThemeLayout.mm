@interface CRSUIClusterThemeLayout
- (BOOL)isCustomizable;
- (CRSUIClusterThemeLayout)initWithBSXPCCoder:(id)coder;
- (CRSUIClusterThemeLayout)initWithIdentifier:(id)identifier displayName:(id)name palettes:(id)palettes wallpapers:(id)wallpapers preview:(id)preview;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CRSUIClusterThemeLayout

- (CRSUIClusterThemeLayout)initWithIdentifier:(id)identifier displayName:(id)name palettes:(id)palettes wallpapers:(id)wallpapers preview:(id)preview
{
  identifierCopy = identifier;
  nameCopy = name;
  palettesCopy = palettes;
  wallpapersCopy = wallpapers;
  previewCopy = preview;
  v23.receiver = self;
  v23.super_class = CRSUIClusterThemeLayout;
  v17 = [(CRSUIClusterThemeLayout *)&v23 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [nameCopy copy];
    displayName = v17->_displayName;
    v17->_displayName = v20;

    objc_storeStrong(&v17->_palettes, palettes);
    objc_storeStrong(&v17->_wallpapers, wallpapers);
    objc_storeStrong(&v17->_preview, preview);
  }

  return v17;
}

- (BOOL)isCustomizable
{
  palettes = [(CRSUIClusterThemeLayout *)self palettes];
  if ([palettes count] > 1)
  {
    v5 = 1;
  }

  else
  {
    wallpapers = [(CRSUIClusterThemeLayout *)self wallpapers];
    v5 = [wallpapers count] > 1;
  }

  return v5;
}

- (CRSUIClusterThemeLayout)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeStringForKey:@"identifier"];
  v6 = [coderCopy decodeStringForKey:@"displayName"];
  v7 = objc_opt_class();
  v8 = [coderCopy decodeCollectionOfClass:v7 containingClass:objc_opt_class() forKey:@"palettes"];
  v9 = objc_opt_class();
  v10 = [coderCopy decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"wallpapers"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preview"];

  v12 = [(CRSUIClusterThemeLayout *)self initWithIdentifier:v5 displayName:v6 palettes:v8 wallpapers:v10 preview:v11];
  return v12;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CRSUIClusterThemeLayout *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  displayName = [(CRSUIClusterThemeLayout *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  palettes = [(CRSUIClusterThemeLayout *)self palettes];
  [coderCopy encodeCollection:palettes forKey:@"palettes"];

  wallpapers = [(CRSUIClusterThemeLayout *)self wallpapers];
  [coderCopy encodeCollection:wallpapers forKey:@"wallpapers"];

  preview = [(CRSUIClusterThemeLayout *)self preview];

  if (preview)
  {
    preview2 = [(CRSUIClusterThemeLayout *)self preview];
    [coderCopy encodeObject:preview2 forKey:@"preview"];
  }
}

@end