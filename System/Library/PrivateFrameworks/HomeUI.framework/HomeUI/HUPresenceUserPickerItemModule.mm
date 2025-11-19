@interface HUPresenceUserPickerItemModule
+ (NSString)sectionID;
+ (id)_locationDeviceTextForDeviceNameString:(id)a3;
- (BOOL)_canDeselectUserHandle:(id)a3;
- (BOOL)_isPresenceAuthorizedForUser:(id)a3;
- (BOOL)_isUserHandleSelected:(id)a3;
- (BOOL)_shouldUseSingleUserStyle;
- (HUPresenceUserPickerItemModule)initWithItemUpdater:(id)a3;
- (HUPresenceUserPickerItemModule)initWithItemUpdater:(id)a3 home:(id)a4 presenceEvent:(id)a5 options:(id)a6 delegate:(id)a7;
- (HUPresenceUserPickerItemModuleDelegate)delegate;
- (id)_allSelectedAndSupportedUsers;
- (id)_attributedFooterTitle;
- (id)_combinedFooterStringForLocationDeviceText:(id)a3;
- (id)_homeHubNeedsUpdateWarningText;
- (id)_someUsersNeedSoftwareUpdateWarningText;
- (id)activationOptionItemForGranularity:(unint64_t)a3;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (id)confirmationPromptForOptionItem:(id)a3;
- (id)itemProviders;
- (id)stateForActivationOptionItem:(id)a3;
- (id)stateForUserItem:(id)a3;
- (unint64_t)_activationGranularityForUserItem:(id)a3;
- (unint64_t)itemTypeForItem:(id)a3;
- (void)_createItemProviders;
- (void)_resetSelectionForCustomLocation;
- (void)_updateSelected:(BOOL)a3 forUserHandle:(id)a4;
- (void)deselectUserItem:(id)a3;
- (void)locationDeviceManager:(id)a3 didUpdateActiveLocationDevice:(id)a4;
- (void)registerForExternalUpdates;
- (void)selectActivationOptionItem:(id)a3;
- (void)selectUserItem:(id)a3;
- (void)setOptions:(id)a3;
- (void)toggleExpandedForActivationOptionItem:(id)a3;
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

- (HUPresenceUserPickerItemModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_home_presenceEvent_options_delegate_);
  [v5 handleFailureInMethod:a2 object:self file:@"HUPresenceUserPickerItemModule.m" lineNumber:60 description:{@"%s is unavailable; use %@ instead", "-[HUPresenceUserPickerItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (HUPresenceUserPickerItemModule)initWithItemUpdater:(id)a3 home:(id)a4 presenceEvent:(id)a5 options:(id)a6 delegate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"HUPresenceUserPickerItemModule.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v26 = [MEMORY[0x277CCA890] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"HUPresenceUserPickerItemModule.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"presenceEvent"}];

LABEL_3:
  v27.receiver = self;
  v27.super_class = HUPresenceUserPickerItemModule;
  v18 = [(HFItemModule *)&v27 initWithItemUpdater:v13];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_home, a4);
    v20 = [objc_alloc(MEMORY[0x277D14978]) initWithEvent:v15];
    presenceEventBuilder = v19->_presenceEventBuilder;
    v19->_presenceEventBuilder = v20;

    objc_storeStrong(&v19->_options, a6);
    objc_storeWeak(&v19->_delegate, v17);
    v22 = +[HULocationDeviceManager sharedInstance];
    locationDeviceManager = v19->_locationDeviceManager;
    v19->_locationDeviceManager = v22;

    [(HUPresenceUserPickerItemModule *)v19 _createItemProviders];
  }

  return v19;
}

- (void)registerForExternalUpdates
{
  v3 = [(HUPresenceUserPickerItemModule *)self locationDeviceManager];
  [v3 addObserver:self];
}

- (void)unregisterForExternalUpdates
{
  v3 = [(HUPresenceUserPickerItemModule *)self locationDeviceManager];
  [v3 removeObserver:self];
}

