@interface HFCharacteristicStateItemProvider
+ (id)_createBatteryItemWithSourceItem:(id)a3 characteristicType:(id)a4 valueFormatBlock:(id)a5;
+ (id)_setupCharacteristicStateItemForCharacteristic:(id)a3 valueSource:(id)a4 serviceType:(id)a5;
+ (id)standardCharacteristicTypes;
- (HFCharacteristicStateItemProvider)init;
- (HFCharacteristicStateItemProvider)initWithValueSource:(id)a3 accessory:(id)a4 service:(id)a5;
- (HFCharacteristicStateItemProvider)initWithValueSource:(id)a3 service:(id)a4;
- (id)_reloadBatteryItems;
- (id)_reloadCharacteristicStateItems;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)items;
- (id)reloadItems;
@end

@implementation HFCharacteristicStateItemProvider

- (HFCharacteristicStateItemProvider)initWithValueSource:(id)a3 service:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 accessory];
  v9 = [(HFCharacteristicStateItemProvider *)self initWithValueSource:v7 accessory:v8 service:v6];

  return v9;
}

- (HFCharacteristicStateItemProvider)initWithValueSource:(id)a3 accessory:(id)a4 service:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HFCharacteristicStateItemProvider;
  v12 = [(HFItemProvider *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accessory, a4);
    objc_storeStrong(&v13->_service, a5);
    objc_storeStrong(&v13->_valueSource, a3);
    v14 = [MEMORY[0x277CBEB98] set];
    characteristicStateItems = v13->_characteristicStateItems;
    v13->_characteristicStateItems = v14;

    v16 = [MEMORY[0x277CBEB98] set];
    batteryItems = v13->_batteryItems;
    v13->_batteryItems = v16;
  }

  return v13;
}

- (HFCharacteristicStateItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithValueSource_accessory_service_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFCharacteristicStateItemProvider.m" lineNumber:61 description:{@"%s is unavailable; use %@ instead", "-[HFCharacteristicStateItemProvider init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFCharacteristicStateItemProvider *)self valueSource];
  v6 = [(HFCharacteristicStateItemProvider *)self accessory];
  v7 = [(HFCharacteristicStateItemProvider *)self service];
  v8 = [v4 initWithValueSource:v5 accessory:v6 service:v7];

  return v8;
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFCharacteristicStateItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"service"];

  return v3;
}

- (id)items
{
  v3 = [(HFCharacteristicStateItemProvider *)self characteristicStateItems];
  v4 = [(HFCharacteristicStateItemProvider *)self batteryItems];
  v5 = [v3 setByAddingObjectsFromSet:v4];

  return v5;
}

- (id)reloadItems
{
  v3 = [(HFCharacteristicStateItemProvider *)self _reloadCharacteristicStateItems];
  v4 = [(HFCharacteristicStateItemProvider *)self _reloadBatteryItems];
  v5 = [v3 resultsByMergingWithResults:v4];

  v6 = [MEMORY[0x277D2C900] futureWithResult:v5];

  return v6;
}

- (id)_reloadBatteryItems
{
  v3 = [(HFCharacteristicStateItemProvider *)self batteryItems];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [HFItemProviderReloadResults alloc];
    v6 = [MEMORY[0x277CBEB98] set];
    v7 = [MEMORY[0x277CBEB98] set];
    v8 = [(HFCharacteristicStateItemProvider *)self batteryItems];
    v9 = [(HFItemProviderReloadResults *)v5 initWithAddedItems:v6 removedItems:v7 existingItems:v8];
  }

  else
  {
    v10 = [HFAccessoryBatteryLevelItem alloc];
    v11 = [(HFCharacteristicStateItemProvider *)self accessory];
    v12 = [(HFCharacteristicStateItemProvider *)self valueSource];
    v6 = [(HFAccessoryBatteryLevelItem *)v10 initWithAccessory:v11 valueSource:v12];

    v7 = [MEMORY[0x277CBEB58] set];
    v8 = [objc_opt_class() _createBatteryItemWithSourceItem:v6 characteristicType:*MEMORY[0x277CCF780] valueFormatBlock:&__block_literal_global_229];
    [v7 addObject:v8];
    v13 = [objc_opt_class() _createBatteryItemWithSourceItem:v6 characteristicType:*MEMORY[0x277CCF7D0] valueFormatBlock:&__block_literal_global_17_10];
    [v7 addObject:v13];
    [(HFCharacteristicStateItemProvider *)self setBatteryItems:v7];
    v14 = [HFItemProviderReloadResults alloc];
    v15 = [MEMORY[0x277CBEB98] set];
    v16 = [MEMORY[0x277CBEB98] set];
    v9 = [(HFItemProviderReloadResults *)v14 initWithAddedItems:v7 removedItems:v15 existingItems:v16];
  }

  return v9;
}

