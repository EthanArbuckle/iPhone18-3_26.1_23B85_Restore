@interface HUPresenceUserPickerItemModule
+ (NSString)sectionID;
+ (id)_locationDeviceTextForDeviceNameString:(id)string;
- (BOOL)_canDeselectUserHandle:(id)handle;
- (BOOL)_isPresenceAuthorizedForUser:(id)user;
- (BOOL)_isUserHandleSelected:(id)selected;
- (BOOL)_shouldUseSingleUserStyle;
- (HUPresenceUserPickerItemModule)initWithItemUpdater:(id)updater;
- (HUPresenceUserPickerItemModule)initWithItemUpdater:(id)updater home:(id)home presenceEvent:(id)event options:(id)options delegate:(id)delegate;
- (HUPresenceUserPickerItemModuleDelegate)delegate;
- (id)_allSelectedAndSupportedUsers;
- (id)_attributedFooterTitle;
- (id)_combinedFooterStringForLocationDeviceText:(id)text;
- (id)_homeHubNeedsUpdateWarningText;
- (id)_someUsersNeedSoftwareUpdateWarningText;
- (id)activationOptionItemForGranularity:(unint64_t)granularity;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)confirmationPromptForOptionItem:(id)item;
- (id)itemProviders;
- (id)stateForActivationOptionItem:(id)item;
- (id)stateForUserItem:(id)item;
- (unint64_t)_activationGranularityForUserItem:(id)item;
- (unint64_t)itemTypeForItem:(id)item;
- (void)_createItemProviders;
- (void)_resetSelectionForCustomLocation;
- (void)_updateSelected:(BOOL)selected forUserHandle:(id)handle;
- (void)deselectUserItem:(id)item;
- (void)locationDeviceManager:(id)manager didUpdateActiveLocationDevice:(id)device;
- (void)registerForExternalUpdates;
- (void)selectActivationOptionItem:(id)item;
- (void)selectUserItem:(id)item;
- (void)setOptions:(id)options;
- (void)toggleExpandedForActivationOptionItem:(id)item;
- (void)unregisterForExternalUpdates;
@end

@implementation HUPresenceUserPickerItemModule

+ (NSString)sectionID
{
  if (_MergedGlobals_4 != -1)
  {
    dispatch_once(&_MergedGlobals_4, &__block_literal_global_3_0);
  }

  v3 = qword_27C837E60;

  return v3;
}

void __43__HUPresenceUserPickerItemModule_sectionID__block_invoke_2()
{
  v0 = qword_27C837E60;
  qword_27C837E60 = @"userList";
}

- (HUPresenceUserPickerItemModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_presenceEvent_options_delegate_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUPresenceUserPickerItemModule.m" lineNumber:60 description:{@"%s is unavailable; use %@ instead", "-[HUPresenceUserPickerItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (HUPresenceUserPickerItemModule)initWithItemUpdater:(id)updater home:(id)home presenceEvent:(id)event options:(id)options delegate:(id)delegate
{
  updaterCopy = updater;
  homeCopy = home;
  eventCopy = event;
  optionsCopy = options;
  delegateCopy = delegate;
  if (homeCopy)
  {
    if (eventCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUPresenceUserPickerItemModule.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    if (eventCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUPresenceUserPickerItemModule.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"presenceEvent"}];

LABEL_3:
  v27.receiver = self;
  v27.super_class = HUPresenceUserPickerItemModule;
  v18 = [(HFItemModule *)&v27 initWithItemUpdater:updaterCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_home, home);
    v20 = [objc_alloc(MEMORY[0x277D14978]) initWithEvent:eventCopy];
    presenceEventBuilder = v19->_presenceEventBuilder;
    v19->_presenceEventBuilder = v20;

    objc_storeStrong(&v19->_options, options);
    objc_storeWeak(&v19->_delegate, delegateCopy);
    v22 = +[HULocationDeviceManager sharedInstance];
    locationDeviceManager = v19->_locationDeviceManager;
    v19->_locationDeviceManager = v22;

    [(HUPresenceUserPickerItemModule *)v19 _createItemProviders];
  }

  return v19;
}

- (void)registerForExternalUpdates
{
  locationDeviceManager = [(HUPresenceUserPickerItemModule *)self locationDeviceManager];
  [locationDeviceManager addObserver:self];
}

- (void)unregisterForExternalUpdates
{
  locationDeviceManager = [(HUPresenceUserPickerItemModule *)self locationDeviceManager];
  [locationDeviceManager removeObserver:self];
}

- (unint64_t)itemTypeForItem:(id)item
{
  v24 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  singleUserSummaryItem = [(HUPresenceUserPickerItemModule *)self singleUserSummaryItem];

  if (singleUserSummaryItem == itemCopy)
  {
    v11 = 0;
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    activationOptionStateByGranularity = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
    objectEnumerator = [activationOptionStateByGranularity objectEnumerator];

    v8 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      v11 = 1;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          activationOptionItem = [v13 activationOptionItem];

          if (activationOptionItem == itemCopy)
          {
            goto LABEL_14;
          }

          userOptionItemProvider = [v13 userOptionItemProvider];
          items = [userOptionItemProvider items];
          v17 = [items containsObject:itemCopy];

          if (v17)
          {
            v11 = 2;
LABEL_14:

            goto LABEL_15;
          }
        }

        v9 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    NSLog(&cfstr_UnexpectedItem_2.isa, itemCopy);
    v11 = 2;
  }

LABEL_15:

  return v11;
}

- (id)activationOptionItemForGranularity:(unint64_t)granularity
{
  activationOptionStateByGranularity = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:granularity];
  v6 = [activationOptionStateByGranularity objectForKeyedSubscript:v5];
  activationOptionItem = [v6 activationOptionItem];

  return activationOptionItem;
}

