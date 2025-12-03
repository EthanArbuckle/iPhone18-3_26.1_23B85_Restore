@interface HAPNFCAccessIssuerKeyRequest
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPNFCAccessIssuerKeyRequest)init;
- (HAPNFCAccessIssuerKeyRequest)initWithType:(id)type key:(id)key identifier:(id)identifier;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPNFCAccessIssuerKeyRequest

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  type = [(HAPNFCAccessIssuerKeyRequest *)self type];
  v5 = [(HAPNFCAccessIssuerKeyRequest *)self key];
  identifier = [(HAPNFCAccessIssuerKeyRequest *)self identifier];
  v7 = [v3 stringWithFormat:@"<HAPNFCAccessIssuerKeyRequest type=%@, key=%@, identifier=%@>", type, v5, identifier];

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
      type = [(HAPNFCAccessIssuerKeyRequest *)self type];
      type2 = [(HAPNFCAccessIssuerKeyRequest *)v7 type];
      if (type != type2)
      {
        type3 = [(HAPNFCAccessIssuerKeyRequest *)self type];
        type4 = [(HAPNFCAccessIssuerKeyRequest *)v7 type];
        if (![type3 isEqual:type4])
        {
          v10 = 0;
          goto LABEL_19;
        }
      }

      v11 = [(HAPNFCAccessIssuerKeyRequest *)self key];
      v12 = [(HAPNFCAccessIssuerKeyRequest *)v7 key];
      v13 = v12;
      if (v11 == v12)
      {
        v28 = v12;
      }

      else
      {
        v14 = [(HAPNFCAccessIssuerKeyRequest *)self key];
        v27 = [(HAPNFCAccessIssuerKeyRequest *)v7 key];
        if (![v14 isEqual:?])
        {
          v10 = 0;
          goto LABEL_17;
        }

        v26 = v14;
        v28 = v13;
      }

      identifier = [(HAPNFCAccessIssuerKeyRequest *)self identifier];
      identifier2 = [(HAPNFCAccessIssuerKeyRequest *)v7 identifier];
      v17 = identifier2;
      if (identifier == identifier2)
      {

        v10 = 1;
      }

      else
      {
        [(HAPNFCAccessIssuerKeyRequest *)self identifier];
        v18 = v25 = type3;
        [(HAPNFCAccessIssuerKeyRequest *)v7 identifier];
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
  v4 = [HAPNFCAccessIssuerKeyRequest allocWithZone:zone];
  type = [(HAPNFCAccessIssuerKeyRequest *)self type];
  v6 = [(HAPNFCAccessIssuerKeyRequest *)self key];
  identifier = [(HAPNFCAccessIssuerKeyRequest *)self identifier];
  v8 = [(HAPNFCAccessIssuerKeyRequest *)v4 initWithType:type key:v6 identifier:identifier];

  return v8;
}

- (id)serializeWithError:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
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
  v31 = 0u;
  TLV8BufferInit();
  type = [(HAPNFCAccessIssuerKeyRequest *)self type];

  if (type)
  {
    type2 = [(HAPNFCAccessIssuerKeyRequest *)self type];
    v30 = 0;
    v7 = [type2 serializeWithError:&v30];
    v8 = v30;

    if (v8)
    {
      goto LABEL_15;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
      goto LABEL_31;
    }
  }

  v10 = [(HAPNFCAccessIssuerKeyRequest *)self key];

  if (!v10)
  {
LABEL_13:
    identifier = [(HAPNFCAccessIssuerKeyRequest *)self identifier];

    if (!identifier)
    {
      goto LABEL_33;
    }

    identifier2 = [(HAPNFCAccessIssuerKeyRequest *)self identifier];
    v28 = 0;
    v7 = [identifier2 serializeWithError:&v28];
    v8 = v28;

    if (v8)
    {
      goto LABEL_15;
    }

    bytes = [v7 bytes];
    v21 = bytes + [v7 length];
    do
    {
      if ((v21 - bytes) >= 255)
      {
        v22 = 255;
      }

      else
      {
        v22 = v21 - bytes;
      }

      v23 = TLV8BufferAppend();
      if (v23)
      {
        v24 = 0;
      }

      else
      {
        v24 = v22;
      }

      bytes += v24;
      if (v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = bytes >= v21;
      }
    }

    while (!v25);
    v9 = v23;

    if (!v9)
    {
LABEL_33:
      v19 = [MEMORY[0x277CBEA90] dataWithBytes:v31 length:?];
      v8 = 0;
      goto LABEL_36;
    }

LABEL_31:
    if (error)
    {
      HMErrorFromOSStatus(v9);
      v8 = 0;
      *error = v19 = 0;
      goto LABEL_36;
    }

    v8 = 0;
    goto LABEL_35;
  }

  v11 = [(HAPNFCAccessIssuerKeyRequest *)self key];
  v29 = 0;
  v7 = [v11 serializeWithError:&v29];
  v8 = v29;

  if (!v8)
  {
    bytes2 = [v7 bytes];
    v13 = bytes2 + [v7 length];
    while (1)
    {
      v14 = (v13 - bytes2) >= 255 ? 255 : v13 - bytes2;
      v15 = TLV8BufferAppend();
      if (v15)
      {
        break;
      }

      bytes2 += v14;
      if (bytes2 >= v13)
      {

        goto LABEL_13;
      }
    }

    v9 = v15;

    goto LABEL_31;
  }

