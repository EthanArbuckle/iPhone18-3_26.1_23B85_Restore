@interface HMDNetworkRouterWANFirewallRuleList
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterWANFirewallRuleList)init;
- (HMDNetworkRouterWANFirewallRuleList)initWithPortRules:(id)rules icmpRules:(id)icmpRules;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDNetworkRouterWANFirewallRuleList

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  portRules = [(HMDNetworkRouterWANFirewallRuleList *)self portRules];
  icmpRules = [(HMDNetworkRouterWANFirewallRuleList *)self icmpRules];
  v6 = [v3 stringWithFormat:@"<HMDNetworkRouterWANFirewallRuleList portRules=%@, icmpRules=%@>", portRules, icmpRules];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      portRules = [(HMDNetworkRouterWANFirewallRuleList *)self portRules];
      portRules2 = [(HMDNetworkRouterWANFirewallRuleList *)v6 portRules];
      if (portRules != portRules2)
      {
        portRules3 = [(HMDNetworkRouterWANFirewallRuleList *)self portRules];
        portRules4 = [(HMDNetworkRouterWANFirewallRuleList *)v6 portRules];
        if (![portRules3 isEqual:portRules4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = portRules3;
      }

      icmpRules = [(HMDNetworkRouterWANFirewallRuleList *)self icmpRules];
      icmpRules2 = [(HMDNetworkRouterWANFirewallRuleList *)v6 icmpRules];
      if (icmpRules == icmpRules2)
      {
        v10 = 1;
      }

      else
      {
        icmpRules3 = [(HMDNetworkRouterWANFirewallRuleList *)self icmpRules];
        icmpRules4 = [(HMDNetworkRouterWANFirewallRuleList *)v6 icmpRules];
        v10 = [icmpRules3 isEqual:icmpRules4];
      }

      portRules3 = v16;
      if (portRules == portRules2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDNetworkRouterWANFirewallRuleList allocWithZone:zone];
  portRules = [(HMDNetworkRouterWANFirewallRuleList *)self portRules];
  icmpRules = [(HMDNetworkRouterWANFirewallRuleList *)self icmpRules];
  v7 = [(HMDNetworkRouterWANFirewallRuleList *)v4 initWithPortRules:portRules icmpRules:icmpRules];

  return v7;
}

- (id)serializeWithError:(id *)error
{
  v60 = *MEMORY[0x277D85DE8];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  TLV8BufferInit();
  v36 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  portRules = [(HMDNetworkRouterWANFirewallRuleList *)self portRules];
  v6 = [portRules countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v34;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v34 != v9)
      {
        objc_enumerationMutation(portRules);
      }

      v11 = *(*(&v33 + 1) + 8 * v10);
      if (v8)
      {
        if (TLV8BufferAppend())
        {
          break;
        }
      }

      v32 = 0;
      v12 = [v11 serializeWithError:&v32];
      v13 = v32;
      if (v13)
      {
LABEL_24:
        v23 = v13;

        if (!error)
        {
          goto LABEL_29;
        }

        v24 = v23;
        v22 = 0;
        *error = v23;
        goto LABEL_30;
      }

      [v12 bytes];
      [v12 length];
      v14 = TLV8BufferAppend();

      if (v14)
      {
        break;
      }

      ++v10;
      v8 = 1;
      if (v7 == v10)
      {
        v7 = [portRules countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    portRules = [(HMDNetworkRouterWANFirewallRuleList *)self icmpRules];
    v15 = [portRules countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (!v15)
    {
LABEL_23:

      v22 = [MEMORY[0x277CBEA90] dataWithBytes:v39 length:?];
      v23 = 0;
      goto LABEL_30;
    }

    v16 = v15;
    v17 = 0;
    v18 = *v29;
LABEL_14:
    v19 = 0;
    while (1)
    {
      if (*v29 != v18)
      {
        objc_enumerationMutation(portRules);
      }

      v20 = *(*(&v28 + 1) + 8 * v19);
      if (v17)
      {
        if (TLV8BufferAppend())
        {
          break;
        }
      }

      v27 = 0;
      v12 = [v20 serializeWithError:&v27];
      v13 = v27;
      if (v13)
      {
        goto LABEL_24;
      }

      [v12 bytes];
      [v12 length];
      v21 = TLV8BufferAppend();

      if (v21)
      {
        break;
      }

      ++v19;
      v17 = 1;
      if (v16 == v19)
      {
        v16 = [portRules countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v16)
        {
          goto LABEL_14;
        }

        goto LABEL_23;
      }
    }
  }

  if (error)
  {
    HMErrorFromOSStatus();
    v23 = 0;
    *error = v22 = 0;
  }

  else
  {
    v23 = 0;
LABEL_29:
    v22 = 0;
  }

LABEL_30:
  TLV8BufferFree();

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = dataCopy;
  if (error)
  {
    *error = 0;
  }

  bytes = [dataCopy bytes];
  v9 = [v7 length];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  if (!v9)
  {
LABEL_27:
    if ([array count])
    {
      v21 = array;
    }

    else
    {
      v21 = 0;
    }

    [(HMDNetworkRouterWANFirewallRuleList *)self setPortRules:v21];
    if ([array2 count])
    {
      v22 = array2;
    }

    else
    {
      v22 = 0;
    }

    [(HMDNetworkRouterWANFirewallRuleList *)self setIcmpRules:v22];
    v12 = 0;
    v18 = 1;
    goto LABEL_35;
  }

  selfCopy = self;
  v12 = 0;
  v13 = bytes + v9;
  while (1)
  {
    v31 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (error)
      {
        HMErrorFromOSStatus();
        *error = v18 = 0;
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (!v30)
    {
      break;
    }

    if (v31 == 2)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v25 = v12;
      v15 = [HMDNetworkRouterWANICMPRule parsedFromData:v14 error:&v25];
      v16 = v25;

      if (v16)
      {
        goto LABEL_13;
      }

      v17 = array2;
LABEL_15:
      [v17 addObject:{v15, selfCopy}];
      v12 = 0;
LABEL_16:

      goto LABEL_17;
    }

    if (v31 == 1)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v26 = v12;
      v15 = [HMDNetworkRouterWANPortRule parsedFromData:v14 error:&v26];
      v16 = v26;

      if (!v16)
      {
        v17 = array;
        goto LABEL_15;
      }

LABEL_13:
      v12 = v16;
      goto LABEL_16;
    }

LABEL_17:
    if (v29)
    {
      free(v29);
    }

    if (v27 == v13)
    {
      goto LABEL_24;
    }
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v12 = v19;
LABEL_24:
  self = selfCopy;
  if (!v12)
  {
    goto LABEL_27;
  }

  if (error)
  {
    v20 = v12;
    v18 = 0;
    *error = v12;
    goto LABEL_35;
  }

LABEL_34:
  v18 = 0;
LABEL_35:

  return v18;
}

- (HMDNetworkRouterWANFirewallRuleList)initWithPortRules:(id)rules icmpRules:(id)icmpRules
{
  rulesCopy = rules;
  icmpRulesCopy = icmpRules;
  v12.receiver = self;
  v12.super_class = HMDNetworkRouterWANFirewallRuleList;
  v9 = [(HMDNetworkRouterWANFirewallRuleList *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_portRules, rules);
    objc_storeStrong(&v10->_icmpRules, icmpRules);
  }

  return v10;
}

- (HMDNetworkRouterWANFirewallRuleList)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterWANFirewallRuleList;
  return [(HMDNetworkRouterWANFirewallRuleList *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterWANFirewallRuleList);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterWANFirewallRuleList *)v6 parseFromData:dataCopy error:&v11];
    v8 = v11;
    if (v8)
    {

      if (error)
      {
        v9 = v8;
        v7 = 0;
        *error = v8;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

@end