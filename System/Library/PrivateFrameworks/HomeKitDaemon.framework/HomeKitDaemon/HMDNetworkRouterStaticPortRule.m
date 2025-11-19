@interface HMDNetworkRouterStaticPortRule
+ (id)parsedFromData:(id)a3 error:(id *)a4;
+ (id)ruleFromFirewallRuleLAN:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterStaticPortRule)init;
- (HMDNetworkRouterStaticPortRule)initWithDirection:(id)a3 lanIdentifierList:(id)a4 protocol:(id)a5 destinationIPAddress:(id)a6 destinationPortStart:(id)a7 destinationPortEnd:(id)a8;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
- (void)addTo:(id)a3;
@end

@implementation HMDNetworkRouterStaticPortRule

- (void)addTo:(id)a3
{
  v7 = a3;
  v4 = [v7 staticPortRules];
  v5 = v4;
  if (v4)
  {
    [v4 addObject:self];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithObject:self];
    [v7 setStaticPortRules:v6];
  }
}

+ (id)ruleFromFirewallRuleLAN:(id)a3
{
  v3 = a3;
  v4 = +[HMDNetworkRouterRuleDirection directionFromLANDirection:](HMDNetworkRouterRuleDirection, "directionFromLANDirection:", [v3 direction]);
  v5 = createIdentifierListFromLANRule(v3);
  v6 = +[HMDNetworkRouterProtocol protocolFromTransportProtocol:](HMDNetworkRouterProtocol, "protocolFromTransportProtocol:", [v3 transportProtocol]);
  v7 = objc_alloc(MEMORY[0x277CFEC98]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v3, "portStart")}];
  v9 = [v7 initWithValue:v8];

  LODWORD(v8) = [v3 portStart];
  if (v8 == [v3 portEnd])
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CFEC98]);
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v3, "portEnd")}];
    v10 = [v11 initWithValue:v12];
  }

  v13 = [v3 ipAddress];

  if (v13 && ([v3 ipAddress], v14 = objc_claimAutoreleasedReturnValue(), +[HMDNetworkRouterIPAddress ipAddressFromRuleAddress:allowWildcard:](HMDNetworkRouterIPAddress, "ipAddressFromRuleAddress:allowWildcard:", v14, 0), v13 = objc_claimAutoreleasedReturnValue(), v14, !v13))
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    if (v4 && v5 && v6 && v9)
    {
      v15 = [[HMDNetworkRouterStaticPortRule alloc] initWithDirection:v4 lanIdentifierList:v5 protocol:v6 destinationIPAddress:v13 destinationPortStart:v9 destinationPortEnd:v10];
    }
  }

  return v15;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDNetworkRouterStaticPortRule *)self direction];
  v5 = [(HMDNetworkRouterStaticPortRule *)self lanIdentifierList];
  v6 = [(HMDNetworkRouterStaticPortRule *)self protocol];
  v7 = [(HMDNetworkRouterStaticPortRule *)self destinationIPAddress];
  v8 = [(HMDNetworkRouterStaticPortRule *)self destinationPortStart];
  v9 = [(HMDNetworkRouterStaticPortRule *)self destinationPortEnd];
  v10 = [v3 stringWithFormat:@"<HMDNetworkRouterStaticPortRule direction=%@, lanIdentifierList=%@, protocol=%@, destinationIPAddress=%@, destinationPortStart=%@, destinationPortEnd=%@>", v4, v5, v6, v7, v8, v9];

  return v10;
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
      v7 = [(HMDNetworkRouterStaticPortRule *)self direction];
      v8 = [(HMDNetworkRouterStaticPortRule *)v6 direction];
      if (v7 != v8)
      {
        v9 = [(HMDNetworkRouterStaticPortRule *)self direction];
        v55 = [(HMDNetworkRouterStaticPortRule *)v6 direction];
        v56 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_37;
        }
      }

      v11 = [(HMDNetworkRouterStaticPortRule *)self lanIdentifierList];
      v12 = [(HMDNetworkRouterStaticPortRule *)v6 lanIdentifierList];
      if (v11 != v12)
      {
        v3 = [(HMDNetworkRouterStaticPortRule *)self lanIdentifierList];
        v53 = [(HMDNetworkRouterStaticPortRule *)v6 lanIdentifierList];
        if (![v3 isEqual:?])
        {
          v10 = 0;
LABEL_35:

LABEL_36:
          if (v7 == v8)
          {
LABEL_38:

            goto LABEL_39;
          }

LABEL_37:

          goto LABEL_38;
        }
      }

      v13 = [(HMDNetworkRouterStaticPortRule *)self protocol];
      v14 = [(HMDNetworkRouterStaticPortRule *)v6 protocol];
      v54 = v13;
      v15 = v13 == v14;
      v16 = v14;
      if (v15)
      {
        v51 = v14;
      }

      else
      {
        v17 = [(HMDNetworkRouterStaticPortRule *)self protocol];
        v47 = [(HMDNetworkRouterStaticPortRule *)v6 protocol];
        v48 = v17;
        if (![v17 isEqual:?])
        {
          v10 = 0;
          v24 = v16;
          v25 = v54;
LABEL_33:

LABEL_34:
          if (v11 == v12)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v51 = v16;
      }

      v18 = [(HMDNetworkRouterStaticPortRule *)self destinationIPAddress];
      v19 = [(HMDNetworkRouterStaticPortRule *)v6 destinationIPAddress];
      v49 = v18;
      v50 = v3;
      v15 = v18 == v19;
      v20 = v19;
      if (!v15)
      {
        v21 = [(HMDNetworkRouterStaticPortRule *)self destinationIPAddress];
        v41 = [(HMDNetworkRouterStaticPortRule *)v6 destinationIPAddress];
        v42 = v21;
        if (![v21 isEqual:?])
        {
          v22 = v51;
          v10 = 0;
          v23 = v49;
LABEL_31:

LABEL_32:
          v25 = v54;
          v24 = v22;
          v15 = v54 == v22;
          v3 = v50;
          if (v15)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      v26 = [(HMDNetworkRouterStaticPortRule *)self destinationPortStart];
      v44 = [(HMDNetworkRouterStaticPortRule *)v6 destinationPortStart];
      v45 = v26;
      v46 = v20;
      v43 = v12;
      if (v26 == v44)
      {
        v40 = v11;
        v29 = v51;
      }

      else
      {
        v27 = [(HMDNetworkRouterStaticPortRule *)self destinationPortStart];
        v38 = [(HMDNetworkRouterStaticPortRule *)v6 destinationPortStart];
        v39 = v27;
        v28 = [v27 isEqual:?];
        v29 = v51;
        if (!v28)
        {
          v10 = 0;
          v36 = v44;
          v35 = v45;
          goto LABEL_28;
        }

        v40 = v11;
      }

      v30 = [(HMDNetworkRouterStaticPortRule *)self destinationPortEnd];
      v31 = [(HMDNetworkRouterStaticPortRule *)v6 destinationPortEnd];
      v32 = v31;
      if (v30 == v31)
      {

        v10 = 1;
      }

      else
      {
        [(HMDNetworkRouterStaticPortRule *)self destinationPortEnd];
        v33 = v52 = v29;
        v34 = [(HMDNetworkRouterStaticPortRule *)v6 destinationPortEnd];
        v10 = [v33 isEqual:v34];

        v29 = v52;
      }

      v36 = v44;
      v35 = v45;
      v11 = v40;
      if (v45 == v44)
      {
        v22 = v29;
LABEL_30:

        v23 = v49;
        v20 = v46;
        v12 = v43;
        if (v49 == v46)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

LABEL_28:
      v22 = v29;

      goto LABEL_30;
    }

    v10 = 0;
  }

LABEL_39:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDNetworkRouterStaticPortRule allocWithZone:a3];
  v5 = [(HMDNetworkRouterStaticPortRule *)self direction];
  v6 = [(HMDNetworkRouterStaticPortRule *)self lanIdentifierList];
  v7 = [(HMDNetworkRouterStaticPortRule *)self protocol];
  v8 = [(HMDNetworkRouterStaticPortRule *)self destinationIPAddress];
  v9 = [(HMDNetworkRouterStaticPortRule *)self destinationPortStart];
  v10 = [(HMDNetworkRouterStaticPortRule *)self destinationPortEnd];
  v11 = [(HMDNetworkRouterStaticPortRule *)v4 initWithDirection:v5 lanIdentifierList:v6 protocol:v7 destinationIPAddress:v8 destinationPortStart:v9 destinationPortEnd:v10];

  return v11;
}