- (id)stateForActivationOptionItem:(id)item
{
  itemCopy = item;
  activationOptionStateByGranularity = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
  objectEnumerator = [activationOptionStateByGranularity objectEnumerator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HUPresenceUserPickerItemModule_stateForActivationOptionItem___block_invoke;
  v10[3] = &unk_277DBA3F8;
  v11 = itemCopy;
  v7 = itemCopy;
  v8 = [objectEnumerator na_firstObjectPassingTest:v10];

  return v8;
}

BOOL __63__HUPresenceUserPickerItemModule_stateForActivationOptionItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activationOptionItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)selectActivationOptionItem:(id)item
{
  v31 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  activationOptionStateByGranularity = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
  objectEnumerator = [activationOptionStateByGranularity objectEnumerator];

  v8 = [objectEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        activationOptionItem = [v12 activationOptionItem];
        [v12 setSelected:activationOptionItem == itemCopy];

        if ([v12 isSelected])
        {
          activationGranularity = [v12 activationGranularity];
          presenceEventBuilder = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
          [presenceEventBuilder setActivationGranularity:activationGranularity];

          activationOptionItem2 = [v12 activationOptionItem];
          selectedUsers = [activationOptionItem2 selectedUsers];
          presenceEventBuilder2 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
          [presenceEventBuilder2 setUsers:selectedUsers];
        }

        else
        {
          [v12 setExpanded:0];
        }
      }

      v9 = [objectEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v20 = MEMORY[0x277D14788];
  allItems = [(HFItemModule *)self allItems];
  v22 = [v20 requestToUpdateItems:allItems senderSelector:a2];
  v23 = [itemUpdater performItemUpdateRequest:v22];

  delegate = [(HUPresenceUserPickerItemModule *)self delegate];
  presenceEventBuilder3 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
  [delegate userPickerModule:self didUpdatePresenceEvent:presenceEventBuilder3];
}

- (void)toggleExpandedForActivationOptionItem:(id)item
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  activationOptionStateByGranularity = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
  objectEnumerator = [activationOptionStateByGranularity objectEnumerator];

  v8 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        activationOptionItem = [v12 activationOptionItem];

        if (activationOptionItem == itemCopy)
        {
          v14 = [v12 isExpanded] ^ 1;
        }

        else
        {
          v14 = 0;
        }

        [v12 setExpanded:v14];
      }

      v9 = [objectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v16 = MEMORY[0x277D14788];
  allItems = [(HFItemModule *)self allItems];
  v18 = [v16 requestToUpdateItems:allItems senderSelector:a2];
  v19 = [itemUpdater performItemUpdateRequest:v18];
}

- (id)stateForUserItem:(id)item
{
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14120]];

  if (v6)
  {
    v7 = [(HUPresenceUserPickerItemModule *)self _isUserHandleSelected:v6];
    home = [(HUPresenceUserPickerItemModule *)self home];
    home2 = [(HUPresenceUserPickerItemModule *)self home];
    v10 = [home2 hf_userForHandle:v6];
    v11 = [home hf_isPresenceAuthorizedForUser:v10];

    v12 = [[HUPresenceUserOptionState alloc] initWithActivationGranularity:[(HUPresenceUserPickerItemModule *)self _activationGranularityForUserItem:itemCopy] selected:v7 locationAvailable:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)selectUserItem:(id)item
{
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14120]];

  v5 = v6;
  if (v6)
  {
    [(HUPresenceUserPickerItemModule *)self _updateSelected:1 forUserHandle:v6];
    v5 = v6;
  }
}

