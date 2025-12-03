@interface HUAvailableRelatedTriggerItemModule
+ (BOOL)_itemClassSupportsEvents:(id)events;
+ (BOOL)shouldShowRecommendation:(id)recommendation;
+ (id)defaultContext;
- (BOOL)_editingAvailableWithDisplayedItems:(id)items;
- (BOOL)addAutomationItemShouldBeHidden;
- (BOOL)containsMatterAccessory;
- (BOOL)relatedItemsCanBeAutomated;
- (BOOL)shouldHideAutomationsModule;
- (HFItemSectionAccessoryButtonHeaderDelegate)editButtonHeaderDelegate;
- (HUAvailableRelatedTriggerItemModule)initWithItems:(id)items itemUpdater:(id)updater home:(id)home context:(id)context;
- (NSArray)actionBuilderFactories;
- (NSArray)eventOptionsItems;
- (NSArray)sensorCharacteristics;
- (id)_accessoryCategoryUserFrieindlyDescription;
- (id)_activateItem:(id)item active:(BOOL)active;
- (id)_buildItemProviders;
- (id)activateAllSelectedItems;
- (id)activateItem:(id)item active:(BOOL)active;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
- (id)itemsToHideInSet:(id)set;
- (id)progressivelySortItems:(id)items;
- (id)serviceTypes;
- (id)serviceTypesSupportingAutomation;
- (void)_finishCommitWithItems:(id)items updatesDelayReason:(id)reason;
- (void)_performRequest:(id)request;
- (void)_updateRelatedItems:(id)items;
- (void)didActivateItem:(id)item active:(BOOL)active error:(id)error;
- (void)setAutomationItemIsLoading:(BOOL)loading;
- (void)setRelatedItems:(id)items;
@end

@implementation HUAvailableRelatedTriggerItemModule

- (BOOL)containsMatterAccessory
{
  selfCopy = self;
  v3 = HUAvailableRelatedTriggerItemModule.containsMatterAccessory()();

  return v3;
}

- (HUAvailableRelatedTriggerItemModule)initWithItems:(id)items itemUpdater:(id)updater home:(id)home context:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  homeCopy = home;
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = HUAvailableRelatedTriggerItemModule;
  v13 = [(HFItemModule *)&v24 initWithItemUpdater:updater];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_home, home);
    array = [MEMORY[0x277CBEB18] array];
    waitingRequests = v14->_waitingRequests;
    v14->_waitingRequests = array;

    objc_opt_class();
    v17 = contextCopy;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if (v19)
    {
      v20 = v17;
    }

    else
    {
      v20 = [[HUAvailableRelatedTriggerItemModuleContext alloc] initWithContext:v17];
    }

    [(HUAvailableRelatedTriggerItemModuleContext *)v20 setEngineOptions:[(HUAvailableRelatedTriggerItemModuleContext *)v20 engineOptions]& 0xFFFFFFFFFFFFFFF8];
    [(HUAvailableRelatedTriggerItemModuleContext *)v20 setEngineOptions:[(HUAvailableRelatedTriggerItemModuleContext *)v20 engineOptions]| 2];
    context = v14->_context;
    v14->_context = v20;

    v14->_enableNaturalLighting = 1;
    [(HUAvailableRelatedTriggerItemModule *)v14 _updateRelatedItems:itemsCopy];
    v22 = HFLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = itemsCopy;
      _os_log_impl(&dword_20CEB6000, v22, OS_LOG_TYPE_DEFAULT, "HUAvailableRelatedTriggerItemModule configured with items: %@", buf, 0xCu);
    }
  }

  return v14;
}

+ (id)defaultContext
{
  v2 = objc_alloc_init(HUAvailableRelatedTriggerItemModuleContext);
  [(HUAvailableRelatedTriggerItemModuleContext *)v2 setEngineOptions:82];

  return v2;
}

- (id)activateItem:(id)item active:(BOOL)active
{
  activeCopy = active;
  itemCopy = item;
  v7 = [[HUAvailableTriggerItemActivationRequest alloc] initWithItem:itemCopy active:activeCopy];

  activeRequest = [(HUAvailableRelatedTriggerItemModule *)self activeRequest];

  if (activeRequest)
  {
    waitingRequests = [(HUAvailableRelatedTriggerItemModule *)self waitingRequests];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__HUAvailableRelatedTriggerItemModule_activateItem_active___block_invoke;
    v17[3] = &unk_277DBAD18;
    v7 = v7;
    v18 = v7;
    v10 = [waitingRequests na_filter:v17];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__HUAvailableRelatedTriggerItemModule_activateItem_active___block_invoke_2;
    v16[3] = &unk_277DBAD40;
    v16[4] = self;
    [v10 na_each:v16];
    activeRequest2 = [(HUAvailableRelatedTriggerItemModule *)self activeRequest];
    v12 = [(HUAvailableTriggerItemActivationRequest *)v7 isSameAsRequest:activeRequest2];

    if (v12)
    {
      [(HUAvailableRelatedTriggerItemModule *)self activeRequest];
      v7 = waitingRequests2 = v7;
    }

    else
    {
      waitingRequests2 = [(HUAvailableRelatedTriggerItemModule *)self waitingRequests];
      [waitingRequests2 addObject:v7];
    }
  }

  else
  {
    [(HUAvailableRelatedTriggerItemModule *)self _performRequest:v7];
  }

  completionFuture = [(HUAvailableTriggerItemActivationRequest *)v7 completionFuture];

  return completionFuture;
}

uint64_t __59__HUAvailableRelatedTriggerItemModule_activateItem_active___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 item];
  v4 = [*(a1 + 32) item];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __59__HUAvailableRelatedTriggerItemModule_activateItem_active___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 completionFuture];
  [v4 cancel];

  v5 = [*(a1 + 32) waitingRequests];
  [v5 removeObject:v3];
}

