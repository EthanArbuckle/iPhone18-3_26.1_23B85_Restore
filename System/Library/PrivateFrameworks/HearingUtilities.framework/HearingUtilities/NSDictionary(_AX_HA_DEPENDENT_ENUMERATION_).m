@interface NSDictionary(_AX_HA_DEPENDENT_ENUMERATION_)
- (void)enumerateKeysAndObjectsInDependentOrderUsingBlock:()_AX_HA_DEPENDENT_ENUMERATION_;
@end

@implementation NSDictionary(_AX_HA_DEPENDENT_ENUMERATION_)

- (void)enumerateKeysAndObjectsInDependentOrderUsingBlock:()_AX_HA_DEPENDENT_ENUMERATION_
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 allKeys];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_119];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      v13 = [a1 objectForKeyedSubscript:v12];
      v15 = 0;
      v4[2](v4, v12, v13, &v15);
      LOBYTE(v12) = v15;

      if (v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end