@interface HFActionSetSuggestionItemProvider
- (HFActionSetSuggestionItemProvider)initWithHome:(id)a3;
- (id)_builtInActionSetOfType:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)items;
- (id)reloadItems;
- (void)setIncludeExistingActionSets:(BOOL)a3;
- (void)setPersistAddedSuggestions:(BOOL)a3;
- (void)setServiceLikeItem:(id)a3;
@end

@implementation HFActionSetSuggestionItemProvider

- (HFActionSetSuggestionItemProvider)initWithHome:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v27.receiver = self;
  v27.super_class = HFActionSetSuggestionItemProvider;
  v6 = [(HFItemProvider *)&v27 init];
  v7 = v6;
  if (v6)
  {
    v22 = v5;
    objc_storeStrong(&v6->_home, a3);
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
            v17 = [(HFActionSetSuggestionItemProvider *)v7 home];
            v18 = [(HFActionSetSuggestionItem *)v16 initWithHome:v17 actionSet:v15];

            [v18 setIncludeExistingActionSets:[(HFActionSetSuggestionItemProvider *)v7 includeExistingActionSets]];
            [v18 setPersistAddedSuggestions:[(HFActionSetSuggestionItemProvider *)v7 persistAddedSuggestions]];
            [v8 addObject:v18];
          }

          else
          {
            v18 = HFLogForCategory(0x2CuLL);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = [(HFActionSetSuggestionItemProvider *)v7 home];
              *buf = 138412546;
              v29 = v14;
              v30 = 2112;
              v31 = v19;
              _os_log_error_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_ERROR, "No action set found for builtin type %@ in home %@", buf, 0x16u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v32 count:16];
      }

      while (v11);
    }

    [(HFActionSetSuggestionItemProvider *)v7 setStaticSuggestionItems:v8];
    v5 = v22;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)setIncludeExistingActionSets:(BOOL)a3
{
  self->_includeExistingActionSets = a3;
  v4 = [(HFActionSetSuggestionItemProvider *)self staticSuggestionItems];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__HFActionSetSuggestionItemProvider_setIncludeExistingActionSets___block_invoke;
  v5[3] = &__block_descriptor_33_e35_v16__0__HFActionSetSuggestionItem_8l;
  v6 = a3;
  [v4 na_each:v5];
}

- (void)setPersistAddedSuggestions:(BOOL)a3
{
  self->_persistAddedSuggestions = a3;
  v4 = [(HFActionSetSuggestionItemProvider *)self staticSuggestionItems];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__HFActionSetSuggestionItemProvider_setPersistAddedSuggestions___block_invoke;
  v5[3] = &__block_descriptor_33_e35_v16__0__HFActionSetSuggestionItem_8l;
  v6 = a3;
  [v4 na_each:v5];
}

- (void)setServiceLikeItem:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_serviceLikeItem, a3);
  v6 = [(HFActionSetSuggestionItemProvider *)self staticSuggestionItems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HFActionSetSuggestionItemProvider_setServiceLikeItem___block_invoke;
  v8[3] = &unk_277DF7C68;
  v9 = v5;
  v7 = v5;
  [v6 na_each:v8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFActionSetSuggestionItemProvider *)self home];
  v6 = [v4 initWithHome:v5];

  return v6;
}

- (id)_builtInActionSetOfType:(id)a3
{
  v4 = a3;
  v5 = [(HFActionSetSuggestionItemProvider *)self home];
  v6 = [v5 actionSets];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__HFActionSetSuggestionItemProvider__builtInActionSetOfType___block_invoke;
  v10[3] = &unk_277DF4280;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

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
    v3 = 0;
  }

  else
  {
    v3 = [(HFActionSetSuggestionItemProvider *)self staticSuggestionItems];
  }

  if ([(HFActionSetSuggestionItemProvider *)self hasProvidedStaticSuggestionItems])
  {
    v4 = [(HFActionSetSuggestionItemProvider *)self staticSuggestionItems];
  }

  else
  {
    v4 = 0;
  }

  [(HFActionSetSuggestionItemProvider *)self setHasProvidedStaticSuggestionItems:1];
  v5 = [(HFActionSetSuggestionItemProvider *)self home];
  v6 = [v5 actionSets];
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
  v7 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v6 filter:v16 itemMap:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__HFActionSetSuggestionItemProvider_reloadItems__block_invoke_3;
  v12[3] = &unk_277DF7CB8;
  v12[4] = self;
  v13 = v3;
  v14 = v4;
  v8 = v4;
  v9 = v3;
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
  v4 = [(HFActionSetSuggestionItemProvider *)self staticSuggestionItems];
  if (v4)
  {
    [v3 unionSet:v4];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
    [v3 unionSet:v5];
  }

  v6 = [(HFActionSetSuggestionItemProvider *)self customSuggestionItems];
  if (v6)
  {
    [v3 unionSet:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
    [v3 unionSet:v7];
  }

  return v3;
}

@end