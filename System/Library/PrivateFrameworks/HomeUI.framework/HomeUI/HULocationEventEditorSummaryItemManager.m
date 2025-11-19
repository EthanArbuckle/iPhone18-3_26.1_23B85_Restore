@interface HULocationEventEditorSummaryItemManager
+ (NSString)locationSectionID;
+ (NSString)usersHeaderSectionID;
- (BOOL)_canEditLocation;
- (BOOL)_hasCustomLocation;
- (BOOL)canChangeLocation;
- (BOOL)isInstructionsItem:(id)a3;
- (HULocationEventEditorSummaryItemManager)initWithDelegate:(id)a3 flow:(id)a4;
- (HULocationEventEditorSummaryItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_userPickerOptions;
- (id)home;
- (id)locationEventRegion;
- (void)updateLocationEventWithRegion:(id)a3;
- (void)userPickerModule:(id)a3 didUpdatePresenceEvent:(id)a4;
@end

@implementation HULocationEventEditorSummaryItemManager

+ (NSString)usersHeaderSectionID
{
  if (_MergedGlobals_5_1 != -1)
  {
    dispatch_once(&_MergedGlobals_5_1, &__block_literal_global_3_3);
  }

  v3 = qword_281120D30;

  return v3;
}

void __63__HULocationEventEditorSummaryItemManager_usersHeaderSectionID__block_invoke_2()
{
  v0 = qword_281120D30;
  qword_281120D30 = @"users";
}

+ (NSString)locationSectionID
{
  if (qword_281120D38 != -1)
  {
    dispatch_once(&qword_281120D38, &__block_literal_global_8_1);
  }

  v3 = qword_281120D40;

  return v3;
}

void __60__HULocationEventEditorSummaryItemManager_locationSectionID__block_invoke_2()
{
  v0 = qword_281120D40;
  qword_281120D40 = @"location";
}

- (HULocationEventEditorSummaryItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_flow_);
  [v6 handleFailureInMethod:a2 object:self file:@"HULocationEventEditorSummaryItemManager.m" lineNumber:46 description:{@"%s is unavailable; use %@ instead", "-[HULocationEventEditorSummaryItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HULocationEventEditorSummaryItemManager)initWithDelegate:(id)a3 flow:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 eventBuilderItem];
  v10 = [v9 locationEventBuilder];

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277D14978]);
    v12 = [v7 eventType];
    if ((v12 - 1) <= 1)
    {
      [v11 setLocationEventType:v12];
    }

    v13 = [v7 eventBuilderItem];
    [v13 setLocationEventBuilder:v11];
  }

  v14 = objc_alloc(MEMORY[0x277D14B38]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__HULocationEventEditorSummaryItemManager_initWithDelegate_flow___block_invoke;
  v20[3] = &unk_277DB7478;
  v15 = self;
  v21 = v15;
  v16 = [v14 initWithResultsBlock:v20];
  v19.receiver = v15;
  v19.super_class = HULocationEventEditorSummaryItemManager;
  v17 = [(HFItemManager *)&v19 initWithDelegate:v8 sourceItem:v16];

  if (v17)
  {
    objc_storeStrong(&v17->_flow, a4);
  }

  return v17;
}

id __65__HULocationEventEditorSummaryItemManager_initWithDelegate_flow___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) flow];
  v2 = [v1 eventType];

  if (v2 == 1)
  {
    v3 = @"HULocationTriggerSummaryTitlePeopleArrive";
  }

  else
  {
    v3 = @"HULocationTriggerSummaryTitlePeopleLeave";
  }

  v4 = _HULocalizedStringWithDefaultValue(v3, v3, 1);
  v5 = MEMORY[0x277D2C900];
  v9 = *MEMORY[0x277D13F60];
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v5 futureWithResult:v6];

  return v7;
}

- (id)home
{
  v3 = [(HULocationEventEditorSummaryItemManager *)self flow];
  v4 = [v3 triggerBuilder];
  v5 = [v4 home];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HULocationEventEditorSummaryItemManager;
    v7 = [(HFItemManager *)&v10 home];
  }

  v8 = v7;

  return v8;
}

- (BOOL)isInstructionsItem:(id)a3
{
  v4 = a3;
  v5 = [(HULocationEventEditorSummaryItemManager *)self usersInstructionsItem];

  return v5 == v4;
}

