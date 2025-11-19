@interface HULocationTriggerEditorSummaryItemManager
- (BOOL)_canEditLocation;
- (BOOL)_hasCustomLocation;
- (BOOL)canChangeLocation;
- (BOOL)isInstructionsItem:(id)a3;
- (HULocationTriggerEditorSummaryItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4;
- (HULocationTriggerEditorSummaryItemManager)initWithDelegate:(id)a3 triggerBuilder:(id)a4;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)_userPickerOptions;
- (id)locationEventRegion;
- (void)updateLocationEventWithRegion:(id)a3;
- (void)userPickerModule:(id)a3 didUpdatePresenceEvent:(id)a4;
@end

@implementation HULocationTriggerEditorSummaryItemManager

- (HULocationTriggerEditorSummaryItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_triggerBuilder_);
  [v6 handleFailureInMethod:a2 object:self file:@"HULocationTriggerEditorSummaryItemManager.m" lineNumber:44 description:{@"%s is unavailable; use %@ instead", "-[HULocationTriggerEditorSummaryItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HULocationTriggerEditorSummaryItemManager)initWithDelegate:(id)a3 triggerBuilder:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v7 locationInterface];
  v10 = [v9 locationEventBuilder];

  if (!v10)
  {
    v11 = objc_opt_class();
    NSLog(&cfstr_MustBeInitiali.isa, v11, v7);
  }

  v12 = objc_alloc(MEMORY[0x277D14B38]);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __77__HULocationTriggerEditorSummaryItemManager_initWithDelegate_triggerBuilder___block_invoke;
  v33[3] = &unk_277DB7478;
  v13 = v7;
  v34 = v13;
  v14 = [v12 initWithResultsBlock:v33];
  v32.receiver = self;
  v32.super_class = HULocationTriggerEditorSummaryItemManager;
  v15 = [(HFItemManager *)&v32 initWithDelegate:v8 sourceItem:v14];

  if (v15)
  {
    objc_storeStrong(&v15->_triggerBuilder, a4);
    v16 = [HUTriggerConditionEditorItemModule alloc];
    v17 = [v13 home];
    v18 = [v13 conditionCollection];
    v19 = [MEMORY[0x277CBEB98] setWithObject:&unk_282491E38];
    v20 = [(HUTriggerConditionEditorItemModule *)v16 initWithItemUpdater:v15 home:v17 conditionCollection:v18 disallowedConditionTypes:v19];
    conditionEditorModule = v15->_conditionEditorModule;
    v15->_conditionEditorModule = v20;

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __77__HULocationTriggerEditorSummaryItemManager_initWithDelegate_triggerBuilder___block_invoke_29;
    v30[3] = &unk_277DC0DC0;
    v22 = v13;
    v31 = v22;
    v23 = __77__HULocationTriggerEditorSummaryItemManager_initWithDelegate_triggerBuilder___block_invoke_29(v30);
    v24 = [HUPresenceUserPickerItemModule alloc];
    v25 = [v22 home];
    v26 = [(HULocationTriggerEditorSummaryItemManager *)v15 _userPickerOptions];
    v27 = [(HUPresenceUserPickerItemModule *)v24 initWithItemUpdater:v15 home:v25 presenceEvent:v23 options:v26 delegate:v15];
    userPickerModule = v15->_userPickerModule;
    v15->_userPickerModule = v27;
  }

  return v15;
}

id __77__HULocationTriggerEditorSummaryItemManager_initWithDelegate_triggerBuilder___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) locationInterface];
  v2 = [v1 locationEventBuilder];
  v3 = [v2 locationEventType];

  if (v3 == 1)
  {
    v4 = @"HULocationTriggerSummaryTitlePeopleArrive";
  }

  else
  {
    v4 = @"HULocationTriggerSummaryTitlePeopleLeave";
  }

  v5 = _HULocalizedStringWithDefaultValue(v4, v4, 1);
  v6 = MEMORY[0x277D2C900];
  v10 = *MEMORY[0x277D13F60];
  v11[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [v6 futureWithResult:v7];

  return v8;
}

