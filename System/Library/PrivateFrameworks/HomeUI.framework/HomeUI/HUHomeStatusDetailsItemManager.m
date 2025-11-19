@interface HUHomeStatusDetailsItemManager
- (BOOL)_shouldHideHomeKitObject:(id)a3;
- (BOOL)_shouldUseSoftwareUpdateSectionForItem:(id)a3;
- (BOOL)hasSymptomsHandlerForMediaProfileContainer:(id)a3;
- (BOOL)isAccessoriesWithIssuesStatusItem;
- (BOOL)isDisplayingRoomLevelStatus;
- (BOOL)isFirmwareUpdateStatusItem;
- (BOOL)isLowBatteryStatusItem;
- (BOOL)isNoResponseStatusItem;
- (BOOL)isResidentDeviceStatusItem;
- (BOOL)shouldHideItem:(id)a3;
- (BOOL)shouldReloadItemProvidersOnSourceItemChange;
- (BOOL)shouldShowAccessoryTiles;
- (BOOL)shouldShowRoomNameForItem:(id)a3;
- (BOOL)shouldShowServiceGroupTiles;
- (BOOL)shouldUseTitleDescriptionStyleForItem:(id)a3;
- (NSMutableSet)representedHomeKitObjects;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_comparatorForSectionIdentifier:(id)a3;
- (id)_identifierForSection:(unint64_t)a3;
- (id)_itemsToHideInSet:(id)a3;
- (id)_minimumPriorityNumberForItem:(id)a3;
- (id)_roomForItem:(id)a3;
- (id)_sectionComparator;
- (id)_sectionIdentifierForItem:(id)a3;
- (id)_separateSectionIdentifierForItem:(id)a3;
- (id)_titleForSectionWithIdentifier:(id)a3;
- (id)matchingItemForHomeKitObject:(id)a3;
- (id)statusItem;
- (int64_t)_effectivePriorityForItem:(id)a3;
- (unint64_t)_numberOfSections;
- (void)_didFinishUpdateTransactionWithAffectedItems:(id)a3;
- (void)_willUpdateSections;
- (void)maintainMinimumPriorityForItem:(id)a3;
- (void)resetItemPrioritiesToDefaults;
@end

@implementation HUHomeStatusDetailsItemManager

- (NSMutableSet)representedHomeKitObjects
{
  representedHomeKitObjects = self->_representedHomeKitObjects;
  if (!representedHomeKitObjects)
  {
    v4 = [(HFItemManager *)self sourceItem];
    v5 = [v4 latestResults];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D14078]];
    v7 = [v6 mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x277CBEB58] set];
    }

    v10 = self->_representedHomeKitObjects;
    self->_representedHomeKitObjects = v9;

    representedHomeKitObjects = self->_representedHomeKitObjects;
  }

  return representedHomeKitObjects;
}

- (BOOL)shouldUseTitleDescriptionStyleForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUHomeStatusDetailsItemManager *)self residentDeviceStatusItemProvider];
  v6 = [v5 items];
  if ([v6 containsObject:v4] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = 1;
  }

  else
  {
    v8 = [(HUHomeStatusDetailsItemManager *)self noRemoteAccessItem];
    v7 = v8 == v4;
  }

  return v7;
}

- (BOOL)shouldShowRoomNameForItem:(id)a3
{
  v4 = [(HUHomeStatusDetailsItemManager *)self _sectionIdentifierForItem:a3];
  v5 = [(HUHomeStatusDetailsItemManager *)self cachedRoomNamesByIdentifier];
  v6 = [v5 allKeys];
  v7 = [v6 containsObject:v4];

  return v7 ^ 1;
}

