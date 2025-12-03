@interface DBGCustomValue
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withValue:(id)value;
- (DBGCustomValue)initWithCustomValue:(id)value;
- (NSString)description;
@end

@implementation DBGCustomValue

+ (id)withValue:(id)value
{
  valueCopy = value;
  v5 = [[self alloc] initWithCustomValue:valueCopy];

  return v5;
}

- (DBGCustomValue)initWithCustomValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = DBGCustomValue;
  v6 = [(DBGCustomValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customValue, value);
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  customValue = [(DBGCustomValue *)self customValue];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, customValue];

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