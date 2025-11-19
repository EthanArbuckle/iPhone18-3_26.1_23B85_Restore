@interface HMDNetworkRouterFirewallRuleLANMulticast
- (BOOL)isEqual:(id)a3;
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
  v4 = [(HMDNetworkRouterFirewallRuleLAN *)&v11 prettyJSONDictionary];
  v5 = [v3 dictionaryWithDictionary:v4];

  [v5 setObject:@"Multicast Bridging Rule" forKeyedSubscript:@"type"];
  v6 = [(HMDNetworkRouterFirewallRuleLANMulticast *)self ipAddress];
  v7 = [v6 addressString];
  [v5 setObject:v7 forKeyedSubscript:@"ipAddress"];

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
  v3 = [(HMDNetworkRouterFirewallRuleLAN *)&v14 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDNetworkRouterFirewallRuleLANMulticast *)self ipAddress];
  v6 = [v4 initWithName:@"IPAddress" value:v5];
  v15[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANMulticast port](self, "port")}];
  v9 = [v7 initWithName:@"Port" value:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v11 = [v3 arrayByAddingObjectsFromArray:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (unint64_t)hash
{
  v3 = [(HMDNetworkRouterFirewallRuleLANMulticast *)self ipAddress];
  v4 = [v3 hash];

  return v4 ^ [(HMDNetworkRouterFirewallRuleLANMulticast *)self port];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HMDNetworkRouterFirewallRuleLANMulticast;
    if ([(HMDNetworkRouterFirewallRuleLAN *)&v13 isEqual:v4])
    {
      v5 = v4;
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
        v8 = [(HMDNetworkRouterFirewallRuleLANMulticast *)self ipAddress];
        v9 = [(HMDNetworkRouterFirewallRuleLANMulticast *)v7 ipAddress];
        if ([v8 isEqual:v9])
        {
          v10 = [(HMDNetworkRouterFirewallRuleLANMulticast *)self port];
          v11 = v10 == [(HMDNetworkRouterFirewallRuleLANMulticast *)v7 port];
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