@interface HUServiceDetailsShowContainedItemsInGroupItem
- (BOOL)hasAnyVisibleBridgedAccessories;
- (BOOL)hasAnyVisibleBridgedServices;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)sourceBridgeAccessory;
@end

@implementation HUServiceDetailsShowContainedItemsInGroupItem

- (id)_subclass_updateWithOptions:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v48 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsContainedServicesLabel", @"HUServiceDetailsContainedServicesLabel", 1);
  v6 = *MEMORY[0x277D13F60];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13F60]];

  [v4 setObject:@"AccessoryDetails.ContainedServices" forKeyedSubscript:*MEMORY[0x277D13DC8]];
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  LODWORD(v5) = [v8 conformsToProtocol:&unk_282587D40];

  if (v5)
  {
    v9 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
    v10 = &unk_282587D40;
    v11 = v9;
    if ([v11 conformsToProtocol:v10])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [v13 numberOfCompoundItems];
    v51[3] = v14;
    v15 = [v13 homeKitObject];
    [v7 na_safeAddObject:v15];
LABEL_16:

    goto LABEL_17;
  }

  if ([(HUServiceDetailsAbstractItem *)self isItemGroup])
  {
    v16 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
    v17 = &unk_28251B268;
    v18 = v16;
    if ([v18 conformsToProtocol:v17])
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    v21 = [v20 numberOfItemsContainedWithinGroup];
    v51[3] = v21;
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

    v15 = v22;

    if ([v15 isHomePodMediaSystem])
    {
      v23 = _HULocalizedStringWithDefaultValue(@"HUServiceDetailsContainedSpeakersLabel", @"HUServiceDetailsContainedSpeakersLabel", 1);
      [v4 setObject:v23 forKeyedSubscript:v6];
    }

    v24 = [v13 homeKitObject];
    [v7 addObject:v24];

    goto LABEL_16;
  }

LABEL_17:
  v25 = [(HUServiceDetailsShowContainedItemsInGroupItem *)self sourceBridgeAccessory];
  v26 = [v25 hf_bridgedAccessories];
  if ([(HUServiceDetailsAbstractItem *)self isBridge]&& ![(HUServiceDetailsAbstractItem *)self isService])
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __77__HUServiceDetailsShowContainedItemsInGroupItem__subclass_updateWithOptions___block_invoke;
    v49[3] = &unk_277DBFCD8;
    v49[4] = &v50;
    [v26 na_each:v49];
    [v7 na_safeAddObject:v25];
  }

  v27 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [(HUServiceDetailsAbstractItem *)self isMediaAccessoryGroup];

    if (!v28)
    {
      v29 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
      v30 = [v29 accessories];
      v31 = [v30 anyObject];
      v32 = [v31 hf_visibleServices];
      v33 = [v32 count];

      v34 = HFLogForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v45 = NSStringFromSelector(a2);
        v46 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
        *buf = 138413058;
        v55 = self;
        v56 = 2112;
        v57 = v45;
        v58 = 2048;
        v59 = v33;
        v60 = 2112;
        v61 = v46;
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
    v36 = [v25 uniqueIdentifiersForBridgedAccessories];
    v37 = [v36 count];
    v51[3] = v37 + v35;

    [v7 addObject:v26];
  }

  if (v51[3] < 1)
  {
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
  }

  else
  {
    v38 = MEMORY[0x277CCABB8];
    v39 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v40 = [v38 localizedStringFromNumber:v39 numberStyle:0];
    [v4 setObject:v40 forKeyedSubscript:*MEMORY[0x277D13E20]];

    [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13DA8]];
  }

  v41 = MEMORY[0x277D2C900];
  v42 = [MEMORY[0x277D14780] outcomeWithResults:v4];
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
  v3 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
  v6 = v5;
  if (isKindOfClass)
  {
    v7 = [v5 service];
    v8 = [v7 accessory];

LABEL_5:
    goto LABEL_7;
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v6 = [(HUServiceDetailsAbstractItem *)self sourceServiceItem];
    v8 = [v6 accessory];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

- (BOOL)hasAnyVisibleBridgedServices
{
  v3 = [(HUServiceDetailsAbstractItem *)self isBridge];
  if (v3)
  {
    v4 = [(HUServiceDetailsShowContainedItemsInGroupItem *)self sourceBridgeAccessory];
    v5 = [v4 hf_servicesBehindBridge];
    v6 = [v5 na_any:&__block_literal_global_248];

    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)hasAnyVisibleBridgedAccessories
{
  v3 = [(HUServiceDetailsAbstractItem *)self isBridge];
  if (v3)
  {
    v4 = [(HUServiceDetailsShowContainedItemsInGroupItem *)self sourceBridgeAccessory];
    v5 = [v4 hf_bridgedAccessories];
    v6 = [v5 na_any:&__block_literal_global_83_1];

    LOBYTE(v3) = v6;
  }

  return v3;
}

@end