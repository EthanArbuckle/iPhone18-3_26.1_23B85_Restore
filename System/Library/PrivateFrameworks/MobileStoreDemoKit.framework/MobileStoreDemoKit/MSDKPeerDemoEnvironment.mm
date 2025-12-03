@interface MSDKPeerDemoEnvironment
- (MSDKPeerDemoEnvironment)initWithCoder:(id)coder;
- (MSDKPeerDemoEnvironment)initWithIdentifier:(id)identifier displayName:(id)name immersionLevel:(float)level;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSDKPeerDemoEnvironment

- (MSDKPeerDemoEnvironment)initWithIdentifier:(id)identifier displayName:(id)name immersionLevel:(float)level
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = MSDKPeerDemoEnvironment;
  v10 = [(MSDKPeerDemoEnvironment *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(MSDKPeerDemoEnvironment *)v10 setIdentifier:identifierCopy];
    [(MSDKPeerDemoEnvironment *)v11 setDisplayName:nameCopy];
    *&v12 = level;
    [(MSDKPeerDemoEnvironment *)v11 setImmersionLevel:v12];
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(MSDKPeerDemoEnvironment *)self identifier];
  displayName = [(MSDKPeerDemoEnvironment *)self displayName];
  [(MSDKPeerDemoEnvironment *)self immersionLevel];
  v9 = [v3 stringWithFormat:@"<%@[%p]: ID=%@ Name=%@ Immersion=%f>", v5, self, identifier, displayName, v8];

  return v9;
}

- (MSDKPeerDemoEnvironment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = MSDKPeerDemoEnvironment;
  v5 = [(MSDKPeerDemoEnvironment *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(MSDKPeerDemoEnvironment *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    [(MSDKPeerDemoEnvironment *)v5 setDisplayName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"immersionLevel"];
    [v8 floatValue];
    [(MSDKPeerDemoEnvironment *)v5 setImmersionLevel:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(MSDKPeerDemoEnvironment *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  displayName = [(MSDKPeerDemoEnvironment *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  v7 = MEMORY[0x277CCABB0];
  [(MSDKPeerDemoEnvironment *)self immersionLevel];
  v8 = [v7 numberWithFloat:?];
  [coderCopy encodeObject:v8 forKey:@"immersionLevel"];
}

@end