id __56__HFCharacteristicStateItemProvider__reloadBatteryItems__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFFormatterManager sharedInstance];
  v4 = [v3 percentFormatter];

  [v4 setMaximumValue:&unk_282525670];
  v5 = [v2 objectForKeyedSubscript:@"batteryPercentage"];

  if (v5)
  {
    v6 = [v4 stringForObjectValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __56__HFCharacteristicStateItemProvider__reloadBatteryItems__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[HFFormatterManager sharedInstance];
  v4 = [v3 BOOLeanFormatter];

  v5 = [v2 objectForKeyedSubscript:@"batteryCharging"];

  if (v5)
  {
    v6 = [v4 stringForObjectValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_reloadCharacteristicStateItems
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = [(HFCharacteristicStateItemProvider *)self characteristicStateItems];
  v54 = [v3 na_map:&__block_literal_global_20_10];

  v4 = [objc_opt_class() standardCharacteristicTypes];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(HFCharacteristicStateItemProvider *)self service];
  if (v6)
  {
    v7 = [(HFCharacteristicStateItemProvider *)self service];
    v8 = [v7 hf_childServices];
    v9 = [(HFCharacteristicStateItemProvider *)self service];
    v10 = [v8 setByAddingObject:v9];
  }

  else
  {
    v10 = [MEMORY[0x277CBEB98] set];
  }

  v53 = self;

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v10;
  v58 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
  if (v58)
  {
    v56 = *v76;
    do
    {
      v11 = 0;
      do
      {
        if (*v76 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v60 = v11;
        v12 = *(*(&v75 + 1) + 8 * v11);
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v13 = [v12 characteristics];
        v14 = [v13 countByEnumeratingWithState:&v71 objects:v79 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v72;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v72 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v71 + 1) + 8 * i);
              v19 = [v18 characteristicType];
              if (v19)
              {
                v20 = v19;
                v21 = [v18 characteristicType];
                v22 = [v4 containsObject:v21];

                if (v22)
                {
                  v23 = [v18 characteristicType];
                  v24 = [v5 objectForKeyedSubscript:v23];

                  if (v24)
                  {
                    v25 = MEMORY[0x277CD1970];
                    v26 = [v18 characteristicType];
                    v27 = [v25 localizedDescriptionForCharacteristicType:v26];
                    NSLog(&cfstr_AlreadyHaveACh.isa, v27);
                  }

                  v28 = [v18 characteristicType];
                  [v5 setObject:v18 forKeyedSubscript:v28];
                }
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v71 objects:v79 count:16];
          }

          while (v15);
        }

        v11 = v60 + 1;
      }

      while (v60 + 1 != v58);
      v58 = [obj countByEnumeratingWithState:&v75 objects:v80 count:16];
    }

    while (v58);
  }

  v29 = MEMORY[0x277CBEB98];
  v30 = [v5 allKeys];
  v59 = [v29 setWithArray:v30];

  v31 = MEMORY[0x277CBEB98];
  v32 = [v5 allValues];
  v61 = [v31 setWithArray:v32];

  v33 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v34 = [(HFCharacteristicStateItemProvider *)v53 valueSource];
  v35 = [(HFCharacteristicStateItemProvider *)v53 service];
  v36 = [v35 hf_serviceDescriptor];
  v37 = [(HFSimpleAggregatedCharacteristicValueSource *)v33 initWithValueSource:v34 characteristics:v61 primaryServiceDescriptor:v36];

  v38 = [HFSetDiff diffFromSet:v54 toSet:v59];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__HFCharacteristicStateItemProvider__reloadCharacteristicStateItems__block_invoke_2;
  aBlock[3] = &unk_277E01E40;
  aBlock[4] = v53;
  v39 = _Block_copy(aBlock);
  v40 = [v38 additions];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __68__HFCharacteristicStateItemProvider__reloadCharacteristicStateItems__block_invoke_4;
  v66[3] = &unk_277E01E68;
  v67 = v5;
  v68 = v53;
  v69 = v37;
  v57 = v37;
  v41 = v5;
  v42 = [v40 na_map:v66];

  v43 = [v38 deletions];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __68__HFCharacteristicStateItemProvider__reloadCharacteristicStateItems__block_invoke_5;
  v64[3] = &unk_277E01E90;
  v44 = v39;
  v65 = v44;
  v45 = [v43 na_map:v64];

  v46 = [v38 updates];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __68__HFCharacteristicStateItemProvider__reloadCharacteristicStateItems__block_invoke_6;
  v62[3] = &unk_277E01E90;
  v63 = v44;
  v47 = v44;
  v48 = [v46 na_map:v62];

  v49 = [v48 setByAddingObjectsFromSet:v42];
  [(HFCharacteristicStateItemProvider *)v53 setCharacteristicStateItems:v49];

  v50 = [[HFItemProviderReloadResults alloc] initWithAddedItems:v42 removedItems:v45 existingItems:v48];
  v51 = *MEMORY[0x277D85DE8];

  return v50;
}

