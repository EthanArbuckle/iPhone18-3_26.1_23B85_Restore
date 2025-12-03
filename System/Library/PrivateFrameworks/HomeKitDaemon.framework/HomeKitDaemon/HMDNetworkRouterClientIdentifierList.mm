@interface HMDNetworkRouterClientIdentifierList
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterClientIdentifierList)init;
- (HMDNetworkRouterClientIdentifierList)initWithClientIdentifiers:(id)identifiers;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDNetworkRouterClientIdentifierList

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  clientIdentifiers = [(HMDNetworkRouterClientIdentifierList *)self clientIdentifiers];
  v4 = [v2 stringWithFormat:@"<HMDNetworkRouterClientIdentifierList clientIdentifiers=%@>", clientIdentifiers];

  return v4;
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
      v5 = equalCopy;
      clientIdentifiers = [(HMDNetworkRouterClientIdentifierList *)self clientIdentifiers];
      clientIdentifiers2 = [(HMDNetworkRouterClientIdentifierList *)v5 clientIdentifiers];
      if (clientIdentifiers == clientIdentifiers2)
      {
        v10 = 1;
      }

      else
      {
        clientIdentifiers3 = [(HMDNetworkRouterClientIdentifierList *)self clientIdentifiers];
        clientIdentifiers4 = [(HMDNetworkRouterClientIdentifierList *)v5 clientIdentifiers];
        v10 = [clientIdentifiers3 isEqual:clientIdentifiers4];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDNetworkRouterClientIdentifierList allocWithZone:zone];
  clientIdentifiers = [(HMDNetworkRouterClientIdentifierList *)self clientIdentifiers];
  v6 = [(HMDNetworkRouterClientIdentifierList *)v4 initWithClientIdentifiers:clientIdentifiers];

  return v6;
}

- (id)serializeWithError:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
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
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  TLV8BufferInit();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  clientIdentifiers = [(HMDNetworkRouterClientIdentifierList *)self clientIdentifiers];
  v6 = [clientIdentifiers countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v22;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(clientIdentifiers);
      }

      v11 = *(*(&v21 + 1) + 8 * v10);
      if (v8)
      {
        if (TLV8BufferAppend())
        {
          break;
        }
      }

      v20 = 0;
      v12 = [v11 serializeWithError:&v20];
      v13 = v20;
      if (v13)
      {
        v16 = v13;

        if (error)
        {
          v17 = v16;
          v15 = 0;
          *error = v16;
          goto LABEL_19;
        }

LABEL_18:
        v15 = 0;
        goto LABEL_19;
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
        v7 = [clientIdentifiers countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    if (error)
    {
      HMErrorFromOSStatus();
      v16 = 0;
      *error = v15 = 0;
      goto LABEL_19;
    }

    v16 = 0;
    goto LABEL_18;
  }

LABEL_12:

  v15 = [MEMORY[0x277CBEA90] dataWithBytes:v26 length:?];
  v16 = 0;
LABEL_19:
  TLV8BufferFree();

  v18 = *MEMORY[0x277D85DE8];

  return v15;
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
  array = [MEMORY[0x277CBEB18] array];
  if (v9)
  {
    v11 = 0;
    v12 = bytes + v9;
    while (1)
    {
      v26 = 0;
      v24 = 0;
      v25 = 0;
      v22 = 0;
      v23 = 0;
      if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
      {
        if (error)
        {
          HMErrorFromOSStatus();
          *error = v16 = 0;
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      if (!v25)
      {
        break;
      }

      if (v26 == 1)
      {
        v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v21 = v11;
        v14 = [MEMORY[0x277CFEC98] parsedFromData:v13 error:&v21];
        v15 = v21;

        if (!v15)
        {
          [array addObject:v14];
        }

        v11 = v15;
      }

      if (v24)
      {
        free(v24);
      }

      if (v22 == v12)
      {
        goto LABEL_19;
      }
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

    v11 = v17;
LABEL_19:
    if (!v11)
    {
      goto LABEL_22;
    }

    if (error)
    {
      v18 = v11;
      v16 = 0;
      *error = v11;
      goto LABEL_27;
    }

LABEL_26:
    v16 = 0;
  }

  else
  {
LABEL_22:
    if ([array count])
    {
      v19 = array;
    }

    else
    {
      v19 = 0;
    }

    [(HMDNetworkRouterClientIdentifierList *)self setClientIdentifiers:v19];
    v11 = 0;
    v16 = 1;
  }

LABEL_27:

  return v16;
}

- (HMDNetworkRouterClientIdentifierList)initWithClientIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9.receiver = self;
  v9.super_class = HMDNetworkRouterClientIdentifierList;
  v6 = [(HMDNetworkRouterClientIdentifierList *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientIdentifiers, identifiers);
  }

  return v7;
}

- (HMDNetworkRouterClientIdentifierList)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterClientIdentifierList;
  return [(HMDNetworkRouterClientIdentifierList *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterClientIdentifierList);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterClientIdentifierList *)v6 parseFromData:dataCopy error:&v11];
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