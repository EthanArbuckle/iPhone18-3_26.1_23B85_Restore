@interface HMDFetchedAccessorySettingsControllerMutableKeyPathMap
- (id)availableKeyPaths;
- (id)objectForKeyedSubscript:(void *)a1;
@end

@implementation HMDFetchedAccessorySettingsControllerMutableKeyPathMap

- (id)availableKeyPaths
{
  if (a1)
  {
    v2 = [objc_getProperty(a1 a2];
    v3 = [MEMORY[0x277CBEB98] setWithArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)objectForKeyedSubscript:(void *)a1
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = objc_getProperty(a1, v3, 8, 1);
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 keyPaths];
          v11 = [v10 containsObject:v4];

          if (v11)
          {
            v6 = [v9 driver];
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

@end