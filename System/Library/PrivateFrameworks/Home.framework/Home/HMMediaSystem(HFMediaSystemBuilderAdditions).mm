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
  components = [self components];
  accessory = [components countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (accessory)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != accessory; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(components);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        role = [v9 role];
        v11 = [role isEqual:v4];

        if (v11)
        {
          mediaProfile = [v9 mediaProfile];
          accessory = [mediaProfile accessory];

          goto LABEL_11;
        }
      }

      accessory = [components countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (accessory)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return accessory;
}

- (id)hf_roleForAccessory:()HFMediaSystemBuilderAdditions
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  components = [self components];
  role = [components countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (role)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != role; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(components);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        mediaProfile = [v9 mediaProfile];
        accessory = [mediaProfile accessory];
        v12 = [accessory isEqual:v4];

        if (v12)
        {
          role = [v9 role];
          goto LABEL_11;
        }
      }

      role = [components countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (role)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return role;
}

@end