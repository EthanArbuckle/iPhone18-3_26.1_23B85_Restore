@interface LNArrayValueType(CATSupport)
- (id)cat_dialogType;
- (id)cat_keyPath;
- (id)cat_value:()CATSupport;
@end

@implementation LNArrayValueType(CATSupport)

- (id)cat_keyPath
{
  v1 = [a1 memberValueType];
  v2 = [v1 cat_keyPath];

  return v2;
}

- (id)cat_value:()CATSupport
{
  v4 = [a3 value];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__LNArrayValueType_CATSupport__cat_value___block_invoke;
  v9[3] = &unk_1E74B0828;
  v9[4] = a1;
  v7 = [v6 if_map:v9];

  return v7;
}

- (id)cat_dialogType
{
  v1 = [a1 memberValueType];
  v2 = [v1 cat_dialogType];
  v3 = [v2 stringByAppendingString:@"[]"];

  return v3;
}

@end