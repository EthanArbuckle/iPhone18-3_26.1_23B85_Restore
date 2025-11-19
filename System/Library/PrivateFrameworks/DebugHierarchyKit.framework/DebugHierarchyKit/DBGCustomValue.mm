@interface DBGCustomValue
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withValue:(id)a3;
- (DBGCustomValue)initWithCustomValue:(id)a3;
- (NSString)description;
@end

@implementation DBGCustomValue

+ (id)withValue:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCustomValue:v4];

  return v5;
}

- (DBGCustomValue)initWithCustomValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DBGCustomValue;
  v6 = [(DBGCustomValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_customValue, a3);
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGCustomValue *)self customValue];
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