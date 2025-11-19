@interface HMDNetworkRouterLANFirewallRuleList
+ (id)parsedFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterLANFirewallRuleList)init;
- (HMDNetworkRouterLANFirewallRuleList)initWithMulticastBridgingRules:(id)a3 staticPortRules:(id)a4 dynamicPortRules:(id)a5 staticICMPRules:(id)a6;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
@end

@implementation HMDNetworkRouterLANFirewallRuleList

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDNetworkRouterLANFirewallRuleList *)self multicastBridgingRules];
  v5 = [(HMDNetworkRouterLANFirewallRuleList *)self staticPortRules];
  v6 = [(HMDNetworkRouterLANFirewallRuleList *)self dynamicPortRules];
  v7 = [(HMDNetworkRouterLANFirewallRuleList *)self staticICMPRules];
  v8 = [v3 stringWithFormat:@"<HMDNetworkRouterLANFirewallRuleList multicastBridgingRules=%@, staticPortRules=%@, dynamicPortRules=%@, staticICMPRules=%@>", v4, v5, v6, v7];

  return v8;
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
      v7 = [(HMDNetworkRouterLANFirewallRuleList *)self multicastBridgingRules];
      v8 = [(HMDNetworkRouterLANFirewallRuleList *)v6 multicastBridgingRules];
      if (v7 != v8)
      {
        v9 = [(HMDNetworkRouterLANFirewallRuleList *)self multicastBridgingRules];
        [(HMDNetworkRouterLANFirewallRuleList *)v6 multicastBridgingRules];
        v33 = v32 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      v11 = [(HMDNetworkRouterLANFirewallRuleList *)self staticPortRules];
      v12 = [(HMDNetworkRouterLANFirewallRuleList *)v6 staticPortRules];
      if (v11 != v12)
      {
        v3 = [(HMDNetworkRouterLANFirewallRuleList *)self staticPortRules];
        v30 = [(HMDNetworkRouterLANFirewallRuleList *)v6 staticPortRules];
        if (![v3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (v7 == v8)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      v13 = [(HMDNetworkRouterLANFirewallRuleList *)self dynamicPortRules];
      v14 = [(HMDNetworkRouterLANFirewallRuleList *)v6 dynamicPortRules];
      v31 = v13;
      v15 = v13 == v14;
      v16 = v14;
      if (v15)
      {
        v28 = v3;
        v29 = v12;
      }

      else
      {
        v17 = [(HMDNetworkRouterLANFirewallRuleList *)self dynamicPortRules];
        v25 = [(HMDNetworkRouterLANFirewallRuleList *)v6 dynamicPortRules];
        v26 = v17;
        if (![v17 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = v3;
        v29 = v12;
      }

      v27 = v16;
      v18 = [(HMDNetworkRouterLANFirewallRuleList *)self staticICMPRules];
      v19 = [(HMDNetworkRouterLANFirewallRuleList *)v6 staticICMPRules];
      v20 = v19;
      if (v18 == v19)
      {

        v10 = 1;
      }

      else
      {
        v21 = [(HMDNetworkRouterLANFirewallRuleList *)self staticICMPRules];
        v22 = [(HMDNetworkRouterLANFirewallRuleList *)v6 staticICMPRules];
        v10 = [v21 isEqual:v22];
      }

      v23 = v31;
      v16 = v27;
      v3 = v28;
      v12 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (v11 == v12)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

LABEL_20:

      goto LABEL_21;
    }

    v10 = 0;
  }

LABEL_26:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDNetworkRouterLANFirewallRuleList allocWithZone:a3];
  v5 = [(HMDNetworkRouterLANFirewallRuleList *)self multicastBridgingRules];
  v6 = [(HMDNetworkRouterLANFirewallRuleList *)self staticPortRules];
  v7 = [(HMDNetworkRouterLANFirewallRuleList *)self dynamicPortRules];
  v8 = [(HMDNetworkRouterLANFirewallRuleList *)self staticICMPRules];
  v9 = [(HMDNetworkRouterLANFirewallRuleList *)v4 initWithMulticastBridgingRules:v5 staticPortRules:v6 dynamicPortRules:v7 staticICMPRules:v8];

  return v9;
}

- (id)serializeWithError:(id *)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v85 = 0u;
  v84 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  TLV8BufferInit();
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v5 = [(HMDNetworkRouterLANFirewallRuleList *)self multicastBridgingRules];
  v6 = [v5 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v58;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v58 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v57 + 1) + 8 * v10);
      if (v8)
      {
        if (TLV8BufferAppend())
        {
          break;
        }
      }

      v56 = 0;
      v12 = [v11 serializeWithError:&v56];
      v13 = v56;
      if (v13)
      {
LABEL_46:
        v37 = v13;

        if (!a3)
        {
          goto LABEL_51;
        }

        v38 = v37;
        v36 = 0;
        *a3 = v37;
        goto LABEL_52;
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
        v7 = [v5 countByEnumeratingWithState:&v57 objects:v64 count:16];
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

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v5 = [(HMDNetworkRouterLANFirewallRuleList *)self staticPortRules];
    v15 = [v5 countByEnumeratingWithState:&v52 objects:v63 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v53;
LABEL_14:
      v19 = 0;
      while (1)
      {
        if (*v53 != v18)
        {
          objc_enumerationMutation(v5);
        }

        v20 = *(*(&v52 + 1) + 8 * v19);
        if (v17)
        {
          if (TLV8BufferAppend())
          {
            break;
          }
        }

        v51 = 0;
        v12 = [v20 serializeWithError:&v51];
        v13 = v51;
        if (v13)
        {
          goto LABEL_46;
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
          v16 = [v5 countByEnumeratingWithState:&v52 objects:v63 count:16];
          if (v16)
          {
            goto LABEL_14;
          }

          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:

      v50 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      v5 = [(HMDNetworkRouterLANFirewallRuleList *)self dynamicPortRules];
      v22 = [v5 countByEnumeratingWithState:&v47 objects:v62 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = 0;
        v25 = *v48;
LABEL_25:
        v26 = 0;
        while (1)
        {
          if (*v48 != v25)
          {
            objc_enumerationMutation(v5);
          }

          v27 = *(*(&v47 + 1) + 8 * v26);
          if (v24)
          {
            if (TLV8BufferAppend())
            {
              break;
            }
          }

          v46 = 0;
          v12 = [v27 serializeWithError:&v46];
          v13 = v46;
          if (v13)
          {
            goto LABEL_46;
          }

          [v12 bytes];
          [v12 length];
          v28 = TLV8BufferAppend();

          if (v28)
          {
            break;
          }

          ++v26;
          v24 = 1;
          if (v23 == v26)
          {
            v23 = [v5 countByEnumeratingWithState:&v47 objects:v62 count:16];
            if (v23)
            {
              goto LABEL_25;
            }

            goto LABEL_34;
          }
        }
      }

      else
      {
LABEL_34:

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v5 = [(HMDNetworkRouterLANFirewallRuleList *)self staticICMPRules];
        v29 = [v5 countByEnumeratingWithState:&v42 objects:v61 count:16];
        if (!v29)
        {
LABEL_45:

          v36 = [MEMORY[0x277CBEA90] dataWithBytes:v65 length:?];
          v37 = 0;
          goto LABEL_52;
        }

        v30 = v29;
        v31 = 0;
        v32 = *v43;
LABEL_36:
        v33 = 0;
        while (1)
        {
          if (*v43 != v32)
          {
            objc_enumerationMutation(v5);
          }

          v34 = *(*(&v42 + 1) + 8 * v33);
          if (v31)
          {
            if (TLV8BufferAppend())
            {
              break;
            }
          }

          v41 = 0;
          v12 = [v34 serializeWithError:&v41];
          v13 = v41;
          if (v13)
          {
            goto LABEL_46;
          }

          [v12 bytes];
          [v12 length];
          v35 = TLV8BufferAppend();

          if (v35)
          {
            break;
          }

          ++v33;
          v31 = 1;
          if (v30 == v33)
          {
            v30 = [v5 countByEnumeratingWithState:&v42 objects:v61 count:16];
            if (v30)
            {
              goto LABEL_36;
            }

            goto LABEL_45;
          }
        }
      }
    }
  }

  if (a3)
  {
    HMErrorFromOSStatus();
    v37 = 0;
    *a3 = v36 = 0;
  }

  else
  {
    v37 = 0;
LABEL_51:
    v36 = 0;
  }

LABEL_52:
  TLV8BufferFree();

  v39 = *MEMORY[0x277D85DE8];

  return v36;
}

- (BOOL)parseFromData:(id)a3 error:(id *)a4
{
  v27 = self;
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    *a4 = 0;
  }

  v7 = [v5 bytes];
  v8 = [v6 length];
  v9 = [MEMORY[0x277CBEB18] array];
  v29 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB18] array];
  if (!v8)
  {
LABEL_34:
    if ([v9 count])
    {
      v21 = v9;
    }

    else
    {
      v21 = 0;
    }

    [v28 setMulticastBridgingRules:v21];
    v22 = v29;
    if ([v29 count])
    {
      v23 = v29;
    }

    else
    {
      v23 = 0;
    }

    [v28 setStaticPortRules:v23];
    if ([v10 count])
    {
      v24 = v10;
    }

    else
    {
      v24 = 0;
    }

    [v28 setDynamicPortRules:v24];
    if ([v11 count])
    {
      v25 = v11;
    }

    else
    {
      v25 = 0;
    }

    [v28 setStaticICMPRules:v25];
    v12 = 0;
    v18 = 1;
    goto LABEL_49;
  }

  v12 = 0;
  v13 = v7 + v8;
  while (1)
  {
    v38 = 0;
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (a4)
      {
        HMErrorFromOSStatus();
        *a4 = v18 = 0;
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (!v37)
    {
      break;
    }

    if (v38 > 2u)
    {
      if (v38 == 3)
      {
        v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v31 = v12;
        v15 = [HMDNetworkRouterDynamicPortRule parsedFromData:v14 error:&v31];
        v16 = v31;

        if (v16)
        {
          goto LABEL_20;
        }

        v17 = v10;
        goto LABEL_22;
      }

      if (v38 == 4)
      {
        v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v30 = v12;
        v15 = [HMDNetworkRouterStaticICMPRule parsedFromData:v14 error:&v30];
        v16 = v30;

        if (!v16)
        {
          v17 = v11;
          goto LABEL_22;
        }

LABEL_20:
        v12 = v16;
LABEL_23:
      }
    }

    else
    {
      if (v38 == 1)
      {
        v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v33 = v12;
        v15 = [HMDNetworkRouterMulticastBridgingRule parsedFromData:v14 error:&v33];
        v16 = v33;

        if (v16)
        {
          goto LABEL_20;
        }

        v17 = v9;
LABEL_22:
        [v17 addObject:{v15, v27}];
        v12 = 0;
        goto LABEL_23;
      }

      if (v38 == 2)
      {
        v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v32 = v12;
        v15 = [HMDNetworkRouterStaticPortRule parsedFromData:v14 error:&v32];
        v16 = v32;

        if (!v16)
        {
          v17 = v29;
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    if (v36)
    {
      free(v36);
    }

    if (v34 == v13)
    {
      goto LABEL_31;
    }
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v12 = v19;
LABEL_31:
  if (!v12)
  {
    goto LABEL_34;
  }

  if (a4)
  {
    v20 = v12;
    v18 = 0;
    *a4 = v12;
    goto LABEL_48;
  }

LABEL_47:
  v18 = 0;
LABEL_48:
  v22 = v29;
LABEL_49:

  return v18;
}

- (HMDNetworkRouterLANFirewallRuleList)initWithMulticastBridgingRules:(id)a3 staticPortRules:(id)a4 dynamicPortRules:(id)a5 staticICMPRules:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDNetworkRouterLANFirewallRuleList;
  v15 = [(HMDNetworkRouterLANFirewallRuleList *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_multicastBridgingRules, a3);
    objc_storeStrong(&v16->_staticPortRules, a4);
    objc_storeStrong(&v16->_dynamicPortRules, a5);
    objc_storeStrong(&v16->_staticICMPRules, a6);
  }

  return v16;
}

- (HMDNetworkRouterLANFirewallRuleList)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterLANFirewallRuleList;
  return [(HMDNetworkRouterLANFirewallRuleList *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterLANFirewallRuleList);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterLANFirewallRuleList *)v6 parseFromData:v5 error:&v11];
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