- (unint64_t)itemTypeForItem:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUPresenceUserPickerItemModule *)self singleUserSummaryItem];

  if (v5 == v4)
  {
    v11 = 0;
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
    v7 = [v6 objectEnumerator];

    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 activationOptionItem];

          if (v14 == v4)
          {
            goto LABEL_14;
          }

          v15 = [v13 userOptionItemProvider];
          v16 = [v15 items];
          v17 = [v16 containsObject:v4];

          if (v17)
          {
            v11 = 2;
LABEL_14:

            goto LABEL_15;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    NSLog(&cfstr_UnexpectedItem_2.isa, v4);
    v11 = 2;
  }

LABEL_15:

  return v11;
}

- (id)activationOptionItemForGranularity:(unint64_t)a3
{
  v4 = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 activationOptionItem];

  return v7;
}

- (id)stateForActivationOptionItem:(id)a3
{
  v4 = a3;
  v5 = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
  v6 = [v5 objectEnumerator];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HUPresenceUserPickerItemModule_stateForActivationOptionItem___block_invoke;
  v10[3] = &unk_277DBA3F8;
  v11 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v10];

  return v8;
}

BOOL __63__HUPresenceUserPickerItemModule_stateForActivationOptionItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 activationOptionItem];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)selectActivationOptionItem:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
  v7 = [v6 objectEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 activationOptionItem];
        [v12 setSelected:v13 == v5];

        if ([v12 isSelected])
        {
          v14 = [v12 activationGranularity];
          v15 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
          [v15 setActivationGranularity:v14];

          v16 = [v12 activationOptionItem];
          v17 = [v16 selectedUsers];
          v18 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
          [v18 setUsers:v17];
        }

        else
        {
          [v12 setExpanded:0];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  v19 = [(HFItemModule *)self itemUpdater];
  v20 = MEMORY[0x277D14788];
  v21 = [(HFItemModule *)self allItems];
  v22 = [v20 requestToUpdateItems:v21 senderSelector:a2];
  v23 = [v19 performItemUpdateRequest:v22];

  v24 = [(HUPresenceUserPickerItemModule *)self delegate];
  v25 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
  [v24 userPickerModule:self didUpdatePresenceEvent:v25];
}

- (void)toggleExpandedForActivationOptionItem:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
  v7 = [v6 objectEnumerator];

  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 activationOptionItem];

        if (v13 == v5)
        {
          v14 = [v12 isExpanded] ^ 1;
        }

        else
        {
          v14 = 0;
        }

        [v12 setExpanded:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v15 = [(HFItemModule *)self itemUpdater];
  v16 = MEMORY[0x277D14788];
  v17 = [(HFItemModule *)self allItems];
  v18 = [v16 requestToUpdateItems:v17 senderSelector:a2];
  v19 = [v15 performItemUpdateRequest:v18];
}

- (id)stateForUserItem:(id)a3
{
  v4 = a3;
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D14120]];

  if (v6)
  {
    v7 = [(HUPresenceUserPickerItemModule *)self _isUserHandleSelected:v6];
    v8 = [(HUPresenceUserPickerItemModule *)self home];
    v9 = [(HUPresenceUserPickerItemModule *)self home];
    v10 = [v9 hf_userForHandle:v6];
    v11 = [v8 hf_isPresenceAuthorizedForUser:v10];

    v12 = [[HUPresenceUserOptionState alloc] initWithActivationGranularity:[(HUPresenceUserPickerItemModule *)self _activationGranularityForUserItem:v4] selected:v7 locationAvailable:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)selectUserItem:(id)a3
{
  v4 = [a3 latestResults];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D14120]];

  v5 = v6;
  if (v6)
  {
    [(HUPresenceUserPickerItemModule *)self _updateSelected:1 forUserHandle:v6];
    v5 = v6;
  }
}

