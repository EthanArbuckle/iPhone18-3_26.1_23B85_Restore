@interface HMDAccessoryAllowedHost
+ (id)allowedHostForFullWANAccess;
+ (id)allowedHostsFromFirewallRuleConfiguration:(id)a3;
+ (id)allowedHostsFromJSONFirewallWANRules:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryAllowedHost)initWithCoder:(id)a3;
- (HMDAccessoryAllowedHost)initWithJSONFirewallWANRule:(id)a3;
- (HMDAccessoryAllowedHost)initWithWANRule:(id)a3;
- (HMDNetworkRouterFirewallRuleWAN)wanRule;
- (NSSet)addresses;
- (NSString)name;
- (id)attributeDescriptions;
- (unint64_t)hash;
- (unint64_t)purpose;
- (void)_encodeForSPIEntitledXPCTransportWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDAccessoryAllowedHost

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAccessoryAllowedHost *)self name];
  v5 = [v3 initWithName:@"Name" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDAccessoryAllowedHost *)self addresses];
  v8 = [v6 initWithName:@"Addresses" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDAccessoryAllowedHost purpose](self, "purpose")}];
  v11 = [v9 initWithName:@"Purpose" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
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
    v7 = v6;
    if (v6)
    {
      if (v6 == self)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(HMDAccessoryAllowedHost *)self jsonWANRule];
        v9 = [(HMDAccessoryAllowedHost *)v7 jsonWANRule];
        v10 = [v8 isEqualToString:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(HMDAccessoryAllowedHost *)self jsonWANRule];
  v3 = [v2 hash];

  return v3;
}

