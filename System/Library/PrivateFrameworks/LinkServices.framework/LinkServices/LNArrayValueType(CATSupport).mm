@interface LNArrayValueType(CATSupport)
- (id)cat_dialogType;
- (id)cat_keyPath;
- (id)cat_value:()CATSupport;
@end

@implementation LNArrayValueType(CATSupport)

- (id)cat_keyPath
{
  memberValueType = [self memberValueType];
  cat_keyPath = [memberValueType cat_keyPath];

  return cat_keyPath;
}

- (id)cat_value:()CATSupport
{
  value = [a3 value];
  if (value)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = value;
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
  v9[4] = self;
  v7 = [v6 if_map:v9];

  return v7;
}

- (id)cat_dialogType
{
  memberValueType = [self memberValueType];
  cat_dialogType = [memberValueType cat_dialogType];
  v3 = [cat_dialogType stringByAppendingString:@"[]"];

  return v3;
}

@end