@interface HUHomeHubSharedUserWarningItemManager
- (HUHomeHubSharedUserWarningItemManager)initWithDelegate:(id)delegate homesToUsersMap:(id)map;
- (HUHomeHubSharedUserWarningItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HUHomeHubSharedUserWarningItemManager

- (HUHomeHubSharedUserWarningItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_home_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUHomeHubSharedUserWarningItemManager.m" lineNumber:23 description:{@"%s is unavailable; use %@ instead", "-[HUHomeHubSharedUserWarningItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HUHomeHubSharedUserWarningItemManager)initWithDelegate:(id)delegate homesToUsersMap:(id)map
{
  mapCopy = map;
  v10.receiver = self;
  v10.super_class = HUHomeHubSharedUserWarningItemManager;
  v7 = [(HFItemManager *)&v10 initWithDelegate:delegate sourceItem:0];
  v8 = v7;
  if (v7)
  {
    [(HUHomeHubSharedUserWarningItemManager *)v7 setHomesToUsersMap:mapCopy];
  }

  return v8;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  homesToUsersMap = [(HUHomeHubSharedUserWarningItemManager *)self homesToUsersMap];
  keyEnumerator = [homesToUsersMap keyEnumerator];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HUHomeHubSharedUserWarningItemManager__buildItemProvidersForHome___block_invoke;
  v14[3] = &unk_277DBFE78;
  v15 = v5;
  selfCopy = self;
  v8 = v4;
  v17 = v8;
  v9 = v5;
  [keyEnumerator na_each:v14];

  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_164];
  [(HUHomeHubSharedUserWarningItemManager *)self setHomes:v10];

  v11 = v17;
  v12 = v8;

  return v8;
}

void __68__HUHomeHubSharedUserWarningItemManager__buildItemProvidersForHome___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  [a1[4] addObject:v3];
  v4 = objc_opt_new();
  v5 = [a1[5] homesToUsersMap];
  v6 = [v5 objectForKey:v3];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __68__HUHomeHubSharedUserWarningItemManager__buildItemProvidersForHome___block_invoke_2;
  v14 = &unk_277DBFE50;
  v15 = v3;
  v16 = v4;
  v7 = v4;
  v8 = v3;
  [v6 na_each:&v11];

  v9 = objc_alloc(MEMORY[0x277D14B40]);
  v10 = [v9 initWithItems:{v7, v11, v12, v13, v14}];
  [a1[6] addObject:v10];
}

void __68__HUHomeHubSharedUserWarningItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D14C98];
  v4 = a2;
  v5 = [[v3 alloc] initWithHome:*(a1 + 32) user:v4 nameStyle:0];

  [*(a1 + 40) addObject:v5];
}

uint64_t __68__HUHomeHubSharedUserWarningItemManager__buildItemProvidersForHome___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 name];
  v7 = [v4 name];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [v5 uniqueIdentifier];

    [v4 uniqueIdentifier];
  }

  else
  {
    v9 = [v5 name];

    [v4 name];
  }
  v10 = ;
  v11 = [v9 compare:v10];

  return v11;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v45 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if ([itemsCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [(HUHomeHubSharedUserWarningItemManager *)self homes];
    v32 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v32)
    {
      v28 = *v40;
      selfCopy = self;
      do
      {
        v4 = 0;
        do
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v4;
          v5 = *(*(&v39 + 1) + 8 * v4);
          v6 = objc_opt_new();
          v7 = objc_alloc(MEMORY[0x277D14850]);
          uniqueIdentifier = [v5 uniqueIdentifier];
          uUIDString = [uniqueIdentifier UUIDString];
          v10 = [v7 initWithIdentifier:uUIDString];

          homes = [(HUHomeHubSharedUserWarningItemManager *)self homes];
          v12 = [homes count];

          if (v12 >= 2)
          {
            hf_displayName = [v5 hf_displayName];
            [v10 setHeaderTitle:hf_displayName];
          }

          v33 = v10;
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v14 = itemsCopy;
          v15 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v36;
            do
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v36 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v35 + 1) + 8 * i);
                objc_opt_class();
                v20 = v19;
                if (objc_opt_isKindOfClass())
                {
                  v21 = v20;
                }

                else
                {
                  v21 = 0;
                }

                v22 = v21;

                home = [v22 home];
                v24 = [home isEqual:v5];

                if (v24)
                {
                  [v6 addObject:v22];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v16);
          }

          v25 = [v6 sortedArrayUsingComparator:&__block_literal_global_16_3];
          [v33 setItems:v25];
          [array addObject:v33];

          v4 = v34 + 1;
          self = selfCopy;
        }

        while (v34 + 1 != v32);
        v32 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v32);
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  return array;
}

uint64_t __74__HUHomeHubSharedUserWarningItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 user];
  v6 = [v5 userID];
  v7 = [v4 user];

  v8 = [v7 userID];
  v9 = [v6 localizedStandardCompare:v8];

  return v9;
}

@end