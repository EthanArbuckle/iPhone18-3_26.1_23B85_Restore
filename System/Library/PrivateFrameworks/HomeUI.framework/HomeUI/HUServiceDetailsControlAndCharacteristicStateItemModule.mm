@interface HUServiceDetailsControlAndCharacteristicStateItemModule
- (BOOL)isServiceGroup;
- (HFCharacteristicStateItemProvider)characteristicStateItemProvider;
- (HFControlPanelItemProvider)controlPanelItemProvider;
- (HUServiceDetailsControlAndCharacteristicStateItemModule)initWithItemUpdater:(id)updater home:(id)home sourceItem:(id)item;
- (HUServiceDetailsControlAndCharacteristicStateItemModule)initWithItemUpdater:(id)updater home:(id)home sourceItem:(id)item delegate:(id)delegate;
- (HUServiceDetailsControlAndCharacteristicStateItemModuleDelegate)delegate;
- (id)_allCharacteristicTypesForItem:(id)item;
- (id)_characteristicStateItemComparator;
- (id)_createGroupCharacteristicSectionsForItems:(id)items;
- (id)_createStandaloneCharacteristicSectionsForItems:(id)items;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
- (id)sourceServiceItem;
@end

@implementation HUServiceDetailsControlAndCharacteristicStateItemModule

- (HUServiceDetailsControlAndCharacteristicStateItemModule)initWithItemUpdater:(id)updater home:(id)home sourceItem:(id)item delegate:(id)delegate
{
  updaterCopy = updater;
  homeCopy = home;
  itemCopy = item;
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsControlAndCharacteristicStateItemModule.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
  }

  v19.receiver = self;
  v19.super_class = HUServiceDetailsControlAndCharacteristicStateItemModule;
  v15 = [(HUServiceDetailsItemModule *)&v19 initWithItemUpdater:updaterCopy home:homeCopy sourceItem:itemCopy];
  v16 = v15;
  if (v15)
  {
    [(HUServiceDetailsControlAndCharacteristicStateItemModule *)v15 setDelegate:delegateCopy];
  }

  return v16;
}

- (HUServiceDetailsControlAndCharacteristicStateItemModule)initWithItemUpdater:(id)updater home:(id)home sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithItemUpdater_home_sourceItem_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUServiceDetailsControlAndCharacteristicStateItemModule.m" lineNumber:43 description:{@"%s is unavailable; use %@ instead", "-[HUServiceDetailsControlAndCharacteristicStateItemModule initWithItemUpdater:home:sourceItem:]", v8}];

  return 0;
}

- (BOOL)isServiceGroup
{
  sourceServiceItem = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self sourceServiceItem];
  if ([sourceServiceItem conformsToProtocol:&unk_28251B268])
  {
    v3 = sourceServiceItem;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 != 0;

  return v4;
}

- (id)sourceServiceItem
{
  sourceItem = [(HUServiceDetailsItemModule *)self sourceItem];
  v3 = &unk_28251B0C8;
  v4 = sourceItem;
  v5 = v4;
  if (v4)
  {
    if ([v4 conformsToProtocol:v3])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v5;
    if (v6)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertProtocolCast(Protocol * _Nonnull __strong, id  _Nonnull __strong)"}];
    v10 = NSStringFromProtocol(v3);
    [currentHandler handleFailureInFunction:v9 file:@"NSObject+NAAdditions.h" lineNumber:71 description:{@"Expected protocol %@", v10}];
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (HFControlPanelItemProvider)controlPanelItemProvider
{
  controlPanelItemProvider = self->_controlPanelItemProvider;
  if (controlPanelItemProvider)
  {
    v3 = controlPanelItemProvider;
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc(MEMORY[0x277D145D8]);
    sourceServiceItem = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self sourceServiceItem];
    sourceServiceItem2 = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self sourceServiceItem];
    valueSource = [sourceServiceItem2 valueSource];
    v9 = [v5 initWithItem:sourceServiceItem valueSource:valueSource];
    v10 = self->_controlPanelItemProvider;
    self->_controlPanelItemProvider = v9;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__HUServiceDetailsControlAndCharacteristicStateItemModule_controlPanelItemProvider__block_invoke;
    v12[3] = &unk_277DBEAE8;
    objc_copyWeak(&v13, &location);
    [(HFControlPanelItemProvider *)self->_controlPanelItemProvider setFilter:v12];
    v3 = self->_controlPanelItemProvider;
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v3;
}

uint64_t __83__HUServiceDetailsControlAndCharacteristicStateItemModule_controlPanelItemProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained sourceServiceItem];
  v6 = [v5 services];
  if ([v6 count] > 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = [WeakRetained delegate];
    v8 = [v7 controlAndCharacteristicStateItemModule:WeakRetained shouldShowControlPanelItem:v3];
  }

  return v8;
}

