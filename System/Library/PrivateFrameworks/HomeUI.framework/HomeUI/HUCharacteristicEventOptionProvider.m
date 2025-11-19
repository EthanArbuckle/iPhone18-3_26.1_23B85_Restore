@interface HUCharacteristicEventOptionProvider
+ (BOOL)hasOptionsForAnyServiceInHome:(id)a3 allowingSensors:(BOOL)a4;
+ (BOOL)hasOptionsForServiceVendingItem:(id)a3 outCharacteristicType:(id *)a4;
+ (BOOL)hasOptionsForServices:(id)a3 outCharacteristicType:(id *)a4 allowingSensors:(BOOL)a5;
+ (BOOL)homeHubUpdateRequiredForServices:(id)a3 forHome:(id)a4;
+ (id)_characteristicTypesRequiringUpdatedHomeHubs;
+ (id)_supportedCharacteristicTypes;
+ (id)characteristicTypeWithOptionsForServices:(id)a3;
- (HUCharacteristicEventOptionProvider)init;
- (HUCharacteristicEventOptionProvider)initWithServiceVendingItem:(id)a3 home:(id)a4;
- (id)_notifyingCharacteristicsKeyedByTypeForServices:(id)a3;
- (id)_optionsForCharacteristicType:(id)a3 characteristics:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)reloadItems;
- (id)valueSource;
@end

@implementation HUCharacteristicEventOptionProvider

- (HUCharacteristicEventOptionProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithServiceVendingItem_home_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUCharacteristicEventOptionProvider.m" lineNumber:36 description:{@"%s is unavailable; use %@ instead", "-[HUCharacteristicEventOptionProvider init]", v5}];

  return 0;
}

- (HUCharacteristicEventOptionProvider)initWithServiceVendingItem:(id)a3 home:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HUCharacteristicEventOptionProvider;
  v9 = [(HFItemProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, a4);
    objc_storeStrong(&v10->_serviceVendingItem, a3);
    v11 = [MEMORY[0x277CBEB58] set];
    optionItems = v10->_optionItems;
    v10->_optionItems = v11;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HUCharacteristicEventOptionProvider *)self serviceVendingItem];
  v6 = [(HUCharacteristicEventOptionProvider *)self home];
  v7 = [v4 initWithServiceVendingItem:v5 home:v6];

  return v7;
}

- (id)reloadItems
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(HUCharacteristicEventOptionProvider *)self serviceVendingItem];
  v5 = [v4 services];

  v6 = [(HUCharacteristicEventOptionProvider *)self serviceVendingItem];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(HUCharacteristicEventOptionProvider *)self serviceVendingItem];
    v9 = [v8 shouldReduceOptionItemsForNotifyingCharacteristics];
  }

  else
  {
    v9 = 1;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __50__HUCharacteristicEventOptionProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DC4708;
  aBlock[4] = self;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (v9)
  {
    v12 = (*(v10 + 2))(v10, v5);
    [v3 unionSet:v12];
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v13)
    {
      v14 = v13;
      v33 = self;
      v34 = v5;
      v15 = *v36;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [MEMORY[0x277CBEB98] setWithObject:{*(*(&v35 + 1) + 8 * i), v33, v34, v35}];
          v18 = (v11)[2](v11, v17);
          [v3 unionSet:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v14);
      self = v33;
      v5 = v34;
    }
  }

  v19 = [(HUCharacteristicEventOptionProvider *)self filter];

  if (v19)
  {
    v20 = [(HUCharacteristicEventOptionProvider *)self filter];
    v21 = [v3 na_filter:v20];
    v22 = [v21 mutableCopy];

    v3 = v22;
  }

  v23 = MEMORY[0x277D14AE8];
  v24 = [(HUCharacteristicEventOptionProvider *)self optionItems];
  v25 = [v23 diffFromSet:v24 toSet:v3];

  v26 = objc_alloc(MEMORY[0x277D14768]);
  v27 = [v25 additions];
  v28 = [v25 deletions];
  v29 = [v25 updates];
  v30 = [v26 initWithAddedItems:v27 removedItems:v28 existingItems:v29];

  [(HUCharacteristicEventOptionProvider *)self setOptionItems:v3];
  v31 = [MEMORY[0x277D2C900] futureWithResult:v30];

  return v31;
}

id __50__HUCharacteristicEventOptionProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) _notifyingCharacteristicsKeyedByTypeForServices:v3];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__HUCharacteristicEventOptionProvider_reloadItems__block_invoke_2;
  v10[3] = &unk_277DC46E0;
  v10[4] = *(a1 + 32);
  v6 = v4;
  v11 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

void __50__HUCharacteristicEventOptionProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) eventBuilderItem];
  v7 = [v6 characteristics];
  v8 = [v7 count];

  if (!v8 || ([*(a1 + 32) eventBuilderItem], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "characteristics"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v5, "intersectsSet:", v10), v10, v9, v11))
  {
    v12 = [*(a1 + 32) _optionsForCharacteristicType:v13 characteristics:v5];
    if (v12)
    {
      [*(a1 + 40) unionSet:v12];
    }
  }
}

- (id)invalidationReasons
{
  v9[4] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = HUCharacteristicEventOptionProvider;
  v2 = [(HFItemProvider *)&v8 invalidationReasons];
  v3 = *MEMORY[0x277D13B70];
  v9[0] = *MEMORY[0x277D13B68];
  v9[1] = v3;
  v4 = *MEMORY[0x277D13B28];
  v9[2] = *MEMORY[0x277D13B80];
  v9[3] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v6 = [v2 setByAddingObjectsFromArray:v5];

  return v6;
}

+ (BOOL)hasOptionsForServiceVendingItem:(id)a3 outCharacteristicType:(id *)a4
{
  v6 = [a3 services];
  LOBYTE(a4) = [a1 hasOptionsForServices:v6 outCharacteristicType:a4];

  return a4;
}

+ (BOOL)hasOptionsForAnyServiceInHome:(id)a3 allowingSensors:(BOOL)a4
{
  v6 = [a3 accessories];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __85__HUCharacteristicEventOptionProvider_hasOptionsForAnyServiceInHome_allowingSensors___block_invoke;
  v9[3] = &__block_descriptor_41_e21_B16__0__HMAccessory_8l;
  v9[4] = a1;
  v10 = a4;
  v7 = [v6 na_any:v9];

  return v7;
}

uint64_t __85__HUCharacteristicEventOptionProvider_hasOptionsForAnyServiceInHome_allowingSensors___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CBEB98];
  v5 = [a2 services];
  v6 = [v4 setWithArray:v5];
  v7 = [v3 hasOptionsForServices:v6 outCharacteristicType:0 allowingSensors:*(a1 + 40)];

  return v7;
}

+ (BOOL)hasOptionsForServices:(id)a3 outCharacteristicType:(id *)a4 allowingSensors:(BOOL)a5
{
  v8 = a3;
  v9 = [a1 _supportedCharacteristicTypes];
  if (!a5)
  {
    v10 = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
    v11 = [v9 na_setByRemovingObjectsFromSet:v10];

    v9 = v11;
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__31;
  v22 = __Block_byref_object_dispose__31;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__HUCharacteristicEventOptionProvider_hasOptionsForServices_outCharacteristicType_allowingSensors___block_invoke;
  v15[3] = &unk_277DC4778;
  v12 = v9;
  v16 = v12;
  v17 = &v18;
  v13 = [v8 na_any:v15];
  if (a4)
  {
    *a4 = v19[5];
  }

  _Block_object_dispose(&v18, 8);
  return v13;
}

uint64_t __99__HUCharacteristicEventOptionProvider_hasOptionsForServices_outCharacteristicType_allowingSensors___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __99__HUCharacteristicEventOptionProvider_hasOptionsForServices_outCharacteristicType_allowingSensors___block_invoke_2;
  v8[3] = &unk_277DC4750;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9 = v4;
  v10 = v5;
  v6 = [v3 na_any:v8];

  return v6;
}

uint64_t __99__HUCharacteristicEventOptionProvider_hasOptionsForServices_outCharacteristicType_allowingSensors___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 characteristicType];
  v6 = [v4 containsObject:v5];
  if (v6)
  {
    v7 = [v3 properties];
    v8 = [v7 containsObject:*MEMORY[0x277CCF738]];

    if (!v8)
    {
      v6 = 0;
      goto LABEL_6;
    }

    v9 = [v3 characteristicType];
    v10 = *(*(a1 + 40) + 8);
    v5 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

LABEL_6:
  return v6;
}

