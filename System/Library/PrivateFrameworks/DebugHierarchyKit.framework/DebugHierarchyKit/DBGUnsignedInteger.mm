@interface DBGUnsignedInteger
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withValue:(unint64_t)value;
- (DBGUnsignedInteger)initWithUnsignedInteger:(unint64_t)integer;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGUnsignedInteger

+ (id)withValue:(unint64_t)value
{
  v3 = [[self alloc] initWithUnsignedInteger:value];

  return v3;
}

- (DBGUnsignedInteger)initWithUnsignedInteger:(unint64_t)integer
{
  v5.receiver = self;
  v5.super_class = DBGUnsignedInteger;
  result = [(DBGUnsignedInteger *)&v5 init];
  if (result)
  {
    result->_unsignedIntegerValue = integer;
  }

  return result;
}

- (id)objectValue
{
  unsignedIntegerValue = [(DBGUnsignedInteger *)self unsignedIntegerValue];

  return [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
}

- (NSString)description
{
  objectValue = [(DBGUnsignedInteger *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGUnsignedInteger *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"uinteger"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [valueCopy unsignedIntegerValue];
LABEL_6:
      v10 = unsignedIntegerValue;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [valueCopy dbgUnsignedIntegerValue];
      goto LABEL_6;
    }
  }

  v10 = 0;
  if (!valueCopy && error)
  {
    v10 = 0;
    *error = 0;
  }

LABEL_10:
  v11 = [self withValue:v10];

  return v11;
}

- (id)JSONCompatibleRepresentation
{
  v2 = [NSNumber numberWithUnsignedInteger:[(DBGUnsignedInteger *)self unsignedIntegerValue]];
  v3 = [v2 dbgStringForType:@"uinteger" error:0];

  return v3;
}

@end