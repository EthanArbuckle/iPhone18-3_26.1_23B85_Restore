@interface HUPrimaryUserItemProvider
- (HUPrimaryUserItemProvider)init;
- (HUPrimaryUserItemProvider)initWithHome:(id)a3 mediaProfileContainer:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HUPrimaryUserItemProvider

- (HUPrimaryUserItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUPrimaryUserItemProvider.m" lineNumber:23 description:{@"%s is unavailable; use %@ instead", "-[HUPrimaryUserItemProvider init]", v5}];

  return 0;
}

- (HUPrimaryUserItemProvider)initWithHome:(id)a3 mediaProfileContainer:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HUPrimaryUserItemProvider;
  v9 = [(HFItemProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a3);
    objc_storeStrong(&v10->_mediaProfileContainer, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    userItems = v10->_userItems;
    v10->_userItems = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HUPrimaryUserItemProvider *)self home];
  v6 = [(HUPrimaryUserItemProvider *)self mediaProfileContainer];
  v7 = [v4 initWithHome:v5 mediaProfileContainer:v6];

  return v7;
}

- (id)reloadItems
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__HUPrimaryUserItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DBCDF8;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(HUPrimaryUserItemProvider *)self home];
  v5 = [v4 hf_allUsersIncludingCurrentUser];

  objc_initWeak(&location, self);
  v6 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v5 filter:0 itemMap:v3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__HUPrimaryUserItemProvider_reloadItems__block_invoke_2;
  v9[3] = &unk_277DB7FA8;
  objc_copyWeak(&v10, &location);
  v7 = [v6 flatMap:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

HUPrimaryUserItem *__40__HUPrimaryUserItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [HUPrimaryUserItem alloc];
  v8 = [*(a1 + 32) home];
  v9 = [*(a1 + 32) mediaProfileContainer];
  v10 = [(HUPrimaryUserItem *)v7 initWithHome:v8 mediaProfileContainer:v9 user:v6];

  return v10;
}

id __40__HUPrimaryUserItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained userItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained userItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUPrimaryUserItemProvider;
  v2 = [(HFItemProvider *)&v7 invalidationReasons];
  v3 = *MEMORY[0x277D13B28];
  v8[0] = *MEMORY[0x277D13B88];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v5 = [v2 setByAddingObjectsFromArray:v4];

  return v5;
}

@end