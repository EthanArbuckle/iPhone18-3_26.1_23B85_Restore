@interface HUHomeStatusDetailsItemManager
- (BOOL)_shouldHideHomeKitObject:(id)object;
- (BOOL)_shouldUseSoftwareUpdateSectionForItem:(id)item;
- (BOOL)hasSymptomsHandlerForMediaProfileContainer:(id)container;
- (BOOL)isAccessoriesWithIssuesStatusItem;
- (BOOL)isDisplayingRoomLevelStatus;
- (BOOL)isFirmwareUpdateStatusItem;
- (BOOL)isLowBatteryStatusItem;
- (BOOL)isNoResponseStatusItem;
- (BOOL)isResidentDeviceStatusItem;
- (BOOL)shouldHideItem:(id)item;
- (BOOL)shouldReloadItemProvidersOnSourceItemChange;
- (BOOL)shouldShowAccessoryTiles;
- (BOOL)shouldShowRoomNameForItem:(id)item;
- (BOOL)shouldShowServiceGroupTiles;
- (BOOL)shouldUseTitleDescriptionStyleForItem:(id)item;
- (NSMutableSet)representedHomeKitObjects;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_comparatorForSectionIdentifier:(id)identifier;
- (id)_identifierForSection:(unint64_t)section;
- (id)_itemsToHideInSet:(id)set;
- (id)_minimumPriorityNumberForItem:(id)item;
- (id)_roomForItem:(id)item;
- (id)_sectionComparator;
- (id)_sectionIdentifierForItem:(id)item;
- (id)_separateSectionIdentifierForItem:(id)item;
- (id)_titleForSectionWithIdentifier:(id)identifier;
- (id)matchingItemForHomeKitObject:(id)object;
- (id)statusItem;
- (int64_t)_effectivePriorityForItem:(id)item;
- (unint64_t)_numberOfSections;
- (void)_didFinishUpdateTransactionWithAffectedItems:(id)items;
- (void)_willUpdateSections;
- (void)maintainMinimumPriorityForItem:(id)item;
- (void)resetItemPrioritiesToDefaults;
@end

@implementation HUHomeStatusDetailsItemManager

- (NSMutableSet)representedHomeKitObjects
{
  representedHomeKitObjects = self->_representedHomeKitObjects;
  if (!representedHomeKitObjects)
  {
    sourceItem = [(HFItemManager *)self sourceItem];
    latestResults = [sourceItem latestResults];
    v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14078]];
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

- (BOOL)shouldUseTitleDescriptionStyleForItem:(id)item
{
  itemCopy = item;
  residentDeviceStatusItemProvider = [(HUHomeStatusDetailsItemManager *)self residentDeviceStatusItemProvider];
  items = [residentDeviceStatusItemProvider items];
  if ([items containsObject:itemCopy] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = 1;
  }

  else
  {
    noRemoteAccessItem = [(HUHomeStatusDetailsItemManager *)self noRemoteAccessItem];
    v7 = noRemoteAccessItem == itemCopy;
  }

  return v7;
}

- (BOOL)shouldShowRoomNameForItem:(id)item
{
  v4 = [(HUHomeStatusDetailsItemManager *)self _sectionIdentifierForItem:item];
  cachedRoomNamesByIdentifier = [(HUHomeStatusDetailsItemManager *)self cachedRoomNamesByIdentifier];
  allKeys = [cachedRoomNamesByIdentifier allKeys];
  v7 = [allKeys containsObject:v4];

  return v7 ^ 1;
}

