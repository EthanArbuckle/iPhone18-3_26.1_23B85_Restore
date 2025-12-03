@interface DBGFloat
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withValue:(float)value;
- (DBGFloat)initWithFloat:(float)float;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGFloat

+ (id)withValue:(float)value
{
  v4 = [self alloc];
  *&v5 = value;
  v6 = [v4 initWithFloat:v5];

  return v6;
}

- (DBGFloat)initWithFloat:(float)float
{
  v5.receiver = self;
  v5.super_class = DBGFloat;
  result = [(DBGFloat *)&v5 init];
  if (result)
  {
    result->_floatValue = float;
  }

  return result;
}

- (id)objectValue
{
  [(DBGFloat *)self floatValue];

  return [NSNumber numberWithFloat:?];
}

- (NSString)description
{
  objectValue = [(DBGFloat *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGFloat *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if (![format isEqualToString:@"f"])
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [valueCopy floatValue];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [valueCopy dbgFloatValue];
  }

  else
  {
LABEL_6:
    v9 = 0.0;
    if (!valueCopy && error)
    {
      *error = 0;
    }
  }

LABEL_9:
  v10 = [self withValue:v9];

  return v10;
}

- (id)JSONCompatibleRepresentation
{
  [(DBGFloat *)self floatValue];
  v2 = [NSNumber numberWithFloat:?];
  v3 = [v2 dbgStringForType:@"f" error:0];

  return v3;
}

@end