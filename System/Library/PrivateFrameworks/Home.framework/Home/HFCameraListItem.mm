@interface HFCameraListItem
- (HFCameraListItem)init;
- (HFCameraListItem)initWithHome:(id)home room:(id)room;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFCameraListItem

- (HFCameraListItem)initWithHome:(id)home room:(id)room
{
  homeCopy = home;
  roomCopy = room;
  v12.receiver = self;
  v12.super_class = HFCameraListItem;
  v9 = [(HFCameraListItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_room, room);
  }

  return v10;
}

- (HFCameraListItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_room_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraListItem.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HFCameraListItem init]", v5}];

  return 0;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  v5 = [HFCameraItemProvider alloc];
  home = [(HFCameraListItem *)self home];
  v7 = [(HFCameraItemProvider *)v5 initWithHome:home];

  room = [(HFCameraListItem *)self room];
  [(HFCameraItemProvider *)v7 setRoom:room];

  [(HFCameraItemProvider *)v7 setOnlyShowsFavorites:[(HFCameraListItem *)self onlyShowsFavorites]];
  reloadItems = [(HFCameraItemProvider *)v7 reloadItems];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__HFCameraListItem__subclass_updateWithOptions___block_invoke;
  v19[3] = &unk_277DF2D08;
  v10 = v4;
  v20 = v10;
  v11 = [reloadItems addFailureBlock:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __48__HFCameraListItem__subclass_updateWithOptions___block_invoke_2;
  v17[3] = &unk_277DF9D68;
  v17[4] = self;
  v12 = v10;
  v18 = v12;
  v13 = [reloadItems addSuccessBlock:v17];
  v14 = v18;
  v15 = v12;

  return v12;
}

void __48__HFCameraListItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = a2;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [v19 addedItems];
  v6 = [v5 count];

  if (v6)
  {
    v7 = _HFLocalizedStringWithDefaultValue(@"HFCameraListTitle", @"HFCameraListTitle", 1);
    [v3 setObject:v7 forKeyedSubscript:@"title"];

    v8 = [v19 addedItems];
    v9 = [v8 na_map:&__block_literal_global_83];

    if ([v9 count])
    {
      v10 = [v9 allObjects];
      [v4 addObjectsFromArray:v10];
    }
  }

  else
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
  }

  v11 = [*(a1 + 32) home];
  v12 = [v11 hf_shouldBlockCurrentUserFromHome];

  if (v12)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
  }

  v13 = [*(a1 + 32) home];
  [v4 addObject:v13];

  v14 = [*(a1 + 32) room];

  if (v14)
  {
    v15 = [*(a1 + 32) room];
    [v4 addObject:v15];
  }

  [v3 setObject:v4 forKeyedSubscript:@"dependentHomeKitObjects"];
  v16 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v3 setObject:v16 forKeyedSubscript:@"dependentHomeKitClasses"];

  v17 = *(a1 + 40);
  v18 = [HFItemUpdateOutcome outcomeWithResults:v3];
  [v17 finishWithResult:v18];
}

id __48__HFCameraListItem__subclass_updateWithOptions___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 profile];
  v7 = [v6 accessory];

  return v7;
}

@end