@interface HMDNetworkRouterClientStatusIdentifier
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterClientStatusIdentifier)init;
- (HMDNetworkRouterClientStatusIdentifier)initWithClientIdentifier:(id)identifier macAddress:(id)address ipAddress:(id)ipAddress;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDNetworkRouterClientStatusIdentifier

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  clientIdentifier = [(HMDNetworkRouterClientStatusIdentifier *)self clientIdentifier];
  macAddress = [(HMDNetworkRouterClientStatusIdentifier *)self macAddress];
  ipAddress = [(HMDNetworkRouterClientStatusIdentifier *)self ipAddress];
  v7 = [v3 stringWithFormat:@"<HMDNetworkRouterClientStatusIdentifier clientIdentifier=%@, macAddress=%@, ipAddress=%@>", clientIdentifier, macAddress, ipAddress];

  return v7;
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
      v7 = equalCopy;
      clientIdentifier = [(HMDNetworkRouterClientStatusIdentifier *)self clientIdentifier];
      clientIdentifier2 = [(HMDNetworkRouterClientStatusIdentifier *)v7 clientIdentifier];
      if (clientIdentifier != clientIdentifier2)
      {
        clientIdentifier3 = [(HMDNetworkRouterClientStatusIdentifier *)self clientIdentifier];
        clientIdentifier4 = [(HMDNetworkRouterClientStatusIdentifier *)v7 clientIdentifier];
        if (![clientIdentifier3 isEqual:clientIdentifier4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      macAddress = [(HMDNetworkRouterClientStatusIdentifier *)self macAddress];
      macAddress2 = [(HMDNetworkRouterClientStatusIdentifier *)v7 macAddress];
      v13 = macAddress2;
      if (macAddress == macAddress2)
      {
        v28 = macAddress2;
      }

      else
      {
        macAddress3 = [(HMDNetworkRouterClientStatusIdentifier *)self macAddress];
        macAddress4 = [(HMDNetworkRouterClientStatusIdentifier *)v7 macAddress];
        if (![macAddress3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = macAddress3;
        v28 = v13;
      }

      ipAddress = [(HMDNetworkRouterClientStatusIdentifier *)self ipAddress];
      ipAddress2 = [(HMDNetworkRouterClientStatusIdentifier *)v7 ipAddress];
      v17 = ipAddress2;
      if (ipAddress == ipAddress2)
      {

        v10 = 1;
      }

      else
      {
        [(HMDNetworkRouterClientStatusIdentifier *)self ipAddress];
        v18 = v25 = clientIdentifier3;
        [(HMDNetworkRouterClientStatusIdentifier *)v7 ipAddress];
        v24 = macAddress;
        v19 = clientIdentifier4;
        v20 = clientIdentifier2;
        v22 = v21 = clientIdentifier;
        v10 = [v18 isEqual:v22];

        clientIdentifier = v21;
        clientIdentifier2 = v20;
        clientIdentifier4 = v19;
        macAddress = v24;

        clientIdentifier3 = v25;
      }

      v13 = v28;
      macAddress3 = v26;
      if (macAddress == v28)
      {
LABEL_18:

        if (clientIdentifier == clientIdentifier2)
        {
LABEL_20:

          goto LABEL_21;
        }

LABEL_19:

        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }

    v10 = 0;
  }

LABEL_21:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDNetworkRouterClientStatusIdentifier allocWithZone:zone];
  clientIdentifier = [(HMDNetworkRouterClientStatusIdentifier *)self clientIdentifier];
  macAddress = [(HMDNetworkRouterClientStatusIdentifier *)self macAddress];
  ipAddress = [(HMDNetworkRouterClientStatusIdentifier *)self ipAddress];
  v8 = [(HMDNetworkRouterClientStatusIdentifier *)v4 initWithClientIdentifier:clientIdentifier macAddress:macAddress ipAddress:ipAddress];

  return v8;
}

- (id)serializeWithError:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
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
  v21 = 0u;
  TLV8BufferInit();
  clientIdentifier = [(HMDNetworkRouterClientStatusIdentifier *)self clientIdentifier];

  if (clientIdentifier)
  {
    clientIdentifier2 = [(HMDNetworkRouterClientStatusIdentifier *)self clientIdentifier];
    v20 = 0;
    v7 = [clientIdentifier2 serializeWithError:&v20];
    v8 = v20;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
LABEL_8:

LABEL_9:
      if (error)
      {
        HMErrorFromOSStatus();
        v8 = 0;
        *error = v11 = 0;
        goto LABEL_20;
      }

      v8 = 0;
LABEL_17:
      v11 = 0;
      goto LABEL_20;
    }
  }

  macAddress = [(HMDNetworkRouterClientStatusIdentifier *)self macAddress];

  if (macAddress)
  {
    macAddress2 = [(HMDNetworkRouterClientStatusIdentifier *)self macAddress];
    v19 = 0;
    v7 = [macAddress2 serializeWithError:&v19];
    v8 = v19;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    if (TLV8BufferAppend())
    {
      goto LABEL_8;
    }
  }

  ipAddress = [(HMDNetworkRouterClientStatusIdentifier *)self ipAddress];

  if (ipAddress)
  {
    ipAddress2 = [(HMDNetworkRouterClientStatusIdentifier *)self ipAddress];
    v18 = 0;
    v7 = [ipAddress2 serializeWithError:&v18];
    v8 = v18;

    if (v8)
    {
LABEL_15:

      if (error)
      {
        v14 = v8;
        v11 = 0;
        *error = v8;
        goto LABEL_20;
      }

      goto LABEL_17;
    }

    [v7 bytes];
    [v7 length];
    v15 = TLV8BufferAppend();

    if (v15)
    {
      goto LABEL_9;
    }
  }

  v11 = [MEMORY[0x277CBEA90] dataWithBytes:v21 length:?];
  v8 = 0;
LABEL_20:
  TLV8BufferFree();

  v16 = *MEMORY[0x277D85DE8];

  return v11;
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
    goto LABEL_27;
  }

  selfCopy = self;
  errorCopy = error;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = bytes + v9;
  do
  {
    v32 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (errorCopy)
      {
        HMErrorFromOSStatus();
        *errorCopy = v20 = 0;
        goto LABEL_28;
      }

      goto LABEL_24;
    }

    if (!v31)
    {
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v10 = v21;
      if (v21)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }

    switch(v32)
    {
      case 3:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v25 = v10;
        v16 = &v25;
        [HMDNetworkRouterIPAddress parsedFromData:v15 error:&v25];
        v11 = v17 = v11;
        break;
      case 2:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v26 = v10;
        v16 = &v26;
        [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v26];
        v12 = v17 = v12;
        break;
      case 1:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v27 = v10;
        v16 = &v27;
        [MEMORY[0x277CFEC98] parsedFromData:v15 error:&v27];
        v13 = v17 = v13;
        break;
      default:
        goto LABEL_15;
    }

    v18 = *v16;

    v10 = v18;
