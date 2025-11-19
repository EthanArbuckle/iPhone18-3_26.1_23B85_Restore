@interface HMServiceGroup(HFReordering)
- (HFServiceNameComponents)hf_serviceNameComponents;
- (id)hf_displayName;
@end

@implementation HMServiceGroup(HFReordering)

- (id)hf_displayName
{
  v1 = [a1 hf_serviceNameComponents];
  v2 = [v1 composedString];

  return v2;
}

- (HFServiceNameComponents)hf_serviceNameComponents
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [a1 name];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [a1 services];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) accessory];
        v10 = [v9 room];

        if (v10)
        {
          if (v6)
          {
            if (([v6 isEqual:v10] & 1) == 0)
            {

              goto LABEL_14;
            }
          }

          else
          {
            v6 = v10;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
LABEL_14:
    v6 = 0;
  }

  v11 = [v6 name];
  v12 = [[HFServiceNameComponents alloc] initWithRawServiceName:v2 rawRoomName:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end