- (HFCharacteristicStateItemProvider)characteristicStateItemProvider
{
  characteristicStateItemProvider = self->_characteristicStateItemProvider;
  if (!characteristicStateItemProvider)
  {
    if (![(HUServiceDetailsControlAndCharacteristicStateItemModule *)self isServiceGroup])
    {
      sourceServiceItem = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self sourceServiceItem];
      services = [sourceServiceItem services];
      v6 = [services count];

      if (v6 == 1)
      {
        v7 = objc_alloc(MEMORY[0x277D14540]);
        home = [(HUServiceDetailsItemModule *)self home];
        hf_characteristicValueManager = [home hf_characteristicValueManager];
        sourceServiceItem2 = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self sourceServiceItem];
        services2 = [sourceServiceItem2 services];
        anyObject = [services2 anyObject];
        v13 = [v7 initWithValueSource:hf_characteristicValueManager service:anyObject];
LABEL_7:
        v18 = self->_characteristicStateItemProvider;
        self->_characteristicStateItemProvider = v13;

        goto LABEL_8;
      }

      sourceServiceItem3 = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self sourceServiceItem];
      accessories = [sourceServiceItem3 accessories];
      v16 = [accessories count];

      if (v16 == 1)
      {
        v17 = objc_alloc(MEMORY[0x277D14540]);
        home = [(HUServiceDetailsItemModule *)self home];
        hf_characteristicValueManager = [home hf_characteristicValueManager];
        sourceServiceItem2 = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self sourceServiceItem];
        services2 = [sourceServiceItem2 accessories];
        anyObject = [services2 anyObject];
        v13 = [v17 initWithValueSource:hf_characteristicValueManager accessory:anyObject];
        goto LABEL_7;
      }
    }

LABEL_8:
    characteristicStateItemProvider = self->_characteristicStateItemProvider;
  }

  v19 = characteristicStateItemProvider;

  return v19;
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (itemProviders)
  {
    v3 = itemProviders;
  }

  else
  {
    v5 = objc_opt_new();
    controlPanelItemProvider = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self controlPanelItemProvider];
    [v5 na_safeAddObject:controlPanelItemProvider];

    characteristicStateItemProvider = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self characteristicStateItemProvider];
    [v5 na_safeAddObject:characteristicStateItemProvider];

    v8 = [MEMORY[0x277CBEB98] setWithArray:v5];
    v9 = self->_itemProviders;
    self->_itemProviders = v8;

    v3 = self->_itemProviders;
  }

  return v3;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v40 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  controlPanelItemProvider = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self controlPanelItemProvider];
  items = [controlPanelItemProvider items];
  v7 = [items na_setByIntersectingWithSet:itemsCopy];
  v8 = [v7 mutableCopy];

  characteristicStateItemProvider = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self characteristicStateItemProvider];
  items2 = [characteristicStateItemProvider items];
  v11 = [items2 na_setByIntersectingWithSet:itemsCopy];
  [v8 unionSet:v11];

  v12 = [v8 objectsPassingTest:&__block_literal_global_179];
  [v8 minusSet:v12];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __91__HUServiceDetailsControlAndCharacteristicStateItemModule_buildSectionsWithDisplayedItems___block_invoke_2;
  v37[3] = &unk_277DB85D8;
  v31 = itemsCopy;
  v38 = v31;
  v13 = [v8 na_filter:v37];
  v14 = objc_opt_new();
  selfCopy = self;
  v15 = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self _createGroupCharacteristicSectionsForItems:v8];
  [v14 addObjectsFromArray:v15];
  v16 = [v8 mutableCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    v21 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = MEMORY[0x277CBEB98];
        items3 = [*(*(&v33 + 1) + 8 * i) items];
        v25 = items3;
        if (items3)
        {
          v26 = items3;
        }

        else
        {
          v26 = v21;
        }

        v27 = [v23 setWithArray:v26];
        [v16 minusSet:v27];
      }

      v19 = [v17 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v19);
  }

  v28 = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)selfCopy _createStandaloneCharacteristicSectionsForItems:v16];
  [v14 addObjectsFromArray:v28];

  v29 = [v14 copy];

  return v29;
}

BOOL __91__HUServiceDetailsControlAndCharacteristicStateItemModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = v2 == 0;

  return v3;
}