- (id)activateAllSelectedItems
{
  v57[2] = *MEMORY[0x277D85DE8];
  availableTriggerItemProvider = [(HUAvailableRelatedTriggerItemModule *)self availableTriggerItemProvider];
  [availableTriggerItemProvider disableUpdatesWithReason:@"CommittingAllActive"];

  allItems = [(HFItemModule *)self allItems];
  allObjects = [allItems allObjects];
  v6 = [allObjects na_map:&__block_literal_global_63];

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_2;
  v55[3] = &unk_277DBAD68;
  v55[4] = self;
  v7 = [v6 na_map:v55];
  v8 = [MEMORY[0x277D2C900] chainFutures:v7];
  futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  naturalLightingItem = [(HUAvailableRelatedTriggerItemModule *)self naturalLightingItem];
  v11 = 0x277CBE000;
  if (naturalLightingItem)
  {
    v12 = naturalLightingItem;
    v48 = v7;
    naturalLightingItem2 = [(HUAvailableRelatedTriggerItemModule *)self naturalLightingItem];
    latestResults = [naturalLightingItem2 latestResults];
    v15 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
    bOOLValue = [v15 BOOLValue];

    if (bOOLValue)
    {
      v7 = v48;
      v11 = 0x277CBE000;
    }

    else
    {
      naturalLightingItem3 = [(HUAvailableRelatedTriggerItemModule *)self naturalLightingItem];
      latestResults2 = [naturalLightingItem3 latestResults];
      v47 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D14068]];

      v19 = [v47 integerValue] == 2;
      v20 = MEMORY[0x277CBEB98];
      home = [(HUAvailableRelatedTriggerItemModule *)self home];
      hf_allLightProfilesSupportingNaturalLighting = [home hf_allLightProfilesSupportingNaturalLighting];
      v23 = [v20 setWithArray:hf_allLightProfilesSupportingNaturalLighting];

      v24 = MEMORY[0x277CBEB98];
      relatedItems = [(HUAvailableRelatedTriggerItemModule *)self relatedItems];
      v26 = [v24 setWithArray:relatedItems];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_5;
      v53[3] = &unk_277DBADB8;
      v54 = v23;
      v46 = v23;
      v45 = [v26 na_flatMap:v53];

      v27 = MEMORY[0x277CBEB98];
      relatedItems2 = [(HUAvailableRelatedTriggerItemModule *)self relatedItems];
      v29 = [v27 setWithArray:relatedItems2];
      v30 = [v29 na_flatMap:&__block_literal_global_99];

      allObjects2 = [v45 allObjects];
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_9;
      v51[3] = &__block_descriptor_33_e24__16__0__HMLightProfile_8l;
      v52 = v19;
      v32 = [allObjects2 na_map:v51];

      allObjects3 = [v30 allObjects];
      v34 = [allObjects3 na_map:&__block_literal_global_107_1];

      v35 = MEMORY[0x277D2C900];
      v57[0] = v32;
      v57[1] = v34;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
      na_arrayByFlattening = [v36 na_arrayByFlattening];
      v38 = [v35 combineAllFutures:na_arrayByFlattening];

      v11 = 0x277CBE000uLL;
      futureWithNoResult = v38;
      v7 = v48;
    }
  }

  v39 = MEMORY[0x277D2C900];
  v56[0] = v8;
  v56[1] = futureWithNoResult;
  v40 = [*(v11 + 2656) arrayWithObjects:v56 count:2];
  v41 = [v39 combineAllFutures:v40];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_13;
  v49[3] = &unk_277DB7158;
  v49[4] = self;
  v50 = v6;
  v42 = v6;
  v43 = [v41 addCompletionBlock:v49];

  return v43;
}

void *__63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    if ([v5 isActive])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

id __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_3;
  v8[3] = &unk_277DB8200;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v5 = v3;
  v6 = [v4 lazyFutureWithBlock:v8];

  return v6;
}

void __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _activateItem:*(a1 + 40) active:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_4;
  v7[3] = &unk_277DB7530;
  v8 = v3;
  v5 = v3;
  v6 = [v4 addCompletionBlock:v7];
}

id __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_6;
  v6[3] = &unk_277DBAD90;
  v7 = *(a1 + 32);
  v4 = [v3 na_flatMap:v6];

  return v4;
}

id __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
  v4 = [v3 lightProfiles];
  v5 = [v4 na_setByIntersectingWithSet:*(a1 + 32)];

  return v5;
}

id __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 services];
  v3 = [v2 na_map:&__block_literal_global_102];

  return v3;
}

id __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hf_supportsNaturalLighting])
  {
    v3 = [v2 accessory];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_10;
  v8[3] = &unk_277DBAE20;
  v9 = v3;
  v10 = *(a1 + 32);
  v5 = v3;
  v6 = [v4 futureWithErrorOnlyHandlerAdapterBlock:v8];

  return v6;
}

id __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HUAvailableRelatedTriggerItemModule_activateAllSelectedItems__block_invoke_12;
  v7[3] = &unk_277DB7508;
  v8 = v2;
  v4 = v2;
  v5 = [v3 futureWithErrorOnlyHandlerAdapterBlock:v7];

  return v5;
}

- (void)_finishCommitWithItems:(id)items updatesDelayReason:(id)reason
{
  reasonCopy = reason;
  itemsCopy = items;
  availableTriggerItemProvider = [(HUAvailableRelatedTriggerItemModule *)self availableTriggerItemProvider];
  [availableTriggerItemProvider endDisableUpdatesWithReason:reasonCopy];

  [itemsCopy na_each:&__block_literal_global_111];
}

- (id)itemsToHideInSet:(id)set
{
  setCopy = set;
  availableTriggerItemProvider = [(HUAvailableRelatedTriggerItemModule *)self availableTriggerItemProvider];
  v6 = [availableTriggerItemProvider itemsToHideInSet:setCopy];

  return v6;
}

- (void)setRelatedItems:(id)items
{
  itemsCopy = items;
  if (self->_relatedItems != itemsCopy)
  {
    v9 = itemsCopy;
    objc_storeStrong(&self->_relatedItems, items);
    sensorCharacteristics = self->_sensorCharacteristics;
    self->_sensorCharacteristics = 0;

    actionBuilderFactories = self->_actionBuilderFactories;
    self->_actionBuilderFactories = 0;

    eventOptionsItems = self->_eventOptionsItems;
    self->_eventOptionsItems = 0;

    itemsCopy = v9;
  }
}

- (void)setAutomationItemIsLoading:(BOOL)loading
{
  if (self->_automationItemIsLoading != loading)
  {
    self->_automationItemIsLoading = loading;
    v6 = MEMORY[0x277D14788];
    v7 = MEMORY[0x277CBEB98];
    addAutomationItem = [(HUAvailableRelatedTriggerItemModule *)self addAutomationItem];
    v9 = [v7 na_setWithSafeObject:addAutomationItem];
    v12 = [v6 requestToUpdateItems:v9 senderSelector:a2];

    itemUpdater = [(HFItemModule *)self itemUpdater];
    v11 = [itemUpdater performItemUpdateRequest:v12];
  }
}

