@interface NSArray(StoreEnumeration)
- (uint64_t)mf_enumerateByStoreUsingBlock:()StoreEnumeration;
@end

@implementation NSArray(StoreEnumeration)

- (uint64_t)mf_enumerateByStoreUsingBlock:()StoreEnumeration
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [(NSArray(StoreEnumeration) *)a2 mf_enumerateByStoreUsingBlock:a1];
  }

  v5 = [a1 mf_dictionaryWithMessagesSortedByStore];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 allKeys];
  result = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(a3 + 16))(a3, *(*(&v12 + 1) + 8 * v10), [v5 objectForKeyedSubscript:*(*(&v12 + 1) + 8 * v10)]);
        ++v10;
      }

      while (v8 != v10);
      result = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v8 = result;
    }

    while (result);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

@end