id __77__HULocationTriggerEditorSummaryItemManager_initWithDelegate_triggerBuilder___block_invoke_29(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) locationInterface];
  v3 = [v2 locationEventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    v3 = objc_alloc_init(MEMORY[0x277D14978]);
    v6 = [*(a1 + 32) locationInterface];
    v7 = [v6 locationEventBuilder];
    [v3 setLocationEventType:{objc_msgSend(v7, "locationEventType")}];

    v8 = [MEMORY[0x277D14A70] currentUserCollection];
    [v3 setUsers:v8];

    [v3 setActivationGranularity:0];
  }

  v9 = [v3 buildNewEventsFromCurrentState];
  v10 = [v9 anyObject];

  return v10;
}

- (BOOL)isInstructionsItem:(id)a3
{
  v4 = a3;
  v5 = [(HULocationTriggerEditorSummaryItemManager *)self usersInstructionsItem];

  return v5 == v4;
}

- (id)locationEventRegion
{
  v3 = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
  v4 = [v3 locationInterface];
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
    v9 = [(HFItemManager *)self home];
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
  v3 = [(HULocationTriggerEditorSummaryItemManager *)self locationItem];
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
    v10 = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
    v11 = [v10 locationInterface];
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
      v14 = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
      v15 = [v14 locationInterface];
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

    v6 = [(HULocationTriggerEditorSummaryItemManager *)self userPickerModule];
    v7 = [v6 presenceEventBuilder];
    v8 = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
    v9 = [v8 locationInterface];
    [v9 setLocationEventBuilder:v7];
  }

LABEL_11:
  v16 = [(HULocationTriggerEditorSummaryItemManager *)self _userPickerOptions];
  v17 = [(HULocationTriggerEditorSummaryItemManager *)self userPickerModule];
  [v17 setOptions:v16];

  v18 = [(HFItemManager *)self allItems];
  v19 = [(HFItemManager *)self updateResultsForItems:v18 senderSelector:a2];
}

- (id)_userPickerOptions
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HULocationTriggerEditorSummaryItemManager__userPickerOptions__block_invoke;
  v6[3] = &unk_277DC0D98;
  v6[4] = self;
  v3 = __63__HULocationTriggerEditorSummaryItemManager__userPickerOptions__block_invoke(v6);
  v4 = [[HUPresenceUserPickerItemModuleOptions alloc] initWithLocationDevice:v3 customLocationSelected:[(HULocationTriggerEditorSummaryItemManager *)self _hasCustomLocation]];

  return v4;
}

id __63__HULocationTriggerEditorSummaryItemManager__userPickerOptions__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) triggerBuilder];
  v3 = [v2 locationInterface];
  v4 = [v3 locationEventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = +[HUPresenceCurrentUserLocationDevice FMFDevice];
  }

  else
  {
    v7 = [*(a1 + 32) triggerBuilder];
    v8 = [v7 trigger];
    v9 = [v8 creatorDevice];

    if (v9)
    {
      [HUPresenceCurrentUserLocationDevice customDeviceWithHMDevice:v9];
    }

    else
    {
      +[HUPresenceCurrentUserLocationDevice currentDevice];
    }
    v6 = ;
  }

  return v6;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [objc_alloc(MEMORY[0x277D14B38]) initWithResultsBlock:&__block_literal_global_219];
  [(HULocationTriggerEditorSummaryItemManager *)self setUsersInstructionsItem:v5];

  v6 = [(HULocationTriggerEditorSummaryItemManager *)self usersInstructionsItem];
  [v4 addObject:v6];

  v7 = [HULocationTriggerSelectedLocationItem alloc];
  v8 = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
  v9 = [(HULocationTriggerSelectedLocationItem *)v7 initWithTriggerBuilder:v8];
  [(HULocationTriggerEditorSummaryItemManager *)self setLocationItem:v9];

  v10 = [(HULocationTriggerEditorSummaryItemManager *)self locationItem];
  [v4 addObject:v10];

  v11 = [objc_alloc(MEMORY[0x277D14B40]) initWithItems:v4];
  v12 = [MEMORY[0x277CBEA60] arrayWithObject:v11];

  return v12;
}

