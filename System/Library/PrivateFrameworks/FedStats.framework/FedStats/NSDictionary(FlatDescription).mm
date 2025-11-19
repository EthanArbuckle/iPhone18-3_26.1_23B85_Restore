@interface NSDictionary(FlatDescription)
- (id)flatDescription;
@end

@implementation NSDictionary(FlatDescription)

- (id)flatDescription
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v3 objectForKey:v8];
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", v8, v9, v16];
        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = MEMORY[0x277CCACA8];
  v12 = [v2 componentsJoinedByString:{@", "}];
  v13 = [v11 stringWithFormat:@"{%@}", v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end