- (NSArray)sensorCharacteristics
{
  sensorCharacteristics = self->_sensorCharacteristics;
  if (!sensorCharacteristics)
  {
    hf_sensingCharacteristicTypes = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
    relatedItems = [(HUAvailableRelatedTriggerItemModule *)self relatedItems];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__HUAvailableRelatedTriggerItemModule_sensorCharacteristics__block_invoke;
    v10[3] = &unk_277DBAEB0;
    v11 = hf_sensingCharacteristicTypes;
    v6 = hf_sensingCharacteristicTypes;
    v7 = [relatedItems na_flatMap:v10];
    v8 = self->_sensorCharacteristics;
    self->_sensorCharacteristics = v7;

    sensorCharacteristics = self->_sensorCharacteristics;
  }

  return sensorCharacteristics;
}

id __60__HUAvailableRelatedTriggerItemModule_sensorCharacteristics__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 services];
  v4 = [v3 allObjects];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HUAvailableRelatedTriggerItemModule_sensorCharacteristics__block_invoke_2;
  v7[3] = &unk_277DBAE88;
  v8 = *(a1 + 32);
  v5 = [v4 na_flatMap:v7];

  return v5;
}

id __60__HUAvailableRelatedTriggerItemModule_sensorCharacteristics__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__HUAvailableRelatedTriggerItemModule_sensorCharacteristics__block_invoke_3;
  v6[3] = &unk_277DB9538;
  v7 = *(a1 + 32);
  v4 = [v3 na_filter:v6];

  return v4;
}

uint64_t __60__HUAvailableRelatedTriggerItemModule_sensorCharacteristics__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (NSArray)eventOptionsItems
{
  eventOptionsItems = self->_eventOptionsItems;
  if (!eventOptionsItems)
  {
    hf_sensingCharacteristicTypes = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
    relatedItems = [(HUAvailableRelatedTriggerItemModule *)self relatedItems];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__HUAvailableRelatedTriggerItemModule_eventOptionsItems__block_invoke;
    v10[3] = &unk_277DBAED8;
    v10[4] = self;
    v11 = hf_sensingCharacteristicTypes;
    v6 = hf_sensingCharacteristicTypes;
    v7 = [relatedItems na_filter:v10];
    v8 = self->_eventOptionsItems;
    self->_eventOptionsItems = v7;

    eventOptionsItems = self->_eventOptionsItems;
  }

  return eventOptionsItems;
}

uint64_t __56__HUAvailableRelatedTriggerItemModule_eventOptionsItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() _itemClassSupportsEvents:v3];
  v10 = 0;
  v5 = [HUCharacteristicEventOptionProvider hasOptionsForServiceVendingItem:v3 outCharacteristicType:&v10];

  v6 = v10;
  v7 = v4 & ([*(a1 + 40) containsObject:v6] ^ 1);
  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSArray)actionBuilderFactories
{
  actionBuilderFactories = self->_actionBuilderFactories;
  if (!actionBuilderFactories)
  {
    relatedItems = [(HUAvailableRelatedTriggerItemModule *)self relatedItems];
    v5 = [relatedItems na_map:&__block_literal_global_121];
    v6 = self->_actionBuilderFactories;
    self->_actionBuilderFactories = v5;

    actionBuilderFactories = self->_actionBuilderFactories;
  }

  return actionBuilderFactories;
}

void *__61__HUAvailableRelatedTriggerItemModule_actionBuilderFactories__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_28251B560])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if ([v4 containsActions])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)serviceTypesSupportingAutomation
{
  serviceTypes = [(HUAvailableRelatedTriggerItemModule *)self serviceTypes];
  hf_serviceTypesHiddenFromScenesOrAutomations = [MEMORY[0x277CD1D90] hf_serviceTypesHiddenFromScenesOrAutomations];
  v4 = [serviceTypes na_setByRemovingObjectsFromSet:hf_serviceTypesHiddenFromScenesOrAutomations];

  return v4;
}

- (id)serviceTypes
{
  v2 = MEMORY[0x277CBEB98];
  relatedItems = [(HUAvailableRelatedTriggerItemModule *)self relatedItems];
  v4 = [v2 setWithArray:relatedItems];
  v5 = [v4 na_flatMap:&__block_literal_global_171];

  return v5;
}

id __51__HUAvailableRelatedTriggerItemModule_serviceTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 services];
  v3 = [v2 na_map:&__block_literal_global_174];

  return v3;
}

- (id)itemProviders
{
  itemProviders = self->_itemProviders;
  if (!itemProviders)
  {
    _buildItemProviders = [(HUAvailableRelatedTriggerItemModule *)self _buildItemProviders];
    v5 = self->_itemProviders;
    self->_itemProviders = _buildItemProviders;

    itemProviders = self->_itemProviders;
  }

  return itemProviders;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v41[3] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"includedInAutomations"];
  v6 = _HULocalizedStringWithDefaultValue(@"HUAccessorySceneListTriggersHeaderTitle", @"HUAccessorySceneListTriggersHeaderTitle", 1);
  [v5 setHeaderTitle:v6];

  if ([(HUAvailableRelatedTriggerItemModule *)self _editingAvailableWithDisplayedItems:itemsCopy])
  {
    editButtonHeaderDelegate = [(HUAvailableRelatedTriggerItemModule *)self editButtonHeaderDelegate];
    if (editButtonHeaderDelegate)
    {
      v8 = editButtonHeaderDelegate;
      sectionHeaderEditButtonTitleKey = [(HUAvailableRelatedTriggerItemModule *)self sectionHeaderEditButtonTitleKey];

      if (sectionHeaderEditButtonTitleKey)
      {
        editButtonHeaderDelegate2 = [(HUAvailableRelatedTriggerItemModule *)self editButtonHeaderDelegate];
        [v5 setHeaderAccessoryButtonDelegate:editButtonHeaderDelegate2];

        sectionHeaderEditButtonTitleKey2 = [(HUAvailableRelatedTriggerItemModule *)self sectionHeaderEditButtonTitleKey];
        v12 = _HULocalizedStringWithDefaultValue(sectionHeaderEditButtonTitleKey2, sectionHeaderEditButtonTitleKey2, 1);
        [v5 setHeaderAccessoryButtonTitle:v12];
      }
    }
  }

  availableTriggerItemProvider = [(HUAvailableRelatedTriggerItemModule *)self availableTriggerItemProvider];
  items = [availableTriggerItemProvider items];
  v15 = [items na_setByIntersectingWithSet:itemsCopy];
  allObjects = [v15 allObjects];

  previouslySortedItems = [(HUAvailableRelatedTriggerItemModule *)self previouslySortedItems];
  v18 = [previouslySortedItems count];

  if (v18)
  {
    v19 = [(HUAvailableRelatedTriggerItemModule *)self progressivelySortItems:allObjects];
  }

  else
  {
    sortComparator = [objc_opt_class() sortComparator];
    v19 = [allObjects sortedArrayUsingComparator:sortComparator];

    allObjects = [v19 mutableCopy];
    [(HUAvailableRelatedTriggerItemModule *)self setPreviouslySortedItems:allObjects];
  }

  v21 = MEMORY[0x277CBEBF8];
  if (v19)
  {
    v21 = v19;
  }

  v22 = v21;

  array = [MEMORY[0x277CBEB18] array];
  naturalLightingItem = [(HUAvailableRelatedTriggerItemModule *)self naturalLightingItem];
  [array na_safeAddObject:naturalLightingItem];

  v25 = MEMORY[0x277CBEA60];
  addAutomationItem = [(HUAvailableRelatedTriggerItemModule *)self addAutomationItem];
  v27 = [v25 na_arrayWithSafeObject:addAutomationItem];

  v41[0] = array;
  v41[1] = v22;
  v41[2] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
  na_arrayByFlattening = [v28 na_arrayByFlattening];
  [v5 setItems:na_arrayByFlattening];

  v30 = MEMORY[0x277CBEB98];
  items2 = [v5 items];
  v32 = [v30 setWithArray:items2];
  v33 = [itemsCopy na_setByIntersectingWithSet:v32];

  addAutomationItem2 = [(HUAvailableRelatedTriggerItemModule *)self addAutomationItem];
  if ([v33 containsObject:addAutomationItem2])
  {
    v35 = [v33 count];

    if (v35 == 1)
    {
      [v5 setHeaderTitle:0];
    }
  }

  else
  {
  }

  v36 = MEMORY[0x277D14778];
  v40 = v5;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
  v38 = [v36 filterSections:v37 toDisplayedItems:itemsCopy];

  return v38;
}

