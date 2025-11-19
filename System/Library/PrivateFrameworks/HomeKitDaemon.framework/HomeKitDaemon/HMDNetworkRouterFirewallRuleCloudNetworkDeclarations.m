@interface HMDNetworkRouterFirewallRuleCloudNetworkDeclarations
+ (id)__decodeRuleConfigurationWithVersionString:(id)a3 ruleConfigurationValue:(id)a4 baseAccessoryIdentifier:(id)a5;
+ (id)__decodeRuleConfigurationsFromJSONDictionary:(id)a3 baseAccessoryIdentifier:(id)a4 allowUnzippedData:(BOOL)a5;
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (HMDNetworkRouterFirewallRuleCloudNetworkDeclarations)initWithBaseAccessoryIdentifier:(id)a3 name:(id)a4 lastModifiedTime:(id)a5 ruleConfigurationsByVersionString:(id)a6;
- (NSArray)ruleConfigurations;
- (NSDictionary)prettyJSONDictionary;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleCloudNetworkDeclarations

- (NSDictionary)prettyJSONDictionary
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self ruleConfigurations];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 accessoryIdentifier];
        v11 = [v10 firmwareVersion];
        v12 = [v11 versionString];

        v13 = [v9 prettyJSONDictionary];
        [v3 setObject:v13 forKeyedSubscript:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v6);
  }

  v25[0] = @"name";
  v14 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self name];
  v26[0] = v14;
  v25[1] = @"lastModifiedTime";
  v15 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self lastModifiedTime];
  v16 = [v15 description];
  v26[1] = v16;
  v25[2] = @"ruleConfigurations";
  v17 = [v3 copy];
  v26[2] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self baseAccessoryIdentifier];
  v5 = [v3 initWithName:@"BaseAccessoryIdentifier" value:v4];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self name];
  v8 = [v6 initWithName:@"Name" value:v7];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self lastModifiedTime];
  v11 = [v9 initWithName:@"LastModifiedTime" value:v10];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self ruleConfigurations];
  v14 = [v12 initWithName:@"RuleConfigurations" value:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (unint64_t)hash
{
  v3 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self name];
  v4 = [v3 hash];

  v5 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self lastModifiedTime];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self ruleConfigurations];
  v8 = [v7 hash];

  v9 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self baseAccessoryIdentifier];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
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
      v7 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self name];
      v8 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)v6 name];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self lastModifiedTime];
        v10 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)v6 lastModifiedTime];
        if ([v9 isEqual:v10])
        {
          v11 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self ruleConfigurationsByVersionString];
          v12 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)v6 ruleConfigurationsByVersionString];
          if ([v11 isEqualToDictionary:v12])
          {
            v16 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self baseAccessoryIdentifier];
            v13 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)v6 baseAccessoryIdentifier];
            v14 = [v16 isEqual:v13];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (NSArray)ruleConfigurations
{
  v2 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)self ruleConfigurationsByVersionString];
  v3 = [v2 allValues];

  return v3;
}

- (HMDNetworkRouterFirewallRuleCloudNetworkDeclarations)initWithBaseAccessoryIdentifier:(id)a3 name:(id)a4 lastModifiedTime:(id)a5 ruleConfigurationsByVersionString:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = HMDNetworkRouterFirewallRuleCloudNetworkDeclarations;
  v15 = [(HMDNetworkRouterFirewallRuleCloudNetworkDeclarations *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_baseAccessoryIdentifier, a3);
    objc_storeStrong(&v16->_name, a4);
    objc_storeStrong(&v16->_lastModifiedTime, a5);
    v17 = [v14 copy];
    ruleConfigurationsByVersionString = v16->_ruleConfigurationsByVersionString;
    v16->_ruleConfigurationsByVersionString = v17;

    v19 = v16;
  }

  return v16;
}

