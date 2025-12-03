@interface DBGEnumValue
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withValue:(id)value;
- (DBGEnumValue)initWithCustomValue:(id)value;
- (NSString)debugDescription;
- (NSString)description;
- (id)stringValue;
- (int64_t)integerValue;
- (unint64_t)unsignedIntegerValue;
- (void)setIntegerValue:(int64_t)value;
- (void)setStringValue:(id)value;
- (void)setUnsignedIntegerValue:(unint64_t)value;
@end

@implementation DBGEnumValue

+ (id)withValue:(id)value
{
  valueCopy = value;
  v5 = [[self alloc] initWithCustomValue:valueCopy];

  return v5;
}

- (DBGEnumValue)initWithCustomValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = DBGEnumValue;
  v6 = [(DBGEnumValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enumValue, value);
  }

  return v7;
}

- (int64_t)integerValue
{
  enumValue = [(DBGEnumValue *)self enumValue];
  if (enumValue)
  {
    enumValue2 = [(DBGEnumValue *)self enumValue];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  enumValue3 = [(DBGEnumValue *)self enumValue];
  integerValue = [enumValue3 integerValue];

  return integerValue;
}

- (void)setIntegerValue:(int64_t)value
{
  enumValue = [(DBGEnumValue *)self enumValue];
  if (enumValue)
  {
    enumValue2 = [(DBGEnumValue *)self enumValue];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v7 = [NSNumber numberWithInteger:value];
  [(DBGEnumValue *)self setEnumValue:v7];
}

- (unint64_t)unsignedIntegerValue
{
  enumValue = [(DBGEnumValue *)self enumValue];
  if (enumValue)
  {
    enumValue2 = [(DBGEnumValue *)self enumValue];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  enumValue3 = [(DBGEnumValue *)self enumValue];
  unsignedIntegerValue = [enumValue3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setUnsignedIntegerValue:(unint64_t)value
{
  enumValue = [(DBGEnumValue *)self enumValue];
  if (enumValue)
  {
    enumValue2 = [(DBGEnumValue *)self enumValue];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  v7 = [NSNumber numberWithUnsignedInteger:value];
  [(DBGEnumValue *)self setEnumValue:v7];
}

- (id)stringValue
{
  enumValue = [(DBGEnumValue *)self enumValue];
  if (enumValue)
  {
    enumValue2 = [(DBGEnumValue *)self enumValue];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  return [(DBGEnumValue *)self enumValue];
}

- (void)setStringValue:(id)value
{
  valueCopy = value;
  enumValue = [(DBGEnumValue *)self enumValue];
  if (enumValue)
  {
    enumValue2 = [(DBGEnumValue *)self enumValue];
    objc_opt_class();
    objc_opt_isKindOfClass();
  }

  [(DBGEnumValue *)self setEnumValue:valueCopy];
}

- (NSString)description
{
  objectValue = [(DBGEnumValue *)self objectValue];
  v3 = [objectValue description];

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

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  v7 = DBGDecodeValueFromJSONCompatibleValue();
  v8 = 0;
  if (v8)
  {

    if (error)
    {
      v9 = v8;
      v7 = 0;
      *error = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = [self withValue:v7];

  return v10;
}

@end