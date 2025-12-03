@interface HAP2TLVRemovePairingRequest
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAP2TLVRemovePairingRequest)init;
- (HAP2TLVRemovePairingRequest)initWithState:(id)state method:(id)method identifier:(id)identifier;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAP2TLVRemovePairingRequest

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  state = [(HAP2TLVRemovePairingRequest *)self state];
  method = [(HAP2TLVRemovePairingRequest *)self method];
  identifier = [(HAP2TLVRemovePairingRequest *)self identifier];
  v7 = [v3 stringWithFormat:@"<HAP2TLVRemovePairingRequest state=%@, method=%@, identifier=%@>", state, method, identifier];

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
      state = [(HAP2TLVRemovePairingRequest *)self state];
      state2 = [(HAP2TLVRemovePairingRequest *)v7 state];
      if (state != state2)
      {
        state3 = [(HAP2TLVRemovePairingRequest *)self state];
        state4 = [(HAP2TLVRemovePairingRequest *)v7 state];
        if (![state3 isEqual:state4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      method = [(HAP2TLVRemovePairingRequest *)self method];
      method2 = [(HAP2TLVRemovePairingRequest *)v7 method];
      v13 = method2;
      if (method == method2)
      {
        v28 = method2;
      }

      else
      {
        method3 = [(HAP2TLVRemovePairingRequest *)self method];
        method4 = [(HAP2TLVRemovePairingRequest *)v7 method];
        if (![method3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = method3;
        v28 = v13;
      }

      identifier = [(HAP2TLVRemovePairingRequest *)self identifier];
      identifier2 = [(HAP2TLVRemovePairingRequest *)v7 identifier];
      v17 = identifier2;
      if (identifier == identifier2)
      {

        v10 = 1;
      }

      else
      {
        [(HAP2TLVRemovePairingRequest *)self identifier];
        v18 = v25 = state3;
        [(HAP2TLVRemovePairingRequest *)v7 identifier];
        v24 = method;
        v19 = state4;
        v20 = state2;
        v22 = v21 = state;
        v10 = [v18 isEqual:v22];

        state = v21;
        state2 = v20;
        state4 = v19;
        method = v24;

        state3 = v25;
      }

      v13 = v28;
      method3 = v26;
      if (method == v28)
      {
LABEL_18:

        if (state == state2)
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
  v4 = [HAP2TLVRemovePairingRequest allocWithZone:zone];
  state = [(HAP2TLVRemovePairingRequest *)self state];
  method = [(HAP2TLVRemovePairingRequest *)self method];
  identifier = [(HAP2TLVRemovePairingRequest *)self identifier];
  v8 = [(HAP2TLVRemovePairingRequest *)v4 initWithState:state method:method identifier:identifier];

  return v8;
}

- (id)serializeWithError:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
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
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  TLV8BufferInit();
  state = [(HAP2TLVRemovePairingRequest *)self state];

  if (state)
  {
    state2 = [(HAP2TLVRemovePairingRequest *)self state];
    v27 = 0;
    v7 = [state2 serializeWithError:&v27];
    v8 = v27;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
LABEL_8:
      v12 = v9;

LABEL_9:
      if (error)
      {
        HMErrorFromOSStatus(v12);
        v8 = 0;
        *error = v13 = 0;
        goto LABEL_32;
      }

      v8 = 0;
LABEL_17:
      v13 = 0;
      goto LABEL_32;
    }
  }

  method = [(HAP2TLVRemovePairingRequest *)self method];

  if (method)
  {
    method2 = [(HAP2TLVRemovePairingRequest *)self method];
    v26 = 0;
    v7 = [method2 serializeWithError:&v26];
    v8 = v26;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_8;
    }
  }

  identifier = [(HAP2TLVRemovePairingRequest *)self identifier];

  if (identifier)
  {
    identifier2 = [(HAP2TLVRemovePairingRequest *)self identifier];
    v25 = 0;
    v7 = [identifier2 serializeWithError:&v25];
    v8 = v25;

    if (v8)
    {
LABEL_15:

      if (error)
      {
        v16 = v8;
        v13 = 0;
        *error = v8;
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    bytes = [v7 bytes];
    v18 = bytes + [v7 length];
    do
    {
      if ((v18 - bytes) >= 255)
      {
        v19 = 255;
      }

      else
      {
        v19 = v18 - bytes;
      }

      v20 = TLV8BufferAppend();
      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v19;
      }

      bytes += v21;
      if (v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = bytes >= v18;
      }
    }

    while (!v22);
    v12 = v20;

    if (v12)
    {
      goto LABEL_9;
    }
  }

  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v28 length:?];
  v8 = 0;
LABEL_32:
  TLV8BufferFree();

  v23 = *MEMORY[0x277D85DE8];

  return v13;
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
    [(HAP2TLVRemovePairingRequest *)self setState:v12];
    [(HAP2TLVRemovePairingRequest *)self setMethod:v11];
    [(HAP2TLVRemovePairingRequest *)self setIdentifier:v10];
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
      case 0:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v28 = v9;
        v20 = [HAP2TLVPairingMethodWrapper parsedFromData:v15 error:&v28];
        v17 = v28;

        v18 = v11;
        v11 = v20;
LABEL_12:

LABEL_13:
        v9 = v17;
        break;
      case 1:
        v27 = v9;
        v15 = HAPTLVParseContiguousTlvs(1, bytes, v13, v30, &v27);
        v17 = v27;

        if (!v17)
        {
          v26 = 0;
          v19 = [MEMORY[0x277CCACA8] parsedFromData:v15 error:&v26];
          v17 = v26;
          v18 = v10;
          v10 = v19;
          goto LABEL_12;
        }

        goto LABEL_13;
      case 6:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v29 = v9;
        v16 = [HAP2TLVPairingStateWrapper parsedFromData:v15 error:&v29];
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

- (HAP2TLVRemovePairingRequest)initWithState:(id)state method:(id)method identifier:(id)identifier
{
  stateCopy = state;
  methodCopy = method;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = HAP2TLVRemovePairingRequest;
  v12 = [(HAP2TLVRemovePairingRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_state, state);
    objc_storeStrong(&v13->_method, method);
    objc_storeStrong(&v13->_identifier, identifier);
  }

  return v13;
}

- (HAP2TLVRemovePairingRequest)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVRemovePairingRequest;
  return [(HAP2TLVRemovePairingRequest *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAP2TLVRemovePairingRequest);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVRemovePairingRequest *)v6 parseFromData:dataCopy error:&v11];
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