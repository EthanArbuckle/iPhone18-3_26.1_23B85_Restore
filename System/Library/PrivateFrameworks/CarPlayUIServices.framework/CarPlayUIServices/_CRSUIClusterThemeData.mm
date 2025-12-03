@interface _CRSUIClusterThemeData
- (_CRSUIClusterThemeData)initWithBSXPCCoder:(id)coder;
- (_CRSUIClusterThemeData)initWithThemeData:(id)data;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation _CRSUIClusterThemeData

- (_CRSUIClusterThemeData)initWithThemeData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = _CRSUIClusterThemeData;
  v6 = [(_CRSUIClusterThemeData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_themeData, data);
  }

  return v7;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  themeData = [(_CRSUIClusterThemeData *)self themeData];
  [coderCopy encodeDictionary:themeData forKey:@"themeData"];
}

- (_CRSUIClusterThemeData)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeDictionaryOfClass:objc_opt_class() forKey:@"themeData"];

  if (v5)
  {
    self = [(_CRSUIClusterThemeData *)self initWithThemeData:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end