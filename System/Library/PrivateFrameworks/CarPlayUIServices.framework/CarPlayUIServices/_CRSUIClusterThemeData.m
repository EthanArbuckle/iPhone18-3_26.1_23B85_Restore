@interface _CRSUIClusterThemeData
- (_CRSUIClusterThemeData)initWithBSXPCCoder:(id)a3;
- (_CRSUIClusterThemeData)initWithThemeData:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation _CRSUIClusterThemeData

- (_CRSUIClusterThemeData)initWithThemeData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _CRSUIClusterThemeData;
  v6 = [(_CRSUIClusterThemeData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_themeData, a3);
  }

  return v7;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(_CRSUIClusterThemeData *)self themeData];
  [v4 encodeDictionary:v5 forKey:@"themeData"];
}

- (_CRSUIClusterThemeData)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeDictionaryOfClass:objc_opt_class() forKey:@"themeData"];

  if (v5)
  {
    self = [(_CRSUIClusterThemeData *)self initWithThemeData:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end