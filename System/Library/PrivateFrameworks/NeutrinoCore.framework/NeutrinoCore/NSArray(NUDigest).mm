@interface NSArray(NUDigest)
- (void)nu_updateDigest:()NUDigest;
@end

@implementation NSArray(NUDigest)

- (void)nu_updateDigest:()NUDigest
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_msgSend(v4, "addCString:", "NSArray(");
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) nu_updateDigest:{v4, v10}];
        [v4 addCString:{", "}];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [v4 addCString:"]");
}

@end