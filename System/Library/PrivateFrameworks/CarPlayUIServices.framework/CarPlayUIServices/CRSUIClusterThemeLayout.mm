@interface CRSUIClusterThemeLayout
- (BOOL)isCustomizable;
- (CRSUIClusterThemeLayout)initWithBSXPCCoder:(id)a3;
- (CRSUIClusterThemeLayout)initWithIdentifier:(id)a3 displayName:(id)a4 palettes:(id)a5 wallpapers:(id)a6 preview:(id)a7;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CRSUIClusterThemeLayout

- (CRSUIClusterThemeLayout)initWithIdentifier:(id)a3 displayName:(id)a4 palettes:(id)a5 wallpapers:(id)a6 preview:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = CRSUIClusterThemeLayout;
  v17 = [(CRSUIClusterThemeLayout *)&v23 init];
  if (v17)
  {
    v18 = [v12 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [v13 copy];
    displayName = v17->_displayName;
    v17->_displayName = v20;

    objc_storeStrong(&v17->_palettes, a5);
    objc_storeStrong(&v17->_wallpapers, a6);
    objc_storeStrong(&v17->_preview, a7);
  }

  return v17;
}

- (BOOL)isCustomizable
{
  v3 = [(CRSUIClusterThemeLayout *)self palettes];
  if ([v3 count] > 1)
  {
    v5 = 1;
  }

  else
  {
    v4 = [(CRSUIClusterThemeLayout *)self wallpapers];
    v5 = [v4 count] > 1;
  }

  return v5;
}

- (CRSUIClusterThemeLayout)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeStringForKey:@"identifier"];
  v6 = [v4 decodeStringForKey:@"displayName"];
  v7 = objc_opt_class();
  v8 = [v4 decodeCollectionOfClass:v7 containingClass:objc_opt_class() forKey:@"palettes"];
  v9 = objc_opt_class();
  v10 = [v4 decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"wallpapers"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preview"];

  v12 = [(CRSUIClusterThemeLayout *)self initWithIdentifier:v5 displayName:v6 palettes:v8 wallpapers:v10 preview:v11];
  return v12;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v10 = a3;
  v4 = [(CRSUIClusterThemeLayout *)self identifier];
  [v10 encodeObject:v4 forKey:@"identifier"];

  v5 = [(CRSUIClusterThemeLayout *)self displayName];
  [v10 encodeObject:v5 forKey:@"displayName"];

  v6 = [(CRSUIClusterThemeLayout *)self palettes];
  [v10 encodeCollection:v6 forKey:@"palettes"];

  v7 = [(CRSUIClusterThemeLayout *)self wallpapers];
  [v10 encodeCollection:v7 forKey:@"wallpapers"];

  v8 = [(CRSUIClusterThemeLayout *)self preview];

  if (v8)
  {
    v9 = [(CRSUIClusterThemeLayout *)self preview];
    [v10 encodeObject:v9 forKey:@"preview"];
  }
}

@end