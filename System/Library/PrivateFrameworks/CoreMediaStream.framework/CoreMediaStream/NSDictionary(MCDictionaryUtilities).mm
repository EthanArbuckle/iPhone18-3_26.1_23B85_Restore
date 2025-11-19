@interface NSDictionary(MCDictionaryUtilities)
- (void)MSMutableDeepCopyWithZone:()MCDictionaryUtilities;
@end

@implementation NSDictionary(MCDictionaryUtilities)

- (void)MSMutableDeepCopyWithZone:()MCDictionaryUtilities
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [a1 keyEnumerator];
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        v11 = [a1 objectForKey:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v12 = [v11 MSMutableDeepCopyWithZone:a3];
LABEL_9:
          v13 = v12;
          [v5 setObject:v12 forKey:v10];

          goto LABEL_10;
        }

        if ([v11 conformsToProtocol:&unk_2858D0650])
        {
          v12 = [v11 copyWithZone:a3];
          goto LABEL_9;
        }

        [v5 setObject:v11 forKey:v10];
LABEL_10:

        ++v9;
      }

      while (v7 != v9);
      v14 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      v7 = v14;
    }

    while (v14);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

@end