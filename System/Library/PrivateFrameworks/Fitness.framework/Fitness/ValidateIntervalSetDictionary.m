@interface ValidateIntervalSetDictionary
@end

@implementation ValidateIntervalSetDictionary

BOOL ___ValidateIntervalSetDictionary_block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"intervalDefinitions"];
  v3 = v2 != 0;

  return v3;
}

BOOL ___ValidateIntervalSetDictionary_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"repeatCount"];
  v3 = v2 != 0;

  return v3;
}

BOOL ___ValidateIntervalSetDictionary_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"setType"];
  v3 = v2 != 0;

  return v3;
}

uint64_t ___ValidateIntervalSetDictionary_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"setType"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t ___ValidateIntervalSetDictionary_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"repeatCount"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t ___ValidateIntervalSetDictionary_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"intervalDefinitions"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

BOOL ___ValidateIntervalSetDictionary_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"setType"];
  v3 = ([v2 integerValue] - 1) < 2;

  return v3;
}

uint64_t ___ValidateIntervalSetDictionary_block_invoke_8(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [a2 objectForKeyedSubscript:{@"intervalDefinitions", 0}];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

@end