- (void)deselectUserItem:(id)a3
{
  v4 = [a3 latestResults];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D14120]];

  v5 = v6;
  if (v6)
  {
    [(HUPresenceUserPickerItemModule *)self _updateSelected:0 forUserHandle:v6];
    v5 = v6;
  }
}

- (void)setOptions:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_options != v6)
  {
    objc_storeStrong(&self->_options, a3);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = self;
    v7 = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
    v8 = [v7 objectEnumerator];

    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v23 + 1) + 8 * i) userOptionItemProvider];
          v14 = [v13 items];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __45__HUPresenceUserPickerItemModule_setOptions___block_invoke;
          v21[3] = &unk_277DBA420;
          v22 = v6;
          [v14 na_each:v21];
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    if ([(HUPresenceUserPickerItemModuleOptions *)v6 customLocationSelected])
    {
      [(HUPresenceUserPickerItemModule *)v20 _resetSelectionForCustomLocation];
    }

    v15 = [(HFItemModule *)v20 itemUpdater];
    v16 = MEMORY[0x277D14788];
    v17 = [(HFItemModule *)v20 allItems];
    v18 = [v16 requestToUpdateItems:v17 senderSelector:a2];
    v19 = [v15 performItemUpdateRequest:v18];
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

- (id)confirmationPromptForOptionItem:(id)a3
{
  v4 = a3;
  v5 = [(HUPresenceUserPickerItemModule *)self options];
  v6 = [v5 customLocationSelected];

  if (v6)
  {
    v7 = [(HUPresenceUserPickerItemModule *)self itemTypeForItem:v4];
    if (v7 == 2)
    {
      v21 = [v4 latestResults];
      v22 = [v21 objectForKeyedSubscript:*MEMORY[0x277D14120]];

      v23 = [v22 type];
      if (v23)
      {
LABEL_5:
        v10 = _HULocalizedStringWithDefaultValue(@"HUPresenceEventUnsupportedCustomLocationAlertTitleResetLocation", @"HUPresenceEventUnsupportedCustomLocationAlertTitleResetLocation", 1);
        v11 = [(HUPresenceUserPickerItemModule *)self home];
        v12 = [v11 name];
        v19 = HULocalizedStringWithFormat(@"HUPresenceEventUnsupportedCustomLocationAlertMessageResetLocation", @"%@", v13, v14, v15, v16, v17, v18, v12);

        v20 = [[HUPresenceOptionSelectionConfirmationPrompt alloc] initWithAlertTitle:v10 alertBody:v19 resetLocationToHomeOnConfirmation:1];
        goto LABEL_8;
      }
    }

    else if (v7 == 1)
    {
      v8 = [(HUPresenceUserPickerItemModule *)self stateForActivationOptionItem:v4];
      v9 = [v8 activationGranularity];

      if (v9)
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
  v6 = [MEMORY[0x277D14A70] currentUserCollection];
  v7 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
  [v7 setUsers:v6];

  v8 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
  [v8 setActivationGranularity:0];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
  v10 = [v9 objectEnumerator];

  obj = v10;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
        v16 = [v15 activationGranularity];
        v17 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
        [v15 setSelected:{v16 == objc_msgSend(v17, "activationGranularity")}];

        v18 = [v15 isSelected];
        if (v18)
        {
          v2 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
          v19 = [v2 users];
          v3 = v19;
        }

        else
        {
          v19 = [MEMORY[0x277D14A70] allUsersCollection];
          v4 = v19;
        }

        v20 = [v15 activationOptionItem];
        [v20 setSelectedUsers:v19];

        v21 = v4;
        if (v18)
        {

          v21 = v2;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  v22 = [(HUPresenceUserPickerItemModule *)self delegate];
  v23 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
  [v22 userPickerModule:self didUpdatePresenceEvent:v23];
}

- (id)itemProviders
{
  v3 = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
  v4 = [v3 allValues];
  v5 = [v4 na_map:&__block_literal_global_45_0];

  v6 = MEMORY[0x277CBEB98];
  v7 = [(HUPresenceUserPickerItemModule *)self staticItemProvider];
  v8 = [v5 arrayByAddingObject:v7];
  v9 = [v6 setWithArray:v8];

  return v9;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277D14850]);
  v6 = +[HUPresenceUserPickerItemModule sectionID];
  v7 = [v5 initWithIdentifier:v6];

  v8 = objc_opt_new();
  if ([(HUPresenceUserPickerItemModule *)self _shouldUseSingleUserStyle])
  {
    v9 = [(HUPresenceUserPickerItemModule *)self singleUserSummaryItem];
    [v8 addObject:v9];
  }

  else
  {
    v27 = v7;
    v28 = v4;
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
          v14 = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
          v15 = [v14 objectForKeyedSubscript:v13];

          v16 = [v15 activationOptionItem];
          [v8 addObject:v16];

          v17 = [v15 userOptionItemProvider];
          v18 = [v17 items];
          v19 = [v18 allObjects];
          v20 = [objc_opt_class() _userItemComparator];
          v21 = [v19 sortedArrayUsingComparator:v20];
          [v8 addObjectsFromArray:v21];
        }

        v11 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v11);
    }

    v7 = v27;
    v4 = v28;
  }

  [v7 setItems:v8];
  v22 = [(HUPresenceUserPickerItemModule *)self _attributedFooterTitle];
  [v7 setAttributedFooterTitle:v22];

  v23 = MEMORY[0x277D14778];
  v35 = v7;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
  v25 = [v23 filterSections:v24 toDisplayedItems:v4];

  return v25;
}

