@interface DBGInt
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
- (DBGInt)initWithInt:(int)int;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGInt

- (DBGInt)initWithInt:(int)int
{
  v5.receiver = self;
  v5.super_class = DBGInt;
  result = [(DBGInt *)&v5 init];
  if (result)
  {
    result->_intValue = int;
  }

  return result;
}

- (id)objectValue
{
  intValue = [(DBGInt *)self intValue];

  return [NSNumber numberWithInt:intValue];
}

- (NSString)description
{
  objectValue = [(DBGInt *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGInt *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"i"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [valueCopy intValue];
LABEL_6:
      v10 = intValue;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [valueCopy dbgIntValue];
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
  v2 = [NSNumber numberWithInt:[(DBGInt *)self intValue]];
  v3 = [v2 dbgStringForType:@"i" error:0];

  return v3;
}

@end