- (void)maintainMinimumPriorityForItem:(id)item
{
  itemCopy = item;
  minimumPriorityItemTuples = [(HUHomeStatusDetailsItemManager *)self minimumPriorityItemTuples];

  if (!minimumPriorityItemTuples)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    [(HUHomeStatusDetailsItemManager *)self setMinimumPriorityItemTuples:v6];
  }

  latestResults = [itemCopy latestResults];
  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EC8]];

  if (v8)
  {
    integerValue = [v8 integerValue];
    if (integerValue >= [(HUHomeStatusDetailsItemManager *)self _effectivePriorityForItem:itemCopy])
    {
      minimumPriorityItemTuples2 = [(HUHomeStatusDetailsItemManager *)self minimumPriorityItemTuples];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __65__HUHomeStatusDetailsItemManager_maintainMinimumPriorityForItem___block_invoke;
      v14[3] = &unk_277DC1308;
      v11 = itemCopy;
      v15 = v11;
      v12 = [minimumPriorityItemTuples2 na_firstObjectPassingTest:v14];

      if (v12)
      {
        -[HUHomeStatusDetailsItemAndPriorityTuple setPriority:](v12, "setPriority:", [v8 integerValue]);
      }

      else
      {
        v12 = -[HUHomeStatusDetailsItemAndPriorityTuple initWithItem:priority:]([HUHomeStatusDetailsItemAndPriorityTuple alloc], "initWithItem:priority:", v11, [v8 integerValue]);
        minimumPriorityItemTuples3 = [(HUHomeStatusDetailsItemManager *)self minimumPriorityItemTuples];
        [minimumPriorityItemTuples3 addObject:v12];
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

- (BOOL)hasSymptomsHandlerForMediaProfileContainer:(id)container
{
  containerCopy = container;
  v4 = [MEMORY[0x277D14810] isAnyKindOfGroup:containerCopy];
  v5 = [MEMORY[0x277D14810] isContainedWithinAGroup:containerCopy];
  if ((v4 & 1) != 0 || !v5)
  {
    accessories = [containerCopy accessories];
    v6 = [accessories na_any:&__block_literal_global_204];
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
  minimumPriorityItemTuples = [(HUHomeStatusDetailsItemManager *)self minimumPriorityItemTuples];
  [minimumPriorityItemTuples removeAllObjects];
}

- (id)_buildItemProvidersForHome:(id)home
{
  v37[3] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v5 = objc_alloc(MEMORY[0x277D142F8]);
  statusItem = [(HUHomeStatusDetailsItemManager *)self statusItem];
  room = [statusItem room];
  v8 = room;
  if (room)
  {
    v9 = room;
  }

  else
  {
    v9 = homeCopy;
  }

  v10 = [v5 initWithAccessoryContainer:v9 inHome:homeCopy];

  if ([(HUHomeStatusDetailsItemManager *)self shouldShowAccessoryTiles])
  {
    v11 = 0;
  }

  else
  {
    v11 = 4;
  }

  [v10 setObjectLevel:v11];
  v12 = [objc_alloc(MEMORY[0x277D149C8]) initWithHome:homeCopy];
  [(HUHomeStatusDetailsItemManager *)self setResidentDeviceStatusItemProvider:v12];

  v13 = [objc_alloc(MEMORY[0x277D148C8]) initWithHome:homeCopy];
  [(HUHomeStatusDetailsItemManager *)self setNoRemoteAccessItem:v13];

  v14 = objc_alloc(MEMORY[0x277D14B40]);
  v15 = MEMORY[0x277CBEB98];
  noRemoteAccessItem = [(HUHomeStatusDetailsItemManager *)self noRemoteAccessItem];
  v17 = [v15 setWithObject:noRemoteAccessItem];
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
  residentDeviceStatusItemProvider = [(HUHomeStatusDetailsItemManager *)self residentDeviceStatusItemProvider];
  [residentDeviceStatusItemProvider setFilter:v27];

  v37[0] = v10;
  residentDeviceStatusItemProvider2 = [(HUHomeStatusDetailsItemManager *)self residentDeviceStatusItemProvider];
  v37[1] = residentDeviceStatusItemProvider2;
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
  cachedSectionIdentifiers = [(HUHomeStatusDetailsItemManager *)self cachedSectionIdentifiers];
  v3 = [cachedSectionIdentifiers count];

  return v3;
}

- (id)_identifierForSection:(unint64_t)section
{
  cachedSectionIdentifiers = [(HUHomeStatusDetailsItemManager *)self cachedSectionIdentifiers];
  if ([cachedSectionIdentifiers count] <= section)
  {
    NSLog(&cfstr_ReceivedIdenti.isa, section, [cachedSectionIdentifiers count]);
  }

  if ([cachedSectionIdentifiers count] <= section)
  {
    v5 = 0;
  }

  else
  {
    v5 = [cachedSectionIdentifiers objectAtIndexedSubscript:section];
  }

  return v5;
}

- (id)_titleForSectionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cachedRoomNamesByIdentifier = [(HUHomeStatusDetailsItemManager *)self cachedRoomNamesByIdentifier];
  if (cachedRoomNamesByIdentifier)
  {
    v6 = cachedRoomNamesByIdentifier;
    cachedRoomNamesByIdentifier2 = [(HUHomeStatusDetailsItemManager *)self cachedRoomNamesByIdentifier];
    v8 = [cachedRoomNamesByIdentifier2 objectForKeyedSubscript:identifierCopy];

    if (v8)
    {
      cachedRoomNamesByIdentifier3 = [(HUHomeStatusDetailsItemManager *)self cachedRoomNamesByIdentifier];
      v10 = [cachedRoomNamesByIdentifier3 objectForKeyedSubscript:identifierCopy];

      goto LABEL_13;
    }
  }

  if ([identifierCopy isEqualToString:@"UrgentServices"])
  {
    v11 = @"HUStatusDetailsUrgentSectionTitle";
LABEL_12:
    v10 = _HULocalizedStringWithDefaultValue(v11, v11, 1);
    goto LABEL_13;
  }

  if ([identifierCopy isEqualToString:@"GeneralServices"])
  {
    v11 = @"HUStatusDetailsGeneralSectionTitle";
    goto LABEL_12;
  }

  if ([identifierCopy isEqualToString:@"LowBattery"])
  {
    v11 = @"HUStatusDetailsLowBatterySectionTitle";
    goto LABEL_12;
  }

  if ([identifierCopy isEqualToString:@"SoftwareUpdateInfo"])
  {
    v11 = @"HUStatusDetailsSoftwareUpdateSectionTitle";
    goto LABEL_12;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (BOOL)_shouldUseSoftwareUpdateSectionForItem:(id)item
{
  itemCopy = item;
  softwareUpdateItemProvider = [(HUHomeStatusDetailsItemManager *)self softwareUpdateItemProvider];
  items = [softwareUpdateItemProvider items];
  v7 = [items containsObject:itemCopy];

  return v7;
}

- (id)_separateSectionIdentifierForItem:(id)item
{
  itemCopy = item;
  if (![(HUHomeStatusDetailsItemManager *)self _shouldUseSeparateSectionForItem:itemCopy])
  {
    goto LABEL_11;
  }

  noRemoteAccessItem = [(HUHomeStatusDetailsItemManager *)self noRemoteAccessItem];
  v6 = noRemoteAccessItem;
  if (noRemoteAccessItem == itemCopy)
  {

    goto LABEL_8;
  }

  residentDeviceStatusItemProvider = [(HUHomeStatusDetailsItemManager *)self residentDeviceStatusItemProvider];
  items = [residentDeviceStatusItemProvider items];
  v9 = [items containsObject:itemCopy];

  if (v9)
  {
LABEL_8:
    uUIDString = @"ResidentDevice";
    goto LABEL_12;
  }

  firmwareUpdateItemProvider = [(HUHomeStatusDetailsItemManager *)self firmwareUpdateItemProvider];
  instructionsItem = [firmwareUpdateItemProvider instructionsItem];

  if (instructionsItem == itemCopy)
  {
    uUIDString = @"FirmwareUpdateInstructions";
    goto LABEL_12;
  }

  if ([itemCopy conformsToProtocol:&unk_2824C0788])
  {
    homeKitObject = [itemCopy homeKitObject];
    uniqueIdentifier = [homeKitObject uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];

    goto LABEL_12;
  }

  NSLog(&cfstr_UnexpectedItem_2.isa, itemCopy);
LABEL_11:
  uUIDString = 0;
LABEL_12:

  return uUIDString;
}

- (id)_roomForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy conformsToProtocol:&unk_2824C0788])
  {
    v5 = itemCopy;
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

  homeKitObject = [v6 homeKitObject];
  if ([homeKitObject conformsToProtocol:&unk_282547DB8])
  {
    v9 = homeKitObject;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (!v10)
  {
    homeKitObject2 = [v7 homeKitObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      homeKitObject3 = [v7 homeKitObject];
      if ([(HUHomeStatusDetailsItemManager *)self isDisplayingRoomLevelStatus])
      {
        statusItem = [(HUHomeStatusDetailsItemManager *)self statusItem];
        room = [statusItem room];
      }

      else
      {
        statusItem = [homeKitObject3 services];
        firstObject = [statusItem firstObject];
        room = [firstObject hf_parentRoom];
      }

      goto LABEL_16;
    }

LABEL_13:
    room = 0;
    goto LABEL_17;
  }

  room = [v10 hf_parentRoom];
LABEL_16:

LABEL_17:

  return room;
}

- (id)_sectionIdentifierForItem:(id)item
{
  itemCopy = item;
  if ([(HUHomeStatusDetailsItemManager *)self _shouldUseSeparateSectionForItem:itemCopy])
  {
    v5 = [(HUHomeStatusDetailsItemManager *)self _separateSectionIdentifierForItem:itemCopy];
  }

  else
  {
    firmwareUpdateItemProvider = [(HUHomeStatusDetailsItemManager *)self firmwareUpdateItemProvider];
    items = [firmwareUpdateItemProvider items];
    v8 = [items containsObject:itemCopy];

    if (v8)
    {
      v5 = @"FirmwareUpdateAppPunchOut";
    }

    else if ([(HUHomeStatusDetailsItemManager *)self _shouldUseSoftwareUpdateSectionForItem:itemCopy])
    {
      v5 = @"SoftwareUpdateInfo";
    }

    else
    {
      v9 = [(HUHomeStatusDetailsItemManager *)self _roomForItem:itemCopy];
      uniqueIdentifier = [v9 uniqueIdentifier];
      uUIDString = [uniqueIdentifier UUIDString];
      v12 = uUIDString;
      v13 = @"GeneralServices";
      if (uUIDString)
      {
        v13 = uUIDString;
      }

      v5 = v13;
    }
  }

  return v5;
}

- (id)_itemsToHideInSet:(id)set
{
  v10.receiver = self;
  v10.super_class = HUHomeStatusDetailsItemManager;
  setCopy = set;
  v5 = [(HFItemManager *)&v10 _itemsToHideInSet:setCopy];
  v6 = [v5 mutableCopy];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HUHomeStatusDetailsItemManager__itemsToHideInSet___block_invoke;
  v9[3] = &unk_277DB85D8;
  v9[4] = self;
  v7 = [setCopy na_filter:v9];

  [v6 unionSet:v7];

  return v6;
}

- (void)_didFinishUpdateTransactionWithAffectedItems:(id)items
{
  v23.receiver = self;
  v23.super_class = HUHomeStatusDetailsItemManager;
  itemsCopy = items;
  [(HFItemManager *)&v23 _didFinishUpdateTransactionWithAffectedItems:itemsCopy];
  v6 = [(HFItemManager *)self sourceItem:v23.receiver];
  v7 = [itemsCopy containsObject:v6];

  if (v7)
  {
    sourceItem = [(HFItemManager *)self sourceItem];
    latestResults = [sourceItem latestResults];
    v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14078]];
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

    representedHomeKitObjects = [(HUHomeStatusDetailsItemManager *)self representedHomeKitObjects];
    v15 = [representedHomeKitObjects isEqual:v13];

    if ((v15 & 1) == 0)
    {
      if ([(HUHomeStatusDetailsItemManager *)self shouldReloadItemProvidersOnSourceItemChange])
      {
        [(HUHomeStatusDetailsItemManager *)self setRepresentedHomeKitObjects:0];
        itemProviders = [(HFItemManager *)self itemProviders];
        v17 = [(HFItemManager *)self reloadAndUpdateItemsForProviders:itemProviders senderSelector:a2];
      }

      else
      {
        sourceItem2 = [(HFItemManager *)self sourceItem];
        latestResults2 = [sourceItem2 latestResults];
        v20 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
        bOOLValue = [v20 BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          representedHomeKitObjects2 = [(HUHomeStatusDetailsItemManager *)self representedHomeKitObjects];
          [representedHomeKitObjects2 unionSet:v13];

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
  itemProviders = [(HFItemManager *)self itemProviders];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __53__HUHomeStatusDetailsItemManager__willUpdateSections__block_invoke_2;
  v18 = &unk_277DC13A8;
  v19 = v7;
  v9 = v7;
  [itemProviders na_each:&v15];

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
  home = [(HFItemManager *)self home];
  hf_orderedRooms = [home hf_orderedRooms];
  v6 = [hf_orderedRooms na_map:&__block_literal_global_348];

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

- (id)_comparatorForSectionIdentifier:(id)identifier
{
  v19[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v19[0] = @"UrgentServices";
  v19[1] = @"GeneralServices";
  v19[2] = @"LowBattery";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
  v6 = [v5 containsObject:identifierCopy];

  if (v6)
  {
    v7 = &__block_literal_global_352;
    goto LABEL_9;
  }

  v18[0] = @"FirmwareUpdateInstructions";
  v18[1] = @"FirmwareUpdateAppPunchOut";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v9 = [v8 containsObject:identifierCopy];

  if (v9)
  {
    v10 = +[HUFirmwareUpdateItemProvider itemComparator];
  }

  else
  {
    if ([identifierCopy isEqualToString:@"SoftwareUpdateInfo"])
    {
      v11 = MEMORY[0x277D14CE8];
      v17 = objc_opt_class();
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      v16.receiver = self;
      v16.super_class = HUHomeStatusDetailsItemManager;
      v13 = [(HFItemManager *)&v16 _comparatorForSectionIdentifier:identifierCopy];
      v7 = [v11 comparatorWithSortedClasses:v12 secondaryComparator:v13];

      goto LABEL_9;
    }

    v15.receiver = self;
    v15.super_class = HUHomeStatusDetailsItemManager;
    v10 = [(HFItemManager *)&v15 _comparatorForSectionIdentifier:identifierCopy];
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

- (id)matchingItemForHomeKitObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v5 = objectCopy;
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
      cameraProfiles = [v7 cameraProfiles];
      firstObject = [cameraProfiles firstObject];
    }

    else
    {
      if (![v7 hf_isHomePod])
      {
        goto LABEL_14;
      }

      cameraProfiles = [v7 home];
      v12 = [cameraProfiles hf_mediaSystemForAccessory:v7];
      v13 = v12;
      if (v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v5;
      }

      firstObject = v14;

      v5 = v13;
    }

    v5 = firstObject;
  }

LABEL_14:
  allDisplayedItems = [(HFItemManager *)self allDisplayedItems];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__HUHomeStatusDetailsItemManager_matchingItemForHomeKitObject___block_invoke;
  v19[3] = &unk_277DB85D8;
  v20 = v5;
  v16 = v5;
  v17 = [allDisplayedItems na_firstObjectPassingTest:v19];

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

- (BOOL)shouldHideItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      representedHomeKitObjects = [(HUHomeStatusDetailsItemManager *)self representedHomeKitObjects];
      v11 = [representedHomeKitObjects na_any:&__block_literal_global_359];

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
        v12 = itemCopy;
        if ([v12 conformsToProtocol:&unk_2824C0788])
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        latestResults2 = v13;

        if (latestResults2)
        {
          homeKitObject = [latestResults2 homeKitObject];
          v15 = [(HUHomeStatusDetailsItemManager *)self _shouldHideHomeKitObject:homeKitObject];

          if (v15)
          {
            bOOLValue = 1;
LABEL_19:

            goto LABEL_20;
          }
        }

        latestResults = [v12 latestResults];
        v6LatestResults = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
        bOOLValue = [v6LatestResults BOOLValue];
        goto LABEL_17;
      }
    }

    latestResults2 = [itemCopy latestResults];
    latestResults = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
    bOOLValue = [latestResults BOOLValue];
LABEL_18:

    v12 = latestResults2;
    goto LABEL_19;
  }

  if ([(HUHomeStatusDetailsItemManager *)self isFirmwareUpdateStatusItem])
  {
    latestResults2 = [(HUHomeStatusDetailsItemManager *)self firmwareUpdateItemProvider];
    latestResults = [latestResults2 instructionsItem];
    v6LatestResults = [latestResults latestResults];
    v8 = [v6LatestResults objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
    bOOLValue = [v8 BOOLValue];

LABEL_17:
    goto LABEL_18;
  }

LABEL_7:
  bOOLValue = 1;
LABEL_20:

  return bOOLValue;
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

- (BOOL)_shouldHideHomeKitObject:(id)object
{
  objectCopy = object;
  representedHomeKitObjects = [(HUHomeStatusDetailsItemManager *)self representedHomeKitObjects];
  v5 = [representedHomeKitObjects count];

  LOBYTE(representedHomeKitObjects) = 1;
  if (objectCopy && v5)
  {
    if ([(HUHomeStatusDetailsItemManager *)self isDisplayingRoomLevelStatus])
    {
      v7 = objectCopy;
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

      statusItem = [(HUHomeStatusDetailsItemManager *)self statusItem];
      room = [statusItem room];
      hf_parentRoom = [v10 hf_parentRoom];
      v14 = [room isEqual:hf_parentRoom];

      if (v14)
      {
        goto LABEL_19;
      }
    }

    else
    {
      statusItem2 = [(HUHomeStatusDetailsItemManager *)self statusItem];
      latestResults = [statusItem2 latestResults];
      v17 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EC8]];
      integerValue = [v17 integerValue];

      v19 = objectCopy;
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

      if (![v22 hf_hasSetVisibleInHomeStatus] || (objc_msgSend(v22, "hf_isVisibleInHomeStatus") & 1) != 0 || integerValue >= 2)
      {

LABEL_19:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = objectCopy;
          services = [v23 services];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __59__HUHomeStatusDetailsItemManager__shouldHideHomeKitObject___block_invoke;
          v34[3] = &unk_277DB9560;
          v34[4] = self;
          LOBYTE(representedHomeKitObjects) = [services na_all:v34];

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
          accessory = objectCopy;
          goto LABEL_25;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
LABEL_22:
          accessory = [objectCopy accessory];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            representedHomeKitObjects = 0;
            goto LABEL_26;
          }

          accessory = [objectCopy hf_linkedAccessory];
        }

LABEL_25:
        representedHomeKitObjects = accessory;
LABEL_26:
        representedHomeKitObjects2 = [(HUHomeStatusDetailsItemManager *)self representedHomeKitObjects];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __59__HUHomeStatusDetailsItemManager__shouldHideHomeKitObject___block_invoke_2;
        v30[3] = &unk_277DC13F0;
        v33 = v25;
        v31 = objectCopy;
        v32 = representedHomeKitObjects;
        v28 = representedHomeKitObjects;
        LODWORD(representedHomeKitObjects) = [representedHomeKitObjects2 na_any:v30] ^ 1;

        goto LABEL_27;
      }
    }

    LOBYTE(representedHomeKitObjects) = 1;
  }

LABEL_27:

  return representedHomeKitObjects;
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

- (int64_t)_effectivePriorityForItem:(id)item
{
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EC8]];

  v7 = [(HUHomeStatusDetailsItemManager *)self _minimumPriorityNumberForItem:itemCopy];

  if (v6)
  {
    integerValue = [v6 integerValue];
    if (v7)
    {
LABEL_3:
      integerValue2 = [v7 integerValue];
      goto LABEL_6;
    }
  }

  else
  {
    integerValue = -1;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  integerValue2 = -1;
LABEL_6:
  if (integerValue2 > integerValue)
  {
    integerValue = integerValue2;
  }

  return integerValue;
}

- (id)_minimumPriorityNumberForItem:(id)item
{
  itemCopy = item;
  minimumPriorityItemTuples = [(HUHomeStatusDetailsItemManager *)self minimumPriorityItemTuples];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__HUHomeStatusDetailsItemManager__minimumPriorityNumberForItem___block_invoke;
  v10[3] = &unk_277DC1308;
  v6 = itemCopy;
  v11 = v6;
  v7 = [minimumPriorityItemTuples na_firstObjectPassingTest:v10];

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
  sourceItem = [(HFItemManager *)self sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = sourceItem;
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
  statusItem = [(HUHomeStatusDetailsItemManager *)self statusItem];
  room = [statusItem room];
  v4 = room != 0;

  return v4;
}

- (BOOL)isNoResponseStatusItem
{
  statusItem = [(HUHomeStatusDetailsItemManager *)self statusItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isAccessoriesWithIssuesStatusItem
{
  statusItem = [(HUHomeStatusDetailsItemManager *)self statusItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isFirmwareUpdateStatusItem
{
  statusItem = [(HUHomeStatusDetailsItemManager *)self statusItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isLowBatteryStatusItem
{
  statusItem = [(HUHomeStatusDetailsItemManager *)self statusItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isResidentDeviceStatusItem
{
  statusItem = [(HUHomeStatusDetailsItemManager *)self statusItem];
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

  sourceItem = [(HFItemManager *)self sourceItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 1;
  }

  else
  {
    sourceItem2 = [(HFItemManager *)self sourceItem];
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