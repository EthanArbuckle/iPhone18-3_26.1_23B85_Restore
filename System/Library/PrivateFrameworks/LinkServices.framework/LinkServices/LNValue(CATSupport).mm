@interface LNValue(CATSupport)
- (id)cat_definitionXML;
- (id)cat_variableXML;
@end

@implementation LNValue(CATSupport)

- (id)cat_variableXML
{
  v2 = [a1 valueType];
  if ([v2 isMemberOfClass:objc_opt_class()])
  {
    v3 = 0;
  }

  else
  {
    v4 = [a1 valueType];
    v3 = [v4 cat_keyPath];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = [a1 cat_parameterName];
  if (v3)
  {
    v7 = [@"." stringByAppendingString:v3];
  }

  else
  {
    v7 = &stru_1F0BBC770;
  }

  v8 = [a1 valueType];
  v9 = [v8 cat_keyPath];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F0BBC770;
  }

  v12 = [v5 stringWithFormat:@"<var name=%@%@ itemformat=%@ />", v6, v7, v11];

  if (v3)
  {
  }

  return v12;
}

- (id)cat_definitionXML
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [a1 cat_parameterName];
  v4 = [a1 valueType];
  v5 = [v4 cat_dialogType];
  v6 = [v2 stringWithFormat:@"<parameter name=%@ type=%@/>", v3, v5];

  return v6;
}

@end