- (void)locationDeviceManager:(id)a3 didUpdateActiveLocationDevice:(id)a4
{
  v10 = [(HFItemModule *)self itemUpdater:a3];
  v6 = MEMORY[0x277D14788];
  v7 = [(HFItemModule *)self allItems];
  v8 = [v6 requestToUpdateItems:v7 senderSelector:a2];
  v9 = [v10 performItemUpdateRequest:v8];
}

- (unint64_t)_activationGranularityForUserItem:(id)a3
{
  v4 = a3;
  v5 = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
  v6 = [v5 objectEnumerator];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__HUPresenceUserPickerItemModule__activationGranularityForUserItem___block_invoke;
  v11[3] = &unk_277DBA3F8;
  v12 = v4;
  v7 = v4;
  v8 = [v6 na_firstObjectPassingTest:v11];
  v9 = [v8 activationGranularity];

  return v9;
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
  v2 = [(HUPresenceUserPickerItemModule *)self _sortedActivationGranularities];
  v3 = [v2 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v3)
  {
    v36 = *v45;
    obj = v2;
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
        v7 = [(HUPresenceUserPickerItemModule *)self home];
        v8 = [v6 initWithHome:v7];

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
        v11 = [v5 unsignedIntegerValue];
        v12 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
        v13 = [v12 activationGranularity];

        v40 = v5;
        if (v13 == v11)
        {
          v14 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
          v15 = [v14 users];
        }

        else
        {
          v15 = [MEMORY[0x277D14A70] allUsersCollection];
        }

        v16 = [HUPresenceActivationOptionItem alloc];
        v17 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
        v18 = [v17 locationEventType];
        v19 = [(HUPresenceUserPickerItemModule *)self home];
        v20 = [(HUPresenceActivationOptionItem *)v16 initWithEventType:v18 selectedUsers:v15 activationGranularity:v11 style:0 home:v19];

        [(HUPresenceActivationOptionItem *)v20 setSelected:v13 == v11];
        [v38 addObject:v20];
        v21 = [[HUPresenceActivationOptionState alloc] initWithUserOptionItemProvider:v10 activationOptionItem:v20];
        [v37 setObject:v21 forKeyedSubscript:v40];

        objc_destroyWeak(&v43);
      }

      v2 = obj;
      v3 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v3);
  }

  objc_storeStrong(&self->_activationOptionStateByGranularity, v37);
  v22 = [HUPresenceActivationOptionItem alloc];
  v23 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
  v24 = [v23 locationEventType];
  v25 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
  v26 = [v25 users];
  v27 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
  v28 = [v27 activationGranularity];
  v29 = [(HUPresenceUserPickerItemModule *)self home];
  v30 = [(HUPresenceActivationOptionItem *)v22 initWithEventType:v24 selectedUsers:v26 activationGranularity:v28 style:1 home:v29];
  singleUserSummaryItem = self->_singleUserSummaryItem;
  self->_singleUserSummaryItem = v30;

  v32 = [(HUPresenceUserPickerItemModule *)self singleUserSummaryItem];
  [v38 addObject:v32];

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
  v3 = [(HUPresenceUserPickerItemModule *)self home];
  v4 = [v3 hf_allUsersIncludingCurrentUser];
  if ([v4 count] < 2)
  {
    v7 = 1;
  }

  else
  {
    v5 = MEMORY[0x277CD1D20];
    v6 = [(HUPresenceUserPickerItemModule *)self home];
    v7 = [v5 hf_presenceDisableReasonsForHome:v6] != 0;
  }

  return v7;
}