LABEL_15:

  if (error)
  {
    v18 = v8;
    v19 = 0;
    *error = v8;
    goto LABEL_36;
  }

LABEL_35:
  v19 = 0;
LABEL_36:
  TLV8BufferFree();

  v26 = *MEMORY[0x277D85DE8];

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
LABEL_20:
    [(HAPNFCAccessIssuerKeyRequest *)self setType:v12, errorCopy];
    [(HAPNFCAccessIssuerKeyRequest *)self setKey:v11];
    [(HAPNFCAccessIssuerKeyRequest *)self setIdentifier:v10];
    v9 = 0;
    v22 = 1;
    goto LABEL_27;
  }

  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = bytes + v8;
  while (1)
  {
    v34 = 0;
    v32[1] = 0;
    v33 = 0;
    v32[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (errorCopy)
      {
        HMErrorFromOSStatus(Next);
        *errorCopy = v22 = 0;
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (!v33)
    {
      break;
    }

    switch(v34)
    {
      case 3:
        v28 = v9;
        v15 = HAPTLVParseContiguousTlvs(3, bytes, v13, v32, &v28);
        v19 = v28;

        if (v19)
        {
          goto LABEL_12;
        }

        v27 = 0;
        v21 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v27];
        v9 = v27;
        v18 = v10;
        v10 = v21;
LABEL_14:

LABEL_15:
        break;
      case 2:
        v30 = v9;
        v15 = HAPTLVParseContiguousTlvs(2, bytes, v13, v32, &v30);
        v19 = v30;

        if (!v19)
        {
          v29 = 0;
          v20 = [MEMORY[0x277CBEA90] parsedFromData:v15 error:&v29];
          v9 = v29;
          v18 = v11;
          v11 = v20;
          goto LABEL_14;
        }

LABEL_12:
        v9 = v19;
        goto LABEL_15;
      case 1:
        v15 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
        v31 = v9;
        v16 = [HAPNFCAccessKeyTypeWrapper parsedFromData:v15 error:&v31];
        v17 = v31;

        v18 = v12;
        v12 = v16;
        v9 = v17;
        goto LABEL_14;
    }

    bytes = v32[0];
    if (v32[0] >= v13)
    {
      if (!v9)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }
  }

  v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v9 = v23;
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_24:
  if (errorCopy)
  {
    v24 = v9;
    v22 = 0;
    *errorCopy = v9;
    goto LABEL_27;
  }

LABEL_26:
  v22 = 0;
LABEL_27:

  return v22;
}

- (HAPNFCAccessIssuerKeyRequest)initWithType:(id)type key:(id)key identifier:(id)identifier
{
  typeCopy = type;
  keyCopy = key;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = HAPNFCAccessIssuerKeyRequest;
  v12 = [(HAPNFCAccessIssuerKeyRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_type, type);
    objc_storeStrong(&v13->_key, key);
    objc_storeStrong(&v13->_identifier, identifier);
  }

  return v13;
}

- (HAPNFCAccessIssuerKeyRequest)init
{
  v3.receiver = self;
  v3.super_class = HAPNFCAccessIssuerKeyRequest;
  return [(HAPNFCAccessIssuerKeyRequest *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPNFCAccessIssuerKeyRequest);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPNFCAccessIssuerKeyRequest *)v6 parseFromData:dataCopy error:&v11];
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