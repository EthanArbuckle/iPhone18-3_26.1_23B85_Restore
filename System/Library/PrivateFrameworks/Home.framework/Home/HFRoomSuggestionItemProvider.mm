@interface HFRoomSuggestionItemProvider
- (HFRoomSuggestionItemProvider)init;
- (HFRoomSuggestionItemProvider)initWithHome:(id)home;
- (HFRoomSuggestionItemProvider)initWithHome:(id)home suggestionVendor:(id)vendor;
- (id)_filteredSuggestions;
- (id)_filteredSupplementaryRoomBuilders;
- (id)_keyForRoomName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFRoomSuggestionItemProvider

- (HFRoomSuggestionItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v5 = +[HFDefaultRoomSuggestionVendor homeAppSuggestionVendor];
  v6 = [(HFRoomSuggestionItemProvider *)self initWithHome:homeCopy suggestionVendor:v5];

  return v6;
}

- (HFRoomSuggestionItemProvider)initWithHome:(id)home suggestionVendor:(id)vendor
{
  homeCopy = home;
  vendorCopy = vendor;
  v12.receiver = self;
  v12.super_class = HFRoomSuggestionItemProvider;
  v9 = [(HFItemProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    v10->_suggestedRoomLimit = 3;
    objc_storeStrong(&v10->_suggestionVendor, vendor);
  }

  return v10;
}

- (HFRoomSuggestionItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFRoomSuggestionItemProvider.m" lineNumber:42 description:{@"%s is unavailable; use %@ instead", "-[HFRoomSuggestionItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFRoomSuggestionItemProvider *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (id)reloadItems
{
  suggestionItems = [(HFRoomSuggestionItemProvider *)self suggestionItems];
  v4 = [suggestionItems na_map:&__block_literal_global_219];

  _filteredSuggestions = [(HFRoomSuggestionItemProvider *)self _filteredSuggestions];
  allObjects = [_filteredSuggestions allObjects];
  v6 = +[HFRoomSuggestion priorityComparator];
  v7 = [allObjects sortedArrayUsingComparator:v6];
  v8 = [v7 mutableCopy];

  while (1)
  {
    v9 = [v8 count];
    if (v9 <= [(HFRoomSuggestionItemProvider *)self suggestedRoomLimit])
    {
      break;
    }

    [v8 removeLastObject];
  }

  v10 = MEMORY[0x277CBEB58];
  v11 = [v8 na_map:&__block_literal_global_12_11];
  v12 = [v10 setWithArray:v11];

  _filteredSupplementaryRoomBuilders = [(HFRoomSuggestionItemProvider *)self _filteredSupplementaryRoomBuilders];
  v14 = [_filteredSupplementaryRoomBuilders na_dictionaryWithKeyGenerator:&__block_literal_global_15_11];

  allKeys = [v14 allKeys];
  [v12 addObjectsFromArray:allKeys];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__HFRoomSuggestionItemProvider_reloadItems__block_invoke_4;
  aBlock[3] = &unk_277E01488;
  aBlock[4] = self;
  v16 = _Block_copy(aBlock);
  v17 = [HFSetDiff diffFromSet:v4 toSet:v12];
  additions = [v17 additions];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __43__HFRoomSuggestionItemProvider_reloadItems__block_invoke_6;
  v31[3] = &unk_277E014B0;
  v32 = v14;
  selfCopy = self;
  v19 = v14;
  v20 = [additions na_map:v31];

  [v17 deletions];
  v21 = v29 = v4;
  v22 = [v21 na_map:v16];

  updates = [v17 updates];
  v24 = [updates na_map:v16];

  v25 = [v24 setByAddingObjectsFromSet:v20];
  [(HFRoomSuggestionItemProvider *)self setSuggestionItems:v25];

  v26 = [[HFItemProviderReloadResults alloc] initWithAddedItems:v20 removedItems:v22 existingItems:v24];
  v27 = [MEMORY[0x277D2C900] futureWithResult:v26];

  return v27;
}

id __43__HFRoomSuggestionItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 roomBuilder];
  v3 = [v2 name];

  return v3;
}

id __43__HFRoomSuggestionItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) suggestionItems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HFRoomSuggestionItemProvider_reloadItems__block_invoke_5;
  v8[3] = &unk_277E01460;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_firstObjectPassingTest:v8];

  return v6;
}

