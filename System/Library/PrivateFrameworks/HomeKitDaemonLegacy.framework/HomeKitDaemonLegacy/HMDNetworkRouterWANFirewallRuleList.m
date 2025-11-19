@interface HMDNetworkRouterWANFirewallRuleList
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterWANFirewallRuleList)init;
- (HMDNetworkRouterWANFirewallRuleList)initWithPortRules:(id)a3 icmpRules:(id)a4;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDNetworkRouterWANFirewallRuleList

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDNetworkRouterWANFirewallRuleList *)self portRules];
  v5 = [(HMDNetworkRouterWANFirewallRuleList *)self icmpRules];
  v6 = [v3 stringWithFormat:@"<HMDNetworkRouterWANFirewallRuleList portRules=%@, icmpRules=%@>", v4, v5];

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
      v7 = [(HMDNetworkRouterWANFirewallRuleList *)self portRules];
      v8 = [(HMDNetworkRouterWANFirewallRuleList *)v6 portRules];
      if (v7 != v8)
      {
        v9 = [(HMDNetworkRouterWANFirewallRuleList *)self portRules];
        v3 = [(HMDNetworkRouterWANFirewallRuleList *)v6 portRules];
        if (![v9 isEqual:v3])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = v9;
      }

      v11 = [(HMDNetworkRouterWANFirewallRuleList *)self icmpRules];
      v12 = [(HMDNetworkRouterWANFirewallRuleList *)v6 icmpRules];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HMDNetworkRouterWANFirewallRuleList *)self icmpRules];
        v14 = [(HMDNetworkRouterWANFirewallRuleList *)v6 icmpRules];
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
  v4 = [HMDNetworkRouterWANFirewallRuleList allocWithZone:a3];
  v5 = [(HMDNetworkRouterWANFirewallRuleList *)self portRules];
  v6 = [(HMDNetworkRouterWANFirewallRuleList *)self icmpRules];
  v7 = [(HMDNetworkRouterWANFirewallRuleList *)v4 initWithPortRules:v5 icmpRules:v6];

  return v7;
}

- (id)serializeWithError:(id *)a3
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
  v5 = [(HMDNetworkRouterWANFirewallRuleList *)self portRules];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
        objc_enumerationMutation(v5);
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

        if (!a3)
        {
          goto LABEL_29;
        }

        v24 = v23;
        v22 = 0;
        *a3 = v23;
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
        v7 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
    v5 = [(HMDNetworkRouterWANFirewallRuleList *)self icmpRules];
    v15 = [v5 countByEnumeratingWithState:&v28 objects:v37 count:16];
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
        objc_enumerationMutation(v5);
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
        v16 = [v5 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v16)
        {
          goto LABEL_14;
        }

        goto LABEL_23;
      }
    }
  }

  if (a3)
  {
    HMErrorFromOSStatus();
    v23 = 0;
    *a3 = v22 = 0;
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
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  if (!v9)
  {
LABEL_27:
    if ([v10 count])
    {
      v21 = v10;
    }

    else
    {
      v21 = 0;
    }

    [(HMDNetworkRouterWANFirewallRuleList *)self setPortRules:v21];
    if ([v11 count])
    {
      v22 = v11;
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

  v24 = self;
  v12 = 0;
  v13 = v8 + v9;
  while (1)
  {
    v31 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (a4)
      {
        HMErrorFromOSStatus();
        *a4 = v18 = 0;
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

      v17 = v11;
LABEL_15:
      [v17 addObject:{v15, v24}];
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
        v17 = v10;
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
  self = v24;
  if (!v12)
  {
    goto LABEL_27;
  }

  if (a4)
  {
    v20 = v12;
    v18 = 0;
    *a4 = v12;
    goto LABEL_35;
  }

LABEL_34:
  v18 = 0;
LABEL_35:

  return v18;
}

- (HMDNetworkRouterWANFirewallRuleList)initWithPortRules:(id)a3 icmpRules:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDNetworkRouterWANFirewallRuleList;
  v9 = [(HMDNetworkRouterWANFirewallRuleList *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_portRules, a3);
    objc_storeStrong(&v10->_icmpRules, a4);
  }

  return v10;
}

- (HMDNetworkRouterWANFirewallRuleList)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterWANFirewallRuleList;
  return [(HMDNetworkRouterWANFirewallRuleList *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterWANFirewallRuleList);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterWANFirewallRuleList *)v6 parseFromData:v5 error:&v11];
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