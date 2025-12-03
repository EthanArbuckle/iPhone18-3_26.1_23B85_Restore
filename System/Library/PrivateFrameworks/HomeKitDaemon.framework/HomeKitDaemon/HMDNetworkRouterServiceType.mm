@interface HMDNetworkRouterServiceType
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterServiceType)init;
- (HMDNetworkRouterServiceType)initWithName:(id)name;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDNetworkRouterServiceType

- (NSString)description
{
  v2 = MEMORY[0x277CCACA8];
  name = [(HMDNetworkRouterServiceType *)self name];
  v4 = [v2 stringWithFormat:@"<HMDNetworkRouterServiceType name=%@>", name];

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
      name = [(HMDNetworkRouterServiceType *)self name];
      name2 = [(HMDNetworkRouterServiceType *)v5 name];
      if (name == name2)
      {
        v10 = 1;
      }

      else
      {
        name3 = [(HMDNetworkRouterServiceType *)self name];
        name4 = [(HMDNetworkRouterServiceType *)v5 name];
        v10 = [name3 isEqual:name4];
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
  v4 = [HMDNetworkRouterServiceType allocWithZone:zone];
  name = [(HMDNetworkRouterServiceType *)self name];
  v6 = [(HMDNetworkRouterServiceType *)v4 initWithName:name];

  return v6;
}

- (id)serializeWithError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
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
  v23 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  TLV8BufferInit();
  name = [(HMDNetworkRouterServiceType *)self name];

  if (!name)
  {
    goto LABEL_8;
  }

  name2 = [(HMDNetworkRouterServiceType *)self name];
  v14 = 0;
  v7 = [name2 serializeWithError:&v14];
  v8 = v14;

  if (!v8)
  {
    [v7 bytes];
    [v7 length];
    v11 = TLV8BufferAppend();

    if (v11)
    {
      if (error)
      {
        HMErrorFromOSStatus();
        v8 = 0;
        *error = v10 = 0;
        goto LABEL_11;
      }

      v8 = 0;
      goto LABEL_10;
    }

LABEL_8:
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:?];
    v8 = 0;
    goto LABEL_11;
  }

  if (error)
  {
    v9 = v8;
    v10 = 0;
    *error = v8;
    goto LABEL_11;
  }

LABEL_10:
  v10 = 0;
LABEL_11:
  TLV8BufferFree();

  v12 = *MEMORY[0x277D85DE8];

  return v10;
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
  if (v9)
  {
    selfCopy = self;
    v10 = 0;
    v11 = 0;
    v12 = bytes + v9;
    do
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
          *error = v17 = 0;
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      if (!v25)
      {
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

        v11 = v18;
        if (v18)
        {
          goto LABEL_14;
        }

        goto LABEL_21;
      }

      if (v26 == 1)
      {
        v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v21 = v11;
        v14 = [MEMORY[0x277CCACA8] parsedFromData:v13 error:&v21];
        v15 = v21;

        v11 = v15;
        v10 = v14;
      }

      if (v24)
      {
        free(v24);
      }
    }

    while (v22 != v12);
    if (v11)
    {
LABEL_14:
      if (error)
      {
        v16 = v11;
        v17 = 0;
        *error = v11;
        goto LABEL_23;
      }

LABEL_19:
      v17 = 0;
      goto LABEL_23;
    }

LABEL_21:
    self = selfCopy;
  }

  else
  {
    v10 = 0;
  }

  [(HMDNetworkRouterServiceType *)self setName:v10];
  v11 = 0;
  v17 = 1;
LABEL_23:

  return v17;
}

- (HMDNetworkRouterServiceType)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = HMDNetworkRouterServiceType;
  v6 = [(HMDNetworkRouterServiceType *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (HMDNetworkRouterServiceType)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterServiceType;
  return [(HMDNetworkRouterServiceType *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterServiceType);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterServiceType *)v6 parseFromData:dataCopy error:&v11];
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