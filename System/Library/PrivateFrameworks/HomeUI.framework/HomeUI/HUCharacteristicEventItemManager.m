@interface HUCharacteristicEventItemManager
+ (id)_titleForItemSection:(id)a3;
+ (id)serviceVendorItemForEventBuilderItem:(id)a3 inHome:(id)a4;
- (HUCharacteristicEventItemManager)initWithTriggerBuilder:(id)a3 eventBuilderItem:(id)a4 delegate:(id)a5;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_buildSectionsWithDisplayedItems:(id)a3;
- (id)optionItems;
- (void)setActiveOptionItem:(id)a3;
@end

@implementation HUCharacteristicEventItemManager

+ (id)serviceVendorItemForEventBuilderItem:(id)a3 inHome:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"HUCharacteristicEventItemManager.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"eventBuilderItem"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v28 = [MEMORY[0x277CCA890] currentHandler];
  [v28 handleFailureInMethod:a2 object:a1 file:@"HUCharacteristicEventItemManager.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"home"}];

LABEL_3:
  v10 = objc_alloc_init(MEMORY[0x277D148D0]);
  v11 = [v7 characteristics];
  v12 = [v11 na_map:&__block_literal_global_148];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __80__HUCharacteristicEventItemManager_serviceVendorItemForEventBuilderItem_inHome___block_invoke_2;
  v30[3] = &unk_277DBB1E0;
  v13 = v9;
  v31 = v13;
  v14 = [v12 na_flatMap:v30];
  v15 = [v7 characteristics];
  v16 = [v15 na_map:&__block_literal_global_74_1];

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
    v19 = [v14 anyObject];
    v20 = [v18 initWithValueSource:v10 serviceGroup:v19];
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
    v19 = [v12 anyObject];
    v20 = [v22 serviceItemForService:v19 valueSource:v10];
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
    v19 = [v16 anyObject];
    v20 = [v24 initWithAccessory:v19 valueSource:v10];
    goto LABEL_21;
  }

  v25 = objc_alloc_init(HUCharacteristicEventUnknownItem);
LABEL_22:

  return v25;
}

id __80__HUCharacteristicEventItemManager_serviceVendorItemForEventBuilderItem_inHome___block_invoke(uint64_t a1, void *a2)
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

id __80__HUCharacteristicEventItemManager_serviceVendorItemForEventBuilderItem_inHome___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [*(a1 + 32) hf_serviceGroupsForService:a2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

id __80__HUCharacteristicEventItemManager_serviceVendorItemForEventBuilderItem_inHome___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  v3 = [v2 accessory];

  return v3;
}

- (HUCharacteristicEventItemManager)initWithTriggerBuilder:(id)a3 eventBuilderItem:(id)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v23.receiver = self;
  v23.super_class = HUCharacteristicEventItemManager;
  v11 = [(HFItemManager *)&v23 initWithDelegate:a5];
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = [v9 home];
    v14 = [v12 serviceVendorItemForEventBuilderItem:v10 inHome:v13];
    serviceVendingItem = v11->_serviceVendingItem;
    v11->_serviceVendingItem = v14;

    objc_storeStrong(&v11->_eventBuilderItem, a4);
    objc_storeStrong(&v11->_triggerBuilder, a3);
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      v16 = [HUTriggerConditionEditorItemModule alloc];
      v17 = [v9 home];
      v18 = [v9 conditionCollection];
      v19 = [MEMORY[0x277CBEB98] set];
      v20 = [(HUTriggerConditionEditorItemModule *)v16 initWithItemUpdater:v11 home:v17 conditionCollection:v18 disallowedConditionTypes:v19];
      conditionModule = v11->_conditionModule;
      v11->_conditionModule = v20;
    }
  }

  return v11;
}

- (void)setActiveOptionItem:(id)a3
{
  v6 = a3;
  activeOptionItem = self->_activeOptionItem;
  v12 = v6;
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
    objc_storeStrong(&self->_activeOptionItem, a3);
    v10 = [MEMORY[0x277CBEB98] na_setWithSafeObject:v12];
    v11 = [(HFItemManager *)self updateResultsForItems:v10 senderSelector:a2];
    goto LABEL_8;
  }

LABEL_9:
}

