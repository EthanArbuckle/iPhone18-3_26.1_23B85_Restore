@interface CRSUIClusterThemeWallpaper
- (CRSUIClusterThemeWallpaper)initWithBSXPCCoder:(id)a3;
- (CRSUIClusterThemeWallpaper)initWithIdentifier:(id)a3 displayName:(id)a4 image:(id)a5 package:(id)a6 color:(id)a7 associatedPaletteID:(id)a8 isDefault:(BOOL)a9 cacheID:(id)a10 data:(id)a11 traits:(id)a12;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CRSUIClusterThemeWallpaper

- (CRSUIClusterThemeWallpaper)initWithIdentifier:(id)a3 displayName:(id)a4 image:(id)a5 package:(id)a6 color:(id)a7 associatedPaletteID:(id)a8 isDefault:(BOOL)a9 cacheID:(id)a10 data:(id)a11 traits:(id)a12
{
  v36 = a3;
  v35 = a4;
  v34 = a5;
  v33 = a6;
  v32 = a7;
  v18 = a8;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v37.receiver = self;
  v37.super_class = CRSUIClusterThemeWallpaper;
  v22 = [(CRSUIClusterThemeWallpaper *)&v37 init];
  if (v22)
  {
    v23 = [v36 copy];
    identifier = v22->_identifier;
    v22->_identifier = v23;

    v25 = [v35 copy];
    displayName = v22->_displayName;
    v22->_displayName = v25;

    objc_storeStrong(&v22->_image, a5);
    objc_storeStrong(&v22->_package, a6);
    objc_storeStrong(&v22->_color, a7);
    v27 = [v18 copy];
    associatedPaletteID = v22->_associatedPaletteID;
    v22->_associatedPaletteID = v27;

    v22->_isDefault = a9;
    v29 = [v19 copy];
    cacheID = v22->_cacheID;
    v22->_cacheID = v29;

    objc_storeStrong(&v22->_data, a11);
    objc_storeStrong(&v22->_traits, a12);
  }

  return v22;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRSUIClusterThemeWallpaper *)self identifier];
  [v4 encodeObject:v5 forKey:@"wallpapers"];

  v6 = [(CRSUIClusterThemeWallpaper *)self displayName];
  [v4 encodeObject:v6 forKey:@"displayName"];

  v7 = [(CRSUIClusterThemeWallpaper *)self image];
  [v4 encodeObject:v7 forKey:@"image"];

  v8 = [(CRSUIClusterThemeWallpaper *)self package];
  [v4 encodeObject:v8 forKey:@"package"];

  [v4 encodeObject:self->_color forKey:@"color"];
  v9 = [(CRSUIClusterThemeWallpaper *)self associatedPaletteID];
  [v4 encodeObject:v9 forKey:@"associatedPaletteID"];

  [v4 encodeBool:-[CRSUIClusterThemeWallpaper isDefault](self forKey:{"isDefault"), @"default"}];
  v10 = [(CRSUIClusterThemeWallpaper *)self cacheID];
  [v4 encodeObject:v10 forKey:@"cacheID"];

  v11 = [(CRSUIClusterThemeWallpaper *)self data];
  [v4 encodeObject:v11 forKey:@"data"];

  v12 = [(CRSUIClusterThemeWallpaper *)self traits];
  [v4 encodeObject:v12 forKey:@"traits"];
}

- (CRSUIClusterThemeWallpaper)initWithBSXPCCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"wallpapers"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
  v18 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"package"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"color"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"associatedPaletteID"];
  v9 = [v3 decodeBoolForKey:@"default"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"cacheID"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"traits"];

  v13 = 0;
  if (v4 && v5 && (v13 = 0, v18 | v6 | v7) && v10 && v12)
  {
    LOBYTE(v16) = v9;
    v14 = [(CRSUIClusterThemeWallpaper *)self initWithIdentifier:v4 displayName:v5 image:v18 package:v6 color:v7 associatedPaletteID:v8 isDefault:v16 cacheID:v11 data:v10 traits:v12];
    v13 = v14;
  }

  else
  {
    v14 = self;
  }

  return v13;
}

@end