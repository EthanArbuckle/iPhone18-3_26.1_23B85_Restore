@interface CRSUIClusterThemeImageAsset
- (CRSUIClusterThemeImageAsset)initWithBSXPCCoder:(id)a3;
- (CRSUIClusterThemeImageAsset)initWithIdentifier:(id)a3 url:(id)a4;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CRSUIClusterThemeImageAsset

- (CRSUIClusterThemeImageAsset)initWithIdentifier:(id)a3 url:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRSUIClusterThemeImageAsset;
  v9 = [(CRSUIClusterThemeImageAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_url, a4);
  }

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRSUIClusterThemeImageAsset *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(CRSUIClusterThemeImageAsset *)self url];
  [v4 encodeObject:v6 forKey:@"url"];
}

- (CRSUIClusterThemeImageAsset)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    self = [(CRSUIClusterThemeImageAsset *)self initWithIdentifier:v5 url:v6];
    v8 = self;
  }

  return v8;
}

@end