- (void)maintainMinimumPriorityForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUHomeStatusDetailsItemManager *)self minimumPriorityItemTuples];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    [(HUHomeStatusDetailsItemManager *)self setMinimumPriorityItemTuples:v6];
  }

  v7 = [v4 latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13EC8]];

  if (v8)
  {
    v9 = [v8 integerValue];
    if (v9 >= [(HUHomeStatusDetailsItemManager *)self _effectivePriorityForItem:v4])
    {
      v10 = [(HUHomeStatusDetailsItemManager *)self minimumPriorityItemTuples];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __65__HUHomeStatusDetailsItemManager_maintainMinimumPriorityForItem___block_invoke;
      v14[3] = &unk_277DC1308;
      v11 = v4;
      v15 = v11;
      v12 = [v10 na_firstObjectPassingTest:v14];

      if (v12)
      {
        -[HUHomeStatusDetailsItemAndPriorityTuple setPriority:](v12, "setPriority:", [v8 integerValue]);
      }

      else
      {
        v12 = -[HUHomeStatusDetailsItemAndPriorityTuple initWithItem:priority:]([HUHomeStatusDetailsItemAndPriorityTuple alloc], "initWithItem:priority:", v11, [v8 integerValue]);
        v13 = [(HUHomeStatusDetailsItemManager *)self minimumPriorityItemTuples];
        [v13 addObject:v12];
      }
    }
  }
}

uint64_t __65__HUHomeStatusDetailsItemManager_maintainMinimumPriorityForItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 item];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (BOOL)hasSymptomsHandlerForMediaProfileContainer:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D14810] isAnyKindOfGroup:v3];
  v5 = [MEMORY[0x277D14810] isContainedWithinAGroup:v3];
  if ((v4 & 1) != 0 || !v5)
  {
    v7 = [v3 accessories];
    v6 = [v7 na_any:&__block_literal_global_204];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __77__HUHomeStatusDetailsItemManager_hasSymptomsHandlerForMediaProfileContainer___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 symptomsHandler];
  v3 = [v2 symptoms];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)resetItemPrioritiesToDefaults
{
  v2 = [(HUHomeStatusDetailsItemManager *)self minimumPriorityItemTuples];
  [v2 removeAllObjects];
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v37[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D142F8]);
  v6 = [(HUHomeStatusDetailsItemManager *)self statusItem];
  v7 = [v6 room];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  v10 = [v5 initWithAccessoryContainer:v9 inHome:v4];

  if ([(HUHomeStatusDetailsItemManager *)self shouldShowAccessoryTiles])
  {
    v11 = 0;
  }

  else
  {
    v11 = 4;
  }

  [v10 setObjectLevel:v11];
  v12 = [objc_alloc(MEMORY[0x277D149C8]) initWithHome:v4];
  [(HUHomeStatusDetailsItemManager *)self setResidentDeviceStatusItemProvider:v12];

  v13 = [objc_alloc(MEMORY[0x277D148C8]) initWithHome:v4];
  [(HUHomeStatusDetailsItemManager *)self setNoRemoteAccessItem:v13];

  v14 = objc_alloc(MEMORY[0x277D14B40]);
  v15 = MEMORY[0x277CBEB98];
  v16 = [(HUHomeStatusDetailsItemManager *)self noRemoteAccessItem];
  v17 = [v15 setWithObject:v16];
  v18 = [v14 initWithItems:v17];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__HUHomeStatusDetailsItemManager__buildItemProvidersForHome___block_invoke;
  aBlock[3] = &unk_277DB87C8;
  objc_copyWeak(&v35, &location);
  v19 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __61__HUHomeStatusDetailsItemManager__buildItemProvidersForHome___block_invoke_2;
  v32[3] = &unk_277DB87C8;
  objc_copyWeak(&v33, &location);
  v20 = _Block_copy(v32);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__HUHomeStatusDetailsItemManager__buildItemProvidersForHome___block_invoke_4;
  v30[3] = &unk_277DC1330;
  v21 = v20;
  v31 = v21;
  [v10 setFilterBlock:v30];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __61__HUHomeStatusDetailsItemManager__buildItemProvidersForHome___block_invoke_5;
  v27[3] = &unk_277DC1358;
  objc_copyWeak(&v29, &location);
  v22 = v19;
  v28 = v22;
  v23 = [(HUHomeStatusDetailsItemManager *)self residentDeviceStatusItemProvider];
  [v23 setFilter:v27];

  v37[0] = v10;
  v24 = [(HUHomeStatusDetailsItemManager *)self residentDeviceStatusItemProvider];
  v37[1] = v24;
  v37[2] = v18;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&v33);

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);

  return v25;
}

