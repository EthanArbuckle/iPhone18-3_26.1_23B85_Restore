@interface HFZoneSuggestionItemProvider
- (HFZoneSuggestionItemProvider)init;
- (HFZoneSuggestionItemProvider)initWithHome:(id)a3;
- (id)_zoneSuggestions;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFZoneSuggestionItemProvider

- (HFZoneSuggestionItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HFZoneSuggestionItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = [MEMORY[0x277CBEB58] set];
    zoneBuilderItems = v7->_zoneBuilderItems;
    v7->_zoneBuilderItems = v8;
  }

  return v7;
}

- (HFZoneSuggestionItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFZoneSuggestionItemProvider.m" lineNumber:35 description:{@"%s is unavailable; use %@ instead", "-[HFZoneSuggestionItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFZoneSuggestionItemProvider *)self home];
  v6 = [v4 initWithHome:v5];

  return v6;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__HFZoneSuggestionItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DFEF90;
  objc_copyWeak(&v21, &location);
  v3 = _Block_copy(aBlock);
  v4 = [(HFZoneSuggestionItemProvider *)self _zoneSuggestions];
  v5 = [v4 allObjects];

  v6 = [(HFZoneSuggestionItemProvider *)self home];
  v7 = [v6 zones];
  v8 = [v7 count];

  v9 = [v5 count];
  if (v9 >= 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v9;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      --v10;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = [v5 sortedArrayUsingSelector:sel_localizedStandardCompare_];
  v12 = v11;
  if (v10)
  {
    if ([v11 count] <= v10)
    {
      goto LABEL_13;
    }

    v13 = [v12 subarrayWithRange:{0, v10}];
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  v12 = v13;
LABEL_13:
  v14 = [(HFZoneSuggestionItemProvider *)self filter];
  v15 = [(HFItemProvider *)self reloadItemsWithObjects:v12 keyAdaptor:&__block_literal_global_178 itemAdaptor:&__block_literal_global_15_7 filter:v14 itemMap:v3];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__HFZoneSuggestionItemProvider_reloadItems__block_invoke_4;
  v18[3] = &unk_277DF30B8;
  objc_copyWeak(&v19, &location);
  v16 = [v15 flatMap:v18];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v16;
}

HFZoneBuilderItem *__43__HFZoneSuggestionItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [HFZoneBuilder alloc];
  v6 = [WeakRetained home];
  v7 = [(HFItemBuilder *)v5 initWithHome:v6];

  [(HFZoneBuilder *)v7 setName:v3];
  v8 = [[HFZoneBuilderItem alloc] initWithZoneBuilder:v7];

  return v8;
}

id __43__HFZoneSuggestionItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 zoneBuilder];
  v3 = [v2 name];

  return v3;
}

id __43__HFZoneSuggestionItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained zoneBuilderItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained zoneBuilderItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFZoneSuggestionItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"room"];

  return v3;
}

- (id)_zoneSuggestions
{
  v2 = [(HFZoneSuggestionItemProvider *)self home];
  v3 = [v2 zones];
  v4 = [v3 copy];

  v5 = MEMORY[0x277CBEB98];
  v6 = _HFLocalizedStringWithDefaultValue(@"HFZoneSuggestionMainLevel", @"HFZoneSuggestionMainLevel", 1);
  v7 = _HFLocalizedStringWithDefaultValue(@"HFZoneSuggestionBasement", @"HFZoneSuggestionBasement", 1);
  v8 = _HFLocalizedStringWithDefaultValue(@"HFZoneSuggestionOutside", @"HFZoneSuggestionOutside", 1);
  v9 = [v5 setWithObjects:{v6, v7, v8, 0}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__HFZoneSuggestionItemProvider__zoneSuggestions__block_invoke;
  v13[3] = &unk_277DF3130;
  v14 = v4;
  v10 = v4;
  v11 = [v9 na_filter:v13];

  return v11;
}

uint64_t __48__HFZoneSuggestionItemProvider__zoneSuggestions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HFZoneSuggestionItemProvider__zoneSuggestions__block_invoke_2;
  v7[3] = &unk_277DF7EB0;
  v8 = v3;
  v5 = v3;
  LODWORD(v4) = [v4 na_any:v7];

  return v4 ^ 1;
}

uint64_t __48__HFZoneSuggestionItemProvider__zoneSuggestions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 uppercaseString];
  v5 = [*(a1 + 32) uppercaseString];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

@end