- (id)locationEventRegion
{
  v3 = [(HULocationEventEditorSummaryItemManager *)self flow];
  v4 = [v3 eventBuilderItem];
  v5 = [v4 locationEventBuilder];

  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 region];
    v10 = [HULocationTriggerRegion customRegionWithCircularRegion:v9];
LABEL_8:
    v11 = v10;

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(HULocationEventEditorSummaryItemManager *)self home];
    v10 = +[HULocationTriggerRegion homeRegionWithHome:eventType:](HULocationTriggerRegion, "homeRegionWithHome:eventType:", v9, [v6 locationEventType]);
    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (BOOL)canChangeLocation
{
  objc_opt_class();
  v3 = [(HULocationEventEditorSummaryItemManager *)self locationItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = v5 && ([v5 locationCanBeEdited] & 1) != 0;
  return v6;
}

- (void)updateLocationEventWithRegion:(id)a3
{
  v20 = a3;
  v5 = [v20 regionType];
  if (v5 == 1)
  {
    objc_opt_class();
    v10 = [(HULocationEventEditorSummaryItemManager *)self flow];
    v11 = [v10 eventBuilderItem];
    v6 = [v11 locationEventBuilder];
    if (objc_opt_isKindOfClass())
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (!v13)
    {
      v6 = objc_alloc_init(MEMORY[0x277D147B0]);
      v14 = [(HULocationEventEditorSummaryItemManager *)self flow];
      v15 = [v14 eventBuilderItem];
      [v15 setLocationEventBuilder:v6];
    }

    v7 = [v20 circularRegion];
    [v6 setRegion:v7];
  }

  else
  {
    if (v5)
    {
      goto LABEL_11;
    }

    v6 = [(HULocationEventEditorSummaryItemManager *)self userPickerModule];
    v7 = [v6 presenceEventBuilder];
    v8 = [(HULocationEventEditorSummaryItemManager *)self flow];
    v9 = [v8 eventBuilderItem];
    [v9 setLocationEventBuilder:v7];
  }

LABEL_11:
  v16 = [(HULocationEventEditorSummaryItemManager *)self _userPickerOptions];
  v17 = [(HULocationEventEditorSummaryItemManager *)self userPickerModule];
  [v17 setOptions:v16];

  v18 = [(HFItemManager *)self allItems];
  v19 = [(HFItemManager *)self updateResultsForItems:v18 senderSelector:a2];
}

- (id)_userPickerOptions
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HULocationEventEditorSummaryItemManager__userPickerOptions__block_invoke;
  v6[3] = &unk_277DC0D98;
  v6[4] = self;
  v3 = __61__HULocationEventEditorSummaryItemManager__userPickerOptions__block_invoke(v6);
  v4 = [[HUPresenceUserPickerItemModuleOptions alloc] initWithLocationDevice:v3 customLocationSelected:[(HULocationEventEditorSummaryItemManager *)self _hasCustomLocation]];

  return v4;
}

id __61__HULocationEventEditorSummaryItemManager__userPickerOptions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) flow];
  v3 = [v2 eventBuilderItem];
  v4 = [v3 locationEventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = +[HUPresenceCurrentUserLocationDevice FMFDevice];
  }

  else
  {
    v7 = [*(a1 + 32) flow];
    v8 = [v7 triggerBuilder];
    v9 = [v8 trigger];
    v10 = [v9 creatorDevice];

    if (v10)
    {
      [HUPresenceCurrentUserLocationDevice customDeviceWithHMDevice:v10];
    }

    else
    {
      +[HUPresenceCurrentUserLocationDevice currentDevice];
    }
    v6 = ;
  }

  return v6;
}

