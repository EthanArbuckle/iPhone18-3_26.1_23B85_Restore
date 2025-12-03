@interface CBDictSerializer
+ (id)serialize:(id)serialize;
@end

@implementation CBDictSerializer

+ (id)serialize:(id)serialize
{
  v20 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v17 = a2;
  serializeCopy = serialize;
  codingKeys = [serialize codingKeys];
  v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(codingKeys, "count")}];
  memset(__b, 0, sizeof(__b));
  obj = codingKeys;
  v11 = [codingKeys countByEnumeratingWithState:__b objects:v19 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v13 = 0;
      v13 = *(__b[1] + 8 * v8);
      v3 = [serializeCopy valueForKey:{objc_msgSend(codingKeys, "objectForKeyedSubscript:", v13)}];
      [v14 setObject:v3 forKeyedSubscript:v13];
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  v5 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v14];
  *MEMORY[0x1E69E9840];
  return v5;
}

@end