- (id)serializeWithError:(id *)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  TLV8BufferInit();
  v5 = [(HMDNetworkRouterStaticPortRule *)self direction];

  if (v5)
  {
    v6 = [(HMDNetworkRouterStaticPortRule *)self direction];
    v29 = 0;
    v7 = [v6 serializeWithError:&v29];
    v8 = v29;

    if (v8)
    {
      goto LABEL_27;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_20;
    }
  }

  v9 = [(HMDNetworkRouterStaticPortRule *)self lanIdentifierList];

  if (v9)
  {
    v10 = [(HMDNetworkRouterStaticPortRule *)self lanIdentifierList];
    v28 = 0;
    v7 = [v10 serializeWithError:&v28];
    v8 = v28;

    if (v8)
    {
      goto LABEL_27;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_20;
    }
  }

  v11 = [(HMDNetworkRouterStaticPortRule *)self protocol];

  if (v11)
  {
    v12 = [(HMDNetworkRouterStaticPortRule *)self protocol];
    v27 = 0;
    v7 = [v12 serializeWithError:&v27];
    v8 = v27;

    if (v8)
    {
      goto LABEL_27;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_20;
    }
  }

  v13 = [(HMDNetworkRouterStaticPortRule *)self destinationIPAddress];

  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = [(HMDNetworkRouterStaticPortRule *)self destinationIPAddress];
  v26 = 0;
  v7 = [v14 serializeWithError:&v26];
  v8 = v26;

  if (v8)
  {
    goto LABEL_27;
  }

  [v7 bytes];
  [v7 length];
  if (TLV8BufferAppend())
  {
LABEL_20:

LABEL_21:
    if (a3)
    {
      HMErrorFromOSStatus();
      v8 = 0;
      *a3 = v17 = 0;
      goto LABEL_30;
    }

    v8 = 0;
LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

LABEL_17:
  v15 = [(HMDNetworkRouterStaticPortRule *)self destinationPortStart];

  if (v15)
  {
    v16 = [(HMDNetworkRouterStaticPortRule *)self destinationPortStart];
    v25 = 0;
    v7 = [v16 serializeWithError:&v25];
    v8 = v25;

    if (v8)
    {
      goto LABEL_27;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_20;
    }
  }

  v18 = [(HMDNetworkRouterStaticPortRule *)self destinationPortEnd];

  if (v18)
  {
    v19 = [(HMDNetworkRouterStaticPortRule *)self destinationPortEnd];
    v24 = 0;
    v7 = [v19 serializeWithError:&v24];
    v8 = v24;

    if (v8)
    {
LABEL_27:

      if (a3)
      {
        v20 = v8;
        v17 = 0;
        *a3 = v8;
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    [v7 bytes];
    [v7 length];
    v23 = TLV8BufferAppend();

    if (v23)
    {
      goto LABEL_21;
    }
  }

  v17 = [MEMORY[0x277CBEA90] dataWithBytes:v30 length:?];
  v8 = 0;
LABEL_30:
  TLV8BufferFree();

  v21 = *MEMORY[0x277D85DE8];

  return v17;
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
    v20 = 0;
    v21 = 0;
    v11 = 0;
    v12 = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_35;
  }

  v10 = 0;
  v28 = 0;
  v29 = 0;
  v11 = 0;
  v12 = 0;
  v26 = 0;
  v27 = 0;
  v13 = v8 + v9;
  do
  {
    v40 = 0;
    v39 = 0;
    v37 = 0;
    v38 = 0;
    v36 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (a4)
      {
        HMErrorFromOSStatus();
        *a4 = v19 = 0;
        goto LABEL_32;
      }

LABEL_31:
      v19 = 0;
      goto LABEL_32;
    }

    if (!v39)
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v10 = v24;
      if (!v24)
      {
        goto LABEL_34;
      }

LABEL_26:
      if (a4)
      {
        v18 = v10;
        v19 = 0;
        *a4 = v10;
LABEL_32:
        v21 = v28;
        v20 = v29;
        v22 = v26;
        v23 = v27;
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    if (v40 > 3u)
    {
      switch(v40)
      {
        case 4u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v32 = v10;
          v15 = &v32;
          [HMDNetworkRouterIPAddress parsedFromData:v14 error:&v32];
          v26 = v16 = v26;
          break;
        case 5u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v31 = v10;
          v15 = &v31;
          [MEMORY[0x277CFEC98] parsedFromData:v14 error:&v31];
          v12 = v16 = v12;
          break;
        case 6u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v30 = v10;
          v15 = &v30;
          [MEMORY[0x277CFEC98] parsedFromData:v14 error:&v30];
          v11 = v16 = v11;
          break;
        default:
          goto LABEL_22;
      }
    }

    else
    {
      switch(v40)
      {
        case 1u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v35 = v10;
          v15 = &v35;
          [HMDNetworkRouterRuleDirection parsedFromData:v14 error:&v35];
          v29 = v16 = v29;
          break;
        case 2u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v34 = v10;
          v15 = &v34;
          [HMDNetworkRouterLANIdentifierList parsedFromData:v14 error:&v34];
          v28 = v16 = v28;
          break;
        case 3u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v33 = v10;
          v15 = &v33;
          [HMDNetworkRouterProtocol parsedFromData:v14 error:&v33];
          v27 = v16 = v27;
          break;
        default:
          goto LABEL_22;
      }
    }

    v17 = *v15;

    v10 = v17;
LABEL_22:
    if (v38)
    {
      free(v38);
    }
  }

  while (v36 != v13);
  if (v10)
  {
    goto LABEL_26;
  }

LABEL_34:
  v21 = v28;
  v20 = v29;
  v22 = v26;
  v23 = v27;
LABEL_35:
  [(HMDNetworkRouterStaticPortRule *)self setDirection:v20];
  [(HMDNetworkRouterStaticPortRule *)self setLanIdentifierList:v21];
  [(HMDNetworkRouterStaticPortRule *)self setProtocol:v23];
  [(HMDNetworkRouterStaticPortRule *)self setDestinationIPAddress:v22];
  [(HMDNetworkRouterStaticPortRule *)self setDestinationPortStart:v12];
  [(HMDNetworkRouterStaticPortRule *)self setDestinationPortEnd:v11];
  v10 = 0;
  v19 = 1;
LABEL_36:

  return v19;
}

- (HMDNetworkRouterStaticPortRule)initWithDirection:(id)a3 lanIdentifierList:(id)a4 protocol:(id)a5 destinationIPAddress:(id)a6 destinationPortStart:(id)a7 destinationPortEnd:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HMDNetworkRouterStaticPortRule;
  v18 = [(HMDNetworkRouterStaticPortRule *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_direction, a3);
    objc_storeStrong(&v19->_lanIdentifierList, a4);
    objc_storeStrong(&v19->_protocol, a5);
    objc_storeStrong(&v19->_destinationIPAddress, a6);
    objc_storeStrong(&v19->_destinationPortStart, a7);
    objc_storeStrong(&v19->_destinationPortEnd, a8);
  }

  return v19;
}

- (HMDNetworkRouterStaticPortRule)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterStaticPortRule;
  return [(HMDNetworkRouterStaticPortRule *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterStaticPortRule);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterStaticPortRule *)v6 parseFromData:v5 error:&v11];
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