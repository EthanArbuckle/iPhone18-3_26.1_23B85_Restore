@interface HAP2TLVAddPairingRequest
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAP2TLVAddPairingRequest)init;
- (HAP2TLVAddPairingRequest)initWithState:(id)state method:(id)method identifier:(id)identifier publicKey:(id)key permissions:(id)permissions;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAP2TLVAddPairingRequest

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  state = [(HAP2TLVAddPairingRequest *)self state];
  method = [(HAP2TLVAddPairingRequest *)self method];
  identifier = [(HAP2TLVAddPairingRequest *)self identifier];
  publicKey = [(HAP2TLVAddPairingRequest *)self publicKey];
  permissions = [(HAP2TLVAddPairingRequest *)self permissions];
  v9 = [v3 stringWithFormat:@"<HAP2TLVAddPairingRequest state=%@, method=%@, identifier=%@, publicKey=%@, permissions=%@>", state, method, identifier, publicKey, permissions];

  return v9;
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
      state = [(HAP2TLVAddPairingRequest *)self state];
      state2 = [(HAP2TLVAddPairingRequest *)v6 state];
      if (state != state2)
      {
        state3 = [(HAP2TLVAddPairingRequest *)self state];
        state4 = [(HAP2TLVAddPairingRequest *)v6 state];
        v40 = state3;
        if (![state3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_29;
        }
      }

      method = [(HAP2TLVAddPairingRequest *)self method];
      method2 = [(HAP2TLVAddPairingRequest *)v6 method];
      v41 = method;
      if (method != method2)
      {
        method3 = [(HAP2TLVAddPairingRequest *)self method];
        method4 = [(HAP2TLVAddPairingRequest *)v6 method];
        if (![method3 isEqual:?])
        {
          v10 = 0;
LABEL_27:

LABEL_28:
          if (state == state2)
          {
LABEL_30:

            goto LABEL_31;
          }

LABEL_29:

          goto LABEL_30;
        }
      }

      identifier = [(HAP2TLVAddPairingRequest *)self identifier];
      identifier2 = [(HAP2TLVAddPairingRequest *)v6 identifier];
      v38 = identifier;
      v27 = identifier == identifier2;
      v15 = identifier2;
      if (!v27)
      {
        identifier3 = [(HAP2TLVAddPairingRequest *)self identifier];
        identifier4 = [(HAP2TLVAddPairingRequest *)v6 identifier];
        v34 = identifier3;
        if (![identifier3 isEqual:?])
        {
          v10 = 0;
          v17 = v38;
LABEL_25:

LABEL_26:
          if (v41 == method2)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }
      }

      publicKey = [(HAP2TLVAddPairingRequest *)self publicKey];
      publicKey2 = [(HAP2TLVAddPairingRequest *)v6 publicKey];
      v36 = v15;
      if (publicKey == publicKey2)
      {
        v31 = method3;
        v32 = method2;
      }

      else
      {
        publicKey3 = [(HAP2TLVAddPairingRequest *)self publicKey];
        publicKey4 = [(HAP2TLVAddPairingRequest *)v6 publicKey];
        v30 = publicKey3;
        if (![publicKey3 isEqual:?])
        {
          v10 = 0;
          v26 = publicKey2;
          goto LABEL_23;
        }

        v31 = method3;
        v32 = method2;
      }

      permissions = [(HAP2TLVAddPairingRequest *)self permissions];
      permissions2 = [(HAP2TLVAddPairingRequest *)v6 permissions];
      v22 = permissions2;
      if (permissions == permissions2)
      {

        v10 = 1;
        v26 = publicKey2;
        v27 = publicKey == publicKey2;
      }

      else
      {
        permissions3 = [(HAP2TLVAddPairingRequest *)self permissions];
        [(HAP2TLVAddPairingRequest *)v6 permissions];
        v25 = v24 = publicKey;
        v10 = [permissions3 isEqual:v25];

        publicKey = v24;
        v26 = publicKey2;
        v27 = v24 == publicKey2;
      }

      method3 = v31;
      method2 = v32;
      if (v27)
      {
LABEL_24:

        v17 = v38;
        v15 = v36;
        if (v38 == v36)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_23:

      goto LABEL_24;
    }

    v10 = 0;
  }

