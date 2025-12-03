@interface _DKEventStatsUtilities
+ (id)componentsPrunedOfLeadingBlanksFromComponents:(uint64_t)components;
+ (id)safeStringWithString:(id)string;
+ (id)safeStringsWithStrings:(id)strings;
@end

@implementation _DKEventStatsUtilities

+ (id)componentsPrunedOfLeadingBlanksFromComponents:(uint64_t)components
{
  v2 = a2;
  objc_opt_self();
  while ([v2 count])
  {
    firstObject = [v2 firstObject];
    if ([firstObject length])
    {

      break;
    }

    [v2 removeObjectAtIndex:0];
  }

  return v2;
}

+ (id)safeStringWithString:(id)string
{
  v4 = safeStringWithString__initialized;
  stringCopy = string;
  if (v4 != -1)
  {
    +[_DKEventStatsUtilities safeStringWithString:];
  }

  v6 = [stringCopy componentsSeparatedByCharactersInSet:safeStringWithString__nonPermittedCharacterSet];

  v7 = [v6 mutableCopy];
  [(_DKEventStatsUtilities *)self componentsPrunedOfLeadingBlanksFromComponents:v7];
  objc_claimAutoreleasedReturnValue();
  v8 = [v7 componentsJoinedByString:@"_"];

  return v8;
}

+ (id)safeStringsWithStrings:(id)strings
{
  v21 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  v5 = stringsCopy;
  if (stringsCopy)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(stringsCopy, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [self safeStringWithString:{*(*(&v16 + 1) + 8 * i), v16}];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v13 = [0 copy];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end