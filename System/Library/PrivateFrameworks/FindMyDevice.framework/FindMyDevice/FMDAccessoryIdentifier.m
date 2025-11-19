@interface FMDAccessoryIdentifier
- (BOOL)encodeWithFMDCoder:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (FMDAccessoryIdentifier)initWithAddress:(id)a3;
- (FMDAccessoryIdentifier)initWithCoder:(id)a3;
- (FMDAccessoryIdentifier)initWithFMDCoder:(id)a3 error:(id *)a4;
- (FMDAccessoryIdentifier)initWithString:(id)a3;
- (id)computeAccessoryIdentifierWithAddress:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDAccessoryIdentifier

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(FMDAccessoryIdentifier *)v4 string];
      v6 = [(FMDAccessoryIdentifier *)self string];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isValid
{
  v3 = [(FMDAccessoryIdentifier *)self string];
  if (v3)
  {
    v4 = [(FMDAccessoryIdentifier *)self string];
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(FMDAccessoryIdentifier *)self string];
  v3 = [v2 hash];

  return v3;
}

- (FMDAccessoryIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FMDAccessoryIdentifier;
  v5 = [(FMDAccessoryIdentifier *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_string);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    [(FMDAccessoryIdentifier *)v5 setString:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(FMDAccessoryIdentifier *)self string];
  v5 = NSStringFromSelector(sel_string);
  [v4 encodeObject:v6 forKey:v5];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[FMDAccessoryIdentifier allocWithZone:?]];
  v5 = [(FMDAccessoryIdentifier *)self string];
  [(FMDAccessoryIdentifier *)v4 setString:v5];

  return v4;
}

- (BOOL)encodeWithFMDCoder:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(FMDAccessoryIdentifier *)self string];
  v7 = NSStringFromSelector(sel_string);
  [v5 encodeString:v6 forKey:v7];

  return 1;
}

- (FMDAccessoryIdentifier)initWithFMDCoder:(id)a3 error:(id *)a4
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = FMDAccessoryIdentifier;
  v6 = [(FMDAccessoryIdentifier *)&v10 init];
  if (v6)
  {
    v7 = NSStringFromSelector(sel_string);
    v8 = [v5 decodeStringForKey:v7];
    [(FMDAccessoryIdentifier *)v6 setString:v8];
  }

  return v6;
}

- (FMDAccessoryIdentifier)initWithString:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMDAccessoryIdentifier;
  v5 = [(FMDAccessoryIdentifier *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = &stru_1F5A998C8;
    }

    [(FMDAccessoryIdentifier *)v5 setString:v7];
  }

  return v6;
}

- (FMDAccessoryIdentifier)initWithAddress:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FMDAccessoryIdentifier;
  v5 = [(FMDAccessoryIdentifier *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(FMDAccessoryIdentifier *)v5 computeAccessoryIdentifierWithAddress:v4];
    [(FMDAccessoryIdentifier *)v6 setString:v7];
  }

  return v6;
}

- (id)computeAccessoryIdentifierWithAddress:(id)a3
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BT_%@", a3];
  v4 = [v3 dataUsingEncoding:4];
  v5 = [v4 fm_sha256Hash];
  v6 = [v5 fm_hexString];
  v7 = [v6 lowercaseString];

  return v7;
}

@end