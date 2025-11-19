@interface CBDictSerializer
+ (id)serialize:(id)a3;
@end

@implementation CBDictSerializer

+ (id)serialize:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 codingKeys];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        [v5 setObject:objc_msgSend(a3 forKeyedSubscript:{"valueForKey:", objc_msgSend(v4, "objectForKeyedSubscript:", *(*(&v12 + 1) + 8 * v9))), *(*(&v12 + 1) + 8 * v9)}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  result = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v5];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

@end