@interface IDSSigningKeyDiversifier
- (BOOL)isEqual:(id)a3;
- (IDSSigningKeyDiversifier)initWithCoder:(id)a3;
- (IDSSigningKeyDiversifier)initWithDiversifier:(id)a3 trackingPreventionSecret:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSSigningKeyDiversifier

- (IDSSigningKeyDiversifier)initWithDiversifier:(id)a3 trackingPreventionSecret:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v14.receiver = self;
    v14.super_class = IDSSigningKeyDiversifier;
    v11 = [(IDSSigningKeyDiversifier *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_diversifier, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v10 = self;
  }

  return v10;
}

- (IDSSigningKeyDiversifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dS"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tPS"];

  v7 = [(IDSSigningKeyDiversifier *)self initWithDiversifier:v5 trackingPreventionSecret:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSSigningKeyDiversifier *)self diversifier];
  [v4 encodeObject:v5 forKey:@"dS"];

  v6 = [(IDSSigningKeyDiversifier *)self trackingPreventionSecret];
  [v4 encodeObject:v6 forKey:@"tPS"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v4 = [(IDSSigningKeyDiversifier *)v3 diversifier];
  v5 = [(IDSSigningKeyDiversifier *)v3 trackingPreventionSecret];
  v6 = [(IDSSigningKeyDiversifier *)v3 initWithDiversifier:v4 trackingPreventionSecret:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(IDSSigningKeyDiversifier *)v5 diversifier];
      v7 = [(IDSSigningKeyDiversifier *)self diversifier];
      if ([v6 isEqual:v7])
      {
        v8 = [(IDSSigningKeyDiversifier *)v5 trackingPreventionSecret];
        v9 = [(IDSSigningKeyDiversifier *)self trackingPreventionSecret];
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(IDSSigningKeyDiversifier *)self diversifier];
  v4 = [v3 hash];
  v5 = [(IDSSigningKeyDiversifier *)self trackingPreventionSecret];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSSigningKeyDiversifier *)self trackingPreventionSecret];
  v6 = [(IDSSigningKeyDiversifier *)self diversifier];
  v7 = [v3 stringWithFormat:@"<%@: %p tPS: %@, div: %@>", v4, self, v5, v6];

  return v7;
}

@end