LABEL_31:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HAP2TLVAddPairingRequest allocWithZone:zone];
  state = [(HAP2TLVAddPairingRequest *)self state];
  method = [(HAP2TLVAddPairingRequest *)self method];
  identifier = [(HAP2TLVAddPairingRequest *)self identifier];
  publicKey = [(HAP2TLVAddPairingRequest *)self publicKey];
  permissions = [(HAP2TLVAddPairingRequest *)self permissions];
  v10 = [(HAP2TLVAddPairingRequest *)v4 initWithState:state method:method identifier:identifier publicKey:publicKey permissions:permissions];

  return v10;
}

- (id)serializeWithError:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
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
  v40 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  TLV8BufferInit();
  state = [(HAP2TLVAddPairingRequest *)self state];

  if (state)
  {
    state2 = [(HAP2TLVAddPairingRequest *)self state];
    v33 = 0;
    v7 = [state2 serializeWithError:&v33];
    v8 = v33;

    if (v8)
    {
      goto LABEL_33;
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
        goto LABEL_36;
      }

      v8 = 0;
LABEL_35:
      v13 = 0;
      goto LABEL_36;
    }
  }

  method = [(HAP2TLVAddPairingRequest *)self method];

  if (method)
  {
    method2 = [(HAP2TLVAddPairingRequest *)self method];
    v32 = 0;
    v7 = [method2 serializeWithError:&v32];
    v8 = v32;

    if (v8)
    {
      goto LABEL_33;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();
    if (v9)
    {
      goto LABEL_8;
    }
  }

  identifier = [(HAP2TLVAddPairingRequest *)self identifier];

  if (identifier)
  {
    identifier2 = [(HAP2TLVAddPairingRequest *)self identifier];
    v31 = 0;
    v7 = [identifier2 serializeWithError:&v31];
    v8 = v31;

    if (!v8)
    {
      bytes = [v7 bytes];
      v17 = bytes + [v7 length];
      while (1)
      {
        v18 = (v17 - bytes) >= 255 ? 255 : v17 - bytes;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_8;
        }

        bytes += v18;
        if (bytes >= v17)
        {

          goto LABEL_22;
        }
      }
    }

    goto LABEL_33;
  }

