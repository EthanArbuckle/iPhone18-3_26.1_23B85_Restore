@interface DBGLong
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withValue:(int64_t)value;
- (DBGLong)initWithLong:(int64_t)long;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGLong

+ (id)withValue:(int64_t)value
{
  v3 = [[self alloc] initWithLong:value];

  return v3;
}

- (DBGLong)initWithLong:(int64_t)long
{
  v5.receiver = self;
  v5.super_class = DBGLong;
  result = [(DBGLong *)&v5 init];
  if (result)
  {
    result->_longValue = long;
  }

  return result;
}

- (id)objectValue
{
  longValue = [(DBGLong *)self longValue];

  return [NSNumber numberWithLong:longValue];
}

- (NSString)description
{
  objectValue = [(DBGLong *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGLong *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"l"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      longValue = [valueCopy longValue];
LABEL_6:
      v10 = longValue;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      longValue = [valueCopy dbgLongValue];
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
  v2 = [NSNumber numberWithLong:[(DBGLong *)self longValue]];
  v3 = [v2 dbgStringForType:@"l" error:0];

  return v3;
}

@end