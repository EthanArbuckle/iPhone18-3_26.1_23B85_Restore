@interface MSDKPeerDemoApp
- (MSDKPeerDemoApp)initWithCoder:(id)coder;
- (MSDKPeerDemoApp)initWithIdentifier:(id)identifier andLocalizedName:(id)name;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSDKPeerDemoApp

- (MSDKPeerDemoApp)initWithIdentifier:(id)identifier andLocalizedName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = MSDKPeerDemoApp;
  v8 = [(MSDKPeerDemoApp *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDKPeerDemoApp *)v8 setIdentifier:identifierCopy];
    [(MSDKPeerDemoApp *)v9 setLocalizedName:nameCopy];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(MSDKPeerDemoApp *)self identifier];
  localizedName = [(MSDKPeerDemoApp *)self localizedName];
  v8 = [v3 stringWithFormat:@"<%@[%p]: ID=%@ Name=%@>", v5, self, identifier, localizedName];

  return v8;
}

- (MSDKPeerDemoApp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MSDKPeerDemoApp;
  v5 = [(MSDKPeerDemoApp *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(MSDKPeerDemoApp *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    [(MSDKPeerDemoApp *)v5 setLocalizedName:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(MSDKPeerDemoApp *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  localizedName = [(MSDKPeerDemoApp *)self localizedName];
  [coderCopy encodeObject:localizedName forKey:@"localizedName"];
}

@end