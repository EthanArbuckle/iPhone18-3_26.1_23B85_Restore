@interface CCRepeatedFieldValue
+ (id)_new;
- (BOOL)isEqual:(id)equal;
- (CCRepeatedFieldValue)initWithMutableArray:(id)array;
- (id)_init;
@end

@implementation CCRepeatedFieldValue

+ (id)_new
{
  v2 = objc_alloc(objc_opt_class());

  return [v2 _init];
}

- (id)_init
{
  v3 = objc_opt_new();
  v4 = [(CCRepeatedFieldValue *)self initWithMutableArray:v3];

  return v4;
}

- (CCRepeatedFieldValue)initWithMutableArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = CCRepeatedFieldValue;
  v6 = [(CCRepeatedFieldValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_values, array);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    values = [(CCRepeatedFieldValue *)self values];
    values2 = [v5 values];
    if (values == values2)
    {
      v10 = 1;
    }

    else
    {
      values3 = [(CCRepeatedFieldValue *)self values];
      values4 = [v5 values];
      v10 = [values3 isEqualToArray:values4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end