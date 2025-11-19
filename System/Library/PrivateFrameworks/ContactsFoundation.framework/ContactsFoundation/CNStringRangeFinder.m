@interface CNStringRangeFinder
+ (id)rangesOfString:(id)a3 inString:(id)a4;
+ (id)rangesOfStrings:(id)a3 inString:(id)a4;
+ (void)removeOverlappingRanges:(id)a3;
@end

@implementation CNStringRangeFinder

+ (id)rangesOfStrings:(id)a3 inString:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [a1 rangesOfString:*(*(&v17 + 1) + 8 * i) inString:{v7, v17}];
        [v8 addObjectsFromArray:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [v8 sortUsingComparator:&__block_literal_global_67];
  [a1 removeOverlappingRanges:v8];

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)rangesOfString:(id)a3 inString:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [v6 rangeOfString:v5 options:0 range:{0, objc_msgSend(v6, "length")}];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8;
    v11 = v9;
    do
    {
      v12 = [MEMORY[0x1E696B098] valueWithRange:{v10, v11}];
      [v7 addObject:v12];
      v10 = [v6 rangeOfString:v5 options:0 range:{v10 + v11, objc_msgSend(v6, "length") - (v10 + v11)}];
      v11 = v13;
    }

    while (v10 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v7;
}

+ (void)removeOverlappingRanges:(id)a3
{
  v12 = a3;
  if ([v12 count] >= 2)
  {
    v3 = [v12 objectAtIndex:0];
    v4 = [v3 rangeValue];
    v6 = v5;

    if ([v12 count] >= 2)
    {
      v7 = 1;
      do
      {
        v8 = [v12 objectAtIndex:v7];
        v9 = [v8 rangeValue];
        v11 = v10;

        if (v9 >= v6 + v4)
        {
          ++v7;
          v4 = v9;
          v6 = v11;
        }

        else
        {
          [v12 removeObjectAtIndex:v7];
        }
      }

      while (v7 < [v12 count]);
    }
  }
}

@end