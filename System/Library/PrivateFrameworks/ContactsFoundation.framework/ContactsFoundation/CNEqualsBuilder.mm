@interface CNEqualsBuilder
+ (BOOL)evaluateBuilderBlock:(id)a3 remainingBlocks:(char *)a4;
+ (BOOL)isObject:(id)a3 equalToOther:(id)a4;
+ (BOOL)isObject:(id)a3 equalToOther:(id)a4 withBlocks:(id)a5;
+ (BOOL)isObject:(id)a3 kindOfClass:(Class)a4 andEqualToObject:(id)a5 withBlocks:(id)a6;
+ (BOOL)isObject:(id)a3 memberOfClass:(Class)a4 andEqualToObject:(id)a5 withBlocks:(id)a6;
+ (BOOL)isObject:(id)a3 memberOfSameClassAndEqualTo:(id)a4 withBlocks:(id)a5;
+ (BOOL)isString:(id)a3 localizedCaseInsensitiveEqualToOther:(id)a4;
@end

@implementation CNEqualsBuilder

+ (BOOL)isObject:(id)a3 equalToOther:(id)a4 withBlocks:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [a1 evaluateBuilderBlock:v10 remainingBlocks:&v13];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (BOOL)isObject:(id)a3 kindOfClass:(Class)a4 andEqualToObject:(id)a5 withBlocks:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  if (v10 == v9)
  {
    v12 = 1;
  }

  else if (objc_opt_isKindOfClass())
  {
    v12 = [a1 evaluateBuilderBlock:v11 remainingBlocks:&v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)isObject:(id)a3 memberOfClass:(Class)a4 andEqualToObject:(id)a5 withBlocks:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v11 == v10)
  {
    v13 = 1;
  }

  else if ([v10 isMemberOfClass:a4])
  {
    v13 = [a1 evaluateBuilderBlock:v12 remainingBlocks:&v15];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)isObject:(id)a3 memberOfSameClassAndEqualTo:(id)a4 withBlocks:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 == v8)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [a1 evaluateBuilderBlock:v10 remainingBlocks:&v13];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (BOOL)evaluateBuilderBlock:(id)a3 remainingBlocks:(char *)a4
{
  v5 = a3;
  v13 = a4;
  v6 = _Block_copy(v5);
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = v7;
      v9 = v7[2](v7);
      v10 = v13;
      v13 += 8;
      v7 = _Block_copy(*v10);

      if (v9)
      {
        v11 = v7 == 0;
      }

      else
      {
        v11 = 1;
      }
    }

    while (!v11);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

+ (BOOL)isObject:(id)a3 equalToOther:(id)a4
{
  if (a3 | a4)
  {
    return [a3 isEqual:a4];
  }

  else
  {
    return 1;
  }
}

+ (BOOL)isString:(id)a3 localizedCaseInsensitiveEqualToOther:(id)a4
{
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_1EF441028;
  }

  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = &stru_1EF441028;
  }

  return [(__CFString *)v4 localizedCaseInsensitiveCompare:v5]== 0;
}

@end