- (void)deselectUserItem:(id)item
{
  latestResults = [item latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14120]];

  v5 = v6;
  if (v6)
  {
    [(HUPresenceUserPickerItemModule *)self _updateSelected:0 forUserHandle:v6];
    v5 = v6;
  }
}

- (void)setOptions:(id)options
{
  v28 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (self->_options != optionsCopy)
  {
    objc_storeStrong(&self->_options, options);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    selfCopy = self;
    activationOptionStateByGranularity = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
    objectEnumerator = [activationOptionStateByGranularity objectEnumerator];

    v9 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          userOptionItemProvider = [*(*(&v23 + 1) + 8 * i) userOptionItemProvider];
          items = [userOptionItemProvider items];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __45__HUPresenceUserPickerItemModule_setOptions___block_invoke;
          v21[3] = &unk_277DBA420;
          v22 = optionsCopy;
          [items na_each:v21];
        }

        v10 = [objectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    if ([(HUPresenceUserPickerItemModuleOptions *)optionsCopy customLocationSelected])
    {
      [(HUPresenceUserPickerItemModule *)selfCopy _resetSelectionForCustomLocation];
    }

    itemUpdater = [(HFItemModule *)selfCopy itemUpdater];
    v16 = MEMORY[0x277D14788];
    allItems = [(HFItemModule *)selfCopy allItems];
    v18 = [v16 requestToUpdateItems:allItems senderSelector:a2];
    v19 = [itemUpdater performItemUpdateRequest:v18];
  }
}

void __45__HUPresenceUserPickerItemModule_setOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 locationDevice];
  v4 = [v3 sourceItem];

  [v4 setSelectedLocationDevice:v5];
}

- (id)confirmationPromptForOptionItem:(id)item
{
  itemCopy = item;
  options = [(HUPresenceUserPickerItemModule *)self options];
  customLocationSelected = [options customLocationSelected];

  if (customLocationSelected)
  {
    v7 = [(HUPresenceUserPickerItemModule *)self itemTypeForItem:itemCopy];
    if (v7 == 2)
    {
      latestResults = [itemCopy latestResults];
      v22 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14120]];

      type = [v22 type];
      if (type)
      {
LABEL_5:
        v10 = _HULocalizedStringWithDefaultValue(@"HUPresenceEventUnsupportedCustomLocationAlertTitleResetLocation", @"HUPresenceEventUnsupportedCustomLocationAlertTitleResetLocation", 1);
        home = [(HUPresenceUserPickerItemModule *)self home];
        name = [home name];
        v19 = HULocalizedStringWithFormat(@"HUPresenceEventUnsupportedCustomLocationAlertMessageResetLocation", @"%@", v13, v14, v15, v16, v17, v18, name);

        v20 = [[HUPresenceOptionSelectionConfirmationPrompt alloc] initWithAlertTitle:v10 alertBody:v19 resetLocationToHomeOnConfirmation:1];
        goto LABEL_8;
      }
    }

    else if (v7 == 1)
    {
      v8 = [(HUPresenceUserPickerItemModule *)self stateForActivationOptionItem:itemCopy];
      activationGranularity = [v8 activationGranularity];

      if (activationGranularity)
      {
        goto LABEL_5;
      }
    }
  }

  v20 = 0;
LABEL_8:

  return v20;
}

