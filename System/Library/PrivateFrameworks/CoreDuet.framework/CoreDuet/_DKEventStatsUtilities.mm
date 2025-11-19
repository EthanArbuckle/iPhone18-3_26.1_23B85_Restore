@interface _DKEventStatsUtilities
+ (id)componentsPrunedOfLeadingBlanksFromComponents:(uint64_t)a1;
+ (id)safeStringWithString:(id)a3;
+ (id)safeStringsWithStrings:(id)a3;
@end

@implementation _DKEventStatsUtilities

+ (id)componentsPrunedOfLeadingBlanksFromComponents:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  while ([v2 count])
  {
    v3 = [v2 firstObject];
    if ([v3 length])
    {

      break;
    }

    [v2 removeObjectAtIndex:0];
  }

  return v2;
}

+ (id)safeStringWithString:(id)a3
{
  v4 = safeStringWithString__initialized;
  v5 = a3;
  if (v4 != -1)
  {
    +[_DKEventStatsUtilities safeStringWithString:];
  }

  v6 = [v5 componentsSeparatedByCharactersInSet:safeStringWithString__nonPermittedCharacterSet];

  v7 = [v6 mutableCopy];
  [(_DKEventStatsUtilities *)a1 componentsPrunedOfLeadingBlanksFromComponents:v7];
  objc_claimAutoreleasedReturnValue();
  v8 = [v7 componentsJoinedByString:@"_"];

  return v8;
}

+ (id)safeStringsWithStrings:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
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

          v12 = [a1 safeStringWithString:{*(*(&v16 + 1) + 8 * i), v16}];
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