+ (id)__decodeRuleConfigurationWithVersionString:(id)a3 ruleConfigurationValue:(id)a4 baseAccessoryIdentifier:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_alloc(MEMORY[0x277D0F940]) initWithString:v8];
  if (v11)
  {
    v12 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14)
    {
      v15 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc];
      v16 = [v10 productGroup];
      v17 = [v10 productNumber];
      v18 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v15 initWithProductGroup:v16 productNumber:v17 firmwareVersion:v11];

      v19 = [[HMDNetworkRouterFirewallRuleConfiguration alloc] initWithAccessoryIdentifier:v18 jsonDictionary:v14];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = a1;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v30 = 138543874;
        v31 = v27;
        v32 = 2112;
        v33 = v8;
        v34 = 2112;
        v35 = v12;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Rule configuration for version '%@' is not a dictionary: %@", &v30, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      v19 = 0;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = a1;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v23;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Rule configuration contains an invalid version string: %@", &v30, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)__decodeRuleConfigurationsFromJSONDictionary:(id)a3 baseAccessoryIdentifier:(id)a4 allowUnzippedData:(BOOL)a5
{
  v5 = a5;
  v55 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v5)
  {
    v10 = [v8 objectForKeyedSubscript:@"v"];
    objc_opt_class();
    v11 = (objc_opt_isKindOfClass() & 1) != 0 ? v10 : 0;
    v12 = v11;

    if (v12)
    {
      goto LABEL_6;
    }
  }

  v50 = 0;
  v16 = decodeStringFromJSONDictionary(v8, @"v", 1, &v50);
  v17 = v50;
  v18 = v17;
  if ((v16 & 1) == 0)
  {

LABEL_26:
    v10 = 0;
    goto LABEL_27;
  }

  v19 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v17 options:0];
  if (!v19)
  {
    v27 = objc_autoreleasePoolPush();
    v28 = a1;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v30;
      *&buf[12] = 2112;
      *&buf[14] = @"v";
      *&buf[22] = 2112;
      v52 = v8;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@JSON contains '%@' value that is not valid base64: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v27);
    goto LABEL_26;
  }

  v20 = v19;
  v21 = [v19 hmd_uncompressedData];
  if (!v21)
  {
    v31 = objc_autoreleasePoolPush();
    v32 = a1;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v34;
      *&buf[12] = 2112;
      *&buf[14] = @"v";
      *&buf[22] = 2112;
      v52 = v8;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@JSON contains '%@' value that is not compressed properly: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v31);
    goto LABEL_26;
  }

  v49 = 0;
  v22 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v21 options:0 error:&v49];
  v43 = v49;
  if (v22)
  {
    v10 = v22;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v24 = v10;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;

    if (isKindOfClass)
    {
      v26 = 1;
      goto LABEL_36;
    }

    context = objc_autoreleasePoolPush();
    v40 = a1;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v41;
      *&buf[12] = 2112;
      *&buf[14] = @"v";
      *&buf[22] = 2112;
      v52 = v8;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@JSON contains a '%@' value that is not a dictionary: %@", buf, 0x20u);
    }
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v37 = a1;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138544130;
      *&buf[4] = v39;
      *&buf[12] = 2112;
      *&buf[14] = @"v";
      *&buf[22] = 2112;
      v52 = v8;
      v53 = 2112;
      v54 = v43;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@JSON contains '%@' value that is not valid JSON: %@: %@", buf, 0x2Au);
    }
  }

  objc_autoreleasePoolPop(context);
  v26 = 0;
  v10 = 0;
LABEL_36:

  if (v26)
  {
LABEL_6:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v52) = 0;
    v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v10, "count", context)}];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __143__HMDNetworkRouterFirewallRuleCloudNetworkDeclarations___decodeRuleConfigurationsFromJSONDictionary_baseAccessoryIdentifier_allowUnzippedData___block_invoke;
    v44[3] = &unk_278684300;
    v48 = a1;
    v45 = v9;
    v47 = buf;
    v14 = v13;
    v46 = v14;
    [v10 enumerateKeysAndObjectsUsingBlock:v44];
    if (*(*&buf[8] + 24))
    {
      v15 = 0;
    }

    else
    {
      v15 = [v14 copy];
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_28;
  }

LABEL_27:
  v15 = 0;
LABEL_28:

  v35 = *MEMORY[0x277D85DE8];

  return v15;
}

void __143__HMDNetworkRouterFirewallRuleCloudNetworkDeclarations___decodeRuleConfigurationsFromJSONDictionary_baseAccessoryIdentifier_allowUnzippedData___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = *(a1 + 56);
  v8 = a3;
  v9 = [objc_opt_class() __decodeRuleConfigurationWithVersionString:v10 ruleConfigurationValue:v8 baseAccessoryIdentifier:*(a1 + 32)];

  if (v9)
  {
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v10];
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_243154 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_243154, &__block_literal_global_243155);
  }

  v3 = logCategory__hmf_once_v1_243156;

  return v3;
}

void __67__HMDNetworkRouterFirewallRuleCloudNetworkDeclarations_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_243156;
  logCategory__hmf_once_v1_243156 = v1;
}

@end