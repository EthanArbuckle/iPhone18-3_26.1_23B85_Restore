@interface LNProperty
- (BOOL)isEqual:(id)a3;
- (LNProperty)initWithCoder:(id)a3;
- (LNProperty)initWithIdentifier:(id)a3 value:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNProperty

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNProperty *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(LNProperty *)self value];
  [v4 encodeObject:v6 forKey:@"value"];
}

- (LNProperty)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v7 = [(LNProperty *)self initWithIdentifier:v5 value:v6];
  return v7;
}

- (unint64_t)hash
{
  v3 = [(LNProperty *)self identifier];
  v4 = [v3 hash];
  v5 = [(LNProperty *)self value];
  v6 = [v5 hash];

  return v6 ^ v4;
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
LABEL_20:

      goto LABEL_21;
    }

    v7 = [(LNProperty *)self identifier];
    v8 = [(LNProperty *)v6 identifier];
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
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v12 = [v9 isEqualToString:v10];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    v15 = [(LNProperty *)self value];
    v16 = [(LNProperty *)v6 value];
    v14 = v15;
    v17 = v16;
    v13 = v17;
    if (v14 == v17)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v14 && v17)
      {
        LOBYTE(v12) = [v14 isEqual:v17];
      }
    }

    goto LABEL_18;
  }

  LOBYTE(v12) = 1;
LABEL_21:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNProperty *)self identifier];
  v7 = [(LNProperty *)self value];
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, value: %@>", v5, self, v6, v7];

  return v8;
}

- (LNProperty)initWithIdentifier:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = LNProperty;
  v8 = [(LNProperty *)&v13 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_value, a4);
    v11 = v8;
  }

  return v8;
}

@end