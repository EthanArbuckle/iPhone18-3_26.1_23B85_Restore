@interface MTReflectUtil
+ (BOOL)objectAsBool:(id)a3;
+ (id)mergeAndCleanDictionaries:(id)a3;
+ (id)objectAsArray:(id)a3;
+ (id)objectAsDictionary:(id)a3;
+ (id)objectAsString:(id)a3;
+ (id)removeNullValuesFromDictionary:(id)a3;
@end

@implementation MTReflectUtil

+ (BOOL)objectAsBool:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = v3 != 0;
  }

  return v4;
}

+ (id)objectAsString:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_286A3A510;
  }

  v5 = v4;

  return v4;
}

+ (id)objectAsArray:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

+ (id)objectAsDictionary:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = v4;

  return v4;
}

+ (id)mergeAndCleanDictionaries:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [MTReflectUtil removeNullValuesFromDictionary:v10, v14];
          [v4 addEntriesFromDictionary:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)removeNullValuesFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 keysOfEntriesPassingTest:&__block_literal_global_1];
  v5 = [v4 allObjects];
  v6 = [v3 dictionaryWithValuesForKeys:v5];

  return v6;
}

uint64_t __48__MTReflectUtil_removeNullValuesFromDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CBEB68];
  v4 = a3;
  v5 = [v3 null];
  v6 = [v4 isEqual:v5];

  return v6 ^ 1u;
}

@end