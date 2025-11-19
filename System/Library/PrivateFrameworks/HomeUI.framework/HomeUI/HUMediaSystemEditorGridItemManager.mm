@interface HUMediaSystemEditorGridItemManager
+ (id)defaultItemProviderCreatorForMediaSystemBuilder:(id)a3 options:(unint64_t)a4;
- (HUMediaSystemEditorGridItemManager)initWithDelegate:(id)a3 shouldGroupByRoom:(BOOL)a4 itemProvidersCreator:(id)a5;
- (HUMediaSystemEditorGridItemManager)initWithMediaSystemBuilder:(id)a3 delegate:(id)a4;
- (id)_itemsToHideInSet:(id)a3;
- (id)_roomComparator;
- (id)_sortedItems:(id)a3 forSectionIdentifier:(id)a4;
@end

@implementation HUMediaSystemEditorGridItemManager

+ (id)defaultItemProviderCreatorForMediaSystemBuilder:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__HUMediaSystemEditorGridItemManager_defaultItemProviderCreatorForMediaSystemBuilder_options___block_invoke;
  v11[3] = &unk_277DC1B30;
  v12 = v7;
  v13 = a4;
  v14 = a1;
  v15 = a2;
  v8 = v7;
  v9 = _Block_copy(v11);

  return v9;
}

id __94__HUMediaSystemEditorGridItemManager_defaultItemProviderCreatorForMediaSystemBuilder_options___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__HUMediaSystemEditorGridItemManager_defaultItemProviderCreatorForMediaSystemBuilder_options___block_invoke_2;
  aBlock[3] = &unk_277DC1AE8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v22 = v4;
  v23 = v5;
  v6 = a2;
  v7 = _Block_copy(aBlock);
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [*(a1 + 32) firstSetupSourceAccessory];
  v10 = [v9 supportedStereoPairVersions];

  if (!v10)
  {
    v11 = HFLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 48);
      v16 = NSStringFromSelector(*(a1 + 56));
      v17 = [*(a1 + 32) firstSetupSourceAccessory];
      *buf = 138412802;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      _os_log_error_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_ERROR, "%@:%@ Source HomePod has no stereo pairing versions: %@", buf, 0x20u);
    }
  }

  v12 = [objc_alloc(MEMORY[0x277D147F0]) initWithHome:v6];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __94__HUMediaSystemEditorGridItemManager_defaultItemProviderCreatorForMediaSystemBuilder_options___block_invoke_21;
  v18[3] = &__block_descriptor_56_e27_B16__0___HFHomeKitObject__8l;
  v19 = *(a1 + 48);
  v20 = v10;
  [v12 setFilter:v18];
  v13 = [objc_alloc(MEMORY[0x277D14C38]) initWithSourceProvider:v12 transformationBlock:v7];
  [v8 addObject:v13];

  return v8;
}

id __94__HUMediaSystemEditorGridItemManager_defaultItemProviderCreatorForMediaSystemBuilder_options___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc(objc_opt_class());
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__HUMediaSystemEditorGridItemManager_defaultItemProviderCreatorForMediaSystemBuilder_options___block_invoke_3;
  v10[3] = &unk_277DC1AC0;
  v11 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v7 = v3;
  v8 = [v4 initWithSourceItem:v7 transformationBlock:v10];

  return v8;
}

