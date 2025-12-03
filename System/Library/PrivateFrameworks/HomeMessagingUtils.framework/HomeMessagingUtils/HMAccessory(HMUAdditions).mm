@interface HMAccessory(HMUAdditions)
+ (id)hmu_accessoriesFromAccessories:()HMUAdditions excludingStereoCompanionForAccessory:;
- (BOOL)hmu_isEndpoint;
- (uint64_t)hmu_isAppleTV;
- (uint64_t)hmu_isHomePod;
- (uint64_t)hmu_isPartOfHome:()HMUAdditions;
@end

@implementation HMAccessory(HMUAdditions)

- (BOOL)hmu_isEndpoint
{
  siriEndpointProfile = [self siriEndpointProfile];
  v2 = siriEndpointProfile != 0;

  return v2;
}

- (uint64_t)hmu_isHomePod
{
  category = [self category];
  categoryType = [category categoryType];

  v3 = [categoryType isEqualToString:*MEMORY[0x277CCE8B0]];
  return v3;
}

- (uint64_t)hmu_isAppleTV
{
  category = [self category];
  categoryType = [category categoryType];

  v3 = [categoryType isEqualToString:*MEMORY[0x277CCE870]];
  return v3;
}

- (uint64_t)hmu_isPartOfHome:()HMUAdditions
{
  v4 = a3;
  home = [self home];
  uniqueIdentifier = [home uniqueIdentifier];
  uniqueIdentifier2 = [v4 uniqueIdentifier];

  v8 = [uniqueIdentifier isEqual:uniqueIdentifier2];
  return v8;
}

+ (id)hmu_accessoriesFromAccessories:()HMUAdditions excludingStereoCompanionForAccessory:
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v42 = a4;
  home = [v42 home];
  v7 = home;
  if (home)
  {
    v37 = home;
    v38 = v5;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [home mediaSystems];
    v41 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v41)
    {
      v40 = *v52;
      while (2)
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v52 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v51 + 1) + 8 * i);
          v10 = objc_opt_new();
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          components = [v9 components];
          v12 = [components countByEnumeratingWithState:&v47 objects:v56 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v48;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v48 != v14)
                {
                  objc_enumerationMutation(components);
                }

                v16 = *(*(&v47 + 1) + 8 * j);
                role = [v16 role];
                if ([role type] == 1)
                {
                }

                else
                {
                  role2 = [v16 role];
                  type = [role2 type];

                  if (type != 2)
                  {
                    goto LABEL_19;
                  }
                }

                mediaProfile = [v16 mediaProfile];
                accessory = [mediaProfile accessory];

                if (accessory)
                {
                  uniqueIdentifier = [accessory uniqueIdentifier];
                  [v10 addObject:uniqueIdentifier];
                }
              }

              v13 = [components countByEnumeratingWithState:&v47 objects:v56 count:16];
            }

            while (v13);
          }

LABEL_19:

          uniqueIdentifier2 = [v42 uniqueIdentifier];
          v24 = [v10 containsObject:uniqueIdentifier2];

          if (v24)
          {
            uniqueIdentifier3 = [v42 uniqueIdentifier];
            [v10 removeObject:uniqueIdentifier3];

            v25 = objc_opt_new();
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v27 = v38;
            v28 = [v27 countByEnumeratingWithState:&v43 objects:v55 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v44;
              do
              {
                for (k = 0; k != v29; ++k)
                {
                  if (*v44 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v43 + 1) + 8 * k);
                  uniqueIdentifier4 = [v32 uniqueIdentifier];
                  v34 = [v10 containsObject:uniqueIdentifier4];

                  if ((v34 & 1) == 0)
                  {
                    [v25 addObject:v32];
                  }
                }

                v29 = [v27 countByEnumeratingWithState:&v43 objects:v55 count:16];
              }

              while (v29);
            }

            v5 = v38;
            goto LABEL_33;
          }
        }

        v41 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    v5 = v38;
    v25 = v38;
LABEL_33:
    v7 = v37;
  }

  else
  {
    v25 = v5;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v25;
}

@end