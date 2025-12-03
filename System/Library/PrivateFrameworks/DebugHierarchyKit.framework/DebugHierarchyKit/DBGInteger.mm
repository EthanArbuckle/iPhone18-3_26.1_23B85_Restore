@interface DBGInteger
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withValue:(int64_t)value;
- (DBGInteger)initWithInteger:(int64_t)integer;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGInteger

+ (id)withValue:(int64_t)value
{
  v3 = [[self alloc] initWithInteger:value];

  return v3;
}

- (DBGInteger)initWithInteger:(int64_t)integer
{
  v5.receiver = self;
  v5.super_class = DBGInteger;
  result = [(DBGInteger *)&v5 init];
  if (result)
  {
    result->_integerValue = integer;
  }

  return result;
}

- (id)objectValue
{
  integerValue = [(DBGInteger *)self integerValue];

  return [NSNumber numberWithInteger:integerValue];
}

- (NSString)description
{
  objectValue = [(DBGInteger *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGInteger *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"integer"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [valueCopy integerValue];
LABEL_6:
      v10 = integerValue;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [valueCopy dbgIntegerValue];
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
  v2 = [NSNumber numberWithInteger:[(DBGInteger *)self integerValue]];
  v3 = [v2 dbgStringForType:@"integer" error:0];

  return v3;
}

@end