- (void)_resetSelectionForCustomLocation
{
  v30 = *MEMORY[0x277D85DE8];
  currentUserCollection = [MEMORY[0x277D14A70] currentUserCollection];
  presenceEventBuilder = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
  [presenceEventBuilder setUsers:currentUserCollection];

  presenceEventBuilder2 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
  [presenceEventBuilder2 setActivationGranularity:0];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  activationOptionStateByGranularity = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
  objectEnumerator = [activationOptionStateByGranularity objectEnumerator];

  obj = objectEnumerator;
  v11 = [objectEnumerator countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        [v15 setExpanded:0];
        activationGranularity = [v15 activationGranularity];
        presenceEventBuilder3 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
        [v15 setSelected:{activationGranularity == objc_msgSend(presenceEventBuilder3, "activationGranularity")}];

        isSelected = [v15 isSelected];
        if (isSelected)
        {
          presenceEventBuilder4 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
          users = [presenceEventBuilder4 users];
          v3 = users;
        }

        else
        {
          users = [MEMORY[0x277D14A70] allUsersCollection];
          v4 = users;
        }

        activationOptionItem = [v15 activationOptionItem];
        [activationOptionItem setSelectedUsers:users];

        v21 = v4;
        if (isSelected)
        {

          v21 = presenceEventBuilder4;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  delegate = [(HUPresenceUserPickerItemModule *)self delegate];
  presenceEventBuilder5 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
  [delegate userPickerModule:self didUpdatePresenceEvent:presenceEventBuilder5];
}

- (id)itemProviders
{
  activationOptionStateByGranularity = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
  allValues = [activationOptionStateByGranularity allValues];
  v5 = [allValues na_map:&__block_literal_global_45_0];

  v6 = MEMORY[0x277CBEB98];
  staticItemProvider = [(HUPresenceUserPickerItemModule *)self staticItemProvider];
  v8 = [v5 arrayByAddingObject:staticItemProvider];
  v9 = [v6 setWithArray:v8];

  return v9;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v37 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_alloc(MEMORY[0x277D14850]);
  v6 = +[HUPresenceUserPickerItemModule sectionID];
  v7 = [v5 initWithIdentifier:v6];

  v8 = objc_opt_new();
  if ([(HUPresenceUserPickerItemModule *)self _shouldUseSingleUserStyle])
  {
    singleUserSummaryItem = [(HUPresenceUserPickerItemModule *)self singleUserSummaryItem];
    [v8 addObject:singleUserSummaryItem];
  }

  else
  {
    v27 = v7;
    v28 = itemsCopy;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [(HUPresenceUserPickerItemModule *)self _sortedActivationGranularities];
    v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v30 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          activationOptionStateByGranularity = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
          v15 = [activationOptionStateByGranularity objectForKeyedSubscript:v13];

          activationOptionItem = [v15 activationOptionItem];
          [v8 addObject:activationOptionItem];

          userOptionItemProvider = [v15 userOptionItemProvider];
          items = [userOptionItemProvider items];
          allObjects = [items allObjects];
          _userItemComparator = [objc_opt_class() _userItemComparator];
          v21 = [allObjects sortedArrayUsingComparator:_userItemComparator];
          [v8 addObjectsFromArray:v21];
        }

        v11 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v11);
    }

    v7 = v27;
    itemsCopy = v28;
  }

  [v7 setItems:v8];
  _attributedFooterTitle = [(HUPresenceUserPickerItemModule *)self _attributedFooterTitle];
  [v7 setAttributedFooterTitle:_attributedFooterTitle];

  v23 = MEMORY[0x277D14778];
  v35 = v7;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v25 = [v23 filterSections:v24 toDisplayedItems:itemsCopy];

  return v25;
}

- (void)locationDeviceManager:(id)manager didUpdateActiveLocationDevice:(id)device
{
  v10 = [(HFItemModule *)self itemUpdater:manager];
  v6 = MEMORY[0x277D14788];
  allItems = [(HFItemModule *)self allItems];
  v8 = [v6 requestToUpdateItems:allItems senderSelector:a2];
  v9 = [v10 performItemUpdateRequest:v8];
}

- (unint64_t)_activationGranularityForUserItem:(id)item
{
  itemCopy = item;
  activationOptionStateByGranularity = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
  objectEnumerator = [activationOptionStateByGranularity objectEnumerator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HUPresenceUserPickerItemModule__activationGranularityForUserItem___block_invoke;
  v11[3] = &unk_277DBA3F8;
  v12 = itemCopy;
  v7 = itemCopy;
  v8 = [objectEnumerator na_firstObjectPassingTest:v11];
  activationGranularity = [v8 activationGranularity];

  return activationGranularity;
}

uint64_t __68__HUPresenceUserPickerItemModule__activationGranularityForUserItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userOptionItemProvider];
  v4 = [v3 items];
  v5 = [v4 containsObject:*(a1 + 32)];

  return v5;
}

