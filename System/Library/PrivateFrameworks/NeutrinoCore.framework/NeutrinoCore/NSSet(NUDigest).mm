@interface NSSet(NUDigest)
- (void)nu_updateDigest:()NUDigest;
@end

@implementation NSSet(NUDigest)

- (void)nu_updateDigest:()NUDigest
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_msgSend(v4, "addCString:", "NSSet(");
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [a1 allObjects];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) nu_updateDigest:v4];
        [v4 addCString:{", "}];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [v4 addCString:"]");
}

@end