- (BOOL)_canDeselectUserHandle:(id)a3
{
  if (![(HUPresenceUserPickerItemModule *)self _isUserHandleSelected:a3])
  {
    return 0;
  }

  v4 = [(HUPresenceUserPickerItemModule *)self _allSelectedAndSupportedUsers];
  v5 = [v4 count] > 1;

  return v5;
}

- (BOOL)_isUserHandleSelected:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(HUPresenceUserPickerItemModule *)self home];
  v6 = [v5 hf_userForHandle:v4];

  v7 = [(HUPresenceUserPickerItemModule *)self _allSelectedAndSupportedUsers];
  LOBYTE(v4) = [v7 containsObject:v6];

  return v4;
}

- (void)_updateSelected:(BOOL)a3 forUserHandle:(id)a4
{
  v4 = a3;
  v34 = a4;
  if ([(HUPresenceUserPickerItemModule *)self _isUserHandleSelected:?]!= v4 && (v4 || [(HUPresenceUserPickerItemModule *)self _canDeselectUserHandle:v34]))
  {
    v7 = [(HUPresenceUserPickerItemModule *)self home];
    v8 = [v7 hf_userForHandle:v34];

    v9 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
    v10 = [v9 users];
    v11 = [(HUPresenceUserPickerItemModule *)self home];
    v12 = [v10 resolveSelectedUsersWithHome:v11];
    v13 = [v12 mutableCopy];

    if (v4)
    {
      [v13 addObject:v8];
    }

    else
    {
      [v13 removeObject:v8];
    }

    v14 = MEMORY[0x277D14A70];
    v15 = [(HUPresenceUserPickerItemModule *)self home];
    v16 = [v14 collectionWithResolvedUsers:v13 inHome:v15];

    v17 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
    v18 = [v17 users];
    v19 = [v16 isEqual:v18];

    if ((v19 & 1) == 0)
    {
      v20 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
      [v20 setUsers:v16];

      v21 = [(HUPresenceUserPickerItemModule *)self activationOptionStateByGranularity];
      v22 = MEMORY[0x277CCABB0];
      v23 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
      v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(v23, "activationGranularity")}];
      v25 = [v21 objectForKeyedSubscript:v24];

      v26 = [v25 activationOptionItem];
      [v26 setSelectedUsers:v16];

      [(HUPresenceActivationOptionItem *)self->_singleUserSummaryItem setSelectedUsers:v16];
      v27 = MEMORY[0x277D14788];
      v28 = [(HFItemModule *)self allItems];
      v29 = [v27 requestToUpdateItems:v28 senderSelector:a2];

      v30 = [(HFItemModule *)self itemUpdater];
      v31 = [v30 performItemUpdateRequest:v29];

      v32 = [(HUPresenceUserPickerItemModule *)self delegate];
      v33 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
      [v32 userPickerModule:self didUpdatePresenceEvent:v33];
    }
  }
}

