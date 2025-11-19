@interface DBGInteger
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withValue:(int64_t)a3;
- (DBGInteger)initWithInteger:(int64_t)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGInteger

+ (id)withValue:(int64_t)a3
{
  v3 = [[a1 alloc] initWithInteger:a3];

  return v3;
}

- (DBGInteger)initWithInteger:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = DBGInteger;
  result = [(DBGInteger *)&v5 init];
  if (result)
  {
    result->_integerValue = a3;
  }

  return result;
}

- (id)objectValue
{
  v2 = [(DBGInteger *)self integerValue];

  return [NSNumber numberWithInteger:v2];
}

- (NSString)description
{
  v2 = [(DBGInteger *)self objectValue];
  v3 = [v2 description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGInteger *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v8 = a3;
  if ([a4 isEqualToString:@"integer"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 integerValue];
LABEL_6:
      v10 = v9;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 dbgIntegerValue];
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
  v2 = [NSNumber numberWithInteger:[(DBGInteger *)self integerValue]];
  v3 = [v2 dbgStringForType:@"integer" error:0];

  return v3;
}

@end