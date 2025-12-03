@interface DBGCGFloat
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withValue:(double)value;
- (DBGCGFloat)initWithCGFloat:(double)float;
- (NSString)debugDescription;
- (NSString)description;
- (double)CGFloatValue;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
- (void)setCGFloatValue:(double)value;
@end

@implementation DBGCGFloat

- (double)CGFloatValue
{
  if ([(DBGCGFloat *)self backingTypeIsDouble])
  {

    [(DBGCGFloat *)self doubleValue];
  }

  else
  {
    [(DBGCGFloat *)self floatValue];
    return v4;
  }

  return result;
}

- (void)setCGFloatValue:(double)value
{
  if ([(DBGCGFloat *)self backingTypeIsDouble])
  {

    [(DBGCGFloat *)self setDoubleValue:value];
  }

  else
  {

    *&v5 = value;
    [(DBGCGFloat *)self setFloatValue:v5];
  }
}

+ (id)withValue:(double)value
{
  v3 = [[self alloc] initWithCGFloat:value];

  return v3;
}

- (DBGCGFloat)initWithCGFloat:(double)float
{
  v7.receiver = self;
  v7.super_class = DBGCGFloat;
  v4 = [(DBGCGFloat *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_backingTypeIsDouble = 1;
    [(DBGCGFloat *)v4 setCGFloatValue:float];
  }

  return v5;
}

- (id)objectValue
{
  [(DBGCGFloat *)self CGFloatValue];

  return [NSNumber numberWithDouble:?];
}

- (NSString)description
{
  objectValue = [(DBGCGFloat *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGCGFloat *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if (![format isEqualToString:@"CGf"])
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
    [valueCopy dbgCGFloatValue];
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
  [(DBGCGFloat *)self CGFloatValue];
  v2 = [NSNumber numberWithDouble:?];
  v3 = [v2 dbgStringForType:@"CGf" error:0];

  return v3;
}

@end