@interface HUAccessoryServicesItemModule
+ (id)supportedServiceTypes;
- (id)buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HUAccessoryServicesItemModule

+ (id)supportedServiceTypes
{
  v2 = [MEMORY[0x277CD1D90] hf_standardServiceTypes];
  v3 = [v2 allObjects];

  return v3;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(HUChildServiceEditorItemModule *)self childServiceItemProvider];
  v7 = [v6 items];

  if ([v7 intersectsSet:v4])
  {
    v37 = v4;
    v8 = [v7 allObjects];
    v9 = [v8 firstObject];
    v10 = [v9 service];
    v11 = [v10 accessory];

    v12 = v11;
    v13 = [v11 hf_primaryService];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v36 = v7;
    v14 = v7;
    v40 = [v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v40)
    {
      v38 = v14;
      v39 = *v42;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v42 != v39)
          {
            objc_enumerationMutation(v14);
          }

          v16 = *(*(&v41 + 1) + 8 * i);
          v17 = [v16 service];
          v18 = [v17 uniqueIdentifier];
          v19 = [v13 uniqueIdentifier];
          v20 = [v18 hmf_isEqualToUUID:v19];

          v21 = [v12 hf_shouldSeparateAccessoryName];
          if (v20)
          {
            v22 = v21 == 0;
          }

          else
          {
            v22 = 0;
          }

          if (!v22)
          {
            v23 = [v16 service];
            v24 = [v23 hf_isVisible];

            if (v24)
            {
              v25 = objc_alloc(MEMORY[0x277D14850]);
              v26 = [v16 service];
              v27 = [v26 uniqueIdentifier];
              v28 = [v27 UUIDString];
              [@"HUAccessoryServicesItemSectionIdentifier" stringByAppendingString:v28];
              v29 = v13;
              v30 = v12;
              v32 = v31 = v5;
              v33 = [v25 initWithIdentifier:v32];

              v45 = v16;
              v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
              [v33 setItems:v34];

              v5 = v31;
              v12 = v30;
              v13 = v29;
              v14 = v38;
              [v5 addObject:v33];
            }
          }
        }

        v40 = [v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v40);
    }

    v7 = v36;
    v4 = v37;
  }

  [v5 sortUsingComparator:&__block_literal_global_303];

  return v5;
}

uint64_t __65__HUAccessoryServicesItemModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_class();
  v6 = [v5 items];

  v7 = [v6 firstObject];
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  objc_opt_class();
  v10 = [v4 items];

  v11 = [v10 firstObject];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = [v9 service];
  v15 = [v13 service];
  if ([v14 isPrimaryService])
  {
    v16 = 1;
  }

  else if ([v15 isPrimaryService])
  {
    v16 = -1;
  }

  else
  {
    v17 = [v14 serviceType];
    v18 = [v15 serviceType];
    v19 = [v17 isEqual:v18];

    if (v19)
    {
      v20 = [v14 name];
      [v15 name];
    }

    else
    {
      v20 = [v14 hf_userFriendlyLocalizedLowercaseDescription];
      [v15 hf_userFriendlyLocalizedLowercaseDescription];
    }
    v21 = ;
    v16 = [v20 localizedStandardCompare:v21];
  }

  return v16;
}

@end