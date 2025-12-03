@interface DBGUnsignedLongLong
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withValue:(unint64_t)value;
- (DBGUnsignedLongLong)initWithUnsignedLongLong:(unint64_t)long;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGUnsignedLongLong

+ (id)withValue:(unint64_t)value
{
  v3 = [[self alloc] initWithUnsignedLongLong:value];

  return v3;
}

- (DBGUnsignedLongLong)initWithUnsignedLongLong:(unint64_t)long
{
  v5.receiver = self;
  v5.super_class = DBGUnsignedLongLong;
  result = [(DBGUnsignedLongLong *)&v5 init];
  if (result)
  {
    result->_unsignedLongLongValue = long;
  }

  return result;
}

- (id)objectValue
{
  unsignedLongLongValue = [(DBGUnsignedLongLong *)self unsignedLongLongValue];

  return [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue];
}

- (NSString)description
{
  objectValue = [(DBGUnsignedLongLong *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGUnsignedLongLong *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"ull"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedLongLongValue = [valueCopy unsignedLongLongValue];
LABEL_6:
      v10 = unsignedLongLongValue;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedLongLongValue = [valueCopy dbgUnsignedLongLongValue];
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
  v2 = [NSNumber numberWithUnsignedLongLong:[(DBGUnsignedLongLong *)self unsignedLongLongValue]];
  v3 = [v2 dbgStringForType:@"ull" error:0];

  return v3;
}

@end