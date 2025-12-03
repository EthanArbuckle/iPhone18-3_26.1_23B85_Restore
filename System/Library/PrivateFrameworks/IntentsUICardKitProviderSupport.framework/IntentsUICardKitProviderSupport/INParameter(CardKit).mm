@interface INParameter(CardKit)
- (uint64_t)isSubParameterOf:()CardKit;
@end

@implementation INParameter(CardKit)

- (uint64_t)isSubParameterOf:()CardKit
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  parameterClass = [self parameterClass];
  if (parameterClass == [v4 parameterClass])
  {
    parameterKeyPath = [v4 parameterKeyPath];
    v8 = [parameterKeyPath length];

    parameterKeyPath2 = [self parameterKeyPath];
    parameterKeyPath3 = [v4 parameterKeyPath];
    v11 = [parameterKeyPath2 hasPrefix:parameterKeyPath3];

    _indexesForSubKeyPaths = [v4 _indexesForSubKeyPaths];
    _indexesForSubKeyPaths2 = [self _indexesForSubKeyPaths];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    allKeys = [_indexesForSubKeyPaths allKeys];
    v15 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v19 = *(*(&v28 + 1) + 8 * i);
          v20 = [_indexesForSubKeyPaths2 objectForKey:v19];
          v21 = [_indexesForSubKeyPaths objectForKey:v19];
          v22 = [v20 isEqual:v21];

          if (!v22)
          {
            v23 = 0;
            goto LABEL_13;
          }
        }

        v16 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
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