- (id)optionItems
{
  v3 = [(HUCharacteristicEventItemManager *)self optionProvider];
  v4 = [v3 items];
  v5 = [(HFItemManager *)self allDisplayedItems];
  v6 = [v4 na_setByIntersectingWithSet:v5];

  return v6;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v34[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [HUInstructionsItem alloc];
  v6 = _HULocalizedStringWithDefaultValue(@"HUCharacteristicEventOptionInstructionsHeader", @"HUCharacteristicEventOptionInstructionsHeader", 1);
  v7 = [(HUInstructionsItem *)v5 initWithStyle:0 title:v6 description:0];
  [(HUCharacteristicEventItemManager *)self setInstructionsItem:v7];

  v8 = objc_alloc(MEMORY[0x277D14C30]);
  v9 = [(HUCharacteristicEventItemManager *)self serviceVendingItem];
  v10 = [v9 copy];
  v11 = *MEMORY[0x277D13DA8];
  v34[0] = *MEMORY[0x277D13F60];
  v34[1] = v11;
  v34[2] = *MEMORY[0x277D13E88];
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
  v13 = [v8 initWithSourceItem:v10 resultKeyFilter:v12];
  [(HUCharacteristicEventItemManager *)self setServiceNameItem:v13];

  v14 = objc_alloc(MEMORY[0x277D14B40]);
  v15 = MEMORY[0x277CBEB98];
  v16 = [(HUCharacteristicEventItemManager *)self instructionsItem];
  v17 = [(HUCharacteristicEventItemManager *)self serviceNameItem];
  v18 = [v15 setWithObjects:{v16, v17, 0}];
  v19 = [v14 initWithItems:v18];
  [(HUCharacteristicEventItemManager *)self setStaticItemProvider:v19];

  v20 = [HUCharacteristicEventOptionProvider alloc];
  v21 = [(HUCharacteristicEventItemManager *)self serviceVendingItem];
  v22 = [(HUCharacteristicEventOptionProvider *)v20 initWithServiceVendingItem:v21 home:v4];

  [(HUCharacteristicEventItemManager *)self setOptionProvider:v22];
  v23 = [(HUCharacteristicEventItemManager *)self staticItemProvider];
  v33[0] = v23;
  v24 = [(HUCharacteristicEventItemManager *)self optionProvider];
  v33[1] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v26 = [(HUCharacteristicEventItemManager *)self conditionModule];
  v27 = [v26 itemProviders];
  v28 = [v27 allObjects];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = MEMORY[0x277CBEBF8];
  }

  v31 = [v25 arrayByAddingObjectsFromArray:v30];

  return v31;
}

- (id)_buildSectionsWithDisplayedItems:(id)a3
{
  v37[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(HUCharacteristicEventItemManager *)self instructionsItem];
  v7 = [v4 containsObject:v6];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUCharacteristicEventSectionIdentifierInstructions"];
    v9 = [(HUCharacteristicEventItemManager *)self instructionsItem];
    v37[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    [v8 setItems:v10];

    [v5 addObject:v8];
  }

  v11 = [(HUCharacteristicEventItemManager *)self serviceNameItem];
  v12 = [v4 containsObject:v11];

  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUCharacteristicEventSectionIdentifierService"];
    v14 = [(HUCharacteristicEventItemManager *)self serviceNameItem];
    v36 = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    [v13 setItems:v15];

    [v5 addObject:v13];
  }

  v16 = [(HUCharacteristicEventItemManager *)self optionProvider];
  v17 = [v16 items];
  v18 = [v17 na_setByIntersectingWithSet:v4];

  if ([v18 count])
  {
    v19 = [objc_alloc(MEMORY[0x277D14850]) initWithIdentifier:@"HUCharacteristicEventSectionIdentifierOptions"];
    v20 = [v18 allObjects];
    v21 = [objc_opt_class() _optionItemComparator];
    v22 = [v20 sortedArrayUsingComparator:v21];
    v23 = [v22 mutableCopy];

    objc_opt_class();
    v24 = [(HUCharacteristicEventItemManager *)self activeOptionItem];
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
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
        v29 = [v26 childItem];

        if (v29)
        {
          v30 = [v26 childItem];
          [v23 insertObject:v30 atIndex:v28 + 1];
        }
      }
    }

    [v19 setItems:v23];
    v31 = [objc_opt_class() _titleForItemSection:v19];
    [v19 setHeaderTitle:v31];

    [v5 addObject:v19];
  }

  v32 = [(HUCharacteristicEventItemManager *)self conditionModule];

  if (v32)
  {
    v33 = [(HUCharacteristicEventItemManager *)self conditionModule];
    v34 = [v33 buildSectionsWithDisplayedItems:v4];
    [v5 addObjectsFromArray:v34];
  }

  return v5;
}

uint64_t __57__HUCharacteristicEventItemManager__optionItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
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
    v17 = [v8 compare:v11];
    goto LABEL_8;
  }

  v12 = [v4 representativeTriggerValue];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_7;
  }

  v13 = [v5 representativeTriggerValue];
  v14 = objc_opt_respondsToSelector();

  if ((v14 & 1) == 0)
  {
LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v15 = [v5 representativeTriggerValue];
  v16 = [v4 representativeTriggerValue];
  v17 = [v15 compare:v16];

LABEL_8:
  return v17;
}

+ (id)_titleForItemSection:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = [a3 items];
  v5 = [v4 na_map:&__block_literal_global_101];
  v6 = [v3 setWithArray:v5];

  if ([v6 count] == 1)
  {
    v7 = [v6 anyObject];
    v8 = [MEMORY[0x277CD1970] hf_valueRangeCharacteristicTypes];
    v9 = [v7 characteristicType];
    v10 = [v8 containsObject:v9];

    if (v10)
    {
      v11 = [MEMORY[0x277CD19F8] hf_naturalLanguageDescriptionForCharacteristic:v7];
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

id __57__HUCharacteristicEventItemManager__titleForItemSection___block_invoke(uint64_t a1, void *a2)
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