LABEL_15:
    if (v30)
    {
      free(v30);
    }
  }

  while (v28 != v14);
  if (v10)
  {
LABEL_19:
    if (errorCopy)
    {
      v19 = v10;
      v20 = 0;
      *errorCopy = v10;
      goto LABEL_28;
    }

LABEL_24:
    v20 = 0;
    goto LABEL_28;
  }

LABEL_26:
  self = selfCopy;
LABEL_27:
  [(HMDNetworkRouterClientStatusIdentifier *)self setClientIdentifier:v13, selfCopy];
  [(HMDNetworkRouterClientStatusIdentifier *)self setMacAddress:v12];
  [(HMDNetworkRouterClientStatusIdentifier *)self setIpAddress:v11];
  v10 = 0;
  v20 = 1;
LABEL_28:

  return v20;
}

- (HMDNetworkRouterClientStatusIdentifier)initWithClientIdentifier:(id)identifier macAddress:(id)address ipAddress:(id)ipAddress
{
  identifierCopy = identifier;
  addressCopy = address;
  ipAddressCopy = ipAddress;
  v15.receiver = self;
  v15.super_class = HMDNetworkRouterClientStatusIdentifier;
  v12 = [(HMDNetworkRouterClientStatusIdentifier *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clientIdentifier, identifier);
    objc_storeStrong(&v13->_macAddress, address);
    objc_storeStrong(&v13->_ipAddress, ipAddress);
  }

  return v13;
}

- (HMDNetworkRouterClientStatusIdentifier)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterClientStatusIdentifier;
  return [(HMDNetworkRouterClientStatusIdentifier *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterClientStatusIdentifier);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterClientStatusIdentifier *)v6 parseFromData:dataCopy error:&v11];
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