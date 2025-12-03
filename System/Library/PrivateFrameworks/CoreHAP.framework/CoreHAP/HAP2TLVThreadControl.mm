@interface HAP2TLVThreadControl
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAP2TLVThreadControl)init;
- (HAP2TLVThreadControl)initWithOperationType:(id)type threadNetworkCredentials:(id)credentials formingAllowed:(id)allowed;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAP2TLVThreadControl

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  operationType = [(HAP2TLVThreadControl *)self operationType];
  threadNetworkCredentials = [(HAP2TLVThreadControl *)self threadNetworkCredentials];
  formingAllowed = [(HAP2TLVThreadControl *)self formingAllowed];
  v7 = [v3 stringWithFormat:@"<HAP2TLVThreadControl operationType=%@, threadNetworkCredentials=%@, formingAllowed=%@>", operationType, threadNetworkCredentials, formingAllowed];

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
      operationType = [(HAP2TLVThreadControl *)self operationType];
      operationType2 = [(HAP2TLVThreadControl *)v7 operationType];
      if (operationType != operationType2)
      {
        operationType3 = [(HAP2TLVThreadControl *)self operationType];
        operationType4 = [(HAP2TLVThreadControl *)v7 operationType];
        if (![operationType3 isEqual:operationType4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      threadNetworkCredentials = [(HAP2TLVThreadControl *)self threadNetworkCredentials];
      threadNetworkCredentials2 = [(HAP2TLVThreadControl *)v7 threadNetworkCredentials];
      v13 = threadNetworkCredentials2;
      if (threadNetworkCredentials == threadNetworkCredentials2)
      {
        v28 = threadNetworkCredentials2;
      }

      else
      {
        threadNetworkCredentials3 = [(HAP2TLVThreadControl *)self threadNetworkCredentials];
        threadNetworkCredentials4 = [(HAP2TLVThreadControl *)v7 threadNetworkCredentials];
        if (![threadNetworkCredentials3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = threadNetworkCredentials3;
        v28 = v13;
      }

      formingAllowed = [(HAP2TLVThreadControl *)self formingAllowed];
      formingAllowed2 = [(HAP2TLVThreadControl *)v7 formingAllowed];
      v17 = formingAllowed2;
      if (formingAllowed == formingAllowed2)
      {

        v10 = 1;
      }

      else
      {
        [(HAP2TLVThreadControl *)self formingAllowed];
        v18 = v25 = operationType3;
        [(HAP2TLVThreadControl *)v7 formingAllowed];
        v24 = threadNetworkCredentials;
        v19 = operationType4;
        v20 = operationType2;
        v22 = v21 = operationType;
        v10 = [v18 isEqual:v22];

        operationType = v21;
        operationType2 = v20;
        operationType4 = v19;
        threadNetworkCredentials = v24;

        operationType3 = v25;
      }

      v13 = v28;
      threadNetworkCredentials3 = v26;
      if (threadNetworkCredentials == v28)
      {
LABEL_18:

        if (operationType == operationType2)
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
  v4 = [HAP2TLVThreadControl allocWithZone:zone];
  operationType = [(HAP2TLVThreadControl *)self operationType];
  threadNetworkCredentials = [(HAP2TLVThreadControl *)self threadNetworkCredentials];
  formingAllowed = [(HAP2TLVThreadControl *)self formingAllowed];
  v8 = [(HAP2TLVThreadControl *)v4 initWithOperationType:operationType threadNetworkCredentials:threadNetworkCredentials formingAllowed:formingAllowed];

  return v8;
}

- (id)serializeWithError:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
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
  v25 = 0u;
  TLV8BufferInit();
  operationType = [(HAP2TLVThreadControl *)self operationType];

  if (operationType)
  {
    operationType2 = [(HAP2TLVThreadControl *)self operationType];
    v24 = 0;
    v7 = [operationType2 serializeWithError:&v24];
    v8 = v24;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
      goto LABEL_19;
    }
  }

  threadNetworkCredentials = [(HAP2TLVThreadControl *)self threadNetworkCredentials];

  if (!threadNetworkCredentials)
  {
LABEL_13:
    formingAllowed = [(HAP2TLVThreadControl *)self formingAllowed];

    if (!formingAllowed)
    {
      goto LABEL_21;
    }

    formingAllowed2 = [(HAP2TLVThreadControl *)self formingAllowed];
    v22 = 0;
    v7 = [formingAllowed2 serializeWithError:&v22];
    v8 = v22;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (!v9)
    {
LABEL_21:
      v19 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:?];
      v8 = 0;
      goto LABEL_24;
    }

LABEL_19:
    if (error)
    {
      HMErrorFromOSStatus(v9);
      v8 = 0;
      *error = v19 = 0;
      goto LABEL_24;
    }

    v8 = 0;
    goto LABEL_23;
  }

  threadNetworkCredentials2 = [(HAP2TLVThreadControl *)self threadNetworkCredentials];
  v23 = 0;
  v7 = [threadNetworkCredentials2 serializeWithError:&v23];
  v8 = v23;

  if (!v8)
  {
    bytes = [v7 bytes];
    v13 = bytes + [v7 length];
    while (1)
    {
      v14 = (v13 - bytes) >= 255 ? 255 : v13 - bytes;
      v15 = TLV8BufferAppend();
      if (v15)
      {
        break;
      }

      bytes += v14;
      if (bytes >= v13)
      {

        goto LABEL_13;
      }
    }

    v9 = v15;

    goto LABEL_19;
  }

LABEL_15:

  if (error)
  {
    v18 = v8;
    v19 = 0;
    *error = v8;
    goto LABEL_24;
  }

LABEL_23:
  v19 = 0;
LABEL_24:
  TLV8BufferFree();

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 < 1)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_18:
    [(HAP2TLVThreadControl *)self setOperationType:v12];
    [(HAP2TLVThreadControl *)self setThreadNetworkCredentials:v11];
    [(HAP2TLVThreadControl *)self setFormingAllowed:v10];
    v9 = 0;
    v21 = 1;
    goto LABEL_25;
  }

  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = bytes + v8;
  while (1)
  {
    v32 = 0;
    v30[1] = 0;
    v31 = 0;
    v30[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (errorCopy)
      {
        HMErrorFromOSStatus(Next);
        *errorCopy = v21 = 0;
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (!v31)
    {
      break;
    }

    switch(v32)
    {
      case 3:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v26 = v9;
        v20 = [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v26];
        v17 = v26;

        v18 = v10;
        v10 = v20;
LABEL_12:

LABEL_13:
        v9 = v17;
        break;
      case 2:
        v28 = v9;
        v15 = HAPTLVParseContiguousTlvs(2, bytes, v13, v30, &v28);
        v17 = v28;

        if (!v17)
        {
          v27 = 0;
          v19 = [HAP2TLVThreadNetworkCredentials parsedFromData:v15 error:&v27];
          v17 = v27;
          v18 = v11;
          v11 = v19;
          goto LABEL_12;
        }

        goto LABEL_13;
      case 1:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v29 = v9;
        v16 = [HAP2TLVThreadOperationTypeWrapper parsedFromData:v15 error:&v29];
        v17 = v29;

        v18 = v12;
        v12 = v16;
        goto LABEL_12;
    }

    bytes = v30[0];
    if (v30[0] >= v13)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_22;
    }
  }

  v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v9 = v22;
  if (!v22)
  {
    goto LABEL_18;
  }

LABEL_22:
  if (errorCopy)
  {
    v23 = v9;
    v21 = 0;
    *errorCopy = v9;
    goto LABEL_25;
  }

LABEL_24:
  v21 = 0;
LABEL_25:

  return v21;
}

- (HAP2TLVThreadControl)initWithOperationType:(id)type threadNetworkCredentials:(id)credentials formingAllowed:(id)allowed
{
  typeCopy = type;
  credentialsCopy = credentials;
  allowedCopy = allowed;
  v15.receiver = self;
  v15.super_class = HAP2TLVThreadControl;
  v12 = [(HAP2TLVThreadControl *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_operationType, type);
    objc_storeStrong(&v13->_threadNetworkCredentials, credentials);
    objc_storeStrong(&v13->_formingAllowed, allowed);
  }

  return v13;
}

- (HAP2TLVThreadControl)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVThreadControl;
  return [(HAP2TLVThreadControl *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAP2TLVThreadControl);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVThreadControl *)v6 parseFromData:dataCopy error:&v11];
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