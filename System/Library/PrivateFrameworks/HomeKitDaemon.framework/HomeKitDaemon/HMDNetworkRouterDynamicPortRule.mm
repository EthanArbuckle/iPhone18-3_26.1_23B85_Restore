@interface HMDNetworkRouterDynamicPortRule
+ (id)parsedFromData:(id)data error:(id *)error;
+ (id)ruleForHAP;
+ (id)ruleFromFirewallRuleLAN:(id)n;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterDynamicPortRule)init;
- (HMDNetworkRouterDynamicPortRule)initWithDirection:(id)direction lanIdentifierList:(id)list protocol:(id)protocol advertisementProtocol:(id)advertisementProtocol flags:(id)flags serviceType:(id)type;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
- (void)addTo:(id)to;
@end

@implementation HMDNetworkRouterDynamicPortRule

- (void)addTo:(id)to
{
  toCopy = to;
  dynamicPortRules = [toCopy dynamicPortRules];
  v5 = dynamicPortRules;
  if (dynamicPortRules)
  {
    [dynamicPortRules addObject:self];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithObject:self];
    [toCopy setDynamicPortRules:v6];
  }
}

+ (id)ruleFromFirewallRuleLAN:(id)n
{
  nCopy = n;
  v4 = +[HMDNetworkRouterRuleDirection directionFromLANDirection:](HMDNetworkRouterRuleDirection, "directionFromLANDirection:", [nCopy direction]);
  v5 = createIdentifierListFromLANRule(nCopy);
  v6 = +[HMDNetworkRouterProtocol protocolFromTransportProtocol:](HMDNetworkRouterProtocol, "protocolFromTransportProtocol:", [nCopy transportProtocol]);
  v7 = +[HMDNetworkRouterAdvertisementProtocol protocolFromFirewallRuleAdvertisingProtocol:](HMDNetworkRouterAdvertisementProtocol, "protocolFromFirewallRuleAdvertisingProtocol:", [nCopy advertisingProtocol]);
  serviceType = [nCopy serviceType];

  if (serviceType)
  {
    v9 = [HMDNetworkRouterServiceType alloc];
    serviceType2 = [nCopy serviceType];
    serviceType = [(HMDNetworkRouterServiceType *)v9 initWithName:serviceType2];
  }

  v11 = objc_alloc(MEMORY[0x277CFEC98]);
  if ([nCopy isAdvertisingOnly])
  {
    v12 = &unk_283E72830;
  }

  else
  {
    v12 = &unk_283E72818;
  }

  v13 = [v11 initWithValue:v12];
  v14 = v13;
  v15 = 0;
  if (v4 && v5 && v6 && v7 && v13)
  {
    v15 = [[HMDNetworkRouterDynamicPortRule alloc] initWithDirection:v4 lanIdentifierList:v5 protocol:v6 advertisementProtocol:v7 flags:v13 serviceType:serviceType];
  }

  return v15;
}

