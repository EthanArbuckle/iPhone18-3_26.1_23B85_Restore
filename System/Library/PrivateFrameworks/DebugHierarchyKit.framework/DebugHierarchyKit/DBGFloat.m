@interface DBGFloat
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withValue:(float)a3;
- (DBGFloat)initWithFloat:(float)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGFloat

+ (id)withValue:(float)a3
{
  v4 = [a1 alloc];
  *&v5 = a3;
  v6 = [v4 initWithFloat:v5];

  return v6;
}

- (DBGFloat)initWithFloat:(float)a3
{
  v5.receiver = self;
  v5.super_class = DBGFloat;
  result = [(DBGFloat *)&v5 init];
  if (result)
  {
    result->_floatValue = a3;
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
  v2 = [(DBGFloat *)self objectValue];
  v3 = [v2 description];

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

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v8 = a3;
  if (![a4 isEqualToString:@"f"])
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 floatValue];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 dbgFloatValue];
  }

  else
  {
LABEL_6:
    v9 = 0.0;
    if (!v8 && a5)
    {
      *a5 = 0;
    }
  }

LABEL_9:
  v10 = [a1 withValue:v9];

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