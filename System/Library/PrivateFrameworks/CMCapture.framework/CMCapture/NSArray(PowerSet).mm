@interface NSArray(PowerSet)
- (uint64_t)powerSet;
@end

@implementation NSArray(PowerSet)

- (uint64_t)powerSet
{
  v2 = [a1 count];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 lastObject];
    v5 = [objc_msgSend(a1 subarrayWithRange:{0, v3 - 1), "powerSet"}];
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:v5];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          [v6 addObject:{objc_msgSend(*(*(&v15 + 1) + 8 * i), "arrayByAddingObject:", v4)}];
        }

        v8 = [v5 countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v8);
    }

    return [MEMORY[0x1E695DEC8] arrayWithArray:v6];
  }

  else
  {
    v12 = MEMORY[0x1E695DEC8];
    v13 = [MEMORY[0x1E695DEC8] array];

    return [v12 arrayWithObject:v13];
  }
}

@end