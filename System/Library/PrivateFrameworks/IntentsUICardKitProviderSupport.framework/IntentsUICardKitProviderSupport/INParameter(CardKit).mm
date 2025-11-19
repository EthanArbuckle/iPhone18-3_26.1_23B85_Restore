@interface INParameter(CardKit)
- (uint64_t)isSubParameterOf:()CardKit;
@end

@implementation INParameter(CardKit)

- (uint64_t)isSubParameterOf:()CardKit
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 parameterClass];
  if (v5 == [v4 parameterClass])
  {
    v7 = [v4 parameterKeyPath];
    v8 = [v7 length];

    v9 = [a1 parameterKeyPath];
    v10 = [v4 parameterKeyPath];
    v11 = [v9 hasPrefix:v10];

    v12 = [v4 _indexesForSubKeyPaths];
    v13 = [a1 _indexesForSubKeyPaths];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = [v12 allKeys];
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v26 = v11;
      v27 = v8;
      v17 = *v29;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = [v13 objectForKey:v19];
          v21 = [v12 objectForKey:v19];
          v22 = [v20 isEqual:v21];

          if (!v22)
          {
            v23 = 0;
            goto LABEL_13;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }

      v23 = 1;
LABEL_13:
      v8 = v27;
      v11 = v26;
    }

    else
    {
      v23 = 1;
    }

    if (v8)
    {
      v6 = v11 & v23;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

@end