@interface HMDNetworkRouterMulticastBridgingRule
+ (id)parsedFromData:(id)a3 error:(id *)a4;
+ (id)ruleFromFirewallRuleLAN:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)parseFromData:(id)a3 error:(id *)a4;
- (HMDNetworkRouterMulticastBridgingRule)init;
- (HMDNetworkRouterMulticastBridgingRule)initWithDirection:(id)a3 lanIdentifierList:(id)a4 destinationIPAddress:(id)a5 destinationPort:(id)a6;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithError:(id *)a3;
- (void)addTo:(id)a3;
@end

@implementation HMDNetworkRouterMulticastBridgingRule

- (void)addTo:(id)a3
{
  v7 = a3;
  v4 = [v7 multicastBridgingRules];
  v5 = v4;
  if (v4)
  {
    [v4 addObject:self];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithObject:self];
    [v7 setMulticastBridgingRules:v6];
  }
}

+ (id)ruleFromFirewallRuleLAN:(id)a3
{
  v3 = a3;
  v4 = +[HMDNetworkRouterRuleDirection directionFromLANDirection:](HMDNetworkRouterRuleDirection, "directionFromLANDirection:", [v3 direction]);
  v5 = createIdentifierListFromLANRule(v3);
  v6 = objc_alloc(MEMORY[0x277CFEC98]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v3, "port")}];
  v8 = [v6 initWithValue:v7];

  v9 = [v3 ipAddress];

  v10 = [HMDNetworkRouterIPAddress ipAddressFromRuleAddress:v9 allowWildcard:0];

  v11 = 0;
  if (v4 && v5 && v8 && v10)
  {
    v11 = [[HMDNetworkRouterMulticastBridgingRule alloc] initWithDirection:v4 lanIdentifierList:v5 destinationIPAddress:v10 destinationPort:v8];
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDNetworkRouterMulticastBridgingRule *)self direction];
  v5 = [(HMDNetworkRouterMulticastBridgingRule *)self lanIdentifierList];
  v6 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationIPAddress];
  v7 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationPort];
  v8 = [v3 stringWithFormat:@"<HMDNetworkRouterMulticastBridgingRule direction=%@, lanIdentifierList=%@, destinationIPAddress=%@, destinationPort=%@>", v4, v5, v6, v7];

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
      v7 = [(HMDNetworkRouterMulticastBridgingRule *)self direction];
      v8 = [(HMDNetworkRouterMulticastBridgingRule *)v6 direction];
      if (v7 != v8)
      {
        v9 = [(HMDNetworkRouterMulticastBridgingRule *)self direction];
        [(HMDNetworkRouterMulticastBridgingRule *)v6 direction];
        v33 = v32 = v9;
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      v11 = [(HMDNetworkRouterMulticastBridgingRule *)self lanIdentifierList];
      v12 = [(HMDNetworkRouterMulticastBridgingRule *)v6 lanIdentifierList];
      if (v11 != v12)
      {
        v3 = [(HMDNetworkRouterMulticastBridgingRule *)self lanIdentifierList];
        v30 = [(HMDNetworkRouterMulticastBridgingRule *)v6 lanIdentifierList];
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

      v13 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationIPAddress];
      v14 = [(HMDNetworkRouterMulticastBridgingRule *)v6 destinationIPAddress];
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
        v17 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationIPAddress];
        v25 = [(HMDNetworkRouterMulticastBridgingRule *)v6 destinationIPAddress];
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
      v18 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationPort];
      v19 = [(HMDNetworkRouterMulticastBridgingRule *)v6 destinationPort];
      v20 = v19;
      if (v18 == v19)
      {

        v10 = 1;
      }

      else
      {
        v21 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationPort];
        v22 = [(HMDNetworkRouterMulticastBridgingRule *)v6 destinationPort];
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
  v4 = [HMDNetworkRouterMulticastBridgingRule allocWithZone:a3];
  v5 = [(HMDNetworkRouterMulticastBridgingRule *)self direction];
  v6 = [(HMDNetworkRouterMulticastBridgingRule *)self lanIdentifierList];
  v7 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationIPAddress];
  v8 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationPort];
  v9 = [(HMDNetworkRouterMulticastBridgingRule *)v4 initWithDirection:v5 lanIdentifierList:v6 destinationIPAddress:v7 destinationPort:v8];

  return v9;
}

