@interface HUCharacteristicTriggerEventItemManager
+ (id)_titleForItemSection:(id)section;
+ (id)serviceVendorItemForEventBuilderItem:(id)item inHome:(id)home;
- (HUCharacteristicTriggerEventItemManager)initWithTriggerBuilder:(id)builder eventBuilderItem:(id)item delegate:(id)delegate;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)optionItems;
- (void)setActiveOptionItem:(id)item;
@end

@implementation HUCharacteristicTriggerEventItemManager

+ (id)serviceVendorItemForEventBuilderItem:(id)item inHome:(id)home
{
  itemCopy = item;
  homeCopy = home;
  v9 = homeCopy;
  if (itemCopy)
  {
    if (homeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUCharacteristicTriggerEventItemManager.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"eventBuilderItem"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HUCharacteristicTriggerEventItemManager.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"home"}];

LABEL_3:
  v10 = objc_alloc_init(MEMORY[0x277D148D0]);
  characteristics = [itemCopy characteristics];
  v12 = [characteristics na_map:&__block_literal_global_192];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __87__HUCharacteristicTriggerEventItemManager_serviceVendorItemForEventBuilderItem_inHome___block_invoke_2;
  v30[3] = &unk_277DBB1E0;
  v13 = v9;
  v31 = v13;
  v14 = [v12 na_flatMap:v30];
  characteristics2 = [itemCopy characteristics];
  v16 = [characteristics2 na_map:&__block_literal_global_76_0];

  if ([v14 count])
  {
    if ([v14 count] >= 2)
    {
      v17 = HFLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_20CEB6000, v17, OS_LOG_TYPE_DEFAULT, "Found multiple matching service groups that will cause a characteristic trigger to fire. This is supported in the HomeKit API, but not in Home.app. Arbitarily picking one to show", buf, 2u);
      }
    }

    v18 = objc_alloc(MEMORY[0x277D14AB0]);
    anyObject = [v14 anyObject];
    v20 = [v18 initWithValueSource:v10 serviceGroup:anyObject];
LABEL_21:
    v25 = v20;

    goto LABEL_22;
  }

  if ([v12 count])
  {
    if ([v12 count] >= 2)
    {
      v21 = HFLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_20CEB6000, v21, OS_LOG_TYPE_DEFAULT, "Found multiple matching services that will cause a characteristic trigger to fire. This is supported in the HomeKit API, but not in Home.app. Arbitarily picking one to show", buf, 2u);
      }
    }

    v22 = MEMORY[0x277D14AC8];
    anyObject = [v12 anyObject];
    v20 = [v22 serviceItemForService:anyObject valueSource:v10];
    goto LABEL_21;
  }

  if ([v16 count])
  {
    if ([v16 count] >= 2)
    {
      v23 = HFLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_DEFAULT, "Found multiple matching accessories that will cause a characteristic trigger to fire. This is supported in the HomeKit API, but not in Home.app. Arbitarily picking one to show", buf, 2u);
      }
    }

    v24 = objc_alloc(MEMORY[0x277D142E8]);
    anyObject = [v16 anyObject];
    v20 = [v24 initWithAccessory:anyObject valueSource:v10];
    goto LABEL_21;
  }

  v25 = objc_alloc_init(HUCharacteristicTriggerEventUnknownItem);
LABEL_22:

  return v25;
}

id __87__HUCharacteristicTriggerEventItemManager_serviceVendorItemForEventBuilderItem_inHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 service];
  if ([v3 hf_isVisible])
  {
    v4 = [v2 service];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __87__HUCharacteristicTriggerEventItemManager_serviceVendorItemForEventBuilderItem_inHome___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [*(a1 + 32) hf_serviceGroupsForService:a2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

id __87__HUCharacteristicTriggerEventItemManager_serviceVendorItemForEventBuilderItem_inHome___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  v3 = [v2 accessory];

  return v3;
}

- (HUCharacteristicTriggerEventItemManager)initWithTriggerBuilder:(id)builder eventBuilderItem:(id)item delegate:(id)delegate
{
  builderCopy = builder;
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = HUCharacteristicTriggerEventItemManager;
  v11 = [(HFItemManager *)&v17 initWithDelegate:delegate];
  if (v11)
  {
    v12 = objc_opt_class();
    home = [builderCopy home];
    v14 = [v12 serviceVendorItemForEventBuilderItem:itemCopy inHome:home];
    serviceVendingItem = v11->_serviceVendingItem;
    v11->_serviceVendingItem = v14;

    objc_storeStrong(&v11->_eventBuilderItem, item);
    objc_storeStrong(&v11->_triggerBuilder, builder);
  }

  return v11;
}

- (void)setActiveOptionItem:(id)item
{
  itemCopy = item;
  activeOptionItem = self->_activeOptionItem;
  v12 = itemCopy;
  v8 = activeOptionItem;
  if (v8 == v12)
  {

    v10 = v12;
LABEL_8:

    goto LABEL_9;
  }

  if (!v12)
  {

    goto LABEL_7;
  }

  v9 = [(HFItem *)v12 isEqual:v8];

  if ((v9 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_activeOptionItem, item);
    v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v12];
    v11 = [(HFItemManager *)self updateResultsForItems:v10 senderSelector:a2];
    goto LABEL_8;
  }

LABEL_9:
}

