@interface LNParameter
- (BOOL)isEqual:(id)equal;
- (LNParameter)initWithCoder:(id)coder;
- (LNParameter)initWithIdentifier:(id)identifier value:(id)value configuration:(id)configuration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNParameter

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(LNProperty *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  value = [(LNProperty *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  configuration = [(LNParameter *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];
}

- (LNParameter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];

  v8 = [(LNParameter *)self initWithIdentifier:v5 value:v6 configuration:v7];
  return v8;
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

- (LNParameter)initWithIdentifier:(id)identifier value:(id)value configuration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = LNParameter;
  v9 = [(LNProperty *)&v14 initWithIdentifier:identifier value:value];
  if (v9)
  {
    v10 = [configurationCopy copy];
    configuration = v9->_configuration;
    v9->_configuration = v10;

    v12 = v9;
  }

  return v9;
}

@end