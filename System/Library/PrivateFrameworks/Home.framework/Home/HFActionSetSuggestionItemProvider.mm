@interface HFActionSetSuggestionItemProvider
- (HFActionSetSuggestionItemProvider)initWithHome:(id)home;
- (id)_builtInActionSetOfType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)items;
- (id)reloadItems;
- (void)setIncludeExistingActionSets:(BOOL)sets;
- (void)setPersistAddedSuggestions:(BOOL)suggestions;
- (void)setServiceLikeItem:(id)item;
@end

@implementation HFActionSetSuggestionItemProvider

- (HFActionSetSuggestionItemProvider)initWithHome:(id)home
{
  v33 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v27.receiver = self;
  v27.super_class = HFActionSetSuggestionItemProvider;
  v6 = [(HFItemProvider *)&v27 init];
  v7 = v6;
  if (v6)
  {
    v22 = homeCopy;
    objc_storeStrong(&v6->_home, home);
    v8 = [MEMORY[0x277CBEB58] set];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = +[HFActionSetSuggestionVendor supportedBuiltInActionSetTypes];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [(HFActionSetSuggestionItemProvider *)v7 _builtInActionSetOfType:v14];
          if (v15)
          {
            v16 = [HFActionSetSuggestionItem alloc];
            home = [(HFActionSetSuggestionItemProvider *)v7 home];
            v18 = [(HFActionSetSuggestionItem *)v16 initWithHome:home actionSet:v15];

            [v18 setIncludeExistingActionSets:[(HFActionSetSuggestionItemProvider *)v7 includeExistingActionSets]];
            [v18 setPersistAddedSuggestions:[(HFActionSetSuggestionItemProvider *)v7 persistAddedSuggestions]];
            [v8 addObject:v18];
          }

          else
          {
            v18 = HFLogForCategory(0x2CuLL);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              home2 = [(HFActionSetSuggestionItemProvider *)v7 home];
              *buf = 138412546;
              v29 = v14;
              v30 = 2112;
              v31 = home2;
              _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "No action set found for builtin type %@ in home %@", buf, 0x16u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v11);
    }

    [(HFActionSetSuggestionItemProvider *)v7 setStaticSuggestionItems:v8];
    homeCopy = v22;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)setIncludeExistingActionSets:(BOOL)sets
{
  self->_includeExistingActionSets = sets;
  staticSuggestionItems = [(HFActionSetSuggestionItemProvider *)self staticSuggestionItems];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__HFActionSetSuggestionItemProvider_setIncludeExistingActionSets___block_invoke;
  v5[3] = &__block_descriptor_33_e35_v16__0__HFActionSetSuggestionItem_8l;
  setsCopy = sets;
  [staticSuggestionItems na_each:v5];
}

- (void)setPersistAddedSuggestions:(BOOL)suggestions
{
  self->_persistAddedSuggestions = suggestions;
  staticSuggestionItems = [(HFActionSetSuggestionItemProvider *)self staticSuggestionItems];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__HFActionSetSuggestionItemProvider_setPersistAddedSuggestions___block_invoke;
  v5[3] = &__block_descriptor_33_e35_v16__0__HFActionSetSuggestionItem_8l;
  suggestionsCopy = suggestions;
  [staticSuggestionItems na_each:v5];
}

