@interface DBGObjectPointer
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withAddress:(id)address;
- (DBGObjectPointer)initWithAddress:(id)address;
- (NSString)debugDescription;
- (NSString)description;
@end

@implementation DBGObjectPointer

+ (id)withAddress:(id)address
{
  addressCopy = address;
  v5 = [[self alloc] initWithAddress:addressCopy];

  return v5;
}

- (DBGObjectPointer)initWithAddress:(id)address
{
  addressCopy = address;
  v9.receiver = self;
  v9.super_class = DBGObjectPointer;
  v6 = [(DBGObjectPointer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectPointer, address);
  }

  return v7;
}

- (NSString)description
{
  objectValue = [(DBGObjectPointer *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGObjectPointer *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"public.plain-text"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [self withAddress:valueCopy];
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