- (void)_encodeForSPIEntitledXPCTransportWithCoder:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessoryAllowedHost *)self wanRule];
  v6 = [v5 name];
  [v4 encodeObject:v6 forKey:*MEMORY[0x277CCE7D0]];

  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 purpose];
  if (!v8)
  {
    v11 = 0;
    goto LABEL_46;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = 1;
  do
  {
    while (1)
    {
      if ((v12 & v8) == 0)
      {
        goto LABEL_37;
      }

      if (v12 > 127)
      {
        break;
      }

      if (v12 <= 7)
      {
        switch(v12)
        {
          case 1:
            v11 |= 1uLL;
            break;
          case 2:
            v11 |= 2uLL;
            break;
          case 4:
            v11 |= 4uLL;
            break;
          default:
            goto LABEL_39;
        }

        goto LABEL_37;
      }

      if (v12 > 31)
      {
        if (v12 == 32)
        {
          v11 |= 0x20uLL;
        }

        else
        {
          if (v12 != 64)
          {
            goto LABEL_39;
          }

          v11 |= 0x40uLL;
        }

        goto LABEL_37;
      }

      if (v12 == 8)
      {
        v11 |= 8uLL;
        goto LABEL_37;
      }

      if (v12 == 16)
      {
        v11 |= 0x10uLL;
        goto LABEL_37;
      }

LABEL_39:
      v11 |= 1uLL;
      v12 *= 2;
      v10 = 1;
      if (v12 - 1 >= v8)
      {
        goto LABEL_42;
      }
    }

    if (v12 <= 1023)
    {
      switch(v12)
      {
        case 128:
          v11 |= 0x80uLL;
          break;
        case 256:
          v11 |= 0x100uLL;
          break;
        case 512:
          v11 |= 0x200uLL;
          break;
        default:
          goto LABEL_39;
      }
    }

    else if (v12 > 4095)
    {
      if (v12 == 4096)
      {
        v11 |= 0x1000uLL;
      }

      else
      {
        if (v12 != 0x2000)
        {
          goto LABEL_39;
        }

        v11 |= 0x2000uLL;
      }
    }

    else if (v12 == 1024)
    {
      v11 |= 0x400uLL;
    }

    else
    {
      if (v12 != 2048)
      {
        goto LABEL_39;
      }

      v11 |= 0x800uLL;
    }

LABEL_37:
    v12 *= 2;
  }

  while (v12 - 1 < v8);
  if ((v10 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_42:
  v13 = objc_autoreleasePoolPush();
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v15;
    v25 = 2048;
    v26 = v9;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@HMDNetworkRouterFirewallRuleWANPurpose value 0x%lx contains flags with no explicit mapping to HMAccessoryAllowedHostPurpose", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
LABEL_46:
  v16 = [v7 numberWithUnsignedInteger:v11];
  [v4 encodeObject:v16 forKey:*MEMORY[0x277CCE7D8]];

  v17 = MEMORY[0x277CBEB98];
  v18 = addressesFromWANRule(v5);
  v19 = [v17 setWithArray:v18];
  [v4 encodeObject:v19 forKey:*MEMORY[0x277CCE7C8]];

  v20 = [(HMDAccessoryAllowedHost *)self jsonWANRule];
  v21 = [v20 isEqualToString:{@"{f:0, n:Any Internet Destination, r:{i:*, it:[{p:1, t:0}]}, t:5, u:1}"}];

  [v4 encodeBool:v21 forKey:*MEMORY[0x277CCE7E0]];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(HMDAccessoryAllowedHost *)self wanRule];
  if (v4)
  {
    if ([v6 hmd_isForXPCTransport])
    {
      if ([v6 hmd_isForXPCTransportEntitledForSPIAccess])
      {
        [(HMDAccessoryAllowedHost *)self _encodeForSPIEntitledXPCTransportWithCoder:v6];
      }
    }

    else if (([v6 hmd_isForLocalStore] & 1) != 0 || objc_msgSend(v6, "hmd_isForRemoteTransport") && (objc_msgSend(v6, "hmd_isForRemoteTransportOnSameAccount") & 1) == 0 && (objc_msgSend(v6, "hmd_isForRemoteUserAdministrator") & 1) != 0 || objc_msgSend(v6, "hmd_isForRemoteTransportOnSameAccount") && (objc_msgSend(v6, "hmd_isForRemoteGatewayCoder") & 1) == 0)
    {
      v5 = [(HMDAccessoryAllowedHost *)self jsonWANRule];
      [v6 encodeObject:v5 forKey:@"HMDAAH.jsonWANRule"];
    }
  }
}

- (HMDAccessoryAllowedHost)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDAAH.jsonWANRule"];

  if (v5)
  {
    self = [(HMDAccessoryAllowedHost *)self initWithJSONFirewallWANRule:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)purpose
{
  v2 = [(HMDAccessoryAllowedHost *)self wanRule];
  v3 = [v2 purpose];

  return v3;
}

- (NSSet)addresses
{
  v2 = [(HMDAccessoryAllowedHost *)self wanRule];
  v3 = addressesFromWANRule(v2);

  return v3;
}

- (NSString)name
{
  v2 = [(HMDAccessoryAllowedHost *)self wanRule];
  v3 = [v2 name];

  return v3;
}

- (HMDNetworkRouterFirewallRuleWAN)wanRule
{
  WeakRetained = objc_loadWeakRetained(&self->_cachedWANRule);
  if (!WeakRetained)
  {
    v4 = [(HMDAccessoryAllowedHost *)self jsonWANRule];
    WeakRetained = wanRuleFromJSONRule(v4);
    objc_storeWeak(&self->_cachedWANRule, WeakRetained);
  }

  return WeakRetained;
}

- (HMDAccessoryAllowedHost)initWithWANRule:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMDAccessoryAllowedHost;
  v5 = [(HMDAccessoryAllowedHost *)&v11 init];
  v6 = v5;
  if (v5 && (objc_storeWeak(&v5->_cachedWANRule, v4), [v4 jsonString], v7 = objc_claimAutoreleasedReturnValue(), jsonWANRule = v6->_jsonWANRule, v6->_jsonWANRule = v7, jsonWANRule, !v6->_jsonWANRule))
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (HMDAccessoryAllowedHost)initWithJSONFirewallWANRule:(id)a3
{
  v4 = wanRuleFromJSONRule(a3);
  if (v4)
  {
    self = [(HMDAccessoryAllowedHost *)self initWithWANRule:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)allowedHostsFromFirewallRuleConfiguration:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 wanRules];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count") + 1}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [HMDAccessoryAllowedHost alloc];
          v14 = [(HMDAccessoryAllowedHost *)v13 initWithWANRule:v12, v19];
          [v6 addObject:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    if ([v4 hasFullAccessToWAN])
    {
      v15 = +[HMDAccessoryAllowedHost allowedHostForFullWANAccess];
      [v6 addObject:v15];
    }

    v16 = [v6 copy];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)allowedHostsFromJSONFirewallWANRules:(id)a3
{
  v3 = [a3 na_map:&__block_literal_global_143642];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = v5;

  return v5;
}

HMDAccessoryAllowedHost *__64__HMDAccessoryAllowedHost_allowedHostsFromJSONFirewallWANRules___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMDAccessoryAllowedHost alloc] initWithJSONFirewallWANRule:v2];

  return v3;
}

+ (id)allowedHostForFullWANAccess
{
  v2 = [[HMDAccessoryAllowedHost alloc] initWithJSONFirewallWANRule:@"{f:0, n:Any Internet Destination, r:{i:*, it:[{p:1, t:0}]}, t:5, u:1}"];

  return v2;
}

@end