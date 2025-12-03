@interface CRSUIClusterThemeWallpaper
- (CRSUIClusterThemeWallpaper)initWithBSXPCCoder:(id)coder;
- (CRSUIClusterThemeWallpaper)initWithIdentifier:(id)identifier displayName:(id)name image:(id)image package:(id)package color:(id)color associatedPaletteID:(id)d isDefault:(BOOL)default cacheID:(id)self0 data:(id)self1 traits:(id)self2;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CRSUIClusterThemeWallpaper

- (CRSUIClusterThemeWallpaper)initWithIdentifier:(id)identifier displayName:(id)name image:(id)image package:(id)package color:(id)color associatedPaletteID:(id)d isDefault:(BOOL)default cacheID:(id)self0 data:(id)self1 traits:(id)self2
{
  identifierCopy = identifier;
  nameCopy = name;
  imageCopy = image;
  packageCopy = package;
  colorCopy = color;
  dCopy = d;
  iDCopy = iD;
  dataCopy = data;
  traitsCopy = traits;
  v37.receiver = self;
  v37.super_class = CRSUIClusterThemeWallpaper;
  v22 = [(CRSUIClusterThemeWallpaper *)&v37 init];
  if (v22)
  {
    v23 = [identifierCopy copy];
    identifier = v22->_identifier;
    v22->_identifier = v23;

    v25 = [nameCopy copy];
    displayName = v22->_displayName;
    v22->_displayName = v25;

    objc_storeStrong(&v22->_image, image);
    objc_storeStrong(&v22->_package, package);
    objc_storeStrong(&v22->_color, color);
    v27 = [dCopy copy];
    associatedPaletteID = v22->_associatedPaletteID;
    v22->_associatedPaletteID = v27;

    v22->_isDefault = default;
    v29 = [iDCopy copy];
    cacheID = v22->_cacheID;
    v22->_cacheID = v29;

    objc_storeStrong(&v22->_data, data);
    objc_storeStrong(&v22->_traits, traits);
  }

  return v22;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CRSUIClusterThemeWallpaper *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"wallpapers"];

  displayName = [(CRSUIClusterThemeWallpaper *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  image = [(CRSUIClusterThemeWallpaper *)self image];
  [coderCopy encodeObject:image forKey:@"image"];

  package = [(CRSUIClusterThemeWallpaper *)self package];
  [coderCopy encodeObject:package forKey:@"package"];

  [coderCopy encodeObject:self->_color forKey:@"color"];
  associatedPaletteID = [(CRSUIClusterThemeWallpaper *)self associatedPaletteID];
  [coderCopy encodeObject:associatedPaletteID forKey:@"associatedPaletteID"];

  [coderCopy encodeBool:-[CRSUIClusterThemeWallpaper isDefault](self forKey:{"isDefault"), @"default"}];
  cacheID = [(CRSUIClusterThemeWallpaper *)self cacheID];
  [coderCopy encodeObject:cacheID forKey:@"cacheID"];

  data = [(CRSUIClusterThemeWallpaper *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  traits = [(CRSUIClusterThemeWallpaper *)self traits];
  [coderCopy encodeObject:traits forKey:@"traits"];
}

- (CRSUIClusterThemeWallpaper)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wallpapers"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"package"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedPaletteID"];
  v9 = [coderCopy decodeBoolForKey:@"default"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cacheID"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traits"];

  v13 = 0;
  if (v4 && v5 && (v13 = 0, v18 | v6 | v7) && v10 && v12)
  {
    LOBYTE(v16) = v9;
    selfCopy = [(CRSUIClusterThemeWallpaper *)self initWithIdentifier:v4 displayName:v5 image:v18 package:v6 color:v7 associatedPaletteID:v8 isDefault:v16 cacheID:v11 data:v10 traits:v12];
    v13 = selfCopy;
  }

  else
  {
    selfCopy = self;
  }

  return v13;
}

@end