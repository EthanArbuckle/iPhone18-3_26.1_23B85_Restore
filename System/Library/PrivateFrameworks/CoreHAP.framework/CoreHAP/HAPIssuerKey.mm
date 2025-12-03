@interface HAPIssuerKey
+ (id)parsedFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)parseFromData:(id)data error:(id *)error;
- (HAPIssuerKey)init;
- (HAPIssuerKey)initWithType:(id)type key:(id)key;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithError:(id *)error;
@end

@implementation HAPIssuerKey

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  type = [(HAPIssuerKey *)self type];
  v5 = [(HAPIssuerKey *)self key];
  v6 = [v3 stringWithFormat:@"<HAPIssuerKey type=%@, key=%@>", type, v5];

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
      type = [(HAPIssuerKey *)self type];
      type2 = [(HAPIssuerKey *)v6 type];
      if (type != type2)
      {
        type3 = [(HAPIssuerKey *)self type];
        type4 = [(HAPIssuerKey *)v6 type];
        if (![type3 isEqual:type4])
        {
          v10 = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v16 = type3;
      }

      v11 = [(HAPIssuerKey *)self key];
      v12 = [(HAPIssuerKey *)v6 key];
      if (v11 == v12)
      {
        v10 = 1;
      }

      else
      {
        v13 = [(HAPIssuerKey *)self key];
        v14 = [(HAPIssuerKey *)v6 key];
        v10 = [v13 isEqual:v14];
      }

      type3 = v16;
      if (type == type2)
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
  v4 = [HAPIssuerKey allocWithZone:zone];
  type = [(HAPIssuerKey *)self type];
  v6 = [(HAPIssuerKey *)self key];
  v7 = [(HAPIssuerKey *)v4 initWithType:type key:v6];

  return v7;
}

- (id)serializeWithError:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
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
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  TLV8BufferInit();
  type = [(HAPIssuerKey *)self type];

  if (type)
  {
    type2 = [(HAPIssuerKey *)self type];
    v23 = 0;
    v7 = [type2 serializeWithError:&v23];
    v8 = v23;

    if (v8)
    {
      goto LABEL_6;
    }

    [v7 bytes];
    [v7 length];
    v9 = TLV8BufferAppend();

    if (v9)
    {
LABEL_21:
      if (error)
      {
        HMErrorFromOSStatus(v9);
        v8 = 0;
        *error = v13 = 0;
        goto LABEL_26;
      }

      v8 = 0;
      goto LABEL_25;
    }
  }

  v10 = [(HAPIssuerKey *)self key];

  if (!v10)
  {
LABEL_23:
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:?];
    v8 = 0;
    goto LABEL_26;
  }

  v11 = [(HAPIssuerKey *)self key];
  v22 = 0;
  v7 = [v11 serializeWithError:&v22];
  v8 = v22;

  if (!v8)
  {
    bytes = [v7 bytes];
    v15 = bytes + [v7 length];
    do
    {
      if ((v15 - bytes) >= 255)
      {
        v16 = 255;
      }

      else
      {
        v16 = v15 - bytes;
      }

      v17 = TLV8BufferAppend();
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16;
      }

      bytes += v18;
      if (v17)
      {
        v19 = 1;
      }

      else
      {
        v19 = bytes >= v15;
      }
    }

    while (!v19);
    v9 = v17;

    if (v9)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

LABEL_6:

  if (error)
  {
    v12 = v8;
    v13 = 0;
    *error = v8;
    goto LABEL_26;
  }

LABEL_25:
  v13 = 0;
LABEL_26:
  TLV8BufferFree();

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)parseFromData:(id)data error:(id *)error
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];
  if (v8 < 1)
  {
    v9 = 0;
    v10 = 0;
LABEL_16:
    [(HAPIssuerKey *)self setType:v10, errorCopy];
    [(HAPIssuerKey *)self setKey:v9];
    v11 = 0;
    v19 = 1;
    goto LABEL_23;
  }

  errorCopy = error;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = bytes + v8;
  while (1)
  {
    v29 = 0;
    v27[1] = 0;
    v28 = 0;
    v27[0] = 0;
    Next = TLV8GetNext();
    if (Next)
    {
      if (errorCopy)
      {
        HMErrorFromOSStatus(Next);
        *errorCopy = v19 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (!v28)
    {
      break;
    }

    if (v29 == 2)
    {
      v25 = v11;
      v14 = HAPTLVParseContiguousTlvs(2, bytes, v12, v27, &v25);
      v16 = v25;

      if (!v16)
      {
        v24 = 0;
        v18 = [MEMORY[0x277CBEA90] parsedFromData:v14 error:&v24];
        v16 = v24;
        v17 = v9;
        v9 = v18;
LABEL_10:
      }

      v11 = v16;
      goto LABEL_12;
    }

    if (v29 == 1)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:? length:? freeWhenDone:?];
      v26 = v11;
      v15 = [HAPNFCAccessKeyTypeWrapper parsedFromData:v14 error:&v26];
      v16 = v26;

      v17 = v10;
      v10 = v15;
      goto LABEL_10;
    }

LABEL_12:
    bytes = v27[0];
    if (v27[0] >= v12)
    {
      if (!v11)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D0F1A0] code:3 userInfo:0];

  v11 = v20;
  if (!v20)
  {
    goto LABEL_16;
  }

LABEL_20:
  if (errorCopy)
  {
    v21 = v11;
    v19 = 0;
    *errorCopy = v11;
    goto LABEL_23;
  }

LABEL_22:
  v19 = 0;
LABEL_23:

  return v19;
}

- (HAPIssuerKey)initWithType:(id)type key:(id)key
{
  typeCopy = type;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = HAPIssuerKey;
  v9 = [(HAPIssuerKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, type);
    objc_storeStrong(&v10->_key, key);
  }

  return v10;
}

- (HAPIssuerKey)init
{
  v3.receiver = self;
  v3.super_class = HAPIssuerKey;
  return [(HAPIssuerKey *)&v3 init];
}

+ (id)parsedFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v6 = objc_alloc_init(HAPIssuerKey);
  v7 = v6;
  if (v6)
  {
    v11 = 0;
    [(HAPIssuerKey *)v6 parseFromData:dataCopy error:&v11];
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