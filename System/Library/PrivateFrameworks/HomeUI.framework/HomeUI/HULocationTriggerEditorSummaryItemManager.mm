@interface HULocationTriggerEditorSummaryItemManager
- (BOOL)_canEditLocation;
- (BOOL)_hasCustomLocation;
- (BOOL)canChangeLocation;
- (BOOL)isInstructionsItem:(id)item;
- (HULocationTriggerEditorSummaryItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (HULocationTriggerEditorSummaryItemManager)initWithDelegate:(id)delegate triggerBuilder:(id)builder;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_userPickerOptions;
- (id)locationEventRegion;
- (void)updateLocationEventWithRegion:(id)region;
- (void)userPickerModule:(id)module didUpdatePresenceEvent:(id)event;
@end

@implementation HULocationTriggerEditorSummaryItemManager

- (HULocationTriggerEditorSummaryItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_triggerBuilder_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HULocationTriggerEditorSummaryItemManager.m" lineNumber:44 description:{@"%s is unavailable; use %@ instead", "-[HULocationTriggerEditorSummaryItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HULocationTriggerEditorSummaryItemManager)initWithDelegate:(id)delegate triggerBuilder:(id)builder
{
  builderCopy = builder;
  delegateCopy = delegate;
  locationInterface = [builderCopy locationInterface];
  locationEventBuilder = [locationInterface locationEventBuilder];

  if (!locationEventBuilder)
  {
    v11 = objc_opt_class();
    NSLog(&cfstr_MustBeInitiali.isa, v11, builderCopy);
  }

  v12 = objc_alloc(MEMORY[0x277D14B38]);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __77__HULocationTriggerEditorSummaryItemManager_initWithDelegate_triggerBuilder___block_invoke;
  v33[3] = &unk_277DB7478;
  v13 = builderCopy;
  v34 = v13;
  v14 = [v12 initWithResultsBlock:v33];
  v32.receiver = self;
  v32.super_class = HULocationTriggerEditorSummaryItemManager;
  v15 = [(HFItemManager *)&v32 initWithDelegate:delegateCopy sourceItem:v14];

  if (v15)
  {
    objc_storeStrong(&v15->_triggerBuilder, builder);
    v16 = [HUTriggerConditionEditorItemModule alloc];
    home = [v13 home];
    conditionCollection = [v13 conditionCollection];
    v19 = [MEMORY[0x277CBEB98] setWithObject:&unk_282491E38];
    v20 = [(HUTriggerConditionEditorItemModule *)v16 initWithItemUpdater:v15 home:home conditionCollection:conditionCollection disallowedConditionTypes:v19];
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
    home2 = [v22 home];
    _userPickerOptions = [(HULocationTriggerEditorSummaryItemManager *)v15 _userPickerOptions];
    v27 = [(HUPresenceUserPickerItemModule *)v24 initWithItemUpdater:v15 home:home2 presenceEvent:v23 options:_userPickerOptions delegate:v15];
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

- (BOOL)isInstructionsItem:(id)item
{
  itemCopy = item;
  usersInstructionsItem = [(HULocationTriggerEditorSummaryItemManager *)self usersInstructionsItem];

  return usersInstructionsItem == itemCopy;
}

- (id)locationEventRegion
{
  triggerBuilder = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
  locationInterface = [triggerBuilder locationInterface];
  locationEventBuilder = [locationInterface locationEventBuilder];

  objc_opt_class();
  v6 = locationEventBuilder;
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
    region = [v8 region];
    v10 = [HULocationTriggerRegion customRegionWithCircularRegion:region];
LABEL_8:
    v11 = v10;

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    region = [(HFItemManager *)self home];
    v10 = +[HULocationTriggerRegion homeRegionWithHome:eventType:](HULocationTriggerRegion, "homeRegionWithHome:eventType:", region, [v6 locationEventType]);
    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (BOOL)canChangeLocation
{
  objc_opt_class();
  locationItem = [(HULocationTriggerEditorSummaryItemManager *)self locationItem];
  if (objc_opt_isKindOfClass())
  {
    v4 = locationItem;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = v5 && ([v5 locationCanBeEdited] & 1) != 0;
  return v6;
}

- (void)updateLocationEventWithRegion:(id)region
{
  regionCopy = region;
  regionType = [regionCopy regionType];
  if (regionType == 1)
  {
    objc_opt_class();
    triggerBuilder = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
    locationInterface = [triggerBuilder locationInterface];
    locationEventBuilder = [locationInterface locationEventBuilder];
    if (objc_opt_isKindOfClass())
    {
      v12 = locationEventBuilder;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (!v13)
    {
      locationEventBuilder = objc_alloc_init(MEMORY[0x277D147B0]);
      triggerBuilder2 = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
      locationInterface2 = [triggerBuilder2 locationInterface];
      [locationInterface2 setLocationEventBuilder:locationEventBuilder];
    }

    circularRegion = [regionCopy circularRegion];
    [locationEventBuilder setRegion:circularRegion];
  }

  else
  {
    if (regionType)
    {
      goto LABEL_11;
    }

    locationEventBuilder = [(HULocationTriggerEditorSummaryItemManager *)self userPickerModule];
    circularRegion = [locationEventBuilder presenceEventBuilder];
    triggerBuilder3 = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
    locationInterface3 = [triggerBuilder3 locationInterface];
    [locationInterface3 setLocationEventBuilder:circularRegion];
  }

LABEL_11:
  _userPickerOptions = [(HULocationTriggerEditorSummaryItemManager *)self _userPickerOptions];
  userPickerModule = [(HULocationTriggerEditorSummaryItemManager *)self userPickerModule];
  [userPickerModule setOptions:_userPickerOptions];

  allItems = [(HFItemManager *)self allItems];
  v19 = [(HFItemManager *)self updateResultsForItems:allItems senderSelector:a2];
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

- (id)_buildItemProvidersForHome:(id)home
{
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [objc_alloc(MEMORY[0x277D14B38]) initWithResultsBlock:&__block_literal_global_219];
  [(HULocationTriggerEditorSummaryItemManager *)self setUsersInstructionsItem:v5];

  usersInstructionsItem = [(HULocationTriggerEditorSummaryItemManager *)self usersInstructionsItem];
  [v4 addObject:usersInstructionsItem];

  v7 = [HULocationTriggerSelectedLocationItem alloc];
  triggerBuilder = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
  v9 = [(HULocationTriggerSelectedLocationItem *)v7 initWithTriggerBuilder:triggerBuilder];
  [(HULocationTriggerEditorSummaryItemManager *)self setLocationItem:v9];

  locationItem = [(HULocationTriggerEditorSummaryItemManager *)self locationItem];
  [v4 addObject:locationItem];

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

- (id)_buildItemModulesForHome:(id)home
{
  v4 = MEMORY[0x277CBEA60];
  conditionEditorModule = [(HULocationTriggerEditorSummaryItemManager *)self conditionEditorModule];
  userPickerModule = [(HULocationTriggerEditorSummaryItemManager *)self userPickerModule];
  v7 = [v4 arrayWithObjects:{conditionEditorModule, userPickerModule, 0}];

  return v7;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v22[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277D14850]);
  v7 = +[HULocationTriggerEditorSummaryItemManager usersHeaderSectionID];
  v8 = [v6 initWithIdentifier:v7];

  usersInstructionsItem = [(HULocationTriggerEditorSummaryItemManager *)self usersInstructionsItem];
  v22[0] = usersInstructionsItem;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  [v8 setItems:v10 filteringToDisplayedItems:itemsCopy];

  [v5 addObject:v8];
  userPickerModule = [(HULocationTriggerEditorSummaryItemManager *)self userPickerModule];
  v12 = [userPickerModule buildSectionsWithDisplayedItems:itemsCopy];
  [v5 addObjectsFromArray:v12];

  v13 = objc_alloc(MEMORY[0x277D14850]);
  v14 = +[HULocationTriggerEditorSummaryItemManager locationSectionID];
  v15 = [v13 initWithIdentifier:v14];

  locationItem = [(HULocationTriggerEditorSummaryItemManager *)self locationItem];
  v21 = locationItem;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  [v15 setItems:v17 filteringToDisplayedItems:itemsCopy];

  [v5 addObject:v15];
  conditionEditorModule = [(HULocationTriggerEditorSummaryItemManager *)self conditionEditorModule];
  v19 = [conditionEditorModule buildSectionsWithDisplayedItems:itemsCopy];

  [v5 addObjectsFromArray:v19];

  return v5;
}

- (BOOL)_canEditLocation
{
  triggerBuilder = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
  locationInterface = [triggerBuilder locationInterface];
  locationEventBuilder = [locationInterface locationEventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  userPickerModule = [(HULocationTriggerEditorSummaryItemManager *)self userPickerModule];
  presenceEventBuilder = [userPickerModule presenceEventBuilder];
  users = [presenceEventBuilder users];
  home = [(HFItemManager *)self home];
  v12 = [users resolveSelectedUsersWithHome:home];

  v13 = MEMORY[0x277CBEB98];
  home2 = [(HFItemManager *)self home];
  currentUser = [home2 currentUser];
  v16 = [v13 setWithObject:currentUser];
  LOBYTE(users) = [v12 isEqualToSet:v16];

  return users;
}

- (BOOL)_hasCustomLocation
{
  triggerBuilder = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
  locationInterface = [triggerBuilder locationInterface];
  locationEventBuilder = [locationInterface locationEventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 0;
  }

  objc_opt_class();
  triggerBuilder2 = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
  locationInterface2 = [triggerBuilder2 locationInterface];
  locationEventBuilder2 = [locationInterface2 locationEventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v11 = locationEventBuilder2;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  triggerBuilder3 = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
  home = [triggerBuilder3 home];
  v15 = [v12 isRegionAtHome:home];

  v7 = v15 ^ 1;
  return v7;
}

- (void)userPickerModule:(id)module didUpdatePresenceEvent:(id)event
{
  eventCopy = event;
  if (!-[HULocationTriggerEditorSummaryItemManager _hasCustomLocation](self, "_hasCustomLocation") || ([eventCopy users], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "type"), v6, v7 != 1))
  {
    triggerBuilder = [(HULocationTriggerEditorSummaryItemManager *)self triggerBuilder];
    locationInterface = [triggerBuilder locationInterface];
    [locationInterface setLocationEventBuilder:eventCopy];

    v10 = MEMORY[0x277CBEB98];
    locationItem = [(HULocationTriggerEditorSummaryItemManager *)self locationItem];
    v12 = [v10 setWithObject:locationItem];
    v13 = [(HFItemManager *)self updateResultsForItems:v12 senderSelector:a2];
  }
}

@end