+ (id)ruleForHAP
{
  v2 = [[HMDNetworkRouterRuleDirection alloc] initWithDirection:1];
  v3 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:&unk_283E72800];
  v4 = [HMDNetworkRouterLANIdentifierList alloc];
  v5 = [MEMORY[0x277CBEB18] arrayWithObject:v3];
  v6 = [(HMDNetworkRouterLANIdentifierList *)v4 initWithIdentifiers:v5];

  v7 = [[HMDNetworkRouterProtocol alloc] initWithProtocol:0];
  v8 = [[HMDNetworkRouterAdvertisementProtocol alloc] initWithAdvertisementProtocol:0];
  v9 = [[HMDNetworkRouterServiceType alloc] initWithName:@"hap"];
  v10 = [HMDNetworkRouterDynamicPortRule alloc];
  v11 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:&unk_283E72818];
  v12 = [(HMDNetworkRouterDynamicPortRule *)v10 initWithDirection:v2 lanIdentifierList:v6 protocol:v7 advertisementProtocol:v8 flags:v11 serviceType:v9];

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  direction = [(HMDNetworkRouterDynamicPortRule *)self direction];
  lanIdentifierList = [(HMDNetworkRouterDynamicPortRule *)self lanIdentifierList];
  protocol = [(HMDNetworkRouterDynamicPortRule *)self protocol];
  advertisementProtocol = [(HMDNetworkRouterDynamicPortRule *)self advertisementProtocol];
  flags = [(HMDNetworkRouterDynamicPortRule *)self flags];
  serviceType = [(HMDNetworkRouterDynamicPortRule *)self serviceType];
  v10 = [v3 stringWithFormat:@"<HMDNetworkRouterDynamicPortRule direction=%@, lanIdentifierList=%@, protocol=%@, advertisementProtocol=%@, flags=%@, serviceType=%@>", direction, lanIdentifierList, protocol, advertisementProtocol, flags, serviceType];

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
      direction = [(HMDNetworkRouterDynamicPortRule *)self direction];
      direction2 = [(HMDNetworkRouterDynamicPortRule *)v6 direction];
      if (direction != direction2)
      {
        direction3 = [(HMDNetworkRouterDynamicPortRule *)self direction];
        direction4 = [(HMDNetworkRouterDynamicPortRule *)v6 direction];
        v56 = direction3;
        if (![direction3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_37;
        }
      }

      lanIdentifierList = [(HMDNetworkRouterDynamicPortRule *)self lanIdentifierList];
      lanIdentifierList2 = [(HMDNetworkRouterDynamicPortRule *)v6 lanIdentifierList];
      if (lanIdentifierList != lanIdentifierList2)
      {
        lanIdentifierList3 = [(HMDNetworkRouterDynamicPortRule *)self lanIdentifierList];
        lanIdentifierList4 = [(HMDNetworkRouterDynamicPortRule *)v6 lanIdentifierList];
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

      protocol = [(HMDNetworkRouterDynamicPortRule *)self protocol];
      protocol2 = [(HMDNetworkRouterDynamicPortRule *)v6 protocol];
      v54 = protocol;
      v15 = protocol == protocol2;
      v16 = protocol2;
      if (v15)
      {
        v51 = protocol2;
      }

      else
      {
        protocol3 = [(HMDNetworkRouterDynamicPortRule *)self protocol];
        protocol4 = [(HMDNetworkRouterDynamicPortRule *)v6 protocol];
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

      advertisementProtocol = [(HMDNetworkRouterDynamicPortRule *)self advertisementProtocol];
      advertisementProtocol2 = [(HMDNetworkRouterDynamicPortRule *)v6 advertisementProtocol];
      v49 = advertisementProtocol;
      v50 = lanIdentifierList3;
      v15 = advertisementProtocol == advertisementProtocol2;
      v20 = advertisementProtocol2;
      if (!v15)
      {
        advertisementProtocol3 = [(HMDNetworkRouterDynamicPortRule *)self advertisementProtocol];
        advertisementProtocol4 = [(HMDNetworkRouterDynamicPortRule *)v6 advertisementProtocol];
        v42 = advertisementProtocol3;
        if (![advertisementProtocol3 isEqual:?])
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

      flags = [(HMDNetworkRouterDynamicPortRule *)self flags];
      flags2 = [(HMDNetworkRouterDynamicPortRule *)v6 flags];
      v45 = flags;
      v46 = v20;
      v43 = lanIdentifierList2;
      if (flags == flags2)
      {
        v40 = lanIdentifierList;
        v29 = v51;
      }

      else
      {
        flags3 = [(HMDNetworkRouterDynamicPortRule *)self flags];
        flags4 = [(HMDNetworkRouterDynamicPortRule *)v6 flags];
        v39 = flags3;
        v28 = [flags3 isEqual:?];
        v29 = v51;
        if (!v28)
        {
          v10 = 0;
          v36 = flags2;
          v35 = v45;
          goto LABEL_28;
        }

        v40 = lanIdentifierList;
      }

      serviceType = [(HMDNetworkRouterDynamicPortRule *)self serviceType];
      serviceType2 = [(HMDNetworkRouterDynamicPortRule *)v6 serviceType];
      v32 = serviceType2;
      if (serviceType == serviceType2)
      {

        v10 = 1;
      }

      else
      {
        [(HMDNetworkRouterDynamicPortRule *)self serviceType];
        v33 = v52 = v29;
        serviceType3 = [(HMDNetworkRouterDynamicPortRule *)v6 serviceType];
        v10 = [v33 isEqual:serviceType3];

        v29 = v52;
      }

      v36 = flags2;
      v35 = v45;
      lanIdentifierList = v40;
      if (v45 == flags2)
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
  v4 = [HMDNetworkRouterDynamicPortRule allocWithZone:zone];
  direction = [(HMDNetworkRouterDynamicPortRule *)self direction];
  lanIdentifierList = [(HMDNetworkRouterDynamicPortRule *)self lanIdentifierList];
  protocol = [(HMDNetworkRouterDynamicPortRule *)self protocol];
  advertisementProtocol = [(HMDNetworkRouterDynamicPortRule *)self advertisementProtocol];
  flags = [(HMDNetworkRouterDynamicPortRule *)self flags];
  serviceType = [(HMDNetworkRouterDynamicPortRule *)self serviceType];
  v11 = [(HMDNetworkRouterDynamicPortRule *)v4 initWithDirection:direction lanIdentifierList:lanIdentifierList protocol:protocol advertisementProtocol:advertisementProtocol flags:flags serviceType:serviceType];

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
  direction = [(HMDNetworkRouterDynamicPortRule *)self direction];

  if (direction)
  {
    direction2 = [(HMDNetworkRouterDynamicPortRule *)self direction];
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

  lanIdentifierList = [(HMDNetworkRouterDynamicPortRule *)self lanIdentifierList];

  if (lanIdentifierList)
  {
    lanIdentifierList2 = [(HMDNetworkRouterDynamicPortRule *)self lanIdentifierList];
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

  protocol = [(HMDNetworkRouterDynamicPortRule *)self protocol];

  if (protocol)
  {
    protocol2 = [(HMDNetworkRouterDynamicPortRule *)self protocol];
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

  advertisementProtocol = [(HMDNetworkRouterDynamicPortRule *)self advertisementProtocol];

  if (!advertisementProtocol)
  {
    goto LABEL_17;
  }

  advertisementProtocol2 = [(HMDNetworkRouterDynamicPortRule *)self advertisementProtocol];
  v26 = 0;
  v7 = [advertisementProtocol2 serializeWithError:&v26];
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
  flags = [(HMDNetworkRouterDynamicPortRule *)self flags];

  if (flags)
  {
    flags2 = [(HMDNetworkRouterDynamicPortRule *)self flags];
    v25 = 0;
    v7 = [flags2 serializeWithError:&v25];
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

  serviceType = [(HMDNetworkRouterDynamicPortRule *)self serviceType];

  if (serviceType)
  {
    serviceType2 = [(HMDNetworkRouterDynamicPortRule *)self serviceType];
    v24 = 0;
    v7 = [serviceType2 serializeWithError:&v24];
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
          [HMDNetworkRouterAdvertisementProtocol parsedFromData:v14 error:&v32];
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
          [HMDNetworkRouterServiceType parsedFromData:v14 error:&v30];
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
  [(HMDNetworkRouterDynamicPortRule *)self setDirection:v20];
  [(HMDNetworkRouterDynamicPortRule *)self setLanIdentifierList:v21];
  [(HMDNetworkRouterDynamicPortRule *)self setProtocol:v23];
  [(HMDNetworkRouterDynamicPortRule *)self setAdvertisementProtocol:v22];
  [(HMDNetworkRouterDynamicPortRule *)self setFlags:v12];
  [(HMDNetworkRouterDynamicPortRule *)self setServiceType:v11];
  v10 = 0;
  v19 = 1;
LABEL_36:

  return v19;
}

- (HMDNetworkRouterDynamicPortRule)initWithDirection:(id)direction lanIdentifierList:(id)list protocol:(id)protocol advertisementProtocol:(id)advertisementProtocol flags:(id)flags serviceType:(id)type
{
  directionCopy = direction;
  listCopy = list;
  protocolCopy = protocol;
  advertisementProtocolCopy = advertisementProtocol;
  flagsCopy = flags;
  typeCopy = type;
  v24.receiver = self;
  v24.super_class = HMDNetworkRouterDynamicPortRule;
  v18 = [(HMDNetworkRouterDynamicPortRule *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_direction, direction);
    objc_storeStrong(&v19->_lanIdentifierList, list);
    objc_storeStrong(&v19->_protocol, protocol);
    objc_storeStrong(&v19->_advertisementProtocol, advertisementProtocol);
    objc_storeStrong(&v19->_flags, flags);
    objc_storeStrong(&v19->_serviceType, type);
  }

  return v19;
}

- (HMDNetworkRouterDynamicPortRule)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterDynamicPortRule;
  return [(HMDNetworkRouterDynamicPortRule *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterDynamicPortRule);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterDynamicPortRule *)v6 parseFromData:dataCopy error:&v11];
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