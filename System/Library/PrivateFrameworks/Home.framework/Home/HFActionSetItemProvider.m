@interface HFActionSetItemProvider
- (HFActionSetItemProvider)initWithHome:(id)a3 actionSetItemStyle:(unint64_t)a4;
- (HFCharacteristicValueSource)valueSource;
- (id)_favoriteFilter;
- (id)_roomFilter;
- (id)_showInHomeDashboardFilter;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
- (void)setServiceLikeItem:(id)a3;
@end

@implementation HFActionSetItemProvider

- (HFActionSetItemProvider)initWithHome:(id)a3 actionSetItemStyle:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = HFActionSetItemProvider;
  v8 = [(HFItemProvider *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a3);
    v10 = [MEMORY[0x277CBEB58] set];
    actionSetItems = v9->_actionSetItems;
    v9->_actionSetItems = v10;

    v9->_actionSetItemStyle = a4;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFActionSetItemProvider *)self home];
  v6 = [v4 initWithHome:v5 actionSetItemStyle:{-[HFActionSetItemProvider actionSetItemStyle](self, "actionSetItemStyle")}];

  return v6;
}

- (void)setServiceLikeItem:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_serviceLikeItem, a3);
  v6 = [(HFActionSetItemProvider *)self actionSetItems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__HFActionSetItemProvider_setServiceLikeItem___block_invoke;
  v8[3] = &unk_277DF5B98;
  v9 = v5;
  v7 = v5;
  [v6 na_each:v8];
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__HFActionSetItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DF5228;
  objc_copyWeak(&v15, &location);
  v3 = _Block_copy(aBlock);
  v4 = [(HFActionSetItemProvider *)self home];
  v5 = [v4 actionSets];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__HFActionSetItemProvider_reloadItems__block_invoke_2;
  v13[3] = &unk_277DF4280;
  v13[4] = self;
  v6 = [v5 na_filter:v13];

  v7 = [(HFActionSetItemProvider *)self filter];
  v8 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v6 filter:v7 itemMap:v3];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__HFActionSetItemProvider_reloadItems__block_invoke_3;
  v11[3] = &unk_277DF30B8;
  objc_copyWeak(&v12, &location);
  v9 = [v8 flatMap:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v9;
}

HFActionSetItem *__38__HFActionSetItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [HFActionSetItem alloc];
  v6 = [WeakRetained actionSetItemStyle];
  v7 = [WeakRetained valueSource];
  v8 = [(HFActionSetItem *)v5 initWithActionSet:v3 actionSetItemStyle:v6 valueSource:v7];

  v9 = [WeakRetained serviceLikeItem];
  [(HFActionSetItem *)v8 setServiceLikeItem:v9];

  return v8;
}

uint64_t __38__HFActionSetItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_isVisible])
  {
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
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __38__HFActionSetItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained actionSetItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained actionSetItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFActionSetItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"actionSet"];

  return v3;
}

- (HFCharacteristicValueSource)valueSource
{
  v3 = [(HFActionSetItemProvider *)self overrideValueSource];

  if (v3)
  {
    v4 = [(HFActionSetItemProvider *)self overrideValueSource];
  }

  else
  {
    v5 = [(HFActionSetItemProvider *)self home];
    v4 = [v5 hf_characteristicValueManager];
  }

  return v4;
}

- (id)_roomFilter
{
  v2 = [(HFActionSetItemProvider *)self room];
  v3 = [v2 uniqueIdentifier];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __38__HFActionSetItemProvider__roomFilter__block_invoke;
  aBlock[3] = &unk_277DF4280;
  v9 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  v6 = [v5 copy];

  return v6;
}

uint64_t __38__HFActionSetItemProvider__roomFilter__block_invoke(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 32))
  {
    v34 = 1;
    goto LABEL_37;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v5 = [v3 actions];
  v44 = [v5 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (!v44)
  {
    v34 = 0;
    goto LABEL_36;
  }

  v6 = *v54;
  v41 = v4;
  while (2)
  {
    v7 = 0;
    v8 = 0x277CD1000uLL;
    do
    {
      if (*v54 != v6)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v53 + 1) + 8 * v7);
      v10 = *(v8 + 2472);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v9 characteristic];
        v12 = [v11 service];

        v13 = *(a1 + 32);
        v14 = [v12 accessory];
        v15 = [v14 room];
        v16 = [v15 uniqueIdentifier];
        LOBYTE(v13) = [v13 isEqual:v16];

        if (v13)
        {
          v34 = 1;
LABEL_34:
          v4 = v41;
          goto LABEL_36;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v9;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v18 = [v17 mediaProfiles];
          v40 = [v18 countByEnumeratingWithState:&v49 objects:v58 count:16];
          if (v40)
          {
            v19 = *v50;
            v42 = v18;
            v43 = v5;
            v38 = v6;
            v39 = v17;
            v37 = *v50;
            do
            {
              v20 = 0;
              do
              {
                if (*v50 != v19)
                {
                  objc_enumerationMutation(v18);
                }

                v21 = *(*(&v49 + 1) + 8 * v20);
                v45 = 0u;
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                v22 = [v21 accessories];
                v23 = [v22 countByEnumeratingWithState:&v45 objects:v57 count:16];
                if (v23)
                {
                  v24 = v23;
                  v25 = *v46;
                  while (2)
                  {
                    for (i = 0; i != v24; ++i)
                    {
                      if (*v46 != v25)
                      {
                        objc_enumerationMutation(v22);
                      }

                      v27 = *(a1 + 32);
                      v28 = [*(*(&v45 + 1) + 8 * i) room];
                      v29 = [v28 uniqueIdentifier];
                      LOBYTE(v27) = [v27 isEqual:v29];

                      if (v27)
                      {
                        v34 = 1;
                        v30 = v42;
                        v5 = v43;
                        v31 = v39;
                        goto LABEL_33;
                      }
                    }

                    v24 = [v22 countByEnumeratingWithState:&v45 objects:v57 count:16];
                    if (v24)
                    {
                      continue;
                    }

                    break;
                  }
                }

                ++v20;
                v18 = v42;
                v5 = v43;
                v19 = v37;
                v6 = v38;
                v8 = 0x277CD1000;
              }

              while (v20 != v40);
              v17 = v39;
              v40 = [v42 countByEnumeratingWithState:&v49 objects:v58 count:16];
            }

            while (v40);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = [v9 commands];
            v36 = [v35 firstObject];
            v31 = [v36 accessory];

            v30 = [v31 room];
            v22 = [v30 uniqueIdentifier];
            v34 = [v22 isEqual:*(a1 + 32)];
LABEL_33:

            goto LABEL_34;
          }
        }
      }

      ++v7;
    }

    while (v7 != v44);
    v34 = 0;
    v4 = v41;
    v44 = [v5 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v44)
    {
      continue;
    }

    break;
  }

LABEL_36:

LABEL_37:
  v32 = *MEMORY[0x277D85DE8];
  return v34;
}

- (id)_favoriteFilter
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__HFActionSetItemProvider__favoriteFilter__block_invoke;
  aBlock[3] = &unk_277DF5BC0;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = [v2 copy];

  return v3;
}

uint64_t __42__HFActionSetItemProvider__favoriteFilter__block_invoke(uint64_t a1, void *a2)
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
  aBlock[2] = __53__HFActionSetItemProvider__showInHomeDashboardFilter__block_invoke;
  aBlock[3] = &unk_277DF5BE8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v3 = [v2 copy];

  return v3;
}

uint64_t __53__HFActionSetItemProvider__showInHomeDashboardFilter__block_invoke(uint64_t a1, void *a2)
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