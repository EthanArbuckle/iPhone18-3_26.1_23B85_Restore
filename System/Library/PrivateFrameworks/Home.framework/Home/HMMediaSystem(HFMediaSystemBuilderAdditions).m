@interface HMMediaSystem(HFMediaSystemBuilderAdditions)
- (id)hf_accessoryForRole:()HFMediaSystemBuilderAdditions;
- (id)hf_roleForAccessory:()HFMediaSystemBuilderAdditions;
@end

@implementation HMMediaSystem(HFMediaSystemBuilderAdditions)

- (id)hf_accessoryForRole:()HFMediaSystemBuilderAdditions
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [a1 components];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 role];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v12 = [v9 mediaProfile];
          v6 = [v12 accessory];

          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)hf_roleForAccessory:()HFMediaSystemBuilderAdditions
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [a1 components];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 mediaProfile];
        v11 = [v10 accessory];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          v6 = [v9 role];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

@end