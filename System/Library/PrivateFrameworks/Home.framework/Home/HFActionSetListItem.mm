@interface HFActionSetListItem
- (HFActionSetListItem)init;
- (HFActionSetListItem)initWithHome:(id)home room:(id)room;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFActionSetListItem

- (HFActionSetListItem)initWithHome:(id)home room:(id)room
{
  homeCopy = home;
  roomCopy = room;
  v12.receiver = self;
  v12.super_class = HFActionSetListItem;
  v9 = [(HFActionSetListItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_room, room);
  }

  return v10;
}

- (HFActionSetListItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFActionSetListItem.m" lineNumber:36 description:@"Use -initWithHome:room:"];

  return 0;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  v5 = [HFActionSetItemProvider alloc];
  home = [(HFActionSetListItem *)self home];
  v7 = [(HFActionSetItemProvider *)v5 initWithHome:home actionSetItemStyle:0];

  room = [(HFActionSetListItem *)self room];
  [(HFActionSetItemProvider *)v7 setRoom:room];

  [(HFActionSetItemProvider *)v7 setOnlyShowsFavorites:[(HFActionSetListItem *)self onlyShowsFavorites]];
  reloadItems = [(HFActionSetItemProvider *)v7 reloadItems];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__HFActionSetListItem__subclass_updateWithOptions___block_invoke;
  v19[3] = &unk_277DF2D08;
  v10 = v4;
  v20 = v10;
  v11 = [reloadItems addFailureBlock:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__HFActionSetListItem__subclass_updateWithOptions___block_invoke_2;
  v17[3] = &unk_277DF9D68;
  v17[4] = self;
  v12 = v10;
  v18 = v12;
  v13 = [reloadItems addSuccessBlock:v17];
  v14 = v18;
  v15 = v12;

  return v12;
}

void __51__HFActionSetListItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v19 = [v3 dictionary];
  v5 = [v4 addedItems];

  v6 = [v5 count];
  if (v6)
  {
    v7 = _HFLocalizedStringWithDefaultValue(@"HFActionSetListTitle", @"HFActionSetListTitle", 1);
    [v19 setObject:v7 forKeyedSubscript:@"title"];
  }

  else
  {
    [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
  }

  v8 = [*(a1 + 32) home];
  v9 = [v8 hf_shouldBlockCurrentUserFromHome];

  if (v9)
  {
    [v19 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
  }

  v10 = [MEMORY[0x277CBEB58] set];
  v11 = [*(a1 + 32) home];
  [v10 addObject:v11];

  v12 = [*(a1 + 32) room];

  if (v12)
  {
    v13 = [*(a1 + 32) room];
    v14 = [v13 accessories];
    [v10 addObjectsFromArray:v14];

    v15 = [*(a1 + 32) room];
    [v10 addObject:v15];
  }

  [v19 setObject:v10 forKeyedSubscript:@"dependentHomeKitObjects"];
  v16 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v19 setObject:v16 forKeyedSubscript:@"dependentHomeKitClasses"];

  v17 = *(a1 + 40);
  v18 = [HFItemUpdateOutcome outcomeWithResults:v19];
  [v17 finishWithResult:v18];
}

@end