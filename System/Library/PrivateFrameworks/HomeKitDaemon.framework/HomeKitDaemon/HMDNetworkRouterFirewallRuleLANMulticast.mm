@interface HMDNetworkRouterFirewallRuleLANMulticast
- (BOOL)isEqual:(id)equal;
- (id)attributeDescriptions;
- (id)prettyJSONDictionary;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleLANMulticast

- (id)prettyJSONDictionary
{
  v3 = MEMORY[0x277CBEB38];
  v11.receiver = self;
  v11.super_class = HMDNetworkRouterFirewallRuleLANMulticast;
  prettyJSONDictionary = [(HMDNetworkRouterFirewallRuleLAN *)&v11 prettyJSONDictionary];
  v5 = [v3 dictionaryWithDictionary:prettyJSONDictionary];

  [v5 setObject:@"Multicast Bridging Rule" forKeyedSubscript:@"type"];
  ipAddress = [(HMDNetworkRouterFirewallRuleLANMulticast *)self ipAddress];
  addressString = [ipAddress addressString];
  [v5 setObject:addressString forKeyedSubscript:@"ipAddress"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANMulticast port](self, "port")}];
  [v5 setObject:v8 forKeyedSubscript:@"port"];

  v9 = [v5 copy];

  return v9;
}

- (id)attributeDescriptions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = HMDNetworkRouterFirewallRuleLANMulticast;
  attributeDescriptions = [(HMDNetworkRouterFirewallRuleLAN *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  ipAddress = [(HMDNetworkRouterFirewallRuleLANMulticast *)self ipAddress];
  v6 = [v4 initWithName:@"IPAddress" value:ipAddress];
  v15[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANMulticast port](self, "port")}];
  v9 = [v7 initWithName:@"Port" value:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [attributeDescriptions arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (unint64_t)hash
{
  ipAddress = [(HMDNetworkRouterFirewallRuleLANMulticast *)self ipAddress];
  v4 = [ipAddress hash];

  return v4 ^ [(HMDNetworkRouterFirewallRuleLANMulticast *)self port];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HMDNetworkRouterFirewallRuleLANMulticast;
    if ([(HMDNetworkRouterFirewallRuleLAN *)&v13 isEqual:equalCopy])
    {
      v5 = equalCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      if (v7)
      {
        ipAddress = [(HMDNetworkRouterFirewallRuleLANMulticast *)self ipAddress];
        ipAddress2 = [(HMDNetworkRouterFirewallRuleLANMulticast *)v7 ipAddress];
        if ([ipAddress isEqual:ipAddress2])
        {
          port = [(HMDNetworkRouterFirewallRuleLANMulticast *)self port];
          v11 = port == [(HMDNetworkRouterFirewallRuleLANMulticast *)v7 port];
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end