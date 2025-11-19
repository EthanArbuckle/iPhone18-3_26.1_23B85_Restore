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
  v1 = [a1 siriEndpointProfile];
  v2 = v1 != 0;

  return v2;
}

- (uint64_t)hmu_isHomePod
{
  v1 = [a1 category];
  v2 = [v1 categoryType];

  v3 = [v2 isEqualToString:*MEMORY[0x277CCE8B0]];
  return v3;
}

- (uint64_t)hmu_isAppleTV
{
  v1 = [a1 category];
  v2 = [v1 categoryType];

  v3 = [v2 isEqualToString:*MEMORY[0x277CCE870]];
  return v3;
}

- (uint64_t)hmu_isPartOfHome:()HMUAdditions
{
  v4 = a3;
  v5 = [a1 home];
  v6 = [v5 uniqueIdentifier];
  v7 = [v4 uniqueIdentifier];

  v8 = [v6 isEqual:v7];
  return v8;
}

+ (id)hmu_accessoriesFromAccessories:()HMUAdditions excludingStereoCompanionForAccessory:
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v42 = a4;
  v6 = [v42 home];
  v7 = v6;
  if (v6)
  {
    v37 = v6;
    v38 = v5;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [v6 mediaSystems];
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
          v11 = [v9 components];
          v12 = [v11 countByEnumeratingWithState:&v47 objects:v56 count:16];
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
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v47 + 1) + 8 * j);
                v17 = [v16 role];
                if ([v17 type] == 1)
                {
                }

                else
                {
                  v18 = [v16 role];
                  v19 = [v18 type];

                  if (v19 != 2)
                  {
                    goto LABEL_19;
                  }
                }

                v20 = [v16 mediaProfile];
                v21 = [v20 accessory];

                if (v21)
                {
                  v22 = [v21 uniqueIdentifier];
                  [v10 addObject:v22];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v47 objects:v56 count:16];
            }

            while (v13);
          }

LABEL_19:

          v23 = [v42 uniqueIdentifier];
          v24 = [v10 containsObject:v23];

          if (v24)
          {
            v26 = [v42 uniqueIdentifier];
            [v10 removeObject:v26];

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
                  v33 = [v32 uniqueIdentifier];
                  v34 = [v10 containsObject:v33];

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