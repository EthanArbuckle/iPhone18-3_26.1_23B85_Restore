@interface HAPDataStreamHAPAccessoryPayload
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPDataStreamHAPAccessoryPayload)init;
- (HAPDataStreamHAPAccessoryPayload)initWithPayload:(id)payload forceClose:(id)close accessoryRequestToSend:(id)send;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPDataStreamHAPAccessoryPayload

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  payload = [(HAPDataStreamHAPAccessoryPayload *)self payload];
  forceClose = [(HAPDataStreamHAPAccessoryPayload *)self forceClose];
  accessoryRequestToSend = [(HAPDataStreamHAPAccessoryPayload *)self accessoryRequestToSend];
  v7 = [v3 stringWithFormat:@"<HAPDataStreamHAPAccessoryPayload payload=%@, forceClose=%@, accessoryRequestToSend=%@>", payload, forceClose, accessoryRequestToSend];

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
      payload = [(HAPDataStreamHAPAccessoryPayload *)self payload];
      payload2 = [(HAPDataStreamHAPAccessoryPayload *)v7 payload];
      if (payload != payload2)
      {
        payload3 = [(HAPDataStreamHAPAccessoryPayload *)self payload];
        payload4 = [(HAPDataStreamHAPAccessoryPayload *)v7 payload];
        if (![payload3 isEqual:payload4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      forceClose = [(HAPDataStreamHAPAccessoryPayload *)self forceClose];
      forceClose2 = [(HAPDataStreamHAPAccessoryPayload *)v7 forceClose];
      v13 = forceClose2;
      if (forceClose == forceClose2)
      {
        v28 = forceClose2;
      }

      else
      {
        forceClose3 = [(HAPDataStreamHAPAccessoryPayload *)self forceClose];
        forceClose4 = [(HAPDataStreamHAPAccessoryPayload *)v7 forceClose];
        if (![forceClose3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = forceClose3;
        v28 = v13;
      }

      accessoryRequestToSend = [(HAPDataStreamHAPAccessoryPayload *)self accessoryRequestToSend];
      accessoryRequestToSend2 = [(HAPDataStreamHAPAccessoryPayload *)v7 accessoryRequestToSend];
      v17 = accessoryRequestToSend2;
      if (accessoryRequestToSend == accessoryRequestToSend2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPDataStreamHAPAccessoryPayload *)self accessoryRequestToSend];
        v18 = v25 = payload3;
        [(HAPDataStreamHAPAccessoryPayload *)v7 accessoryRequestToSend];
        v24 = forceClose;
        v19 = payload4;
        v20 = payload2;
        v22 = v21 = payload;
        v10 = [v18 isEqual:v22];

        payload = v21;
        payload2 = v20;
        payload4 = v19;
        forceClose = v24;

        payload3 = v25;
      }

      v13 = v28;
      forceClose3 = v26;
      if (forceClose == v28)
      {
LABEL_18:

        if (payload == payload2)
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
  v4 = [HAPDataStreamHAPAccessoryPayload allocWithZone:zone];
  payload = [(HAPDataStreamHAPAccessoryPayload *)self payload];
  forceClose = [(HAPDataStreamHAPAccessoryPayload *)self forceClose];
  accessoryRequestToSend = [(HAPDataStreamHAPAccessoryPayload *)self accessoryRequestToSend];
  v8 = [(HAPDataStreamHAPAccessoryPayload *)v4 initWithPayload:payload forceClose:forceClose accessoryRequestToSend:accessoryRequestToSend];

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
  payload = [(HAPDataStreamHAPAccessoryPayload *)self payload];

  if (!payload)
  {
LABEL_10:
    forceClose = [(HAPDataStreamHAPAccessoryPayload *)self forceClose];

    if (forceClose)
    {
      forceClose2 = [(HAPDataStreamHAPAccessoryPayload *)self forceClose];
      v23 = 0;
      v7 = [forceClose2 serializeWithError:&v23];
      v8 = v23;

      if (v8)
      {
        goto LABEL_15;
      }

      [v7 bytes];
      [v7 length];
      v15 = TLV8BufferAppend();

      if (v15)
      {
        goto LABEL_19;
      }
    }

    accessoryRequestToSend = [(HAPDataStreamHAPAccessoryPayload *)self accessoryRequestToSend];

    if (accessoryRequestToSend)
    {
      accessoryRequestToSend2 = [(HAPDataStreamHAPAccessoryPayload *)self accessoryRequestToSend];
      v22 = 0;
      v7 = [accessoryRequestToSend2 serializeWithError:&v22];
      v8 = v22;

      if (v8)
      {
        goto LABEL_15;
      }

      [v7 bytes];
      [v7 length];
      v15 = TLV8BufferAppend();

      if (v15)
      {
LABEL_19:
        if (error)
        {
          HMErrorFromOSStatus(v15);
          v8 = 0;
          *error = v19 = 0;
          goto LABEL_24;
        }

        v8 = 0;
        goto LABEL_23;
      }
    }

    v19 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:?];
    v8 = 0;
    goto LABEL_24;
  }

  payload2 = [(HAPDataStreamHAPAccessoryPayload *)self payload];
  v24 = 0;
  v7 = [payload2 serializeWithError:&v24];
  v8 = v24;

  if (!v8)
  {
    bytes = [v7 bytes];
    v10 = bytes + [v7 length];
    while (1)
    {
      v11 = (v10 - bytes) >= 255 ? 255 : v10 - bytes;
      v12 = TLV8BufferAppend();
      if (v12)
      {
        break;
      }

      bytes += v11;
      if (bytes >= v10)
      {

        goto LABEL_10;
      }
    }

    v15 = v12;

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
    [(HAPDataStreamHAPAccessoryPayload *)self setPayload:v12, selfCopy];
    [(HAPDataStreamHAPAccessoryPayload *)self setForceClose:v11];
    [(HAPDataStreamHAPAccessoryPayload *)self setAccessoryRequestToSend:v10];
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
      case 4:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v27 = v9;
        v20 = [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v27];
        v16 = v27;

        v18 = v10;
        v10 = v20;
LABEL_12:

LABEL_13:
        v9 = v16;
        break;
      case 3:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v28 = v9;
        v19 = [HAPTLVUnsignedNumberValue parsedFromData:v15 error:&v28];
        v16 = v28;

        v18 = v11;
        v11 = v19;
        goto LABEL_12;
      case 1:
        v30 = v9;
        v15 = HAPTLVParseContiguousTlvs(1, bytes, v13, v31, &v30);
        v16 = v30;

        if (!v16)
        {
          v29 = 0;
          v17 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v29];
          v16 = v29;
          v18 = v12;
          v12 = v17;
          goto LABEL_12;
        }

        goto LABEL_13;
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

- (HAPDataStreamHAPAccessoryPayload)initWithPayload:(id)payload forceClose:(id)close accessoryRequestToSend:(id)send
{
  payloadCopy = payload;
  closeCopy = close;
  sendCopy = send;
  v15.receiver = self;
  v15.super_class = HAPDataStreamHAPAccessoryPayload;
  v12 = [(HAPDataStreamHAPAccessoryPayload *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_payload, payload);
    objc_storeStrong(&v13->_forceClose, close);
    objc_storeStrong(&v13->_accessoryRequestToSend, send);
  }

  return v13;
}

- (HAPDataStreamHAPAccessoryPayload)init
{
  v3.receiver = self;
  v3.super_class = HAPDataStreamHAPAccessoryPayload;
  return [(HAPDataStreamHAPAccessoryPayload *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPDataStreamHAPAccessoryPayload);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPDataStreamHAPAccessoryPayload *)v6 parseFromData:dataCopy error:&v11];
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