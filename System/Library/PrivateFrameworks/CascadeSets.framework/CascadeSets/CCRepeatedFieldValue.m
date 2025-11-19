@interface CCRepeatedFieldValue
+ (id)_new;
- (BOOL)isEqual:(id)a3;
- (CCRepeatedFieldValue)initWithMutableArray:(id)a3;
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

- (CCRepeatedFieldValue)initWithMutableArray:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CCRepeatedFieldValue;
  v6 = [(CCRepeatedFieldValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_values, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CCRepeatedFieldValue *)self values];
    v7 = [v5 values];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(CCRepeatedFieldValue *)self values];
      v9 = [v5 values];
      v10 = [v8 isEqualToArray:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end