uint64_t __61__HUHomeStatusDetailsItemManager__buildItemProvidersForHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_282547DB8])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained statusItem];
  v8 = [v7 room];

  v9 = 1;
  if (v8 && v5)
  {
    v10 = [v5 hf_parentRoom];
    v9 = [v8 isEqual:v10];
  }

  return v9;
}

uint64_t __61__HUHomeStatusDetailsItemManager__buildItemProvidersForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (![WeakRetained shouldReloadItemProvidersOnSourceItemChange])
  {
    v6 = [WeakRetained statusItem];
    v7 = [v6 latestResults];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13DB0]];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [MEMORY[0x277CBEB98] setWithObject:v3];
LABEL_6:
        v10 = v9;
LABEL_13:
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __61__HUHomeStatusDetailsItemManager__buildItemProvidersForHome___block_invoke_3;
        v33[3] = &unk_277DB9560;
        v34 = v8;
        v5 = [v10 na_any:v33];

        goto LABEL_44;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = MEMORY[0x277CBEB98];
        v15 = [v3 services];
        v16 = [v14 setWithArray:v15];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v3 hf_visibleServices];
          goto LABEL_6;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = 0;
          goto LABEL_13;
        }

        v15 = [v3 accessory];
        v16 = [v15 hf_visibleServices];
      }

      v10 = v16;

      goto LABEL_13;
    }

    v11 = [WeakRetained sourceItem];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v17 = [WeakRetained sourceItem];
      objc_opt_class();
      v18 = objc_opt_isKindOfClass();

      if ((v18 & 1) == 0)
      {
        v5 = 1;
LABEL_45:

        goto LABEL_46;
      }

      v19 = v3;
      if ([v19 conformsToProtocol:&unk_28259E5A0])
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v10 = v20;

      v21 = v19;
      if ([v21 conformsToProtocol:&unk_2825BCB38])
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22;

      objc_opt_class();
      v24 = v21;
      if (objc_opt_isKindOfClass())
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      v27 = [v26 mediaProfile];

      if (v27)
      {
        v28 = v24;
        if ([v28 conformsToProtocol:&unk_2825BCB38])
        {
          v29 = v28;
        }

        else
        {
          v29 = 0;
        }

        v30 = v29;

        v23 = v30;
      }

      if (v23)
      {
        v5 = [WeakRetained hasSymptomsHandlerForMediaProfileContainer:v23];
      }

      else
      {
        v31 = [v10 symptomsHandler];
        v5 = v31 != 0;
      }

LABEL_44:
      goto LABEL_45;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v3;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = 0;
        goto LABEL_40;
      }

      v13 = [v3 accessory];
    }

    v10 = v13;
LABEL_40:
    v5 = [v10 hf_isNetworkRouter];
    goto LABEL_44;
  }

  v5 = [WeakRetained _shouldHideHomeKitObject:v3] ^ 1;
LABEL_46:

  return v5;
}

uint64_t __61__HUHomeStatusDetailsItemManager__buildItemProvidersForHome___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serviceType];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t __61__HUHomeStatusDetailsItemManager__buildItemProvidersForHome___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 hf_homeKitObject];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

