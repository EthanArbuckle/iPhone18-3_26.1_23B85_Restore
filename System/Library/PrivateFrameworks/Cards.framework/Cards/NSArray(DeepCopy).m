@interface NSArray(DeepCopy)
- (id)_deepCopy;
@end

@implementation NSArray(DeepCopy)

- (id)_deepCopy
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 conformsToProtocol:{&unk_2855FC6C0, v13}])
        {
          v9 = [v8 copy];
          if (v9)
          {
            [v2 addObject:v9];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = [v2 copy];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end