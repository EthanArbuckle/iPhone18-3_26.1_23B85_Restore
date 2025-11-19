@interface HMDNetworkRouterFirewallRuleWANAddressRange
- (BOOL)isEqual:(id)a3;
- (HMDNetworkRouterFirewallRuleWANAddressRange)initWithAddressStart:(id)a3 addressEnd:(id)a4;
- (id)attributeDescriptions;
- (id)prettyJSONDictionary;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleWANAddressRange

- (id)prettyJSONDictionary
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"addressStart";
  v3 = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressStart];
  v4 = [v3 addressString];
  v10[1] = @"addressEnd";
  v11[0] = v4;
  v5 = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressEnd];
  v6 = [v5 addressString];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressStart];
  v5 = [v3 initWithName:@"AddressStart" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressEnd];
  v8 = [v6 initWithName:@"AddressEnd" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressStart];
  v4 = [v3 hash];

  v5 = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressEnd];
  v6 = [v5 hash];

  return v6 ^ v4;
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
      v7 = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressStart];
      v8 = [(HMDNetworkRouterFirewallRuleWANAddressRange *)v6 addressStart];
      if ([v7 isEqual:v8])
      {
        v9 = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressEnd];
        v10 = [(HMDNetworkRouterFirewallRuleWANAddressRange *)v6 addressEnd];
        v11 = [v9 isEqual:v10];
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

- (HMDNetworkRouterFirewallRuleWANAddressRange)initWithAddressStart:(id)a3 addressEnd:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = HMDNetworkRouterFirewallRuleWANAddressRange;
  v9 = [(HMDNetworkRouterFirewallRuleWANAddressRange *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_addressStart, a3);
    objc_storeStrong(&v10->_addressEnd, a4);
    v11 = v10;
  }

  return v10;
}

@end