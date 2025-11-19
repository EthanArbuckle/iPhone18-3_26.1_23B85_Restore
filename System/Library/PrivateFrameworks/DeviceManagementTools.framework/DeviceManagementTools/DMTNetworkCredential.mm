@interface DMTNetworkCredential
+ (id)credentialWithNetworkName:(id)a3 credential:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCredential:(id)a3;
- (DMTNetworkCredential)initWithCoder:(id)a3;
- (DMTNetworkCredential)initWithNetworkName:(id)a3 credential:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMTNetworkCredential

- (DMTNetworkCredential)initWithNetworkName:(id)a3 credential:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DMTNetworkCredential;
  v8 = [(DMTNetworkCredential *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    networkName = v8->_networkName;
    v8->_networkName = v9;

    v11 = [v7 copy];
    credential = v8->_credential;
    v8->_credential = v11;
  }

  return v8;
}

+ (id)credentialWithNetworkName:(id)a3 credential:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithNetworkName:v7 credential:v6];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DMTNetworkCredential *)self networkName];
  [v4 encodeObject:v5 forKey:@"networkName"];

  v6 = [(DMTNetworkCredential *)self credential];
  [v4 encodeObject:v6 forKey:@"credential"];
}

- (DMTNetworkCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DMTNetworkCredential;
  v5 = [(DMTNetworkCredential *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"networkName"];
    networkName = v5->_networkName;
    v5->_networkName = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"credential"];
    credential = v5->_credential;
    v5->_credential = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = 0;
    if (v4 && (isKindOfClass & 1) != 0)
    {
      v6 = [(DMTNetworkCredential *)self isEqualToCredential:v4];
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(DMTNetworkCredential *)self networkName];
  v4 = [v3 hash];
  v5 = [(DMTNetworkCredential *)self credential];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DMTNetworkCredential alloc];
  v5 = [(DMTNetworkCredential *)self networkName];
  v6 = [v5 copy];
  v7 = [(DMTNetworkCredential *)self credential];
  v8 = [v7 copy];
  v9 = [(DMTNetworkCredential *)v4 initWithNetworkName:v6 credential:v8];

  return v9;
}

- (BOOL)isEqualToCredential:(id)a3
{
  v4 = a3;
  v5 = [(DMTNetworkCredential *)self networkName];
  v6 = [v4 networkName];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(DMTNetworkCredential *)self credential];
    v8 = [v4 credential];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end