- (id)progressivelySortItems:(id)items
{
  itemsCopy = items;
  previouslySortedItems = [(HUAvailableRelatedTriggerItemModule *)self previouslySortedItems];
  v6 = MEMORY[0x277CCAC30];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__HUAvailableRelatedTriggerItemModule_progressivelySortItems___block_invoke;
  v17[3] = &unk_277DBAF40;
  v18 = itemsCopy;
  v7 = itemsCopy;
  v8 = [v6 predicateWithBlock:v17];
  [previouslySortedItems filterUsingPredicate:v8];

  v9 = [MEMORY[0x277CBEB98] setWithArray:v7];
  v10 = MEMORY[0x277CBEB98];
  previouslySortedItems2 = [(HUAvailableRelatedTriggerItemModule *)self previouslySortedItems];
  v12 = [v10 setWithArray:previouslySortedItems2];
  v13 = [v9 na_setByRemovingObjectsFromSet:v12];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__HUAvailableRelatedTriggerItemModule_progressivelySortItems___block_invoke_2;
  v16[3] = &unk_277DBAF68;
  v16[4] = self;
  [v13 na_each:v16];
  previouslySortedItems3 = [(HUAvailableRelatedTriggerItemModule *)self previouslySortedItems];

  return previouslySortedItems3;
}

void __62__HUAvailableRelatedTriggerItemModule_progressivelySortItems___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) previouslySortedItems];
  v4 = 0;
  if ([v3 count])
  {
    while (1)
    {
      v5 = [objc_opt_class() sortComparator];
      v6 = [*(a1 + 32) previouslySortedItems];
      v7 = [v6 objectAtIndexedSubscript:v4];
      v8 = (v5)[2](v5, v7, v13);

      if (v8 == 1)
      {
        break;
      }

      ++v4;
      v3 = [*(a1 + 32) previouslySortedItems];
      if (v4 >= [v3 count])
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
  }

  v9 = [*(a1 + 32) previouslySortedItems];
  v10 = [v9 count];

  v11 = [*(a1 + 32) previouslySortedItems];
  v12 = v11;
  if (v4 >= v10)
  {
    [v11 addObject:v13];
  }

  else
  {
    [v11 insertObject:v13 atIndex:v4];
  }
}

- (BOOL)relatedItemsCanBeAutomated
{
  actionBuilderFactories = [(HUAvailableRelatedTriggerItemModule *)self actionBuilderFactories];
  v4 = [actionBuilderFactories count];
  v5 = v4 != 0;

  if (![(HUAvailableRelatedTriggerItemModule *)self containsMatterAccessory])
  {
    sensorCharacteristics = [(HUAvailableRelatedTriggerItemModule *)self sensorCharacteristics];
    v7 = [sensorCharacteristics count];

    eventOptionsItems = [(HUAvailableRelatedTriggerItemModule *)self eventOptionsItems];
    v9 = [eventOptionsItems count];

    relatedItems = [(HUAvailableRelatedTriggerItemModule *)self relatedItems];
    v11 = [relatedItems na_map:&__block_literal_global_187];

    serviceTypesSupportingAutomation = [(HUAvailableRelatedTriggerItemModule *)self serviceTypesSupportingAutomation];
    v13 = [serviceTypesSupportingAutomation count];

    v14 = [v11 count];
    v5 = (v4 || v7 || v9) && (v13 | v14) != 0;
  }

  return v5;
}

void *__65__HUAvailableRelatedTriggerItemModule_relatedItemsCanBeAutomated__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
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

