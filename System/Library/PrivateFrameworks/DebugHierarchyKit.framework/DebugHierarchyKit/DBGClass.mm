@interface DBGClass
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withName:(id)name;
- (DBGClass)initWithClassName:(id)name;
- (NSString)debugDescription;
- (NSString)description;
@end

@implementation DBGClass

+ (id)withName:(id)name
{
  nameCopy = name;
  v5 = [[self alloc] initWithClassName:nameCopy];

  return v5;
}

- (DBGClass)initWithClassName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = DBGClass;
  v6 = [(DBGClass *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_className, name);
  }

  return v7;
}

- (NSString)description
{
  objectValue = [(DBGClass *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGClass *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"public.plain-text"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [self withName:valueCopy];
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