- (void)_createItemProviders
{
  v50 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v37 = objc_opt_new();
  v38 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  _sortedActivationGranularities = [(HUPresenceUserPickerItemModule *)self _sortedActivationGranularities];
  v3 = [_sortedActivationGranularities countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v3)
  {
    v36 = *v45;
    obj = _sortedActivationGranularities;
    do
    {
      v39 = v3;
      for (i = 0; i != v39; ++i)
      {
        if (*v45 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v44 + 1) + 8 * i);
        v6 = objc_alloc(MEMORY[0x277D14CA0]);
        home = [(HUPresenceUserPickerItemModule *)self home];
        v8 = [v6 initWithHome:home];

        [v8 setIncludeCurrentUser:1];
        [v8 setIncludeGuestUsers:1];
        [v8 setNameStyle:2];
        v9 = objc_alloc(MEMORY[0x277D14C38]);
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __54__HUPresenceUserPickerItemModule__createItemProviders__block_invoke;
        v42[3] = &unk_277DBA490;
        objc_copyWeak(&v43, &location);
        v42[4] = v5;
        v10 = [v9 initWithSourceProvider:v8 transformationBlock:v42];
        unsignedIntegerValue = [v5 unsignedIntegerValue];
        presenceEventBuilder = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
        activationGranularity = [presenceEventBuilder activationGranularity];

        v40 = v5;
        if (activationGranularity == unsignedIntegerValue)
        {
          presenceEventBuilder2 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
          users = [presenceEventBuilder2 users];
        }

        else
        {
          users = [MEMORY[0x277D14A70] allUsersCollection];
        }

        v16 = [HUPresenceActivationOptionItem alloc];
        presenceEventBuilder3 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
        locationEventType = [presenceEventBuilder3 locationEventType];
        home2 = [(HUPresenceUserPickerItemModule *)self home];
        v20 = [(HUPresenceActivationOptionItem *)v16 initWithEventType:locationEventType selectedUsers:users activationGranularity:unsignedIntegerValue style:0 home:home2];

        [(HUPresenceActivationOptionItem *)v20 setSelected:activationGranularity == unsignedIntegerValue];
        [v38 addObject:v20];
        v21 = [[HUPresenceActivationOptionState alloc] initWithUserOptionItemProvider:v10 activationOptionItem:v20];
        [v37 setObject:v21 forKeyedSubscript:v40];

        objc_destroyWeak(&v43);
      }

      _sortedActivationGranularities = obj;
      v3 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v3);
  }

  objc_storeStrong(&self->_activationOptionStateByGranularity, v37);
  v22 = [HUPresenceActivationOptionItem alloc];
  presenceEventBuilder4 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
  locationEventType2 = [presenceEventBuilder4 locationEventType];
  presenceEventBuilder5 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
  users2 = [presenceEventBuilder5 users];
  presenceEventBuilder6 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
  activationGranularity2 = [presenceEventBuilder6 activationGranularity];
  home3 = [(HUPresenceUserPickerItemModule *)self home];
  v30 = [(HUPresenceActivationOptionItem *)v22 initWithEventType:locationEventType2 selectedUsers:users2 activationGranularity:activationGranularity2 style:1 home:home3];
  singleUserSummaryItem = self->_singleUserSummaryItem;
  self->_singleUserSummaryItem = v30;

  singleUserSummaryItem = [(HUPresenceUserPickerItemModule *)self singleUserSummaryItem];
  [v38 addObject:singleUserSummaryItem];

  v33 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v38];
  staticItemProvider = self->_staticItemProvider;
  self->_staticItemProvider = v33;

  objc_destroyWeak(&location);
}

id __54__HUPresenceUserPickerItemModule__createItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [HUPresenceUserOptionItem alloc];
  v6 = [WeakRetained options];
  v7 = [v6 locationDevice];
  v8 = [WeakRetained locationDeviceManager];
  v9 = [(HUPresenceUserOptionItem *)v5 initWithUserItem:v3 selectedLocationDevice:v7 locationDeviceManager:v8];

  v10 = objc_alloc(MEMORY[0x277D14C30]);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__HUPresenceUserPickerItemModule__createItemProviders__block_invoke_2;
  v13[3] = &unk_277DBA468;
  objc_copyWeak(&v14, (a1 + 40));
  v13[4] = *(a1 + 32);
  v11 = [v10 initWithSourceItem:v9 transformationBlock:v13];
  objc_destroyWeak(&v14);

  return v11;
}

id __54__HUPresenceUserPickerItemModule__createItemProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 mutableCopy];
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D14120]];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "_isUserHandleSelected:", v6)}];
  [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13FE8]];

  v8 = MEMORY[0x277CCABB0];
  v9 = [WeakRetained activationOptionStateByGranularity];
  v10 = [v9 objectForKeyedSubscript:*(a1 + 32)];
  v11 = [v8 numberWithInt:{objc_msgSend(v10, "isExpanded") ^ 1}];
  [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  return v5;
}

