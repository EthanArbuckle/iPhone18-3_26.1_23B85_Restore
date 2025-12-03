@interface _CRSUIClusterThemeLayoutData
- (_CRSUIClusterThemeLayoutData)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation _CRSUIClusterThemeLayoutData

- (_CRSUIClusterThemeLayoutData)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _CRSUIClusterThemeLayoutData;
  v5 = [(_CRSUIClusterThemeLayoutData *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeDictionaryOfClass:objc_opt_class() forKey:@"themeData"];
    themeData = v5->_themeData;
    v5->_themeData = v6;

    v8 = objc_opt_class();
    v9 = [coderCopy decodeCollectionOfClass:v8 containingClass:objc_opt_class() forKey:@"displays"];
    displays = v5->_displays;
    v5->_displays = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetBaseURL"];
    assetBaseURL = v5->_assetBaseURL;
    v5->_assetBaseURL = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extraAssetsURL"];
    extraAssetsURL = v5->_extraAssetsURL;
    v5->_extraAssetsURL = v13;

    v5->_assetVersion = [coderCopy decodeUInt64ForKey:@"assetVersion"];
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  themeData = [(_CRSUIClusterThemeLayoutData *)self themeData];
  [coderCopy encodeDictionary:themeData forKey:@"themeData"];

  displays = [(_CRSUIClusterThemeLayoutData *)self displays];
  [coderCopy encodeCollection:displays forKey:@"displays"];

  assetBaseURL = [(_CRSUIClusterThemeLayoutData *)self assetBaseURL];
  [coderCopy encodeObject:assetBaseURL forKey:@"assetBaseURL"];

  extraAssetsURL = [(_CRSUIClusterThemeLayoutData *)self extraAssetsURL];
  [coderCopy encodeObject:extraAssetsURL forKey:@"extraAssetsURL"];

  [coderCopy encodeUInt64:-[_CRSUIClusterThemeLayoutData assetVersion](self forKey:{"assetVersion"), @"assetVersion"}];
}

@end