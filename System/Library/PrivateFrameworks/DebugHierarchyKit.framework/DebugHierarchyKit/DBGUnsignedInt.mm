@interface DBGUnsignedInt
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
- (DBGUnsignedInt)initWithUnsignedInt:(unsigned int)int;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGUnsignedInt

- (DBGUnsignedInt)initWithUnsignedInt:(unsigned int)int
{
  v5.receiver = self;
  v5.super_class = DBGUnsignedInt;
  result = [(DBGUnsignedInt *)&v5 init];
  if (result)
  {
    result->_unsignedIntValue = int;
  }

  return result;
}

- (id)objectValue
{
  unsignedIntValue = [(DBGUnsignedInt *)self unsignedIntValue];

  return [NSNumber numberWithUnsignedInt:unsignedIntValue];
}

- (NSString)description
{
  objectValue = [(DBGUnsignedInt *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGUnsignedInt *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"ui"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntValue = [valueCopy unsignedIntValue];
LABEL_6:
      v10 = unsignedIntValue;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntValue = [valueCopy dbgUnsignedIntValue];
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
  v2 = [NSNumber numberWithUnsignedInt:[(DBGUnsignedInt *)self unsignedIntValue]];
  v3 = [v2 dbgStringForType:@"ui" error:0];

  return v3;
}

@end