uint64_t __61__HUHomeStatusDetailsItemManager__buildItemProvidersForHome___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ((_os_feature_enabled_impl() & 1) == 0 && (([WeakRetained isResidentDeviceStatusItem] & 1) != 0 || objc_msgSend(WeakRetained, "isNoResponseStatusItem")))
  {
    v5 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfSections
{
  v2 = [(HUHomeStatusDetailsItemManager *)self cachedSectionIdentifiers];
  v3 = [v2 count];

  return v3;
}

- (id)_identifierForSection:(unint64_t)a3
{
  v4 = [(HUHomeStatusDetailsItemManager *)self cachedSectionIdentifiers];
  if ([v4 count] <= a3)
  {
    NSLog(&cfstr_ReceivedIdenti.isa, a3, [v4 count]);
  }

  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (id)_titleForSectionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HUHomeStatusDetailsItemManager *)self cachedRoomNamesByIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = [(HUHomeStatusDetailsItemManager *)self cachedRoomNamesByIdentifier];
    v8 = [v7 objectForKeyedSubscript:v4];

    if (v8)
    {
      v9 = [(HUHomeStatusDetailsItemManager *)self cachedRoomNamesByIdentifier];
      v10 = [v9 objectForKeyedSubscript:v4];

      goto LABEL_13;
    }
  }

  if ([v4 isEqualToString:@"UrgentServices"])
  {
    v11 = @"HUStatusDetailsUrgentSectionTitle";
LABEL_12:
    v10 = _HULocalizedStringWithDefaultValue(v11, v11, 1);
    goto LABEL_13;
  }

  if ([v4 isEqualToString:@"GeneralServices"])
  {
    v11 = @"HUStatusDetailsGeneralSectionTitle";
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"LowBattery"])
  {
    v11 = @"HUStatusDetailsLowBatterySectionTitle";
    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"SoftwareUpdateInfo"])
  {
    v11 = @"HUStatusDetailsSoftwareUpdateSectionTitle";
    goto LABEL_12;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (BOOL)_shouldUseSoftwareUpdateSectionForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUHomeStatusDetailsItemManager *)self softwareUpdateItemProvider];
  v6 = [v5 items];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (id)_separateSectionIdentifierForItem:(id)a3
{
  v4 = a3;
  if (![(HUHomeStatusDetailsItemManager *)self _shouldUseSeparateSectionForItem:v4])
  {
    goto LABEL_11;
  }

  v5 = [(HUHomeStatusDetailsItemManager *)self noRemoteAccessItem];
  v6 = v5;
  if (v5 == v4)
  {

    goto LABEL_8;
  }

  v7 = [(HUHomeStatusDetailsItemManager *)self residentDeviceStatusItemProvider];
  v8 = [v7 items];
  v9 = [v8 containsObject:v4];

  if (v9)
  {
LABEL_8:
    v14 = @"ResidentDevice";
    goto LABEL_12;
  }

  v10 = [(HUHomeStatusDetailsItemManager *)self firmwareUpdateItemProvider];
  v11 = [v10 instructionsItem];

  if (v11 == v4)
  {
    v14 = @"FirmwareUpdateInstructions";
    goto LABEL_12;
  }

  if ([v4 conformsToProtocol:&unk_2824C0788])
  {
    v12 = [v4 homeKitObject];
    v13 = [v12 uniqueIdentifier];
    v14 = [v13 UUIDString];

    goto LABEL_12;
  }

  NSLog(&cfstr_UnexpectedItem_2.isa, v4);
LABEL_11:
  v14 = 0;
LABEL_12:

  return v14;
}

- (id)_roomForItem:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_2824C0788])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  v8 = [v6 homeKitObject];
  if ([v8 conformsToProtocol:&unk_282547DB8])
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    v12 = [v7 homeKitObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = [v7 homeKitObject];
      if ([(HUHomeStatusDetailsItemManager *)self isDisplayingRoomLevelStatus])
      {
        v15 = [(HUHomeStatusDetailsItemManager *)self statusItem];
        v11 = [v15 room];
      }

      else
      {
        v15 = [v14 services];
        v16 = [v15 firstObject];
        v11 = [v16 hf_parentRoom];
      }

      goto LABEL_16;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_17;
  }

  v11 = [v10 hf_parentRoom];
LABEL_16:

LABEL_17:

  return v11;
}

- (id)_sectionIdentifierForItem:(id)a3
{
  v4 = a3;
  if ([(HUHomeStatusDetailsItemManager *)self _shouldUseSeparateSectionForItem:v4])
  {
    v5 = [(HUHomeStatusDetailsItemManager *)self _separateSectionIdentifierForItem:v4];
  }

  else
  {
    v6 = [(HUHomeStatusDetailsItemManager *)self firmwareUpdateItemProvider];
    v7 = [v6 items];
    v8 = [v7 containsObject:v4];

    if (v8)
    {
      v5 = @"FirmwareUpdateAppPunchOut";
    }

    else if ([(HUHomeStatusDetailsItemManager *)self _shouldUseSoftwareUpdateSectionForItem:v4])
    {
      v5 = @"SoftwareUpdateInfo";
    }

    else
    {
      v9 = [(HUHomeStatusDetailsItemManager *)self _roomForItem:v4];
      v10 = [v9 uniqueIdentifier];
      v11 = [v10 UUIDString];
      v12 = v11;
      v13 = @"GeneralServices";
      if (v11)
      {
        v13 = v11;
      }

      v5 = v13;
    }
  }

  return v5;
}