+ (id)characteristicTypeWithOptionsForServices:(id)a3
{
  v9 = 0;
  v3 = [a1 hasOptionsForServices:a3 outCharacteristicType:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

+ (BOOL)homeHubUpdateRequiredForServices:(id)a3 forHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _characteristicTypesRequiringUpdatedHomeHubs];
  LOBYTE(a1) = [v7 hf_supportsSharedEventAutomation];

  if (a1)
  {
    v9 = 0;
  }

  else
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __80__HUCharacteristicEventOptionProvider_homeHubUpdateRequiredForServices_forHome___block_invoke;
    v11[3] = &unk_277DB9560;
    v12 = v8;
    v9 = [v6 na_any:v11];
  }

  return v9;
}

uint64_t __80__HUCharacteristicEventOptionProvider_homeHubUpdateRequiredForServices_forHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__HUCharacteristicEventOptionProvider_homeHubUpdateRequiredForServices_forHome___block_invoke_2;
  v6[3] = &unk_277DB9538;
  v7 = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __80__HUCharacteristicEventOptionProvider_homeHubUpdateRequiredForServices_forHome___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (id)_notifyingCharacteristicsKeyedByTypeForServices:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    v5 = *MEMORY[0x277CCF738];
    do
    {
      v6 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v6;
        v7 = *(*(&v28 + 1) + 8 * v6);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v8 = [v7 characteristics];
        v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v25;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v25 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v24 + 1) + 8 * i);
              v14 = [v13 properties];
              v15 = [v14 containsObject:v5];

              if (v15)
              {
                v16 = [v13 characteristicType];
                if (v16)
                {
                  v17 = [v4 objectForKeyedSubscript:v16];

                  if (v17)
                  {
                    v18 = [v4 objectForKeyedSubscript:v16];
                    [v18 addObject:v13];
                  }

                  else
                  {
                    v18 = [MEMORY[0x277CBEB58] setWithObject:v13];
                    [v4 setObject:v18 forKeyedSubscript:v16];
                  }
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v10);
        }

        v6 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  return v4;
}

- (id)_optionsForCharacteristicType:(id)a3 characteristics:(id)a4
{
  v66[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB58] set];
  v49 = [MEMORY[0x277CBEB58] set];
  v9 = [MEMORY[0x277CBEB58] set];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __85__HUCharacteristicEventOptionProvider__optionsForCharacteristicType_characteristics___block_invoke;
  v64[3] = &unk_277DB9538;
  v10 = v6;
  v65 = v10;
  v50 = [v7 na_firstObjectPassingTest:v64];
  v11 = [v7 na_any:&__block_literal_global_289];
  v12 = objc_opt_class();
  v13 = [(HUCharacteristicEventOptionProvider *)self valueSource];
  v14 = *MEMORY[0x277CCF9A8];
  v66[0] = *MEMORY[0x277CCF978];
  v66[1] = v14;
  v66[2] = *MEMORY[0x277CCF7E8];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:3];
  v16 = [v15 containsObject:v10];

  if (v16)
  {
    goto LABEL_2;
  }

  v18 = [MEMORY[0x277CD1970] hf_valueRangeCharacteristicTypes];
  v19 = [v18 containsObject:v10];

  if (v19)
  {
    v20 = [v50 hf_maximumTriggerValue];
    v21 = [v50 hf_valueBeforeTriggerValue:v20];

    v22 = [MEMORY[0x277CD1CB0] numberRangeWithMaxValue:v21];
    [v9 addObject:v22];

    v23 = [v50 hf_minimumTriggerValue];
    v24 = [v50 hf_valueAfterTriggerValue:v23];

    v25 = [MEMORY[0x277CD1CB0] numberRangeWithMinValue:v24];
    [v9 addObject:v25];

    goto LABEL_8;
  }

  v26 = [MEMORY[0x277CD1970] hf_alarmCharacteristicTypes];
  v27 = [v26 containsObject:v10];

  if (v27)
  {
    v28 = [MEMORY[0x277CD1970] hf_abnormalValueForAlarmCharacteristicType:v10];
    [v8 addObject:v28];

    goto LABEL_8;
  }

  v44 = [MEMORY[0x277CD1970] hf_powerStateCharacteristicTypes];
  v45 = [v44 containsObject:v10];

  if (v45)
  {
LABEL_2:
    [v8 addObject:MEMORY[0x277CBEC38]];
    v17 = MEMORY[0x277CBEC28];
LABEL_3:
    [v8 addObject:v17];
    goto LABEL_8;
  }

  if ([v10 isEqualToString:*MEMORY[0x277CCF838]])
  {
    [v8 addObject:&unk_2824925A0];
    v17 = &unk_2824925B8;
    goto LABEL_3;
  }

  if ([v10 isEqualToString:*MEMORY[0x277CCF800]])
  {
    [v8 addObject:&unk_2824925B8];
    v17 = &unk_2824925A0;
    goto LABEL_3;
  }

  if ([v10 isEqualToString:*MEMORY[0x277CCF858]])
  {
    [v8 addObject:&unk_2824925A0];
    [v8 addObject:&unk_2824925D0];
    v17 = &unk_2824925E8;
    goto LABEL_3;
  }

  if ([v10 isEqualToString:*MEMORY[0x277CCF848]])
  {
    [v8 addObject:&unk_282492600];
    v46 = [MEMORY[0x277CD1CB0] numberRangeWithMinValue:&unk_282492618];
    [v49 addObject:v46];
  }

  else
  {
    if (([v10 isEqualToString:*MEMORY[0x277CCF910]] & v11) != 1)
    {
      goto LABEL_8;
    }

    v46 = [v7 na_firstObjectPassingTest:&__block_literal_global_39_2];
    v47 = [v46 hf_programmableSwitchValidValueSet];
    v12 = objc_opt_class();
    v48 = [v47 sortedValues];
    [v8 addObjectsFromArray:v48];
  }

