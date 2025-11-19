@interface HFCameraItemProvider
- (HFCameraItemProvider)init;
- (HFCameraItemProvider)initWithHome:(id)a3;
- (id)_favoriteFilter;
- (id)_roomFilter;
- (id)_showInHomeDashboardFilter;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFCameraItemProvider

- (HFCameraItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFCameraItemProvider.m" lineNumber:26 description:{@"%s is unavailable; use %@ instead", "-[HFCameraItemProvider init]", v5}];

  return 0;
}

- (HFCameraItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HFCameraItemProvider;
  v6 = [(HFItemProvider *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = [MEMORY[0x277CBEB58] set];
    [(HFCameraItemProvider *)v7 setCameraItems:v8];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFCameraItemProvider *)self home];
  v6 = [v4 initWithHome:v5];

  return v6;
}

- (id)reloadItems
{
  v28 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__HFCameraItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DF5228;
  objc_copyWeak(&v25, &location);
  v3 = _Block_copy(aBlock);
  v4 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(HFCameraItemProvider *)self home];
  v6 = [v5 accessories];

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v20 + 1) + 8 * i) cameraProfiles];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v7);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __35__HFCameraItemProvider_reloadItems__block_invoke_2;
  v19[3] = &unk_277DF8038;
  v19[4] = self;
  v11 = [v4 na_filter:v19];
  v12 = [(HFCameraItemProvider *)self filter];
  v13 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v11 filter:v12 itemMap:v3];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __35__HFCameraItemProvider_reloadItems__block_invoke_3;
  v17[3] = &unk_277DF30B8;
  objc_copyWeak(&v18, &location);
  v14 = [v13 flatMap:v17];
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

HFCameraItem *__35__HFCameraItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [HFCameraItem alloc];
  v6 = [WeakRetained home];
  v7 = [v6 hf_characteristicValueManager];
  v8 = [(HFAccessoryProfileItem *)v5 initWithProfile:v3 valueSource:v7];

  return v8;
}

uint64_t __35__HFCameraItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _roomFilter];
  if ((v4)[2](v4, v3))
  {
    v5 = [*(a1 + 32) _showInHomeDashboardFilter];
    v6 = (v5)[2](v5, v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __35__HFCameraItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained cameraItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained cameraItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFCameraItemProvider;
  v2 = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"service";
  v8[1] = @"accessory";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_roomFilter
{
  v2 = [(HFCameraItemProvider *)self room];
  v3 = [v2 uniqueIdentifier];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__HFCameraItemProvider__roomFilter__block_invoke;
  aBlock[3] = &unk_277DF8038;
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v6 = [v5 copy];

  return v6;
}

uint64_t __35__HFCameraItemProvider__roomFilter__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 1;
  }

  v3 = [a2 accessory];
  v4 = [v3 room];
  v5 = [v4 uniqueIdentifier];
  v6 = [v2 isEqual:v5];

  return v6;
}

- (id)_favoriteFilter
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__HFCameraItemProvider__favoriteFilter__block_invoke;
  aBlock[3] = &unk_277DF5BC0;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = [v2 copy];

  return v3;
}

uint64_t __39__HFCameraItemProvider__favoriteFilter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) onlyShowsFavorites])
  {
    v4 = [v3 hf_effectiveIsFavorite];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)_showInHomeDashboardFilter
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__HFCameraItemProvider__showInHomeDashboardFilter__block_invoke;
  aBlock[3] = &unk_277DF5BE8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = [v2 copy];

  return v3;
}

uint64_t __50__HFCameraItemProvider__showInHomeDashboardFilter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) onlyShowsFavorites])
  {
    v4 = [v3 hf_effectiveShowInHomeDashboard];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end