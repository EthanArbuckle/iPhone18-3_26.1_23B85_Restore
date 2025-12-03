@interface HULocationEventEditorSummaryItemManager
+ (NSString)locationSectionID;
+ (NSString)usersHeaderSectionID;
- (BOOL)_canEditLocation;
- (BOOL)_hasCustomLocation;
- (BOOL)canChangeLocation;
- (BOOL)isInstructionsItem:(id)item;
- (HULocationEventEditorSummaryItemManager)initWithDelegate:(id)delegate flow:(id)flow;
- (HULocationEventEditorSummaryItemManager)initWithDelegate:(id)delegate sourceItem:(id)item;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)_userPickerOptions;
- (id)home;
- (id)locationEventRegion;
- (void)updateLocationEventWithRegion:(id)region;
- (void)userPickerModule:(id)module didUpdatePresenceEvent:(id)event;
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

- (HULocationEventEditorSummaryItemManager)initWithDelegate:(id)delegate sourceItem:(id)item
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithDelegate_flow_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HULocationEventEditorSummaryItemManager.m" lineNumber:46 description:{@"%s is unavailable; use %@ instead", "-[HULocationEventEditorSummaryItemManager initWithDelegate:sourceItem:]", v7}];

  return 0;
}

- (HULocationEventEditorSummaryItemManager)initWithDelegate:(id)delegate flow:(id)flow
{
  flowCopy = flow;
  delegateCopy = delegate;
  eventBuilderItem = [flowCopy eventBuilderItem];
  locationEventBuilder = [eventBuilderItem locationEventBuilder];

  if (!locationEventBuilder)
  {
    v11 = objc_alloc_init(MEMORY[0x277D14978]);
    eventType = [flowCopy eventType];
    if ((eventType - 1) <= 1)
    {
      [v11 setLocationEventType:eventType];
    }

    eventBuilderItem2 = [flowCopy eventBuilderItem];
    [eventBuilderItem2 setLocationEventBuilder:v11];
  }

  v14 = objc_alloc(MEMORY[0x277D14B38]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__HULocationEventEditorSummaryItemManager_initWithDelegate_flow___block_invoke;
  v20[3] = &unk_277DB7478;
  selfCopy = self;
  v21 = selfCopy;
  v16 = [v14 initWithResultsBlock:v20];
  v19.receiver = selfCopy;
  v19.super_class = HULocationEventEditorSummaryItemManager;
  v17 = [(HFItemManager *)&v19 initWithDelegate:delegateCopy sourceItem:v16];

  if (v17)
  {
    objc_storeStrong(&v17->_flow, flow);
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
  flow = [(HULocationEventEditorSummaryItemManager *)self flow];
  triggerBuilder = [flow triggerBuilder];
  home = [triggerBuilder home];
  v6 = home;
  if (home)
  {
    home2 = home;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HULocationEventEditorSummaryItemManager;
    home2 = [(HFItemManager *)&v10 home];
  }

  v8 = home2;

  return v8;
}

- (BOOL)isInstructionsItem:(id)item
{
  itemCopy = item;
  usersInstructionsItem = [(HULocationEventEditorSummaryItemManager *)self usersInstructionsItem];

  return usersInstructionsItem == itemCopy;
}

- (id)locationEventRegion
{
  flow = [(HULocationEventEditorSummaryItemManager *)self flow];
  eventBuilderItem = [flow eventBuilderItem];
  locationEventBuilder = [eventBuilderItem locationEventBuilder];

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
    region = [(HULocationEventEditorSummaryItemManager *)self home];
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
  locationItem = [(HULocationEventEditorSummaryItemManager *)self locationItem];
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
    flow = [(HULocationEventEditorSummaryItemManager *)self flow];
    eventBuilderItem = [flow eventBuilderItem];
    locationEventBuilder = [eventBuilderItem locationEventBuilder];
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
      flow2 = [(HULocationEventEditorSummaryItemManager *)self flow];
      eventBuilderItem2 = [flow2 eventBuilderItem];
      [eventBuilderItem2 setLocationEventBuilder:locationEventBuilder];
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

    locationEventBuilder = [(HULocationEventEditorSummaryItemManager *)self userPickerModule];
    circularRegion = [locationEventBuilder presenceEventBuilder];
    flow3 = [(HULocationEventEditorSummaryItemManager *)self flow];
    eventBuilderItem3 = [flow3 eventBuilderItem];
    [eventBuilderItem3 setLocationEventBuilder:circularRegion];
  }

LABEL_11:
  _userPickerOptions = [(HULocationEventEditorSummaryItemManager *)self _userPickerOptions];
  userPickerModule = [(HULocationEventEditorSummaryItemManager *)self userPickerModule];
  [userPickerModule setOptions:_userPickerOptions];

  allItems = [(HFItemManager *)self allItems];
  v19 = [(HFItemManager *)self updateResultsForItems:allItems senderSelector:a2];
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

- (id)_buildItemModulesForHome:(id)home
{
  v29[2] = *MEMORY[0x277D85DE8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __68__HULocationEventEditorSummaryItemManager__buildItemModulesForHome___block_invoke;
  v27[3] = &unk_277DC0DC0;
  v27[4] = self;
  homeCopy = home;
  v5 = __68__HULocationEventEditorSummaryItemManager__buildItemModulesForHome___block_invoke(v27);
  v6 = [HUPresenceUserPickerItemModule alloc];
  flow = [(HULocationEventEditorSummaryItemManager *)self flow];
  triggerBuilder = [flow triggerBuilder];
  home = [triggerBuilder home];
  v10 = home;
  if (home)
  {
    v11 = home;
  }

  else
  {
    v11 = homeCopy;
  }

  _userPickerOptions = [(HULocationEventEditorSummaryItemManager *)self _userPickerOptions];
  v13 = [(HUPresenceUserPickerItemModule *)v6 initWithItemUpdater:self home:v11 presenceEvent:v5 options:_userPickerOptions delegate:self];

  userPickerModule = self->_userPickerModule;
  self->_userPickerModule = v13;

  if (_os_feature_enabled_impl())
  {
    userPickerModule = [(HULocationEventEditorSummaryItemManager *)self userPickerModule];
    v28 = userPickerModule;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  }

  else
  {
    v17 = [HUTriggerConditionEditorItemModule alloc];
    home2 = [(HULocationEventEditorSummaryItemManager *)self home];
    flow2 = [(HULocationEventEditorSummaryItemManager *)self flow];
    triggerBuilder2 = [flow2 triggerBuilder];
    conditionCollection = [triggerBuilder2 conditionCollection];
    v22 = [MEMORY[0x277CBEB98] setWithObject:&unk_282491CE8];
    v23 = [(HUTriggerConditionEditorItemModule *)v17 initWithItemUpdater:self home:home2 conditionCollection:conditionCollection disallowedConditionTypes:v22];
    conditionEditorModule = self->_conditionEditorModule;
    self->_conditionEditorModule = v23;

    userPickerModule = [(HULocationEventEditorSummaryItemManager *)self userPickerModule];
    v29[0] = userPickerModule;
    conditionEditorModule = [(HULocationEventEditorSummaryItemManager *)self conditionEditorModule];
    v29[1] = conditionEditorModule;
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

- (id)_buildItemProvidersForHome:(id)home
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [objc_alloc(MEMORY[0x277D14B38]) initWithResultsBlock:&__block_literal_global_50_0];
  [(HULocationEventEditorSummaryItemManager *)self setUsersInstructionsItem:v5];

  usersInstructionsItem = [(HULocationEventEditorSummaryItemManager *)self usersInstructionsItem];
  [v4 addObject:usersInstructionsItem];

  v7 = [HULocationEventSelectedLocationItem alloc];
  flow = [(HULocationEventEditorSummaryItemManager *)self flow];
  eventBuilderItem = [flow eventBuilderItem];
  locationEventBuilder = [eventBuilderItem locationEventBuilder];
  home = [(HULocationEventEditorSummaryItemManager *)self home];
  v12 = [(HULocationEventSelectedLocationItem *)v7 initWithEvent:locationEventBuilder inHome:home];

  flow2 = [(HULocationEventEditorSummaryItemManager *)self flow];
  triggerBuilder = [flow2 triggerBuilder];

  if (triggerBuilder)
  {
    flow3 = [(HULocationEventEditorSummaryItemManager *)self flow];
    triggerBuilder2 = [flow3 triggerBuilder];
    -[HULocationEventSelectedLocationItem setLocationCanBeEdited:](v12, "setLocationCanBeEdited:", [triggerBuilder2 isShortcutOwned] ^ 1);
  }

  else
  {
    [(HULocationEventSelectedLocationItem *)v12 setLocationCanBeEdited:1];
  }

  [(HULocationEventEditorSummaryItemManager *)self setLocationItem:v12];
  locationItem = [(HULocationEventEditorSummaryItemManager *)self locationItem];
  [v4 addObject:locationItem];

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

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v23[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277D14850]);
  v7 = +[HULocationEventEditorSummaryItemManager usersHeaderSectionID];
  v8 = [v6 initWithIdentifier:v7];

  usersInstructionsItem = [(HULocationEventEditorSummaryItemManager *)self usersInstructionsItem];
  v23[0] = usersInstructionsItem;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [v8 setItems:v10 filteringToDisplayedItems:itemsCopy];

  [v5 addObject:v8];
  userPickerModule = [(HULocationEventEditorSummaryItemManager *)self userPickerModule];
  v12 = [userPickerModule buildSectionsWithDisplayedItems:itemsCopy];
  [v5 addObjectsFromArray:v12];

  v13 = objc_alloc(MEMORY[0x277D14850]);
  v14 = +[HULocationEventEditorSummaryItemManager locationSectionID];
  v15 = [v13 initWithIdentifier:v14];

  locationItem = [(HULocationEventEditorSummaryItemManager *)self locationItem];
  v22 = locationItem;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  [v15 setItems:v17 filteringToDisplayedItems:itemsCopy];

  [v5 addObject:v15];
  conditionEditorModule = [(HULocationEventEditorSummaryItemManager *)self conditionEditorModule];

  if (conditionEditorModule)
  {
    conditionEditorModule2 = [(HULocationEventEditorSummaryItemManager *)self conditionEditorModule];
    v20 = [conditionEditorModule2 buildSectionsWithDisplayedItems:itemsCopy];
    [v5 addObjectsFromArray:v20];
  }

  return v5;
}

- (BOOL)_canEditLocation
{
  flow = [(HULocationEventEditorSummaryItemManager *)self flow];
  eventBuilderItem = [flow eventBuilderItem];
  locationEventBuilder = [eventBuilderItem locationEventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  userPickerModule = [(HULocationEventEditorSummaryItemManager *)self userPickerModule];
  presenceEventBuilder = [userPickerModule presenceEventBuilder];
  users = [presenceEventBuilder users];
  home = [(HULocationEventEditorSummaryItemManager *)self home];
  v12 = [users resolveSelectedUsersWithHome:home];

  v13 = MEMORY[0x277CBEB98];
  home2 = [(HULocationEventEditorSummaryItemManager *)self home];
  currentUser = [home2 currentUser];
  v16 = [v13 setWithObject:currentUser];
  LOBYTE(users) = [v12 isEqualToSet:v16];

  return users;
}

- (BOOL)_hasCustomLocation
{
  flow = [(HULocationEventEditorSummaryItemManager *)self flow];
  eventBuilderItem = [flow eventBuilderItem];
  locationEventBuilder = [eventBuilderItem locationEventBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 0;
  }

  objc_opt_class();
  flow2 = [(HULocationEventEditorSummaryItemManager *)self flow];
  eventBuilderItem2 = [flow2 eventBuilderItem];
  locationEventBuilder2 = [eventBuilderItem2 locationEventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v11 = locationEventBuilder2;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  home = [(HULocationEventEditorSummaryItemManager *)self home];
  v14 = [v12 isRegionAtHome:home];

  v7 = v14 ^ 1;
  return v7;
}

- (void)userPickerModule:(id)module didUpdatePresenceEvent:(id)event
{
  eventCopy = event;
  if (!-[HULocationEventEditorSummaryItemManager _hasCustomLocation](self, "_hasCustomLocation") || ([eventCopy users], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "type"), v6, v7 != 1))
  {
    flow = [(HULocationEventEditorSummaryItemManager *)self flow];
    eventBuilderItem = [flow eventBuilderItem];
    locationEventBuilder = [eventBuilderItem locationEventBuilder];

    if (locationEventBuilder)
    {
      flow2 = [(HULocationEventEditorSummaryItemManager *)self flow];
      triggerBuilder = [flow2 triggerBuilder];
      eventBuilders = [triggerBuilder eventBuilders];
      v14 = [eventBuilders containsObject:locationEventBuilder];

      if (v14)
      {
        flow3 = [(HULocationEventEditorSummaryItemManager *)self flow];
        triggerBuilder2 = [flow3 triggerBuilder];
        [triggerBuilder2 removeEventBuilder:locationEventBuilder];

        flow4 = [(HULocationEventEditorSummaryItemManager *)self flow];
        triggerBuilder3 = [flow4 triggerBuilder];
        [triggerBuilder3 addEventBuilder:eventCopy];
      }
    }

    flow5 = [(HULocationEventEditorSummaryItemManager *)self flow];
    eventBuilderItem2 = [flow5 eventBuilderItem];
    [eventBuilderItem2 setLocationEventBuilder:eventCopy];

    v21 = MEMORY[0x277CBEB98];
    locationItem = [(HULocationEventEditorSummaryItemManager *)self locationItem];
    v23 = [v21 setWithObject:locationItem];
    v24 = [(HFItemManager *)self updateResultsForItems:v23 senderSelector:a2];
  }
}

@end