- (BOOL)_editingAvailableWithDisplayedItems:(id)items
{
  itemsCopy = items;
  home = [(HUAvailableRelatedTriggerItemModule *)self home];
  hf_userIsAllowedToEditTrigger = [home hf_userIsAllowedToEditTrigger];

  if (hf_userIsAllowedToEditTrigger && (-[HUAvailableRelatedTriggerItemModule context](self, "context"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 itemsAreEditable], v7, v8))
  {
    availableTriggerItemProvider = [(HUAvailableRelatedTriggerItemModule *)self availableTriggerItemProvider];
    items = [availableTriggerItemProvider items];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __75__HUAvailableRelatedTriggerItemModule__editingAvailableWithDisplayedItems___block_invoke;
    v13[3] = &unk_277DB85D8;
    v14 = itemsCopy;
    v11 = [items na_any:v13];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL __75__HUAvailableRelatedTriggerItemModule__editingAvailableWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && [*(a1 + 32) containsObject:v4])
  {
    v7 = [v6 recommendationItem];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldHideAutomationsModule
{
  relatedItems = [(HUAvailableRelatedTriggerItemModule *)self relatedItems];
  v3 = [relatedItems na_map:&__block_literal_global_191];

  if ([v3 count])
  {
    v4 = [v3 na_any:&__block_literal_global_194] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

void *__66__HUAvailableRelatedTriggerItemModule_shouldHideAutomationsModule__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
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

- (void)_performRequest:(id)request
{
  requestCopy = request;
  availableTriggerItemProvider = [(HUAvailableRelatedTriggerItemModule *)self availableTriggerItemProvider];
  [availableTriggerItemProvider disableUpdatesWithReason:@"PerformingRequests"];

  [(HUAvailableRelatedTriggerItemModule *)self setActiveRequest:requestCopy];
  item = [requestCopy item];
  v8 = -[HUAvailableRelatedTriggerItemModule _activateItem:active:](self, "_activateItem:active:", item, [requestCopy active]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HUAvailableRelatedTriggerItemModule__performRequest___block_invoke;
  v11[3] = &unk_277DBAFB0;
  v12 = requestCopy;
  selfCopy = self;
  v14 = a2;
  v9 = requestCopy;
  v10 = [v8 addCompletionBlock:v11];
}

void __55__HUAvailableRelatedTriggerItemModule__performRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 completionFuture];
  [v8 finishWithResult:v7 error:v6];

  v9 = [*(a1 + 40) waitingRequests];
  v17 = [v9 popFirstObject];

  v10 = *(a1 + 40);
  if (v17)
  {
    [v10 _performRequest:v17];
  }

  else
  {
    [v10 setActiveRequest:0];
    v11 = [*(a1 + 40) availableTriggerItemProvider];
    [v11 endDisableUpdatesWithReason:@"PerformingRequests"];

    v12 = MEMORY[0x277D14788];
    v13 = [*(a1 + 40) itemProviders];
    v14 = [v12 requestToReloadItemProviders:v13 senderSelector:*(a1 + 48)];

    v15 = [*(a1 + 40) itemUpdater];
    v16 = [v15 performItemUpdateRequest:v14];
  }
}

- (id)_activateItem:(id)item active:(BOOL)active
{
  activeCopy = active;
  v42 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v8 = objc_opt_new();
  home = [(HUAvailableRelatedTriggerItemModule *)self home];
  relatedItems = [(HUAvailableRelatedTriggerItemModule *)self relatedItems];
  v11 = [(__CFString *)itemCopy buildersForActivating:activeCopy inHome:home withContext:v8 serviceLikeItems:relatedItems];

  v12 = [v11 count];
  v13 = HFLogForCategory();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = @"deactivating";
      if (activeCopy)
      {
        v15 = @"activating";
      }

      *buf = 138412546;
      v39 = v15;
      v40 = 2112;
      v41 = itemCopy;
      _os_log_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_DEFAULT, "Start %@ item: %@", buf, 0x16u);
    }

    [(__CFString *)itemCopy setActive:activeCopy];
    v16 = MEMORY[0x277CCACA8];
    identifier = [(__CFString *)itemCopy identifier];
    v18 = [v16 stringWithFormat:@"%@:%@", @"Committing", identifier];

    availableTriggerItemProvider = [(HUAvailableRelatedTriggerItemModule *)self availableTriggerItemProvider];
    [availableTriggerItemProvider disableUpdatesWithReason:v18];

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __60__HUAvailableRelatedTriggerItemModule__activateItem_active___block_invoke;
    v35[3] = &unk_277DBB048;
    v37 = activeCopy;
    v20 = itemCopy;
    v36 = v20;
    v21 = [v11 na_map:v35];
    v22 = [MEMORY[0x277D2C900] combineAllFutures:v21];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __60__HUAvailableRelatedTriggerItemModule__activateItem_active___block_invoke_9;
    v30[3] = &unk_277DBB070;
    v34 = activeCopy;
    v31 = v20;
    selfCopy = self;
    v33 = v18;
    v23 = v18;
    futureWithNoResult = [v22 addCompletionBlock:v30];
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = itemCopy;
      _os_log_error_impl(&dword_20CEB6000, v14, OS_LOG_TYPE_ERROR, "Attempted to activate item but there were no builders: %@", buf, 0xCu);
    }

    [(__CFString *)itemCopy resetActiveToDefault];
    v25 = MEMORY[0x277D14788];
    v26 = [MEMORY[0x277CBEB98] setWithObject:itemCopy];
    v23 = [v25 requestToUpdateItems:v26 senderSelector:a2];

    itemUpdater = [(HFItemModule *)self itemUpdater];
    v28 = [itemUpdater performItemUpdateRequest:v23];

    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  return futureWithNoResult;
}

id __60__HUAvailableRelatedTriggerItemModule__activateItem_active___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
  if ((*(a1 + 40) & 1) == 0)
  {
    v5 = MEMORY[0x277D2C900];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __60__HUAvailableRelatedTriggerItemModule__activateItem_active___block_invoke_2;
    v24[3] = &unk_277DB7580;
    v6 = v3;
    v25 = v6;
    v7 = [v5 futureWithBlock:v24];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __60__HUAvailableRelatedTriggerItemModule__activateItem_active___block_invoke_3;
    v22[3] = &unk_277DBAFF8;
    v8 = v6;
    v23 = v8;
    v9 = [v7 flatMap:v22];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __60__HUAvailableRelatedTriggerItemModule__activateItem_active___block_invoke_5;
    v20[3] = &unk_277DB9858;
    v21 = v8;
    v10 = [v9 recover:v20];

    v4 = v10;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__HUAvailableRelatedTriggerItemModule__activateItem_active___block_invoke_7;
  v18[3] = &unk_277DB7AB8;
  v19 = v3;
  v11 = v3;
  v12 = [v4 flatMap:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__HUAvailableRelatedTriggerItemModule__activateItem_active___block_invoke_8;
  v15[3] = &unk_277DBB020;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v13 = [v12 recover:v15];

  return v13;
}

void __60__HUAvailableRelatedTriggerItemModule__activateItem_active___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 validationError];
  v5 = v4;
  if (v4)
  {
    [v3 finishWithError:v4];
  }

  else
  {
    [v3 finishWithNoResult];
  }
}

id __60__HUAvailableRelatedTriggerItemModule__activateItem_active___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) triggerActionSets];
  v3 = [v2 hasActions];

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

  if (v6)
  {
    v7 = [v6 characteristicInterface];
    v8 = [v7 characteristics];
    v9 = [v8 count] == 0;

    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (!v9)
  {
    v10 = [MEMORY[0x277D2C900] futureWithResult:MEMORY[0x277CBEC38]];
    goto LABEL_11;
  }

LABEL_10:
  v11 = [*(a1 + 32) deleteTrigger];
  v10 = [v11 flatMap:&__block_literal_global_209];

LABEL_11:

  return v10;
}

