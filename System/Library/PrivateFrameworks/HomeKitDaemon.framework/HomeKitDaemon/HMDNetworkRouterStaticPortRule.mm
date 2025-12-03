@interface HMDNetworkRouterStaticPortRule
+ (id)parsedFromData:(id)data error:(id *)error;
+ (id)ruleFromFirewallRuleLAN:(id)n;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterStaticPortRule)init;
- (HMDNetworkRouterStaticPortRule)initWithDirection:(id)direction lanIdentifierList:(id)list protocol:(id)protocol destinationIPAddress:(id)address destinationPortStart:(id)start destinationPortEnd:(id)end;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
- (void)addTo:(id)to;
@end

@implementation HMDNetworkRouterStaticPortRule

- (void)addTo:(id)to
{
  toCopy = to;
  staticPortRules = [toCopy staticPortRules];
  v5 = staticPortRules;
  if (staticPortRules)
  {
    [staticPortRules addObject:self];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithObject:self];
    [toCopy setStaticPortRules:v6];
  }
}

+ (id)ruleFromFirewallRuleLAN:(id)n
{
  nCopy = n;
  v4 = +[HMDNetworkRouterRuleDirection directionFromLANDirection:](HMDNetworkRouterRuleDirection, "directionFromLANDirection:", [nCopy direction]);
  v5 = createIdentifierListFromLANRule(nCopy);
  v6 = +[HMDNetworkRouterProtocol protocolFromTransportProtocol:](HMDNetworkRouterProtocol, "protocolFromTransportProtocol:", [nCopy transportProtocol]);
  v7 = objc_alloc(MEMORY[0x277CFEC98]);
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(nCopy, "portStart")}];
  v9 = [v7 initWithValue:v8];

  LODWORD(v8) = [nCopy portStart];
  if (v8 == [nCopy portEnd])
  {
    v10 = 0;
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CFEC98]);
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(nCopy, "portEnd")}];
    v10 = [v11 initWithValue:v12];
  }

  ipAddress = [nCopy ipAddress];

  if (ipAddress && ([nCopy ipAddress], v14 = objc_claimAutoreleasedReturnValue(), +[HMDNetworkRouterIPAddress ipAddressFromRuleAddress:allowWildcard:](HMDNetworkRouterIPAddress, "ipAddressFromRuleAddress:allowWildcard:", v14, 0), ipAddress = objc_claimAutoreleasedReturnValue(), v14, !ipAddress))
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    if (v4 && v5 && v6 && v9)
    {
      v15 = [[HMDNetworkRouterStaticPortRule alloc] initWithDirection:v4 lanIdentifierList:v5 protocol:v6 destinationIPAddress:ipAddress destinationPortStart:v9 destinationPortEnd:v10];
    }
  }

  return v15;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  direction = [(HMDNetworkRouterStaticPortRule *)self direction];
  lanIdentifierList = [(HMDNetworkRouterStaticPortRule *)self lanIdentifierList];
  protocol = [(HMDNetworkRouterStaticPortRule *)self protocol];
  destinationIPAddress = [(HMDNetworkRouterStaticPortRule *)self destinationIPAddress];
  destinationPortStart = [(HMDNetworkRouterStaticPortRule *)self destinationPortStart];
  destinationPortEnd = [(HMDNetworkRouterStaticPortRule *)self destinationPortEnd];
  v10 = [v3 stringWithFormat:@"<HMDNetworkRouterStaticPortRule direction=%@, lanIdentifierList=%@, protocol=%@, destinationIPAddress=%@, destinationPortStart=%@, destinationPortEnd=%@>", direction, lanIdentifierList, protocol, destinationIPAddress, destinationPortStart, destinationPortEnd];

  return v10;
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
      direction = [(HMDNetworkRouterStaticPortRule *)self direction];
      direction2 = [(HMDNetworkRouterStaticPortRule *)v6 direction];
      if (direction != direction2)
      {
        direction3 = [(HMDNetworkRouterStaticPortRule *)self direction];
        direction4 = [(HMDNetworkRouterStaticPortRule *)v6 direction];
        v56 = direction3;
        if (![direction3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_37;
        }
      }

      lanIdentifierList = [(HMDNetworkRouterStaticPortRule *)self lanIdentifierList];
      lanIdentifierList2 = [(HMDNetworkRouterStaticPortRule *)v6 lanIdentifierList];
      if (lanIdentifierList != lanIdentifierList2)
      {
        lanIdentifierList3 = [(HMDNetworkRouterStaticPortRule *)self lanIdentifierList];
        lanIdentifierList4 = [(HMDNetworkRouterStaticPortRule *)v6 lanIdentifierList];
        if (![lanIdentifierList3 isEqual:?])
        {
          v10 = 0;
LABEL_35:

LABEL_36:
          if (direction == direction2)
          {
LABEL_38:

            goto LABEL_39;
          }

LABEL_37:

          goto LABEL_38;
        }
      }

      protocol = [(HMDNetworkRouterStaticPortRule *)self protocol];
      protocol2 = [(HMDNetworkRouterStaticPortRule *)v6 protocol];
      v54 = protocol;
      v15 = protocol == protocol2;
      v16 = protocol2;
      if (v15)
      {
        v51 = protocol2;
      }

      else
      {
        protocol3 = [(HMDNetworkRouterStaticPortRule *)self protocol];
        protocol4 = [(HMDNetworkRouterStaticPortRule *)v6 protocol];
        v48 = protocol3;
        if (![protocol3 isEqual:?])
        {
          v10 = 0;
          v24 = v16;
          v25 = v54;
LABEL_33:

LABEL_34:
          if (lanIdentifierList == lanIdentifierList2)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v51 = v16;
      }

      destinationIPAddress = [(HMDNetworkRouterStaticPortRule *)self destinationIPAddress];
      destinationIPAddress2 = [(HMDNetworkRouterStaticPortRule *)v6 destinationIPAddress];
      v49 = destinationIPAddress;
      v50 = lanIdentifierList3;
      v15 = destinationIPAddress == destinationIPAddress2;
      v20 = destinationIPAddress2;
      if (!v15)
      {
        destinationIPAddress3 = [(HMDNetworkRouterStaticPortRule *)self destinationIPAddress];
        destinationIPAddress4 = [(HMDNetworkRouterStaticPortRule *)v6 destinationIPAddress];
        v42 = destinationIPAddress3;
        if (![destinationIPAddress3 isEqual:?])
        {
          v22 = v51;
          v10 = 0;
          v23 = v49;
LABEL_31:

LABEL_32:
          v25 = v54;
          v24 = v22;
          v15 = v54 == v22;
          lanIdentifierList3 = v50;
          if (v15)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      destinationPortStart = [(HMDNetworkRouterStaticPortRule *)self destinationPortStart];
      destinationPortStart2 = [(HMDNetworkRouterStaticPortRule *)v6 destinationPortStart];
      v45 = destinationPortStart;
      v46 = v20;
      v43 = lanIdentifierList2;
      if (destinationPortStart == destinationPortStart2)
      {
        v40 = lanIdentifierList;
        v29 = v51;
      }

      else
      {
        destinationPortStart3 = [(HMDNetworkRouterStaticPortRule *)self destinationPortStart];
        destinationPortStart4 = [(HMDNetworkRouterStaticPortRule *)v6 destinationPortStart];
        v39 = destinationPortStart3;
        v28 = [destinationPortStart3 isEqual:?];
        v29 = v51;
        if (!v28)
        {
          v10 = 0;
          v36 = destinationPortStart2;
          v35 = v45;
          goto LABEL_28;
        }

        v40 = lanIdentifierList;
      }

      destinationPortEnd = [(HMDNetworkRouterStaticPortRule *)self destinationPortEnd];
      destinationPortEnd2 = [(HMDNetworkRouterStaticPortRule *)v6 destinationPortEnd];
      v32 = destinationPortEnd2;
      if (destinationPortEnd == destinationPortEnd2)
      {

        v10 = 1;
      }

      else
      {
        [(HMDNetworkRouterStaticPortRule *)self destinationPortEnd];
        v33 = v52 = v29;
        destinationPortEnd3 = [(HMDNetworkRouterStaticPortRule *)v6 destinationPortEnd];
        v10 = [v33 isEqual:destinationPortEnd3];

        v29 = v52;
      }

      v36 = destinationPortStart2;
      v35 = v45;
      lanIdentifierList = v40;
      if (v45 == destinationPortStart2)
      {
        v22 = v29;
LABEL_30:

        v23 = v49;
        v20 = v46;
        lanIdentifierList2 = v43;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDNetworkRouterStaticPortRule allocWithZone:zone];
  direction = [(HMDNetworkRouterStaticPortRule *)self direction];
  lanIdentifierList = [(HMDNetworkRouterStaticPortRule *)self lanIdentifierList];
  protocol = [(HMDNetworkRouterStaticPortRule *)self protocol];
  destinationIPAddress = [(HMDNetworkRouterStaticPortRule *)self destinationIPAddress];
  destinationPortStart = [(HMDNetworkRouterStaticPortRule *)self destinationPortStart];
  destinationPortEnd = [(HMDNetworkRouterStaticPortRule *)self destinationPortEnd];
  v11 = [(HMDNetworkRouterStaticPortRule *)v4 initWithDirection:direction lanIdentifierList:lanIdentifierList protocol:protocol destinationIPAddress:destinationIPAddress destinationPortStart:destinationPortStart destinationPortEnd:destinationPortEnd];

  return v11;
}

- (id)serializeWithError:(id *)error
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
  direction = [(HMDNetworkRouterStaticPortRule *)self direction];

  if (direction)
  {
    direction2 = [(HMDNetworkRouterStaticPortRule *)self direction];
    v29 = 0;
    v7 = [direction2 serializeWithError:&v29];
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

  lanIdentifierList = [(HMDNetworkRouterStaticPortRule *)self lanIdentifierList];

  if (lanIdentifierList)
  {
    lanIdentifierList2 = [(HMDNetworkRouterStaticPortRule *)self lanIdentifierList];
    v28 = 0;
    v7 = [lanIdentifierList2 serializeWithError:&v28];
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

  protocol = [(HMDNetworkRouterStaticPortRule *)self protocol];

  if (protocol)
  {
    protocol2 = [(HMDNetworkRouterStaticPortRule *)self protocol];
    v27 = 0;
    v7 = [protocol2 serializeWithError:&v27];
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

  destinationIPAddress = [(HMDNetworkRouterStaticPortRule *)self destinationIPAddress];

  if (!destinationIPAddress)
  {
    goto LABEL_17;
  }

  destinationIPAddress2 = [(HMDNetworkRouterStaticPortRule *)self destinationIPAddress];
  v26 = 0;
  v7 = [destinationIPAddress2 serializeWithError:&v26];
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
    if (error)
    {
      HMErrorFromOSStatus();
      v8 = 0;
      *error = v17 = 0;
      goto LABEL_30;
    }

    v8 = 0;
LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

LABEL_17:
  destinationPortStart = [(HMDNetworkRouterStaticPortRule *)self destinationPortStart];

  if (destinationPortStart)
  {
    destinationPortStart2 = [(HMDNetworkRouterStaticPortRule *)self destinationPortStart];
    v25 = 0;
    v7 = [destinationPortStart2 serializeWithError:&v25];
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

  destinationPortEnd = [(HMDNetworkRouterStaticPortRule *)self destinationPortEnd];

  if (destinationPortEnd)
  {
    destinationPortEnd2 = [(HMDNetworkRouterStaticPortRule *)self destinationPortEnd];
    v24 = 0;
    v7 = [destinationPortEnd2 serializeWithError:&v24];
    v8 = v24;

    if (v8)
    {
LABEL_27:

      if (error)
      {
        v20 = v8;
        v17 = 0;
        *error = v8;
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
  v13 = bytes + v9;
  do
  {
    v40 = 0;
    v39 = 0;
    v37 = 0;
    v38 = 0;
    v36 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (error)
      {
        HMErrorFromOSStatus();
        *error = v19 = 0;
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
      if (error)
      {
        v18 = v10;
        v19 = 0;
        *error = v10;
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

- (HMDNetworkRouterStaticPortRule)initWithDirection:(id)direction lanIdentifierList:(id)list protocol:(id)protocol destinationIPAddress:(id)address destinationPortStart:(id)start destinationPortEnd:(id)end
{
  directionCopy = direction;
  listCopy = list;
  protocolCopy = protocol;
  addressCopy = address;
  startCopy = start;
  endCopy = end;
  v24.receiver = self;
  v24.super_class = HMDNetworkRouterStaticPortRule;
  v18 = [(HMDNetworkRouterStaticPortRule *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_direction, direction);
    objc_storeStrong(&v19->_lanIdentifierList, list);
    objc_storeStrong(&v19->_protocol, protocol);
    objc_storeStrong(&v19->_destinationIPAddress, address);
    objc_storeStrong(&v19->_destinationPortStart, start);
    objc_storeStrong(&v19->_destinationPortEnd, end);
  }

  return v19;
}

- (HMDNetworkRouterStaticPortRule)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterStaticPortRule;
  return [(HMDNetworkRouterStaticPortRule *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterStaticPortRule);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterStaticPortRule *)v6 parseFromData:dataCopy error:&v11];
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