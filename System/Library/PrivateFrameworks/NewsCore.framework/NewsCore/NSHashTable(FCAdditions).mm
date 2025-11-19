@interface NSHashTable(FCAdditions)
- (void)fc_safelyAddObjectsFromArray:()FCAdditions;
@end

@implementation NSHashTable(FCAdditions)

- (void)fc_safelyAddObjectsFromArray:()FCAdditions
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [a1 addObject:*(*(&v11 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end