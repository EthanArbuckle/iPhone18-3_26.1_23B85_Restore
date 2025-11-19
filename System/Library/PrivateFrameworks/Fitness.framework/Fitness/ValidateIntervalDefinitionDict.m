@interface ValidateIntervalDefinitionDict
@end

@implementation ValidateIntervalDefinitionDict

BOOL ___ValidateIntervalDefinitionDict_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"type"];
  v3 = v2 != 0;

  return v3;
}

BOOL ___ValidateIntervalDefinitionDict_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"quantity"];
  v3 = v2 != 0;

  return v3;
}

uint64_t ___ValidateIntervalDefinitionDict_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"quantity"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t ___ValidateIntervalDefinitionDict_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"type"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL ___ValidateIntervalDefinitionDict_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"type"];
  v3 = ([v2 integerValue] - 1) < 2;

  return v3;
}

@end