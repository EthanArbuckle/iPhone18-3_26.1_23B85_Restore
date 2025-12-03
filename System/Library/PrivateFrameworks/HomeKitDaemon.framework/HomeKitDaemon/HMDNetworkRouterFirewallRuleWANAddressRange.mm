@interface HMDNetworkRouterFirewallRuleWANAddressRange
- (BOOL)isEqual:(id)equal;
- (HMDNetworkRouterFirewallRuleWANAddressRange)initWithAddressStart:(id)start addressEnd:(id)end;
- (id)attributeDescriptions;
- (id)prettyJSONDictionary;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleWANAddressRange

- (id)prettyJSONDictionary
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"addressStart";
  addressStart = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressStart];
  addressString = [addressStart addressString];
  v10[1] = @"addressEnd";
  v11[0] = addressString;
  addressEnd = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressEnd];
  addressString2 = [addressEnd addressString];
  v11[1] = addressString2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  addressStart = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressStart];
  v5 = [v3 initWithName:@"AddressStart" value:addressStart];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  addressEnd = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressEnd];
  v8 = [v6 initWithName:@"AddressEnd" value:addressEnd];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (unint64_t)hash
{
  addressStart = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressStart];
  v4 = [addressStart hash];

  addressEnd = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressEnd];
  v6 = [addressEnd hash];

  return v6 ^ v4;
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
    if (v6)
    {
      addressStart = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressStart];
      addressStart2 = [(HMDNetworkRouterFirewallRuleWANAddressRange *)v6 addressStart];
      if ([addressStart isEqual:addressStart2])
      {
        addressEnd = [(HMDNetworkRouterFirewallRuleWANAddressRange *)self addressEnd];
        addressEnd2 = [(HMDNetworkRouterFirewallRuleWANAddressRange *)v6 addressEnd];
        v11 = [addressEnd isEqual:addressEnd2];
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

- (HMDNetworkRouterFirewallRuleWANAddressRange)initWithAddressStart:(id)start addressEnd:(id)end
{
  startCopy = start;
  endCopy = end;
  v13.receiver = self;
  v13.super_class = HMDNetworkRouterFirewallRuleWANAddressRange;
  v9 = [(HMDNetworkRouterFirewallRuleWANAddressRange *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_addressStart, start);
    objc_storeStrong(&v10->_addressEnd, end);
    v11 = v10;
  }

  return v10;
}

@end