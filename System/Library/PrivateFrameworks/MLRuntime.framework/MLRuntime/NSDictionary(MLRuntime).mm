@interface NSDictionary(MLRuntime)
- (double)mlr_doubleValueForKey:()MLRuntime defaultValue:;
- (float)mlr_floatValueForKey:()MLRuntime defaultValue:;
- (id)_numberValueForKey:()MLRuntime;
- (id)mlr_dictionaryValueForKey:()MLRuntime;
- (uint64_t)mlr_BOOLValueForKey:()MLRuntime defaultValue:;
- (uint64_t)mlr_integerValueForKey:()MLRuntime defaultValue:;
- (uint64_t)mlr_unsignedIntegerValueForKey:()MLRuntime defaultValue:;
- (void)mlr_stringValueForKey:()MLRuntime defaultValue:;
@end

@implementation NSDictionary(MLRuntime)

- (id)_numberValueForKey:()MLRuntime
{
  v4 = a3;
  v5 = [self objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = [self objectForKeyedSubscript:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [self objectForKeyedSubscript:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (float)mlr_floatValueForKey:()MLRuntime defaultValue:
{
  v3 = [self _numberValueForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    a2 = v5;
  }

  return a2;
}

- (double)mlr_doubleValueForKey:()MLRuntime defaultValue:
{
  v3 = [self _numberValueForKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    a2 = v5;
  }

  return a2;
}

- (uint64_t)mlr_BOOLValueForKey:()MLRuntime defaultValue:
{
  v5 = [self _numberValueForKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (uint64_t)mlr_integerValueForKey:()MLRuntime defaultValue:
{
  v5 = [self _numberValueForKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 integerValue];
  }

  return a4;
}

- (uint64_t)mlr_unsignedIntegerValueForKey:()MLRuntime defaultValue:
{
  v5 = [self _numberValueForKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 unsignedIntegerValue];
  }

  return a4;
}

- (void)mlr_stringValueForKey:()MLRuntime defaultValue:
{
  v6 = a3;
  v7 = a4;
  v8 = [self objectForKeyedSubscript:v6];
  if (v8)
  {
    v9 = [self objectForKeyedSubscript:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [self objectForKeyedSubscript:v6];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  return v11;
}

- (id)mlr_dictionaryValueForKey:()MLRuntime
{
  v4 = a3;
  v5 = [self objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = [self objectForKeyedSubscript:v4];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [self objectForKeyedSubscript:v4];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end