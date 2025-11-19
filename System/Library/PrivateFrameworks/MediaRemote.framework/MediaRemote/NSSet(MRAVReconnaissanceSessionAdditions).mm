@interface NSSet(MRAVReconnaissanceSessionAdditions)
- (uint64_t)mr_containsObjectUsingWeakMatching:()MRAVReconnaissanceSessionAdditions;
@end

@implementation NSSet(MRAVReconnaissanceSessionAdditions)

- (uint64_t)mr_containsObjectUsingWeakMatching:()MRAVReconnaissanceSessionAdditions
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [a1 allObjects];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v22 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            v12 = [v11 length];
            v13 = v12 >= [v5 length] ? v5 : v11;
            v14 = v13 == v11 ? v5 : v11;
            v15 = v13;
            v16 = [v14 containsString:v15];

            if (v16)
            {
              v7 = 1;
              goto LABEL_20;
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
  }

  else
  {
    v7 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

@end