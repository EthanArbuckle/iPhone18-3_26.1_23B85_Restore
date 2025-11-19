@interface CRKJSONConverter
+ (id)JSONArrayForArray:(id)a3;
+ (id)JSONDictionaryForDictionary:(id)a3;
+ (id)bestEffortJSONObjectForObject:(id)a3;
+ (id)stringForDate:(id)a3;
+ (id)stringForObject:(id)a3;
@end

@implementation CRKJSONConverter

+ (id)JSONArrayForArray:(id)a3
{
  v3 = [a1 bestEffortJSONObjectForObject:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[CRKJSONConverter JSONArrayForArray:];
  }

  return v3;
}

+ (id)JSONDictionaryForDictionary:(id)a3
{
  v3 = [a1 bestEffortJSONObjectForObject:a3];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[CRKJSONConverter JSONDictionaryForDictionary:];
  }

  return v3;
}

+ (id)bestEffortJSONObjectForObject:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v4] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
LABEL_5:
    v6 = v5;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [v4 dictionaryValue];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v5 = [a1 stringForObject:v4];
            goto LABEL_5;
          }

          v8 = v4;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            +[CRKJSONConverter bestEffortJSONObjectForObject:];
          }

          v10 = [v8 allObjects];
          v13 = [a1 JSONArrayForArray:v10];
          v6 = [v13 sortedArrayUsingSelector:sel_compare_];

          goto LABEL_13;
        }

        v8 = v4;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          +[CRKJSONConverter bestEffortJSONObjectForObject:];
        }

        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __50__CRKJSONConverter_bestEffortJSONObjectForObject___block_invoke_2;
        v14[3] = &__block_descriptor_40_e8__16__0_8l;
        v14[4] = a1;
        v12 = [v8 crk_mapUsingBlock:v14];
LABEL_19:
        v6 = v12;
        goto LABEL_20;
      }

      v11 = [v4 dictionaryRepresentation];
    }

    v8 = v11;
    v12 = [a1 bestEffortJSONObjectForObject:v11];
    goto LABEL_19;
  }

  v8 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[CRKJSONConverter bestEffortJSONObjectForObject:];
  }

  v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __50__CRKJSONConverter_bestEffortJSONObjectForObject___block_invoke;
  v15[3] = &unk_278DC3530;
  v16 = v9;
  v17 = a1;
  v10 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v15];
  v6 = [v10 copy];

LABEL_13:
LABEL_20:

LABEL_6:

  return v6;
}

void __50__CRKJSONConverter_bestEffortJSONObjectForObject___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v9 = [v5 bestEffortJSONObjectForObject:a3];
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) stringForObject:v6];

  [v7 setObject:v9 forKeyedSubscript:v8];
}

+ (id)stringForObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
LABEL_3:
    v6 = v5;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      +[CRKJSONConverter stringForObject:];
    }

    v8 = [a1 stringForDate:v7];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (objc_opt_respondsToSelector())
      {
        [v4 stringValue];
      }

      else
      {
        [v4 description];
      }
      v5 = ;
      goto LABEL_3;
    }

    v7 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      +[CRKJSONConverter stringForObject:];
    }

    v8 = [v7 base64EncodedStringWithOptions:0];
  }

  v6 = v8;

LABEL_13:

  return v6;
}

+ (id)stringForDate:(id)a3
{
  v3 = MEMORY[0x277CBEBB0];
  v4 = a3;
  v5 = [v3 timeZoneWithAbbreviation:@"GMT"];
  v6 = [MEMORY[0x277CCAA68] stringFromDate:v4 timeZone:v5 formatOptions:1907];

  return v6;
}

+ (void)JSONArrayForArray:.cold.1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CRKJSONConverter JSONArrayForArray:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

+ (void)JSONDictionaryForDictionary:.cold.1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CRKJSONConverter JSONDictionaryForDictionary:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

+ (void)bestEffortJSONObjectForObject:.cold.1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CRKJSONConverter bestEffortJSONObjectForObject:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

+ (void)bestEffortJSONObjectForObject:.cold.2()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CRKJSONConverter bestEffortJSONObjectForObject:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

+ (void)bestEffortJSONObjectForObject:.cold.3()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CRKJSONConverter bestEffortJSONObjectForObject:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

+ (void)stringForObject:.cold.1()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CRKJSONConverter stringForObject:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

+ (void)stringForObject:.cold.2()
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[CRKJSONConverter stringForObject:]"];
  v2 = objc_opt_class();
  NSStringFromClass(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_1_1();
  v4 = NSStringFromClass(v3);
  [OUTLINED_FUNCTION_0_2(v4 v5];
}

@end