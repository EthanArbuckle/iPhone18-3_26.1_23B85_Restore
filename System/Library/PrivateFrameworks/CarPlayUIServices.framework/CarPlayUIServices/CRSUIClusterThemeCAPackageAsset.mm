@interface CRSUIClusterThemeCAPackageAsset
- (CRSUIClusterThemeCAPackageAsset)initWithBSXPCCoder:(id)a3;
- (CRSUIClusterThemeCAPackageAsset)initWithIdentifier:(id)a3 url:(id)a4 packageType:(id)a5;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CRSUIClusterThemeCAPackageAsset

- (CRSUIClusterThemeCAPackageAsset)initWithIdentifier:(id)a3 url:(id)a4 packageType:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CRSUIClusterThemeCAPackageAsset;
  v12 = [(CRSUIClusterThemeCAPackageAsset *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v13->_url, a4);
    objc_storeStrong(&v13->_packageType, a5);
  }

  return v13;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(CRSUIClusterThemeCAPackageAsset *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(CRSUIClusterThemeCAPackageAsset *)self url];
  [v4 encodeObject:v6 forKey:@"url"];

  v7 = [(CRSUIClusterThemeCAPackageAsset *)self packageType];
  [v4 encodeObject:v7 forKey:@"packageType"];
}

- (CRSUIClusterThemeCAPackageAsset)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"packageType"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    v10 = 0;
  }

  else
  {
    self = [(CRSUIClusterThemeCAPackageAsset *)self initWithIdentifier:v5 url:v6 packageType:v7];
    v10 = self;
  }

  return v10;
}

@end