LABEL_8:
  v29 = [(HUCharacteristicEventOptionProvider *)self optionItems];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __85__HUCharacteristicEventOptionProvider__optionsForCharacteristicType_characteristics___block_invoke_2_41;
  v59[3] = &unk_277DC47A0;
  v30 = v29;
  v60 = v30;
  v31 = v7;
  v62 = v13;
  v63 = v12;
  v61 = v31;
  v32 = v13;
  v33 = [v8 na_map:v59];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __85__HUCharacteristicEventOptionProvider__optionsForCharacteristicType_characteristics___block_invoke_3;
  v56[3] = &unk_277DC47C8;
  v34 = v30;
  v57 = v34;
  v35 = v31;
  v58 = v35;
  v36 = [v49 na_map:v56];
  v37 = [v33 setByAddingObjectsFromSet:v36];

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __85__HUCharacteristicEventOptionProvider__optionsForCharacteristicType_characteristics___block_invoke_4;
  v51[3] = &unk_277DC47F0;
  v52 = v34;
  v53 = v35;
  v54 = self;
  v55 = v10;
  v38 = v10;
  v39 = v35;
  v40 = v34;
  v41 = [v9 na_map:v51];
  v42 = [v37 setByAddingObjectsFromSet:v41];

  return v42;
}

uint64_t __85__HUCharacteristicEventOptionProvider__optionsForCharacteristicType_characteristics___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __85__HUCharacteristicEventOptionProvider__optionsForCharacteristicType_characteristics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 service];
  v3 = [v2 hf_isProgrammableSwitch];

  return v3;
}

uint64_t __85__HUCharacteristicEventOptionProvider__optionsForCharacteristicType_characteristics___block_invoke_37(uint64_t a1, void *a2)
{
  v2 = [a2 characteristicType];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCF910]];

  return v3;
}

HUCharacteristicEventOptionItem *__85__HUCharacteristicEventOptionProvider__optionsForCharacteristicType_characteristics___block_invoke_2_41(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = *v19;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v18 + 1) + 8 * i);
      v10 = [v9 characteristics];
      if (![v10 isEqualToSet:*(a1 + 40)])
      {
        goto LABEL_11;
      }

      v11 = [v9 triggerValue];
      if (([v11 isEqual:v3] & 1) == 0)
      {

LABEL_11:
        continue;
      }

      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v14 = v9;

        goto LABEL_17;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v6);
LABEL_14:

  v13 = *(a1 + 56);
  if (v13 == objc_opt_class())
  {
    v15 = [HUProgrammableSwitchEventOptionItem alloc];
    v16 = [*(a1 + 40) anyObject];
    v14 = [(HUProgrammableSwitchEventOptionItem *)v15 initWithCharacteristic:v16 triggerValue:v3 valueSource:*(a1 + 48)];
  }

  else
  {
    v14 = [[HUCharacteristicEventOptionItem alloc] initWithCharacteristics:*(a1 + 40) triggerValue:v3];
  }

