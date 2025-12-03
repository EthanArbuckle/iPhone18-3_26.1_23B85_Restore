@interface HUCCFavoriteServiceItemProvider
- (HUCCFavoriteServiceItemProvider)init;
- (HUCCFavoriteServiceItemProvider)initWithHome:(id)home;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HUCCFavoriteServiceItemProvider

- (HUCCFavoriteServiceItemProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUCCFavoriteServiceItemProvider.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HUCCFavoriteServiceItemProvider init]", v5}];

  return 0;
}

- (HUCCFavoriteServiceItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  v11.receiver = self;
  v11.super_class = HUCCFavoriteServiceItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, home);
    v8 = [MEMORY[0x277CBEB58] set];
    serviceLikeItems = v7->_serviceLikeItems;
    v7->_serviceLikeItems = v8;

    v7->_maximumNumberOfItems = -1;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HUCCFavoriteServiceItemProvider *)self home];
  v6 = [v4 initWithHome:home];

  return v6;
}

- (id)reloadItems
{
  v3 = MEMORY[0x277D14770];
  home = [(HUCCFavoriteServiceItemProvider *)self home];
  v5 = [v3 favoriteServicesForHome:home withLimit:{-[HUCCFavoriteServiceItemProvider maximumNumberOfItems](self, "maximumNumberOfItems")}];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__HUCCFavoriteServiceItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DB7F08;
  objc_copyWeak(&v13, &location);
  v6 = _Block_copy(aBlock);
  v7 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v5 filter:0 itemMap:v6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __46__HUCCFavoriteServiceItemProvider_reloadItems__block_invoke_2;
  v10[3] = &unk_277DB7FA8;
  objc_copyWeak(&v11, &location);
  v8 = [v7 flatMap:v10];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

id __46__HUCCFavoriteServiceItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained home];
  v6 = [v5 hf_characteristicValueManager];

  objc_opt_class();
  v7 = v3;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    if ([v9 hf_isMediaAccessory])
    {
      v10 = objc_alloc(MEMORY[0x277D147E8]);
      v11 = [v9 mediaProfile];
      v12 = [v10 initWithValueSource:v6 mediaProfileContainer:v11];
    }

    else
    {
      if ([v9 hf_isRemoteControl])
      {
        v16 = MEMORY[0x277D14BA0];
      }

      else
      {
        v16 = MEMORY[0x277D142E8];
      }

      v12 = [[v16 alloc] initWithAccessory:v9 valueSource:v6];
    }
  }

  else
  {
    objc_opt_class();
    v13 = v7;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v12 = [objc_alloc(objc_msgSend(MEMORY[0x277D14AC8] itemClassForService:{v15)), "initWithValueSource:service:", v6, v15}];
    }

    else
    {
      objc_opt_class();
      v17 = v13;
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      if (v19)
      {
        v12 = [objc_alloc(MEMORY[0x277D14AB0]) initWithValueSource:v6 serviceGroup:v19];
      }

      else
      {
        objc_opt_class();
        v20 = v17;
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;

        if (v22)
        {
          v12 = [objc_alloc(MEMORY[0x277D147E8]) initWithValueSource:v6 mediaProfileContainer:v22];
        }

        else
        {
          NSLog(&cfstr_UnsupportedHom_0.isa, v20);
          v12 = 0;
        }
      }
    }
  }

  return v12;
}

id __46__HUCCFavoriteServiceItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained serviceLikeItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained serviceLikeItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HUCCFavoriteServiceItemProvider;
  invalidationReasons = [(HFItemProvider *)&v7 invalidationReasons];
  v3 = *MEMORY[0x277D13B28];
  v8[0] = *MEMORY[0x277D13B68];
  v8[1] = v3;
  v8[2] = *MEMORY[0x277D13B48];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v5 = [invalidationReasons setByAddingObjectsFromArray:v4];

  return v5;
}

@end