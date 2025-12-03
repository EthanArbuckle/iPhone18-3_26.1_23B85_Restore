@interface DMTNetworkCredential
+ (id)credentialWithNetworkName:(id)name credential:(id)credential;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCredential:(id)credential;
- (DMTNetworkCredential)initWithCoder:(id)coder;
- (DMTNetworkCredential)initWithNetworkName:(id)name credential:(id)credential;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMTNetworkCredential

- (DMTNetworkCredential)initWithNetworkName:(id)name credential:(id)credential
{
  nameCopy = name;
  credentialCopy = credential;
  v14.receiver = self;
  v14.super_class = DMTNetworkCredential;
  v8 = [(DMTNetworkCredential *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    networkName = v8->_networkName;
    v8->_networkName = v9;

    v11 = [credentialCopy copy];
    credential = v8->_credential;
    v8->_credential = v11;
  }

  return v8;
}

+ (id)credentialWithNetworkName:(id)name credential:(id)credential
{
  credentialCopy = credential;
  nameCopy = name;
  v8 = [[self alloc] initWithNetworkName:nameCopy credential:credentialCopy];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  networkName = [(DMTNetworkCredential *)self networkName];
  [coderCopy encodeObject:networkName forKey:@"networkName"];

  credential = [(DMTNetworkCredential *)self credential];
  [coderCopy encodeObject:credential forKey:@"credential"];
}

- (DMTNetworkCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DMTNetworkCredential;
  v5 = [(DMTNetworkCredential *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"networkName"];
    networkName = v5->_networkName;
    v5->_networkName = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"credential"];
    credential = v5->_credential;
    v5->_credential = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v6 = 0;
    if (equalCopy && (isKindOfClass & 1) != 0)
    {
      v6 = [(DMTNetworkCredential *)self isEqualToCredential:equalCopy];
    }
  }

  return v6;
}

- (unint64_t)hash
{
  networkName = [(DMTNetworkCredential *)self networkName];
  v4 = [networkName hash];
  credential = [(DMTNetworkCredential *)self credential];
  v6 = [credential hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DMTNetworkCredential alloc];
  networkName = [(DMTNetworkCredential *)self networkName];
  v6 = [networkName copy];
  credential = [(DMTNetworkCredential *)self credential];
  v8 = [credential copy];
  v9 = [(DMTNetworkCredential *)v4 initWithNetworkName:v6 credential:v8];

  return v9;
}

- (BOOL)isEqualToCredential:(id)credential
{
  credentialCopy = credential;
  networkName = [(DMTNetworkCredential *)self networkName];
  networkName2 = [credentialCopy networkName];
  if ([networkName isEqualToString:networkName2])
  {
    credential = [(DMTNetworkCredential *)self credential];
    credential2 = [credentialCopy credential];
    v9 = [credential isEqualToString:credential2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end