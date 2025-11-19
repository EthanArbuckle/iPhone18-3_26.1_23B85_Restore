@interface HFUserItemProvider
- (HFUserItemProvider)init;
- (HFUserItemProvider)initWithHome:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFUserItemProvider

- (HFUserItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFUserItemProvider.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HFUserItemProvider init]", v5}];

  return 0;
}

- (HFUserItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HFUserItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    userItems = v7->_userItems;
    v7->_userItems = v8;

    v7->_includeCurrentUser = 0;
    v7->_includeOtherUsers = 1;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFUserItemProvider *)self home];
  v6 = [v4 initWithHome:v5];

  return v6;
}

- (id)reloadItems
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__HFUserItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DF5828;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if ([(HFUserItemProvider *)self includeOtherUsers])
  {
    v4 = [(HFUserItemProvider *)self home];
    v5 = [v4 users];
    if (v5)
    {
      v6 = [(HFUserItemProvider *)self home];
      v7 = [v6 users];
    }

    else
    {
      v7 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  if ([(HFUserItemProvider *)self includeCurrentUser])
  {
    v8 = [(HFUserItemProvider *)self home];
    v9 = [v8 currentUser];
    v10 = [v7 arrayByAddingObject:v9];

    v7 = v10;
  }

  if (![(HFUserItemProvider *)self includeGuestUsers])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __33__HFUserItemProvider_reloadItems__block_invoke_2;
    v19[3] = &unk_277DF55C0;
    v19[4] = self;
    v11 = [v7 na_filter:v19];

    v7 = v11;
  }

  objc_initWeak(&location, self);
  v12 = [(HFUserItemProvider *)self filter];
  v13 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v7 filter:v12 itemMap:v3];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __33__HFUserItemProvider_reloadItems__block_invoke_3;
  v16[3] = &unk_277DF30B8;
  objc_copyWeak(&v17, &location);
  v14 = [v13 flatMap:v16];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);

  return v14;
}

HFUserItem *__33__HFUserItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
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

  v7 = [HFUserItem alloc];
  v8 = [*(a1 + 32) home];
  v9 = -[HFUserItem initWithHome:user:nameStyle:](v7, "initWithHome:user:nameStyle:", v8, v6, [*(a1 + 32) nameStyle]);

  return v9;
}

uint64_t __33__HFUserItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 home];
  v5 = [v4 hf_userIsRestrictedGuest:v3];

  return v5 ^ 1u;
}

id __33__HFUserItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
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
  v5.receiver = self;
  v5.super_class = HFUserItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"user"];

  return v3;
}

@end