id __72__HULocationTriggerEditorSummaryItemManager__buildItemProvidersForHome___block_invoke()
{
  v0 = objc_opt_new();
  [v0 setObject:&unk_282491E50 forKeyedSubscript:@"instructionsStyle"];
  v1 = _HULocalizedStringWithDefaultValue(@"HULocationTriggerEditorUserListSectionTitle", @"HULocationTriggerEditorUserListSectionTitle", 1);
  [v0 setObject:v1 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v2 = [MEMORY[0x277D2C900] futureWithResult:v0];

  return v2;
}

- (id)_buildItemModulesForHome:(id)a3
{
  v4 = MEMORY[0x277CBEA60];
  v5 = [(HULocationTriggerEditorSummaryItemManager *)self conditionEditorModule];
  v6 = [(HULocationTriggerEditorSummaryItemManager *)self userPickerModule];
  v7 = [v4 arrayWithObjects:{v5, v6, 0}];

  return v7;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277D14850]);
  v7 = +[HULocationTriggerEditorSummaryItemManager usersHeaderSectionID];
  v8 = [v6 initWithIdentifier:v7];

  v9 = [(HULocationTriggerEditorSummaryItemManager *)self usersInstructionsItem];
  v22[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [v8 setItems:v10 filteringToDisplayedItems:v4];

  [v5 addObject:v8];
  v11 = [(HULocationTriggerEditorSummaryItemManager *)self userPickerModule];
  v12 = [v11 buildSectionsWithDisplayedItems:v4];
  [v5 addObjectsFromArray:v12];

  v13 = objc_alloc(MEMORY[0x277D14850]);
  v14 = +[HULocationTriggerEditorSummaryItemManager locationSectionID];
  v15 = [v13 initWithIdentifier:v14];

  v16 = [(HULocationTriggerEditorSummaryItemManager *)self locationItem];
  v21 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  [v15 setItems:v17 filteringToDisplayedItems:v4];

  [v5 addObject:v15];
  v18 = [(HULocationTriggerEditorSummaryItemManager *)self conditionEditorModule];
  v19 = [v18 buildSectionsWithDisplayedItems:v4];

  [v5 addObjectsFromArray:v19];

  return v5;
}

- (BOOL)_canEditLocation
{
  v3 = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
  v4 = [v3 locationInterface];
  v5 = [v4 locationEventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  v8 = [(HULocationTriggerEditorSummaryItemManager *)self userPickerModule];
  v9 = [v8 presenceEventBuilder];
  v10 = [v9 users];
  v11 = [(HFItemManager *)self home];
  v12 = [v10 resolveSelectedUsersWithHome:v11];

  v13 = MEMORY[0x277CBEB98];
  v14 = [(HFItemManager *)self home];
  v15 = [v14 currentUser];
  v16 = [v13 setWithObject:v15];
  LOBYTE(v10) = [v12 isEqualToSet:v16];

  return v10;
}

- (BOOL)_hasCustomLocation
{
  v3 = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
  v4 = [v3 locationInterface];
  v5 = [v4 locationEventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 0;
  }

  objc_opt_class();
  v8 = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
  v9 = [v8 locationInterface];
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

  v13 = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
  v14 = [v13 home];
  v15 = [v12 isRegionAtHome:v14];

  v7 = v15 ^ 1;
  return v7;
}

- (void)userPickerModule:(id)a3 didUpdatePresenceEvent:(id)a4
{
  v14 = a4;
  if (!-[HULocationTriggerEditorSummaryItemManager _hasCustomLocation](self, "_hasCustomLocation") || ([v14 users], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "type"), v6, v7 != 1))
  {
    v8 = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
    v9 = [v8 locationInterface];
    [v9 setLocationEventBuilder:v14];

    v10 = MEMORY[0x277CBEB98];
    v11 = [(HULocationTriggerEditorSummaryItemManager *)self locationItem];
    v12 = [v10 setWithObject:v11];
    v13 = [(HFItemManager *)self updateResultsForItems:v12 senderSelector:a2];
  }
}

@end