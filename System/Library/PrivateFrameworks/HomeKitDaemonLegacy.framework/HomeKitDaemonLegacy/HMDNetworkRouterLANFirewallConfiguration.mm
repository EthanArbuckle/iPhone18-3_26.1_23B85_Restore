@interface HMDNetworkRouterLANFirewallConfiguration
+ (HMDNetworkRouterLANFirewallConfiguration)configurationWithFullAccess;
+ (id)configurationFromFirewallRuleConfiguration:(id)configuration;
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterLANFirewallConfiguration)init;
- (HMDNetworkRouterLANFirewallConfiguration)initWithType:(id)type ruleList:(id)list;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
- (void)addRulesFromFirewallConfiguration:(id)configuration;
@end

@implementation HMDNetworkRouterLANFirewallConfiguration

- (void)addRulesFromFirewallConfiguration:(id)configuration
{
  v20 = [HMDNetworkRouterLANFirewallConfiguration configurationFromFirewallRuleConfiguration:configuration];
  ruleList = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
  dynamicPortRules = [ruleList dynamicPortRules];
  ruleList2 = [v20 ruleList];
  dynamicPortRules2 = [ruleList2 dynamicPortRules];
  [dynamicPortRules addObjectsFromArray:dynamicPortRules2];

  ruleList3 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
  staticPortRules = [ruleList3 staticPortRules];
  ruleList4 = [v20 ruleList];
  staticPortRules2 = [ruleList4 staticPortRules];
  [staticPortRules addObjectsFromArray:staticPortRules2];

  ruleList5 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
  staticICMPRules = [ruleList5 staticICMPRules];
  ruleList6 = [v20 ruleList];
  staticICMPRules2 = [ruleList6 staticICMPRules];
  [staticICMPRules addObjectsFromArray:staticICMPRules2];

  ruleList7 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
  multicastBridgingRules = [ruleList7 multicastBridgingRules];
  ruleList8 = [v20 ruleList];
  multicastBridgingRules2 = [ruleList8 multicastBridgingRules];
  [multicastBridgingRules addObjectsFromArray:multicastBridgingRules2];
}