- (id)_createGroupCharacteristicSectionsForItems:(id)items
{
  v70 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v36 = objc_opt_new();
  v4 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = itemsCopy;
  v38 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v38)
  {
    v35 = *v56;
    do
    {
      v5 = 0;
      do
      {
        if (*v56 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v39 = v5;
        v6 = *(*(&v55 + 1) + 8 * v5);
        latestResults = [v6 latestResults];

        if (!latestResults)
        {
          NSLog(&cfstr_ItemHasNotBeen.isa, v6);
        }

        v8 = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self _allCharacteristicTypesForItem:v6];
        [v36 unionSet:v8];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v51 objects:v68 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v52;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v52 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v51 + 1) + 8 * i);
              v15 = [v4 objectForKeyedSubscript:v14];

              if (v15)
              {
                v16 = HFLogForCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v17 = [v4 objectForKeyedSubscript:v14];
                  *buf = 136315906;
                  v61 = "[HUServiceDetailsControlAndCharacteristicStateItemModule _createGroupCharacteristicSectionsForItems:]";
                  v62 = 2112;
                  v63 = v14;
                  v64 = 2112;
                  v65 = v6;
                  v66 = 2112;
                  v67 = v17;
                  _os_log_error_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_ERROR, "%s: Duplicate characteristic found. Characteristic type: %@, current item: %@, existingItem: %@", buf, 0x2Au);
                }
              }

              [v4 setObject:v6 forKeyedSubscript:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v51 objects:v68 count:16];
          }

          while (v11);
        }

        v5 = v39 + 1;
      }

      while (v39 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
    }

    while (v38);
  }

  v41 = objc_opt_new();
  v40 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v18 = v36;
  v19 = [v18 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v48;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v48 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v47 + 1) + 8 * j);
        v24 = [MEMORY[0x277D14538] characteristicGroupForCharacteristicType:v23];
        if (v24)
        {
          [v41 addObject:v24];
          identifier = [v24 identifier];
          v26 = [v40 na_objectForKey:identifier withDefaultValue:&__block_literal_global_110_0];
          [v26 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v20);
  }

  v27 = v18;

  _characteristicStateItemComparator = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self _characteristicStateItemComparator];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __102__HUServiceDetailsControlAndCharacteristicStateItemModule__createGroupCharacteristicSectionsForItems___block_invoke_2;
  v42[3] = &unk_277DC0658;
  v43 = v40;
  v44 = v4;
  selfCopy = self;
  v46 = _characteristicStateItemComparator;
  v29 = _characteristicStateItemComparator;
  v30 = v4;
  v31 = v40;
  v32 = [v41 na_map:v42];

  return v32;
}

id __102__HUServiceDetailsControlAndCharacteristicStateItemModule__createGroupCharacteristicSectionsForItems___block_invoke()
{
  v0 = objc_opt_new();

  return v0;
}

id __102__HUServiceDetailsControlAndCharacteristicStateItemModule__createGroupCharacteristicSectionsForItems___block_invoke_2(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [@"CharacteristicGroup-" stringByAppendingString:v4];

  v26 = v5;
  v6 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:v5];
  v7 = *(a1 + 32);
  v8 = [v3 identifier];
  v9 = [v7 objectForKeyedSubscript:v8];

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __102__HUServiceDetailsControlAndCharacteristicStateItemModule__createGroupCharacteristicSectionsForItems___block_invoke_3;
  v27[3] = &unk_277DC0630;
  v28 = *(a1 + 40);
  v10 = [v9 na_map:v27];
  v11 = [v10 allObjects];
  v12 = [v11 sortedArrayUsingComparator:*(a1 + 56)];
  [v6 setItems:v12];

  v13 = [v10 na_filter:&__block_literal_global_114_1];
  if ([v13 count] >= 2)
  {
    NSLog(&cfstr_MultipleContro.isa, v3);
  }

  v14 = [v13 anyObject];
  if (v14)
  {
    v15 = [*(a1 + 48) delegate];
    v16 = *(a1 + 48);
    v17 = [v16 sourceItem];
    v18 = [v15 controlAndCharacteristicStateItemModule:v16 sectionTitleForControlPanelItem:v14 forServiceItem:v17];

    v19 = [*(a1 + 48) delegate];
    v20 = *(a1 + 48);
    v21 = [v20 sourceItem];
    v22 = [v19 controlAndCharacteristicStateItemModule:v20 sectionFooterForControlPanelItem:v14 forServiceItem:v21];
  }

  else
  {
    if ([v10 count] == 1)
    {
      v18 = 0;
    }

    else
    {
      v18 = [v3 title];
    }

    v22 = 0;
  }

  [v6 setHeaderTitle:v18];
  [v6 setFooterTitle:v22];
  v29 = @"HUServiceDetailsItemModuleTitleForSectionSortingUserInfoKey";
  v23 = [v3 title];
  v30[0] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  [v6 setUserInfo:v24];

  return v6;
}

