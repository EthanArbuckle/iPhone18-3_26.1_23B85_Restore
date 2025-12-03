@interface HUAccessoryServicesItemModule
+ (id)supportedServiceTypes;
- (id)buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUAccessoryServicesItemModule

+ (id)supportedServiceTypes
{
  hf_standardServiceTypes = [MEMORY[0x277CD1D90] hf_standardServiceTypes];
  allObjects = [hf_standardServiceTypes allObjects];

  return allObjects;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v47 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  array = [MEMORY[0x277CBEB18] array];
  childServiceItemProvider = [(HUChildServiceEditorItemModule *)self childServiceItemProvider];
  items = [childServiceItemProvider items];

  if ([items intersectsSet:itemsCopy])
  {
    v37 = itemsCopy;
    allObjects = [items allObjects];
    firstObject = [allObjects firstObject];
    service = [firstObject service];
    accessory = [service accessory];

    v12 = accessory;
    hf_primaryService = [accessory hf_primaryService];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v36 = items;
    v14 = items;
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
          service2 = [v16 service];
          uniqueIdentifier = [service2 uniqueIdentifier];
          uniqueIdentifier2 = [hf_primaryService uniqueIdentifier];
          v20 = [uniqueIdentifier hmf_isEqualToUUID:uniqueIdentifier2];

          hf_shouldSeparateAccessoryName = [v12 hf_shouldSeparateAccessoryName];
          if (v20)
          {
            v22 = hf_shouldSeparateAccessoryName == 0;
          }

          else
          {
            v22 = 0;
          }

          if (!v22)
          {
            service3 = [v16 service];
            hf_isVisible = [service3 hf_isVisible];

            if (hf_isVisible)
            {
              v25 = objc_alloc(MEMORY[0x277D14850]);
              service4 = [v16 service];
              uniqueIdentifier3 = [service4 uniqueIdentifier];
              uUIDString = [uniqueIdentifier3 UUIDString];
              [@"HUAccessoryServicesItemSectionIdentifier" stringByAppendingString:uUIDString];
              v29 = hf_primaryService;
              v30 = v12;
              v32 = v31 = array;
              v33 = [v25 initWithIdentifier:v32];

              v45 = v16;
              v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
              [v33 setItems:v34];

              array = v31;
              v12 = v30;
              hf_primaryService = v29;
              v14 = v38;
              [array addObject:v33];
            }
          }
        }

        v40 = [v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v40);
    }

    items = v36;
    itemsCopy = v37;
  }

  [array sortUsingComparator:&__block_literal_global_303];

  return array;
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