id __94__HUMediaSystemEditorGridItemManager_defaultItemProviderCreatorForMediaSystemBuilder_options___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  objc_opt_class();
  v4 = *(a1 + 32);
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 mediaProfileContainer];
  v8 = [v7 hf_backingAccessory];
  v9 = [*(a1 + 40) firstSetupSourceAccessory];

  if (v8 == v9)
  {
    v10 = &unk_282491DD8;
  }

  else
  {
    v10 = &unk_282491DF0;
  }

  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x277D14068]];
  v11 = *(a1 + 48);
  if (v11)
  {
    [v3 removeObjectForKey:*MEMORY[0x277D13E20]];
    v11 = *(a1 + 48);
  }

  if ((v11 & 8) != 0)
  {
    v12 = *MEMORY[0x277D13E88];
    v13 = [v3 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = MEMORY[0x277D14738];
      v15 = v13;
      v16 = [v14 alloc];
      v17 = [v15 identifier];

      v18 = [v16 initWithIdentifier:v17 incrementalState:&unk_282493530];
      [v3 setObject:v18 forKeyedSubscript:v12];
    }
  }

  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __94__HUMediaSystemEditorGridItemManager_defaultItemProviderCreatorForMediaSystemBuilder_options___block_invoke_12;
  v33 = &unk_277DBB548;
  v19 = v3;
  v34 = v19;
  v35 = v7;
  v20 = v7;
  if (__94__HUMediaSystemEditorGridItemManager_defaultItemProviderCreatorForMediaSystemBuilder_options___block_invoke_12(&v30))
  {
    v21 = *MEMORY[0x277D140E8];
    v22 = [v19 objectForKeyedSubscript:{*MEMORY[0x277D140E8], v30, v31, v32, v33, v34, v35}];

    if (v22)
    {
      v23 = [v19 objectForKeyedSubscript:v21];
      v24 = [v23 underlyingError];
      [v19 setObject:v24 forKeyedSubscript:@"BADGE_REASON_ERROR"];
    }

    [v19 setObject:&unk_282491E08 forKeyedSubscript:*MEMORY[0x277D13DE0]];
    v25 = *MEMORY[0x277D13DD8];
    v26 = v19;
    v27 = &unk_282491E08;
  }

  else
  {
    v25 = *MEMORY[0x277D13DE0];
    v26 = v19;
    v27 = 0;
  }

  [v26 setObject:v27 forKeyedSubscript:{v25, v30, v31, v32, v33}];
  v28 = [v19 copy];

  return v28;
}

uint64_t __94__HUMediaSystemEditorGridItemManager_defaultItemProviderCreatorForMediaSystemBuilder_options___block_invoke_12(uint64_t a1)
{
  v2 = *MEMORY[0x277D140E8];
  v3 = [*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x277D140E8]];

  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v2];
    v5 = [v4 underlyingSymptom];
    v6 = v5 == 0;
  }

  else
  {
    v7 = [*(a1 + 40) hf_backingAccessory];
    v8 = [v7 softwareVersion];
    v9 = [v8 hf_softwareUpdateWouldSupportHomePodPairing];

    return v9 ^ 1u;
  }

  return v6;
}

BOOL __94__HUMediaSystemEditorGridItemManager_defaultItemProviderCreatorForMediaSystemBuilder_options___block_invoke_21(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v4 accessory];
  if (([v5 hf_isHomePod] & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = MEMORY[0x277CD1BF0];
  v7 = [v4 accessory];
  LODWORD(v6) = [v6 canSupportMediaSystem:v7];

  if (!v6)
  {
LABEL_7:

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v8 = [v4 accessory];
  v9 = [v8 supportedStereoPairVersions];

  if (v9)
  {
    v10 = (*(a1 + 48) & v9) != 0;
  }

  else
  {
    v12 = HFLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = NSStringFromSelector(*(a1 + 40));
      v15 = [v4 accessory];
      v16 = 138412802;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_error_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_ERROR, "%@:%@ Found HomePod has no stereo pairing versions: %@", &v16, 0x20u);
    }

    v10 = 0;
  }

LABEL_9:
  return v10;
}

- (HUMediaSystemEditorGridItemManager)initWithDelegate:(id)a3 shouldGroupByRoom:(BOOL)a4 itemProvidersCreator:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithMediaSystemBuilder_delegate_);
  [v7 handleFailureInMethod:a2 object:self file:@"HUMediaSystemEditorGridItemManager.m" lineNumber:128 description:{@"%s is unavailable; use %@ instead", "-[HUMediaSystemEditorGridItemManager initWithDelegate:shouldGroupByRoom:itemProvidersCreator:]", v8}];

  return 0;
}

