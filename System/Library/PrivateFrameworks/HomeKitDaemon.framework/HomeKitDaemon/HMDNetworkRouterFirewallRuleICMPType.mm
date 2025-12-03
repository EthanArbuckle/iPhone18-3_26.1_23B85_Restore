@interface HMDNetworkRouterFirewallRuleICMPType
+ (id)createListWithJSONDictionary:(id)dictionary key:(id)key;
+ (id)createWithJSONDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (HMDNetworkRouterFirewallRuleICMPType)initWithJSONDictionary:(id)dictionary protocol:(unsigned __int8)protocol typeValue:(id)value;
- (NSDictionary)prettyJSONDictionary;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDNetworkRouterFirewallRuleICMPType

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:8];
  protocol = [(HMDNetworkRouterFirewallRuleICMPType *)self protocol];
  if (protocol == 1)
  {
    v5 = @"typeValue:";
    goto LABEL_5;
  }

  if (!protocol)
  {
    v5 = @"protocol:";
LABEL_5:
    [v3 appendString:v5];
    goto LABEL_7;
  }

  [v3 appendFormat:@"%d:", -[HMDNetworkRouterFirewallRuleICMPType protocol](self, "protocol")];
LABEL_7:
  typeValue = [(HMDNetworkRouterFirewallRuleICMPType *)self typeValue];

  if (typeValue)
  {
    typeValue2 = [(HMDNetworkRouterFirewallRuleICMPType *)self typeValue];
    [v3 appendFormat:@"%d", objc_msgSend(typeValue2, "unsignedIntValue")];
  }

  else
  {
    [v3 appendString:@"*"];
  }

  v8 = [v3 copy];

  return v8;
}

- (NSDictionary)prettyJSONDictionary
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  protocol = [(HMDNetworkRouterFirewallRuleICMPType *)self protocol];
  if (protocol)
  {
    if (protocol == 1)
    {
      v5 = @"IPv6";
    }

    else
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%d)", protocol];
    }
  }

  else
  {
    v5 = @"IPv4";
  }

  [v3 setObject:v5 forKeyedSubscript:@"protocol"];

  typeValue = [(HMDNetworkRouterFirewallRuleICMPType *)self typeValue];

  if (typeValue)
  {
    typeValue2 = [(HMDNetworkRouterFirewallRuleICMPType *)self typeValue];
    [v3 setObject:typeValue2 forKeyedSubscript:@"type"];
  }

  v8 = [v3 copy];

  return v8;
}

- (unint64_t)hash
{
  protocol = [(HMDNetworkRouterFirewallRuleICMPType *)self protocol];
  typeValue = [(HMDNetworkRouterFirewallRuleICMPType *)self typeValue];
  v5 = [typeValue unsignedIntValue] ^ protocol;

  jsonDictionary = [(HMDNetworkRouterFirewallRuleICMPType *)self jsonDictionary];
  v7 = [jsonDictionary hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
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

    protocol = [(HMDNetworkRouterFirewallRuleICMPType *)self protocol];
    if (protocol != [(HMDNetworkRouterFirewallRuleICMPType *)v6 protocol])
    {
      goto LABEL_9;
    }

    typeValue = [(HMDNetworkRouterFirewallRuleICMPType *)self typeValue];
    typeValue2 = [(HMDNetworkRouterFirewallRuleICMPType *)v6 typeValue];
    v10 = HMFEqualObjects();

    if (v10)
    {
      jsonDictionary = [(HMDNetworkRouterFirewallRuleICMPType *)self jsonDictionary];
      jsonDictionary2 = [(HMDNetworkRouterFirewallRuleICMPType *)v6 jsonDictionary];
      v13 = HMFEqualObjects();
    }

    else
    {
LABEL_9:
      v13 = 0;
    }
  }

  return v13;
}

- (HMDNetworkRouterFirewallRuleICMPType)initWithJSONDictionary:(id)dictionary protocol:(unsigned __int8)protocol typeValue:(id)value
{
  dictionaryCopy = dictionary;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = HMDNetworkRouterFirewallRuleICMPType;
  v11 = [(HMDNetworkRouterFirewallRuleICMPType *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_jsonDictionary, dictionary);
    v12->_protocol = protocol;
    objc_storeStrong(&v12->_typeValue, value);
  }

  return v12;
}

+ (id)createListWithJSONDictionary:(id)dictionary key:(id)key
{
  v45 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  keyCopy = key;
  v8 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10 && ![v10 hmf_isEmpty])
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v10, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      v33 = keyCopy;
LABEL_11:
      v21 = 0;
      while (1)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v34 + 1) + 8 * v21);
        objc_opt_class();
        v23 = (objc_opt_isKindOfClass() & 1) != 0 ? v22 : 0;
        v24 = v23;

        if (!v24)
        {
          break;
        }

        v25 = [HMDNetworkRouterFirewallRuleICMPType createWithJSONDictionary:v24];
        if (!v25)
        {

          keyCopy = v33;
LABEL_26:

          v15 = 0;
          goto LABEL_27;
        }

        v26 = v25;
        [v16 addObject:v25];

        if (v19 == ++v21)
        {
          v19 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
          keyCopy = v33;
          if (v19)
          {
            goto LABEL_11;
          }

          goto LABEL_21;
        }
      }

      v27 = objc_autoreleasePoolPush();
      selfCopy = self;
      v29 = HMFGetOSLogHandle();
      keyCopy = v33;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543874;
        v40 = v30;
        v41 = 2112;
        v42 = v33;
        v43 = 2112;
        v44 = dictionaryCopy;
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Rule contains an invalid '%@' value: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      goto LABEL_26;
    }

LABEL_21:

    v15 = [v16 copy];
LABEL_27:
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v40 = v14;
      v41 = 2112;
      v42 = keyCopy;
      v43 = 2112;
      v44 = dictionaryCopy;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Rule contains an invalid '%@' value: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)createWithJSONDictionary:(id)dictionary
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v19 = 0;
  v5 = decodeUnsignedIntegerFromJSONDictionary(dictionaryCopy, @"p", 1, 0xFFuLL, &v19);
  v6 = v19;
  v7 = v6;
  v8 = 0;
  if (v5)
  {
    if ([v6 unsignedCharValue] > 1)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = objc_opt_class();
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543874;
        v21 = v15;
        v22 = 2112;
        v23 = @"p";
        v24 = 2112;
        v25 = dictionaryCopy;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@JSON contains an invalid '%@' value: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v8 = 0;
    }

    else
    {
      unsignedCharValue = [v7 unsignedCharValue];
      v18 = 0;
      v10 = decodeUnsignedIntegerFromJSONDictionary(dictionaryCopy, @"t", 0, 0xFFuLL, &v18);
      v11 = v18;
      v8 = 0;
      if (v10)
      {
        v8 = [[self alloc] initWithJSONDictionary:dictionaryCopy protocol:unsignedCharValue typeValue:v11];
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

@end