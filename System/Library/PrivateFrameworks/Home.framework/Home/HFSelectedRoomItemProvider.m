@interface HFSelectedRoomItemProvider
- (HFSelectedRoomItemProvider)init;
- (HFSelectedRoomItemProvider)initWithHome:(id)a3 serviceLikeBuilder:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)items;
- (id)reloadItems;
@end

@implementation HFSelectedRoomItemProvider

- (HFSelectedRoomItemProvider)initWithHome:(id)a3 serviceLikeBuilder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFSelectedRoomItemProvider;
  v9 = [(HFItemProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_serviceLikeBuilder, a4);
  }

  return v10;
}

- (HFSelectedRoomItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_serviceLikeBuilder_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFSelectedRoomItemProvider.m" lineNumber:35 description:{@"%s is unavailable; use %@ instead", "-[HFSelectedRoomItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFSelectedRoomItemProvider *)self home];
  v6 = [(HFSelectedRoomItemProvider *)self serviceLikeBuilder];
  v7 = [v4 initWithHome:v5 serviceLikeBuilder:v6];

  return v7;
}

- (id)reloadItems
{
  v3 = [(HFSelectedRoomItemProvider *)self roomBuilderItem];
  v4 = [v3 roomBuilder];
  v5 = [(HFSelectedRoomItemProvider *)self serviceLikeBuilder];
  v6 = [v5 room];

  v7 = [(HFSelectedRoomItemProvider *)self filter];

  if (v7)
  {
    v8 = [(HFSelectedRoomItemProvider *)self filter];
    if ((v8)[2](v8, v6))
    {
      v9 = v6;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v6 = v10;
  }

  if (v4 == v6)
  {
    v11 = [v4 isEqual:v6] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = [MEMORY[0x277CBEB58] set];
  v13 = [MEMORY[0x277CBEB58] set];
  v14 = [MEMORY[0x277CBEB58] set];
  if (v6 && (v3 == 0) | v11 & 1)
  {
    v15 = [[HFRoomBuilderItem alloc] initWithRoomBuilder:v6];
    [v12 addObject:v15];
    [(HFSelectedRoomItemProvider *)self setRoomBuilderItem:v15];
  }

  if (v3 && ((v11 ^ 1) & 1) == 0)
  {
    [v14 addObject:v3];
  }

  if (!((v3 == 0) | v11 & 1))
  {
    [v13 addObject:v3];
  }

  v16 = [[HFItemProviderReloadResults alloc] initWithAddedItems:v12 removedItems:v14 existingItems:v13];
  v17 = [MEMORY[0x277D2C900] futureWithResult:v16];

  return v17;
}

- (id)items
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(HFSelectedRoomItemProvider *)self roomBuilderItem];
  v4 = [v2 na_setWithSafeObject:v3];

  return v4;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFSelectedRoomItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"room"];

  return v3;
}

@end