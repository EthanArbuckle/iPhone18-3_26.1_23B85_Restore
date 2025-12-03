@interface DBGUnsignedLong
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withValue:(unint64_t)value;
- (DBGUnsignedLong)initWithUnsignedLong:(unint64_t)long;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGUnsignedLong

+ (id)withValue:(unint64_t)value
{
  v3 = [[self alloc] initWithUnsignedLong:value];

  return v3;
}

- (DBGUnsignedLong)initWithUnsignedLong:(unint64_t)long
{
  v5.receiver = self;
  v5.super_class = DBGUnsignedLong;
  result = [(DBGUnsignedLong *)&v5 init];
  if (result)
  {
    result->_unsignedLongValue = long;
  }

  return result;
}

- (id)objectValue
{
  unsignedLongValue = [(DBGUnsignedLong *)self unsignedLongValue];

  return [NSNumber numberWithUnsignedLong:unsignedLongValue];
}

- (NSString)description
{
  objectValue = [(DBGUnsignedLong *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGUnsignedLong *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"ul"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedLongValue = [valueCopy unsignedLongValue];
LABEL_6:
      v10 = unsignedLongValue;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedLongValue = [valueCopy dbgUnsignedLongValue];
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
  v2 = [NSNumber numberWithUnsignedLong:[(DBGUnsignedLong *)self unsignedLongValue]];
  v3 = [v2 dbgStringForType:@"ul" error:0];

  return v3;
}

@end