@interface DBGAttributedString
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withAttributedString:(id)string;
- (DBGAttributedString)initWithAttributedString:(id)string;
- (NSString)debugDescription;
- (NSString)description;
@end

@implementation DBGAttributedString

+ (id)withAttributedString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithAttributedString:stringCopy];

  return v5;
}

- (DBGAttributedString)initWithAttributedString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = DBGAttributedString;
  v6 = [(DBGAttributedString *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attributedString, string);
  }

  return v7;
}

- (NSString)description
{
  objectValue = [(DBGAttributedString *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGAttributedString *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"attrStr"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [[NSAttributedString alloc] initWithString:valueCopy];
    v10 = [self withAttributedString:v9];
  }

  else
  {
    v10 = 0;
    if (!valueCopy && error)
    {
      v10 = 0;
      *error = 0;
    }
  }

  return v10;
}

@end