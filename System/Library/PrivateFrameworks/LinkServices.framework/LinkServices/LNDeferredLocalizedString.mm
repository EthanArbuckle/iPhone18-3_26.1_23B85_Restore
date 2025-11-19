@interface LNDeferredLocalizedString
@end

@implementation LNDeferredLocalizedString

void __57__LNDeferredLocalizedString_CATSupport__parametersForCAT__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 valueType];
  v4 = [v7 cat_value:v3];
  v5 = *(a1 + 32);
  v6 = [v3 cat_parameterName];

  [v5 setObject:v4 forKeyedSubscript:v6];
}

void __61__LNDeferredLocalizedString_CATSupport__parameterDefinitions__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 cat_definitionXML];
  [v2 addObject:v3];
}

void __67__LNDeferredLocalizedString_CATSupport__localizedKeyWithParameters__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 arguments];
  v10 = [v5 objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];

  v6 = [v10 cat_variableXML];
  v7 = [v4 range];
  v9 = v8;

  [*(a1 + 40) replaceCharactersInRange:*(*(*(a1 + 56) + 8) + 24) + v7 withString:{v9, v6}];
  *(*(*(a1 + 56) + 8) + 24) += [v6 length] - v9;
  ++*(*(*(a1 + 48) + 8) + 24);
}

uint64_t __67__LNDeferredLocalizedString_CATSupport__localizedKeyWithParameters__block_invoke()
{
  localizedKeyWithParameters_regularExpression = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(\\%[\\@ldfu0-9.]+)" options:0 error:0];

  return MEMORY[0x1EEE66BB8]();
}

@end