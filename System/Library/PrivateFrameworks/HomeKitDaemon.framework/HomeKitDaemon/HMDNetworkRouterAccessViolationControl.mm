@interface HMDNetworkRouterAccessViolationControl
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HMDNetworkRouterAccessViolationControl)init;
- (HMDNetworkRouterAccessViolationControl)initWithOperation:(id)operation clientIdentifierList:(id)list;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HMDNetworkRouterAccessViolationControl

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  operation = [(HMDNetworkRouterAccessViolationControl *)self operation];
  clientIdentifierList = [(HMDNetworkRouterAccessViolationControl *)self clientIdentifierList];
  v6 = [v3 stringWithFormat:@"<HMDNetworkRouterAccessViolationControl operation=%@, clientIdentifierList=%@>", operation, clientIdentifierList];

  return v6;
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
      operation = [(HMDNetworkRouterAccessViolationControl *)self operation];
      operation2 = [(HMDNetworkRouterAccessViolationControl *)v6 operation];
      if (operation != operation2)
      {
        operation3 = [(HMDNetworkRouterAccessViolationControl *)self operation];
        operation4 = [(HMDNetworkRouterAccessViolationControl *)v6 operation];
        if (![operation3 isEqual:operation4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = operation3;
      }

      clientIdentifierList = [(HMDNetworkRouterAccessViolationControl *)self clientIdentifierList];
      clientIdentifierList2 = [(HMDNetworkRouterAccessViolationControl *)v6 clientIdentifierList];
      if (clientIdentifierList == clientIdentifierList2)
      {
        v10 = 1;
      }

      else
      {
        clientIdentifierList3 = [(HMDNetworkRouterAccessViolationControl *)self clientIdentifierList];
        clientIdentifierList4 = [(HMDNetworkRouterAccessViolationControl *)v6 clientIdentifierList];
        v10 = [clientIdentifierList3 isEqual:clientIdentifierList4];
      }

      operation3 = v16;
      if (operation == operation2)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDNetworkRouterAccessViolationControl allocWithZone:zone];
  operation = [(HMDNetworkRouterAccessViolationControl *)self operation];
  clientIdentifierList = [(HMDNetworkRouterAccessViolationControl *)self clientIdentifierList];
  v7 = [(HMDNetworkRouterAccessViolationControl *)v4 initWithOperation:operation clientIdentifierList:clientIdentifierList];

  return v7;
}

- (id)serializeWithError:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
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
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  TLV8BufferInit();
  operation = [(HMDNetworkRouterAccessViolationControl *)self operation];

  if (operation)
  {
    operation2 = [(HMDNetworkRouterAccessViolationControl *)self operation];
    v18 = 0;
    v7 = [operation2 serializeWithError:&v18];
    v8 = v18;

    if (v8)
    {
      goto LABEL_6;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
LABEL_9:
      if (error)
      {
        HMErrorFromOSStatus();
        v8 = 0;
        *error = v13 = 0;
        goto LABEL_14;
      }

      v8 = 0;
      goto LABEL_13;
    }
  }

  clientIdentifierList = [(HMDNetworkRouterAccessViolationControl *)self clientIdentifierList];

  if (!clientIdentifierList)
  {
LABEL_11:
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:?];
    v8 = 0;
    goto LABEL_14;
  }

  clientIdentifierList2 = [(HMDNetworkRouterAccessViolationControl *)self clientIdentifierList];
  v17 = 0;
  v7 = [clientIdentifierList2 serializeWithError:&v17];
  v8 = v17;

  if (!v8)
  {
    [v7 bytes];
    [v7 length];
    v14 = TLV8BufferAppend();

    if (v14)
    {
      goto LABEL_9;
    }

    goto LABEL_11;
  }

LABEL_6:

  if (error)
  {
    v12 = v8;
    v13 = 0;
    *error = v8;
    goto LABEL_14;
  }

LABEL_13:
  v13 = 0;
LABEL_14:
  TLV8BufferFree();

  v15 = *MEMORY[0x277D85DE8];

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
    v10 = 0;
    v11 = 0;
    goto LABEL_25;
  }

  selfCopy = self;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = bytes + v9;
  do
  {
    v29 = 0;
    v27 = 0;
    v28 = 0;
    v25 = 0;
    v26 = 0;
    if (TLV8GetNext() || TLV8GetOrCopyCoalesced())
    {
      if (error)
      {
        HMErrorFromOSStatus();
        *error = v19 = 0;
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    if (!v28)
    {
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v12 = v20;
      if (v20)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }

    if (v29 == 2)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v23 = v12;
      v15 = &v23;
      [HMDNetworkRouterClientIdentifierList parsedFromData:v14 error:&v23];
      v10 = v16 = v10;
    }

    else
    {
      if (v29 != 1)
      {
        goto LABEL_13;
      }

      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v24 = v12;
      v15 = &v24;
      [HMDNetworkRouterAccessViolationControlOperation parsedFromData:v14 error:&v24];
      v11 = v16 = v11;
    }

    v17 = *v15;

    v12 = v17;
LABEL_13:
    if (v27)
    {
      free(v27);
    }
  }

  while (v25 != v13);
  if (v12)
  {
LABEL_17:
    if (error)
    {
      v18 = v12;
      v19 = 0;
      *error = v12;
      goto LABEL_26;
    }

LABEL_22:
    v19 = 0;
    goto LABEL_26;
  }

LABEL_24:
  self = selfCopy;
LABEL_25:
  [(HMDNetworkRouterAccessViolationControl *)self setOperation:v11, selfCopy];
  [(HMDNetworkRouterAccessViolationControl *)self setClientIdentifierList:v10];
  v12 = 0;
  v19 = 1;
LABEL_26:

  return v19;
}

- (HMDNetworkRouterAccessViolationControl)initWithOperation:(id)operation clientIdentifierList:(id)list
{
  operationCopy = operation;
  listCopy = list;
  v12.receiver = self;
  v12.super_class = HMDNetworkRouterAccessViolationControl;
  v9 = [(HMDNetworkRouterAccessViolationControl *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_operation, operation);
    objc_storeStrong(&v10->_clientIdentifierList, list);
  }

  return v10;
}

- (HMDNetworkRouterAccessViolationControl)init
{
  v3.receiver = self;
  v3.super_class = HMDNetworkRouterAccessViolationControl;
  return [(HMDNetworkRouterAccessViolationControl *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HMDNetworkRouterAccessViolationControl);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HMDNetworkRouterAccessViolationControl *)v6 parseFromData:dataCopy error:&v11];
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