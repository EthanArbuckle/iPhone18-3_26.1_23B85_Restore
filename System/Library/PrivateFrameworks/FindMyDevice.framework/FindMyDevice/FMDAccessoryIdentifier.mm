@interface FMDAccessoryIdentifier
- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (FMDAccessoryIdentifier)initWithAddress:(id)address;
- (FMDAccessoryIdentifier)initWithCoder:(id)coder;
- (FMDAccessoryIdentifier)initWithFMDCoder:(id)coder error:(id *)error;
- (FMDAccessoryIdentifier)initWithString:(id)string;
- (id)computeAccessoryIdentifierWithAddress:(id)address;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDAccessoryIdentifier

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      string = [(FMDAccessoryIdentifier *)equalCopy string];
      string2 = [(FMDAccessoryIdentifier *)self string];
      v7 = [string isEqualToString:string2];
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
  string = [(FMDAccessoryIdentifier *)self string];
  if (string)
  {
    string2 = [(FMDAccessoryIdentifier *)self string];
    v5 = [string2 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  string = [(FMDAccessoryIdentifier *)self string];
  v3 = [string hash];

  return v3;
}

- (FMDAccessoryIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = FMDAccessoryIdentifier;
  v5 = [(FMDAccessoryIdentifier *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_string);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(FMDAccessoryIdentifier *)v5 setString:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  string = [(FMDAccessoryIdentifier *)self string];
  v5 = NSStringFromSelector(sel_string);
  [coderCopy encodeObject:string forKey:v5];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FMDAccessoryIdentifier allocWithZone:?]];
  string = [(FMDAccessoryIdentifier *)self string];
  [(FMDAccessoryIdentifier *)v4 setString:string];

  return v4;
}

- (BOOL)encodeWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  string = [(FMDAccessoryIdentifier *)self string];
  v7 = NSStringFromSelector(sel_string);
  [coderCopy encodeString:string forKey:v7];

  return 1;
}

- (FMDAccessoryIdentifier)initWithFMDCoder:(id)coder error:(id *)error
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = FMDAccessoryIdentifier;
  v6 = [(FMDAccessoryIdentifier *)&v10 init];
  if (v6)
  {
    v7 = NSStringFromSelector(sel_string);
    v8 = [coderCopy decodeStringForKey:v7];
    [(FMDAccessoryIdentifier *)v6 setString:v8];
  }

  return v6;
}

- (FMDAccessoryIdentifier)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = FMDAccessoryIdentifier;
  v5 = [(FMDAccessoryIdentifier *)&v9 init];
  v6 = v5;
  if (v5)
  {
    if (stringCopy)
    {
      v7 = stringCopy;
    }

    else
    {
      v7 = &stru_1F5A998C8;
    }

    [(FMDAccessoryIdentifier *)v5 setString:v7];
  }

  return v6;
}

- (FMDAccessoryIdentifier)initWithAddress:(id)address
{
  addressCopy = address;
  v9.receiver = self;
  v9.super_class = FMDAccessoryIdentifier;
  v5 = [(FMDAccessoryIdentifier *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(FMDAccessoryIdentifier *)v5 computeAccessoryIdentifierWithAddress:addressCopy];
    [(FMDAccessoryIdentifier *)v6 setString:v7];
  }

  return v6;
}

- (id)computeAccessoryIdentifierWithAddress:(id)address
{
  address = [MEMORY[0x1E696AEC0] stringWithFormat:@"BT_%@", address];
  v4 = [address dataUsingEncoding:4];
  fm_sha256Hash = [v4 fm_sha256Hash];
  fm_hexString = [fm_sha256Hash fm_hexString];
  lowercaseString = [fm_hexString lowercaseString];

  return lowercaseString;
}

@end