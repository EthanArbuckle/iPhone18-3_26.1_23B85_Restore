@interface _CRSUIClusterThemeLayoutData
- (_CRSUIClusterThemeLayoutData)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation _CRSUIClusterThemeLayoutData

- (_CRSUIClusterThemeLayoutData)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _CRSUIClusterThemeLayoutData;
  v5 = [(_CRSUIClusterThemeLayoutData *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeDictionaryOfClass:objc_opt_class() forKey:@"themeData"];
    themeData = v5->_themeData;
    v5->_themeData = v6;

    v8 = objc_opt_class();
    v9 = [v4 decodeCollectionOfClass:v8 containingClass:objc_opt_class() forKey:@"displays"];
    displays = v5->_displays;
    v5->_displays = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetBaseURL"];
    assetBaseURL = v5->_assetBaseURL;
    v5->_assetBaseURL = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extraAssetsURL"];
    extraAssetsURL = v5->_extraAssetsURL;
    v5->_extraAssetsURL = v13;

    v5->_assetVersion = [v4 decodeUInt64ForKey:@"assetVersion"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v8 = a3;
  v4 = [(_CRSUIClusterThemeLayoutData *)self themeData];
  [v8 encodeDictionary:v4 forKey:@"themeData"];

  v5 = [(_CRSUIClusterThemeLayoutData *)self displays];
  [v8 encodeCollection:v5 forKey:@"displays"];

  v6 = [(_CRSUIClusterThemeLayoutData *)self assetBaseURL];
  [v8 encodeObject:v6 forKey:@"assetBaseURL"];

  v7 = [(_CRSUIClusterThemeLayoutData *)self extraAssetsURL];
  [v8 encodeObject:v7 forKey:@"extraAssetsURL"];

  [v8 encodeUInt64:-[_CRSUIClusterThemeLayoutData assetVersion](self forKey:{"assetVersion"), @"assetVersion"}];
}

@end