- (BOOL)_shouldUseSingleUserStyle
{
  home = [(HUPresenceUserPickerItemModule *)self home];
  hf_allUsersIncludingCurrentUser = [home hf_allUsersIncludingCurrentUser];
  if ([hf_allUsersIncludingCurrentUser count] < 2)
  {
    v7 = 1;
  }

  else
  {
    v5 = MEMORY[0x277CD1D20];
    home2 = [(HUPresenceUserPickerItemModule *)self home];
    v7 = [v5 hf_presenceDisableReasonsForHome:home2] != 0;
  }

  return v7;
}

- (BOOL)_canDeselectUserHandle:(id)handle
{
  if (![(HUPresenceUserPickerItemModule *)self _isUserHandleSelected:handle])
  {
    return 0;
  }

  _allSelectedAndSupportedUsers = [(HUPresenceUserPickerItemModule *)self _allSelectedAndSupportedUsers];
  v5 = [_allSelectedAndSupportedUsers count] > 1;

  return v5;
}

- (BOOL)_isUserHandleSelected:(id)selected
{
  if (!selected)
  {
    return 0;
  }

  selectedCopy = selected;
  home = [(HUPresenceUserPickerItemModule *)self home];
  v6 = [home hf_userForHandle:selectedCopy];

  _allSelectedAndSupportedUsers = [(HUPresenceUserPickerItemModule *)self _allSelectedAndSupportedUsers];
  LOBYTE(selectedCopy) = [_allSelectedAndSupportedUsers containsObject:v6];

  return selectedCopy;
}

- (void)_updateSelected:(BOOL)selected forUserHandle:(id)handle
{
  selectedCopy = selected;
  handleCopy = handle;
  if ([(HUPresenceUserPickerItemModule *)self _isUserHandleSelected:?]!= selectedCopy && (selectedCopy || [(HUPresenceUserPickerItemModule *)self _canDeselectUserHandle:handleCopy]))
  {
    home = [(HUPresenceUserPickerItemModule *)self home];
    v8 = [home hf_userForHandle:handleCopy];

    presenceEventBuilder = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
    users = [presenceEventBuilder users];
    home2 = [(HUPresenceUserPickerItemModule *)self home];
    v12 = [users resolveSelectedUsersWithHome:home2];
    v13 = [v12 mutableCopy];

    if (selectedCopy)
    {
      [v13 addObject:v8];
    }

    else
    {
      [v13 removeObject:v8];
    }

    v14 = MEMORY[0x277D14A70];
    home3 = [(HUPresenceUserPickerItemModule *)self home];
    v16 = [v14 collectionWithResolvedUsers:v13 inHome:home3];

    presenceEventBuilder2 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
    users2 = [presenceEventBuilder2 users];
    v19 = [v16 isEqual:users2];

    if ((v19 & 1) == 0)
    {
      presenceEventBuilder3 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
      [presenceEventBuilder3 setUsers:v16];

      activationOptionStateByGranularity = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
      v22 = MEMORY[0x277CCABB0];
      presenceEventBuilder4 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
      v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(presenceEventBuilder4, "activationGranularity")}];
      v25 = [activationOptionStateByGranularity objectForKeyedSubscript:v24];

      activationOptionItem = [v25 activationOptionItem];
      [activationOptionItem setSelectedUsers:v16];

      [(HUPresenceActivationOptionItem *)self->_singleUserSummaryItem setSelectedUsers:v16];
      v27 = MEMORY[0x277D14788];
      allItems = [(HFItemModule *)self allItems];
      v29 = [v27 requestToUpdateItems:allItems senderSelector:a2];

      itemUpdater = [(HFItemModule *)self itemUpdater];
      v31 = [itemUpdater performItemUpdateRequest:v29];

      delegate = [(HUPresenceUserPickerItemModule *)self delegate];
      presenceEventBuilder5 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
      [delegate userPickerModule:self didUpdatePresenceEvent:presenceEventBuilder5];
    }
  }
}

- (id)_allSelectedAndSupportedUsers
{
  options = [(HUPresenceUserPickerItemModule *)self options];
  customLocationSelected = [options customLocationSelected];

  if (customLocationSelected)
  {
    v5 = MEMORY[0x277CBEB98];
    home = [(HUPresenceUserPickerItemModule *)self home];
    currentUser = [home currentUser];
    v8 = [v5 setWithObject:currentUser];
  }

  else
  {
    home = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
    currentUser = [home users];
    home2 = [(HUPresenceUserPickerItemModule *)self home];
    v8 = [currentUser resolveSelectedUsersWithHome:home2];
  }

  return v8;
}

