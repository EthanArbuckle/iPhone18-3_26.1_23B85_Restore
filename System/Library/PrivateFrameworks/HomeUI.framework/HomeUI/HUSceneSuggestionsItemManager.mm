@interface HUSceneSuggestionsItemManager
+ (id)computeNumberOfSuggestionsInHome:(id)home;
+ (id)suggestionsItemProviderInHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_currentSectionIdentifiers;
- (id)_identifierForSection:(unint64_t)section;
- (id)_sectionIdentifierForItem:(id)item;
- (id)_titleForSectionWithIdentifier:(id)identifier;
- (unint64_t)_numberOfSections;
@end

@implementation HUSceneSuggestionsItemManager

+ (id)suggestionsItemProviderInHome:(id)home
{
  v3 = MEMORY[0x277D17E38];
  homeCopy = home;
  v5 = [[v3 alloc] initWithHome:homeCopy andServiceLikeItems:0];

  [v5 setEngineOptions:{objc_msgSend(v5, "engineOptions") | 0x10}];
  [v5 setFilter:&__block_literal_global_85];

  return v5;
}

uint64_t __63__HUSceneSuggestionsItemManager_suggestionsItemProviderInHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actionSetBuilders];
  v3 = [v2 na_all:&__block_literal_global_7];

  return v3;
}

BOOL __63__HUSceneSuggestionsItemManager_suggestionsItemProviderInHome___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 actionSet];
  if (v3)
  {
    v4 = [v2 actionSet];
    v5 = [v4 actions];
    v6 = [v5 count] == 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (id)computeNumberOfSuggestionsInHome:(id)home
{
  homeCopy = home;
  v4 = [objc_opt_class() suggestionsItemProviderInHome:homeCopy];

  reloadItems = [v4 reloadItems];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HUSceneSuggestionsItemManager_computeNumberOfSuggestionsInHome___block_invoke;
  v9[3] = &unk_277DB7F80;
  v10 = v4;
  v6 = v4;
  v7 = [reloadItems flatMap:v9];

  return v7;
}

id __66__HUSceneSuggestionsItemManager_computeNumberOfSuggestionsInHome___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) items];
  v2 = [v1 na_map:&__block_literal_global_10];
  v3 = [v2 allObjects];

  v4 = MEMORY[0x277D2C900];
  v5 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v6 = [v4 combineAllFutures:v3 ignoringErrors:1 scheduler:v5];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HUSceneSuggestionsItemManager_computeNumberOfSuggestionsInHome___block_invoke_3;
  v10[3] = &unk_277DBAFF8;
  v11 = v1;
  v7 = v1;
  v8 = [v6 flatMap:v10];

  return v8;
}

id __66__HUSceneSuggestionsItemManager_computeNumberOfSuggestionsInHome___block_invoke_2(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D13BB0];
  v8[0] = MEMORY[0x277CBEC38];
  v2 = MEMORY[0x277CBEAC0];
  v3 = a2;
  v4 = [v2 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v3 updateWithOptions:v4];

  return v5;
}

id __66__HUSceneSuggestionsItemManager_computeNumberOfSuggestionsInHome___block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v16;
    v6 = *MEMORY[0x277D13FB8];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v8 = [*(*(&v15 + 1) + 8 * i) latestResults];
        v9 = [v8 objectForKeyedSubscript:v6];
        v10 = [v9 BOOLValue];

        v4 += v10 ^ 1u;
      }

      v3 = [v1 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v11 = MEMORY[0x277D2C900];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v13 = [v11 futureWithResult:v12];

  return v13;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  homeCopy = home;
  v6 = [v4 set];
  v7 = objc_alloc(MEMORY[0x277D14B38]);
  v18 = *MEMORY[0x277D13F60];
  v8 = _HULocalizedStringWithDefaultValue(@"HUSceneSuggestionsAddCustomSceneButton", @"HUSceneSuggestionsAddCustomSceneButton", 1);
  v19[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v10 = [v7 initWithResults:v9];
  [(HUSceneSuggestionsItemManager *)self setAddCustomSceneItem:v10];

  addCustomSceneItem = [(HUSceneSuggestionsItemManager *)self addCustomSceneItem];
  [v6 addObject:addCustomSceneItem];

  v12 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v6];
  v13 = [objc_opt_class() suggestionsItemProviderInHome:homeCopy];

  [(HUSceneSuggestionsItemManager *)self setSuggestionItemProvider:v13];
  v17[0] = v12;
  suggestionItemProvider = [(HUSceneSuggestionsItemManager *)self suggestionItemProvider];
  v17[1] = suggestionItemProvider;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

  return v15;
}

- (unint64_t)_numberOfSections
{
  _currentSectionIdentifiers = [(HUSceneSuggestionsItemManager *)self _currentSectionIdentifiers];
  v3 = [_currentSectionIdentifiers count];

  return v3;
}

- (id)_identifierForSection:(unint64_t)section
{
  _currentSectionIdentifiers = [(HUSceneSuggestionsItemManager *)self _currentSectionIdentifiers];
  if ([_currentSectionIdentifiers count] <= section)
  {
    NSLog(&cfstr_ReceivedIdenti.isa, section, [_currentSectionIdentifiers count]);
  }

  if ([_currentSectionIdentifiers count] <= section)
  {
    v5 = 0;
  }

  else
  {
    v5 = [_currentSectionIdentifiers objectAtIndexedSubscript:section];
  }

  return v5;
}

- (id)_titleForSectionWithIdentifier:(id)identifier
{
  if ([identifier isEqualToString:@"HUSceneSuggestionsSectionIdentifierSuggestions"])
  {
    v3 = _HULocalizedStringWithDefaultValue(@"HUSceneSuggestionsSectionHeaderTitle", @"HUSceneSuggestionsSectionHeaderTitle", 1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_sectionIdentifierForItem:(id)item
{
  itemCopy = item;
  addCustomSceneItem = [(HUSceneSuggestionsItemManager *)self addCustomSceneItem];
  v6 = [itemCopy isEqual:addCustomSceneItem];

  if (v6)
  {
    return @"HUSceneSuggestionsSectionIdentifierCustom";
  }

  else
  {
    return @"HUSceneSuggestionsSectionIdentifierSuggestions";
  }
}

- (id)_currentSectionIdentifiers
{
  array = [MEMORY[0x277CBEB18] array];
  suggestionItemProvider = [(HUSceneSuggestionsItemManager *)self suggestionItemProvider];
  items = [suggestionItemProvider items];
  if ([items count])
  {
    suggestionItemProvider2 = [(HUSceneSuggestionsItemManager *)self suggestionItemProvider];
    items2 = [suggestionItemProvider2 items];
    v8 = [items2 na_any:&__block_literal_global_33_0];

    if (v8)
    {
      [array addObject:@"HUSceneSuggestionsSectionIdentifierSuggestions"];
    }
  }

  else
  {
  }

  [array addObject:@"HUSceneSuggestionsSectionIdentifierCustom"];

  return array;
}

uint64_t __59__HUSceneSuggestionsItemManager__currentSectionIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v4 = [MEMORY[0x277CBEC38] isEqual:v3];

  return v4 ^ 1u;
}

@end