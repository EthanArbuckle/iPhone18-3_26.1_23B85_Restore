@interface HMDNetworkRouterHomeKitOnlyFirewallConfiguration
+ (id)fallbackConfigurationForRuleset:(id)ruleset;
+ (id)fallbackIdentifier;
- (HMDNetworkRouterHomeKitOnlyFirewallConfiguration)initWithAccessory:(id)accessory sourceConfiguration:(id)configuration;
- (id)description;
@end

@implementation HMDNetworkRouterHomeKitOnlyFirewallConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if (self->_isFiltered)
  {
    [(HMDNetworkRouterFirewallRuleConfiguration *)self hasFullAccessToLAN];
    v4 = HMFBooleanToString();
    lanRules = [(HMDNetworkRouterFirewallRuleConfiguration *)self lanRules];
    v6 = [lanRules count];
    wanRules = [(HMDNetworkRouterFirewallRuleConfiguration *)self wanRules];
    v8 = [v3 stringWithFormat:@"<HomeKitOnly filtered Full LAN = %@, # LAN rules = %lu, # WAN rules = %lu>", v4, v6, objc_msgSend(wanRules, "count")];
  }

  else
  {
    useFallbackForRTP = self->_useFallbackForRTP;
    v4 = HMFBooleanToString();
    useFallbackForHDS = self->_useFallbackForHDS;
    lanRules = HMFBooleanToString();
    v8 = [v3 stringWithFormat:@"<HomeKitOnly synthetic RTP = %@, HDS = %@>", v4, lanRules];
  }

  return v8;
}

- (HMDNetworkRouterHomeKitOnlyFirewallConfiguration)initWithAccessory:(id)accessory sourceConfiguration:(id)configuration
{
  v51 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  configurationCopy = configuration;
  v46 = 0;
  array = [MEMORY[0x277CBEB18] array];
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  if (configurationCopy)
  {
    accessoryIdentifier = [configurationCopy accessoryIdentifier];
    lastModifiedTime = [configurationCopy lastModifiedTime];
    lanRules = [configurationCopy lanRules];

    if (!lanRules)
    {
      goto LABEL_20;
    }

    lanRules2 = [configurationCopy lanRules];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __90__HMDNetworkRouterHomeKitOnlyFirewallConfiguration_initWithAccessory_sourceConfiguration___block_invoke;
    v36[3] = &unk_27972A378;
    v37 = array;
    [lanRules2 hmf_enumerateWithAutoreleasePoolUsingBlock:v36];

    LOBYTE(lanRules) = 0;
    v12 = v37;
  }

  else
  {
    accessoryIdentifier = [objc_opt_class() fallbackIdentifier];
    lastModifiedTime = [MEMORY[0x277CBEAA8] distantPast];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__HMDNetworkRouterHomeKitOnlyFirewallConfiguration_initWithAccessory_sourceConfiguration___block_invoke_2;
    aBlock[3] = &unk_27972A3A0;
    aBlock[4] = &v42;
    aBlock[5] = &v38;
    v12 = _Block_copy(aBlock);
    v13 = accessoryCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v15)
    {
      v12[2](v12, v15);
      identifiersForBridgedAccessories = [v15 identifiersForBridgedAccessories];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __90__HMDNetworkRouterHomeKitOnlyFirewallConfiguration_initWithAccessory_sourceConfiguration___block_invoke_3;
      v32[3] = &unk_27972A3C8;
      v33 = v15;
      v34 = v12;
      [identifiersForBridgedAccessories hmf_enumerateWithAutoreleasePoolUsingBlock:v32];

      if (*(v43 + 24) == 1)
      {
        context = objc_autoreleasePoolPush();
        selfCopy = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543618;
          v48 = v19;
          v49 = 2112;
          v50 = @"RTP";
          _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Adding fallback LAN rules for %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v20 = [objc_opt_class() fallbackConfigurationForRuleset:@"RTP"];
        addFallbackLANRules(&v46, array, v20);
      }

      if (*(v39 + 24) == 1)
      {
        context = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543618;
          v48 = v23;
          v49 = 2112;
          v50 = @"HDS";
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Adding fallback LAN rules for %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v24 = [objc_opt_class() fallbackConfigurationForRuleset:@"HDS"];
        addFallbackLANRules(&v46, array, v24);
      }

      LOBYTE(lanRules) = v46;
    }

    else
    {
      LOBYTE(lanRules) = 0;
    }
  }

