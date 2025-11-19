@interface NSDictionary(GKCollectionUtils)
+ (id)_gkDictionaryWithFormEncodedString:()GKCollectionUtils;
- (double)doubleValueFromKey:()GKCollectionUtils defaultValue:;
- (id)_gkAddEntriesFrom:()GKCollectionUtils;
- (id)_gkDictionaryByRemovingObjectForKey:()GKCollectionUtils;
- (id)_gkDictionaryByRemovingObjectsForKeys:()GKCollectionUtils;
- (id)_gkDictionaryWithValue:()GKCollectionUtils forKey:;
- (id)_gkSubDictionaryWithKeys:()GKCollectionUtils;
- (id)_gkSubDictionaryWithKeys:()GKCollectionUtils mappedToNewKeys:;
- (id)_gkValuesForKeys:()GKCollectionUtils;
- (id)gkStringValueFromKey:()GKCollectionUtils;
- (id)numberValueFromKey:()GKCollectionUtils;
- (uint64_t)BOOLValueFromKey:()GKCollectionUtils defaultValue:;
- (uint64_t)integerValueFromKey:()GKCollectionUtils defaultValue:;
- (uint64_t)unsignedIntegerValueFromKey:()GKCollectionUtils defaultValue:;
@end

@implementation NSDictionary(GKCollectionUtils)

- (id)_gkDictionaryByRemovingObjectsForKeys:()GKCollectionUtils
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 removeObjectsForKeys:v4];

  return v5;
}

- (id)_gkDictionaryByRemovingObjectForKey:()GKCollectionUtils
{
  v4 = a3;
  v5 = [a1 mutableCopy];
  [v5 removeObjectForKey:v4];

  return v5;
}

- (id)_gkSubDictionaryWithKeys:()GKCollectionUtils
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [a1 objectForKey:{v11, v15}];
        if (v12)
        {
          [v5 setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_gkSubDictionaryWithKeys:()GKCollectionUtils mappedToNewKeys:
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 count];
  if (v8 != [v6 count])
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKCollectionUtils.m"];
    v12 = [v11 lastPathComponent];
    v13 = [v9 stringWithFormat:@"%@ ([newKeys count] == [keys count])\n[%s (%s:%d)]", v10, "-[NSDictionary(GKCollectionUtils) _gkSubDictionaryWithKeys:mappedToNewKeys:]", objc_msgSend(v12, "UTF8String"), 346];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v13}];
  }

  v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__NSDictionary_GKCollectionUtils___gkSubDictionaryWithKeys_mappedToNewKeys___block_invoke;
  v20[3] = &unk_2785DCA00;
  v20[4] = a1;
  v15 = v14;
  v21 = v15;
  v22 = v7;
  v16 = v7;
  [v6 enumerateObjectsUsingBlock:v20];
  v17 = v22;
  v18 = v15;

  return v15;
}

+ (id)_gkDictionaryWithFormEncodedString:()GKCollectionUtils
{
  if (a3)
  {
    v4 = MEMORY[0x277CBEB38];
    v5 = a3;
    v6 = [v4 dictionary];
    [v6 _gkAddEntriesFromFormEncodedString:v5];

    v7 = [a1 dictionaryWithDictionary:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_gkValuesForKeys:()GKCollectionUtils
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 objectForKey:{*(*(&v14 + 1) + 8 * i), v14}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_gkDictionaryWithValue:()GKCollectionUtils forKey:
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [a1 mutableCopy];
    [v8 setObject:v7 forKey:v6];

    v9 = [v8 copy];
  }

  else
  {
    v9 = a1;
  }

  return v9;
}

- (id)_gkAddEntriesFrom:()GKCollectionUtils
{
  if (a3)
  {
    v4 = MEMORY[0x277CBEB38];
    v5 = a3;
    v6 = [v4 dictionaryWithDictionary:a1];
    [v6 addEntriesFromDictionary:v5];

    v7 = [v6 copy];
  }

  else
  {
    v7 = a1;
  }

  return v7;
}

- (uint64_t)BOOLValueFromKey:()GKCollectionUtils defaultValue:
{
  v5 = [a1 numberValueFromKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (id)gkStringValueFromKey:()GKCollectionUtils
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)integerValueFromKey:()GKCollectionUtils defaultValue:
{
  v5 = [a1 numberValueFromKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 integerValue];
  }

  return a4;
}

- (uint64_t)unsignedIntegerValueFromKey:()GKCollectionUtils defaultValue:
{
  v5 = [a1 numberValueFromKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 unsignedIntegerValue];
  }

  return a4;
}

- (double)doubleValueFromKey:()GKCollectionUtils defaultValue:
{
  v3 = [a1 numberValueFromKey:?];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    a2 = v5;
  }

  return a2;
}

- (id)numberValueFromKey:()GKCollectionUtils
{
  v1 = [a1 objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end