id __68__HFCharacteristicStateItemProvider__reloadCharacteristicStateItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) characteristicStateItems];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__HFCharacteristicStateItemProvider__reloadCharacteristicStateItems__block_invoke_3;
  v8[3] = &unk_277E01E18;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_firstObjectPassingTest:v8];

  return v6;
}

uint64_t __68__HFCharacteristicStateItemProvider__reloadCharacteristicStateItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id __68__HFCharacteristicStateItemProvider__reloadCharacteristicStateItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    NSLog(&cfstr_MissingCharact.isa, v3);
  }

  v5 = *(a1 + 40);
  v6 = objc_opt_class();
  v7 = *(a1 + 48);
  v8 = [v4 service];
  v9 = [v8 serviceType];
  v10 = [v6 _setupCharacteristicStateItemForCharacteristic:v4 valueSource:v7 serviceType:v9];

  return v10;
}

uint64_t __70__HFCharacteristicStateItemProvider_characteristicStateItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = [v5 objectForKeyedSubscript:@"title"];
  v7 = [v4 latestResults];

  v8 = [v7 objectForKeyedSubscript:@"title"];
  v9 = [v6 localizedStandardCompare:v8];

  return v9;
}

+ (id)standardCharacteristicTypes
{
  if (_MergedGlobals_4_3 != -1)
  {
    dispatch_once(&_MergedGlobals_4_3, &__block_literal_global_41_2);
  }

  v3 = qword_27C84C580;

  return v3;
}

void __64__HFCharacteristicStateItemProvider_standardCharacteristicTypes__block_invoke_2()
{
  v0 = *MEMORY[0x277CCF7A0];
  v1 = *MEMORY[0x277CCF7B0];
  v2 = *MEMORY[0x277CCF7C0];
  v3 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277CCF9A0], *MEMORY[0x277CCF820], *MEMORY[0x277CCF878], *MEMORY[0x277CCF850], *MEMORY[0x277CCFA90], *MEMORY[0x277CCFAB0], *MEMORY[0x277CCF830], *MEMORY[0x277CCF9B8], *MEMORY[0x277CCF770], *MEMORY[0x277CCF760], *MEMORY[0x277CCF768], *MEMORY[0x277CCF7A0], *MEMORY[0x277CCF7A8], *MEMORY[0x277CCF7B0], *MEMORY[0x277CCF7B8], *MEMORY[0x277CCF7C0], *MEMORY[0x277CCF7C8], *MEMORY[0x277CCF9C8], *MEMORY[0x277CCF998], *MEMORY[0x277CCFAC0], *MEMORY[0x277CCF9D8], *MEMORY[0x277CCF9D0], *MEMORY[0x277CCFBA0], *MEMORY[0x277CCF7E8], *MEMORY[0x277CCF938], *MEMORY[0x277CCF978], *MEMORY[0x277CCF9A8], *MEMORY[0x277CCFA80], *MEMORY[0x277CCF8A0], *MEMORY[0x277CCF8A8], *MEMORY[0x277CCFBC0], 0}];
  v4 = qword_27C84C580;
  qword_27C84C580 = v3;
}