LABEL_20:
  v25 = [array copy];
  v31.receiver = self;
  v31.super_class = HMDNetworkRouterHomeKitOnlyFirewallConfiguration;
  v26 = [(HMDNetworkRouterFirewallRuleConfiguration *)&v31 initWithAccessoryIdentifier:accessoryIdentifier lastModifiedTime:lastModifiedTime fullAccessLAN:lanRules & 1 lanRules:v25 fullAccessWAN:0 wanRules:MEMORY[0x277CBEBF8]];

  if (v26)
  {
    v26->_isFiltered = configurationCopy != 0;
    v26->_useFallbackForRTP = *(v43 + 24);
    v26->_useFallbackForHDS = *(v39 + 24);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

void __90__HMDNetworkRouterHomeKitOnlyFirewallConfiguration_initWithAccessory_sourceConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isRequiredForHAPFunctionality])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void __90__HMDNetworkRouterHomeKitOnlyFirewallConfiguration_initWithAccessory_sourceConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277CD0E00];
  v4 = a2;
  v5 = [v4 findServiceWithServiceType:v3];

  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v6 = [v4 findServiceWithServiceType:@"00000129-0000-1000-8000-0026BB765291"];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __90__HMDNetworkRouterHomeKitOnlyFirewallConfiguration_initWithAccessory_sourceConfiguration___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 home];
  v6 = [v5 accessoryWithUUID:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7;

  v8 = v9;
  if (v9)
  {
    (*(*(a1 + 40) + 16))();
    v8 = v9;
  }
}

+ (id)fallbackConfigurationForRuleset:(id)ruleset
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HMDNetworkRouterHomeKitOnlyFirewallConfiguration_fallbackConfigurationForRuleset___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = fallbackConfigurationForRuleset__once;
  rulesetCopy = ruleset;
  if (v3 != -1)
  {
    dispatch_once(&fallbackConfigurationForRuleset__once, block);
  }

  v5 = [fallbackConfigurationForRuleset__fallback objectForKeyedSubscript:rulesetCopy];

  return v5;
}

void __84__HMDNetworkRouterHomeKitOnlyFirewallConfiguration_fallbackConfigurationForRuleset___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:*(a1 + 32)];
  v3 = [v2 pathForResource:@"NetworkProtectionRules" ofType:@"plist"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __84__HMDNetworkRouterHomeKitOnlyFirewallConfiguration_fallbackConfigurationForRuleset___block_invoke_20;
      v22 = &unk_27972A350;
      v6 = *(a1 + 32);
      v23 = v5;
      v24 = v6;
      v7 = v5;
      [v4 enumerateKeysAndObjectsUsingBlock:&v19];
      v8 = [v7 copy];
      v9 = fallbackConfigurationForRuleset__fallback;
      fallbackConfigurationForRuleset__fallback = v8;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to load fallback network protection rules", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unable to locate fallback network protection rules", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __84__HMDNetworkRouterHomeKitOnlyFirewallConfiguration_fallbackConfigurationForRuleset___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13 || (v14 = [HMDNetworkRouterFirewallRuleConfiguration alloc], [*(a1 + 40) fallbackIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[HMDNetworkRouterFirewallRuleConfiguration initWithAccessoryIdentifier:jsonDictionary:](v14, "initWithAccessoryIdentifier:jsonDictionary:", v15, v12), v15, !v16))
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v22 = 138543618;
      v23 = v20;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse fallback network protection rules for '%@'", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  else
  {
    [*(a1 + 32) setObject:v16 forKeyedSubscript:v9];
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)fallbackIdentifier
{
  v2 = [objc_alloc(MEMORY[0x277D0F940]) initWithMajorVersion:0 minorVersion:0 updateVersion:0];
  v3 = [[HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc] initWithProductGroup:@"00000000" productNumber:@"00000000" firmwareVersion:v2];

  return v3;
}

@end