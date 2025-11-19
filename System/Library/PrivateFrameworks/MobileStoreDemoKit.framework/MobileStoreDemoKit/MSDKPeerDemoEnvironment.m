@interface MSDKPeerDemoEnvironment
- (MSDKPeerDemoEnvironment)initWithCoder:(id)a3;
- (MSDKPeerDemoEnvironment)initWithIdentifier:(id)a3 displayName:(id)a4 immersionLevel:(float)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSDKPeerDemoEnvironment

- (MSDKPeerDemoEnvironment)initWithIdentifier:(id)a3 displayName:(id)a4 immersionLevel:(float)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = MSDKPeerDemoEnvironment;
  v10 = [(MSDKPeerDemoEnvironment *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(MSDKPeerDemoEnvironment *)v10 setIdentifier:v8];
    [(MSDKPeerDemoEnvironment *)v11 setDisplayName:v9];
    *&v12 = a5;
    [(MSDKPeerDemoEnvironment *)v11 setImmersionLevel:v12];
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MSDKPeerDemoEnvironment *)self identifier];
  v7 = [(MSDKPeerDemoEnvironment *)self displayName];
  [(MSDKPeerDemoEnvironment *)self immersionLevel];
  v9 = [v3 stringWithFormat:@"<%@[%p]: ID=%@ Name=%@ Immersion=%f>", v5, self, v6, v7, v8];

  return v9;
}

- (MSDKPeerDemoEnvironment)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MSDKPeerDemoEnvironment;
  v5 = [(MSDKPeerDemoEnvironment *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(MSDKPeerDemoEnvironment *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(MSDKPeerDemoEnvironment *)v5 setDisplayName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"immersionLevel"];
    [v8 floatValue];
    [(MSDKPeerDemoEnvironment *)v5 setImmersionLevel:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MSDKPeerDemoEnvironment *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(MSDKPeerDemoEnvironment *)self displayName];
  [v4 encodeObject:v6 forKey:@"displayName"];

  v7 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoEnvironment *)self immersionLevel];
  v8 = [v7 numberWithFloat:?];
  [v4 encodeObject:v8 forKey:@"immersionLevel"];
}

@end