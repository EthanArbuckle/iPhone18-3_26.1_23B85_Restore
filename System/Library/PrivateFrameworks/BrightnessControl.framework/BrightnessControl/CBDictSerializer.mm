@interface CBDictSerializer
+ (id)serialize:(id)serialize;
@end

@implementation CBDictSerializer

+ (id)serialize:(id)serialize
{
  v17 = *MEMORY[0x277D85DE8];
  codingKeys = [serialize codingKeys];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(codingKeys, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [codingKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(codingKeys);
        }

        [v5 setObject:objc_msgSend(serialize forKeyedSubscript:{"valueForKey:", objc_msgSend(codingKeys, "objectForKeyedSubscript:", *(*(&v12 + 1) + 8 * v9))), *(*(&v12 + 1) + 8 * v9)}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [codingKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  result = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v5];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

@end