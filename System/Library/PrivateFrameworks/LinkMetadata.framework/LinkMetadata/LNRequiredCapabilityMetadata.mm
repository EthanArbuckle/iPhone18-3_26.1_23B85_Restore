@interface LNRequiredCapabilityMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)isFeatureFlagCapability;
- (BOOL)isMobileGestaltCapability;
- (LNRequiredCapabilityMetadata)initWithCoder:(id)a3;
- (LNRequiredCapabilityMetadata)initWithDomain:(id)a3 key:(id)a4 value:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNRequiredCapabilityMetadata

- (BOOL)isFeatureFlagCapability
{
  v2 = [(LNRequiredCapabilityMetadata *)self domain];
  v3 = [v2 isEqualToString:@"FeatureFlag"];

  return v3;
}

- (BOOL)isMobileGestaltCapability
{
  v2 = [(LNRequiredCapabilityMetadata *)self domain];
  v3 = [v2 isEqualToString:@"MobileGestalt"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_22:

      goto LABEL_23;
    }

    v7 = [(LNRequiredCapabilityMetadata *)self domain];
    v8 = [(LNRequiredCapabilityMetadata *)v6 domain];
    v9 = v7;
    v10 = v8;
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

    v19 = [(LNRequiredCapabilityMetadata *)self value];
    v12 = v19 ^ [(LNRequiredCapabilityMetadata *)v6 value]^ 1;
LABEL_20:

    goto LABEL_21;
  }

  LOBYTE(v12) = 1;
LABEL_23:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNRequiredCapabilityMetadata *)self domain];
  v4 = [v3 hash];
  v5 = [(LNRequiredCapabilityMetadata *)self key];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNRequiredCapabilityMetadata *)self value];

  return v6 ^ v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNRequiredCapabilityMetadata *)self domain];
  v7 = [(LNRequiredCapabilityMetadata *)self key];
  v8 = [v3 stringWithFormat:@"<%@: %p, domain: %@, key: %@, value: %i>", v5, self, v6, v7, -[LNRequiredCapabilityMetadata value](self, "value")];

  return v8;
}

- (LNRequiredCapabilityMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"key"];
  v7 = [v4 decodeBoolForKey:@"value"];

  v8 = [(LNRequiredCapabilityMetadata *)self initWithDomain:v5 key:v6 value:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(LNRequiredCapabilityMetadata *)self domain];
  [v6 encodeObject:v4 forKey:@"domain"];

  v5 = [(LNRequiredCapabilityMetadata *)self key];
  [v6 encodeObject:v5 forKey:@"key"];

  [v6 encodeBool:-[LNRequiredCapabilityMetadata value](self forKey:{"value"), @"value"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(LNRequiredCapabilityMetadata *)self domain];
  v6 = [(LNRequiredCapabilityMetadata *)self key];
  v7 = [v4 initWithDomain:v5 key:v6 value:{-[LNRequiredCapabilityMetadata value](self, "value")}];

  return v7;
}

- (LNRequiredCapabilityMetadata)initWithDomain:(id)a3 key:(id)a4 value:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"LNRequiredCapabilityMetadata.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"domain"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"LNRequiredCapabilityMetadata.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"key"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = LNRequiredCapabilityMetadata;
  v12 = [(LNRequiredCapabilityMetadata *)&v21 init];
  if (v12)
  {
    v13 = [v9 copy];
    domain = v12->_domain;
    v12->_domain = v13;

    v15 = [v11 copy];
    key = v12->_key;
    v12->_key = v15;

    v12->_value = a5;
    v17 = v12;
  }

  return v12;
}

@end