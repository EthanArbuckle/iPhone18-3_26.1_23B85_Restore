@interface NSCountedSet(FCAdditions)
- (id)fc_description;
@end

@implementation NSCountedSet(FCAdditions)

- (id)fc_description
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [a1 allObjects];
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = MEMORY[0x1E696AEC0];
        v9 = [v7 description];
        v10 = [v8 stringWithFormat:@"%@ (%lu) \n", v9, objc_msgSend(a1, "countForObject:", v7)];
        [v2 appendString:v10];
      }

      v4 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

@end