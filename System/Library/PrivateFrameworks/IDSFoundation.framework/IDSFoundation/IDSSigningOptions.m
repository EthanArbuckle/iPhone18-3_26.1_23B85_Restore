@interface IDSSigningOptions
- (BOOL)isEqual:(id)a3;
- (IDSSigningOptions)initWithCoder:(id)a3;
- (IDSSigningOptions)initWithKeyType:(unsigned int)a3 diversifier:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSSigningOptions

- (IDSSigningOptions)initWithKeyType:(unsigned int)a3 diversifier:(id)a4
{
  v7 = a4;
  if (IDSIsValidSigningKeyType(a3))
  {
    v12.receiver = self;
    v12.super_class = IDSSigningOptions;
    v8 = [(IDSSigningOptions *)&v12 init];
    v9 = v8;
    if (v8)
    {
      v8->_keyType = a3;
      objc_storeStrong(&v8->_keyDiversifier, a4);
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (IDSSigningOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"kT"];
  if (IDSIsValidSigningKeyType(v5))
  {
    v12.receiver = self;
    v12.super_class = IDSSigningOptions;
    v6 = [(IDSSigningOptions *)&v12 init];
    v7 = v6;
    if (v6)
    {
      v6->_keyType = v5;
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kD"];
      keyDiversifier = v7->_keyDiversifier;
      v7->_keyDiversifier = v8;
    }

    self = v7;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[IDSSigningOptions keyType](self forKey:{"keyType"), @"kT"}];
  v5 = [(IDSSigningOptions *)self keyDiversifier];
  [v4 encodeObject:v5 forKey:@"kD"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v4 = [(IDSSigningOptions *)v3 keyType];
  v5 = [(IDSSigningOptions *)v3 keyDiversifier];
  v6 = [(IDSSigningOptions *)v3 initWithKeyType:v4 diversifier:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(IDSSigningOptions *)v5 keyType];
      if (v6 == [(IDSSigningOptions *)self keyType])
      {
        v7 = [(IDSSigningOptions *)v5 keyDiversifier];
        v8 = [(IDSSigningOptions *)self keyDiversifier];
        v9 = [v7 isEqual:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(IDSSigningOptions *)self keyType];
  v4 = [(IDSSigningOptions *)self keyDiversifier];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSSigningOptions *)self keyType];
  v6 = [(IDSSigningOptions *)self keyDiversifier];
  v7 = [v3 stringWithFormat:@"<%@: %p keyType: %ld, diversifier: %@>", v4, self, v5, v6];

  return v7;
}

@end