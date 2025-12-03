@interface DBGDouble
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withValue:(double)value;
- (DBGDouble)initWithDouble:(double)double;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGDouble

+ (id)withValue:(double)value
{
  v3 = [[self alloc] initWithDouble:value];

  return v3;
}

- (DBGDouble)initWithDouble:(double)double
{
  v5.receiver = self;
  v5.super_class = DBGDouble;
  result = [(DBGDouble *)&v5 init];
  if (result)
  {
    result->_doubleValue = double;
  }

  return result;
}

- (id)objectValue
{
  [(DBGDouble *)self doubleValue];

  return [NSNumber numberWithDouble:?];
}

- (NSString)description
{
  objectValue = [(DBGDouble *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGDouble *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if (![format isEqualToString:@"d"])
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [valueCopy doubleValue];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [valueCopy dbgDoubleValue];
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
  [(DBGDouble *)self doubleValue];
  v2 = [NSNumber numberWithDouble:?];
  v3 = [v2 dbgStringForType:@"d" error:0];

  return v3;
}

@end