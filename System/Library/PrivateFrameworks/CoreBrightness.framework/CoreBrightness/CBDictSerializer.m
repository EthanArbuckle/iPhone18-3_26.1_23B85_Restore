@interface CBDictSerializer
+ (id)serialize:(id)a3;
@end

@implementation CBDictSerializer

+ (id)serialize:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = [a3 codingKeys];
  v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v15, "count")}];
  memset(__b, 0, sizeof(__b));
  obj = v15;
  v11 = [v15 countByEnumeratingWithState:__b objects:v19 count:16];
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
      v3 = [v16 valueForKey:{objc_msgSend(v15, "objectForKeyedSubscript:", v13)}];
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