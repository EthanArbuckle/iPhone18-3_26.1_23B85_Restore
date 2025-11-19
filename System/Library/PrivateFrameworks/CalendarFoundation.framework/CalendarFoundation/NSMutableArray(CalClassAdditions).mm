@interface NSMutableArray(CalClassAdditions)
+ (CFMutableArrayRef)nonRetainingArray;
- (void)CalFilterUsingBlock:()CalClassAdditions;
- (void)removeAllObjectsWithClass:()CalClassAdditions;
@end

@implementation NSMutableArray(CalClassAdditions)

- (void)removeAllObjectsWithClass:()CalClassAdditions
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:{v8, v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [v3 removeObjectsInArray:v2];
  v9 = *MEMORY[0x1E69E9840];
}

+ (CFMutableArrayRef)nonRetainingArray
{
  v0 = *(MEMORY[0x1E695E9C0] + 16);
  *&v3.version = *MEMORY[0x1E695E9C0];
  *&v3.release = v0;
  v3.equal = *(MEMORY[0x1E695E9C0] + 32);
  v3.retain = 0;
  v3.release = 0;
  v1 = CFArrayCreateMutable(0, 0, &v3);

  return v1;
}

- (void)CalFilterUsingBlock:()CalClassAdditions
{
  v4 = a3;
  v5 = MEMORY[0x1E696AE18];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__NSMutableArray_CalClassAdditions__CalFilterUsingBlock___block_invoke;
  v8[3] = &unk_1E7EC7250;
  v9 = v4;
  v6 = v4;
  v7 = [v5 predicateWithBlock:v8];
  [a1 filterUsingPredicate:v7];
}

@end