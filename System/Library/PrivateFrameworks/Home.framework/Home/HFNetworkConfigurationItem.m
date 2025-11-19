@interface HFNetworkConfigurationItem
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFNetworkConfigurationItem

uint64_t __51__HFNetworkConfigurationItem_defaultItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = v4;
  if (!v7)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (!v8)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v10 handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];

LABEL_7:
    v9 = 0;
  }

  v12 = objc_opt_class();
  v13 = v5;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v13;
    if (v14)
    {
      goto LABEL_15;
    }

    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v16 handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v12, objc_opt_class()}];
  }

  v15 = 0;
LABEL_15:

  v29 = v9;
  v18 = [v9 accessory];
  v19 = [v15 accessory];
  v20 = [v18 room];
  v21 = [v20 name];
  v22 = [v19 room];
  v23 = [v22 name];
  v24 = [v21 compare:v23];

  if (!v24)
  {
    v25 = [v18 name];
    v26 = [v19 name];
    v24 = [v25 compare:v26];

    if (!v24)
    {
      v27 = +[HFItemSection defaultItemComparator];
      v24 = (v27)[2](v27, v7, v13);
    }
  }

  return v24;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v8.receiver = self;
  v8.super_class = HFNetworkConfigurationItem;
  v4 = [(HFAccessoryProfileItem *)&v8 _subclass_updateWithOptions:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HFNetworkConfigurationItem__subclass_updateWithOptions___block_invoke;
  v7[3] = &unk_277DF43A8;
  v7[4] = self;
  v5 = [v4 flatMap:v7];

  return v5;
}

id __58__HFNetworkConfigurationItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [v3 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  v5 = [v4 mutableCopy];

  v6 = [*(a1 + 32) profile];
  v7 = [v6 accessory];
  v8 = [v7 home];
  [v5 addObject:v8];

  [v3 setObject:v5 forKeyedSubscript:@"dependentHomeKitObjects"];
  v9 = [*(a1 + 32) profile];
  v10 = [v9 accessory];
  v11 = [v10 name];
  [v3 setObject:v11 forKeyedSubscript:@"title"];

  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"shouldHideForNonAdminUsers"];
  v12 = MEMORY[0x277CCABB0];
  v13 = [*(a1 + 32) profile];
  v14 = [v12 numberWithInteger:{objc_msgSend(v13, "currentProtectionMode")}];
  [v3 setObject:v14 forKeyedSubscript:@"HFResultNetworkConfigurationTargetProtectionMode"];

  v15 = MEMORY[0x277CCABB0];
  v16 = [*(a1 + 32) profile];
  v17 = [v15 numberWithInteger:{objc_msgSend(v16, "targetProtectionMode")}];
  [v3 setObject:v17 forKeyedSubscript:@"HFResultNetworkConfigurationCurrentProtectionMode"];

  v18 = MEMORY[0x277CCABB0];
  v19 = [*(a1 + 32) profile];
  v20 = [v18 numberWithInt:{objc_msgSend(v19, "hf_targetProtectionModeIsValid") ^ 1}];
  [v3 setObject:v20 forKeyedSubscript:@"HFResultNetworkConfigurationInvalid"];

  v21 = MEMORY[0x277CCABB0];
  v22 = [*(a1 + 32) profile];
  v23 = [v22 accessory];
  v24 = [v23 home];
  v25 = [v21 numberWithInt:{objc_msgSend(v24, "hf_isNetworkProtectionSupportedForAccessories") ^ 1}];
  [v3 setObject:v25 forKeyedSubscript:@"HFResultNetworkConfigurationUnsupported"];

  v26 = MEMORY[0x277CCABB0];
  v27 = [*(a1 + 32) profile];
  v28 = [v27 accessory];
  v29 = [v28 home];
  v30 = [v26 numberWithInt:{objc_msgSend(v29, "hf_isNetworkProtectionEnabled") ^ 1}];
  [v3 setObject:v30 forKeyedSubscript:@"HFResultNetworkConfigurationDisabled"];

  v31 = [*(a1 + 32) profile];
  v32 = [v31 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];
  [v3 setObject:v32 forKeyedSubscript:@"description"];

  v33 = MEMORY[0x277CCABB0];
  v34 = [*(a1 + 32) profile];
  v35 = [v33 numberWithBool:{objc_msgSend(v34, "hf_hasProtectionModeMismatch")}];
  [v3 setObject:v35 forKeyedSubscript:@"HFResultNetworkConfigurationProtectionModeMismatch"];

  v36 = [*(a1 + 32) profile];
  v37 = [v36 allowedHosts];
  [v3 setObject:v37 forKeyedSubscript:@"HFResultNetworkConfigurationAllowedHosts"];

  v38 = MEMORY[0x277CBEB98];
  v39 = [*(a1 + 32) profile];
  v40 = [v38 setWithObject:v39];
  v41 = [HFNetworkConfigurationAllowedHostGroup groupsForNetworkConfigurationProfiles:v40];
  [v3 setObject:v41 forKeyedSubscript:@"HFResultNetworkConfigurationAllowedHostGroups"];

  v42 = MEMORY[0x277CCABB0];
  v43 = [*(a1 + 32) profile];
  v44 = [v43 targetProtectionMode];
  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v29 = [*(a1 + 32) profile];
    v45 = [v29 currentProtectionMode] == 4;
  }

  v46 = [v42 numberWithInt:v45];
  [v3 setObject:v46 forKeyedSubscript:@"HFResultNetworkConfigurationDisplayAllowedHostException"];

  if (!v44)
  {
  }

  [v3 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"HFResultNetworkConfigurationDisplayAllowedHostMismatch"];
  v47 = MEMORY[0x277CCABB0];
  v48 = [*(a1 + 32) profile];
  v49 = [v47 numberWithBool:{objc_msgSend(v48, "hf_hasCurrentNetworkAccessViolation")}];
  [v3 setObject:v49 forKeyedSubscript:@"HFResultNetworkConfigurationDisplayAccessViolation"];

  v50 = MEMORY[0x277CCABB0];
  v51 = [*(a1 + 32) profile];
  v52 = [v50 numberWithBool:{objc_msgSend(v51, "hf_requiresManualWiFiReconfiguration")}];
  [v3 setObject:v52 forKeyedSubscript:@"HFResultNetworkConfigurationRequiresManualWiFiReconfiguration"];

  v53 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v53;
}

@end