@interface HFSelectedRoomItemProvider
- (HFSelectedRoomItemProvider)init;
- (HFSelectedRoomItemProvider)initWithHome:(id)home serviceLikeBuilder:(id)builder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)items;
- (id)reloadItems;
@end

@implementation HFSelectedRoomItemProvider

- (HFSelectedRoomItemProvider)initWithHome:(id)home serviceLikeBuilder:(id)builder
{
  homeCopy = home;
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = HFSelectedRoomItemProvider;
  v9 = [(HFItemProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_serviceLikeBuilder, builder);
  }

  return v10;
}

- (HFSelectedRoomItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_serviceLikeBuilder_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFSelectedRoomItemProvider.m" lineNumber:35 description:{@"%s is unavailable; use %@ instead", "-[HFSelectedRoomItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFSelectedRoomItemProvider *)self home];
  serviceLikeBuilder = [(HFSelectedRoomItemProvider *)self serviceLikeBuilder];
  v7 = [v4 initWithHome:home serviceLikeBuilder:serviceLikeBuilder];

  return v7;
}

- (id)reloadItems
{
  roomBuilderItem = [(HFSelectedRoomItemProvider *)self roomBuilderItem];
  roomBuilder = [roomBuilderItem roomBuilder];
  serviceLikeBuilder = [(HFSelectedRoomItemProvider *)self serviceLikeBuilder];
  room = [serviceLikeBuilder room];

  filter = [(HFSelectedRoomItemProvider *)self filter];

  if (filter)
  {
    filter2 = [(HFSelectedRoomItemProvider *)self filter];
    if ((filter2)[2](filter2, room))
    {
      v9 = room;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    room = v10;
  }

  if (roomBuilder == room)
  {
    v11 = [roomBuilder isEqual:room] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = [MEMORY[0x277CBEB58] set];
  v13 = [MEMORY[0x277CBEB58] set];
  v14 = [MEMORY[0x277CBEB58] set];
  if (room && (roomBuilderItem == 0) | v11 & 1)
  {
    v15 = [[HFRoomBuilderItem alloc] initWithRoomBuilder:room];
    [v12 addObject:v15];
    [(HFSelectedRoomItemProvider *)self setRoomBuilderItem:v15];
  }

  if (roomBuilderItem && ((v11 ^ 1) & 1) == 0)
  {
    [v14 addObject:roomBuilderItem];
  }

  if (!((roomBuilderItem == 0) | v11 & 1))
  {
    [v13 addObject:roomBuilderItem];
  }

  v16 = [[HFItemProviderReloadResults alloc] initWithAddedItems:v12 removedItems:v14 existingItems:v13];
  v17 = [MEMORY[0x277D2C900] futureWithResult:v16];

  return v17;
}

- (id)items
{
  v2 = MEMORY[0x277CBEB98];
  roomBuilderItem = [(HFSelectedRoomItemProvider *)self roomBuilderItem];
  v4 = [v2 na_setWithSafeObject:roomBuilderItem];

  return v4;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFSelectedRoomItemProvider;
  invalidationReasons = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:@"room"];

  return v3;
}

@end