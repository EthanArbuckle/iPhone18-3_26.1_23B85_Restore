@interface HFActionSetSuggestionItem
- (HFActionSetSuggestionItem)init;
- (HFActionSetSuggestionItem)initWithHome:(id)a3 actionSet:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFActionSetSuggestionItem

- (HFActionSetSuggestionItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFActionSetSuggestionItem.m" lineNumber:32 description:@"Use -initWithHome:builtInActionSetType:"];

  return 0;
}

- (HFActionSetSuggestionItem)initWithHome:(id)a3 actionSet:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFActionSetSuggestionItem;
  v9 = [(HFActionSetSuggestionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_actionSet, a4);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v6 = [MEMORY[0x277D2C900] futureWithResult:v5];
  v7 = [(HFActionSetSuggestionItem *)self actionSet];

  if (v7)
  {
    v8 = MEMORY[0x277CBEB98];
    v9 = [(HFActionSetSuggestionItem *)self actionSet];
    v10 = [v8 setWithObject:v9];
    [(HFMutableItemUpdateOutcome *)v5 setObject:v10 forKeyedSubscript:@"dependentHomeKitObjects"];

    v11 = [(HFActionSetSuggestionItem *)self serviceLikeItem];

    if (v11)
    {
      v12 = [(HFActionSetSuggestionItem *)self serviceLikeItem];
      v13 = [v12 services];
      v14 = [v13 allObjects];
      v11 = [HFActionSetSuggestionFilter filterWithServices:v14];
    }

    v15 = [HFActionSetSuggestionVendor alloc];
    v16 = [(HFActionSetSuggestionItem *)self home];
    v17 = [(HFActionSetSuggestionItem *)self actionSet];
    v51 = v11;
    v18 = [(HFActionSetSuggestionVendor *)v15 initWithHome:v16 actionSet:v17 filter:v11];

    v54 = 0;
    v19 = [(HFActionSetSuggestionVendor *)v18 buildWithOutDependentServiceTypes:&v54];
    v20 = v54;
    [(HFMutableItemUpdateOutcome *)v5 setObject:v20 forKeyedSubscript:@"dependentServiceTypes"];
    [(HFMutableItemUpdateOutcome *)v5 setObject:v19 forKeyedSubscript:@"actionSetBuilder"];
    v21 = [v19 name];
    [(HFMutableItemUpdateOutcome *)v5 setObject:v21 forKeyedSubscript:@"title"];

    v22 = [(HFActionSetSuggestionItem *)self actionSet];
    v23 = [v22 hf_iconDescriptor];
    [(HFMutableItemUpdateOutcome *)v5 setObject:v23 forKeyedSubscript:@"icon"];

    v24 = [v19 actions];
    v25 = [v24 na_any:&__block_literal_global_50];

    if ([(HFActionSetSuggestionItem *)self includeExistingActionSets])
    {
      v26 = 0;
    }

    else
    {
      v28 = [(HFActionSetSuggestionItem *)self actionSet];
      [v28 actions];
      v50 = v5;
      v29 = v19;
      v30 = v20;
      v31 = v6;
      v32 = v18;
      v34 = v33 = v4;
      v26 = [v34 count] != 0;

      v4 = v33;
      v18 = v32;
      v6 = v31;
      v20 = v30;
      v19 = v29;
      v5 = v50;
    }

    if ([(HFActionSetSuggestionItem *)self persistAddedSuggestions])
    {
      if (v25)
      {
        [(HFActionSetSuggestionItem *)self setHasEverHadValidSuggestion:1];
      }

      v35 = [(HFActionSetSuggestionItem *)self hasEverHadValidSuggestion];
      LOBYTE(v25) = v35 | v25;
      v26 &= !v35;
    }

    if ((v25 & 1) == 0 || v26)
    {
      [(HFMutableItemUpdateOutcome *)v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    else
    {
      v36 = v4;
      v37 = [(HFActionSetSuggestionItem *)self serviceLikeItem];

      if (v37)
      {
        v38 = [(HFActionSetSuggestionItem *)self serviceLikeItem];
        v39 = [[HFActionSetValueSource alloc] initWithActionSetBuilder:v19];
        v40 = [v38 copyWithValueSource:v39];

        v41 = [HFServiceActionItem alloc];
        v42 = [(HFActionSetSuggestionItem *)self home];
        v43 = [(HFServiceActionItem *)v41 initWithHome:v42 containingItem:v40];

        v44 = MEMORY[0x277CBEB98];
        v45 = [v19 actions];
        v46 = [v44 setWithArray:v45];
        [(HFServiceActionItem *)v43 setActionBuilders:v46];

        v47 = [(HFItem *)v43 updateWithOptions:v36];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __57__HFActionSetSuggestionItem__subclass_updateWithOptions___block_invoke_2;
        v52[3] = &unk_277DF43A8;
        v53 = v5;
        v48 = [v47 flatMap:v52];

        v4 = v36;
        v6 = v48;
      }

      else
      {
        v4 = v36;
      }
    }

    v27 = v6;
  }

  else
  {
    [(HFMutableItemUpdateOutcome *)v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    v27 = v6;
  }

  return v27;
}

BOOL __57__HFActionSetSuggestionItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 action];
  v3 = v2 == 0;

  return v3;
}

uint64_t __57__HFActionSetSuggestionItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"description"];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"description"];

  v4 = MEMORY[0x277D2C900];
  v5 = *(a1 + 32);

  return [v4 futureWithResult:v5];
}

@end