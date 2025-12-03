@interface LNRequiredCapabilityMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)isFeatureFlagCapability;
- (BOOL)isMobileGestaltCapability;
- (LNRequiredCapabilityMetadata)initWithCoder:(id)coder;
- (LNRequiredCapabilityMetadata)initWithDomain:(id)domain key:(id)key value:(BOOL)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNRequiredCapabilityMetadata

- (BOOL)isFeatureFlagCapability
{
  domain = [(LNRequiredCapabilityMetadata *)self domain];
  v3 = [domain isEqualToString:@"FeatureFlag"];

  return v3;
}

- (BOOL)isMobileGestaltCapability
{
  domain = [(LNRequiredCapabilityMetadata *)self domain];
  v3 = [domain isEqualToString:@"MobileGestalt"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_22:

      goto LABEL_23;
    }

    domain = [(LNRequiredCapabilityMetadata *)self domain];
    domain2 = [(LNRequiredCapabilityMetadata *)v6 domain];
    v9 = domain;
    v10 = domain2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_20;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    v16 = [(LNRequiredCapabilityMetadata *)self key];
    v17 = [(LNRequiredCapabilityMetadata *)v6 key];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      if (!v14 || !v18)
      {

        LOBYTE(v12) = 0;
        goto LABEL_20;
      }

      v12 = [v14 isEqualToString:v18];

      if (!v12)
      {
        goto LABEL_20;
      }
    }

    value = [(LNRequiredCapabilityMetadata *)self value];
    v12 = value ^ [(LNRequiredCapabilityMetadata *)v6 value]^ 1;
LABEL_20:

    goto LABEL_21;
  }

  LOBYTE(v12) = 1;
LABEL_23:

  return v12;
}

- (unint64_t)hash
{
  domain = [(LNRequiredCapabilityMetadata *)self domain];
  v4 = [domain hash];
  v5 = [(LNRequiredCapabilityMetadata *)self key];
  v6 = [v5 hash] ^ v4;
  value = [(LNRequiredCapabilityMetadata *)self value];

  return v6 ^ value;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  domain = [(LNRequiredCapabilityMetadata *)self domain];
  v7 = [(LNRequiredCapabilityMetadata *)self key];
  v8 = [v3 stringWithFormat:@"<%@: %p, domain: %@, key: %@, value: %i>", v5, self, domain, v7, -[LNRequiredCapabilityMetadata value](self, "value")];

  return v8;
}

- (LNRequiredCapabilityMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v7 = [coderCopy decodeBoolForKey:@"value"];

  v8 = [(LNRequiredCapabilityMetadata *)self initWithDomain:v5 key:v6 value:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  domain = [(LNRequiredCapabilityMetadata *)self domain];
  [coderCopy encodeObject:domain forKey:@"domain"];

  v5 = [(LNRequiredCapabilityMetadata *)self key];
  [coderCopy encodeObject:v5 forKey:@"key"];

  [coderCopy encodeBool:-[LNRequiredCapabilityMetadata value](self forKey:{"value"), @"value"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  domain = [(LNRequiredCapabilityMetadata *)self domain];
  v6 = [(LNRequiredCapabilityMetadata *)self key];
  v7 = [v4 initWithDomain:domain key:v6 value:{-[LNRequiredCapabilityMetadata value](self, "value")}];

  return v7;
}

- (LNRequiredCapabilityMetadata)initWithDomain:(id)domain key:(id)key value:(BOOL)value
{
  domainCopy = domain;
  keyCopy = key;
  v11 = keyCopy;
  if (domainCopy)
  {
    if (keyCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNRequiredCapabilityMetadata.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"domain"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNRequiredCapabilityMetadata.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"key"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = LNRequiredCapabilityMetadata;
  v12 = [(LNRequiredCapabilityMetadata *)&v21 init];
  if (v12)
  {
    v13 = [domainCopy copy];
    domain = v12->_domain;
    v12->_domain = v13;

    v15 = [v11 copy];
    key = v12->_key;
    v12->_key = v15;

    v12->_value = value;
    v17 = v12;
  }

  return v12;
}

@end