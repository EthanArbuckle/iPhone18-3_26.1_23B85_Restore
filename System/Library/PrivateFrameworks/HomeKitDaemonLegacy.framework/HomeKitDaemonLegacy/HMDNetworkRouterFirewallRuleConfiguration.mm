@interface HMDNetworkRouterFirewallRuleConfiguration
+ (BOOL)__decodeFullAccessFromNetworkDeclarations:(id)a3 key:(id)a4 fullAccess:(BOOL *)a5;
+ (BOOL)__decodeNetworkDeclarationsFromJSONDictionary:(id)a3 networkDeclarations:(id *)a4;
+ (id)__decodeRulesFromNetworkDeclarations:(id)a3 key:(id)a4 class:(Class)a5 required:(BOOL)a6;
+ (id)logCategory;
- (BOOL)hasAirplayRules;
- (BOOL)isEqual:(id)a3;
- (HMDNetworkRouterFirewallRuleConfiguration)initWithAccessoryIdentifier:(id)a3 jsonDictionary:(id)a4;
- (HMDNetworkRouterFirewallRuleConfiguration)initWithAccessoryIdentifier:(id)a3 lastModifiedTime:(id)a4 fullAccessLAN:(BOOL)a5 lanRules:(id)a6 fullAccessWAN:(BOOL)a7 wanRules:(id)a8;
- (NSDictionary)prettyJSONDictionary;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleConfiguration

- (BOOL)hasAirplayRules
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [(HMDNetworkRouterFirewallRuleConfiguration *)self lanRules];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = *v17;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }

        v8 = v7;

        if (v8)
        {
          v9 = [v8 direction];
          v10 = [v8 advertisingProtocol];
          v11 = [v8 serviceType];
          v12 = [v11 isEqual:@"airplay"];

          v13 = v9 == 1 && v10 == 0;
          if (v13 && (v12 & 1) != 0)
          {

            LOBYTE(v3) = 1;
            goto LABEL_20;
          }
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (NSDictionary)prettyJSONDictionary
{
  v25[6] = *MEMORY[0x277D85DE8];
  v3 = [HMDNetworkRouterClientConfiguration configurationForFirewallConfiguration:self hapAccessory:1 airplayAccessory:0 withClientIdentifier:0];
  v4 = [v3 fingerprint];

  v24[0] = @"lastModifiedTime";
  v23 = [(HMDNetworkRouterFirewallRuleConfiguration *)self lastModifiedTime];
  v22 = [v23 description];
  v25[0] = v22;
  v24[1] = @"lanRules";
  v21 = [(HMDNetworkRouterFirewallRuleConfiguration *)self lanRules];
  v20 = [v21 na_map:&__block_literal_global_51_184296];
  v5 = [v20 copy];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB68] null];
  }

  v25[1] = v5;
  v24[2] = @"hasFullAccessToLAN";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToLAN](self, "hasFullAccessToLAN", v5)}];
  v25[2] = v19;
  v24[3] = @"wanRules";
  v7 = [(HMDNetworkRouterFirewallRuleConfiguration *)self wanRules];
  v8 = [v7 na_map:&__block_literal_global_61];
  v9 = [v8 copy];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v25[3] = v10;
  v24[4] = @"hasFullAccessToWAN";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToWAN](self, "hasFullAccessToWAN")}];
  v25[4] = v11;
  v24[5] = @"fingerprint";
  v12 = v4;
  v13 = [v4 UUIDString];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x277CBEB68] null];
  }

  v25[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:6];
  if (!v13)
  {
  }

  if (!v9)
  {
  }

  if (!v6)
  {
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)attributeDescriptions
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v23 = [(HMDNetworkRouterFirewallRuleConfiguration *)self accessoryIdentifier];
  v22 = [v3 initWithName:@"AccessoryIdentifier" value:v23];
  v24[0] = v22;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v21 = [(HMDNetworkRouterFirewallRuleConfiguration *)self lastModifiedTime];
  v5 = [v4 initWithName:@"LastModifiedTime" value:v21];
  v24[1] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToLAN](self, "hasFullAccessToLAN")}];
  v8 = [v6 initWithName:@"FullAccessLAN" value:v7];
  v24[2] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToWAN](self, "hasFullAccessToWAN")}];
  v11 = [v9 initWithName:@"FullAccessWAN" value:v10];
  v24[3] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  v13 = [(HMDNetworkRouterFirewallRuleConfiguration *)self lanRules];
  v14 = [v12 initWithName:@"LANRules" value:v13];
  v24[4] = v14;
  v15 = objc_alloc(MEMORY[0x277D0F778]);
  v16 = [(HMDNetworkRouterFirewallRuleConfiguration *)self wanRules];
  v17 = [v15 initWithName:@"WANRules" value:v16];
  v24[5] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:6];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (unint64_t)hash
{
  v3 = [(HMDNetworkRouterFirewallRuleConfiguration *)self accessoryIdentifier];
  v4 = [v3 hash];

  v5 = [(HMDNetworkRouterFirewallRuleConfiguration *)self lanRules];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDNetworkRouterFirewallRuleConfiguration *)self wanRules];
  v8 = v6 ^ [v7 hash];

  v9 = [(HMDNetworkRouterFirewallRuleConfiguration *)self hasFullAccessToLAN];
  v10 = v8 ^ v9 ^ [(HMDNetworkRouterFirewallRuleConfiguration *)self hasFullAccessToWAN];
  v11 = [(HMDNetworkRouterFirewallRuleConfiguration *)self lastModifiedTime];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
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
      v7 = [(HMDNetworkRouterFirewallRuleConfiguration *)self accessoryIdentifier];
      v8 = [(HMDNetworkRouterFirewallRuleConfiguration *)v6 accessoryIdentifier];
      if ([v7 isEqual:v8])
      {
        v9 = [(HMDNetworkRouterFirewallRuleConfiguration *)self lanRules];
        v10 = [(HMDNetworkRouterFirewallRuleConfiguration *)v6 lanRules];
        if ([v9 isEqualToArray:v10])
        {
          v11 = [(HMDNetworkRouterFirewallRuleConfiguration *)self wanRules];
          v12 = [(HMDNetworkRouterFirewallRuleConfiguration *)v6 wanRules];
          if ([v11 isEqualToArray:v12] && (v13 = -[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToLAN](self, "hasFullAccessToLAN"), v13 == -[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToLAN](v6, "hasFullAccessToLAN")) && (v14 = -[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToWAN](self, "hasFullAccessToWAN"), v14 == -[HMDNetworkRouterFirewallRuleConfiguration hasFullAccessToWAN](v6, "hasFullAccessToWAN")))
          {
            v18 = [(HMDNetworkRouterFirewallRuleConfiguration *)self lastModifiedTime];
            v17 = [(HMDNetworkRouterFirewallRuleConfiguration *)v6 lastModifiedTime];
            v15 = [v18 isEqual:v17];
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (HMDNetworkRouterFirewallRuleConfiguration)initWithAccessoryIdentifier:(id)a3 jsonDictionary:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 firmwareVersion];

  if (v8)
  {
    v25 = 0;
    v9 = decodeTimeFromJSONDictionary(v7, @"t", &v25);
    v10 = v25;
    if (v9)
    {
      v24 = 0;
      v11 = [objc_opt_class() __decodeNetworkDeclarationsFromJSONDictionary:v7 networkDeclarations:&v24];
      v12 = v24;
      if (v11 && (buf[0] = 0, [objc_opt_class() __decodeFullAccessFromNetworkDeclarations:v12 key:@"l" fullAccess:buf]))
      {
        v13 = objc_opt_class();
        v14 = [v13 __decodeRulesFromNetworkDeclarations:v12 key:@"m" class:objc_opt_class() required:(buf[0] & 1) == 0];
        if (v14 && (v23 = 0, [objc_opt_class() __decodeFullAccessFromNetworkDeclarations:v12 key:@"w" fullAccess:&v23]))
        {
          v15 = objc_opt_class();
          v16 = [v15 __decodeRulesFromNetworkDeclarations:v12 key:@"x" class:objc_opt_class() required:(v23 & 1) == 0];
          if (v16)
          {
            self = [(HMDNetworkRouterFirewallRuleConfiguration *)self initWithAccessoryIdentifier:v6 lastModifiedTime:v10 fullAccessLAN:buf[0] lanRules:v14 fullAccessWAN:v23 wanRules:v16];
            v17 = self;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    self = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Network declaration must contain firmware version: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

- (HMDNetworkRouterFirewallRuleConfiguration)initWithAccessoryIdentifier:(id)a3 lastModifiedTime:(id)a4 fullAccessLAN:(BOOL)a5 lanRules:(id)a6 fullAccessWAN:(BOOL)a7 wanRules:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = HMDNetworkRouterFirewallRuleConfiguration;
  v18 = [(HMDNetworkRouterFirewallRuleConfiguration *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_accessoryIdentifier, a3);
    objc_storeStrong(&v19->_lastModifiedTime, a4);
    v19->_fullAccessLAN = a5;
    objc_storeStrong(&v19->_lanRules, a6);
    v19->_fullAccessWAN = a7;
    objc_storeStrong(&v19->_wanRules, a8);
    v20 = v19;
  }

  return v19;
}

+ (id)__decodeRulesFromNetworkDeclarations:(id)a3 key:(id)a4 class:(Class)a5 required:(BOOL)a6
{
  v6 = a6;
  v63 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    objc_opt_class();
    v15 = objc_opt_isKindOfClass() & 1;
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (v15)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v18 = [v14 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v18)
      {
        v19 = v18;
        v47 = a1;
        v48 = v13;
        v20 = 0;
        v21 = *v53;
        v49 = v11;
        v50 = v10;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v53 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v52 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }

            v25 = v24;

            if (!v25)
            {
              v41 = objc_autoreleasePoolPush();
              v42 = v47;
              v43 = HMFGetOSLogHandle();
              v11 = v49;
              v10 = v50;
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                v44 = HMFGetLogIdentifier();
                *buf = 138543874;
                v58 = v44;
                v59 = 2112;
                v60 = v49;
                v61 = 2112;
                v62 = v50;
                _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Network declaration contains an invalid rule in '%@' value: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v41);
              v33 = 0;
              v39 = v17;
              goto LABEL_41;
            }

            v51 = 0;
            v26 = [(objc_class *)a5 createWithJSONDictionary:v25 error:&v51];
            v27 = v51;
            v28 = v27;
            if (v26)
            {
              if (v20)
              {
                [v20 addObject:v26];
              }

              else
              {
                v20 = [MEMORY[0x277CBEB18] arrayWithObject:v26];
              }
            }

            else if (![v27 isHMError] || objc_msgSend(v28, "code") != 1070)
            {

              v33 = 0;
              v39 = v17;
              v11 = v49;
              v10 = v50;
LABEL_41:
              v13 = v48;
              goto LABEL_42;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v52 objects:v56 count:16];
          v11 = v49;
          v10 = v50;
          v13 = v48;
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v20 = 0;
      }

      v38 = [v20 copy];
      v39 = v38;
      v40 = MEMORY[0x277CBEBF8];
      if (v38)
      {
        v40 = v38;
      }

      v33 = v40;
LABEL_42:
    }

    else
    {
      v34 = objc_autoreleasePoolPush();
      v35 = a1;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543874;
        v58 = v37;
        v59 = 2112;
        v60 = v11;
        v61 = 2112;
        v62 = v10;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Network declaration contains an invalid '%@' value: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v34);
      v33 = 0;
    }
  }

  else if (v6)
  {
    v29 = objc_autoreleasePoolPush();
    v30 = a1;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543874;
      v58 = v32;
      v59 = 2112;
      v60 = v11;
      v61 = 2112;
      v62 = v10;
      _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Network declaration contains no '%@' value: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v29);
    v33 = 0;
  }

  else
  {
    v33 = MEMORY[0x277CBEBF8];
  }

  v45 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (BOOL)__decodeFullAccessFromNetworkDeclarations:(id)a3 key:(id)a4 fullAccess:(BOOL *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v21 = 0;
  v10 = decodeUnsignedIntegerFromJSONDictionary(v8, v9, 1, 0xFFuLL, &v21);
  v11 = v21;
  v12 = v11;
  if (!v10)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v13 = [v11 unsignedIntegerValue];
  if (v13 == 1)
  {
    *a5 = 0;
    v14 = 1;
    goto LABEL_10;
  }

  if (v13)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = a1;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v18;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Network declaration contains an invalid '%@' value: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    goto LABEL_9;
  }

  v14 = 1;
  *a5 = 1;
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (BOOL)__decodeNetworkDeclarationsFromJSONDictionary:(id)a3 networkDeclarations:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"n"];
  v8 = v7;
  if (!v7)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = a1;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = @"n";
      v26 = 2112;
      v27 = v6;
      v18 = "%{public}@JSON contains no '%@' value: %@";
LABEL_11:
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, v18, &v22, 0x20u);
    }

LABEL_12:

    objc_autoreleasePoolPop(v14);
    v13 = 0;
    goto LABEL_13;
  }

  v9 = v7;
  objc_opt_class();
  v10 = objc_opt_isKindOfClass() & 1;
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  *a4 = v11;
  if (!v10)
  {
    v14 = objc_autoreleasePoolPush();
    v19 = a1;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v22 = 138543874;
      v23 = v17;
      v24 = 2112;
      v25 = @"n";
      v26 = 2112;
      v27 = v6;
      v18 = "%{public}@JSON contains an invalid '%@' value: %@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v13 = 1;
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_184382 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_184382, &__block_literal_global_184383);
  }

  v3 = logCategory__hmf_once_v1_184384;

  return v3;
}

uint64_t __56__HMDNetworkRouterFirewallRuleConfiguration_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_184384;
  logCategory__hmf_once_v1_184384 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end