- (id)_itemsToHideInSet:(id)a3
{
  v10.receiver = self;
  v10.super_class = HUHomeStatusDetailsItemManager;
  v4 = a3;
  v5 = [(HFItemManager *)&v10 _itemsToHideInSet:v4];
  v6 = [v5 mutableCopy];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HUHomeStatusDetailsItemManager__itemsToHideInSet___block_invoke;
  v9[3] = &unk_277DB85D8;
  v9[4] = self;
  v7 = [v4 na_filter:v9];

  [v6 unionSet:v7];

  return v6;
}

- (void)_didFinishUpdateTransactionWithAffectedItems:(id)a3
{
  v23.receiver = self;
  v23.super_class = HUHomeStatusDetailsItemManager;
  v5 = a3;
  [(HFItemManager *)&v23 _didFinishUpdateTransactionWithAffectedItems:v5];
  v6 = [(HFItemManager *)self sourceItem:v23.receiver];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = [(HFItemManager *)self sourceItem];
    v9 = [v8 latestResults];
    v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D14078]];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [MEMORY[0x277CBEB98] set];
    }

    v13 = v12;

    v14 = [(HUHomeStatusDetailsItemManager *)self representedHomeKitObjects];
    v15 = [v14 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      if ([(HUHomeStatusDetailsItemManager *)self shouldReloadItemProvidersOnSourceItemChange])
      {
        [(HUHomeStatusDetailsItemManager *)self setRepresentedHomeKitObjects:0];
        v16 = [(HFItemManager *)self itemProviders];
        v17 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:v16 senderSelector:a2];
      }

      else
      {
        v18 = [(HFItemManager *)self sourceItem];
        v19 = [v18 latestResults];
        v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
        v21 = [v20 BOOLValue];

        if ((v21 & 1) == 0)
        {
          v22 = [(HUHomeStatusDetailsItemManager *)self representedHomeKitObjects];
          [v22 unionSet:v13];

          [(HFItemManager *)self recalculateVisibilityAndSortAllItems];
        }
      }
    }
  }
}

- (void)_willUpdateSections
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = objc_opt_new();
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__HUHomeStatusDetailsItemManager__willUpdateSections__block_invoke;
  aBlock[3] = &unk_277DC1380;
  aBlock[4] = self;
  v21 = v3;
  v22 = v4;
  v5 = v4;
  v6 = v3;
  v7 = _Block_copy(aBlock);
  v8 = [(HFItemManager *)self itemProviders];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __53__HUHomeStatusDetailsItemManager__willUpdateSections__block_invoke_2;
  v18 = &unk_277DC13A8;
  v19 = v7;
  v9 = v7;
  [v8 na_each:&v15];

  v10 = objc_alloc(MEMORY[0x277CCAC98]);
  v11 = [(HUHomeStatusDetailsItemManager *)self _sectionComparator:v15];
  v12 = [v10 initWithKey:0 ascending:1 comparator:v11];

  v23[0] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v14 = [v6 sortedArrayUsingDescriptors:v13];

  [(HUHomeStatusDetailsItemManager *)self setCachedRoomNamesByIdentifier:v5];
  [(HUHomeStatusDetailsItemManager *)self setCachedSectionIdentifiers:v14];
}

void __53__HUHomeStatusDetailsItemManager__willUpdateSections__block_invoke(id *a1, void *a2)
{
  v12 = a2;
  v3 = [a1[4] shouldHideItem:v12];
  v4 = v12;
  if ((v3 & 1) == 0)
  {
    v5 = [a1[4] _sectionIdentifierForItem:v12];
    [a1[5] addObject:v5];
    if (([a1[4] _shouldUseSeparateSectionForItem:v12] & 1) == 0)
    {
      v6 = [a1[4] _roomForItem:v12];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 uniqueIdentifier];
        v9 = [v8 UUIDString];
        v10 = [v5 isEqualToString:v9];

        if (v10)
        {
          v11 = [v7 name];
          [a1[6] setObject:v11 forKeyedSubscript:v5];
        }
      }
    }

    v4 = v12;
  }
}

void __53__HUHomeStatusDetailsItemManager__willUpdateSections__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 items];
  [v3 na_each:*(a1 + 32)];
}

