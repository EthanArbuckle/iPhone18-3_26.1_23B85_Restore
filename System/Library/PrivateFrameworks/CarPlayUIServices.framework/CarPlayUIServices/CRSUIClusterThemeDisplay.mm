@interface CRSUIClusterThemeDisplay
- (CGSize)size;
- (CRSUIClusterThemeDisplay)initWithBSXPCCoder:(id)a3;
- (CRSUIClusterThemeDisplay)initWithIdentifier:(id)a3 displayType:(unint64_t)a4 size:(CGSize)a5 requiresDarkAppearance:(BOOL)a6 layouts:(id)a7;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CRSUIClusterThemeDisplay

- (CRSUIClusterThemeDisplay)initWithIdentifier:(id)a3 displayType:(unint64_t)a4 size:(CGSize)a5 requiresDarkAppearance:(BOOL)a6 layouts:(id)a7
{
  height = a5.height;
  width = a5.width;
  v14 = a3;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = CRSUIClusterThemeDisplay;
  v16 = [(CRSUIClusterThemeDisplay *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, a3);
    v17->_displayType = a4;
    v17->_size.width = width;
    v17->_size.height = height;
    v17->_requiresDarkAppearance = a6;
    objc_storeStrong(&v17->_layouts, a7);
  }

  return v17;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRSUIClusterThemeDisplay *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  [v4 encodeUInt64:-[CRSUIClusterThemeDisplay displayType](self forKey:{"displayType"), @"displayType"}];
  [(CRSUIClusterThemeDisplay *)self size];
  [v4 encodeCGSize:@"size" forKey:?];
  [v4 encodeBool:-[CRSUIClusterThemeDisplay requiresDarkAppearance](self forKey:{"requiresDarkAppearance"), @"requiresDarkAppearance"}];
  v6 = [(CRSUIClusterThemeDisplay *)self layouts];
  [v4 encodeCollection:v6 forKey:@"layouts"];
}

- (CRSUIClusterThemeDisplay)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeUInt64ForKey:@"displayType"];
  [v4 decodeCGSizeForKey:@"size"];
  v8 = v7;
  v10 = v9;
  v11 = [v4 decodeBoolForKey:@"requiresDarkAppearance"];
  v12 = objc_opt_class();
  v13 = [v4 decodeCollectionOfClass:v12 containingClass:objc_opt_class() forKey:@"layouts"];

  if (v5)
  {
    v14 = v6 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || v13 == 0)
  {
    v16 = 0;
  }

  else
  {
    self = [(CRSUIClusterThemeDisplay *)self initWithIdentifier:v5 displayType:v6 size:v11 requiresDarkAppearance:v13 layouts:v8, v10];
    v16 = self;
  }

  return v16;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end