@interface HMDNetworkRouterWANPortRule
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterWANPortRule)init;
- (HMDNetworkRouterWANPortRule)initWithProtocol:(id)protocol hostDNSName:(id)name hostIPStart:(id)start hostIPEnd:(id)end hostPortStart:(id)portStart hostPortEnd:(id)portEnd;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
- (void)addTo:(id)to;
@end

@implementation HMDNetworkRouterWANPortRule

- (void)addTo:(id)to
{
  toCopy = to;
  portRules = [toCopy portRules];
  v5 = portRules;
  if (portRules)
  {
    [portRules addObject:self];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithObject:self];
    [toCopy setPortRules:v6];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  protocol = [(HMDNetworkRouterWANPortRule *)self protocol];
  hostDNSName = [(HMDNetworkRouterWANPortRule *)self hostDNSName];
  hostIPStart = [(HMDNetworkRouterWANPortRule *)self hostIPStart];
  hostIPEnd = [(HMDNetworkRouterWANPortRule *)self hostIPEnd];
  hostPortStart = [(HMDNetworkRouterWANPortRule *)self hostPortStart];
  hostPortEnd = [(HMDNetworkRouterWANPortRule *)self hostPortEnd];
  v10 = [v3 stringWithFormat:@"<HMDNetworkRouterWANPortRule protocol=%@, hostDNSName=%@, hostIPStart=%@, hostIPEnd=%@, hostPortStart=%@, hostPortEnd=%@>", protocol, hostDNSName, hostIPStart, hostIPEnd, hostPortStart, hostPortEnd];

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
      protocol = [(HMDNetworkRouterWANPortRule *)self protocol];
      protocol2 = [(HMDNetworkRouterWANPortRule *)v6 protocol];
      if (protocol != protocol2)
      {
        protocol3 = [(HMDNetworkRouterWANPortRule *)self protocol];
        protocol4 = [(HMDNetworkRouterWANPortRule *)v6 protocol];
        v56 = protocol3;
        if (![protocol3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_37;
        }
      }

      hostDNSName = [(HMDNetworkRouterWANPortRule *)self hostDNSName];
      hostDNSName2 = [(HMDNetworkRouterWANPortRule *)v6 hostDNSName];
      if (hostDNSName != hostDNSName2)
      {
        hostDNSName3 = [(HMDNetworkRouterWANPortRule *)self hostDNSName];
        hostDNSName4 = [(HMDNetworkRouterWANPortRule *)v6 hostDNSName];
        if (![hostDNSName3 isEqual:?])
        {
          v10 = 0;
LABEL_35:

LABEL_36:
          if (protocol == protocol2)
          {
LABEL_38:

            goto LABEL_39;
          }

LABEL_37:

          goto LABEL_38;
        }
      }

      hostIPStart = [(HMDNetworkRouterWANPortRule *)self hostIPStart];
      hostIPStart2 = [(HMDNetworkRouterWANPortRule *)v6 hostIPStart];
      v54 = hostIPStart;
      v15 = hostIPStart == hostIPStart2;
      v16 = hostIPStart2;
      if (v15)
      {
        v51 = hostIPStart2;
      }

      else
      {
        hostIPStart3 = [(HMDNetworkRouterWANPortRule *)self hostIPStart];
        hostIPStart4 = [(HMDNetworkRouterWANPortRule *)v6 hostIPStart];
        v48 = hostIPStart3;
        if (![hostIPStart3 isEqual:?])
        {
          v10 = 0;
          v24 = v16;
          v25 = v54;
LABEL_33:

LABEL_34:
          if (hostDNSName == hostDNSName2)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

        v51 = v16;
      }

      hostIPEnd = [(HMDNetworkRouterWANPortRule *)self hostIPEnd];
      hostIPEnd2 = [(HMDNetworkRouterWANPortRule *)v6 hostIPEnd];
      v49 = hostIPEnd;
      v50 = hostDNSName3;
      v15 = hostIPEnd == hostIPEnd2;
      v20 = hostIPEnd2;
      if (!v15)
      {
        hostIPEnd3 = [(HMDNetworkRouterWANPortRule *)self hostIPEnd];
        hostIPEnd4 = [(HMDNetworkRouterWANPortRule *)v6 hostIPEnd];
        v42 = hostIPEnd3;
        if (![hostIPEnd3 isEqual:?])
        {
          v22 = v51;
          v10 = 0;
          v23 = v49;
LABEL_31:

LABEL_32:
          v25 = v54;
          v24 = v22;
          v15 = v54 == v22;
          hostDNSName3 = v50;
          if (v15)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      hostPortStart = [(HMDNetworkRouterWANPortRule *)self hostPortStart];
      hostPortStart2 = [(HMDNetworkRouterWANPortRule *)v6 hostPortStart];
      v45 = hostPortStart;
      v46 = v20;
      v43 = hostDNSName2;
      if (hostPortStart == hostPortStart2)
      {
        v40 = hostDNSName;
        v29 = v51;
      }

      else
      {
        hostPortStart3 = [(HMDNetworkRouterWANPortRule *)self hostPortStart];
        hostPortStart4 = [(HMDNetworkRouterWANPortRule *)v6 hostPortStart];
        v39 = hostPortStart3;
        v28 = [hostPortStart3 isEqual:?];
        v29 = v51;
        if (!v28)
        {
          v10 = 0;
          v36 = hostPortStart2;
          v35 = v45;
          goto LABEL_28;
        }

        v40 = hostDNSName;
      }

      hostPortEnd = [(HMDNetworkRouterWANPortRule *)self hostPortEnd];
      hostPortEnd2 = [(HMDNetworkRouterWANPortRule *)v6 hostPortEnd];
      v32 = hostPortEnd2;
      if (hostPortEnd == hostPortEnd2)
      {

        v10 = 1;
      }

      else
      {
        [(HMDNetworkRouterWANPortRule *)self hostPortEnd];
        v33 = v52 = v29;
        hostPortEnd3 = [(HMDNetworkRouterWANPortRule *)v6 hostPortEnd];
        v10 = [v33 isEqual:hostPortEnd3];

        v29 = v52;
      }

      v36 = hostPortStart2;
      v35 = v45;
      hostDNSName = v40;
      if (v45 == hostPortStart2)
      {
        v22 = v29;
LABEL_30:

        v23 = v49;
        v20 = v46;
        hostDNSName2 = v43;
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
  v4 = [HMDNetworkRouterWANPortRule allocWithZone:zone];
  protocol = [(HMDNetworkRouterWANPortRule *)self protocol];
  hostDNSName = [(HMDNetworkRouterWANPortRule *)self hostDNSName];
  hostIPStart = [(HMDNetworkRouterWANPortRule *)self hostIPStart];
  hostIPEnd = [(HMDNetworkRouterWANPortRule *)self hostIPEnd];
  hostPortStart = [(HMDNetworkRouterWANPortRule *)self hostPortStart];
  hostPortEnd = [(HMDNetworkRouterWANPortRule *)self hostPortEnd];
  v11 = [(HMDNetworkRouterWANPortRule *)v4 initWithProtocol:protocol hostDNSName:hostDNSName hostIPStart:hostIPStart hostIPEnd:hostIPEnd hostPortStart:hostPortStart hostPortEnd:hostPortEnd];

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
  protocol = [(HMDNetworkRouterWANPortRule *)self protocol];

  if (protocol)
  {
    protocol2 = [(HMDNetworkRouterWANPortRule *)self protocol];
    v29 = 0;
    v7 = [protocol2 serializeWithError:&v29];
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

  hostDNSName = [(HMDNetworkRouterWANPortRule *)self hostDNSName];

  if (hostDNSName)
  {
    hostDNSName2 = [(HMDNetworkRouterWANPortRule *)self hostDNSName];
    v28 = 0;
    v7 = [hostDNSName2 serializeWithError:&v28];
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

  hostIPStart = [(HMDNetworkRouterWANPortRule *)self hostIPStart];

  if (hostIPStart)
  {
    hostIPStart2 = [(HMDNetworkRouterWANPortRule *)self hostIPStart];
    v27 = 0;
    v7 = [hostIPStart2 serializeWithError:&v27];
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

  hostIPEnd = [(HMDNetworkRouterWANPortRule *)self hostIPEnd];

  if (!hostIPEnd)
  {
    goto LABEL_17;
  }

  hostIPEnd2 = [(HMDNetworkRouterWANPortRule *)self hostIPEnd];
  v26 = 0;
  v7 = [hostIPEnd2 serializeWithError:&v26];
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
  hostPortStart = [(HMDNetworkRouterWANPortRule *)self hostPortStart];

  if (hostPortStart)
  {
    hostPortStart2 = [(HMDNetworkRouterWANPortRule *)self hostPortStart];
    v25 = 0;
    v7 = [hostPortStart2 serializeWithError:&v25];
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

  hostPortEnd = [(HMDNetworkRouterWANPortRule *)self hostPortEnd];

  if (hostPortEnd)
  {
    hostPortEnd2 = [(HMDNetworkRouterWANPortRule *)self hostPortEnd];
    v24 = 0;
    v7 = [hostPortEnd2 serializeWithError:&v24];
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
          [HMDNetworkRouterProtocol parsedFromData:v14 error:&v35];
          v29 = v16 = v29;
          break;
        case 2u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v34 = v10;
          v15 = &v34;
          [MEMORY[0x277CCACA8] parsedFromData:v14 error:&v34];
          v28 = v16 = v28;
          break;
        case 3u:
          v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v33 = v10;
          v15 = &v33;
          [HMDNetworkRouterIPAddress parsedFromData:v14 error:&v33];
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
  [(HMDNetworkRouterWANPortRule *)self setProtocol:v20];
  [(HMDNetworkRouterWANPortRule *)self setHostDNSName:v21];
  [(HMDNetworkRouterWANPortRule *)self setHostIPStart:v23];
  [(HMDNetworkRouterWANPortRule *)self setHostIPEnd:v22];
  [(HMDNetworkRouterWANPortRule *)self setHostPortStart:v12];
  [(HMDNetworkRouterWANPortRule *)self setHostPortEnd:v11];
  v10 = 0;
  v19 = 1;
LABEL_36:

  return v19;
}

- (HMDNetworkRouterWANPortRule)initWithProtocol:(id)protocol hostDNSName:(id)name hostIPStart:(id)start hostIPEnd:(id)end hostPortStart:(id)portStart hostPortEnd:(id)portEnd
{
  protocolCopy = protocol;
  nameCopy = name;
  startCopy = start;
  endCopy = end;
  portStartCopy = portStart;
  portEndCopy = portEnd;
  v24.receiver = self;
  v24.super_class = HMDNetworkRouterWANPortRule;
  v18 = [(HMDNetworkRouterWANPortRule *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_protocol, protocol);
    objc_storeStrong(&v19->_hostDNSName, name);
    objc_storeStrong(&v19->_hostIPStart, start);
    objc_storeStrong(&v19->_hostIPEnd, end);
    objc_storeStrong(&v19->_hostPortStart, portStart);
    objc_storeStrong(&v19->_hostPortEnd, portEnd);
  }

  return v19;
}

- (HMDNetworkRouterWANPortRule)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterWANPortRule;
  return [(HMDNetworkRouterWANPortRule *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterWANPortRule);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterWANPortRule *)v6 parseFromData:dataCopy error:&v11];
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