id __60__HUAvailableRelatedTriggerItemModule__activateItem_active___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) deleteTrigger];
  v2 = [v1 flatMap:&__block_literal_global_211];

  return v2;
}

id __60__HUAvailableRelatedTriggerItemModule__activateItem_active___block_invoke_7(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    [*(a1 + 32) commitItem];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v3 = ;

  return v3;
}

id __60__HUAvailableRelatedTriggerItemModule__activateItem_active___block_invoke_8(uint64_t a1, void *a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D2C900];
  v18[0] = *MEMORY[0x277D13880];
  v16 = *MEMORY[0x277D13860];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v17 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v9 = v8;
  v18[1] = *MEMORY[0x277D13870];
  if (*(a1 + 40))
  {
    v10 = MEMORY[0x277D13CD0];
  }

  else
  {
    v10 = MEMORY[0x277D13CC8];
  }

  v11 = *v10;
  v19[0] = v8;
  v19[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v13 = [v5 hf_errorWithAddedUserInfo:v12];

  v14 = [v3 futureWithError:v13];

  return v14;
}

void __60__HUAvailableRelatedTriggerItemModule__activateItem_active___block_invoke_9(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      *buf = 138412546;
      v15 = v4;
      v16 = 2112;
      v17 = v7;
      v8 = "Failed to commit changes for item with error: %@, item: %@";
LABEL_9:
      _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
    }
  }

  else if (v6)
  {
    v9 = *(a1 + 32);
    if (*(a1 + 56))
    {
      v10 = @"Activated";
    }

    else
    {
      v10 = @"Deactivated";
    }

    *buf = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v9;
    v8 = "%@ item: %@";
    goto LABEL_9;
  }

  v11 = *(a1 + 40);
  v13 = *(a1 + 32);
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  [v11 _finishCommitWithItems:v12 updatesDelayReason:*(a1 + 48)];

  [*(a1 + 40) didActivateItem:*(a1 + 32) active:*(a1 + 56) error:v4];
}

- (void)didActivateItem:(id)item active:(BOOL)active error:(id)error
{
  activeCopy = active;
  errorCopy = error;
  recommendationItem = [item recommendationItem];
  recommendation = [recommendationItem recommendation];

  if (recommendation)
  {
    serviceTypes = [(HUAvailableRelatedTriggerItemModule *)self serviceTypes];
    _accessoryCategoryUserFrieindlyDescription = [(HUAvailableRelatedTriggerItemModule *)self _accessoryCategoryUserFrieindlyDescription];
    analyticsData = [recommendation analyticsData];
    v13 = [analyticsData mutableCopy];

    v14 = [MEMORY[0x277CCABB0] numberWithBool:errorCopy == 0];
    [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x277D13598]];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:activeCopy];
    [v13 setObject:v15 forKeyedSubscript:*MEMORY[0x277D13508]];

    if (errorCopy)
    {
      [v13 setObject:errorCopy forKeyedSubscript:*MEMORY[0x277D13510]];
    }

    if (_accessoryCategoryUserFrieindlyDescription)
    {
      [v13 setObject:_accessoryCategoryUserFrieindlyDescription forKeyedSubscript:*MEMORY[0x277D134D0]];
    }

    if ([serviceTypes count] == 1)
    {
      anyObject = [serviceTypes anyObject];
      [v13 setObject:anyObject forKeyedSubscript:*MEMORY[0x277D13578]];
    }

    context = [(HUAvailableRelatedTriggerItemModule *)self context];
    analyticsPresentationContext = [context analyticsPresentationContext];

    if (analyticsPresentationContext)
    {
      context2 = [(HUAvailableRelatedTriggerItemModule *)self context];
      analyticsPresentationContext2 = [context2 analyticsPresentationContext];
      [v13 setObject:analyticsPresentationContext2 forKeyedSubscript:*MEMORY[0x277D13548]];
    }

    [MEMORY[0x277D143D8] sendEvent:14 withData:v13];
  }
}

- (id)_accessoryCategoryUserFrieindlyDescription
{
  v2 = MEMORY[0x277CBEB98];
  relatedItems = [(HUAvailableRelatedTriggerItemModule *)self relatedItems];
  v4 = [v2 setWithArray:relatedItems];
  v5 = [v4 na_map:&__block_literal_global_226];

  if ([v5 count] == 1)
  {
    anyObject = [v5 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (id)_buildItemProviders
{
  if ([(HUAvailableRelatedTriggerItemModule *)self shouldHideAutomationsModule])
  {
    v3 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    array = [MEMORY[0x277CBEB18] array];
    relatedItems = [(HUAvailableRelatedTriggerItemModule *)self relatedItems];
    v7 = [HUAvailableRelatedTriggerItemProvider alloc];
    home = [(HUAvailableRelatedTriggerItemModule *)self home];
    context = [(HUAvailableRelatedTriggerItemModule *)self context];
    v10 = [(HUAvailableRelatedTriggerItemProvider *)v7 initWithHome:home relatedItems:relatedItems context:context];
    [(HUAvailableRelatedTriggerItemModule *)self setAvailableTriggerItemProvider:v10];

    objc_initWeak(location, self);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke;
    v35[3] = &unk_277DBB0C0;
    objc_copyWeak(&v36, location);
    availableTriggerItemProvider = [(HUAvailableRelatedTriggerItemModule *)self availableTriggerItemProvider];
    [availableTriggerItemProvider setTriggerFilter:v35];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke_3;
    v33[3] = &unk_277DBB0E8;
    objc_copyWeak(&v34, location);
    availableTriggerItemProvider2 = [(HUAvailableRelatedTriggerItemModule *)self availableTriggerItemProvider];
    [availableTriggerItemProvider2 setRecommendationsFilter:v33];

    availableTriggerItemProvider3 = [(HUAvailableRelatedTriggerItemModule *)self availableTriggerItemProvider];
    [v4 addObject:availableTriggerItemProvider3];

    v14 = objc_alloc(MEMORY[0x277D14B38]);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke_4;
    v31[3] = &unk_277DB7448;
    objc_copyWeak(&v32, location);
    v15 = [v14 initWithResultsBlock:v31];
    [(HUAvailableRelatedTriggerItemModule *)self setAddAutomationItem:v15];

    addAutomationItem = [(HUAvailableRelatedTriggerItemModule *)self addAutomationItem];
    [array addObject:addAutomationItem];

    context2 = [(HUAvailableRelatedTriggerItemModule *)self context];
    LODWORD(home) = [context2 showNaturalLightingItem];

    if (home)
    {
      v18 = objc_alloc(MEMORY[0x277D14B38]);
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke_5;
      v29 = &unk_277DB7448;
      objc_copyWeak(&v30, location);
      v19 = [v18 initWithResultsBlock:&v26];
      [(HUAvailableRelatedTriggerItemModule *)self setNaturalLightingItem:v19, v26, v27, v28, v29];

      naturalLightingItem = [(HUAvailableRelatedTriggerItemModule *)self naturalLightingItem];
      [array addObject:naturalLightingItem];

      objc_destroyWeak(&v30);
    }

    v21 = objc_alloc(MEMORY[0x277D14B40]);
    v22 = [MEMORY[0x277CBEB98] setWithArray:array];
    v23 = [v21 initWithItems:v22];
    [(HUAvailableRelatedTriggerItemModule *)self setStaticItemProvider:v23];

    staticItemProvider = [(HUAvailableRelatedTriggerItemModule *)self staticItemProvider];
    [v4 addObject:staticItemProvider];

    v3 = [v4 copy];
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&v36);
    objc_destroyWeak(location);
  }

  return v3;
}

uint64_t __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained context];
  v6 = [v5 hidesCustomTriggers];

  if ((v6 & 1) != 0 || ![v3 hf_shouldDisplayTrigger])
  {
    v8 = 0;
  }

  else
  {
    v7 = [WeakRetained relatedItems];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke_2;
    v10[3] = &unk_277DBB098;
    v11 = v3;
    v8 = [v7 na_any:v10];
  }

  return v8;
}

