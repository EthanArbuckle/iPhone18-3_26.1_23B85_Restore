@interface NSArray(KeyPathLookup)
- (id)hmf_firstObjectWithValue:()KeyPathLookup forKeyPath:;
@end

@implementation NSArray(KeyPathLookup)

- (id)hmf_firstObjectWithValue:()KeyPathLookup forKeyPath:
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure(@"keyPath");
  }

  v8 = v7;
  if (v6)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = a1;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 valueForKeyPath:{v8, v19}];
          v15 = [v14 isEqual:v6];

          if (v15)
          {
            v16 = v13;

            goto LABEL_14;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  v16 = 0;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end