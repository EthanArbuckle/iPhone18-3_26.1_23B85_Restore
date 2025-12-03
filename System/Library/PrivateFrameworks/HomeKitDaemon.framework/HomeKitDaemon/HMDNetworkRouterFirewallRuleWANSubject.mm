@interface HMDNetworkRouterFirewallRuleWANSubject
- (BOOL)isEqual:(id)equal;
- (HMDNetworkRouterFirewallRuleWANSubject)initWithHostnames:(id)hostnames addresses:(id)addresses addressRange:(id)range;
- (id)attributeDescriptions;
- (id)prettyJSONDictionary;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleWANSubject

- (id)prettyJSONDictionary
{
  v18[1] = *MEMORY[0x277D85DE8];
  hostnames = [(HMDNetworkRouterFirewallRuleWANSubject *)self hostnames];

  if (hostnames)
  {
    v17 = @"hostnames";
    hostnames2 = [(HMDNetworkRouterFirewallRuleWANSubject *)self hostnames];
    v18[0] = hostnames2;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v18;
    v7 = &v17;
LABEL_5:
    prettyJSONDictionary = [v5 dictionaryWithObjects:v6 forKeys:v7 count:1];
LABEL_6:
    v11 = prettyJSONDictionary;

    goto LABEL_7;
  }

  addresses = [(HMDNetworkRouterFirewallRuleWANSubject *)self addresses];

  if (addresses)
  {
    addresses2 = [(HMDNetworkRouterFirewallRuleWANSubject *)self addresses];
    hostnames2 = [addresses2 na_map:&__block_literal_global_215508];

    v15 = @"addresses";
    v16 = hostnames2;
    v5 = MEMORY[0x277CBEAC0];
    v6 = &v16;
    v7 = &v15;
    goto LABEL_5;
  }

  addressRange = [(HMDNetworkRouterFirewallRuleWANSubject *)self addressRange];

  if (addressRange)
  {
    hostnames2 = [(HMDNetworkRouterFirewallRuleWANSubject *)self addressRange];
    prettyJSONDictionary = [hostnames2 prettyJSONDictionary];
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
  hostnames = [(HMDNetworkRouterFirewallRuleWANSubject *)self hostnames];
  v5 = [v3 initWithName:@"Hostnames" value:hostnames];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  addresses = [(HMDNetworkRouterFirewallRuleWANSubject *)self addresses];
  v8 = [v6 initWithName:@"Addresses" value:addresses];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  addressRange = [(HMDNetworkRouterFirewallRuleWANSubject *)self addressRange];
  v11 = [v9 initWithName:@"AddressRange" value:addressRange];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (unint64_t)hash
{
  hostnames = [(HMDNetworkRouterFirewallRuleWANSubject *)self hostnames];
  v4 = [hostnames hash];

  addresses = [(HMDNetworkRouterFirewallRuleWANSubject *)self addresses];
  v6 = [addresses hash] ^ v4;

  addressRange = [(HMDNetworkRouterFirewallRuleWANSubject *)self addressRange];
  v8 = [addressRange hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

    hostnames = [(HMDNetworkRouterFirewallRuleWANSubject *)self hostnames];
    hostnames2 = [(HMDNetworkRouterFirewallRuleWANSubject *)v6 hostnames];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_9;
    }

    addresses = [(HMDNetworkRouterFirewallRuleWANSubject *)self addresses];
    addresses2 = [(HMDNetworkRouterFirewallRuleWANSubject *)v6 addresses];
    v12 = HMFEqualObjects();

    if (v12)
    {
      addressRange = [(HMDNetworkRouterFirewallRuleWANSubject *)self addressRange];
      addressRange2 = [(HMDNetworkRouterFirewallRuleWANSubject *)v6 addressRange];
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

- (HMDNetworkRouterFirewallRuleWANSubject)initWithHostnames:(id)hostnames addresses:(id)addresses addressRange:(id)range
{
  hostnamesCopy = hostnames;
  addressesCopy = addresses;
  rangeCopy = range;
  v16.receiver = self;
  v16.super_class = HMDNetworkRouterFirewallRuleWANSubject;
  v12 = [(HMDNetworkRouterFirewallRuleWANSubject *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_hostnames, hostnames);
    objc_storeStrong(&v13->_addresses, addresses);
    objc_storeStrong(&v13->_addressRange, range);
    v14 = v13;
  }

  return v13;
}

@end