- (id)optionItems
{
  optionProvider = [(HUCharacteristicTriggerEventItemManager *)self optionProvider];
  items = [optionProvider items];
  allDisplayedItems = [(HFItemManager *)self allDisplayedItems];
  v6 = [items na_setByIntersectingWithSet:allDisplayedItems];

  return v6;
}

- (id)_buildItemModulesForHome:(id)home
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = [HUTriggerConditionEditorItemModule alloc];
  triggerBuilder = [(HUCharacteristicTriggerEventItemManager *)self triggerBuilder];
  home = [triggerBuilder home];
  triggerBuilder2 = [(HUCharacteristicTriggerEventItemManager *)self triggerBuilder];
  conditionCollection = [triggerBuilder2 conditionCollection];
  v9 = [MEMORY[0x277CBEB98] set];
  v10 = [(HUTriggerConditionEditorItemModule *)v4 initWithItemUpdater:self home:home conditionCollection:conditionCollection disallowedConditionTypes:v9];
  conditionModule = self->_conditionModule;
  self->_conditionModule = v10;

  conditionModule = [(HUCharacteristicTriggerEventItemManager *)self conditionModule];
  v15[0] = conditionModule;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];

  return v13;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v39[3] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v6 = [HUInstructionsItem alloc];
  v7 = _HULocalizedStringWithDefaultValue(@"HUCharacteristicTriggerEventOptionInstructionsHeader", @"HUCharacteristicTriggerEventOptionInstructionsHeader", 1);
  v8 = [(HUInstructionsItem *)v6 initWithStyle:0 title:v7 description:0];
  [(HUCharacteristicTriggerEventItemManager *)self setInstructionsItem:v8];

  serviceVendingItem = [(HUCharacteristicTriggerEventItemManager *)self serviceVendingItem];
  objc_opt_class();
  LOBYTE(v7) = objc_opt_isKindOfClass();

  if (v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    triggerBuilder = [(HUCharacteristicTriggerEventItemManager *)self triggerBuilder];
    trigger = [triggerBuilder trigger];
    uniqueIdentifier = [trigger uniqueIdentifier];
    eventBuilderItem = [(HUCharacteristicTriggerEventItemManager *)self eventBuilderItem];
    eventBuilderItem2 = [(HUCharacteristicTriggerEventItemManager *)self eventBuilderItem];
    eventBuilders = [eventBuilderItem2 eventBuilders];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUCharacteristicTriggerEventItemManager.m" lineNumber:139 description:{@"Tried to display a HUCharacteristicTriggerEventUnknownItem which can't produce results. Trigger %@, Event builder item: %@, event builders: %@", uniqueIdentifier, eventBuilderItem, eventBuilders}];
  }

  v10 = objc_alloc(MEMORY[0x277D14C30]);
  serviceVendingItem2 = [(HUCharacteristicTriggerEventItemManager *)self serviceVendingItem];
  v12 = [serviceVendingItem2 copy];
  v13 = *MEMORY[0x277D13DA8];
  v39[0] = *MEMORY[0x277D13F60];
  v39[1] = v13;
  v39[2] = *MEMORY[0x277D13E88];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
  v15 = [v10 initWithSourceItem:v12 resultKeyFilter:v14];
  [(HUCharacteristicTriggerEventItemManager *)self setServiceNameItem:v15];

  v16 = objc_alloc(MEMORY[0x277D14B40]);
  v17 = MEMORY[0x277CBEB98];
  instructionsItem = [(HUCharacteristicTriggerEventItemManager *)self instructionsItem];
  serviceNameItem = [(HUCharacteristicTriggerEventItemManager *)self serviceNameItem];
  v20 = [v17 setWithObjects:{instructionsItem, serviceNameItem, 0}];
  v21 = [v16 initWithItems:v20];
  [(HUCharacteristicTriggerEventItemManager *)self setStaticItemProvider:v21];

  v22 = [HUCharacteristicEventOptionProvider alloc];
  serviceVendingItem3 = [(HUCharacteristicTriggerEventItemManager *)self serviceVendingItem];
  v24 = [(HUCharacteristicEventOptionProvider *)v22 initWithServiceVendingItem:serviceVendingItem3 home:homeCopy];

  [(HUCharacteristicTriggerEventItemManager *)self setOptionProvider:v24];
  eventBuilderItem3 = [(HUCharacteristicTriggerEventItemManager *)self eventBuilderItem];
  optionProvider = [(HUCharacteristicTriggerEventItemManager *)self optionProvider];
  [optionProvider setEventBuilderItem:eventBuilderItem3];

  staticItemProvider = [(HUCharacteristicTriggerEventItemManager *)self staticItemProvider];
  v38[0] = staticItemProvider;
  optionProvider2 = [(HUCharacteristicTriggerEventItemManager *)self optionProvider];
  v38[1] = optionProvider2;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];

  return v29;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v36[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_opt_new();
  instructionsItem = [(HUCharacteristicTriggerEventItemManager *)self instructionsItem];
  v7 = [itemsCopy containsObject:instructionsItem];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUCharacteristicTriggerEventSectionIdentifierInstructions"];
    instructionsItem2 = [(HUCharacteristicTriggerEventItemManager *)self instructionsItem];
    v36[0] = instructionsItem2;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    [v8 setItems:v10];

    [v5 addObject:v8];
  }

  serviceNameItem = [(HUCharacteristicTriggerEventItemManager *)self serviceNameItem];
  v12 = [itemsCopy containsObject:serviceNameItem];

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUCharacteristicTriggerEventSectionIdentifierService"];
    serviceNameItem2 = [(HUCharacteristicTriggerEventItemManager *)self serviceNameItem];
    v35 = serviceNameItem2;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    [v13 setItems:v15];

    [v5 addObject:v13];
  }

  optionProvider = [(HUCharacteristicTriggerEventItemManager *)self optionProvider];
  items = [optionProvider items];
  v18 = [items na_setByIntersectingWithSet:itemsCopy];

  if ([v18 count])
  {
    v19 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUCharacteristicTriggerEventSectionIdentifierOptions"];
    allObjects = [v18 allObjects];
    _optionItemComparator = [objc_opt_class() _optionItemComparator];
    v22 = [allObjects sortedArrayUsingComparator:_optionItemComparator];
    v23 = [v22 mutableCopy];

    objc_opt_class();
    activeOptionItem = [(HUCharacteristicTriggerEventItemManager *)self activeOptionItem];
    if (objc_opt_isKindOfClass())
    {
      v25 = activeOptionItem;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    if (v26)
    {
      v27 = [v23 indexOfObject:v26];
      if (v27 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = v27;
        childItem = [v26 childItem];

        if (childItem)
        {
          childItem2 = [v26 childItem];
          [v23 insertObject:childItem2 atIndex:v28 + 1];
        }
      }
    }

    [v19 setItems:v23];
    v31 = [objc_opt_class() _titleForItemSection:v19];
    [v19 setHeaderTitle:v31];

    [v5 addObject:v19];
  }

  conditionModule = [(HUCharacteristicTriggerEventItemManager *)self conditionModule];
  v33 = [conditionModule buildSectionsWithDisplayedItems:itemsCopy];
  [v5 addObjectsFromArray:v33];

  return v5;
}