- (id)_sectionComparator
{
  if (_MergedGlobals_4_4 != -1)
  {
    dispatch_once(&_MergedGlobals_4_4, &__block_literal_global_345);
  }

  v3 = qword_27C838030;
  v4 = [(HFItemManager *)self home];
  v5 = [v4 hf_orderedRooms];
  v6 = [v5 na_map:&__block_literal_global_348];

  v7 = [v3 arrayByAddingObjectsFromArray:v6];
  v8 = [MEMORY[0x277D14CE8] comparatorWithSortedObjects:v7];

  return v8;
}

void __52__HUHomeStatusDetailsItemManager__sectionComparator__block_invoke_2()
{
  v2[7] = *MEMORY[0x277D85DE8];
  v2[0] = @"UrgentServices";
  v2[1] = @"ResidentDevice";
  v2[2] = @"FirmwareUpdateInstructions";
  v2[3] = @"FirmwareUpdateAppPunchOut";
  v2[4] = @"SoftwareUpdateInfo";
  v2[5] = @"LowBattery";
  v2[6] = @"GeneralServices";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:7];
  v1 = qword_27C838030;
  qword_27C838030 = v0;
}

id __52__HUHomeStatusDetailsItemManager__sectionComparator__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)_comparatorForSectionIdentifier:(id)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19[0] = @"UrgentServices";
  v19[1] = @"GeneralServices";
  v19[2] = @"LowBattery";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = &__block_literal_global_352;
    goto LABEL_9;
  }

  v18[0] = @"FirmwareUpdateInstructions";
  v18[1] = @"FirmwareUpdateAppPunchOut";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v9 = [v8 containsObject:v4];

  if (v9)
  {
    v10 = +[HUFirmwareUpdateItemProvider itemComparator];
  }

  else
  {
    if ([v4 isEqualToString:@"SoftwareUpdateInfo"])
    {
      v11 = MEMORY[0x277D14CE8];
      v17 = objc_opt_class();
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      v16.receiver = self;
      v16.super_class = HUHomeStatusDetailsItemManager;
      v13 = [(HFItemManager *)&v16 _comparatorForSectionIdentifier:v4];
      v7 = [v11 comparatorWithSortedClasses:v12 secondaryComparator:v13];

      goto LABEL_9;
    }

    v15.receiver = self;
    v15.super_class = HUHomeStatusDetailsItemManager;
    v10 = [(HFItemManager *)&v15 _comparatorForSectionIdentifier:v4];
  }

  v7 = v10;
LABEL_9:

  return v7;
}

uint64_t __66__HUHomeStatusDetailsItemManager__comparatorForSectionIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = *MEMORY[0x277D140B8];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D140B8]];
  v8 = [v4 latestResults];

  v9 = [v8 objectForKeyedSubscript:v6];
  v10 = [v7 localizedStandardCompare:v9];

  return v10;
}

- (id)matchingItemForHomeKitObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    if ([v7 hf_isCamera] && (objc_msgSend(v7, "cameraProfiles"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9))
    {
      v10 = [v7 cameraProfiles];
      v11 = [v10 firstObject];
    }

    else
    {
      if (![v7 hf_isHomePod])
      {
        goto LABEL_14;
      }

      v10 = [v7 home];
      v12 = [v10 hf_mediaSystemForAccessory:v7];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v5;
      }

      v11 = v14;

      v5 = v13;
    }

    v5 = v11;
  }

LABEL_14:
  v15 = [(HFItemManager *)self allDisplayedItems];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__HUHomeStatusDetailsItemManager_matchingItemForHomeKitObject___block_invoke;
  v19[3] = &unk_277DB85D8;
  v20 = v5;
  v16 = v5;
  v17 = [v15 na_firstObjectPassingTest:v19];

  return v17;
}