- (BOOL)_isPresenceAuthorizedForUser:(id)user
{
  userCopy = user;
  home = [(HUPresenceUserPickerItemModule *)self home];
  v6 = [home hf_handleForUser:userCopy];
  type = [v6 type];

  if (type)
  {
    home2 = [(HUPresenceUserPickerItemModule *)self home];
    v9 = [home2 homeAccessControlForUser:userCopy];

    v10 = [v9 presenceAuthorizationStatus] != 1;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t __53__HUPresenceUserPickerItemModule__userItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 latestResults];
  v7 = *MEMORY[0x277D14120];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D14120]];

  v9 = [v5 latestResults];
  v10 = [v9 objectForKeyedSubscript:v7];

  if ([v8 type] || !objc_msgSend(v10, "type"))
  {
    if ([v8 type] && !objc_msgSend(v10, "type"))
    {
      v12 = 1;
    }

    else
    {
      v11 = [MEMORY[0x277D14778] defaultItemComparator];
      v12 = (v11)[2](v11, v4, v5);
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (id)_attributedFooterTitle
{
  options = [(HUPresenceUserPickerItemModule *)self options];
  locationDevice = [options locationDevice];
  type = [locationDevice type];

  if (type)
  {
    v6 = [(HUPresenceUserPickerItemModule *)self _combinedFooterStringForLocationDeviceText:0];
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__6;
    v20 = __Block_byref_object_dispose__6;
    v21 = 0;
    locationDeviceManager = [(HUPresenceUserPickerItemModule *)self locationDeviceManager];
    activeLocationDeviceFuture = [locationDeviceManager activeLocationDeviceFuture];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__HUPresenceUserPickerItemModule__attributedFooterTitle__block_invoke;
    v15[3] = &unk_277DBA4E0;
    v15[4] = self;
    v9 = [activeLocationDeviceFuture flatMap:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__HUPresenceUserPickerItemModule__attributedFooterTitle__block_invoke_3;
    v14[3] = &unk_277DB9858;
    v14[4] = self;
    v10 = [v9 recover:v14];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __56__HUPresenceUserPickerItemModule__attributedFooterTitle__block_invoke_4;
    v13[3] = &unk_277DBA508;
    v13[4] = self;
    v13[5] = &v16;
    v11 = [v10 flatMap:v13];

    v6 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  return v6;
}

id __56__HUPresenceUserPickerItemModule__attributedFooterTitle__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HUPresenceUserPickerItemModule__attributedFooterTitle__block_invoke_2;
  v9[3] = &unk_277DBA4B8;
  v10 = v2;
  v3 = v2;
  v4 = __56__HUPresenceUserPickerItemModule__attributedFooterTitle__block_invoke_2(v9);
  v5 = MEMORY[0x277D2C900];
  v6 = [objc_opt_class() _locationDeviceTextForDeviceNameString:v4];
  v7 = [v5 futureWithResult:v6];

  return v7;
}

id __56__HUPresenceUserPickerItemModule__attributedFooterTitle__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isCurrentDevice])
  {
    v2 = HULocalizedModelString(@"HUPresenceActiveLocationDeviceFooterFormatThisDevice");
  }

  else
  {
    v3 = [*(a1 + 32) name];
    v2 = HULocalizedStringWithFormat(@"HUPresenceActiveLocationDeviceFooterFormatOtherDevice", @"%@", v4, v5, v6, v7, v8, v9, v3);
  }

  return v2;
}

id __56__HUPresenceUserPickerItemModule__attributedFooterTitle__block_invoke_3()
{
  v0 = MEMORY[0x277D2C900];
  v1 = [objc_opt_class() _locationDeviceTextForDeviceNameString:0];
  v2 = [v0 futureWithResult:v1];

  return v2;
}

uint64_t __56__HUPresenceUserPickerItemModule__attributedFooterTitle__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _combinedFooterStringForLocationDeviceText:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = MEMORY[0x277D2C900];

  return [v6 futureWithNoResult];
}

