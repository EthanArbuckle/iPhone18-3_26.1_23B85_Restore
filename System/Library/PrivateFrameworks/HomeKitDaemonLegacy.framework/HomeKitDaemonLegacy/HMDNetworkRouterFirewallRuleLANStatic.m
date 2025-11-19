@interface HMDNetworkRouterFirewallRuleLANStatic
- (BOOL)isEqual:(id)a3;
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
  v4 = [(HMDNetworkRouterFirewallRuleLAN *)&v17 prettyJSONDictionary];
  v5 = [v3 dictionaryWithDictionary:v4];

  [v5 setObject:@"Static Port Rule" forKeyedSubscript:@"type"];
  v6 = [objc_opt_class() __transportProtocolToString:{-[HMDNetworkRouterFirewallRuleLANStatic transportProtocol](self, "transportProtocol")}];
  [v5 setObject:v6 forKeyedSubscript:@"transportProtocol"];

  v7 = [(HMDNetworkRouterFirewallRuleLANStatic *)self ipAddress];
  v8 = [v7 addressString];
  [v5 setObject:v8 forKeyedSubscript:@"ipAddress"];

  v9 = [(HMDNetworkRouterFirewallRuleLANStatic *)self transportProtocol];
  if (v9 >= 2)
  {
    if (v9 != 2)
    {
      goto LABEL_9;
    }

    v12 = [(HMDNetworkRouterFirewallRuleLANStatic *)self icmpTypes];
    v14 = [v12 na_map:&__block_literal_global_194076];
    [v5 setObject:v14 forKeyedSubscript:@"icmpTypes"];
  }

  else
  {
    v10 = [(HMDNetworkRouterFirewallRuleLANStatic *)self portStart];
    v11 = [(HMDNetworkRouterFirewallRuleLANStatic *)self portEnd];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANStatic portStart](self, "portStart")}];
    if (v10 == v11)
    {
      v13 = @"port";
    }

    else
    {
      [v5 setObject:v12 forKeyedSubscript:@"portStart"];

      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{-[HMDNetworkRouterFirewallRuleLANStatic portEnd](self, "portEnd")}];
      v13 = @"portEnd";
    }

    [v5 setObject:v12 forKeyedSubscript:v13];
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
  v3 = [(HMDNetworkRouterFirewallRuleLAN *)&v20 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v19 = [(HMDNetworkRouterFirewallRuleLANStatic *)self ipAddress];
  v5 = [v4 initWithName:@"IPAddress" value:v19];
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
  v13 = [(HMDNetworkRouterFirewallRuleLANStatic *)self icmpTypes];
  v14 = [v12 initWithName:@"ICMPTypes" value:v13];
  v21[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  v16 = [v3 arrayByAddingObjectsFromArray:v15];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (unint64_t)hash
{
  v3 = [(HMDNetworkRouterFirewallRuleLANStatic *)self ipAddress];
  v4 = [v3 hash];

  v5 = v4 ^ [(HMDNetworkRouterFirewallRuleLANStatic *)self portStart];
  v6 = [(HMDNetworkRouterFirewallRuleLANStatic *)self portEnd];
  v7 = [(HMDNetworkRouterFirewallRuleLANStatic *)self icmpTypes];
  v8 = v6 ^ [v7 hash];

  return v5 ^ v8;
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
    v17.receiver = self;
    v17.super_class = HMDNetworkRouterFirewallRuleLANStatic;
    if ([(HMDNetworkRouterFirewallRuleLAN *)&v17 isEqual:v4])
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

      if (!v7)
      {
        goto LABEL_13;
      }

      v8 = [(HMDNetworkRouterFirewallRuleLANStatic *)self ipAddress];
      v9 = [(HMDNetworkRouterFirewallRuleLANStatic *)v7 ipAddress];
      v10 = HMFEqualObjects();

      if (!v10)
      {
        goto LABEL_13;
      }

      v11 = [(HMDNetworkRouterFirewallRuleLANStatic *)self portStart];
      if (v11 == [(HMDNetworkRouterFirewallRuleLANStatic *)v7 portStart]&& (v12 = [(HMDNetworkRouterFirewallRuleLANStatic *)self portEnd], v12 == [(HMDNetworkRouterFirewallRuleLANStatic *)v7 portEnd]))
      {
        v13 = [(HMDNetworkRouterFirewallRuleLANStatic *)self icmpTypes];
        v14 = [(HMDNetworkRouterFirewallRuleLANStatic *)v7 icmpTypes];
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