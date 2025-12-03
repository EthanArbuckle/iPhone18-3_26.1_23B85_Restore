@interface HMDNetworkRouterFirewallRuleLANDynamic
+ (BOOL)__decodeAdvertisingProtocol:(id)protocol advertisingProtocol:(unsigned __int8 *)advertisingProtocol error:(id *)error;
+ (BOOL)__decodeFlags:(id)flags advertisingOnly:(BOOL *)only error:(id *)error;
+ (BOOL)__decodeServiceType:(id)type serviceType:(id *)serviceType error:(id *)error;
+ (id)__advertisingProtocolToString:(unsigned __int8)string;
- (BOOL)isEqual:(id)equal;
- (id)attributeDescriptions;
- (id)prettyJSONDictionary;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleLANDynamic

- (id)prettyJSONDictionary
{
  v3 = MEMORY[0x277CBEB38];
  v12.receiver = self;
  v12.super_class = HMDNetworkRouterFirewallRuleLANDynamic;
  prettyJSONDictionary = [(HMDNetworkRouterFirewallRuleLAN *)&v12 prettyJSONDictionary];
  v5 = [v3 dictionaryWithDictionary:prettyJSONDictionary];

  [v5 setObject:@"Dynamic Port Rule" forKeyedSubscript:@"type"];
  v6 = [objc_opt_class() __transportProtocolToString:{-[HMDNetworkRouterFirewallRuleLANDynamic transportProtocol](self, "transportProtocol")}];
  [v5 setObject:v6 forKeyedSubscript:@"transportProtocol"];

  v7 = [objc_opt_class() __advertisingProtocolToString:{-[HMDNetworkRouterFirewallRuleLANDynamic advertisingProtocol](self, "advertisingProtocol")}];
  [v5 setObject:v7 forKeyedSubscript:@"advertisingProtocol"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleLANDynamic isAdvertisingOnly](self, "isAdvertisingOnly")}];
  [v5 setObject:v8 forKeyedSubscript:@"advertisingOnly"];

  serviceType = [(HMDNetworkRouterFirewallRuleLANDynamic *)self serviceType];
  [v5 setObject:serviceType forKeyedSubscript:@"serviceType"];

  v10 = [v5 copy];

  return v10;
}

- (id)attributeDescriptions
{
  v21[4] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = HMDNetworkRouterFirewallRuleLANDynamic;
  attributeDescriptions = [(HMDNetworkRouterFirewallRuleLAN *)&v20 attributeDescriptions];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMDNetworkRouterFirewallRuleLANDynamic transportProtocol](self, "transportProtocol")}];
  v4 = [v3 initWithName:@"TransportProtocol" value:v19];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMDNetworkRouterFirewallRuleLANDynamic advertisingProtocol](self, "advertisingProtocol")}];
  v7 = [v5 initWithName:@"AdvertisingProtocol" value:v6];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDNetworkRouterFirewallRuleLANDynamic isAdvertisingOnly](self, "isAdvertisingOnly")}];
  v10 = [v8 initWithName:@"AdvertisingOnly" value:v9];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  serviceType = [(HMDNetworkRouterFirewallRuleLANDynamic *)self serviceType];
  v13 = [v11 initWithName:@"ServiceType" value:serviceType];
  v21[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  v15 = [attributeDescriptions arrayByAddingObjectsFromArray:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (unint64_t)hash
{
  transportProtocol = [(HMDNetworkRouterFirewallRuleLANDynamic *)self transportProtocol];
  v4 = [(HMDNetworkRouterFirewallRuleLANDynamic *)self advertisingProtocol]^ transportProtocol;
  v5 = v4 ^ [(HMDNetworkRouterFirewallRuleLANDynamic *)self isAdvertisingOnly];
  serviceType = [(HMDNetworkRouterFirewallRuleLANDynamic *)self serviceType];
  v7 = [serviceType hash];

  return v7 ^ v5;
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
    v15.receiver = self;
    v15.super_class = HMDNetworkRouterFirewallRuleLANDynamic;
    if ([(HMDNetworkRouterFirewallRuleLAN *)&v15 isEqual:equalCopy])
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

      transportProtocol = [(HMDNetworkRouterFirewallRuleLANDynamic *)self transportProtocol];
      if (transportProtocol == [(HMDNetworkRouterFirewallRuleLANDynamic *)v7 transportProtocol]&& (v9 = [(HMDNetworkRouterFirewallRuleLANDynamic *)self advertisingProtocol], v9 == [(HMDNetworkRouterFirewallRuleLANDynamic *)v7 advertisingProtocol]) && (v10 = [(HMDNetworkRouterFirewallRuleLANDynamic *)self isAdvertisingOnly], v10 == [(HMDNetworkRouterFirewallRuleLANDynamic *)v7 isAdvertisingOnly]))
      {
        serviceType = [(HMDNetworkRouterFirewallRuleLANDynamic *)self serviceType];
        serviceType2 = [(HMDNetworkRouterFirewallRuleLANDynamic *)v7 serviceType];
        v11 = HMFEqualObjects();
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

+ (BOOL)__decodeServiceType:(id)type serviceType:(id *)serviceType error:(id *)error
{
  v12 = 0;
  v7 = decodeStringFromJSONDictionary(type, @"s", 1, &v12);
  v8 = v12;
  v9 = v8;
  if (v7)
  {
    v10 = v8;
    *serviceType = v9;
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  return v7;
}

+ (BOOL)__decodeFlags:(id)flags advertisingOnly:(BOOL *)only error:(id *)error
{
  v11 = 0;
  v7 = decodeUnsignedIntegerFromJSONDictionary(flags, @"f", 0, 0xFFFFFFFFuLL, &v11);
  v8 = v11;
  v9 = v8;
  if (v7)
  {
    *only = [v8 unsignedLongValue] & 1;
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  return v7;
}

+ (BOOL)__decodeAdvertisingProtocol:(id)protocol advertisingProtocol:(unsigned __int8 *)advertisingProtocol error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  protocolCopy = protocol;
  v21 = 0;
  v9 = decodeUnsignedIntegerFromJSONDictionary(protocolCopy, @"a", 1, 0xFFuLL, &v21);
  v10 = v21;
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    if (error)
    {
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_12:
      v13 = 0;
      *error = v14;
      goto LABEL_14;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  unsignedCharValue = [v10 unsignedCharValue];
  if (unsignedCharValue == 1)
  {
    v13 = 1;
    *advertisingProtocol = 1;
    goto LABEL_14;
  }

  if (unsignedCharValue)
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543874;
      v23 = v18;
      v24 = 2112;
      v25 = @"a";
      v26 = 2112;
      v27 = protocolCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Rule contains an unknown '%@' value: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    if (error)
    {
      v14 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1070];
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  *advertisingProtocol = 0;
  v13 = 1;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)__advertisingProtocolToString:(unsigned __int8)string
{
  v3 = @"Unknown";
  if (string == 1)
  {
    v3 = @"SSDP";
  }

  if (string)
  {
    return v3;
  }

  else
  {
    return @"DNS-SD";
  }
}

@end