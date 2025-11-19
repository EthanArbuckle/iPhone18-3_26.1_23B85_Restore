@interface HMDNetworkRouterFirewallRule
+ (id)logCategory;
- (BOOL)isEqual:(id)a3;
- (HMDNetworkRouterFirewallRule)initWithJSONDictionary:(id)a3 name:(id)a4 critical:(BOOL)a5;
- (NSDictionary)prettyJSONDictionary;
- (NSString)jsonString;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRule

- (NSString)jsonString
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(HMDNetworkRouterFirewallRule *)self jsonDictionary];
  if (v3)
  {
    v15 = 0;
    v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:2 error:&v15];
    v5 = v15;
    if (v4)
    {
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      v8 = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543874;
        v17 = v10;
        v18 = 2112;
        v19 = v8;
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Failed to convert firewall WAN rule %@ to JSON: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
      v11 = [[HMDAssertionLogEvent alloc] initWithReason:@"Failed to convert firewall WAN rule %@ to JSON: %@", v8, v5];
      v12 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v12 submitLogEvent:v11];

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSDictionary)prettyJSONDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"name";
  v2 = [(HMDNetworkRouterFirewallRule *)self name];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDNetworkRouterFirewallRule *)self name];
  v5 = [v3 initWithName:@"Name" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRule isCritical](self, "isCritical")}];
  v8 = [v6 initWithName:@"IsCritical" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(HMDNetworkRouterFirewallRule *)self name];
  v4 = [v3 hash];

  return v4 ^ [(HMDNetworkRouterFirewallRule *)self isCritical];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v10) = 1;
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
      v7 = [(HMDNetworkRouterFirewallRule *)self name];
      v8 = [(HMDNetworkRouterFirewallRule *)v6 name];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(HMDNetworkRouterFirewallRule *)self isCritical];
        v10 = v9 ^ [(HMDNetworkRouterFirewallRule *)v6 isCritical]^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (HMDNetworkRouterFirewallRule)initWithJSONDictionary:(id)a3 name:(id)a4 critical:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = HMDNetworkRouterFirewallRule;
  v11 = [(HMDNetworkRouterFirewallRule *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a4);
    v12->_critical = a5;
    objc_storeStrong(&v12->_jsonDictionary, a3);
    v13 = v12;
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_134733 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_134733, &__block_literal_global_134734);
  }

  v3 = logCategory__hmf_once_v1_134735;

  return v3;
}

void __43__HMDNetworkRouterFirewallRule_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_134735;
  logCategory__hmf_once_v1_134735 = v1;
}

@end