uint64_t __63__HUHomeStatusDetailsItemManager_matchingItemForHomeKitObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_2824C0788])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 homeKitObject];
    v8 = [v7 isEqual:*(a1 + 32)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldHideItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(HUHomeStatusDetailsItemManager *)self representedHomeKitObjects];
      v11 = [v10 na_any:&__block_literal_global_359];

      if (!v11 || ![(HUHomeStatusDetailsItemManager *)self isFirmwareUpdateStatusItem])
      {
        goto LABEL_7;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v12 = v4;
        if ([v12 conformsToProtocol:&unk_2824C0788])
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v5 = v13;

        if (v5)
        {
          v14 = [v5 homeKitObject];
          v15 = [(HUHomeStatusDetailsItemManager *)self _shouldHideHomeKitObject:v14];

          if (v15)
          {
            v9 = 1;
LABEL_19:

            goto LABEL_20;
          }
        }

        v6 = [v12 latestResults];
        v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
        v9 = [v7 BOOLValue];
        goto LABEL_17;
      }
    }

    v5 = [v4 latestResults];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
    v9 = [v6 BOOLValue];
LABEL_18:

    v12 = v5;
    goto LABEL_19;
  }

  if ([(HUHomeStatusDetailsItemManager *)self isFirmwareUpdateStatusItem])
  {
    v5 = [(HUHomeStatusDetailsItemManager *)self firmwareUpdateItemProvider];
    v6 = [v5 instructionsItem];
    v7 = [v6 latestResults];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
    v9 = [v8 BOOLValue];

LABEL_17:
    goto LABEL_18;
  }

LABEL_7:
  v9 = 1;
LABEL_20:

  return v9;
}

uint64_t __49__HUHomeStatusDetailsItemManager_shouldHideItem___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 category];
    v4 = [v3 categoryType];
    v5 = [v4 isEqualToString:*MEMORY[0x277CCE8B0]];

LABEL_5:
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 accessory];
    v5 = [v3 hf_isHomePod];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v2 hf_isHomePod];
  }

  else
  {
    v5 = 0;
  }

LABEL_6:

  return v5;
}

- (BOOL)_shouldHideHomeKitObject:(id)a3
{
  v4 = a3;
  v6 = [(HUHomeStatusDetailsItemManager *)self representedHomeKitObjects];
  v5 = [v6 count];

  LOBYTE(v6) = 1;
  if (v4 && v5)
  {
    if ([(HUHomeStatusDetailsItemManager *)self isDisplayingRoomLevelStatus])
    {
      v7 = v4;
      v8 = &unk_282547DB8;
      if ([v7 conformsToProtocol:v8])
      {
        v9 = v7;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = [(HUHomeStatusDetailsItemManager *)self statusItem];
      v12 = [v11 room];
      v13 = [v10 hf_parentRoom];
      v14 = [v12 isEqual:v13];

      if (v14)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v15 = [(HUHomeStatusDetailsItemManager *)self statusItem];
      v16 = [v15 latestResults];
      v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D13EC8]];
      v18 = [v17 integerValue];

      v19 = v4;
      v20 = &unk_28259DE80;
      if ([v19 conformsToProtocol:v20])
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      if (![v22 hf_hasSetVisibleInHomeStatus] || (objc_msgSend(v22, "hf_isVisibleInHomeStatus") & 1) != 0 || v18 >= 2)
      {

LABEL_19:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v4;
          v24 = [v23 services];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __59__HUHomeStatusDetailsItemManager__shouldHideHomeKitObject___block_invoke;
          v34[3] = &unk_277DB9560;
          v34[4] = self;
          LOBYTE(v6) = [v24 na_all:v34];

          goto LABEL_27;
        }

        objc_opt_class();
        v25 = objc_opt_isKindOfClass() & 1;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v4;
          goto LABEL_25;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_22:
          v26 = [v4 accessory];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v6 = 0;
            goto LABEL_26;
          }

          v26 = [v4 hf_linkedAccessory];
        }

LABEL_25:
        v6 = v26;
LABEL_26:
        v27 = [(HUHomeStatusDetailsItemManager *)self representedHomeKitObjects];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __59__HUHomeStatusDetailsItemManager__shouldHideHomeKitObject___block_invoke_2;
        v30[3] = &unk_277DC13F0;
        v33 = v25;
        v31 = v4;
        v32 = v6;
        v28 = v6;
        LODWORD(v6) = [v27 na_any:v30] ^ 1;

        goto LABEL_27;
      }
    }

    LOBYTE(v6) = 1;
  }

LABEL_27:

  return v6;
}

