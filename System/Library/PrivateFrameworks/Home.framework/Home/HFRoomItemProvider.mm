@interface HFRoomItemProvider
- (HFRoomItemProvider)init;
- (HFRoomItemProvider)initWithHome:(id)home;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFRoomItemProvider

- (HFRoomItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HFRoomItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = [MEMORY[0x277CBEB58] set];
    roomItems = v7->_roomItems;
    v7->_roomItems = v8;
  }

  return v7;
}

- (HFRoomItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFRoomItemProvider.m" lineNumber:34 description:{@"%s is unavailable; use %@ instead", "-[HFRoomItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFRoomItemProvider *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__HFRoomItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DF5228;
  objc_copyWeak(&v13, &location);
  v3 = _Block_copy(aBlock);
  home = [(HFRoomItemProvider *)self home];
  hf_activeRooms = [home hf_activeRooms];

  filter = [(HFRoomItemProvider *)self filter];
  v7 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:hf_activeRooms filter:filter itemMap:v3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__HFRoomItemProvider_reloadItems__block_invoke_2;
  v10[3] = &unk_277DF30B8;
  objc_copyWeak(&v11, &location);
  v8 = [v7 flatMap:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

HFRoomItem *__33__HFRoomItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [HFRoomItem alloc];
  v6 = [WeakRetained home];
  v7 = [(HFRoomItem *)v5 initWithHome:v6 room:v3];

  return v7;
}

id __33__HFRoomItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained roomItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained roomItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFRoomItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"room";
  v8[1] = @"user";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [invalidationReasons setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end