LABEL_17:

  return v14;
}

HUCharacteristicEventOptionItem *__85__HUCharacteristicEventOptionProvider__optionsForCharacteristicType_characteristics___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 characteristics];
        if ([v10 isEqualToSet:*(a1 + 40)])
        {
          v11 = [v9 triggerValueRange];
          v12 = [v11 hf_isEqual:v3];

          if (v12)
          {
            v13 = v9;

            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [[HUCharacteristicEventOptionItem alloc] initWithCharacteristics:*(a1 + 40) triggerValueRange:v3];
LABEL_13:

  return v13;
}

HUCharacteristicEventOptionItem *__85__HUCharacteristicEventOptionProvider__optionsForCharacteristicType_characteristics___block_invoke_4(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = *(a1 + 32);
  v5 = [(HUCharacteristicEventOptionItem *)v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [v9 characteristics];
        if ([v10 isEqualToSet:*(a1 + 40)])
        {
          v11 = [v9 thresholdValueRange];
          v12 = [v11 hf_isEqual:v3];

          if (v12)
          {
            v23 = v9;
            goto LABEL_22;
          }
        }

        else
        {
        }
      }

      v6 = [(HUCharacteristicEventOptionItem *)v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v23 = [[HUCharacteristicEventOptionItem alloc] initWithCharacteristics:*(a1 + 40) thresholdValueRange:v3];
  v4 = [[HUCharacteristicEventOptionItem alloc] initWithCharacteristics:*(a1 + 40) thresholdValueRange:v3];
  [(HUCharacteristicEventOptionItem *)v23 setChildItem:v4];
  v13 = [*(a1 + 48) eventBuilderItem];
  v14 = [v13 representativeEventBuilder];

  objc_opt_class();
  v15 = v14;
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    v18 = [v15 characteristic];
    v19 = [v18 characteristicType];
    v20 = [v19 isEqualToString:*(a1 + 56)];

    if (v20)
    {
      v21 = [v17 thresholdRange];
      v22 = [v21 minValue];
      if (v22)
      {
        [(HUCharacteristicEventOptionItem *)v23 setThresholdValue:v22];
      }

      else
      {
        v24 = [v17 thresholdRange];
        v25 = [v24 maxValue];
        [(HUCharacteristicEventOptionItem *)v23 setThresholdValue:v25];
      }
    }
  }

LABEL_22:

  return v23;
}

+ (id)_supportedCharacteristicTypes
{
  if (_MergedGlobals_3_11 != -1)
  {
    dispatch_once(&_MergedGlobals_3_11, &__block_literal_global_51_2);
  }

  v3 = qword_27C8380E8;

  return v3;
}

void __68__HUCharacteristicEventOptionProvider__supportedCharacteristicTypes__block_invoke_2()
{
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCF9F0], *MEMORY[0x277CCF748], *MEMORY[0x277CCF770], *MEMORY[0x277CCF838], *MEMORY[0x277CCF800], *MEMORY[0x277CCF7E8], *MEMORY[0x277CCF858], *MEMORY[0x277CCF848], *MEMORY[0x277CCF910], 0}];
  v0 = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
  v1 = [v3 setByAddingObjectsFromSet:v0];
  v2 = qword_27C8380E8;
  qword_27C8380E8 = v1;
}

+ (id)_characteristicTypesRequiringUpdatedHomeHubs
{
  if (qword_27C8380F0 != -1)
  {
    dispatch_once(&qword_27C8380F0, &__block_literal_global_55_1);
  }

  v3 = qword_27C8380F8;

  return v3;
}

void __83__HUCharacteristicEventOptionProvider__characteristicTypesRequiringUpdatedHomeHubs__block_invoke_2()
{
  v0 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCF848], 0}];
  v1 = qword_27C8380F8;
  qword_27C8380F8 = v0;
}

- (id)valueSource
{
  v3 = [(HUCharacteristicEventOptionProvider *)self overrideValueSource];

  if (v3)
  {
    v4 = [(HUCharacteristicEventOptionProvider *)self overrideValueSource];
  }

  else
  {
    v5 = [(HUCharacteristicEventOptionProvider *)self home];
    v4 = [v5 hf_characteristicValueManager];
  }

  return v4;
}

@end