- (id)_allSelectedAndSupportedUsers
{
  v3 = [(HUPresenceUserPickerItemModule *)self options];
  v4 = [v3 customLocationSelected];

  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [(HUPresenceUserPickerItemModule *)self home];
    v7 = [v6 currentUser];
    v8 = [v5 setWithObject:v7];
  }

  else
  {
    v6 = [(HUPresenceUserPickerItemModule *)self presenceEventBuilder];
    v7 = [v6 users];
    v9 = [(HUPresenceUserPickerItemModule *)self home];
    v8 = [v7 resolveSelectedUsersWithHome:v9];
  }

  return v8;
}

- (BOOL)_isPresenceAuthorizedForUser:(id)a3
{
  v4 = a3;
  v5 = [(HUPresenceUserPickerItemModule *)self home];
  v6 = [v5 hf_handleForUser:v4];
  v7 = [v6 type];

  if (v7)
  {
    v8 = [(HUPresenceUserPickerItemModule *)self home];
    v9 = [v8 homeAccessControlForUser:v4];

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
  v3 = [(HUPresenceUserPickerItemModule *)self options];
  v4 = [v3 locationDevice];
  v5 = [v4 type];

  if (v5)
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
    v7 = [(HUPresenceUserPickerItemModule *)self locationDeviceManager];
    v8 = [v7 activeLocationDeviceFuture];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __56__HUPresenceUserPickerItemModule__attributedFooterTitle__block_invoke;
    v15[3] = &unk_277DBA4E0;
    v15[4] = self;
    v9 = [v8 flatMap:v15];
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

- (id)_combinedFooterStringForLocationDeviceText:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HUPresenceUserPickerItemModule *)self _homeHubNeedsUpdateWarningText];
  [v5 na_safeAddObject:v6];

  v7 = [(HUPresenceUserPickerItemModule *)self _someUsersNeedSoftwareUpdateWarningText];
  [v5 na_safeAddObject:v7];

  [v5 na_safeAddObject:v4];
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
  v2 = [(HUPresenceUserPickerItemModule *)self home];
  if ([v2 hf_supportsSharedEventAutomation])
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

+ (id)_locationDeviceTextForDeviceNameString:(id)a3
{
  v3 = a3;
  v4 = _HULocalizedStringWithDefaultValue(@"HUPresenceActiveLocationDeviceFooterSettingsLinkTitle", @"HUPresenceActiveLocationDeviceFooterSettingsLinkTitle", 1);
  v11 = v4;
  if (v3)
  {
    v24 = HULocalizedStringWithFormat(@"HUPresenceActiveLocationDeviceFooterSettingsDescription", @"%@", v5, v6, v7, v8, v9, v10, v4);
    v18 = HULocalizedStringWithFormat(@"HUPresenceActiveLocationDeviceFooterFormat", @"%@%@", v12, v13, v14, v15, v16, v17, v3);
  }

  else
  {
    v18 = HULocalizedStringWithFormat(@"HUPresenceActiveLocationDeviceFooterNoFMFDeviceSettingsDescription", @"%@", v5, v6, v7, v8, v9, v10, v4);
  }

  v19 = [MEMORY[0x277D14CE8] isAMac];
  v20 = MEMORY[0x277CCA898];
  if (v19)
  {
    v21 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v18];
  }

  else
  {
    v22 = [MEMORY[0x277CBEBC0] hf_locationDeviceSettingsURL];
    v21 = [v20 hf_attributedLinkStringForString:v18 linkString:v11 linkURL:v22];
  }

  return v21;
}

- (HUPresenceUserPickerItemModuleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end