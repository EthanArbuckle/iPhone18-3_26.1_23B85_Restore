@interface DBGLongLong
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withValue:(int64_t)value;
- (DBGLongLong)initWithLongLong:(int64_t)long;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGLongLong

+ (id)withValue:(int64_t)value
{
  v3 = [[self alloc] initWithLongLong:value];

  return v3;
}

- (DBGLongLong)initWithLongLong:(int64_t)long
{
  v5.receiver = self;
  v5.super_class = DBGLongLong;
  result = [(DBGLongLong *)&v5 init];
  if (result)
  {
    result->_longLongValue = long;
  }

  return result;
}

- (id)objectValue
{
  longLongValue = [(DBGLongLong *)self longLongValue];

  return [NSNumber numberWithLongLong:longLongValue];
}

- (NSString)description
{
  objectValue = [(DBGLongLong *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGLongLong *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"ll"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      longLongValue = [valueCopy longLongValue];
LABEL_6:
      v10 = longLongValue;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      longLongValue = [valueCopy dbgLongLongValue];
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
  v2 = [NSNumber numberWithLongLong:[(DBGLongLong *)self longLongValue]];
  v3 = [v2 dbgStringForType:@"ll" error:0];

  return v3;
}

@end