- (HUMediaSystemEditorGridItemManager)initWithMediaSystemBuilder:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [HUMediaSystemEditorGridItemManager defaultItemProviderCreatorForMediaSystemBuilder:v7 options:9];
  v15.receiver = self;
  v15.super_class = HUMediaSystemEditorGridItemManager;
  v10 = [(HUServiceGridItemManager *)&v15 initWithDelegate:v8 shouldGroupByRoom:1 itemProvidersCreator:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_mediaSystemBuilder, a3);
    v11 = [(HUMediaSystemEditorGridItemManager *)v10 mediaSystemBuilder];
    v12 = [v11 accessories];
    v13 = [v12 na_map:&__block_literal_global_216];
    [(HUMediaSystemEditorGridItemManager *)v10 setPrioritizedRooms:v13];
  }

  return v10;
}

- (id)_itemsToHideInSet:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = HUMediaSystemEditorGridItemManager;
  v5 = [(HUServiceGridItemManager *)&v30 _itemsToHideInSet:v4];
  v24 = [v5 mutableCopy];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if (([v10 conformsToProtocol:&unk_28251AF08] & 1) == 0)
        {
          NSLog(&cfstr_ItemDoesnTConf_0.isa, v10);
        }

        if ([v10 conformsToProtocol:&unk_28251AF08])
        {
          v11 = v10;
          v12 = [v11 accessories];
          v13 = [v12 count];

          v14 = [v11 accessories];
          v15 = [v14 anyObject];

          if (v13 != 1 || (-[HUMediaSystemEditorGridItemManager mediaSystemBuilder](self, "mediaSystemBuilder"), v16 = objc_claimAutoreleasedReturnValue(), [v16 accessories], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "containsObject:", v15), v17, v16, (v18 & 1) == 0) && (-[HUMediaSystemEditorGridItemManager mediaSystemBuilder](self, "mediaSystemBuilder"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "accessories"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "anyObject"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v19, "shouldAllowAddingAccessory:", v21), v21, v20, v19, (v22 & 1) == 0))
          {
            [v24 addObject:v11];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  return v24;
}

- (id)_sortedItems:(id)a3 forSectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HUMediaSystemEditorGridItemManager *)self mediaSystemBuilder];
  v9 = [v8 firstSetupSourceAccessory];

  if ([v6 count] >= 2 && v9)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __72__HUMediaSystemEditorGridItemManager__sortedItems_forSectionIdentifier___block_invoke;
    v16[3] = &unk_277DB85D8;
    v17 = v9;
    v10 = [v6 na_firstObjectPassingTest:v16];
    if (v10)
    {
      v14.receiver = self;
      v14.super_class = HUMediaSystemEditorGridItemManager;
      v11 = [(HFItemManager *)&v14 _sortedItems:v6 forSectionIdentifier:v7];
      v12 = [v11 mutableCopy];

      [v12 removeObject:v10];
      [v12 insertObject:v10 atIndex:0];
    }

    else
    {
      v15.receiver = self;
      v15.super_class = HUMediaSystemEditorGridItemManager;
      v12 = [(HFItemManager *)&v15 _sortedItems:v6 forSectionIdentifier:v7];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = HUMediaSystemEditorGridItemManager;
    v12 = [(HFItemManager *)&v18 _sortedItems:v6 forSectionIdentifier:v7];
  }

  return v12;
}

uint64_t __72__HUMediaSystemEditorGridItemManager__sortedItems_forSectionIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_28251AF08])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 accessories];

  v7 = [v6 containsObject:*(a1 + 32)];
  return v7;
}

- (id)_roomComparator
{
  v3 = [(HUMediaSystemEditorGridItemManager *)self prioritizedRooms];
  v12.receiver = self;
  v12.super_class = HUMediaSystemEditorGridItemManager;
  v4 = [(HUServiceGridItemManager *)&v12 _roomComparator];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__HUMediaSystemEditorGridItemManager__roomComparator__block_invoke;
  v9[3] = &unk_277DBCF50;
  v10 = v3;
  v11 = v4;
  v5 = v4;
  v6 = v3;
  v7 = _Block_copy(v9);

  return v7;
}

uint64_t __53__HUMediaSystemEditorGridItemManager__roomComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) containsObject:v5];
  if (v7 == [*(a1 + 32) containsObject:v6])
  {
    v8 = (*(*(a1 + 40) + 16))();
  }

  else if (v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end