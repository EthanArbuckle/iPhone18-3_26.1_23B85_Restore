@interface MSDKPeerDemoApp
- (MSDKPeerDemoApp)initWithCoder:(id)a3;
- (MSDKPeerDemoApp)initWithIdentifier:(id)a3 andLocalizedName:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSDKPeerDemoApp

- (MSDKPeerDemoApp)initWithIdentifier:(id)a3 andLocalizedName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = MSDKPeerDemoApp;
  v8 = [(MSDKPeerDemoApp *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDKPeerDemoApp *)v8 setIdentifier:v6];
    [(MSDKPeerDemoApp *)v9 setLocalizedName:v7];
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MSDKPeerDemoApp *)self identifier];
  v7 = [(MSDKPeerDemoApp *)self localizedName];
  v8 = [v3 stringWithFormat:@"<%@[%p]: ID=%@ Name=%@>", v5, self, v6, v7];

  return v8;
}

- (MSDKPeerDemoApp)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MSDKPeerDemoApp;
  v5 = [(MSDKPeerDemoApp *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(MSDKPeerDemoApp *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    [(MSDKPeerDemoApp *)v5 setLocalizedName:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MSDKPeerDemoApp *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(MSDKPeerDemoApp *)self localizedName];
  [v4 encodeObject:v6 forKey:@"localizedName"];
}

@end