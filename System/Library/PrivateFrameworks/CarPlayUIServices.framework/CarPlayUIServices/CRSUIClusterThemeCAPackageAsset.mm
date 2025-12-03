@interface CRSUIClusterThemeCAPackageAsset
- (CRSUIClusterThemeCAPackageAsset)initWithBSXPCCoder:(id)coder;
- (CRSUIClusterThemeCAPackageAsset)initWithIdentifier:(id)identifier url:(id)url packageType:(id)type;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CRSUIClusterThemeCAPackageAsset

- (CRSUIClusterThemeCAPackageAsset)initWithIdentifier:(id)identifier url:(id)url packageType:(id)type
{
  identifierCopy = identifier;
  urlCopy = url;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = CRSUIClusterThemeCAPackageAsset;
  v12 = [(CRSUIClusterThemeCAPackageAsset *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_url, url);
    objc_storeStrong(&v13->_packageType, type);
  }

  return v13;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CRSUIClusterThemeCAPackageAsset *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  v6 = [(CRSUIClusterThemeCAPackageAsset *)self url];
  [coderCopy encodeObject:v6 forKey:@"url"];

  packageType = [(CRSUIClusterThemeCAPackageAsset *)self packageType];
  [coderCopy encodeObject:packageType forKey:@"packageType"];
}

- (CRSUIClusterThemeCAPackageAsset)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"packageType"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(CRSUIClusterThemeCAPackageAsset *)self initWithIdentifier:v5 url:v6 packageType:v7];
    selfCopy = self;
  }

  return selfCopy;
}

@end