uint64_t __43__HFRoomSuggestionItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 roomBuilder];
  v4 = [v3 name];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

HFRoomBuilderItem *__43__HFRoomSuggestionItemProvider_reloadItems__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v5 = [HFRoomBuilder alloc];
    v6 = [*(a1 + 40) home];
    v4 = [(HFItemBuilder *)v5 initWithHome:v6];

    [(HFRoomBuilder *)v4 setName:v3];
  }

  v7 = [[HFRoomBuilderItem alloc] initWithRoomBuilder:v4];

  return v7;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFRoomSuggestionItemProvider;
  invalidationReasons = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:@"room"];

  return v3;
}

- (id)_filteredSupplementaryRoomBuilders
{
  supplementaryRoomBuilders = [(HFRoomSuggestionItemProvider *)self supplementaryRoomBuilders];
  v3 = [supplementaryRoomBuilders na_filter:&__block_literal_global_27_14];

  return v3;
}

BOOL __66__HFRoomSuggestionItemProvider__filteredSupplementaryRoomBuilders__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 room];
  v3 = v2 == 0;

  return v3;
}

- (id)_filteredSuggestions
{
  suggestionVendor = [(HFRoomSuggestionItemProvider *)self suggestionVendor];
  roomSuggestions = [suggestionVendor roomSuggestions];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HFRoomSuggestionItemProvider__filteredSuggestions__block_invoke;
  v7[3] = &unk_277E01540;
  v7[4] = self;
  v5 = [roomSuggestions na_filter:v7];

  return v5;
}

uint64_t __52__HFRoomSuggestionItemProvider__filteredSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 name];
  v6 = [v3 _keyForRoomName:v5];

  v7 = [v4 aliases];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__HFRoomSuggestionItemProvider__filteredSuggestions__block_invoke_2;
  v21[3] = &unk_277DF3B58;
  v21[4] = *(a1 + 32);
  v8 = [v7 na_map:v21];

  v9 = MEMORY[0x277CBEB58];
  v10 = [*(a1 + 32) home];
  v11 = [v10 rooms];
  v12 = [v11 na_map:&__block_literal_global_31_7];
  v13 = [v9 setWithArray:v12];

  v14 = [*(a1 + 32) _filteredSupplementaryRoomBuilders];
  v15 = [v14 na_map:&__block_literal_global_33_5];
  [v13 unionSet:v15];

  if ([v13 count])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__HFRoomSuggestionItemProvider__filteredSuggestions__block_invoke_5;
    v18[3] = &unk_277E01518;
    v18[4] = *(a1 + 32);
    v19 = v8;
    v20 = v6;
    v16 = [v13 na_all:v18];
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

uint64_t __52__HFRoomSuggestionItemProvider__filteredSuggestions__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _keyForRoomName:a2];
  v4 = [*(a1 + 40) setByAddingObject:*(a1 + 48)];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__HFRoomSuggestionItemProvider__filteredSuggestions__block_invoke_6;
  v8[3] = &unk_277DF3130;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_all:v8];

  return v6;
}

- (id)_keyForRoomName:(id)name
{
  v3 = [name stringByApplyingTransform:@"Any-Latin Latin-ASCII; Any-Lower" reverse:0];;
  v4 = _HFLocalizedStringWithDefaultValue(@"HFRoomSuggestionRoomKey", @"HFRoomSuggestionRoomKey", 1);
  lowercaseString = [v4 lowercaseString];
  v6 = [v3 stringByReplacingOccurrencesOfString:lowercaseString withString:&stru_2824B1A78];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v8 = [v6 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
  v9 = [v8 componentsJoinedByString:&stru_2824B1A78];

  return v9;
}

@end