- (id)_combinedFooterStringForLocationDeviceText:(id)text
{
  textCopy = text;
  v5 = objc_opt_new();
  _homeHubNeedsUpdateWarningText = [(HUPresenceUserPickerItemModule *)self _homeHubNeedsUpdateWarningText];
  [v5 na_safeAddObject:_homeHubNeedsUpdateWarningText];

  _someUsersNeedSoftwareUpdateWarningText = [(HUPresenceUserPickerItemModule *)self _someUsersNeedSoftwareUpdateWarningText];
  [v5 na_safeAddObject:_someUsersNeedSoftwareUpdateWarningText];

  [v5 na_safeAddObject:textCopy];
  if ([v5 count])
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAB48]);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __77__HUPresenceUserPickerItemModule__combinedFooterStringForLocationDeviceText___block_invoke;
    v11[3] = &unk_277DBA530;
    v9 = v8;
    v12 = v9;
    [v5 enumerateObjectsUsingBlock:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __77__HUPresenceUserPickerItemModule__combinedFooterStringForLocationDeviceText___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (a3)
  {
    v5 = *(a1 + 32);
    v6 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"\n\n"];
    [v5 appendAttributedString:v6];
  }

  [*(a1 + 32) appendAttributedString:v7];
}

- (id)_homeHubNeedsUpdateWarningText
{
  home = [(HUPresenceUserPickerItemModule *)self home];
  if ([home hf_supportsSharedEventAutomation])
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CCA898]);
    v5 = _HULocalizedStringWithDefaultValue(@"HUPresenceActivationWarningFooterHomeHubNeedsUpdate", @"HUPresenceActivationWarningFooterHomeHubNeedsUpdate", 1);
    v3 = [v4 initWithString:v5];
  }

  return v3;
}

- (id)_someUsersNeedSoftwareUpdateWarningText
{
  if (-[HUPresenceUserPickerItemModule _shouldUseSingleUserStyle](self, "_shouldUseSingleUserStyle") || (-[HUPresenceUserPickerItemModule home](self, "home"), v3 = objc_claimAutoreleasedReturnValue(), [v3 users], v4 = objc_claimAutoreleasedReturnValue(), v10[0] = MEMORY[0x277D85DD0], v10[1] = 3221225472, v10[2] = __73__HUPresenceUserPickerItemModule__someUsersNeedSoftwareUpdateWarningText__block_invoke, v10[3] = &unk_277DB7D60, v10[4] = self, v5 = objc_msgSend(v4, "na_any:", v10), v4, v3, !v5))
  {
    v8 = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCA898]);
    v7 = _HULocalizedStringWithDefaultValue(@"HUPresenceActivationWarningFooterSomeUsersNeedSoftwareUpdate", @"HUPresenceActivationWarningFooterSomeUsersNeedSoftwareUpdate", 1);
    v8 = [v6 initWithString:v7];
  }

  return v8;
}

uint64_t __73__HUPresenceUserPickerItemModule__someUsersNeedSoftwareUpdateWarningText__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 home];
  v5 = [v4 hf_isPresenceAuthorizedForUser:v3];

  return v5 ^ 1u;
}

+ (id)_locationDeviceTextForDeviceNameString:(id)string
{
  stringCopy = string;
  v4 = _HULocalizedStringWithDefaultValue(@"HUPresenceActiveLocationDeviceFooterSettingsLinkTitle", @"HUPresenceActiveLocationDeviceFooterSettingsLinkTitle", 1);
  v11 = v4;
  if (stringCopy)
  {
    v24 = HULocalizedStringWithFormat(@"HUPresenceActiveLocationDeviceFooterSettingsDescription", @"%@", v5, v6, v7, v8, v9, v10, v4);
    v18 = HULocalizedStringWithFormat(@"HUPresenceActiveLocationDeviceFooterFormat", @"%@%@", v12, v13, v14, v15, v16, v17, stringCopy);
  }

  else
  {
    v18 = HULocalizedStringWithFormat(@"HUPresenceActiveLocationDeviceFooterNoFMFDeviceSettingsDescription", @"%@", v5, v6, v7, v8, v9, v10, v4);
  }

  isAMac = [MEMORY[0x277D14CE8] isAMac];
  v20 = MEMORY[0x277CCA898];
  if (isAMac)
  {
    v21 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v18];
  }

  else
  {
    hf_locationDeviceSettingsURL = [MEMORY[0x277CBEBC0] hf_locationDeviceSettingsURL];
    v21 = [v20 hf_attributedLinkStringForString:v18 linkString:v11 linkURL:hf_locationDeviceSettingsURL];
  }

  return v21;
}

- (HUPresenceUserPickerItemModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end