- (id)serializeWithError:(id *)a3
{
  v45 = *MEMORY[0x277D85DE8];
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
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  TLV8BufferInit();
  v5 = [(HMDNetworkRouterMulticastBridgingRule *)self direction];

  if (v5)
  {
    v6 = [(HMDNetworkRouterMulticastBridgingRule *)self direction];
    v23 = 0;
    v7 = [v6 serializeWithError:&v23];
    v8 = v23;

    if (v8)
    {
      goto LABEL_19;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_12;
    }
  }

  v9 = [(HMDNetworkRouterMulticastBridgingRule *)self lanIdentifierList];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [(HMDNetworkRouterMulticastBridgingRule *)self lanIdentifierList];
  v22 = 0;
  v7 = [v10 serializeWithError:&v22];
  v8 = v22;

  if (v8)
  {
    goto LABEL_19;
  }

  [v7 bytes];
  [v7 length];
  if (TLV8BufferAppend())
  {
LABEL_12:

LABEL_13:
    if (a3)
    {
      HMErrorFromOSStatus();
      v8 = 0;
      *a3 = v13 = 0;
      goto LABEL_22;
    }

    v8 = 0;
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

LABEL_9:
  v11 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationIPAddress];

  if (v11)
  {
    v12 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationIPAddress];
    v21 = 0;
    v7 = [v12 serializeWithError:&v21];
    v8 = v21;

    if (v8)
    {
      goto LABEL_19;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_12;
    }
  }

  v14 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationPort];

  if (v14)
  {
    v15 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationPort];
    v20 = 0;
    v7 = [v15 serializeWithError:&v20];
    v8 = v20;

    if (v8)
    {
LABEL_19:

      if (a3)
      {
        v16 = v8;
        v13 = 0;
        *a3 = v8;
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    [v7 bytes];
    [v7 length];
    v19 = TLV8BufferAppend();

    if (v19)
    {
      goto LABEL_13;
    }
  }

  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:?];
  v8 = 0;
LABEL_22:
  TLV8BufferFree();

  v17 = *MEMORY[0x277D85DE8];

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
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v20 = 0;
    goto LABEL_31;
  }

  v25 = self;
  v26 = a4;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v8 + v9;
  while (1)
  {
    v35 = 0;
    v33 = 0;
    v34 = 0;
    v31 = 0;
    v32 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      v20 = v14;
      if (v26)
      {
        HMErrorFromOSStatus();
        *v26 = v21 = 0;
        goto LABEL_32;
      }

LABEL_29:
      v21 = 0;
      goto LABEL_32;
    }

    if (!v34)
    {
      break;
    }

    if (v35 > 2u)
    {
      if (v35 == 3)
      {
        v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v28 = v10;
        v17 = &v28;
        [HMDNetworkRouterIPAddress parsedFromData:v16 error:&v28];
        v12 = v18 = v12;
        goto LABEL_17;
      }

      if (v35 == 4)
      {
        v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v27 = v10;
        v17 = &v27;
        [MEMORY[0x277CFEC98] parsedFromData:v16 error:&v27];
        v11 = v18 = v11;
        goto LABEL_17;
      }
    }

    else
    {
      if (v35 == 1)
      {
        v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v30 = v10;
        v17 = &v30;
        [HMDNetworkRouterRuleDirection parsedFromData:v16 error:&v30];
        v14 = v18 = v14;
        goto LABEL_17;
      }

      if (v35 == 2)
      {
        v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v29 = v10;
        v17 = &v29;
        [HMDNetworkRouterLANIdentifierList parsedFromData:v16 error:&v29];
        v13 = v18 = v13;
LABEL_17:
        v19 = *v17;

        v10 = v19;
      }
    }

    if (v33)
    {
      free(v33);
    }

    if (v31 == v15)
    {
      goto LABEL_26;
    }
  }

  v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v10 = v22;
LABEL_26:
  v20 = v14;
  if (v10)
  {
    if (v26)
    {
      v23 = v10;
      v21 = 0;
      *v26 = v10;
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  self = v25;
LABEL_31:
  [(HMDNetworkRouterMulticastBridgingRule *)self setDirection:v20];
  [(HMDNetworkRouterMulticastBridgingRule *)self setLanIdentifierList:v13];
  [(HMDNetworkRouterMulticastBridgingRule *)self setDestinationIPAddress:v12];
  [(HMDNetworkRouterMulticastBridgingRule *)self setDestinationPort:v11];
  v10 = 0;
  v21 = 1;
LABEL_32:

  return v21;
}

- (HMDNetworkRouterMulticastBridgingRule)initWithDirection:(id)a3 lanIdentifierList:(id)a4 destinationIPAddress:(id)a5 destinationPort:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDNetworkRouterMulticastBridgingRule;
  v15 = [(HMDNetworkRouterMulticastBridgingRule *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_direction, a3);
    objc_storeStrong(&v16->_lanIdentifierList, a4);
    objc_storeStrong(&v16->_destinationIPAddress, a5);
    objc_storeStrong(&v16->_destinationPort, a6);
  }

  return v16;
}

- (HMDNetworkRouterMulticastBridgingRule)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterMulticastBridgingRule;
  return [(HMDNetworkRouterMulticastBridgingRule *)&v3 init];
}

+ (id)parsedFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(HMDNetworkRouterMulticastBridgingRule);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterMulticastBridgingRule *)v6 parseFromData:v5 error:&v11];
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