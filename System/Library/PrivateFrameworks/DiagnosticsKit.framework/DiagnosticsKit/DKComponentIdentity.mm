@interface DKComponentIdentity
+ (id)componentIdentityWithDomain:(id)domain version:(id)version resources:(id)resources;
+ (id)componentIdentityWithType:(id)type identifier:(id)identifier version:(id)version resources:(id)resources;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToComponentIdentity:(id)identity;
- (BOOL)isNewerThan:(id)than;
- (DKComponentIdentity)initWithCoder:(id)coder;
- (DKComponentIdentity)initWithDomain:(id)domain version:(id)version resources:(id)resources;
- (DKComponentIdentity)initWithType:(id)type identifier:(id)identifier version:(id)version resources:(id)resources;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DKComponentIdentity

+ (id)componentIdentityWithDomain:(id)domain version:(id)version resources:(id)resources
{
  resourcesCopy = resources;
  versionCopy = version;
  domainCopy = domain;
  v11 = [[self alloc] initWithDomain:domainCopy version:versionCopy resources:resourcesCopy];

  return v11;
}

- (DKComponentIdentity)initWithDomain:(id)domain version:(id)version resources:(id)resources
{
  domainCopy = domain;
  versionCopy = version;
  resourcesCopy = resources;
  v21.receiver = self;
  v21.super_class = DKComponentIdentity;
  v12 = [(DKComponentIdentity *)&v21 init];
  if (v12)
  {
    v13 = [DKCanonicalVersion canonicalVersionWithString:versionCopy];
    version = v12->_version;
    v12->_version = v13;

    objc_storeStrong(&v12->_domain, domain);
    objc_storeStrong(&v12->_resources, resources);
    v15 = [domainCopy componentsSeparatedByString:@"."];
    v16 = [v15 objectAtIndexedSubscript:0];
    type = v12->_type;
    v12->_type = v16;

    if ([v15 count] >= 2)
    {
      v18 = [v15 objectAtIndexedSubscript:1];
      identifier = v12->_identifier;
      v12->_identifier = v18;
    }
  }

  return v12;
}

+ (id)componentIdentityWithType:(id)type identifier:(id)identifier version:(id)version resources:(id)resources
{
  resourcesCopy = resources;
  versionCopy = version;
  identifierCopy = identifier;
  typeCopy = type;
  v14 = [[self alloc] initWithType:typeCopy identifier:identifierCopy version:versionCopy resources:resourcesCopy];

  return v14;
}

- (DKComponentIdentity)initWithType:(id)type identifier:(id)identifier version:(id)version resources:(id)resources
{
  typeCopy = type;
  identifierCopy = identifier;
  versionCopy = version;
  resourcesCopy = resources;
  v22.receiver = self;
  v22.super_class = DKComponentIdentity;
  v15 = [(DKComponentIdentity *)&v22 init];
  if (v15)
  {
    v16 = [DKCanonicalVersion canonicalVersionWithString:versionCopy];
    version = v15->_version;
    v15->_version = v16;

    objc_storeStrong(&v15->_type, type);
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v15->_resources, resources);
    objc_storeStrong(&v15->_domain, type);
    if (identifierCopy)
    {
      v18 = [(NSString *)v15->_domain stringByAppendingString:@"."];
      v19 = [v18 stringByAppendingString:identifierCopy];
      domain = v15->_domain;
      v15->_domain = v19;
    }
  }

  return v15;
}

- (BOOL)isNewerThan:(id)than
{
  thanCopy = than;
  version = [(DKComponentIdentity *)self version];
  version2 = [thanCopy version];

  LOBYTE(thanCopy) = [version isNewerThan:version2];
  return thanCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p domain: %@, version: %@>", v5, self, self->_domain, self->_version];;

  return v6;
}

- (DKComponentIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = DKComponentIdentity;
  v5 = [(DKComponentIdentity *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"resources"];
    resources = v5->_resources;
    v5->_resources = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  version = [(DKComponentIdentity *)self version];
  [coderCopy encodeObject:version forKey:@"version"];

  type = [(DKComponentIdentity *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  identifier = [(DKComponentIdentity *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  domain = [(DKComponentIdentity *)self domain];
  [coderCopy encodeObject:domain forKey:@"domain"];

  resources = [(DKComponentIdentity *)self resources];
  [coderCopy encodeObject:resources forKey:@"resources"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(DKCanonicalVersion *)self->_version copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_type copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_identifier copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_domain copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSSet *)self->_resources copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (unint64_t)hash
{
  domain = [(DKComponentIdentity *)self domain];
  v3 = [domain hash];

  return v3;
}

- (BOOL)isEqualToComponentIdentity:(id)identity
{
  identityCopy = identity;
  domain = [(DKComponentIdentity *)self domain];
  domain2 = [identityCopy domain];

  LOBYTE(identityCopy) = [domain isEqual:domain2];
  return identityCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = self == equalCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DKComponentIdentity *)self isEqualToComponentIdentity:equalCopy];
  }

  return v5;
}

@end