- (void)setServiceLikeItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_serviceLikeItem, item);
  staticSuggestionItems = [(HFActionSetSuggestionItemProvider *)self staticSuggestionItems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HFActionSetSuggestionItemProvider_setServiceLikeItem___block_invoke;
  v8[3] = &unk_277DF7C68;
  v9 = itemCopy;
  v7 = itemCopy;
  [staticSuggestionItems na_each:v8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFActionSetSuggestionItemProvider *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (id)_builtInActionSetOfType:(id)type
{
  typeCopy = type;
  home = [(HFActionSetSuggestionItemProvider *)self home];
  actionSets = [home actionSets];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HFActionSetSuggestionItemProvider__builtInActionSetOfType___block_invoke;
  v10[3] = &unk_277DF4280;
  v11 = typeCopy;
  v7 = typeCopy;
  v8 = [actionSets na_firstObjectPassingTest:v10];

  return v8;
}

uint64_t __61__HFActionSetSuggestionItemProvider__builtInActionSetOfType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actionSetType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)reloadItems
{
  if ([(HFActionSetSuggestionItemProvider *)self hasProvidedStaticSuggestionItems])
  {
    staticSuggestionItems = 0;
  }

  else
  {
    staticSuggestionItems = [(HFActionSetSuggestionItemProvider *)self staticSuggestionItems];
  }

  if ([(HFActionSetSuggestionItemProvider *)self hasProvidedStaticSuggestionItems])
  {
    staticSuggestionItems2 = [(HFActionSetSuggestionItemProvider *)self staticSuggestionItems];
  }

  else
  {
    staticSuggestionItems2 = 0;
  }

  [(HFActionSetSuggestionItemProvider *)self setHasProvidedStaticSuggestionItems:1];
  home = [(HFActionSetSuggestionItemProvider *)self home];
  actionSets = [home actionSets];
  v15[4] = self;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__HFActionSetSuggestionItemProvider_reloadItems__block_invoke;
  v16[3] = &unk_277DF7C90;
  v16[4] = self;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__HFActionSetSuggestionItemProvider_reloadItems__block_invoke_2;
  v15[3] = &unk_277DF5828;
  v7 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:actionSets filter:v16 itemMap:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HFActionSetSuggestionItemProvider_reloadItems__block_invoke_3;
  v12[3] = &unk_277DF7CB8;
  v12[4] = self;
  v13 = staticSuggestionItems;
  v14 = staticSuggestionItems2;
  v8 = staticSuggestionItems2;
  v9 = staticSuggestionItems;
  v10 = [v7 flatMap:v12];

  return v10;
}

uint64_t __48__HFActionSetSuggestionItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if ([*(a1 + 32) includeCustomActionSets])
  {
    v7 = [v6 actionSetType];
    v8 = [v7 isEqualToString:*MEMORY[0x277CCF1A8]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

HFActionSetSuggestionItem *__48__HFActionSetSuggestionItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [HFActionSetSuggestionItem alloc];
  v8 = [*(a1 + 32) home];
  v9 = [(HFActionSetSuggestionItem *)v7 initWithHome:v8 actionSet:v6];

  v10 = [*(a1 + 32) serviceLikeItem];
  [(HFActionSetSuggestionItem *)v9 setServiceLikeItem:v10];

  -[HFActionSetSuggestionItem setIncludeExistingActionSets:](v9, "setIncludeExistingActionSets:", [*(a1 + 32) includeExistingActionSets]);
  -[HFActionSetSuggestionItem setPersistAddedSuggestions:](v9, "setPersistAddedSuggestions:", [*(a1 + 32) persistAddedSuggestions]);

  return v9;
}

id __48__HFActionSetSuggestionItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 allItems];
  [*(a1 + 32) setCustomSuggestionItems:v4];

  v5 = [[HFItemProviderReloadResults alloc] initWithAddedItems:*(a1 + 40) removedItems:0 existingItems:*(a1 + 48)];
  v6 = MEMORY[0x277D2C900];
  v7 = [(HFItemProviderReloadResults *)v5 resultsByMergingWithResults:v3];

  v8 = [v6 futureWithResult:v7];

  return v8;
}

- (id)items
{
  v3 = [MEMORY[0x277CBEB58] set];
  staticSuggestionItems = [(HFActionSetSuggestionItemProvider *)self staticSuggestionItems];
  if (staticSuggestionItems)
  {
    [v3 unionSet:staticSuggestionItems];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
    [v3 unionSet:v5];
  }

  customSuggestionItems = [(HFActionSetSuggestionItemProvider *)self customSuggestionItems];
  if (customSuggestionItems)
  {
    [v3 unionSet:customSuggestionItems];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
    [v3 unionSet:v7];
  }

  return v3;
}

@end