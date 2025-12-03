@interface HUServiceDetailsShowContainedItemsInGroupItem
- (BOOL)hasAnyVisibleBridgedAccessories;
- (BOOL)hasAnyVisibleBridgedServices;
- (id)_subclass_updateWithOptions:(id)options;
- (id)sourceBridgeAccessory;
@end

@implementation HUServiceDetailsShowContainedItemsInGroupItem

- (id)_subclass_updateWithOptions:(id)options
{
  v62 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsContainedServicesLabel", @"HUServiceDetailsContainedServicesLabel", 1);
  v6 = *MEMORY[0x277D13F60];
  [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [dictionary setObject:@"AccessoryDetails.ContainedServices" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v7 = [MEMORY[0x277CBEB58] set];
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  LODWORD(v5) = [sourceServiceItem conformsToProtocol:&unk_282587D40];

  if (v5)
  {
    sourceServiceItem2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
    v10 = &unk_282587D40;
    v11 = sourceServiceItem2;
    if ([v11 conformsToProtocol:v10])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    numberOfCompoundItems = [v13 numberOfCompoundItems];
    v51[3] = numberOfCompoundItems;
    homeKitObject = [v13 homeKitObject];
    [v7 na_safeAddObject:homeKitObject];
LABEL_16:

    goto LABEL_17;
  }

  if ([(HUServiceDetailsAbstractItem *)self isItemGroup])
  {
    sourceServiceItem3 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
    v17 = &unk_28251B268;
    v18 = sourceServiceItem3;
    if ([v18 conformsToProtocol:v17])
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    numberOfItemsContainedWithinGroup = [v20 numberOfItemsContainedWithinGroup];
    v51[3] = numberOfItemsContainedWithinGroup;
    objc_opt_class();
    v13 = v20;
    if (objc_opt_isKindOfClass())
    {
      v22 = v13;
    }

    else
    {
      v22 = 0;
    }

    homeKitObject = v22;

    if ([homeKitObject isHomePodMediaSystem])
    {
      v23 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsContainedSpeakersLabel", @"HUServiceDetailsContainedSpeakersLabel", 1);
      [dictionary setObject:v23 forKeyedSubscript:v6];
    }

    homeKitObject2 = [v13 homeKitObject];
    [v7 addObject:homeKitObject2];

    goto LABEL_16;
  }

LABEL_17:
  sourceBridgeAccessory = [(HUServiceDetailsShowContainedItemsInGroupItem *)self sourceBridgeAccessory];
  hf_bridgedAccessories = [sourceBridgeAccessory hf_bridgedAccessories];
  if ([(HUServiceDetailsAbstractItem *)self isBridge]&& ![(HUServiceDetailsAbstractItem *)self isService])
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __77__HUServiceDetailsShowContainedItemsInGroupItem__subclass_updateWithOptions___block_invoke;
    v49[3] = &unk_277DBFCD8;
    v49[4] = &v50;
    [hf_bridgedAccessories na_each:v49];
    [v7 na_safeAddObject:sourceBridgeAccessory];
  }

  sourceServiceItem4 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isMediaAccessoryGroup = [(HUServiceDetailsAbstractItem *)self isMediaAccessoryGroup];

    if (!isMediaAccessoryGroup)
    {
      sourceServiceItem5 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
      accessories = [sourceServiceItem5 accessories];
      anyObject = [accessories anyObject];
      hf_visibleServices = [anyObject hf_visibleServices];
      v33 = [hf_visibleServices count];

      v34 = HFLogForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v45 = NSStringFromSelector(a2);
        sourceServiceItem6 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
        *buf = 138413058;
        selfCopy = self;
        v56 = 2112;
        v57 = v45;
        v58 = 2048;
        v59 = v33;
        v60 = 2112;
        v61 = sourceServiceItem6;
        _os_log_error_impl(&dword_20CEB6000, v34, OS_LOG_TYPE_ERROR, "%@:%@ Adding %ld, visible services to count for media accessory %@", buf, 0x2Au);
      }

      v51[3] += v33;
    }
  }

  else
  {
  }

  if ([(HUServiceDetailsShowContainedItemsInGroupItem *)self hasAnyVisibleBridgedAccessories])
  {
    v35 = v51[3];
    uniqueIdentifiersForBridgedAccessories = [sourceBridgeAccessory uniqueIdentifiersForBridgedAccessories];
    v37 = [uniqueIdentifiersForBridgedAccessories count];
    v51[3] = v37 + v35;

    [v7 addObject:hf_bridgedAccessories];
  }

  if (v51[3] < 1)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  else
  {
    v38 = MEMORY[0x277CCABB8];
    v39 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v40 = [v38 localizedStringFromNumber:v39 numberStyle:0];
    [dictionary setObject:v40 forKeyedSubscript:*MEMORY[0x277D13E20]];

    [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x277D13DA8]];
  }

  v41 = MEMORY[0x277D2C900];
  v42 = [MEMORY[0x277D14780] outcomeWithResults:dictionary];
  v43 = [v41 futureWithResult:v42];

  _Block_object_dispose(&v50, 8);

  return v43;
}

void __77__HUServiceDetailsShowContainedItemsInGroupItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 hf_showAsIndividualServices])
  {
    v3 = [v4 hf_visibleServices];
    *(*(*(a1 + 32) + 8) + 24) += [v3 count];
  }

  else
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (id)sourceBridgeAccessory
{
  sourceServiceItem = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  sourceServiceItem2 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  sourceServiceItem3 = sourceServiceItem2;
  if (isKindOfClass)
  {
    service = [sourceServiceItem2 service];
    accessory = [service accessory];

LABEL_5:
    goto LABEL_7;
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    sourceServiceItem3 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
    accessory = [sourceServiceItem3 accessory];
    goto LABEL_5;
  }

  accessory = 0;
LABEL_7:

  return accessory;
}

- (BOOL)hasAnyVisibleBridgedServices
{
  isBridge = [(HUServiceDetailsAbstractItem *)self isBridge];
  if (isBridge)
  {
    sourceBridgeAccessory = [(HUServiceDetailsShowContainedItemsInGroupItem *)self sourceBridgeAccessory];
    hf_servicesBehindBridge = [sourceBridgeAccessory hf_servicesBehindBridge];
    v6 = [hf_servicesBehindBridge na_any:&__block_literal_global_248];

    LOBYTE(isBridge) = v6;
  }

  return isBridge;
}

- (BOOL)hasAnyVisibleBridgedAccessories
{
  isBridge = [(HUServiceDetailsAbstractItem *)self isBridge];
  if (isBridge)
  {
    sourceBridgeAccessory = [(HUServiceDetailsShowContainedItemsInGroupItem *)self sourceBridgeAccessory];
    hf_bridgedAccessories = [sourceBridgeAccessory hf_bridgedAccessories];
    v6 = [hf_bridgedAccessories na_any:&__block_literal_global_83_1];

    LOBYTE(isBridge) = v6;
  }

  return isBridge;
}

@end