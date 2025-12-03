@interface HMDNetworkRouterMulticastBridgingRule
+ (id)parsedFromData:(id)data error:(id *)error;
+ (id)ruleFromFirewallRuleLAN:(id)n;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterMulticastBridgingRule)init;
- (HMDNetworkRouterMulticastBridgingRule)initWithDirection:(id)direction lanIdentifierList:(id)list destinationIPAddress:(id)address destinationPort:(id)port;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
- (void)addTo:(id)to;
@end

@implementation HMDNetworkRouterMulticastBridgingRule

- (void)addTo:(id)to
{
  toCopy = to;
  multicastBridgingRules = [toCopy multicastBridgingRules];
  v5 = multicastBridgingRules;
  if (multicastBridgingRules)
  {
    [multicastBridgingRules addObject:self];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithObject:self];
    [toCopy setMulticastBridgingRules:v6];
  }
}

+ (id)ruleFromFirewallRuleLAN:(id)n
{
  nCopy = n;
  v4 = +[HMDNetworkRouterRuleDirection directionFromLANDirection:](HMDNetworkRouterRuleDirection, "directionFromLANDirection:", [nCopy direction]);
  v5 = createIdentifierListFromLANRule(nCopy);
  v6 = objc_alloc(MEMORY[0x277CFEC98]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(nCopy, "port")}];
  v8 = [v6 initWithValue:v7];

  ipAddress = [nCopy ipAddress];

  v10 = [HMDNetworkRouterIPAddress ipAddressFromRuleAddress:ipAddress allowWildcard:0];

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
  direction = [(HMDNetworkRouterMulticastBridgingRule *)self direction];
  lanIdentifierList = [(HMDNetworkRouterMulticastBridgingRule *)self lanIdentifierList];
  destinationIPAddress = [(HMDNetworkRouterMulticastBridgingRule *)self destinationIPAddress];
  destinationPort = [(HMDNetworkRouterMulticastBridgingRule *)self destinationPort];
  v8 = [v3 stringWithFormat:@"<HMDNetworkRouterMulticastBridgingRule direction=%@, lanIdentifierList=%@, destinationIPAddress=%@, destinationPort=%@>", direction, lanIdentifierList, destinationIPAddress, destinationPort];

  return v8;
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
      direction = [(HMDNetworkRouterMulticastBridgingRule *)self direction];
      direction2 = [(HMDNetworkRouterMulticastBridgingRule *)v6 direction];
      if (direction != direction2)
      {
        direction3 = [(HMDNetworkRouterMulticastBridgingRule *)self direction];
        [(HMDNetworkRouterMulticastBridgingRule *)v6 direction];
        v33 = v32 = direction3;
        if (![direction3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      lanIdentifierList = [(HMDNetworkRouterMulticastBridgingRule *)self lanIdentifierList];
      lanIdentifierList2 = [(HMDNetworkRouterMulticastBridgingRule *)v6 lanIdentifierList];
      if (lanIdentifierList != lanIdentifierList2)
      {
        lanIdentifierList3 = [(HMDNetworkRouterMulticastBridgingRule *)self lanIdentifierList];
        lanIdentifierList4 = [(HMDNetworkRouterMulticastBridgingRule *)v6 lanIdentifierList];
        if (![lanIdentifierList3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (direction == direction2)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      destinationIPAddress = [(HMDNetworkRouterMulticastBridgingRule *)self destinationIPAddress];
      destinationIPAddress2 = [(HMDNetworkRouterMulticastBridgingRule *)v6 destinationIPAddress];
      v31 = destinationIPAddress;
      v15 = destinationIPAddress == destinationIPAddress2;
      v16 = destinationIPAddress2;
      if (v15)
      {
        v28 = lanIdentifierList3;
        v29 = lanIdentifierList2;
      }

      else
      {
        destinationIPAddress3 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationIPAddress];
        destinationIPAddress4 = [(HMDNetworkRouterMulticastBridgingRule *)v6 destinationIPAddress];
        v26 = destinationIPAddress3;
        if (![destinationIPAddress3 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = lanIdentifierList3;
        v29 = lanIdentifierList2;
      }

      v27 = v16;
      destinationPort = [(HMDNetworkRouterMulticastBridgingRule *)self destinationPort];
      destinationPort2 = [(HMDNetworkRouterMulticastBridgingRule *)v6 destinationPort];
      v20 = destinationPort2;
      if (destinationPort == destinationPort2)
      {

        v10 = 1;
      }

      else
      {
        destinationPort3 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationPort];
        destinationPort4 = [(HMDNetworkRouterMulticastBridgingRule *)v6 destinationPort];
        v10 = [destinationPort3 isEqual:destinationPort4];
      }

      v23 = v31;
      v16 = v27;
      lanIdentifierList3 = v28;
      lanIdentifierList2 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (lanIdentifierList == lanIdentifierList2)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDNetworkRouterMulticastBridgingRule allocWithZone:zone];
  direction = [(HMDNetworkRouterMulticastBridgingRule *)self direction];
  lanIdentifierList = [(HMDNetworkRouterMulticastBridgingRule *)self lanIdentifierList];
  destinationIPAddress = [(HMDNetworkRouterMulticastBridgingRule *)self destinationIPAddress];
  destinationPort = [(HMDNetworkRouterMulticastBridgingRule *)self destinationPort];
  v9 = [(HMDNetworkRouterMulticastBridgingRule *)v4 initWithDirection:direction lanIdentifierList:lanIdentifierList destinationIPAddress:destinationIPAddress destinationPort:destinationPort];

  return v9;
}

- (id)serializeWithError:(id *)error
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
  direction = [(HMDNetworkRouterMulticastBridgingRule *)self direction];

  if (direction)
  {
    direction2 = [(HMDNetworkRouterMulticastBridgingRule *)self direction];
    v23 = 0;
    v7 = [direction2 serializeWithError:&v23];
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

  lanIdentifierList = [(HMDNetworkRouterMulticastBridgingRule *)self lanIdentifierList];

  if (!lanIdentifierList)
  {
    goto LABEL_9;
  }

  lanIdentifierList2 = [(HMDNetworkRouterMulticastBridgingRule *)self lanIdentifierList];
  v22 = 0;
  v7 = [lanIdentifierList2 serializeWithError:&v22];
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
    if (error)
    {
      HMErrorFromOSStatus();
      v8 = 0;
      *error = v13 = 0;
      goto LABEL_22;
    }

    v8 = 0;
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

LABEL_9:
  destinationIPAddress = [(HMDNetworkRouterMulticastBridgingRule *)self destinationIPAddress];

  if (destinationIPAddress)
  {
    destinationIPAddress2 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationIPAddress];
    v21 = 0;
    v7 = [destinationIPAddress2 serializeWithError:&v21];
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

  destinationPort = [(HMDNetworkRouterMulticastBridgingRule *)self destinationPort];

  if (destinationPort)
  {
    destinationPort2 = [(HMDNetworkRouterMulticastBridgingRule *)self destinationPort];
    v20 = 0;
    v7 = [destinationPort2 serializeWithError:&v20];
    v8 = v20;

    if (v8)
    {
LABEL_19:

      if (error)
      {
        v16 = v8;
        v13 = 0;
        *error = v8;
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
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v20 = 0;
    goto LABEL_31;
  }

  selfCopy = self;
  errorCopy = error;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = bytes + v9;
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
      if (errorCopy)
      {
        HMErrorFromOSStatus();
        *errorCopy = v21 = 0;
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
    if (errorCopy)
    {
      v23 = v10;
      v21 = 0;
      *errorCopy = v10;
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  self = selfCopy;
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

- (HMDNetworkRouterMulticastBridgingRule)initWithDirection:(id)direction lanIdentifierList:(id)list destinationIPAddress:(id)address destinationPort:(id)port
{
  directionCopy = direction;
  listCopy = list;
  addressCopy = address;
  portCopy = port;
  v18.receiver = self;
  v18.super_class = HMDNetworkRouterMulticastBridgingRule;
  v15 = [(HMDNetworkRouterMulticastBridgingRule *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_direction, direction);
    objc_storeStrong(&v16->_lanIdentifierList, list);
    objc_storeStrong(&v16->_destinationIPAddress, address);
    objc_storeStrong(&v16->_destinationPort, port);
  }

  return v16;
}

- (HMDNetworkRouterMulticastBridgingRule)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterMulticastBridgingRule;
  return [(HMDNetworkRouterMulticastBridgingRule *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterMulticastBridgingRule);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterMulticastBridgingRule *)v6 parseFromData:dataCopy error:&v11];
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