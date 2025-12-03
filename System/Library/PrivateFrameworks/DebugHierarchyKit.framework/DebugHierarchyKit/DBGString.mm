@interface DBGString
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withString:(id)string;
- (DBGString)initWithString:(id)string;
- (NSString)debugDescription;
- (NSString)description;
@end

@implementation DBGString

+ (id)withString:(id)string
{
  stringCopy = string;
  v5 = [[self alloc] initWithString:stringCopy];

  return v5;
}

- (DBGString)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = DBGString;
  v6 = [(DBGString *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_string, string);
  }

  return v7;
}

- (NSString)description
{
  objectValue = [(DBGString *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGString *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"public.plain-text"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [self withString:valueCopy];
  }

  else
  {
    v9 = 0;
    if (!valueCopy && error)
    {
      v9 = 0;
      *error = 0;
    }
  }

  return v9;
}

@end