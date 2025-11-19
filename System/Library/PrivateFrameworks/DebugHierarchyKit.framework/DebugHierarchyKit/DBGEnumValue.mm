@interface DBGEnumValue
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withValue:(id)a3;
- (DBGEnumValue)initWithCustomValue:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)stringValue;
- (int64_t)integerValue;
- (unint64_t)unsignedIntegerValue;
- (void)setIntegerValue:(int64_t)a3;
- (void)setStringValue:(id)a3;
- (void)setUnsignedIntegerValue:(unint64_t)a3;
@end

@implementation DBGEnumValue

+ (id)withValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCustomValue:v4];

  return v5;
}

- (DBGEnumValue)initWithCustomValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DBGEnumValue;
  v6 = [(DBGEnumValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enumValue, a3);
  }

  return v7;
}

- (int64_t)integerValue
{
  v3 = [(DBGEnumValue *)self enumValue];
  if (v3)
  {
    v4 = [(DBGEnumValue *)self enumValue];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v5 = [(DBGEnumValue *)self enumValue];
  v6 = [v5 integerValue];

  return v6;
}

- (void)setIntegerValue:(int64_t)a3
{
  v5 = [(DBGEnumValue *)self enumValue];
  if (v5)
  {
    v6 = [(DBGEnumValue *)self enumValue];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v7 = [NSNumber numberWithInteger:a3];
  [(DBGEnumValue *)self setEnumValue:v7];
}

- (unint64_t)unsignedIntegerValue
{
  v3 = [(DBGEnumValue *)self enumValue];
  if (v3)
  {
    v4 = [(DBGEnumValue *)self enumValue];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v5 = [(DBGEnumValue *)self enumValue];
  v6 = [v5 unsignedIntegerValue];

  return v6;
}

- (void)setUnsignedIntegerValue:(unint64_t)a3
{
  v5 = [(DBGEnumValue *)self enumValue];
  if (v5)
  {
    v6 = [(DBGEnumValue *)self enumValue];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v7 = [NSNumber numberWithUnsignedInteger:a3];
  [(DBGEnumValue *)self setEnumValue:v7];
}

- (id)stringValue
{
  v3 = [(DBGEnumValue *)self enumValue];
  if (v3)
  {
    v4 = [(DBGEnumValue *)self enumValue];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  return [(DBGEnumValue *)self enumValue];
}

- (void)setStringValue:(id)a3
{
  v6 = a3;
  v4 = [(DBGEnumValue *)self enumValue];
  if (v4)
  {
    v5 = [(DBGEnumValue *)self enumValue];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  [(DBGEnumValue *)self setEnumValue:v6];
}

- (NSString)description
{
  v2 = [(DBGEnumValue *)self objectValue];
  v3 = [v2 description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGEnumValue *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v7 = DBGDecodeValueFromJSONCompatibleValue();
  v8 = 0;
  if (v8)
  {

    if (a5)
    {
      v9 = v8;
      v7 = 0;
      *a5 = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = [a1 withValue:v7];

  return v10;
}

@end