uint64_t __64__HUCharacteristicTriggerEventItemManager__optionItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 characteristics];
  v7 = [v6 anyObject];
  v8 = [v7 characteristicType];

  v9 = [v5 characteristics];
  v10 = [v9 anyObject];
  v11 = [v10 characteristicType];

  if (![v8 isEqualToString:v11])
  {
    v18 = [v8 compare:v11];
    goto LABEL_14;
  }

  v12 = [MEMORY[0x277CD1970] hf_valueRangeCharacteristicTypes];
  if (![v12 containsObject:v8] || (objc_msgSend(v4, "thresholdValueRange"), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_9:
    v19 = [v4 representativeTriggerValue];
    if (objc_opt_respondsToSelector())
    {
      v20 = [v5 representativeTriggerValue];
      v21 = objc_opt_respondsToSelector();

      if (v21)
      {
        v22 = [v5 representativeTriggerValue];
        v23 = [v4 representativeTriggerValue];
        v18 = [v22 compare:v23];

        goto LABEL_14;
      }
    }

    else
    {
    }

    v18 = 0;
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [v5 thresholdValueRange];

  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = triggerRangeTypeForEventItem(v4);
  v17 = triggerRangeTypeForEventItem(v5);
  if (v16 == 1)
  {
    v18 = -1;
  }

  else
  {
    v18 = v17 == 1;
  }

LABEL_14:

  return v18;
}

+ (id)_titleForItemSection:(id)section
{
  v3 = MEMORY[0x277CBEB98];
  items = [section items];
  v5 = [items na_map:&__block_literal_global_105_2];
  v6 = [v3 setWithArray:v5];

  if ([v6 count] == 1)
  {
    anyObject = [v6 anyObject];
    hf_valueRangeCharacteristicTypes = [MEMORY[0x277CD1970] hf_valueRangeCharacteristicTypes];
    characteristicType = [anyObject characteristicType];
    v10 = [hf_valueRangeCharacteristicTypes containsObject:characteristicType];

    if (v10)
    {
      v11 = [MEMORY[0x277CD19F8] hf_naturalLanguageDescriptionForCharacteristic:anyObject];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id __64__HUCharacteristicTriggerEventItemManager__titleForItemSection___block_invoke(uint64_t a1, void *a2)
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

  v6 = [v5 mainCharacteristic];

  return v6;
}

@end