@interface DKComponentIdentity
+ (id)componentIdentityWithDomain:(id)a3 version:(id)a4 resources:(id)a5;
+ (id)componentIdentityWithType:(id)a3 identifier:(id)a4 version:(id)a5 resources:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToComponentIdentity:(id)a3;
- (BOOL)isNewerThan:(id)a3;
- (DKComponentIdentity)initWithCoder:(id)a3;
- (DKComponentIdentity)initWithDomain:(id)a3 version:(id)a4 resources:(id)a5;
- (DKComponentIdentity)initWithType:(id)a3 identifier:(id)a4 version:(id)a5 resources:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DKComponentIdentity

+ (id)componentIdentityWithDomain:(id)a3 version:(id)a4 resources:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithDomain:v10 version:v9 resources:v8];

  return v11;
}

- (DKComponentIdentity)initWithDomain:(id)a3 version:(id)a4 resources:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = DKComponentIdentity;
  v12 = [(DKComponentIdentity *)&v21 init];
  if (v12)
  {
    v13 = [DKCanonicalVersion canonicalVersionWithString:v10];
    version = v12->_version;
    v12->_version = v13;

    objc_storeStrong(&v12->_domain, a3);
    objc_storeStrong(&v12->_resources, a5);
    v15 = [v9 componentsSeparatedByString:@"."];
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

+ (id)componentIdentityWithType:(id)a3 identifier:(id)a4 version:(id)a5 resources:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithType:v13 identifier:v12 version:v11 resources:v10];

  return v14;
}

- (DKComponentIdentity)initWithType:(id)a3 identifier:(id)a4 version:(id)a5 resources:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = DKComponentIdentity;
  v15 = [(DKComponentIdentity *)&v22 init];
  if (v15)
  {
    v16 = [DKCanonicalVersion canonicalVersionWithString:v13];
    version = v15->_version;
    v15->_version = v16;

    objc_storeStrong(&v15->_type, a3);
    objc_storeStrong(&v15->_identifier, a4);
    objc_storeStrong(&v15->_resources, a6);
    objc_storeStrong(&v15->_domain, a3);
    if (v12)
    {
      v18 = [(NSString *)v15->_domain stringByAppendingString:@"."];
      v19 = [v18 stringByAppendingString:v12];
      domain = v15->_domain;
      v15->_domain = v19;
    }
  }

  return v15;
}

- (BOOL)isNewerThan:(id)a3
{
  v4 = a3;
  v5 = [(DKComponentIdentity *)self version];
  v6 = [v4 version];

  LOBYTE(v4) = [v5 isNewerThan:v6];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p domain: %@, version: %@>", v5, self, self->_domain, self->_version];;

  return v6;
}

- (DKComponentIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = DKComponentIdentity;
  v5 = [(DKComponentIdentity *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    version = v5->_version;
    v5->_version = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
    domain = v5->_domain;
    v5->_domain = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"resources"];
    resources = v5->_resources;
    v5->_resources = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DKComponentIdentity *)self version];
  [v4 encodeObject:v5 forKey:@"version"];

  v6 = [(DKComponentIdentity *)self type];
  [v4 encodeObject:v6 forKey:@"type"];

  v7 = [(DKComponentIdentity *)self identifier];
  [v4 encodeObject:v7 forKey:@"identifier"];

  v8 = [(DKComponentIdentity *)self domain];
  [v4 encodeObject:v8 forKey:@"domain"];

  v9 = [(DKComponentIdentity *)self resources];
  [v4 encodeObject:v9 forKey:@"resources"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(DKCanonicalVersion *)self->_version copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_type copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_identifier copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_domain copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSSet *)self->_resources copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (unint64_t)hash
{
  v2 = [(DKComponentIdentity *)self domain];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqualToComponentIdentity:(id)a3
{
  v4 = a3;
  v5 = [(DKComponentIdentity *)self domain];
  v6 = [v4 domain];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = self == v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(DKComponentIdentity *)self isEqualToComponentIdentity:v4];
  }

  return v5;
}

@end