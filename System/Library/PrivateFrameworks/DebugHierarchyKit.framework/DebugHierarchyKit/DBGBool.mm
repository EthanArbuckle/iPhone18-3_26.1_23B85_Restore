@interface DBGBool
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
- (DBGBool)initWithBool:(BOOL)bool;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGBool

- (DBGBool)initWithBool:(BOOL)bool
{
  v5.receiver = self;
  v5.super_class = DBGBool;
  result = [(DBGBool *)&v5 init];
  if (result)
  {
    result->_BOOLValue = bool;
  }

  return result;
}

- (id)objectValue
{
  bOOLValue = [(DBGBool *)self BOOLValue];

  return [NSNumber numberWithBool:bOOLValue];
}

- (NSString)description
{
  objectValue = [(DBGBool *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGBool *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"b"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [valueCopy BOOLValue];
LABEL_6:
      v10 = bOOLValue;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [valueCopy dbgBoolValue];
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
  v2 = [NSNumber numberWithBool:[(DBGBool *)self BOOLValue]];
  v3 = [v2 dbgStringForType:@"b" error:0];

  return v3;
}

@end