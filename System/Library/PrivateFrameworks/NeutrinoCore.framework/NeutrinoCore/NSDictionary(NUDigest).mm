@interface NSDictionary(NUDigest)
- (void)nu_updateDigest:()NUDigest;
@end

@implementation NSDictionary(NUDigest)

- (void)nu_updateDigest:()NUDigest
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 addString:@"NSDictionary{"];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [self allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [v11 nu_updateDigest:v4];
        [v4 addCString:":"];
        v12 = [self objectForKeyedSubscript:v11];
        [v12 nu_updateDigest:v4];

        [v4 addCString:{", "}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [v4 addString:@"}"];
}

@end