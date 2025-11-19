@interface _CDStringTokenizer
+ (BOOL)isEnglishStopWord:(id)a3;
+ (id)extractNormalizedKeywords:(id)a3;
@end

@implementation _CDStringTokenizer

+ (BOOL)isEnglishStopWord:(id)a3
{
  v3 = isEnglishStopWord__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[_CDStringTokenizer isEnglishStopWord:];
  }

  v5 = isEnglishStopWord___stopWordSet;
  v6 = [v4 lowercaseString];

  v7 = [v5 containsObject:v6];
  return v7;
}

+ (id)extractNormalizedKeywords:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    v6 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v7 = [v6 mutableCopy];
    v19 = v5;
    [v7 formUnionWithCharacterSet:v5];
    v8 = [v4 lowercaseString];
    v9 = [v8 componentsSeparatedByCharactersInSet:v7];

    v10 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v9, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if ([v16 length] >= 2 && (objc_msgSend(a1, "isEnglishStopWord:", v16) & 1) == 0)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = [MEMORY[0x1E695DFD8] set];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v10;
}

@end