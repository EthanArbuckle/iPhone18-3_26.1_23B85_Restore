@interface HMDNetworkRouterFirewallRuleWANSubject
- (BOOL)isEqual:(id)a3;
- (HMDNetworkRouterFirewallRuleWANSubject)initWithHostnames:(id)a3 addresses:(id)a4 addressRange:(id)a5;
- (id)attributeDescriptions;
- (id)prettyJSONDictionary;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleWANSubject

- (id)prettyJSONDictionary
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDNetworkRouterFirewallRuleWANSubject *)self hostnames];

  if (v3)
  {
    v17 = @"hostnames";
    v4 = [(HMDNetworkRouterFirewallRuleWANSubject *)self hostnames];
    v18[0] = v4;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v18;
    v7 = &v17;
LABEL_5:
    v10 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:1];
LABEL_6:
    v11 = v10;

    goto LABEL_7;
  }

  v8 = [(HMDNetworkRouterFirewallRuleWANSubject *)self addresses];

  if (v8)
  {
    v9 = [(HMDNetworkRouterFirewallRuleWANSubject *)self addresses];
    v4 = [v9 na_map:&__block_literal_global_144053];

    v15 = @"addresses";
    v16 = v4;
    v5 = MEMORY[0x277CBEAC0];
    v6 = &v16;
    v7 = &v15;
    goto LABEL_5;
  }

  v14 = [(HMDNetworkRouterFirewallRuleWANSubject *)self addressRange];

  if (v14)
  {
    v4 = [(HMDNetworkRouterFirewallRuleWANSubject *)self addressRange];
    v10 = [v4 prettyJSONDictionary];
    goto LABEL_6;
  }

  v11 = MEMORY[0x277CBEC10];
LABEL_7:
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDNetworkRouterFirewallRuleWANSubject *)self hostnames];
  v5 = [v3 initWithName:@"Hostnames" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDNetworkRouterFirewallRuleWANSubject *)self addresses];
  v8 = [v6 initWithName:@"Addresses" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMDNetworkRouterFirewallRuleWANSubject *)self addressRange];
  v11 = [v9 initWithName:@"AddressRange" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (unint64_t)hash
{
  v3 = [(HMDNetworkRouterFirewallRuleWANSubject *)self hostnames];
  v4 = [v3 hash];

  v5 = [(HMDNetworkRouterFirewallRuleWANSubject *)self addresses];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDNetworkRouterFirewallRuleWANSubject *)self addressRange];
  v8 = [v7 hash];

  return v6 ^ v8;
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
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [(HMDNetworkRouterFirewallRuleWANSubject *)self hostnames];
    v8 = [(HMDNetworkRouterFirewallRuleWANSubject *)v6 hostnames];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = [(HMDNetworkRouterFirewallRuleWANSubject *)self addresses];
    v11 = [(HMDNetworkRouterFirewallRuleWANSubject *)v6 addresses];
    v12 = HMFEqualObjects();

    if (v12)
    {
      v13 = [(HMDNetworkRouterFirewallRuleWANSubject *)self addressRange];
      v14 = [(HMDNetworkRouterFirewallRuleWANSubject *)v6 addressRange];
      v15 = HMFEqualObjects();
    }

    else
    {
LABEL_9:
      v15 = 0;
    }
  }

  return v15;
}

- (HMDNetworkRouterFirewallRuleWANSubject)initWithHostnames:(id)a3 addresses:(id)a4 addressRange:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = HMDNetworkRouterFirewallRuleWANSubject;
  v12 = [(HMDNetworkRouterFirewallRuleWANSubject *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_hostnames, a3);
    objc_storeStrong(&v13->_addresses, a4);
    objc_storeStrong(&v13->_addressRange, a5);
    v14 = v13;
  }

  return v13;
}

@end