+ (id)configurationFromFirewallRuleConfiguration:(id)configuration
{
  v45 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v4 = objc_alloc_init(HMDNetworkRouterLANFirewallConfiguration);
  hasFullAccessToLAN = [configurationCopy hasFullAccessToLAN];
  v6 = hasFullAccessToLAN;
  v7 = [[HMDNetworkRouterLANFirewall alloc] initWithType:hasFullAccessToLAN ^ 1u];
  [(HMDNetworkRouterLANFirewallConfiguration *)v4 setType:v7];

  if ((v6 & 1) == 0)
  {
    v8 = objc_alloc_init(HMDNetworkRouterLANFirewallRuleList);
    [(HMDNetworkRouterLANFirewallConfiguration *)v4 setRuleList:v8];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = configurationCopy;
    lanRules = [configurationCopy lanRules];
    v10 = [lanRules countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (!v10)
    {
      goto LABEL_19;
    }

    v11 = v10;
    v12 = *v37;
    p_vtable = &OBJC_METACLASS___HMDMediaPlaybackActionModel.vtable;
    v14 = off_27971A1E0;
    while (1)
    {
      v15 = 0;
      v35 = v11;
      do
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(lanRules);
        }

        v16 = *(*(&v36 + 1) + 8 * v15);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v18 = v14;
        if ((isKindOfClass & 1) == 0)
        {
          objc_opt_class();
          v19 = objc_opt_isKindOfClass();
          v18 = off_27971A1E8;
          if ((v19 & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_14;
            }

            transportProtocol = [v16 transportProtocol];
            v18 = off_27971A1F8;
            if (transportProtocol == 2)
            {
              v18 = off_27971A1F0;
            }
          }
        }

        v21 = [(__objc2_class *)*v18 ruleFromFirewallRuleLAN:v16];
        if (v21)
        {
          v22 = v21;
          ruleList = [(HMDNetworkRouterLANFirewallConfiguration *)v4 ruleList];
          [v22 addTo:ruleList];

          goto LABEL_17;
        }

LABEL_14:
        v24 = objc_autoreleasePoolPush();
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v26 = v12;
          v27 = v14;
          v28 = p_vtable;
          v29 = lanRules;
          v31 = v30 = v4;
          *buf = 138543618;
          v41 = v31;
          v42 = 2112;
          v43 = v16;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert LAN rule to TLV, skipping: %@", buf, 0x16u);

          v4 = v30;
          lanRules = v29;
          p_vtable = v28;
          v14 = v27;
          v12 = v26;
          v11 = v35;
        }

        objc_autoreleasePoolPop(v24);
LABEL_17:
        ++v15;
      }

      while (v11 != v15);
      v11 = [lanRules countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (!v11)
      {
LABEL_19:

        configurationCopy = v34;
        break;
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (HMDNetworkRouterLANFirewallConfiguration)configurationWithFullAccess
{
  v2 = objc_alloc_init(HMDNetworkRouterLANFirewallConfiguration);
  v3 = [[HMDNetworkRouterLANFirewall alloc] initWithType:0];
  [(HMDNetworkRouterLANFirewallConfiguration *)v2 setType:v3];

  v4 = objc_alloc_init(HMDNetworkRouterLANFirewallRuleList);
  [(HMDNetworkRouterLANFirewallConfiguration *)v2 setRuleList:v4];

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  type = [(HMDNetworkRouterLANFirewallConfiguration *)self type];
  ruleList = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
  v6 = [v3 stringWithFormat:@"<HMDNetworkRouterLANFirewallConfiguration type=%@, ruleList=%@>", type, ruleList];

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
      type = [(HMDNetworkRouterLANFirewallConfiguration *)self type];
      type2 = [(HMDNetworkRouterLANFirewallConfiguration *)v6 type];
      if (type != type2)
      {
        type3 = [(HMDNetworkRouterLANFirewallConfiguration *)self type];
        type4 = [(HMDNetworkRouterLANFirewallConfiguration *)v6 type];
        if (![type3 isEqual:type4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = type3;
      }

      ruleList = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
      ruleList2 = [(HMDNetworkRouterLANFirewallConfiguration *)v6 ruleList];
      if (ruleList == ruleList2)
      {
        v10 = 1;
      }

      else
      {
        ruleList3 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
        ruleList4 = [(HMDNetworkRouterLANFirewallConfiguration *)v6 ruleList];
        v10 = [ruleList3 isEqual:ruleList4];
      }

      type3 = v16;
      if (type == type2)
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
  v4 = [HMDNetworkRouterLANFirewallConfiguration allocWithZone:zone];
  type = [(HMDNetworkRouterLANFirewallConfiguration *)self type];
  ruleList = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
  v7 = [(HMDNetworkRouterLANFirewallConfiguration *)v4 initWithType:type ruleList:ruleList];

  return v7;
}

- (id)serializeWithError:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  TLV8BufferInit();
  type = [(HMDNetworkRouterLANFirewallConfiguration *)self type];

  if (type)
  {
    type2 = [(HMDNetworkRouterLANFirewallConfiguration *)self type];
    v18 = 0;
    v7 = [type2 serializeWithError:&v18];
    v8 = v18;

    if (v8)
    {
      goto LABEL_6;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
LABEL_9:
      if (error)
      {
        HMErrorFromOSStatus();
        v8 = 0;
        *error = v13 = 0;
        goto LABEL_14;
      }

      v8 = 0;
      goto LABEL_13;
    }
  }

  ruleList = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];

  if (!ruleList)
  {
LABEL_11:
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:?];
    v8 = 0;
    goto LABEL_14;
  }

  ruleList2 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
  v17 = 0;
  v7 = [ruleList2 serializeWithError:&v17];
  v8 = v17;

  if (!v8)
  {
    [v7 bytes];
    [v7 length];
    v14 = TLV8BufferAppend();

    if (v14)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

LABEL_6:

  if (error)
  {
    v12 = v8;
    v13 = 0;
    *error = v8;
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  TLV8BufferFree();

  v15 = *MEMORY[0x277D85DE8];

  return v13;
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
  if (!v9)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_25;
  }

  selfCopy = self;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = bytes + v9;
  do
  {
    v29 = 0;
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (error)
      {
        HMErrorFromOSStatus();
        *error = v19 = 0;
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    if (!v28)
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v12 = v20;
      if (v20)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }

    if (v29 == 2)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v23 = v12;
      v15 = &v23;
      [HMDNetworkRouterLANFirewallRuleList parsedFromData:v14 error:&v23];
      v10 = v16 = v10;
    }

    else
    {
      if (v29 != 1)
      {
        goto LABEL_13;
      }

      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v24 = v12;
      v15 = &v24;
      [HMDNetworkRouterLANFirewall parsedFromData:v14 error:&v24];
      v11 = v16 = v11;
    }

    v17 = *v15;

    v12 = v17;
LABEL_13:
    if (v27)
    {
      free(v27);
    }
  }

  while (v25 != v13);
  if (v12)
  {
LABEL_17:
    if (error)
    {
      v18 = v12;
      v19 = 0;
      *error = v12;
      goto LABEL_26;
    }

LABEL_22:
    v19 = 0;
    goto LABEL_26;
  }

LABEL_24:
  self = selfCopy;
LABEL_25:
  [(HMDNetworkRouterLANFirewallConfiguration *)self setType:v11, selfCopy];
  [(HMDNetworkRouterLANFirewallConfiguration *)self setRuleList:v10];
  v12 = 0;
  v19 = 1;
LABEL_26:

  return v19;
}

- (HMDNetworkRouterLANFirewallConfiguration)initWithType:(id)type ruleList:(id)list
{
  typeCopy = type;
  listCopy = list;
  v12.receiver = self;
  v12.super_class = HMDNetworkRouterLANFirewallConfiguration;
  v9 = [(HMDNetworkRouterLANFirewallConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, type);
    objc_storeStrong(&v10->_ruleList, list);
  }

  return v10;
}

- (HMDNetworkRouterLANFirewallConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterLANFirewallConfiguration;
  return [(HMDNetworkRouterLANFirewallConfiguration *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterLANFirewallConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterLANFirewallConfiguration *)v6 parseFromData:dataCopy error:&v11];
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