uint64_t __102__HUServiceDetailsControlAndCharacteristicStateItemModule__createGroupCharacteristicSectionsForItems___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_createStandaloneCharacteristicSectionsForItems:(id)items
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __107__HUServiceDetailsControlAndCharacteristicStateItemModule__createStandaloneCharacteristicSectionsForItems___block_invoke;
  v6[3] = &unk_277DC0680;
  v6[4] = self;
  v3 = [items na_map:v6];
  allObjects = [v3 allObjects];

  return allObjects;
}

id __107__HUServiceDetailsControlAndCharacteristicStateItemModule__createStandaloneCharacteristicSectionsForItems___block_invoke(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 latestResults];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      v6 = [v5 uniqueIdentifier];
      v7 = [@"ControlPanel-" stringByAppendingString:v6];

      v8 = [*(a1 + 32) delegate];
      v9 = [v8 controlAndCharacteristicStateItemModule:*(a1 + 32) shouldShowSectionTitleForControlPanelItem:v5];

      if (!v9)
      {
        v11 = 0;
        goto LABEL_10;
      }

      v10 = [v5 latestResults];
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
LABEL_8:

LABEL_10:
      v14 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:v7];
      [v14 setHeaderTitle:v11];
      v19 = @"HUServiceDetailsItemModuleTitleForSectionSortingUserInfoKey";
      v20[0] = v7;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [v14 setUserInfo:v15];

      v18 = v3;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
      [v14 setItems:v16];

      goto LABEL_13;
    }

    v5 = [*(a1 + 32) _allCharacteristicTypesForItem:v3];
    if ([v5 count])
    {
      v12 = [v5 allObjects];
      v13 = [v12 sortedArrayUsingComparator:&__block_literal_global_126_1];
      v10 = [v13 componentsJoinedByString:@"_"];

      v7 = [@"CharacteristicItem-" stringByAppendingString:v10];
      v11 = 0;
      goto LABEL_8;
    }

    NSLog(&cfstr_NoCharacterist_0.isa, v3);
  }

  else
  {
    NSLog(&cfstr_ItemHasNotBeen.isa, v3);
  }

  v14 = 0;
LABEL_13:

  return v14;
}

uint64_t __107__HUServiceDetailsControlAndCharacteristicStateItemModule__createStandaloneCharacteristicSectionsForItems___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = MEMORY[0x277CD1970];
  v6 = a3;
  v7 = [v4 numberWithInteger:{objc_msgSend(v5, "hf_sortPriorityForCharacteristicType:", a2)}];
  v8 = MEMORY[0x277CCABB0];
  v9 = [MEMORY[0x277CD1970] hf_sortPriorityForCharacteristicType:v6];

  v10 = [v8 numberWithInteger:v9];
  v11 = [v7 compare:v10];

  return v11;
}

- (id)_allCharacteristicTypesForItem:(id)item
{
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13D78]];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] set];
  }

  v9 = v8;

  delegate = [(HUServiceDetailsControlAndCharacteristicStateItemModule *)self delegate];
  v11 = [delegate controlAndCharacteristicStateItemModule:self childItemsForItem:itemCopy];

  v12 = [v11 na_flatMap:&__block_literal_global_139];

  v13 = [v9 setByAddingObjectsFromSet:v12];

  return v13;
}

id __90__HUServiceDetailsControlAndCharacteristicStateItemModule__allCharacteristicTypesForItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 latestResults];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13D78]];

  return v3;
}

- (id)_characteristicStateItemComparator
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__HUServiceDetailsControlAndCharacteristicStateItemModule__characteristicStateItemComparator__block_invoke;
  aBlock[3] = &unk_277DC06C8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __93__HUServiceDetailsControlAndCharacteristicStateItemModule__characteristicStateItemComparator__block_invoke_2;
  v6[3] = &unk_277DC06F0;
  v7 = v2;
  v3 = v2;
  v4 = _Block_copy(v6);

  return v4;
}

uint64_t __93__HUServiceDetailsControlAndCharacteristicStateItemModule__characteristicStateItemComparator__block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _allCharacteristicTypesForItem:a2];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = -1000;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [MEMORY[0x277CD1970] hf_sortPriorityForCharacteristicType:*(*(&v10 + 1) + 8 * i)];
        if (v6 <= v8)
        {
          v6 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = -1000;
  }

  return v6;
}

uint64_t __93__HUServiceDetailsControlAndCharacteristicStateItemModule__characteristicStateItemComparator__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 32) + 16))();
  v8 = (*(*(a1 + 32) + 16))();
  if (v7 == v8)
  {
    v9 = [v5 latestResults];
    v10 = *MEMORY[0x277D13F60];
    v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

    v12 = [v6 latestResults];
    v13 = [v12 objectForKeyedSubscript:v10];

    v14 = [v11 localizedStandardCompare:v13];
  }

  else
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
    v14 = [v11 compare:v13];
  }

  v15 = v14;

  return v15;
}

- (HUServiceDetailsControlAndCharacteristicStateItemModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end