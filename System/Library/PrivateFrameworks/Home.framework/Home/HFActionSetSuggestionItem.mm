@interface HFActionSetSuggestionItem
- (HFActionSetSuggestionItem)init;
- (HFActionSetSuggestionItem)initWithHome:(id)home actionSet:(id)set;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFActionSetSuggestionItem

- (HFActionSetSuggestionItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFActionSetSuggestionItem.m" lineNumber:32 description:@"Use -initWithHome:builtInActionSetType:"];

  return 0;
}

- (HFActionSetSuggestionItem)initWithHome:(id)home actionSet:(id)set
{
  homeCopy = home;
  setCopy = set;
  v12.receiver = self;
  v12.super_class = HFActionSetSuggestionItem;
  v9 = [(HFActionSetSuggestionItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_actionSet, set);
  }

  return v10;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v6 = [MEMORY[0x277D2C900] futureWithResult:v5];
  actionSet = [(HFActionSetSuggestionItem *)self actionSet];

  if (actionSet)
  {
    v8 = MEMORY[0x277CBEB98];
    actionSet2 = [(HFActionSetSuggestionItem *)self actionSet];
    v10 = [v8 setWithObject:actionSet2];
    [(HFMutableItemUpdateOutcome *)v5 setObject:v10 forKeyedSubscript:@"dependentHomeKitObjects"];

    serviceLikeItem = [(HFActionSetSuggestionItem *)self serviceLikeItem];

    if (serviceLikeItem)
    {
      serviceLikeItem2 = [(HFActionSetSuggestionItem *)self serviceLikeItem];
      services = [serviceLikeItem2 services];
      allObjects = [services allObjects];
      serviceLikeItem = [HFActionSetSuggestionFilter filterWithServices:allObjects];
    }

    v15 = [HFActionSetSuggestionVendor alloc];
    home = [(HFActionSetSuggestionItem *)self home];
    actionSet3 = [(HFActionSetSuggestionItem *)self actionSet];
    v51 = serviceLikeItem;
    v18 = [(HFActionSetSuggestionVendor *)v15 initWithHome:home actionSet:actionSet3 filter:serviceLikeItem];

    v54 = 0;
    v19 = [(HFActionSetSuggestionVendor *)v18 buildWithOutDependentServiceTypes:&v54];
    v20 = v54;
    [(HFMutableItemUpdateOutcome *)v5 setObject:v20 forKeyedSubscript:@"dependentServiceTypes"];
    [(HFMutableItemUpdateOutcome *)v5 setObject:v19 forKeyedSubscript:@"actionSetBuilder"];
    name = [v19 name];
    [(HFMutableItemUpdateOutcome *)v5 setObject:name forKeyedSubscript:@"title"];

    actionSet4 = [(HFActionSetSuggestionItem *)self actionSet];
    hf_iconDescriptor = [actionSet4 hf_iconDescriptor];
    [(HFMutableItemUpdateOutcome *)v5 setObject:hf_iconDescriptor forKeyedSubscript:@"icon"];

    actions = [v19 actions];
    v25 = [actions na_any:&__block_literal_global_50];

    if ([(HFActionSetSuggestionItem *)self includeExistingActionSets])
    {
      v26 = 0;
    }

    else
    {
      actionSet5 = [(HFActionSetSuggestionItem *)self actionSet];
      [actionSet5 actions];
      v50 = v5;
      v29 = v19;
      v30 = v20;
      v31 = v6;
      v32 = v18;
      v34 = v33 = optionsCopy;
      v26 = [v34 count] != 0;

      optionsCopy = v33;
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

      hasEverHadValidSuggestion = [(HFActionSetSuggestionItem *)self hasEverHadValidSuggestion];
      LOBYTE(v25) = hasEverHadValidSuggestion | v25;
      v26 &= !hasEverHadValidSuggestion;
    }

    if ((v25 & 1) == 0 || v26)
    {
      [(HFMutableItemUpdateOutcome *)v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    else
    {
      v36 = optionsCopy;
      serviceLikeItem3 = [(HFActionSetSuggestionItem *)self serviceLikeItem];

      if (serviceLikeItem3)
      {
        serviceLikeItem4 = [(HFActionSetSuggestionItem *)self serviceLikeItem];
        v39 = [[HFActionSetValueSource alloc] initWithActionSetBuilder:v19];
        v40 = [serviceLikeItem4 copyWithValueSource:v39];

        v41 = [HFServiceActionItem alloc];
        home2 = [(HFActionSetSuggestionItem *)self home];
        v43 = [(HFServiceActionItem *)v41 initWithHome:home2 containingItem:v40];

        v44 = MEMORY[0x277CBEB98];
        actions2 = [v19 actions];
        v46 = [v44 setWithArray:actions2];
        [(HFServiceActionItem *)v43 setActionBuilders:v46];

        v47 = [(HFItem *)v43 updateWithOptions:v36];
        v52[0] = MEMORY[0x277D85DD0];
        v52[1] = 3221225472;
        v52[2] = __57__HFActionSetSuggestionItem__subclass_updateWithOptions___block_invoke_2;
        v52[3] = &unk_277DF43A8;
        v53 = v5;
        v48 = [v47 flatMap:v52];

        optionsCopy = v36;
        v6 = v48;
      }

      else
      {
        optionsCopy = v36;
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