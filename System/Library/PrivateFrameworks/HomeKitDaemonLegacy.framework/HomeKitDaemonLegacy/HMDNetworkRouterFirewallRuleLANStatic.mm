@interface HMDNetworkRouterFirewallRuleLANStatic
- (BOOL)isEqual:(id)equal;
- (id)attributeDescriptions;
- (id)prettyJSONDictionary;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleLANStatic

- (id)prettyJSONDictionary
{
  v3 = MEMORY[0x277CBEB38];
  v17.receiver = self;
  v17.super_class = HMDNetworkRouterFirewallRuleLANStatic;
  prettyJSONDictionary = [(HMDNetworkRouterFirewallRuleLAN *)&v17 prettyJSONDictionary];
  v5 = [v3 dictionaryWithDictionary:prettyJSONDictionary];

  [v5 setObject:@"Static Port Rule" forKeyedSubscript:@"type"];
  v6 = [objc_opt_class() __transportProtocolToString:{-[HMDNetworkRouterFirewallRuleLANStatic transportProtocol](self, "transportProtocol")}];
  [v5 setObject:v6 forKeyedSubscript:@"transportProtocol"];

  ipAddress = [(HMDNetworkRouterFirewallRuleLANStatic *)self ipAddress];
  addressString = [ipAddress addressString];
  [v5 setObject:addressString forKeyedSubscript:@"ipAddress"];

  transportProtocol = [(HMDNetworkRouterFirewallRuleLANStatic *)self transportProtocol];
  if (transportProtocol >= 2)
  {
    if (transportProtocol != 2)
    {
      goto LABEL_9;
    }

    icmpTypes = [(HMDNetworkRouterFirewallRuleLANStatic *)self icmpTypes];
    v14 = [icmpTypes na_map:&__block_literal_global_194076];
    [v5 setObject:v14 forKeyedSubscript:@"icmpTypes"];
  }

  else
  {
    portStart = [(HMDNetworkRouterFirewallRuleLANStatic *)self portStart];
    portEnd = [(HMDNetworkRouterFirewallRuleLANStatic *)self portEnd];
    icmpTypes = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANStatic portStart](self, "portStart")}];
    if (portStart == portEnd)
    {
      v13 = @"port";
    }

    else
    {
      [v5 setObject:icmpTypes forKeyedSubscript:@"portStart"];

      icmpTypes = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANStatic portEnd](self, "portEnd")}];
      v13 = @"portEnd";
    }

    [v5 setObject:icmpTypes forKeyedSubscript:v13];
  }

LABEL_9:
  v15 = [v5 copy];

  return v15;
}

- (id)attributeDescriptions
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = HMDNetworkRouterFirewallRuleLANStatic;
  attributeDescriptions = [(HMDNetworkRouterFirewallRuleLAN *)&v20 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  ipAddress = [(HMDNetworkRouterFirewallRuleLANStatic *)self ipAddress];
  v5 = [v4 initWithName:@"IPAddress" value:ipAddress];
  v21[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANStatic portStart](self, "portStart")}];
  v8 = [v6 initWithName:@"PortStart" value:v7];
  v21[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANStatic portEnd](self, "portEnd")}];
  v11 = [v9 initWithName:@"PortEnd" value:v10];
  v21[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  icmpTypes = [(HMDNetworkRouterFirewallRuleLANStatic *)self icmpTypes];
  v14 = [v12 initWithName:@"ICMPTypes" value:icmpTypes];
  v21[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  v16 = [attributeDescriptions arrayByAddingObjectsFromArray:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (unint64_t)hash
{
  ipAddress = [(HMDNetworkRouterFirewallRuleLANStatic *)self ipAddress];
  v4 = [ipAddress hash];

  v5 = v4 ^ [(HMDNetworkRouterFirewallRuleLANStatic *)self portStart];
  portEnd = [(HMDNetworkRouterFirewallRuleLANStatic *)self portEnd];
  icmpTypes = [(HMDNetworkRouterFirewallRuleLANStatic *)self icmpTypes];
  v8 = portEnd ^ [icmpTypes hash];

  return v5 ^ v8;
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
    v17.receiver = self;
    v17.super_class = HMDNetworkRouterFirewallRuleLANStatic;
    if ([(HMDNetworkRouterFirewallRuleLAN *)&v17 isEqual:equalCopy])
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

      if (!v7)
      {
        goto LABEL_13;
      }

      ipAddress = [(HMDNetworkRouterFirewallRuleLANStatic *)self ipAddress];
      ipAddress2 = [(HMDNetworkRouterFirewallRuleLANStatic *)v7 ipAddress];
      v10 = HMFEqualObjects();

      if (!v10)
      {
        goto LABEL_13;
      }

      portStart = [(HMDNetworkRouterFirewallRuleLANStatic *)self portStart];
      if (portStart == [(HMDNetworkRouterFirewallRuleLANStatic *)v7 portStart]&& (v12 = [(HMDNetworkRouterFirewallRuleLANStatic *)self portEnd], v12 == [(HMDNetworkRouterFirewallRuleLANStatic *)v7 portEnd]))
      {
        icmpTypes = [(HMDNetworkRouterFirewallRuleLANStatic *)self icmpTypes];
        icmpTypes2 = [(HMDNetworkRouterFirewallRuleLANStatic *)v7 icmpTypes];
        v15 = HMFEqualObjects();
      }

      else
      {
LABEL_13:
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

@end