+ (id)_setupCharacteristicStateItemForCharacteristic:(id)a3 valueSource:(id)a4 serviceType:(id)a5
{
  v32[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x277CCAA28];
  v31 = @"serviceType";
  v32[0] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v12 = [v10 hf_valueFormatterForCharacteristic:v7 options:v11];

  if (v12)
  {
    v13 = [v7 localizedDescription];
    v14 = [v7 characteristicType];
    v15 = [HFCharacteristicGroup groupedTitleForCharacteristicType:v14];

    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __108__HFCharacteristicStateItemProvider__setupCharacteristicStateItemForCharacteristic_valueSource_serviceType___block_invoke;
    v27 = &unk_277E01EB8;
    v28 = v13;
    v29 = v15;
    v30 = v12;
    v16 = v15;
    v17 = v13;
    v18 = _Block_copy(&v24);
    v19 = [HFCharacteristicStateItem alloc];
    v20 = [v7 characteristicType];
    v21 = [(HFCharacteristicStateItem *)v19 initWithCharacteristicType:v20 valueSource:v8 resultsProvider:v18];
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id __108__HFCharacteristicStateItemProvider__setupCharacteristicStateItemForCharacteristic_valueSource_serviceType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setObject:*(a1 + 32) forKeyedSubscript:@"title"];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"AccessoryDetails.%@", *(a1 + 32)];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:&stru_2824B1A78];
  [v4 setObject:v6 forKeyedSubscript:@"HFResultDisplayAccessibilityIDKey"];

  v7 = *(a1 + 40);
  if (v7)
  {
    [v4 setObject:v7 forKeyedSubscript:@"groupedTitle"];
  }

  v8 = [*(a1 + 48) stringForObjectValue:v3];
  if (!v8)
  {
    v8 = _HFLocalizedStringWithDefaultValue(@"HFCharacteristicValueUnknownString", @"HFCharacteristicValueUnknownString", 1);
  }

  [v4 setObject:v8 forKeyedSubscript:@"description"];

  return v4;
}

+ (id)_createBatteryItemWithSourceItem:(id)a3 characteristicType:(id)a4 valueFormatBlock:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [HFTransformItem alloc];
  v11 = [v9 copy];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __106__HFCharacteristicStateItemProvider__createBatteryItemWithSourceItem_characteristicType_valueFormatBlock___block_invoke;
  v16[3] = &unk_277E01EE0;
  v17 = v7;
  v18 = v8;
  v12 = v8;
  v13 = v7;
  v14 = [(HFTransformItem *)v10 initWithSourceItem:v11 transformationBlock:v16];

  return v14;
}

id __106__HFCharacteristicStateItemProvider__createBatteryItemWithSourceItem_characteristicType_valueFormatBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [MEMORY[0x277CD1970] localizedDescriptionForCharacteristicType:*(a1 + 32)];
  [v4 setObject:v5 forKeyedSubscript:@"title"];

  v6 = [HFCharacteristicGroup groupedTitleForCharacteristicType:*(a1 + 32)];
  [v4 setObject:v6 forKeyedSubscript:@"groupedTitle"];

  v7 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  [v4 setObject:v7 forKeyedSubscript:@"characteristicTypes"];

  v8 = (*(*(a1 + 40) + 16))();

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x277CBEC38];
  }

  v10 = HFResultHiddenKey;
  if (v8)
  {
    v10 = HFResultDisplayDescriptionKey;
  }

  [v4 setObject:v9 forKeyedSubscript:*v10];

  return v4;
}

@end