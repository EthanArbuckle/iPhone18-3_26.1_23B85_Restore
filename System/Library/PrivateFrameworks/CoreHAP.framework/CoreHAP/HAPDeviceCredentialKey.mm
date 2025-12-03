@interface HAPDeviceCredentialKey
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPDeviceCredentialKey)init;
- (HAPDeviceCredentialKey)initWithType:(id)type key:(id)key state:(id)state;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPDeviceCredentialKey

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  type = [(HAPDeviceCredentialKey *)self type];
  v5 = [(HAPDeviceCredentialKey *)self key];
  state = [(HAPDeviceCredentialKey *)self state];
  v7 = [v3 stringWithFormat:@"<HAPDeviceCredentialKey type=%@, key=%@, state=%@>", type, v5, state];

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
      type = [(HAPDeviceCredentialKey *)self type];
      type2 = [(HAPDeviceCredentialKey *)v7 type];
      if (type != type2)
      {
        type3 = [(HAPDeviceCredentialKey *)self type];
        type4 = [(HAPDeviceCredentialKey *)v7 type];
        if (![type3 isEqual:type4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAPDeviceCredentialKey *)self key];
      v12 = [(HAPDeviceCredentialKey *)v7 key];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAPDeviceCredentialKey *)self key];
        v27 = [(HAPDeviceCredentialKey *)v7 key];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      state = [(HAPDeviceCredentialKey *)self state];
      state2 = [(HAPDeviceCredentialKey *)v7 state];
      v17 = state2;
      if (state == state2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPDeviceCredentialKey *)self state];
        v18 = v25 = type3;
        [(HAPDeviceCredentialKey *)v7 state];
        v24 = v11;
        v19 = type4;
        v20 = type2;
        v22 = v21 = type;
        v10 = [v18 isEqual:v22];

        type = v21;
        type2 = v20;
        type4 = v19;
        v11 = v24;

        type3 = v25;
      }

      v13 = v28;
      v14 = v26;
      if (v11 == v28)
      {
LABEL_18:

        if (type == type2)
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
  v4 = [HAPDeviceCredentialKey allocWithZone:zone];
  type = [(HAPDeviceCredentialKey *)self type];
  v6 = [(HAPDeviceCredentialKey *)self key];
  state = [(HAPDeviceCredentialKey *)self state];
  v8 = [(HAPDeviceCredentialKey *)v4 initWithType:type key:v6 state:state];

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
  type = [(HAPDeviceCredentialKey *)self type];

  if (type)
  {
    type2 = [(HAPDeviceCredentialKey *)self type];
    v24 = 0;
    v7 = [type2 serializeWithError:&v24];
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

  v10 = [(HAPDeviceCredentialKey *)self key];

  if (!v10)
  {
LABEL_13:
    state = [(HAPDeviceCredentialKey *)self state];

    if (!state)
    {
      goto LABEL_21;
    }

    state2 = [(HAPDeviceCredentialKey *)self state];
    v22 = 0;
    v7 = [state2 serializeWithError:&v22];
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

  v11 = [(HAPDeviceCredentialKey *)self key];
  v23 = 0;
  v7 = [v11 serializeWithError:&v23];
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
LABEL_23:
    [(HAPDeviceCredentialKey *)self setType:v12, selfCopy];
    [(HAPDeviceCredentialKey *)self setKey:v11];
    [(HAPDeviceCredentialKey *)self setState:v10];
    v9 = 0;
    v22 = 1;
    goto LABEL_25;
  }

  selfCopy = self;
  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = bytes + v8;
  while (1)
  {
    v33 = 0;
    v31[1] = 0;
    v32 = 0;
    v31[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      break;
    }

    if (!v32)
    {
      v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

      v9 = v23;
      if (v23)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }

    switch(v33)
    {
      case 3:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v27 = v9;
        v20 = [HAPNFCAccessKeyStateWrapper parsedFromData:v15 error:&v27];
        v17 = v27;

        v18 = v10;
        v10 = v20;
LABEL_12:

LABEL_13:
        v9 = v17;
        break;
      case 2:
        v29 = v9;
        v15 = HAPTLVParseContiguousTlvs(2, bytes, v13, v31, &v29);
        v17 = v29;

        if (!v17)
        {
          v28 = 0;
          v19 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v28];
          v17 = v28;
          v18 = v11;
          v11 = v19;
          goto LABEL_12;
        }

        goto LABEL_13;
      case 1:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v30 = v9;
        v16 = [HAPNFCAccessKeyTypeWrapper parsedFromData:v15 error:&v30];
        v17 = v30;

        v18 = v12;
        v12 = v16;
        goto LABEL_12;
    }

    bytes = v31[0];
    if (v31[0] >= v13)
    {
      if (v9)
      {
LABEL_16:
        if (errorCopy)
        {
          v21 = v9;
          v22 = 0;
          *errorCopy = v9;
          goto LABEL_25;
        }

        goto LABEL_24;
      }

LABEL_22:
      self = selfCopy;
      goto LABEL_23;
    }
  }

  if (errorCopy)
  {
    HMErrorFromOSStatus(Next);
    *errorCopy = v22 = 0;
    goto LABEL_25;
  }

LABEL_24:
  v22 = 0;
LABEL_25:

  return v22;
}

- (HAPDeviceCredentialKey)initWithType:(id)type key:(id)key state:(id)state
{
  typeCopy = type;
  keyCopy = key;
  stateCopy = state;
  v15.receiver = self;
  v15.super_class = HAPDeviceCredentialKey;
  v12 = [(HAPDeviceCredentialKey *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_type, type);
    objc_storeStrong(&v13->_key, key);
    objc_storeStrong(&v13->_state, state);
  }

  return v13;
}

- (HAPDeviceCredentialKey)init
{
  v3.receiver = self;
  v3.super_class = HAPDeviceCredentialKey;
  return [(HAPDeviceCredentialKey *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPDeviceCredentialKey);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPDeviceCredentialKey *)v6 parseFromData:dataCopy error:&v11];
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