uint64_t __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 homeKitObject];
  v4 = [v2 hf_affectsHomeKitObject:v3];

  return v4;
}

uint64_t __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [objc_opt_class() shouldShowRecommendation:v3];

  return v5;
}

id __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "addAutomationItemShouldBeHidden")}];
  [v2 setObject:v3 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v4 = _HULocalizedStringWithDefaultValue(@"HUSmartAutomationAddAutomation", @"HUSmartAutomationAddAutomation", 1);
  [v2 setObject:v4 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v5 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"plus"];
  [v2 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13E88]];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "automationItemIsLoading")}];
  [v2 setObject:v6 forKeyedSubscript:*MEMORY[0x277D140F0]];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "automationItemIsLoading")}];
  [v2 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v8 = [MEMORY[0x277D2C900] futureWithResult:v2];

  return v8;
}

id __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = MEMORY[0x277CBEB98];
  v4 = [WeakRetained relatedItems];
  v5 = [v3 setWithArray:v4];
  v6 = [v5 na_flatMap:&__block_literal_global_243];

  v7 = [v6 allObjects];
  v8 = [v7 na_map:&__block_literal_global_248];

  v9 = MEMORY[0x277D2C900];
  v10 = [MEMORY[0x277D2C938] immediateScheduler];
  v11 = [v9 combineAllFutures:v8 scheduler:v10];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke_10;
  v15[3] = &unk_277DBB198;
  v16 = v2;
  v17 = WeakRetained;
  v12 = v2;
  v13 = [v11 flatMap:v15];

  return v13;
}

id __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 accessory];
    [v6 lightProfiles];
  }

  else
  {
    v6 = [v3 services];
    [v6 na_flatMap:&__block_literal_global_246];
  }
  v7 = ;

  return v7;
}

id __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke_9;
  v7[3] = &unk_277DBB150;
  v8 = v2;
  v4 = v2;
  v5 = [v3 futureWithCompletionHandlerAdapterBlock:v7];

  return v5;
}

uint64_t __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = [a2 na_any:&__block_literal_global_253_1];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:v3 ^ 1u];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v5 = _HULocalizedStringWithDefaultValue(@"HUNaturalLightingAccessorySetupEnableItem_Title", @"HUNaturalLightingAccessorySetupEnableItem_Title", 1);
  [*(a1 + 32) setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  v6 = MEMORY[0x277CCABB0];
  [*(a1 + 40) enableNaturalLighting];
  v7 = [v6 numberWithInteger:HFPrimaryStateFromBOOL()];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:*MEMORY[0x277D14068]];

  v8 = [objc_alloc(MEMORY[0x277D14728]) initWithImageIdentifier:@"HFImageIconIdentifierNaturalLightingRegular"];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:*MEMORY[0x277D13E88]];

  v9 = MEMORY[0x277CBEB98];
  v10 = [*(a1 + 40) relatedItems];
  v11 = [v9 setWithArray:v10];
  v12 = [v11 na_flatMap:&__block_literal_global_261];
  [*(a1 + 32) setObject:v12 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v13 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [*(a1 + 32) setObject:v13 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  v14 = MEMORY[0x277D2C900];
  v15 = *(a1 + 32);

  return [v14 futureWithResult:v15];
}

id __58__HUAvailableRelatedTriggerItemModule__buildItemProviders__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = [a2 services];
  v3 = [v2 na_map:&__block_literal_global_263];

  return v3;
}

- (BOOL)addAutomationItemShouldBeHidden
{
  home = [(HUAvailableRelatedTriggerItemModule *)self home];
  if ([home hf_userCanCreateTrigger])
  {
    context = [(HUAvailableRelatedTriggerItemModule *)self context];
    if ([context hidesAddAutomationItem])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = ![(HUAvailableRelatedTriggerItemModule *)self relatedItemsCanBeAutomated];
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)_updateRelatedItems:(id)items
{
  v5 = MEMORY[0x277CBEB58];
  itemsCopy = items;
  if (items)
  {
    v7 = [v5 setWithArray:itemsCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v10 = v7;
  v8 = [itemsCopy na_flatMap:&__block_literal_global_268];

  [v10 addObjectsFromArray:v8];
  allObjects = [v10 allObjects];
  [(HUAvailableRelatedTriggerItemModule *)self setRelatedItems:allObjects];
}

id __59__HUAvailableRelatedTriggerItemModule__updateRelatedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 homeKitObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 accessories];
    v6 = [v5 allObjects];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __59__HUAvailableRelatedTriggerItemModule__updateRelatedItems___block_invoke_2;
    v9[3] = &unk_277DBB208;
    v10 = v2;
    v7 = [v6 na_flatMap:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __59__HUAvailableRelatedTriggerItemModule__updateRelatedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hf_showAsIndividualServices])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 services];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__HUAvailableRelatedTriggerItemModule__updateRelatedItems___block_invoke_3;
    v7[3] = &unk_277DBB1E0;
    v8 = *(a1 + 32);
    v4 = [v5 na_map:v7];
  }

  return v4;
}

