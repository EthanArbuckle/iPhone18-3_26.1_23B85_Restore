@interface LNValue(CATSupport)
- (id)cat_definitionXML;
- (id)cat_variableXML;
@end

@implementation LNValue(CATSupport)

- (id)cat_variableXML
{
  valueType = [self valueType];
  if ([valueType isMemberOfClass:objc_opt_class()])
  {
    cat_keyPath = 0;
  }

  else
  {
    valueType2 = [self valueType];
    cat_keyPath = [valueType2 cat_keyPath];
  }

  v5 = MEMORY[0x1E696AEC0];
  cat_parameterName = [self cat_parameterName];
  if (cat_keyPath)
  {
    v7 = [@"." stringByAppendingString:cat_keyPath];
  }

  else
  {
    v7 = &stru_1F0BBC770;
  }

  valueType3 = [self valueType];
  cat_keyPath2 = [valueType3 cat_keyPath];
  v10 = cat_keyPath2;
  if (cat_keyPath2)
  {
    v11 = cat_keyPath2;
  }

  else
  {
    v11 = &stru_1F0BBC770;
  }

  v12 = [v5 stringWithFormat:@"<var name=%@%@ itemformat=%@ />", cat_parameterName, v7, v11];

  if (cat_keyPath)
  {
  }

  return v12;
}

- (id)cat_definitionXML
{
  v2 = MEMORY[0x1E696AEC0];
  cat_parameterName = [self cat_parameterName];
  valueType = [self valueType];
  cat_dialogType = [valueType cat_dialogType];
  v6 = [v2 stringWithFormat:@"<parameter name=%@ type=%@/>", cat_parameterName, cat_dialogType];

  return v6;
}

@end