LABEL_22:
  publicKey = [(HAP2TLVAddPairingRequest *)self publicKey];

  if (publicKey)
  {
    publicKey2 = [(HAP2TLVAddPairingRequest *)self publicKey];
    v30 = 0;
    v7 = [publicKey2 serializeWithError:&v30];
    v8 = v30;

    if (!v8)
    {
      bytes2 = [v7 bytes];
      v22 = bytes2 + [v7 length];
      while (1)
      {
        v23 = (v22 - bytes2) >= 255 ? 255 : v22 - bytes2;
        v9 = TLV8BufferAppend();
        if (v9)
        {
          goto LABEL_8;
        }

        bytes2 += v23;
        if (bytes2 >= v22)
        {

          goto LABEL_31;
        }
      }
    }

LABEL_33:

    if (error)
    {
      v26 = v8;
      v13 = 0;
      *error = v8;
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_31:
  permissions = [(HAP2TLVAddPairingRequest *)self permissions];

  if (permissions)
  {
    permissions2 = [(HAP2TLVAddPairingRequest *)self permissions];
    v29 = 0;
    v7 = [permissions2 serializeWithError:&v29];
    v8 = v29;

    if (v8)
    {
      goto LABEL_33;
    }

    [v7 bytes];
    [v7 length];
    v12 = TLV8BufferAppend();

    if (v12)
    {
      goto LABEL_9;
    }
  }

  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v34 length:?];
  v8 = 0;
LABEL_36:
  TLV8BufferFree();

  v27 = *MEMORY[0x277D85DE8];

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
    v25 = 0;
    v26 = 0;
    v12 = 0;
LABEL_32:
    [(HAP2TLVAddPairingRequest *)self setState:v10, errorCopy];
    [(HAP2TLVAddPairingRequest *)self setMethod:v12];
    [(HAP2TLVAddPairingRequest *)self setIdentifier:v26];
    [(HAP2TLVAddPairingRequest *)self setPublicKey:v25];
    [(HAP2TLVAddPairingRequest *)self setPermissions:v11];
    v9 = 0;
    v27 = 1;
    goto LABEL_36;
  }

  errorCopy = error;
  v32 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v33 = 0;
  v12 = 0;
  v13 = bytes + v8;
  while (1)
  {
    v43 = 0;
    v41[1] = 0;
    v42 = 0;
    v41[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (errorCopy)
      {
        HMErrorFromOSStatus(Next);
        *errorCopy = v27 = 0;
      }

      else
      {
        v27 = 0;
      }

      v25 = v32;
      v26 = v33;
      goto LABEL_36;
    }

    if (!v42)
    {
      break;
    }

    if (v43 <= 2u)
    {
      if (!v43)
      {
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v39 = v9;
        v23 = [HAP2TLVPairingMethodWrapper parsedFromData:v15 error:&v39];
        v22 = v39;

        v18 = v12;
        v12 = v23;
LABEL_18:
        v9 = v22;
LABEL_19:

        goto LABEL_20;
      }

      if (v43 == 1)
      {
        v38 = v9;
        v15 = HAPTLVParseContiguousTlvs(1, bytes, v13, v41, &v38);
        v19 = v38;

        if (!v19)
        {
          v37 = 0;
          v20 = [MEMORY[0x277CCACA8] parsedFromData:v15 error:&v37];
          v9 = v37;
          v18 = v33;
          v33 = v20;
          goto LABEL_19;
        }

LABEL_15:
        v9 = v19;
LABEL_20:
      }
    }

    else
    {
      switch(v43)
      {
        case 3u:
          v36 = v9;
          v15 = HAPTLVParseContiguousTlvs(3, bytes, v13, v41, &v36);
          v19 = v36;

          if (v19)
          {
            goto LABEL_15;
          }

          v35 = 0;
          v24 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v35];
          v9 = v35;
          v18 = v32;
          v32 = v24;
          goto LABEL_19;
        case 0xBu:
          v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v34 = v9;
          v21 = [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v34];
          v22 = v34;

          v18 = v11;
          v11 = v21;
          goto LABEL_18;
        case 6u:
          v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
          v40 = v9;
          v16 = [HAP2TLVPairingStateWrapper parsedFromData:v15 error:&v40];
          v17 = v40;

          v18 = v10;
          v10 = v16;
          v9 = v17;
          goto LABEL_19;
      }
    }

    bytes = v41[0];
    if (v41[0] >= v13)
    {
      goto LABEL_28;
    }
  }

  v28 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v9 = v28;
LABEL_28:
  if (!v9)
  {
    v25 = v32;
    v26 = v33;
    goto LABEL_32;
  }

  v25 = v32;
  v26 = v33;
  if (errorCopy)
  {
    v29 = v9;
    v27 = 0;
    *errorCopy = v9;
  }

  else
  {
    v27 = 0;
  }

LABEL_36:

  return v27;
}

- (HAP2TLVAddPairingRequest)initWithState:(id)state method:(id)method identifier:(id)identifier publicKey:(id)key permissions:(id)permissions
{
  stateCopy = state;
  methodCopy = method;
  identifierCopy = identifier;
  keyCopy = key;
  permissionsCopy = permissions;
  v21.receiver = self;
  v21.super_class = HAP2TLVAddPairingRequest;
  v17 = [(HAP2TLVAddPairingRequest *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_state, state);
    objc_storeStrong(&v18->_method, method);
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v18->_publicKey, key);
    objc_storeStrong(&v18->_permissions, permissions);
  }

  return v18;
}

- (HAP2TLVAddPairingRequest)init
{
  v3.receiver = self;
  v3.super_class = HAP2TLVAddPairingRequest;
  return [(HAP2TLVAddPairingRequest *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAP2TLVAddPairingRequest);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAP2TLVAddPairingRequest *)v6 parseFromData:dataCopy error:&v11];
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