id __59__HUAvailableRelatedTriggerItemModule__updateRelatedItems___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) services];
  v5 = [v4 containsObject:v3];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277D14AC8];
    v8 = [*(a1 + 32) valueSource];
    v6 = [v7 serviceItemForService:v3 valueSource:v8];
  }

  return v6;
}

+ (BOOL)shouldShowRecommendation:(id)recommendation
{
  v53 = *MEMORY[0x277D85DE8];
  recommendationCopy = recommendation;
  hu_triggerBuilderIfAny = [recommendationCopy hu_triggerBuilderIfAny];
  requiresFMFDeviceToRun = [hu_triggerBuilderIfAny requiresFMFDeviceToRun];

  home = [recommendationCopy home];
  home2 = [recommendationCopy home];
  currentUser = [home2 currentUser];
  v9 = [home homeAccessControlForUser:currentUser];
  presenceComputationStatus = [v9 presenceComputationStatus];

  hu_triggerBuilderIfAny2 = [recommendationCopy hu_triggerBuilderIfAny];
  objc_opt_class();
  v12 = hu_triggerBuilderIfAny2;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  objc_opt_class();
  v41 = v14;
  locationInterface = [v14 locationInterface];
  locationEventBuilder = [locationInterface locationEventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v17 = locationEventBuilder;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (v18)
  {
    region = [v18 region];
    v20 = region != 0;
  }

  else
  {
    v20 = 1;
  }

  hu_asTriggerRecommendation = [recommendationCopy hu_asTriggerRecommendation];
  triggerBuilders = [hu_asTriggerRecommendation triggerBuilders];
  v23 = [triggerBuilders na_any:&__block_literal_global_276];

  if ([MEMORY[0x277D14CE8] supportsBeingCurrentLocationDevice])
  {
    v39 = presenceComputationStatus;
    v40 = requiresFMFDeviceToRun;
    mEMORY[0x277D147A8] = [MEMORY[0x277D147A8] sharedDispatcher];
    authorizationStatus = [mEMORY[0x277D147A8] authorizationStatus];

    v26 = HFLocationServicesAvailableForAuthorizationStatus();
    v27 = MEMORY[0x277CD1D20];
    home3 = [recommendationCopy home];
    LOBYTE(v27) = [v27 hf_presenceDisableReasonsForHome:home3];

    v29 = v27 & 2;
    if ((v27 & 2) != 0)
    {
      v30 = 0;
    }

    else
    {
      v30 = v26;
    }

    v31 = HFLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *v43 = v30;
      *&v43[4] = 1024;
      *&v43[6] = authorizationStatus;
      *v44 = 1024;
      *&v44[2] = v26;
      *v45 = 1024;
      *&v45[2] = v29 >> 1;
      _os_log_impl(&dword_20CEB6000, v31, OS_LOG_TYPE_DEFAULT, " => locationAvailable=%{BOOL}d because locationServicesAuthStatus=%d, locationServicesEnabled=%{BOOL}d, homeKitLocationServicesDisabled=%{BOOL}d", buf, 0x1Au);
    }

    requiresFMFDeviceToRun = v40;
    presenceComputationStatus = v39;
  }

  else
  {
    v31 = HFLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20CEB6000, v31, OS_LOG_TYPE_DEFAULT, "!supportsBeingCurrentLocationDevice", buf, 2u);
    }

    v30 = 1;
  }

  v32 = requiresFMFDeviceToRun ^ 1;
  if (presenceComputationStatus != 3)
  {
    v32 = 1;
  }

  v33 = v32 & (v23 ^ 1 | v30) & v20;
  v34 = HFLogForCategory();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = [recommendationCopy uniqueIdentifier];
    v36 = requiresFMFDeviceToRun;
    v37 = uniqueIdentifier;
    *buf = 138413826;
    *v43 = uniqueIdentifier;
    *&v43[8] = 1024;
    *v44 = v33;
    *&v44[4] = 1024;
    *v45 = v36;
    *&v45[4] = 1024;
    v46 = presenceComputationStatus != 3;
    v47 = 1024;
    v48 = v23;
    v49 = 1024;
    v50 = v30;
    v51 = 1024;
    v52 = v20;
    _os_log_impl(&dword_20CEB6000, v34, OS_LOG_TYPE_DEFAULT, "Should show recommendation (%@) = %{BOOL}d\nrequiresFMF=%{BOOL}d, hasFMFDevice=%{BOOL}d, recommendationContainsLocationEvent=%{BOOL}d, locationAvailable=%{BOOL}d, allEventsAreValid=%{BOOL}d", buf, 0x30u);
  }

  return v33;
}

uint64_t __64__HUAvailableRelatedTriggerItemModule_shouldShowRecommendation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 eventBuilders];
  v7 = [v6 na_any:&__block_literal_global_279];

  return v7;
}

uint64_t __53__HUAvailableRelatedTriggerItemModule_sortComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = v4;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  v9 = v5;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v8)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_16;
  }

  v13 = [v8 recommendationItem];
  if (!v13 || (v14 = v13, [v11 recommendationItem], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, !v15))
  {
    v25 = [v8 recommendationItem];
    v26 = [v11 recommendationItem];
    v27 = (v25 != 0) ^ (v26 == 0);

    if ((v27 & 1) == 0)
    {
      v28 = [v8 recommendationItem];
      if (v28)
      {
        v24 = -1;
      }

      else
      {
        v24 = 1;
      }

      goto LABEL_17;
    }

LABEL_16:
    v28 = [MEMORY[0x277D14778] defaultItemComparator];
    v24 = (v28)[2](v28, v6, v9);
LABEL_17:

    goto LABEL_18;
  }

  v16 = MEMORY[0x277CCABB0];
  v17 = [v8 recommendationItem];
  v18 = [v17 recommendation];
  [v18 sortingPriority];
  v19 = [v16 numberWithDouble:?];

  v20 = MEMORY[0x277CCABB0];
  v21 = [v11 recommendationItem];
  v22 = [v21 recommendation];
  [v22 sortingPriority];
  v23 = [v20 numberWithDouble:?];

  v24 = [v19 compare:v23];
  if (!v24)
  {
    goto LABEL_16;
  }

LABEL_18:

  return v24;
}

+ (BOOL)_itemClassSupportsEvents:(id)events
{
  eventsCopy = events;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (HFItemSectionAccessoryButtonHeaderDelegate)editButtonHeaderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_editButtonHeaderDelegate);

  return WeakRetained;
}

@end