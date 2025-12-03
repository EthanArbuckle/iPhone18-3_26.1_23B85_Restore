@interface HMDNetworkRouterWANICMPRule
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterWANICMPRule)init;
- (HMDNetworkRouterWANICMPRule)initWithHostDNSName:(id)name hostIPStart:(id)start hostIPEnd:(id)end icmpTypes:(id)types;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
- (void)addTo:(id)to;
@end

@implementation HMDNetworkRouterWANICMPRule

- (void)addTo:(id)to
{
  toCopy = to;
  icmpRules = [toCopy icmpRules];
  v5 = icmpRules;
  if (icmpRules)
  {
    [icmpRules addObject:self];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithObject:self];
    [toCopy setIcmpRules:v6];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  hostDNSName = [(HMDNetworkRouterWANICMPRule *)self hostDNSName];
  hostIPStart = [(HMDNetworkRouterWANICMPRule *)self hostIPStart];
  hostIPEnd = [(HMDNetworkRouterWANICMPRule *)self hostIPEnd];
  icmpTypes = [(HMDNetworkRouterWANICMPRule *)self icmpTypes];
  v8 = [v3 stringWithFormat:@"<HMDNetworkRouterWANICMPRule hostDNSName=%@, hostIPStart=%@, hostIPEnd=%@, icmpTypes=%@>", hostDNSName, hostIPStart, hostIPEnd, icmpTypes];

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
      hostDNSName = [(HMDNetworkRouterWANICMPRule *)self hostDNSName];
      hostDNSName2 = [(HMDNetworkRouterWANICMPRule *)v6 hostDNSName];
      if (hostDNSName != hostDNSName2)
      {
        hostDNSName3 = [(HMDNetworkRouterWANICMPRule *)self hostDNSName];
        [(HMDNetworkRouterWANICMPRule *)v6 hostDNSName];
        v33 = v32 = hostDNSName3;
        if (![hostDNSName3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_24;
        }
      }

      hostIPStart = [(HMDNetworkRouterWANICMPRule *)self hostIPStart];
      hostIPStart2 = [(HMDNetworkRouterWANICMPRule *)v6 hostIPStart];
      if (hostIPStart != hostIPStart2)
      {
        hostIPStart3 = [(HMDNetworkRouterWANICMPRule *)self hostIPStart];
        hostIPStart4 = [(HMDNetworkRouterWANICMPRule *)v6 hostIPStart];
        if (![hostIPStart3 isEqual:?])
        {
          v10 = 0;
LABEL_22:

LABEL_23:
          if (hostDNSName == hostDNSName2)
          {
LABEL_25:

            goto LABEL_26;
          }

LABEL_24:

          goto LABEL_25;
        }
      }

      hostIPEnd = [(HMDNetworkRouterWANICMPRule *)self hostIPEnd];
      hostIPEnd2 = [(HMDNetworkRouterWANICMPRule *)v6 hostIPEnd];
      v31 = hostIPEnd;
      v15 = hostIPEnd == hostIPEnd2;
      v16 = hostIPEnd2;
      if (v15)
      {
        v28 = hostIPStart3;
        v29 = hostIPStart2;
      }

      else
      {
        hostIPEnd3 = [(HMDNetworkRouterWANICMPRule *)self hostIPEnd];
        hostIPEnd4 = [(HMDNetworkRouterWANICMPRule *)v6 hostIPEnd];
        v26 = hostIPEnd3;
        if (![hostIPEnd3 isEqual:?])
        {
          v10 = 0;
          v23 = v31;
          goto LABEL_20;
        }

        v28 = hostIPStart3;
        v29 = hostIPStart2;
      }

      v27 = v16;
      icmpTypes = [(HMDNetworkRouterWANICMPRule *)self icmpTypes];
      icmpTypes2 = [(HMDNetworkRouterWANICMPRule *)v6 icmpTypes];
      v20 = icmpTypes2;
      if (icmpTypes == icmpTypes2)
      {

        v10 = 1;
      }

      else
      {
        icmpTypes3 = [(HMDNetworkRouterWANICMPRule *)self icmpTypes];
        icmpTypes4 = [(HMDNetworkRouterWANICMPRule *)v6 icmpTypes];
        v10 = [icmpTypes3 isEqual:icmpTypes4];
      }

      v23 = v31;
      v16 = v27;
      hostIPStart3 = v28;
      hostIPStart2 = v29;
      if (v31 == v27)
      {
LABEL_21:

        if (hostIPStart == hostIPStart2)
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
  v4 = [HMDNetworkRouterWANICMPRule allocWithZone:zone];
  hostDNSName = [(HMDNetworkRouterWANICMPRule *)self hostDNSName];
  hostIPStart = [(HMDNetworkRouterWANICMPRule *)self hostIPStart];
  hostIPEnd = [(HMDNetworkRouterWANICMPRule *)self hostIPEnd];
  icmpTypes = [(HMDNetworkRouterWANICMPRule *)self icmpTypes];
  v9 = [(HMDNetworkRouterWANICMPRule *)v4 initWithHostDNSName:hostDNSName hostIPStart:hostIPStart hostIPEnd:hostIPEnd icmpTypes:icmpTypes];

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
  hostDNSName = [(HMDNetworkRouterWANICMPRule *)self hostDNSName];

  if (hostDNSName)
  {
    hostDNSName2 = [(HMDNetworkRouterWANICMPRule *)self hostDNSName];
    v23 = 0;
    v7 = [hostDNSName2 serializeWithError:&v23];
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

  hostIPStart = [(HMDNetworkRouterWANICMPRule *)self hostIPStart];

  if (!hostIPStart)
  {
    goto LABEL_9;
  }

  hostIPStart2 = [(HMDNetworkRouterWANICMPRule *)self hostIPStart];
  v22 = 0;
  v7 = [hostIPStart2 serializeWithError:&v22];
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
  hostIPEnd = [(HMDNetworkRouterWANICMPRule *)self hostIPEnd];

  if (hostIPEnd)
  {
    hostIPEnd2 = [(HMDNetworkRouterWANICMPRule *)self hostIPEnd];
    v21 = 0;
    v7 = [hostIPEnd2 serializeWithError:&v21];
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

  icmpTypes = [(HMDNetworkRouterWANICMPRule *)self icmpTypes];

  if (icmpTypes)
  {
    icmpTypes2 = [(HMDNetworkRouterWANICMPRule *)self icmpTypes];
    v20 = 0;
    v7 = [icmpTypes2 serializeWithError:&v20];
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
        [HMDNetworkRouterICMPTypeList parsedFromData:v16 error:&v27];
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
        [MEMORY[0x277CCACA8] parsedFromData:v16 error:&v30];
        v14 = v18 = v14;
        goto LABEL_17;
      }

      if (v35 == 2)
      {
        v16 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v29 = v10;
        v17 = &v29;
        [HMDNetworkRouterIPAddress parsedFromData:v16 error:&v29];
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
  [(HMDNetworkRouterWANICMPRule *)self setHostDNSName:v20];
  [(HMDNetworkRouterWANICMPRule *)self setHostIPStart:v13];
  [(HMDNetworkRouterWANICMPRule *)self setHostIPEnd:v12];
  [(HMDNetworkRouterWANICMPRule *)self setIcmpTypes:v11];
  v10 = 0;
  v21 = 1;
LABEL_32:

  return v21;
}

- (HMDNetworkRouterWANICMPRule)initWithHostDNSName:(id)name hostIPStart:(id)start hostIPEnd:(id)end icmpTypes:(id)types
{
  nameCopy = name;
  startCopy = start;
  endCopy = end;
  typesCopy = types;
  v18.receiver = self;
  v18.super_class = HMDNetworkRouterWANICMPRule;
  v15 = [(HMDNetworkRouterWANICMPRule *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_hostDNSName, name);
    objc_storeStrong(&v16->_hostIPStart, start);
    objc_storeStrong(&v16->_hostIPEnd, end);
    objc_storeStrong(&v16->_icmpTypes, types);
  }

  return v16;
}

- (HMDNetworkRouterWANICMPRule)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterWANICMPRule;
  return [(HMDNetworkRouterWANICMPRule *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterWANICMPRule);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterWANICMPRule *)v6 parseFromData:dataCopy error:&v11];
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