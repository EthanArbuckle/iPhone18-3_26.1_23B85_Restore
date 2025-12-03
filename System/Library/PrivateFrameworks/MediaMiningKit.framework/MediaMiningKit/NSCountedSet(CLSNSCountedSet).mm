@interface NSCountedSet(CLSNSCountedSet)
- (void)enumerateObjectsSortedByCountUsingBlock:()CLSNSCountedSet ascending:;
@end

@implementation NSCountedSet(CLSNSCountedSet)

- (void)enumerateObjectsSortedByCountUsingBlock:()CLSNSCountedSet ascending:
{
  v30[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  array = [MEMORY[0x277CBEB18] array];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __83__NSCountedSet_CLSNSCountedSet__enumerateObjectsSortedByCountUsingBlock_ascending___block_invoke;
  v26[3] = &unk_2788A7998;
  v8 = array;
  v27 = v8;
  selfCopy = self;
  [self enumerateObjectsUsingBlock:v26];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"count" ascending:a4];
  v30[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v20 = v8;
  v11 = [v8 sortedArrayUsingDescriptors:v10];

  v25 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v22 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v21 + 1) + 8 * v16);
      v18 = [v17 objectForKeyedSubscript:@"object"];
      v19 = [v17 objectForKeyedSubscript:@"count"];
      v6[2](v6, v18, &v25, [v19 unsignedIntegerValue]);

      if (v25)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end