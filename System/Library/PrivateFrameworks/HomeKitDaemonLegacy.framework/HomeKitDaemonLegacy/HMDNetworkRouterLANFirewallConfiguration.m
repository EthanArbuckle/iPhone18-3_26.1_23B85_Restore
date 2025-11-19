@interface HMDNetworkRouterLANFirewallConfiguration
+ (HMDNetworkRouterLANFirewallConfiguration)configurationWithFullAccess;
+ (id)configurationFromFirewallRuleConfiguration:(id)a3;
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterLANFirewallConfiguration)init;
- (HMDNetworkRouterLANFirewallConfiguration)initWithType:(id)a3 ruleList:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
- (void)addRulesFromFirewallConfiguration:(id)a3;
@end

@implementation HMDNetworkRouterLANFirewallConfiguration

- (void)addRulesFromFirewallConfiguration:(id)a3
{
  v20 = [HMDNetworkRouterLANFirewallConfiguration configurationFromFirewallRuleConfiguration:a3];
  v4 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
  v5 = [v4 dynamicPortRules];
  v6 = [v20 ruleList];
  v7 = [v6 dynamicPortRules];
  [v5 addObjectsFromArray:v7];

  v8 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
  v9 = [v8 staticPortRules];
  v10 = [v20 ruleList];
  v11 = [v10 staticPortRules];
  [v9 addObjectsFromArray:v11];

  v12 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
  v13 = [v12 staticICMPRules];
  v14 = [v20 ruleList];
  v15 = [v14 staticICMPRules];
  [v13 addObjectsFromArray:v15];

  v16 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
  v17 = [v16 multicastBridgingRules];
  v18 = [v20 ruleList];
  v19 = [v18 multicastBridgingRules];
  [v17 addObjectsFromArray:v19];
}

+ (id)configurationFromFirewallRuleConfiguration:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(HMDNetworkRouterLANFirewallConfiguration);
  v5 = [v3 hasFullAccessToLAN];
  v6 = v5;
  v7 = [[HMDNetworkRouterLANFirewall alloc] initWithType:v5 ^ 1u];
  [(HMDNetworkRouterLANFirewallConfiguration *)v4 setType:v7];

  if ((v6 & 1) == 0)
  {
    v8 = objc_alloc_init(HMDNetworkRouterLANFirewallRuleList);
    [(HMDNetworkRouterLANFirewallConfiguration *)v4 setRuleList:v8];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = v3;
    v9 = [v3 lanRules];
    v10 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
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
          objc_enumerationMutation(v9);
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

            v20 = [v16 transportProtocol];
            v18 = off_27971A1F8;
            if (v20 == 2)
            {
              v18 = off_27971A1F0;
            }
          }
        }

        v21 = [(__objc2_class *)*v18 ruleFromFirewallRuleLAN:v16];
        if (v21)
        {
          v22 = v21;
          v23 = [(HMDNetworkRouterLANFirewallConfiguration *)v4 ruleList];
          [v22 addTo:v23];

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
          v29 = v9;
          v31 = v30 = v4;
          *buf = 138543618;
          v41 = v31;
          v42 = 2112;
          v43 = v16;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to convert LAN rule to TLV, skipping: %@", buf, 0x16u);

          v4 = v30;
          v9 = v29;
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
      v11 = [v9 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (!v11)
      {
LABEL_19:

        v3 = v34;
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
  v4 = [(HMDNetworkRouterLANFirewallConfiguration *)self type];
  v5 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
  v6 = [v3 stringWithFormat:@"<HMDNetworkRouterLANFirewallConfiguration type=%@, ruleList=%@>", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(HMDNetworkRouterLANFirewallConfiguration *)self type];
      v8 = [(HMDNetworkRouterLANFirewallConfiguration *)v6 type];
      if (v7 != v8)
      {
        v9 = [(HMDNetworkRouterLANFirewallConfiguration *)self type];
        v3 = [(HMDNetworkRouterLANFirewallConfiguration *)v6 type];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
      v12 = [(HMDNetworkRouterLANFirewallConfiguration *)v6 ruleList];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
        v14 = [(HMDNetworkRouterLANFirewallConfiguration *)v6 ruleList];
        v10 = [v13 isEqual:v14];
      }

      v9 = v16;
      if (v7 == v8)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDNetworkRouterLANFirewallConfiguration allocWithZone:a3];
  v5 = [(HMDNetworkRouterLANFirewallConfiguration *)self type];
  v6 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
  v7 = [(HMDNetworkRouterLANFirewallConfiguration *)v4 initWithType:v5 ruleList:v6];

  return v7;
}

- (id)serializeWithError:(id *)a3
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
  v5 = [(HMDNetworkRouterLANFirewallConfiguration *)self type];

  if (v5)
  {
    v6 = [(HMDNetworkRouterLANFirewallConfiguration *)self type];
    v18 = 0;
    v7 = [v6 serializeWithError:&v18];
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
      if (a3)
      {
        HMErrorFromOSStatus();
        v8 = 0;
        *a3 = v13 = 0;
        goto LABEL_14;
      }

      v8 = 0;
      goto LABEL_13;
    }
  }

  v10 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];

  if (!v10)
  {
LABEL_11:
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:?];
    v8 = 0;
    goto LABEL_14;
  }

  v11 = [(HMDNetworkRouterLANFirewallConfiguration *)self ruleList];
  v17 = 0;
  v7 = [v11 serializeWithError:&v17];
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

  if (a3)
  {
    v12 = v8;
    v13 = 0;
    *a3 = v8;
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  TLV8BufferFree();

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    *a4 = 0;
  }

  v8 = [v6 bytes];
  v9 = [v7 length];
  if (!v9)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_25;
  }

  v22 = self;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v8 + v9;
  do
  {
    v29 = 0;
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (a4)
      {
        HMErrorFromOSStatus();
        *a4 = v19 = 0;
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
    if (a4)
    {
      v18 = v12;
      v19 = 0;
      *a4 = v12;
      goto LABEL_26;
    }

LABEL_22:
    v19 = 0;
    goto LABEL_26;
  }

LABEL_24:
  self = v22;
LABEL_25:
  [(HMDNetworkRouterLANFirewallConfiguration *)self setType:v11, v22];
  [(HMDNetworkRouterLANFirewallConfiguration *)self setRuleList:v10];
  v12 = 0;
  v19 = 1;
LABEL_26:

  return v19;
}

- (HMDNetworkRouterLANFirewallConfiguration)initWithType:(id)a3 ruleList:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDNetworkRouterLANFirewallConfiguration;
  v9 = [(HMDNetworkRouterLANFirewallConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, a3);
    objc_storeStrong(&v10->_ruleList, a4);
  }

  return v10;
}

- (HMDNetworkRouterLANFirewallConfiguration)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterLANFirewallConfiguration;
  return [(HMDNetworkRouterLANFirewallConfiguration *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterLANFirewallConfiguration);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterLANFirewallConfiguration *)v6 parseFromData:v5 error:&v11];
    v8 = v11;
    if (v8)
    {

      if (a4)
      {
        v9 = v8;
        v7 = 0;
        *a4 = v8;
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