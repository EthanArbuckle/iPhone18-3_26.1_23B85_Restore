@interface DBGUnsignedLong
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withValue:(unint64_t)a3;
- (DBGUnsignedLong)initWithUnsignedLong:(unint64_t)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGUnsignedLong

+ (id)withValue:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithUnsignedLong:a3];

  return v3;
}

- (DBGUnsignedLong)initWithUnsignedLong:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = DBGUnsignedLong;
  result = [(DBGUnsignedLong *)&v5 init];
  if (result)
  {
    result->_unsignedLongValue = a3;
  }

  return result;
}

- (id)objectValue
{
  v2 = [(DBGUnsignedLong *)self unsignedLongValue];

  return [NSNumber numberWithUnsignedLong:v2];
}

- (NSString)description
{
  v2 = [(DBGUnsignedLong *)self objectValue];
  v3 = [v2 description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGUnsignedLong *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v8 = a3;
  if ([a4 isEqualToString:@"ul"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 unsignedLongValue];
LABEL_6:
      v10 = v9;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 dbgUnsignedLongValue];
      goto LABEL_6;
    }
  }

  v10 = 0;
  if (!v8 && a5)
  {
    v10 = 0;
    *a5 = 0;
  }

LABEL_10:
  v11 = [a1 withValue:v10];

  return v11;
}

- (id)JSONCompatibleRepresentation
{
  v2 = [NSNumber numberWithUnsignedLong:[(DBGUnsignedLong *)self unsignedLongValue]];
  v3 = [v2 dbgStringForType:@"ul" error:0];

  return v3;
}

@end