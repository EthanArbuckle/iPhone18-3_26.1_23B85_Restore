@interface NSArray(CUArrayExtensions)
- (id)cuFilteredArrayUsingBlock:()CUArrayExtensions;
@end

@implementation NSArray(CUArrayExtensions)

- (id)cuFilteredArrayUsingBlock:()CUArrayExtensions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = a1;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        if (v10)
        {
          [v5 addObject:{v10, v13}];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v5 copy];

  return v11;
}

@end