uint64_t __59__HUHomeStatusDetailsItemManager__shouldHideHomeKitObject___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEqual:v3])
  {
    v4 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_10:
      v4 = 0;
      goto LABEL_13;
    }

    v5 = [v3 hf_linkedAccessory];
  }

  v6 = v5;
  if (!v5)
  {
    goto LABEL_10;
  }

  if (*(a1 + 48) == 1)
  {
    v7 = [v5 home];
    v8 = [v7 hf_mediaSystemForAccessory:v6];
    v4 = [v8 isEqual:*(a1 + 32)];
  }

  else
  {
    v4 = [v5 isEqual:*(a1 + 40)];
  }

LABEL_13:
  return v4;
}

- (int64_t)_effectivePriorityForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13EC8]];

  v7 = [(HUHomeStatusDetailsItemManager *)self _minimumPriorityNumberForItem:v4];

  if (v6)
  {
    v8 = [v6 integerValue];
    if (v7)
    {
LABEL_3:
      v9 = [v7 integerValue];
      goto LABEL_6;
    }
  }

  else
  {
    v8 = -1;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v9 = -1;
LABEL_6:
  if (v9 > v8)
  {
    v8 = v9;
  }

  return v8;
}

- (id)_minimumPriorityNumberForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUHomeStatusDetailsItemManager *)self minimumPriorityItemTuples];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HUHomeStatusDetailsItemManager__minimumPriorityNumberForItem___block_invoke;
  v10[3] = &unk_277DC1308;
  v6 = v4;
  v11 = v6;
  v7 = [v5 na_firstObjectPassingTest:v10];

  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "priority")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __64__HUHomeStatusDetailsItemManager__minimumPriorityNumberForItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 item];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)statusItem
{
  objc_opt_class();
  v3 = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)isDisplayingRoomLevelStatus
{
  v2 = [(HUHomeStatusDetailsItemManager *)self statusItem];
  v3 = [v2 room];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isNoResponseStatusItem
{
  v2 = [(HUHomeStatusDetailsItemManager *)self statusItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isAccessoriesWithIssuesStatusItem
{
  v2 = [(HUHomeStatusDetailsItemManager *)self statusItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isFirmwareUpdateStatusItem
{
  v2 = [(HUHomeStatusDetailsItemManager *)self statusItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isLowBatteryStatusItem
{
  v2 = [(HUHomeStatusDetailsItemManager *)self statusItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isResidentDeviceStatusItem
{
  v2 = [(HUHomeStatusDetailsItemManager *)self statusItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)shouldShowAccessoryTiles
{
  if ([(HUHomeStatusDetailsItemManager *)self isNoResponseStatusItem]|| [(HUHomeStatusDetailsItemManager *)self isFirmwareUpdateStatusItem]|| [(HUHomeStatusDetailsItemManager *)self isLowBatteryStatusItem])
  {
    return 1;
  }

  v5 = [(HFItemManager *)self sourceItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 1;
  }

  else
  {
    v6 = [(HFItemManager *)self sourceItem];
    objc_opt_class();
    v3 = (objc_opt_isKindOfClass() & 1) != 0 || [(HUHomeStatusDetailsItemManager *)self isAccessoriesWithIssuesStatusItem];
  }

  return v3;
}

- (BOOL)shouldShowServiceGroupTiles
{
  if ([(HUHomeStatusDetailsItemManager *)self isNoResponseStatusItem]|| [(HUHomeStatusDetailsItemManager *)self isFirmwareUpdateStatusItem]|| [(HUHomeStatusDetailsItemManager *)self isLowBatteryStatusItem])
  {
    return 0;
  }

  else
  {
    return ![(HUHomeStatusDetailsItemManager *)self isAccessoriesWithIssuesStatusItem];
  }
}

- (BOOL)shouldReloadItemProvidersOnSourceItemChange
{
  if ([(HUHomeStatusDetailsItemManager *)self isNoResponseStatusItem]|| [(HUHomeStatusDetailsItemManager *)self isFirmwareUpdateStatusItem]|| [(HUHomeStatusDetailsItemManager *)self isLowBatteryStatusItem]|| [(HUHomeStatusDetailsItemManager *)self isResidentDeviceStatusItem])
  {
    return 1;
  }

  return [(HUHomeStatusDetailsItemManager *)self isAccessoriesWithIssuesStatusItem];
}

@end