- (id)_buildItemModulesForHome:(id)a3
{
  v29[2] = *MEMORY[0x277D85DE8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __68__HULocationEventEditorSummaryItemManager__buildItemModulesForHome___block_invoke;
  v27[3] = &unk_277DC0DC0;
  v27[4] = self;
  v4 = a3;
  v5 = __68__HULocationEventEditorSummaryItemManager__buildItemModulesForHome___block_invoke(v27);
  v6 = [HUPresenceUserPickerItemModule alloc];
  v7 = [(HULocationEventEditorSummaryItemManager *)self flow];
  v8 = [v7 triggerBuilder];
  v9 = [v8 home];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  v12 = [(HULocationEventEditorSummaryItemManager *)self _userPickerOptions];
  v13 = [(HUPresenceUserPickerItemModule *)v6 initWithItemUpdater:self home:v11 presenceEvent:v5 options:v12 delegate:self];

  userPickerModule = self->_userPickerModule;
  self->_userPickerModule = v13;

  if (_os_feature_enabled_impl())
  {
    v15 = [(HULocationEventEditorSummaryItemManager *)self userPickerModule];
    v28 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  }

  else
  {
    v17 = [HUTriggerConditionEditorItemModule alloc];
    v18 = [(HULocationEventEditorSummaryItemManager *)self home];
    v19 = [(HULocationEventEditorSummaryItemManager *)self flow];
    v20 = [v19 triggerBuilder];
    v21 = [v20 conditionCollection];
    v22 = [MEMORY[0x277CBEB98] setWithObject:&unk_282491CE8];
    v23 = [(HUTriggerConditionEditorItemModule *)v17 initWithItemUpdater:self home:v18 conditionCollection:v21 disallowedConditionTypes:v22];
    conditionEditorModule = self->_conditionEditorModule;
    self->_conditionEditorModule = v23;

    v15 = [(HULocationEventEditorSummaryItemManager *)self userPickerModule];
    v29[0] = v15;
    v25 = [(HULocationEventEditorSummaryItemManager *)self conditionEditorModule];
    v29[1] = v25;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  }

  return v16;
}

id __68__HULocationEventEditorSummaryItemManager__buildItemModulesForHome___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) flow];
  v3 = [v2 eventBuilderItem];
  v4 = [v3 locationEventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    v4 = objc_alloc_init(MEMORY[0x277D14978]);
    v7 = [*(a1 + 32) flow];
    v8 = [v7 eventType];

    if (v8 == 1)
    {
      v9 = 1;
    }

    else
    {
      v10 = [*(a1 + 32) flow];
      v11 = [v10 eventType];

      if (v11 != 2)
      {
LABEL_10:
        v12 = [MEMORY[0x277D14A70] currentUserCollection];
        [v4 setUsers:v12];

        [v4 setActivationGranularity:0];
        goto LABEL_11;
      }

      v9 = 2;
    }

    [v4 setLocationEventType:v9];
    goto LABEL_10;
  }

LABEL_11:
  v13 = [v4 buildNewEventsFromCurrentState];
  v14 = [v13 anyObject];

  return v14;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [objc_alloc(MEMORY[0x277D14B38]) initWithResultsBlock:&__block_literal_global_50_0];
  [(HULocationEventEditorSummaryItemManager *)self setUsersInstructionsItem:v5];

  v6 = [(HULocationEventEditorSummaryItemManager *)self usersInstructionsItem];
  [v4 addObject:v6];

  v7 = [HULocationEventSelectedLocationItem alloc];
  v8 = [(HULocationEventEditorSummaryItemManager *)self flow];
  v9 = [v8 eventBuilderItem];
  v10 = [v9 locationEventBuilder];
  v11 = [(HULocationEventEditorSummaryItemManager *)self home];
  v12 = [(HULocationEventSelectedLocationItem *)v7 initWithEvent:v10 inHome:v11];

  v13 = [(HULocationEventEditorSummaryItemManager *)self flow];
  v14 = [v13 triggerBuilder];

  if (v14)
  {
    v15 = [(HULocationEventEditorSummaryItemManager *)self flow];
    v16 = [v15 triggerBuilder];
    -[HULocationEventSelectedLocationItem setLocationCanBeEdited:](v12, "setLocationCanBeEdited:", [v16 isShortcutOwned] ^ 1);
  }

  else
  {
    [(HULocationEventSelectedLocationItem *)v12 setLocationCanBeEdited:1];
  }

  [(HULocationEventEditorSummaryItemManager *)self setLocationItem:v12];
  v17 = [(HULocationEventEditorSummaryItemManager *)self locationItem];
  [v4 addObject:v17];

  v18 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v4];
  v21[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

  return v19;
}

