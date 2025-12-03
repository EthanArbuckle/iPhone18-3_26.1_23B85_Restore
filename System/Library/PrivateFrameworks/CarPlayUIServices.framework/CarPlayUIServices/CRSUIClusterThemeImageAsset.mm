@interface CRSUIClusterThemeImageAsset
- (CRSUIClusterThemeImageAsset)initWithBSXPCCoder:(id)coder;
- (CRSUIClusterThemeImageAsset)initWithIdentifier:(id)identifier url:(id)url;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CRSUIClusterThemeImageAsset

- (CRSUIClusterThemeImageAsset)initWithIdentifier:(id)identifier url:(id)url
{
  identifierCopy = identifier;
  urlCopy = url;
  v12.receiver = self;
  v12.super_class = CRSUIClusterThemeImageAsset;
  v9 = [(CRSUIClusterThemeImageAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_url, url);
  }

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CRSUIClusterThemeImageAsset *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  v6 = [(CRSUIClusterThemeImageAsset *)self url];
  [coderCopy encodeObject:v6 forKey:@"url"];
}

- (CRSUIClusterThemeImageAsset)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(CRSUIClusterThemeImageAsset *)self initWithIdentifier:v5 url:v6];
    selfCopy = self;
  }

  return selfCopy;
}

@end