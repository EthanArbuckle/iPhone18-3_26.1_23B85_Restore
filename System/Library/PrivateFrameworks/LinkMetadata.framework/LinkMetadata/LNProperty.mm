@interface LNProperty
- (BOOL)isEqual:(id)equal;
- (LNProperty)initWithCoder:(id)coder;
- (LNProperty)initWithIdentifier:(id)identifier value:(id)value;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNProperty

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNProperty *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  value = [(LNProperty *)self value];
  [coderCopy encodeObject:value forKey:@"value"];
}

- (LNProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v7 = [(LNProperty *)self initWithIdentifier:v5 value:v6];
  return v7;
}

- (unint64_t)hash
{
  identifier = [(LNProperty *)self identifier];
  v4 = [identifier hash];
  value = [(LNProperty *)self value];
  v6 = [value hash];

  return v6 ^ v4;
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
LABEL_20:

      goto LABEL_21;
    }

    identifier = [(LNProperty *)self identifier];
    identifier2 = [(LNProperty *)v6 identifier];
    v9 = identifier;
    v10 = identifier2;
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

    value = [(LNProperty *)self value];
    value2 = [(LNProperty *)v6 value];
    v14 = value;
    v17 = value2;
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
  identifier = [(LNProperty *)self identifier];
  value = [(LNProperty *)self value];
  v8 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, value: %@>", v5, self, identifier, value];

  return v8;
}

- (LNProperty)initWithIdentifier:(id)identifier value:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = LNProperty;
  v8 = [(LNProperty *)&v13 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_value, value);
    v11 = v8;
  }

  return v8;
}

@end