id __70__HULocationEventEditorSummaryItemManager__buildItemProvidersForHome___block_invoke()
{
  v0 = objc_opt_new();
  [v0 setObject:&unk_282491D00 forKeyedSubscript:@"instructionsStyle"];
  v1 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerEditorUserListSectionTitle", @"HULocationTriggerEditorUserListSectionTitle", 1);
  [v0 setObject:v1 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v2 = [MEMORY[0x277D2C900] futureWithResult:v0];

  return v2;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277D14850]);
  v7 = +[HULocationEventEditorSummaryItemManager usersHeaderSectionID];
  v8 = [v6 initWithIdentifier:v7];

  v9 = [(HULocationEventEditorSummaryItemManager *)self usersInstructionsItem];
  v23[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [v8 setItems:v10 filteringToDisplayedItems:v4];

  [v5 addObject:v8];
  v11 = [(HULocationEventEditorSummaryItemManager *)self userPickerModule];
  v12 = [v11 buildSectionsWithDisplayedItems:v4];
  [v5 addObjectsFromArray:v12];

  v13 = objc_alloc(MEMORY[0x277D14850]);
  v14 = +[HULocationEventEditorSummaryItemManager locationSectionID];
  v15 = [v13 initWithIdentifier:v14];

  v16 = [(HULocationEventEditorSummaryItemManager *)self locationItem];
  v22 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  [v15 setItems:v17 filteringToDisplayedItems:v4];

  [v5 addObject:v15];
  v18 = [(HULocationEventEditorSummaryItemManager *)self conditionEditorModule];

  if (v18)
  {
    v19 = [(HULocationEventEditorSummaryItemManager *)self conditionEditorModule];
    v20 = [v19 buildSectionsWithDisplayedItems:v4];
    [v5 addObjectsFromArray:v20];
  }

  return v5;
}

- (BOOL)_canEditLocation
{
  v3 = [(HULocationEventEditorSummaryItemManager *)self flow];
  v4 = [v3 eventBuilderItem];
  v5 = [v4 locationEventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  v8 = [(HULocationEventEditorSummaryItemManager *)self userPickerModule];
  v9 = [v8 presenceEventBuilder];
  v10 = [v9 users];
  v11 = [(HULocationEventEditorSummaryItemManager *)self home];
  v12 = [v10 resolveSelectedUsersWithHome:v11];

  v13 = MEMORY[0x277CBEB98];
  v14 = [(HULocationEventEditorSummaryItemManager *)self home];
  v15 = [v14 currentUser];
  v16 = [v13 setWithObject:v15];
  LOBYTE(v10) = [v12 isEqualToSet:v16];

  return v10;
}

- (BOOL)_hasCustomLocation
{
  v3 = [(HULocationEventEditorSummaryItemManager *)self flow];
  v4 = [v3 eventBuilderItem];
  v5 = [v4 locationEventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 0;
  }

  objc_opt_class();
  v8 = [(HULocationEventEditorSummaryItemManager *)self flow];
  v9 = [v8 eventBuilderItem];
  v10 = [v9 locationEventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [(HULocationEventEditorSummaryItemManager *)self home];
  v14 = [v12 isRegionAtHome:v13];

  v7 = v14 ^ 1;
  return v7;
}

- (void)userPickerModule:(id)a3 didUpdatePresenceEvent:(id)a4
{
  v25 = a4;
  if (!-[HULocationEventEditorSummaryItemManager _hasCustomLocation](self, "_hasCustomLocation") || ([v25 users], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "type"), v6, v7 != 1))
  {
    v8 = [(HULocationEventEditorSummaryItemManager *)self flow];
    v9 = [v8 eventBuilderItem];
    v10 = [v9 locationEventBuilder];

    if (v10)
    {
      v11 = [(HULocationEventEditorSummaryItemManager *)self flow];
      v12 = [v11 triggerBuilder];
      v13 = [v12 eventBuilders];
      v14 = [v13 containsObject:v10];

      if (v14)
      {
        v15 = [(HULocationEventEditorSummaryItemManager *)self flow];
        v16 = [v15 triggerBuilder];
        [v16 removeEventBuilder:v10];

        v17 = [(HULocationEventEditorSummaryItemManager *)self flow];
        v18 = [v17 triggerBuilder];
        [v18 addEventBuilder:v25];
      }
    }

    v19 = [(HULocationEventEditorSummaryItemManager *)self flow];
    v20 = [v19 eventBuilderItem];
    [v20 setLocationEventBuilder:v25];

    v21 = MEMORY[0x277CBEB98];
    v22 = [(HULocationEventEditorSummaryItemManager *)self locationItem];
    v23 = [v21 setWithObject:v22];
    v24 = [(HFItemManager *)self updateResultsForItems:v23 senderSelector:a2];
  }
}

@end